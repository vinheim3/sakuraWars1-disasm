; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $09c", ROMX[$4000], BANK[$9c]

	inc  hl                                          ; $4000: $23
	ld   bc, $0084                                   ; $4001: $01 $84 $00
	ld   c, $80                                      ; $4004: $0e $80
	ld   b, b                                        ; $4006: $40
	rst  $38                                         ; $4007: $ff
	ld   b, b                                        ; $4008: $40
	ld   l, a                                        ; $4009: $6f
	rrca                                             ; $400a: $0f
	inc  de                                          ; $400b: $13
	inc  bc                                          ; $400c: $03
	ld   [$1400], sp                                 ; $400d: $08 $00 $14
	ld   [$001c], sp                                 ; $4010: $08 $1c $00
	rlca                                             ; $4013: $07
	add  b                                           ; $4014: $80
	ld   bc, $0018                                   ; $4015: $01 $18 $00
	ld   bc, $0402                                   ; $4018: $01 $02 $04
	nop                                              ; $401b: $00
	rra                                              ; $401c: $1f
	inc  b                                           ; $401d: $04
	inc  e                                           ; $401e: $1c
	nop                                              ; $401f: $00
	ld   a, $00                                      ; $4020: $3e $00
	daa                                              ; $4022: $27
	ld   b, $1b                                      ; $4023: $06 $1b
	dec  bc                                          ; $4025: $0b
	dec  c                                           ; $4026: $0d
	ld   bc, $000a                                   ; $4027: $01 $0a $00
	inc  c                                           ; $402a: $0c
	ld   [bc], a                                     ; $402b: $02
	push hl                                          ; $402c: $e5
	ld   bc, $e1fd                                   ; $402d: $01 $fd $e1
	add  b                                           ; $4030: $80
	cp   $80                                         ; $4031: $fe $80
	rst  $28                                         ; $4033: $ef
	add  b                                           ; $4034: $80
	db   $30, $80                                    ; $4035: $30 $80
	ld   bc, $0780                                   ; $4037: $01 $80 $07
	add  b                                           ; $403a: $80
	sbc  [hl]                                        ; $403b: $9e
	add  b                                           ; $403c: $80
	ld   sp, $0380                                   ; $403d: $31 $80 $03
	add  hl, bc                                      ; $4040: $09
	rst  $38                                         ; $4041: $ff
	nop                                              ; $4042: $00
	ret  nz                                          ; $4043: $c0

	nop                                              ; $4044: $00
	pop  af                                          ; $4045: $f1
	ret  nz                                          ; $4046: $c0

	db   $fc                                         ; $4047: $fc
	ldh  a, [rIE]                                    ; $4048: $f0 $ff
	db   $fd                                         ; $404a: $fd
	add  b                                           ; $404b: $80
	ld   a, a                                        ; $404c: $7f
	add  b                                           ; $404d: $80
	ccf                                              ; $404e: $3f
	add  b                                           ; $404f: $80
	cp   h                                           ; $4050: $bc
	add  b                                           ; $4051: $80
	rst  $38                                         ; $4052: $ff
	add  b                                           ; $4053: $80
	cp   a                                           ; $4054: $bf
	ld   [$6f7f], sp                                 ; $4055: $08 $7f $6f
	rst  $28                                         ; $4058: $ef
	sbc  a                                           ; $4059: $9f
	rst  JumpTable                                         ; $405a: $df
	rra                                              ; $405b: $1f
	rst  JumpTable                                         ; $405c: $df
	ld   h, a                                        ; $405d: $67
	rst  $20                                         ; $405e: $e7
	add  b                                           ; $405f: $80
	rst  JumpTable                                         ; $4060: $df
	add  b                                           ; $4061: $80
	rst  $38                                         ; $4062: $ff
	adc  e                                           ; $4063: $8b
	nop                                              ; $4064: $00
	dec  b                                           ; $4065: $05
	inc  e                                           ; $4066: $1c
	nop                                              ; $4067: $00
	ld   [hl], h                                     ; $4068: $74
	db   $10                                         ; $4069: $10
	rst  $20                                         ; $406a: $e7
	ld   h, b                                        ; $406b: $60
	add  b                                           ; $406c: $80
	jp   $ae80                                       ; $406d: $c3 $80 $ae


	add  b                                           ; $4070: $80
	cp   $80                                         ; $4071: $fe $80
	ei                                               ; $4073: $fb
	add  b                                           ; $4074: $80
	ld   h, b                                        ; $4075: $60
	add  b                                           ; $4076: $80
	inc  bc                                          ; $4077: $03
	nop                                              ; $4078: $00
	rst  $38                                         ; $4079: $ff
	adc  e                                           ; $407a: $8b
	nop                                              ; $407b: $00
	dec  b                                           ; $407c: $05
	rlca                                             ; $407d: $07
	nop                                              ; $407e: $00
	ld   a, [de]                                     ; $407f: $1a
	ld   [bc], a                                     ; $4080: $02

Jump_09c_4081:
	rst  $28                                         ; $4081: $ef
	rrca                                             ; $4082: $0f
	add  b                                           ; $4083: $80
	ccf                                              ; $4084: $3f
	add  b                                           ; $4085: $80
	ld   a, [hl]                                     ; $4086: $7e
	add  d                                           ; $4087: $82
	rst  $38                                         ; $4088: $ff
	inc  b                                           ; $4089: $04
	db   $fd                                         ; $408a: $fd
	rst  $38                                         ; $408b: $ff
	pop  af                                          ; $408c: $f1
	rst  $38                                         ; $408d: $ff
	di                                               ; $408e: $f3
	adc  e                                           ; $408f: $8b
	nop                                              ; $4090: $00
	ld   [de], a                                     ; $4091: $12
	ret  nz                                          ; $4092: $c0

	nop                                              ; $4093: $00
	ret  nz                                          ; $4094: $c0

	nop                                              ; $4095: $00
	ld   hl, sp+$00                                  ; $4096: $f8 $00
	ret  z                                           ; $4098: $c8

	ret  nz                                          ; $4099: $c0

	jr   nc, jr_09c_409c                             ; $409a: $30 $00

jr_09c_409c:
	ldh  a, [$c0]                                    ; $409c: $f0 $c0
	ld   hl, sp-$10                                  ; $409e: $f8 $f0
	rst  $38                                         ; $40a0: $ff
	ld   hl, sp-$03                                  ; $40a1: $f8 $fd
	db   $fc                                         ; $40a3: $fc
	cp   $91                                         ; $40a4: $fe $91
	nop                                              ; $40a6: $00
	dec  b                                           ; $40a7: $05
	add  b                                           ; $40a8: $80
	nop                                              ; $40a9: $00
	ret  nz                                          ; $40aa: $c0

	add  b                                           ; $40ab: $80
	ld   h, b                                        ; $40ac: $60
	ld   b, b                                        ; $40ad: $40
	add  d                                           ; $40ae: $82
	nop                                              ; $40af: $00
	add  b                                           ; $40b0: $80
	add  b                                           ; $40b1: $80
	ld   bc, $1000                                   ; $40b2: $01 $00 $10
	add  b                                           ; $40b5: $80
	add  b                                           ; $40b6: $80
	dec  b                                           ; $40b7: $05
	ld   c, b                                        ; $40b8: $48
	ld   b, b                                        ; $40b9: $40
	inc  c                                           ; $40ba: $0c
	nop                                              ; $40bb: $00
	ld   b, $00                                      ; $40bc: $06 $00
	add  b                                           ; $40be: $80
	add  b                                           ; $40bf: $80
	dec  b                                           ; $40c0: $05
	jp   $21c8                                       ; $40c1: $c3 $c8 $21


	jr   nz, jr_09c_40c6                             ; $40c4: $20 $00

jr_09c_40c6:
	inc  b                                           ; $40c6: $04
	add  h                                           ; $40c7: $84
	nop                                              ; $40c8: $00
	add  b                                           ; $40c9: $80

Jump_09c_40ca:
	add  b                                           ; $40ca: $80
	ld   [bc], a                                     ; $40cb: $02
	add  d                                           ; $40cc: $82
	add  b                                           ; $40cd: $80
	ld   c, $80                                      ; $40ce: $0e $80
	ld   [$0001], sp                                 ; $40d0: $08 $01 $00
	ldh  a, [$81]                                    ; $40d3: $f0 $81
	nop                                              ; $40d5: $00
	nop                                              ; $40d6: $00
	inc  b                                           ; $40d7: $04
	add  c                                           ; $40d8: $81
	nop                                              ; $40d9: $00
	nop                                              ; $40da: $00
	rrca                                             ; $40db: $0f
	add  c                                           ; $40dc: $81
	inc  b                                           ; $40dd: $04
	add  b                                           ; $40de: $80
	ld   b, $80                                      ; $40df: $06 $80
	inc  bc                                          ; $40e1: $03

jr_09c_40e2:
	inc  b                                           ; $40e2: $04
	jr   nc, jr_09c_40e5                             ; $40e3: $30 $00

jr_09c_40e5:
	ld   h, b                                        ; $40e5: $60
	nop                                              ; $40e6: $00
	ld   d, b                                        ; $40e7: $50
	add  b                                           ; $40e8: $80
	ld   bc, $0380                                   ; $40e9: $01 $80 $03
	rlca                                             ; $40ec: $07
	nop                                              ; $40ed: $00
	ld   e, $0e                                      ; $40ee: $1e $0e
	jr   nz, jr_09c_40f2                             ; $40f0: $20 $00

jr_09c_40f2:
	ld   [hl], c                                     ; $40f2: $71
	ld   sp, $877f                                   ; $40f3: $31 $7f $87
	nop                                              ; $40f6: $00
	cpl                                              ; $40f7: $2f

jr_09c_40f8:
	ld   [bc], a                                     ; $40f8: $02
	nop                                              ; $40f9: $00
	inc  b                                           ; $40fa: $04
	nop                                              ; $40fb: $00
	inc  c                                           ; $40fc: $0c
	inc  b                                           ; $40fd: $04
	inc  e                                           ; $40fe: $1c
	inc  c                                           ; $40ff: $0c
	ld   a, [hl-]                                    ; $4100: $3a
	jr   @+$7b                                       ; $4101: $18 $79

	jr   c, jr_09c_40f8                              ; $4103: $38 $f3

	ld   [hl], c                                     ; $4105: $71
	rst  $10                                         ; $4106: $d7
	rst  $30                                         ; $4107: $f7
	sbc  [hl]                                        ; $4108: $9e
	cp   $0c                                         ; $4109: $fe $0c
	db   $fc                                         ; $410b: $fc
	jr   jr_09c_40c6                                 ; $410c: $18 $b8

	cpl                                              ; $410e: $2f
	nop                                              ; $410f: $00

jr_09c_4110:
	ldh  a, [$c0]                                    ; $4110: $f0 $c0
	jr   nc, jr_09c_4114                             ; $4112: $30 $00

jr_09c_4114:
	ld   b, b                                        ; $4114: $40
	nop                                              ; $4115: $00
	ld   h, b                                        ; $4116: $60
	nop                                              ; $4117: $00
	stop                                             ; $4118: $10 $00
	db   $ec                                         ; $411a: $ec
	ldh  [$fa], a                                    ; $411b: $e0 $fa
	ld   hl, sp+$06                                  ; $411d: $f8 $06
	nop                                              ; $411f: $00
	adc  b                                           ; $4120: $88
	add  b                                           ; $4121: $80
	add  sp, -$20                                    ; $4122: $e8 $e0
	halt                                             ; $4124: $76
	ld   [hl], b                                     ; $4125: $70
	ld   [de], a                                     ; $4126: $12
	db   $10                                         ; $4127: $10
	add  b                                           ; $4128: $80
	ld   [$700b], sp                                 ; $4129: $08 $0b $70
	nop                                              ; $412c: $00
	ld   [$4c00], sp                                 ; $412d: $08 $00 $4c
	ccf                                              ; $4130: $3f
	cpl                                              ; $4131: $2f
	ccf                                              ; $4132: $3f
	inc  hl                                          ; $4133: $23
	cp   a                                           ; $4134: $bf
	sbc  e                                           ; $4135: $9b
	rst  JumpTable                                         ; $4136: $df
	add  b                                           ; $4137: $80
	ret                                              ; $4138: $c9


	inc  bc                                          ; $4139: $03
	call z, $464c                                    ; $413a: $cc $4c $46
	ld   b, $80                                      ; $413d: $06 $80
	add  d                                           ; $413f: $82
	add  d                                           ; $4140: $82
	nop                                              ; $4141: $00
	ld   b, $80                                      ; $4142: $06 $80
	nop                                              ; $4144: $00
	ld   b, b                                        ; $4145: $40
	nop                                              ; $4146: $00
	ld   [$1400], sp                                 ; $4147: $08 $00 $14
	add  b                                           ; $414a: $80
	db   $10                                         ; $414b: $10
	ld   [$2100], sp                                 ; $414c: $08 $00 $21
	nop                                              ; $414f: $00
	xor  [hl]                                        ; $4150: $ae
	ld   [hl], e                                     ; $4151: $73
	nop                                              ; $4152: $00
	jr   nz, jr_09c_40e2                             ; $4153: $20 $8d

	adc  h                                           ; $4155: $8c
	add  b                                           ; $4156: $80
	call z, $9a01                                    ; $4157: $cc $01 $9a
	sbc  b                                           ; $415a: $98
	add  b                                           ; $415b: $80
	nop                                              ; $415c: $00
	ld   b, $04                                      ; $415d: $06 $04
	nop                                              ; $415f: $00
	sbc  b                                           ; $4160: $98
	add  b                                           ; $4161: $80
	jr   nz, jr_09c_4164                             ; $4162: $20 $00

jr_09c_4164:
	ret  nz                                          ; $4164: $c0

	adc  e                                           ; $4165: $8b
	nop                                              ; $4166: $00
	rlca                                             ; $4167: $07
	rst  $38                                         ; $4168: $ff
	nop                                              ; $4169: $00
	inc  h                                           ; $416a: $24
	ld   h, $24                                      ; $416b: $26 $24
	scf                                              ; $416d: $37
	ld   [hl+], a                                    ; $416e: $22
	inc  sp                                          ; $416f: $33
	add  b                                           ; $4170: $80
	ld   bc, $8080                                   ; $4171: $01 $80 $80
	add  b                                           ; $4174: $80
	ei                                               ; $4175: $fb
	add  b                                           ; $4176: $80
	di                                               ; $4177: $f3

jr_09c_4178:
	add  b                                           ; $4178: $80
	ret  nz                                          ; $4179: $c0

	inc  b                                           ; $417a: $04
	jr   jr_09c_417d                                 ; $417b: $18 $00

jr_09c_417d:
	daa                                              ; $417d: $27
	nop                                              ; $417e: $00
	ret  nz                                          ; $417f: $c0

	add  l                                           ; $4180: $85
	nop                                              ; $4181: $00
	ld   [bc], a                                     ; $4182: $02
	db   $fc                                         ; $4183: $fc
	nop                                              ; $4184: $00
	inc  bc                                          ; $4185: $03
	add  b                                           ; $4186: $80
	ld   b, b                                        ; $4187: $40
	inc  bc                                          ; $4188: $03
	nop                                              ; $4189: $00
	ld   [$c7c0], sp                                 ; $418a: $08 $c0 $c7
	add  b                                           ; $418d: $80
	jr   nz, jr_09c_4110                             ; $418e: $20 $80

	ld   h, b                                        ; $4190: $60
	inc  b                                           ; $4191: $04
	ret  nz                                          ; $4192: $c0

	ret  z                                           ; $4193: $c8

	nop                                              ; $4194: $00
	rst  $10                                         ; $4195: $d7
	ret  nc                                          ; $4196: $d0

	add  b                                           ; $4197: $80
	db   $d3                                         ; $4198: $d3
	add  b                                           ; $4199: $80
	sub  e                                           ; $419a: $93
	add  b                                           ; $419b: $80
	rla                                              ; $419c: $17
	add  b                                           ; $419d: $80
	or   a                                           ; $419e: $b7
	add  b                                           ; $419f: $80
	cp   a                                           ; $41a0: $bf
	add  h                                           ; $41a1: $84
	rst  $38                                         ; $41a2: $ff
	ld   [de], a                                     ; $41a3: $12
	ld   a, a                                        ; $41a4: $7f
	nop                                              ; $41a5: $00
	ld   h, b                                        ; $41a6: $60
	nop                                              ; $41a7: $00
	ret  c                                           ; $41a8: $d8

	nop                                              ; $41a9: $00
	ld   [hl], h                                     ; $41aa: $74
	nop                                              ; $41ab: $00
	ld   [$cc00], sp                                 ; $41ac: $08 $00 $cc
	nop                                              ; $41af: $00
	or   b                                           ; $41b0: $b0
	nop                                              ; $41b1: $00
	jr   nz, jr_09c_41b4                             ; $41b2: $20 $00

jr_09c_41b4:
	inc  h                                           ; $41b4: $24
	jr   @-$26                                       ; $41b5: $18 $d8

	add  b                                           ; $41b7: $80
	jr   c, jr_09c_41bf                              ; $41b8: $38 $05

	ld   a, b                                        ; $41ba: $78
	ld   [hl], b                                     ; $41bb: $70
	ld   a, b                                        ; $41bc: $78
	ld   l, [hl]                                     ; $41bd: $6e
	db   $fc                                         ; $41be: $fc

jr_09c_41bf:
	call c, $fc81                                    ; $41bf: $dc $81 $fc
	ld   [bc], a                                     ; $41c2: $02
	cp   h                                           ; $41c3: $bc
	db   $fc                                         ; $41c4: $fc
	ld   a, [hl]                                     ; $41c5: $7e
	sub  e                                           ; $41c6: $93
	nop                                              ; $41c7: $00
	nop                                              ; $41c8: $00
	add  b                                           ; $41c9: $80
	add  e                                           ; $41ca: $83
	nop                                              ; $41cb: $00
	nop                                              ; $41cc: $00
	ret  nz                                          ; $41cd: $c0

	add  c                                           ; $41ce: $81
	add  b                                           ; $41cf: $80
	inc  c                                           ; $41d0: $0c
	pop  bc                                          ; $41d1: $c1
	nop                                              ; $41d2: $00
	ld   [bc], a                                     ; $41d3: $02
	nop                                              ; $41d4: $00
	inc  b                                           ; $41d5: $04
	nop                                              ; $41d6: $00
	ld   [$2f10], sp                                 ; $41d7: $08 $10 $2f
	ld   c, b                                        ; $41da: $48
	ld   a, b                                        ; $41db: $78
	nop                                              ; $41dc: $00
	ld   bc, $0081                                   ; $41dd: $01 $81 $00
	nop                                              ; $41e0: $00
	inc  bc                                          ; $41e1: $03
	add  c                                           ; $41e2: $81
	ld   bc, $0600                                   ; $41e3: $01 $00 $06
	add  c                                           ; $41e6: $81
	ld   [bc], a                                     ; $41e7: $02
	inc  b                                           ; $41e8: $04
	ld   bc, $0a00                                   ; $41e9: $01 $00 $0a
	nop                                              ; $41ec: $00
	inc  b                                           ; $41ed: $04
	add  c                                           ; $41ee: $81
	nop                                              ; $41ef: $00
	inc  bc                                          ; $41f0: $03
	ld   [hl], b                                     ; $41f1: $70
	rlca                                             ; $41f2: $07
	adc  [hl]                                        ; $41f3: $8e
	ld   c, $80                                      ; $41f4: $0e $80
	jr   jr_09c_4178                                 ; $41f6: $18 $80

	ld   hl, $0980                                   ; $41f8: $21 $80 $09
	add  b                                           ; $41fb: $80

jr_09c_41fc:
	inc  sp                                          ; $41fc: $33
	add  b                                           ; $41fd: $80
	ld   h, e                                        ; $41fe: $63
	add  b                                           ; $41ff: $80
	ld   b, [hl]                                     ; $4200: $46
	ld   bc, $c5c4                                   ; $4201: $01 $c4 $c5
	add  b                                           ; $4204: $80
	add  c                                           ; $4205: $81
	add  b                                           ; $4206: $80
	inc  bc                                          ; $4207: $03
	ld   c, $33                                      ; $4208: $0e $33
	inc  bc                                          ; $420a: $03
	ld   b, l                                        ; $420b: $45
	ld   bc, $0181                                   ; $420c: $01 $81 $01
	add  hl, bc                                      ; $420f: $09
	ld   bc, $0805                                   ; $4210: $01 $05 $08
	nop                                              ; $4213: $00
	ld   de, $0109                                   ; $4214: $11 $09 $01
	ld   sp, $0180                                   ; $4217: $31 $80 $01
	add  c                                           ; $421a: $81
	add  hl, bc                                      ; $421b: $09
	ld   d, $05                                      ; $421c: $16 $05
	ld   bc, $233a                                   ; $421e: $01 $3a $23
	ld   [hl+], a                                    ; $4221: $22
	nop                                              ; $4222: $00
	dec  d                                           ; $4223: $15
	ld   [$000f], sp                                 ; $4224: $08 $0f $00
	inc  bc                                          ; $4227: $03
	nop                                              ; $4228: $00
	ld   bc, $0200                                   ; $4229: $01 $00 $02
	nop                                              ; $422c: $00
	ld   b, $03                                      ; $422d: $06 $03
	add  b                                           ; $422f: $80
	inc  bc                                          ; $4230: $03
	ld   [$8f02], sp                                 ; $4231: $08 $02 $8f
	adc  c                                           ; $4234: $89
	nop                                              ; $4235: $00
	rlca                                             ; $4236: $07
	jr   nz, jr_09c_4239                             ; $4237: $20 $00

jr_09c_4239:
	jr   c, jr_09c_423b                              ; $4239: $38 $00

jr_09c_423b:
	ld   b, $00                                      ; $423b: $06 $00
	jp   hl                                          ; $423d: $e9


	ld   [$f080], sp                                 ; $423e: $08 $80 $f0
	add  b                                           ; $4241: $80
	ld   e, $08                                      ; $4242: $1e $08
	ld   c, h                                        ; $4244: $4c
	ld   a, l                                        ; $4245: $7d
	push de                                          ; $4246: $d5
	db   $fd                                         ; $4247: $fd
	rst  $30                                         ; $4248: $f7
	cp   $06                                         ; $4249: $fe $06
	ld   a, $d7                                      ; $424b: $3e $d7
	add  c                                           ; $424d: $81
	nop                                              ; $424e: $00
	dec  e                                           ; $424f: $1d
	rlca                                             ; $4250: $07
	nop                                              ; $4251: $00
	rlca                                             ; $4252: $07
	nop                                              ; $4253: $00
	inc  bc                                          ; $4254: $03
	nop                                              ; $4255: $00
	rrca                                             ; $4256: $0f
	inc  bc                                          ; $4257: $03
	ccf                                              ; $4258: $3f
	rrca                                             ; $4259: $0f
	ret  nz                                          ; $425a: $c0

	nop                                              ; $425b: $00
	ldh  a, [rP1]                                    ; $425c: $f0 $00
	inc  c                                           ; $425e: $0c
	nop                                              ; $425f: $00
	dec  b                                           ; $4260: $05
	ld   bc, $0109                                   ; $4261: $01 $09 $01
	stop                                             ; $4264: $10 $00
	jr   nz, jr_09c_4268                             ; $4266: $20 $00

jr_09c_4268:
	dec  c                                           ; $4268: $0d
	nop                                              ; $4269: $00
	ld   [hl], d                                     ; $426a: $72
	nop                                              ; $426b: $00
	ret  nz                                          ; $426c: $c0

	ld   a, a                                        ; $426d: $7f
	add  b                                           ; $426e: $80
	or   $80                                         ; $426f: $f6 $80
	adc  $80                                         ; $4271: $ce $80
	inc  e                                           ; $4273: $1c
	add  b                                           ; $4274: $80
	jr   @-$7e                                       ; $4275: $18 $80

	jr   nc, jr_09c_427a                             ; $4277: $30 $01

	and  b                                           ; $4279: $a0

jr_09c_427a:
	jr   nz, jr_09c_41fc                             ; $427a: $20 $80

	nop                                              ; $427c: $00
	ld   [$0004], sp                                 ; $427d: $08 $04 $00
	ld   [$3100], sp                                 ; $4280: $08 $00 $31
	nop                                              ; $4283: $00
	add  $00                                         ; $4284: $c6 $00
	add  h                                           ; $4286: $84
	add  l                                           ; $4287: $85
	nop                                              ; $4288: $00
	ld   c, $ba                                      ; $4289: $0e $ba
	dec  b                                           ; $428b: $05
	ld   d, e                                        ; $428c: $53
	inc  sp                                          ; $428d: $33
	nop                                              ; $428e: $00
	jr   nz, @+$0e                                   ; $428f: $20 $0c

	adc  h                                           ; $4291: $8c
	sbc  c                                           ; $4292: $99
	sbc  b                                           ; $4293: $98
	sub  d                                           ; $4294: $92
	ret  nc                                          ; $4295: $d0

	call nz, $e8e0                                   ; $4296: $c4 $e0 $e8
	add  c                                           ; $4299: $81
	nop                                              ; $429a: $00
	inc  b                                           ; $429b: $04
	ld   [$0600], sp                                 ; $429c: $08 $00 $06
	nop                                              ; $429f: $00
	ld   c, $81                                      ; $42a0: $0e $81
	nop                                              ; $42a2: $00
	inc  de                                          ; $42a3: $13
	ld   b, c                                        ; $42a4: $41
	nop                                              ; $42a5: $00
	ld   [hl+], a                                    ; $42a6: $22
	ld   bc, $0083                                   ; $42a7: $01 $83 $00
	ld   l, $00                                      ; $42aa: $2e $00
	ld   b, b                                        ; $42ac: $40
	nop                                              ; $42ad: $00
	sbc  a                                           ; $42ae: $9f
	nop                                              ; $42af: $00
	ld   h, b                                        ; $42b0: $60
	nop                                              ; $42b1: $00
	add  e                                           ; $42b2: $83
	nop                                              ; $42b3: $00
	dec  c                                           ; $42b4: $0d
	ld   bc, $0717                                   ; $42b5: $01 $17 $07
	add  b                                           ; $42b8: $80
	dec  c                                           ; $42b9: $0d
	ld   bc, $1b3b                                   ; $42ba: $01 $3b $1b
	add  b                                           ; $42bd: $80
	ld   e, $00                                      ; $42be: $1e $00
	halt                                             ; $42c0: $76
	add  c                                           ; $42c1: $81
	ld   [hl], $04                                   ; $42c2: $36 $04
	sub  d                                           ; $42c4: $92
	ld   d, d                                        ; $42c5: $52
	ld   b, d                                        ; $42c6: $42
	jp   nz, $80c0                                   ; $42c7: $c2 $c0 $80

	ldh  [rTAC], a                                   ; $42ca: $e0 $07
	and  e                                           ; $42cc: $a3
	call c, Call_09c_6000                            ; $42cd: $dc $00 $60
	nop                                              ; $42d0: $00
	ret  c                                           ; $42d1: $d8

	ret  nz                                          ; $42d2: $c0

	add  h                                           ; $42d3: $84
	add  b                                           ; $42d4: $80
	or   b                                           ; $42d5: $b0
	ld   bc, $3cb8                                   ; $42d6: $01 $b8 $3c
	add  b                                           ; $42d9: $80
	ld   [hl], b                                     ; $42da: $70
	add  b                                           ; $42db: $80
	ret  nz                                          ; $42dc: $c0

	dec  b                                           ; $42dd: $05
	ldh  [$fc], a                                    ; $42de: $e0 $fc
	ret  nz                                          ; $42e0: $c0

	ldh  [rP1], a                                    ; $42e1: $e0 $00
	call nz, $00ff                                   ; $42e3: $c4 $ff $00
	ret  z                                           ; $42e6: $c8

	nop                                              ; $42e7: $00
	ld   bc, $07f8                                   ; $42e8: $01 $f8 $07
	add  b                                           ; $42eb: $80
	xor  a                                           ; $42ec: $af
	add  a                                           ; $42ed: $87
	rst  $38                                         ; $42ee: $ff
	inc  bc                                          ; $42ef: $03
	xor  a                                           ; $42f0: $af
	and  a                                           ; $42f1: $a7
	sub  a                                           ; $42f2: $97
	sbc  a                                           ; $42f3: $9f
	add  b                                           ; $42f4: $80
	db   $fc                                         ; $42f5: $fc
	add  b                                           ; $42f6: $80
	cp   $80                                         ; $42f7: $fe $80
	rst  $38                                         ; $42f9: $ff
	add  b                                           ; $42fa: $80
	ld   sp, hl                                      ; $42fb: $f9
	add  b                                           ; $42fc: $80
	ld   l, h                                        ; $42fd: $6c
	add  b                                           ; $42fe: $80
	sub  c                                           ; $42ff: $91
	add  b                                           ; $4300: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4301: $cf
	inc  b                                           ; $4302: $04
	rst  $28                                         ; $4303: $ef
	ld   [$7c7a], a                                  ; $4304: $ea $7a $7c
	db   $fc                                         ; $4307: $fc
	add  b                                           ; $4308: $80
	rst  $38                                         ; $4309: $ff
	add  b                                           ; $430a: $80
	ld   sp, hl                                      ; $430b: $f9
	inc  bc                                          ; $430c: $03
	db   $fc                                         ; $430d: $fc
	ld   a, h                                        ; $430e: $7c
	ld   a, [hl]                                     ; $430f: $7e
	cp   $80                                         ; $4310: $fe $80
	db   $fd                                         ; $4312: $fd
	add  b                                           ; $4313: $80
	cp   $03                                         ; $4314: $fe $03
	rst  $30                                         ; $4316: $f7
	rst  $10                                         ; $4317: $d7
	ld   b, a                                        ; $4318: $47
	ld   h, a                                        ; $4319: $67
	add  d                                           ; $431a: $82
	ld   h, l                                        ; $431b: $65
	nop                                              ; $431c: $00
	ld   h, d                                        ; $431d: $62
	add  c                                           ; $431e: $81
	ld   l, d                                        ; $431f: $6a
	nop                                              ; $4320: $00
	ld   c, b                                        ; $4321: $48
	add  c                                           ; $4322: $81
	ld   e, h                                        ; $4323: $5c
	ld   bc, $ffe3                                   ; $4324: $01 $e3 $ff
	add  h                                           ; $4327: $84
	cp   a                                           ; $4328: $bf
	add  d                                           ; $4329: $82
	db   $db                                         ; $432a: $db
	add  b                                           ; $432b: $80
	call $4d80                                       ; $432c: $cd $80 $4d
	add  b                                           ; $432f: $80
	rst  $38                                         ; $4330: $ff
	add  b                                           ; $4331: $80
	ld   sp, hl                                      ; $4332: $f9
	add  b                                           ; $4333: $80
	call c, $ee80                                    ; $4334: $dc $80 $ee
	add  b                                           ; $4337: $80
	rst  $20                                         ; $4338: $e7
	add  b                                           ; $4339: $80
	di                                               ; $433a: $f3
	add  b                                           ; $433b: $80
	ld   hl, sp-$80                                  ; $433c: $f8 $80
	db   $fc                                         ; $433e: $fc
	add  b                                           ; $433f: $80
	cp   $80                                         ; $4340: $fe $80
	ld   a, [hl]                                     ; $4342: $7e
	add  b                                           ; $4343: $80
	scf                                              ; $4344: $37
	add  b                                           ; $4345: $80
	dec  de                                          ; $4346: $1b
	add  b                                           ; $4347: $80
	dec  b                                           ; $4348: $05
	add  c                                           ; $4349: $81
	nop                                              ; $434a: $00
	add  c                                           ; $434b: $81
	add  b                                           ; $434c: $80
	nop                                              ; $434d: $00
	ret  nz                                          ; $434e: $c0

	add  b                                           ; $434f: $80
	ld   b, b                                        ; $4350: $40
	ld   bc, $9050                                   ; $4351: $01 $50 $90
	add  b                                           ; $4354: $80
	cp   b                                           ; $4355: $b8
	add  b                                           ; $4356: $80
	adc  b                                           ; $4357: $88
	add  b                                           ; $4358: $80
	xor  b                                           ; $4359: $a8
	dec  b                                           ; $435a: $05
	adc  b                                           ; $435b: $88
	ld   [$2928], sp                                 ; $435c: $08 $28 $29
	ld   de, $85ef                                   ; $435f: $11 $ef $85
	nop                                              ; $4362: $00
	ld   [bc], a                                     ; $4363: $02
	adc  a                                           ; $4364: $8f
	adc  h                                           ; $4365: $8c
	db   $fc                                         ; $4366: $fc
	add  b                                           ; $4367: $80
	inc  bc                                          ; $4368: $03
	add  b                                           ; $4369: $80
	rlca                                             ; $436a: $07
	rlca                                             ; $436b: $07
	inc  de                                          ; $436c: $13
	ld   h, e                                        ; $436d: $63
	ld   c, $9e                                      ; $436e: $0e $9e
	inc  e                                           ; $4370: $1c
	inc  a                                           ; $4371: $3c
	ld   a, $fe                                      ; $4372: $3e $fe
	add  b                                           ; $4374: $80
	sbc  [hl]                                        ; $4375: $9e
	add  hl, bc                                      ; $4376: $09
	ld   a, [hl]                                     ; $4377: $7e
	ld   a, a                                        ; $4378: $7f
	ld   hl, sp-$01                                  ; $4379: $f8 $ff
	pop  af                                          ; $437b: $f1
	ei                                               ; $437c: $fb
	ret  nz                                          ; $437d: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $437e: $cf
	jr   nc, jr_09c_43b3                             ; $437f: $30 $32

	add  b                                           ; $4381: $80
	ld   h, b                                        ; $4382: $60
	ld   [bc], a                                     ; $4383: $02
	jr   nc, jr_09c_43b7                             ; $4384: $30 $31

	ld   [$6880], sp                                 ; $4386: $08 $80 $68
	add  c                                           ; $4389: $81
	add  sp, $05                                     ; $438a: $e8 $05
	ldh  [$f8], a                                    ; $438c: $e0 $f8
	ei                                               ; $438e: $fb
	add  b                                           ; $438f: $80
	dec  de                                          ; $4390: $1b
	rra                                              ; $4391: $1f
	add  b                                           ; $4392: $80
	scf                                              ; $4393: $37
	nop                                              ; $4394: $00
	daa                                              ; $4395: $27
	add  b                                           ; $4396: $80
	ld   l, $80                                      ; $4397: $2e $80
	dec  l                                           ; $4399: $2d
	inc  bc                                          ; $439a: $03
	xor  c                                           ; $439b: $a9
	ld   l, c                                        ; $439c: $69
	ld   [hl], e                                     ; $439d: $73
	ld   d, e                                        ; $439e: $53
	add  b                                           ; $439f: $80
	ld   b, a                                        ; $43a0: $47
	ld   bc, $fcbc                                   ; $43a1: $01 $bc $fc
	add  d                                           ; $43a4: $82
	rst  $38                                         ; $43a5: $ff
	add  b                                           ; $43a6: $80
	rst  $28                                         ; $43a7: $ef
	add  b                                           ; $43a8: $80
	db   $dd                                         ; $43a9: $dd
	add  b                                           ; $43aa: $80
	ld   [hl], l                                     ; $43ab: $75
	add  b                                           ; $43ac: $80
	ld   a, [hl]                                     ; $43ad: $7e
	ld   [bc], a                                     ; $43ae: $02
	inc  a                                           ; $43af: $3c
	dec  a                                           ; $43b0: $3d
	ld   [hl], c                                     ; $43b1: $71
	add  b                                           ; $43b2: $80

jr_09c_43b3:
	halt                                             ; $43b3: $76
	inc  b                                           ; $43b4: $04
	ld   [hl], c                                     ; $43b5: $71
	ld   a, c                                        ; $43b6: $79

jr_09c_43b7:
	ld   a, b                                        ; $43b7: $78
	ld   hl, sp-$06                                  ; $43b8: $f8 $fa
	add  b                                           ; $43ba: $80
	ldh  a, [c]                                      ; $43bb: $f2
	ld   [$eee2], sp                                 ; $43bc: $08 $e2 $ee
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43bf: $cf
	reti                                             ; $43c0: $d9


	rra                                              ; $43c1: $1f
	scf                                              ; $43c2: $37
	ccf                                              ; $43c3: $3f
	adc  a                                           ; $43c4: $8f
	add  a                                           ; $43c5: $87
	add  c                                           ; $43c6: $81
	or   a                                           ; $43c7: $b7
	inc  bc                                          ; $43c8: $03
	cp   a                                           ; $43c9: $bf
	ld   l, a                                        ; $43ca: $6f
	rst  $38                                         ; $43cb: $ff
	sbc  a                                           ; $43cc: $9f
	add  h                                           ; $43cd: $84
	rst  $38                                         ; $43ce: $ff
	add  b                                           ; $43cf: $80
	rst  $10                                         ; $43d0: $d7
	add  b                                           ; $43d1: $80
	or   a                                           ; $43d2: $b7
	add  b                                           ; $43d3: $80
	rst  $28                                         ; $43d4: $ef
	add  b                                           ; $43d5: $80
	rst  $38                                         ; $43d6: $ff
	add  h                                           ; $43d7: $84
	cp   $80                                         ; $43d8: $fe $80
	rst  $38                                         ; $43da: $ff
	inc  bc                                          ; $43db: $03
	inc  a                                           ; $43dc: $3c
	dec  a                                           ; $43dd: $3d
	add  hl, de                                      ; $43de: $19
	dec  de                                          ; $43df: $1b
	add  b                                           ; $43e0: $80
	sbc  e                                           ; $43e1: $9b
	rlca                                             ; $43e2: $07
	sub  e                                           ; $43e3: $93
	sub  a                                           ; $43e4: $97
	add  a                                           ; $43e5: $87
	add  [hl]                                        ; $43e6: $86
	add  $ce                                         ; $43e7: $c6 $ce
	ld   c, a                                        ; $43e9: $4f
	ld   c, h                                        ; $43ea: $4c
	add  b                                           ; $43eb: $80
	inc  l                                           ; $43ec: $2c
	nop                                              ; $43ed: $00
	dec  c                                           ; $43ee: $0d
	add  b                                           ; $43ef: $80
	ld   h, [hl]                                     ; $43f0: $66
	add  b                                           ; $43f1: $80
	ld   [hl], l                                     ; $43f2: $75
	add  b                                           ; $43f3: $80
	ld   sp, $3880                                   ; $43f4: $31 $80 $38
	dec  bc                                          ; $43f7: $0b
	inc  e                                           ; $43f8: $1c
	ld   e, h                                        ; $43f9: $5c
	inc  e                                           ; $43fa: $1c
	dec  a                                           ; $43fb: $3d
	dec  c                                           ; $43fc: $0d
	dec  e                                           ; $43fd: $1d
	ld   bc, $6f7f                                   ; $43fe: $01 $7f $6f
	ld   a, a                                        ; $4401: $7f
	sbc  a                                           ; $4402: $9f
	adc  a                                           ; $4403: $8f
	add  b                                           ; $4404: $80
	ld   l, a                                        ; $4405: $6f
	inc  b                                           ; $4406: $04
	rst  $28                                         ; $4407: $ef
	rst  $38                                         ; $4408: $ff
	rst  JumpTable                                         ; $4409: $df
	rst  $38                                         ; $440a: $ff
	ccf                                              ; $440b: $3f
	sbc  h                                           ; $440c: $9c
	rst  $38                                         ; $440d: $ff
	add  b                                           ; $440e: $80
	ei                                               ; $440f: $fb
	add  b                                           ; $4410: $80
	push de                                          ; $4411: $d5
	add  b                                           ; $4412: $80
	rst  $10                                         ; $4413: $d7
	ld   bc, $0401                                   ; $4414: $01 $01 $04
	add  c                                           ; $4417: $81
	add  h                                           ; $4418: $84
	nop                                              ; $4419: $00
	add  b                                           ; $441a: $80
	add  d                                           ; $441b: $82
	ret  nz                                          ; $441c: $c0

	add  b                                           ; $441d: $80
	add  b                                           ; $441e: $80
	nop                                              ; $441f: $00
	ld   bc, $0081                                   ; $4420: $01 $81 $00
	ld   bc, $807e                                   ; $4423: $01 $7e $80
	add  b                                           ; $4426: $80
	ret  z                                           ; $4427: $c8

	add  b                                           ; $4428: $80
	add  $01                                         ; $4429: $c6 $01
	db   $d3                                         ; $442b: $d3
	jp   nc, $e480                                   ; $442c: $d2 $80 $e4

	add  b                                           ; $442f: $80
	ldh  [c], a                                      ; $4430: $e2
	add  d                                           ; $4431: $82
	ldh  a, [rIE]                                    ; $4432: $f0 $ff
	nop                                              ; $4434: $00
	rst  $38                                         ; $4435: $ff
	nop                                              ; $4436: $00
	rst  $38                                         ; $4437: $ff
	nop                                              ; $4438: $00
	rst  $38                                         ; $4439: $ff
	nop                                              ; $443a: $00
	rst  $38                                         ; $443b: $ff
	nop                                              ; $443c: $00
	adc  c                                           ; $443d: $89
	nop                                              ; $443e: $00
	ld   a, [de]                                     ; $443f: $1a
	ld   bc, $008c                                   ; $4440: $01 $8c $00
	ld   [de], a                                     ; $4443: $12
	inc  bc                                          ; $4444: $03
	nop                                              ; $4445: $00
	inc  c                                           ; $4446: $0c
	nop                                              ; $4447: $00
	rrca                                             ; $4448: $0f
	nop                                              ; $4449: $00
	ld   bc, $0700                                   ; $444a: $01 $00 $07
	ld   bc, $030b                                   ; $444d: $01 $0b $03
	stop                                             ; $4450: $10 $00
	cpl                                              ; $4452: $2f
	rrca                                             ; $4453: $0f
	ld   a, a                                        ; $4454: $7f
	ccf                                              ; $4455: $3f
	ld   a, a                                        ; $4456: $7f
	adc  c                                           ; $4457: $89

jr_09c_4458:
	nop                                              ; $4458: $00
	inc  bc                                          ; $4459: $03
	ld   a, h                                        ; $445a: $7c
	nop                                              ; $445b: $00
	rst  $38                                         ; $445c: $ff
	ld   a, h                                        ; $445d: $7c
	add  b                                           ; $445e: $80

jr_09c_445f:
	ld   c, $09                                      ; $445f: $0e $09
	rst  $30                                         ; $4461: $f7
	rlca                                             ; $4462: $07
	di                                               ; $4463: $f3
	inc  bc                                          ; $4464: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4465: $cf
	rst  $38                                         ; $4466: $ff
	xor  a                                           ; $4467: $af
	rst  $38                                         ; $4468: $ff
	ld   a, a                                        ; $4469: $7f
	rra                                              ; $446a: $1f
	add  e                                           ; $446b: $83
	rst  $38                                         ; $446c: $ff
	add  l                                           ; $446d: $85
	nop                                              ; $446e: $00
	dec  c                                           ; $446f: $0d
	ret  nz                                          ; $4470: $c0

	nop                                              ; $4471: $00
	and  b                                           ; $4472: $a0
	nop                                              ; $4473: $00
	ld   d, b                                        ; $4474: $50
	nop                                              ; $4475: $00
	jr   z, jr_09c_4478                              ; $4476: $28 $00

jr_09c_4478:
	adc  h                                           ; $4478: $8c
	ld   [$88c9], sp                                 ; $4479: $08 $c9 $88
	xor  e                                           ; $447c: $ab
	adc  c                                           ; $447d: $89
	add  b                                           ; $447e: $80
	res  0, b                                        ; $447f: $cb $80
	ld   sp, hl                                      ; $4481: $f9
	add  b                                           ; $4482: $80
	ld   hl, sp-$7d                                  ; $4483: $f8 $83
	rst  $38                                         ; $4485: $ff
	rrca                                             ; $4486: $0f
	nop                                              ; $4487: $00
	ld   hl, sp+$00                                  ; $4488: $f8 $00
	rst  $30                                         ; $448a: $f7
	ldh  a, [$bf]                                    ; $448b: $f0 $bf
	rst  $38                                         ; $448d: $ff
	ld   e, a                                        ; $448e: $5f
	rst  $38                                         ; $448f: $ff
	daa                                              ; $4490: $27
	rst  $38                                         ; $4491: $ff
	and  a                                           ; $4492: $a7
	rst  $38                                         ; $4493: $ff
	adc  a                                           ; $4494: $8f
	rst  $38                                         ; $4495: $ff
	rst  $28                                         ; $4496: $ef
	add  l                                           ; $4497: $85
	rst  $38                                         ; $4498: $ff
	add  b                                           ; $4499: $80

jr_09c_449a:
	cp   $80                                         ; $449a: $fe $80
	rst  $38                                         ; $449c: $ff
	add  b                                           ; $449d: $80
	cp   $81                                         ; $449e: $fe $81
	rst  $38                                         ; $44a0: $ff
	add  c                                           ; $44a1: $81
	nop                                              ; $44a2: $00
	dec  bc                                          ; $44a3: $0b
	add  b                                           ; $44a4: $80
	nop                                              ; $44a5: $00
	ld   h, b                                        ; $44a6: $60
	nop                                              ; $44a7: $00
	ret  c                                           ; $44a8: $d8

	ret  nz                                          ; $44a9: $c0

	db   $f4                                         ; $44aa: $f4
	ldh  a, [$fa]                                    ; $44ab: $f0 $fa
	ld   hl, sp-$03                                  ; $44ad: $f8 $fd
	db   $fc                                         ; $44af: $fc
	add  b                                           ; $44b0: $80
	cp   $84                                         ; $44b1: $fe $84
	rst  $38                                         ; $44b3: $ff
	add  b                                           ; $44b4: $80
	ccf                                              ; $44b5: $3f
	add  b                                           ; $44b6: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44b7: $cf
	add  b                                           ; $44b8: $80
	ld   [hl], e                                     ; $44b9: $73
	add  b                                           ; $44ba: $80
	sbc  l                                           ; $44bb: $9d
	nop                                              ; $44bc: $00
	ld   a, a                                        ; $44bd: $7f
	add  c                                           ; $44be: $81
	nop                                              ; $44bf: $00
	ld   bc, $0040                                   ; $44c0: $01 $40 $00
	add  b                                           ; $44c3: $80
	add  b                                           ; $44c4: $80
	ld   bc, $80a0                                   ; $44c5: $01 $a0 $80
	add  d                                           ; $44c8: $82
	ret  nz                                          ; $44c9: $c0

	ld   bc, $c0d0                                   ; $44ca: $01 $d0 $c0
	add  b                                           ; $44cd: $80
	ldh  [$82], a                                    ; $44ce: $e0 $82
	ld   h, b                                        ; $44d0: $60
	add  [hl]                                        ; $44d1: $86
	and  b                                           ; $44d2: $a0
	add  b                                           ; $44d3: $80
	jr   nz, jr_09c_4458                             ; $44d4: $20 $82

	nop                                              ; $44d6: $00
	nop                                              ; $44d7: $00
	db   $10                                         ; $44d8: $10
	add  e                                           ; $44d9: $83
	nop                                              ; $44da: $00
	nop                                              ; $44db: $00
	jr   nz, jr_09c_445f                             ; $44dc: $20 $81

	nop                                              ; $44de: $00
	nop                                              ; $44df: $00
	ld   b, b                                        ; $44e0: $40
	add  e                                           ; $44e1: $83
	nop                                              ; $44e2: $00
	ld   bc, $0040                                   ; $44e3: $01 $40 $00
	add  b                                           ; $44e6: $80
	add  b                                           ; $44e7: $80
	nop                                              ; $44e8: $00
	ldh  [$81], a                                    ; $44e9: $e0 $81
	ret  nz                                          ; $44eb: $c0

	dec  c                                           ; $44ec: $0d
	add  b                                           ; $44ed: $80
	ret  nz                                          ; $44ee: $c0

	ret  nc                                          ; $44ef: $d0

	ret  nz                                          ; $44f0: $c0

	ld   b, b                                        ; $44f1: $40
	rrca                                             ; $44f2: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44f3: $cf
	rrca                                             ; $44f4: $0f
	daa                                              ; $44f5: $27
	rlca                                             ; $44f6: $07
	sub  b                                           ; $44f7: $90
	nop                                              ; $44f8: $00
	ret  z                                           ; $44f9: $c8

	add  b                                           ; $44fa: $80
	add  b                                           ; $44fb: $80
	add  c                                           ; $44fc: $81
	inc  b                                           ; $44fd: $04
	dec  b                                           ; $44fe: $05
	ld   bc, $8002                                   ; $44ff: $01 $02 $80
	add  c                                           ; $4502: $81
	add  e                                           ; $4503: $83
	add  b                                           ; $4504: $80
	inc  b                                           ; $4505: $04
	or   b                                           ; $4506: $b0
	nop                                              ; $4507: $00
	inc  c                                           ; $4508: $0c
	ld   [hl], b                                     ; $4509: $70
	ld   [hl], e                                     ; $450a: $73
	add  b                                           ; $450b: $80
	cp   h                                           ; $450c: $bc
	add  b                                           ; $450d: $80
	ld   a, a                                        ; $450e: $7f
	inc  b                                           ; $450f: $04
	rst  $38                                         ; $4510: $ff
	xor  b                                           ; $4511: $a8
	ld   d, b                                        ; $4512: $50
	ld   e, h                                        ; $4513: $5c
	ld   e, b                                        ; $4514: $58
	add  b                                           ; $4515: $80
	ld   hl, sp-$80                                  ; $4516: $f8 $80
	jr   c, jr_09c_449a                              ; $4518: $38 $80

	ret  c                                           ; $451a: $d8

	inc  bc                                          ; $451b: $03
	ld   a, [$fbf8]                                  ; $451c: $fa $f8 $fb
	ld   a, [$0f80]                                  ; $451f: $fa $80 $0f
	add  b                                           ; $4522: $80
	scf                                              ; $4523: $37
	add  b                                           ; $4524: $80
	ld   a, e                                        ; $4525: $7b
	inc  c                                           ; $4526: $0c
	cp   l                                           ; $4527: $bd
	dec  a                                           ; $4528: $3d
	ld   b, c                                        ; $4529: $41
	ld   bc, $0222                                   ; $452a: $01 $22 $02
	add  a                                           ; $452d: $87
	rlca                                             ; $452e: $07
	ld   [hl], a                                     ; $452f: $77
	add  a                                           ; $4530: $87
	ld   d, b                                        ; $4531: $50
	jr   nz, @+$21                                   ; $4532: $20 $1f

	adc  e                                           ; $4534: $8b
	nop                                              ; $4535: $00
	nop                                              ; $4536: $00
	add  b                                           ; $4537: $80
	add  e                                           ; $4538: $83
	nop                                              ; $4539: $00
	inc  bc                                          ; $453a: $03
	ld   b, b                                        ; $453b: $40
	nop                                              ; $453c: $00
	ld   h, b                                        ; $453d: $60
	ld   b, b                                        ; $453e: $40
	add  b                                           ; $453f: $80
	ret  nz                                          ; $4540: $c0

	add  b                                           ; $4541: $80
	ld   b, b                                        ; $4542: $40
	add  b                                           ; $4543: $80
	add  b                                           ; $4544: $80
	ld   [bc], a                                     ; $4545: $02
	nop                                              ; $4546: $00
	ld   b, b                                        ; $4547: $40
	and  b                                           ; $4548: $a0
	add  l                                           ; $4549: $85
	nop                                              ; $454a: $00
	cpl                                              ; $454b: $2f
	add  b                                           ; $454c: $80
	nop                                              ; $454d: $00
	stop                                             ; $454e: $10 $00
	jr   nc, jr_09c_4552                             ; $4550: $30 $00

jr_09c_4552:
	ld   bc, $e300                                   ; $4552: $01 $00 $e3
	nop                                              ; $4555: $00
	ld   b, $00                                      ; $4556: $06 $00
	inc  c                                           ; $4558: $0c
	nop                                              ; $4559: $00
	add  hl, de                                      ; $455a: $19
	nop                                              ; $455b: $00
	ld   [hl-], a                                    ; $455c: $32
	ld   bc, $0204                                   ; $455d: $01 $04 $02
	jr   z, jr_09c_4566                              ; $4560: $28 $04

	stop                                             ; $4562: $10 $00
	ld   e, [hl]                                     ; $4564: $5e
	nop                                              ; $4565: $00

jr_09c_4566:
	rlca                                             ; $4566: $07
	nop                                              ; $4567: $00
	ld   bc, $0f00                                   ; $4568: $01 $00 $0f
	nop                                              ; $456b: $00
	ccf                                              ; $456c: $3f
	nop                                              ; $456d: $00
	ld   [hl], e                                     ; $456e: $73
	nop                                              ; $456f: $00
	call z, $9202                                    ; $4570: $cc $02 $92
	rrca                                             ; $4573: $0f
	cpl                                              ; $4574: $2f
	rra                                              ; $4575: $1f
	ld   e, a                                        ; $4576: $5f
	ccf                                              ; $4577: $3f
	and  a                                           ; $4578: $a7
	ld   h, a                                        ; $4579: $67
	ld   b, a                                        ; $457a: $47
	rst  ToBoot                                         ; $457b: $c7
	add  [hl]                                        ; $457c: $86
	rlca                                             ; $457d: $07
	dec  b                                           ; $457e: $05
	ldh  a, [$e0]                                    ; $457f: $f0 $e0
	xor  $c0                                         ; $4581: $ee $c0
	rst  JumpTable                                         ; $4583: $df
	ld   e, $80                                      ; $4584: $1e $80
	ccf                                              ; $4586: $3f
	ld   b, $1b                                      ; $4587: $06 $1b
	sbc  e                                           ; $4589: $9b
	sbc  l                                           ; $458a: $9d
	ld   e, l                                        ; $458b: $5d
	ld   e, [hl]                                     ; $458c: $5e
	sbc  [hl]                                        ; $458d: $9e
	sbc  a                                           ; $458e: $9f
	add  b                                           ; $458f: $80
	ld   e, a                                        ; $4590: $5f
	add  b                                           ; $4591: $80
	ld   e, d                                        ; $4592: $5a
	add  c                                           ; $4593: $81
	ld   e, l                                        ; $4594: $5d
	ld   [bc], a                                     ; $4595: $02
	ld   e, h                                        ; $4596: $5c
	ld   e, [hl]                                     ; $4597: $5e
	ld   l, h                                        ; $4598: $6c
	add  e                                           ; $4599: $83

jr_09c_459a:
	inc  l                                           ; $459a: $2c
	add  b                                           ; $459b: $80
	inc  b                                           ; $459c: $04
	nop                                              ; $459d: $00
	rst  $38                                         ; $459e: $ff
	add  c                                           ; $459f: $81
	nop                                              ; $45a0: $00
	dec  bc                                          ; $45a1: $0b
	add  b                                           ; $45a2: $80
	nop                                              ; $45a3: $00
	ld   h, b                                        ; $45a4: $60
	add  b                                           ; $45a5: $80
	jr   nc, @-$1e                                   ; $45a6: $30 $e0

	jr   jr_09c_459a                                 ; $45a8: $18 $f0

	inc  a                                           ; $45aa: $3c
	ret  c                                           ; $45ab: $d8

	ld   h, $64                                      ; $45ac: $26 $64
	add  b                                           ; $45ae: $80
	or   b                                           ; $45af: $b0
	dec  b                                           ; $45b0: $05
	dec  [hl]                                        ; $45b1: $35
	or   b                                           ; $45b2: $b0
	ld   e, [hl]                                     ; $45b3: $5e
	ret  c                                           ; $45b4: $d8

	ret                                              ; $45b5: $c9


	ret  z                                           ; $45b6: $c8

	add  b                                           ; $45b7: $80
	ret  nz                                          ; $45b8: $c0

	ld   b, $4c                                      ; $45b9: $06 $4c
	ld   b, b                                        ; $45bb: $40
	stop                                             ; $45bc: $10 $00
	ld   h, b                                        ; $45be: $60
	nop                                              ; $45bf: $00
	add  b                                           ; $45c0: $80
	adc  a                                           ; $45c1: $8f
	nop                                              ; $45c2: $00
	ld   [bc], a                                     ; $45c3: $02
	ld   bc, $0200                                   ; $45c4: $01 $00 $02
	add  c                                           ; $45c7: $81
	ld   bc, $0400                                   ; $45c8: $01 $00 $04
	add  c                                           ; $45cb: $81
	inc  bc                                          ; $45cc: $03
	ld   [bc], a                                     ; $45cd: $02
	add  hl, bc                                      ; $45ce: $09
	rlca                                             ; $45cf: $07
	inc  b                                           ; $45d0: $04
	add  b                                           ; $45d1: $80
	rlca                                             ; $45d2: $07
	inc  b                                           ; $45d3: $04
	ld   b, $12                                      ; $45d4: $06 $12
	ld   c, $0c                                      ; $45d6: $0e $0c
	ld   c, $80                                      ; $45d8: $0e $80
	dec  c                                           ; $45da: $0d
	nop                                              ; $45db: $00
	dec  b                                           ; $45dc: $05
	add  c                                           ; $45dd: $81
	dec  c                                           ; $45de: $0d
	ld   bc, $0515                                   ; $45df: $01 $15 $05
	add  h                                           ; $45e2: $84
	ld   bc, $0800                                   ; $45e3: $01 $00 $08
	add  c                                           ; $45e6: $81
	nop                                              ; $45e7: $00
	nop                                              ; $45e8: $00
	inc  b                                           ; $45e9: $04
	add  c                                           ; $45ea: $81
	nop                                              ; $45eb: $00
	dec  b                                           ; $45ec: $05
	ld   [bc], a                                     ; $45ed: $02
	nop                                              ; $45ee: $00
	ld   bc, $9000                                   ; $45ef: $01 $00 $90
	ld   l, a                                        ; $45f2: $6f
	add  d                                           ; $45f3: $82
	ld   c, [hl]                                     ; $45f4: $4e
	nop                                              ; $45f5: $00
	adc  [hl]                                        ; $45f6: $8e
	add  c                                           ; $45f7: $81
	ld   c, $01                                      ; $45f8: $0e $01
	ld   c, [hl]                                     ; $45fa: $4e
	ld   c, $80                                      ; $45fb: $0e $80
	ld   b, $02                                      ; $45fd: $06 $02
	or   [hl]                                        ; $45ff: $b6
	ld   b, $8a                                      ; $4600: $06 $8a
	add  c                                           ; $4602: $81
	ld   [bc], a                                     ; $4603: $02
	nop                                              ; $4604: $00
	inc  b                                           ; $4605: $04
	add  e                                           ; $4606: $83
	nop                                              ; $4607: $00
	inc  bc                                          ; $4608: $03
	inc  b                                           ; $4609: $04
	nop                                              ; $460a: $00
	inc  c                                           ; $460b: $0c
	inc  b                                           ; $460c: $04
	add  d                                           ; $460d: $82
	ld   b, $80                                      ; $460e: $06 $80
	dec  b                                           ; $4610: $05
	inc  bc                                          ; $4611: $03
	add  hl, de                                      ; $4612: $19
	add  hl, bc                                      ; $4613: $09
	inc  a                                           ; $4614: $3c
	inc  e                                           ; $4615: $1c
	add  b                                           ; $4616: $80
	add  hl, de                                      ; $4617: $19
	add  b                                           ; $4618: $80
	dec  de                                          ; $4619: $1b
	ld   bc, $2767                                   ; $461a: $01 $67 $27
	add  b                                           ; $461d: $80
	jr   nc, @+$03                                   ; $461e: $30 $01

	xor  $6e                                         ; $4620: $ee $6e
	add  b                                           ; $4622: $80
	ld   e, [hl]                                     ; $4623: $5e
	dec  d                                           ; $4624: $15
	dec  e                                           ; $4625: $1d
	inc  e                                           ; $4626: $1c
	add  d                                           ; $4627: $82
	add  b                                           ; $4628: $80
	or   e                                           ; $4629: $b3
	or   b                                           ; $462a: $b0
	ld   h, b                                        ; $462b: $60
	ld   h, e                                        ; $462c: $63
	jp   $0fcf                                       ; $462d: $c3 $cf $0f


	ccf                                              ; $4630: $3f
	and  b                                           ; $4631: $a0
	add  b                                           ; $4632: $80
	ret  nc                                          ; $4633: $d0

	ret  nz                                          ; $4634: $c0

	adc  b                                           ; $4635: $88
	add  b                                           ; $4636: $80
	ld   c, $00                                      ; $4637: $0e $00
	push de                                          ; $4639: $d5
	ret  nz                                          ; $463a: $c0

	add  b                                           ; $463b: $80
	add  b                                           ; $463c: $80
	inc  b                                           ; $463d: $04
	ld   hl, $4000                                   ; $463e: $21 $00 $40
	nop                                              ; $4641: $00
	add  c                                           ; $4642: $81
	add  b                                           ; $4643: $80
	nop                                              ; $4644: $00
	dec  b                                           ; $4645: $05
	ld   bc, $0105                                   ; $4646: $01 $05 $01
	add  hl, bc                                      ; $4649: $09
	ld   bc, $80f1                                   ; $464a: $01 $f1 $80
	rrca                                             ; $464d: $0f
	add  b                                           ; $464e: $80
	db   $fd                                         ; $464f: $fd
	add  b                                           ; $4650: $80
	db   $fc                                         ; $4651: $fc
	ld   bc, $07f8                                   ; $4652: $01 $f8 $07
	add  e                                           ; $4655: $83
	nop                                              ; $4656: $00
	ld   [bc], a                                     ; $4657: $02
	ld   bc, $0300                                   ; $4658: $01 $00 $03
	add  c                                           ; $465b: $81
	ld   bc, $0080                                   ; $465c: $01 $80 $00
	add  hl, bc                                      ; $465f: $09
	inc  b                                           ; $4660: $04
	ld   [bc], a                                     ; $4661: $02
	ld   a, [bc]                                     ; $4662: $0a
	inc  b                                           ; $4663: $04
	inc  d                                           ; $4664: $14
	dec  b                                           ; $4665: $05
	ld   a, l                                        ; $4666: $7d
	add  hl, de                                      ; $4667: $19
	db   $fd                                         ; $4668: $fd
	ld   a, l                                        ; $4669: $7d
	add  b                                           ; $466a: $80
	db   $fd                                         ; $466b: $fd
	add  b                                           ; $466c: $80
	ld   a, l                                        ; $466d: $7d
	add  b                                           ; $466e: $80
	db   $fd                                         ; $466f: $fd
	add  b                                           ; $4670: $80
	cp   l                                           ; $4671: $bd
	nop                                              ; $4672: $00
	cp   $83                                         ; $4673: $fe $83
	nop                                              ; $4675: $00
	rrca                                             ; $4676: $0f
	ld   bc, $0300                                   ; $4677: $01 $00 $03
	ld   bc, $0307                                   ; $467a: $01 $07 $03
	nop                                              ; $467d: $00
	ld   [bc], a                                     ; $467e: $02
	dec  bc                                          ; $467f: $0b
	dec  b                                           ; $4680: $05
	inc  b                                           ; $4681: $04
	ld   bc, $0318                                   ; $4682: $01 $18 $03
	inc  e                                           ; $4685: $1c
	ld   b, $80                                      ; $4686: $06 $80
	inc  b                                           ; $4688: $04
	ld   [bc], a                                     ; $4689: $02
	ld   [$0400], sp                                 ; $468a: $08 $00 $04
	add  c                                           ; $468d: $81
	nop                                              ; $468e: $00
	inc  bc                                          ; $468f: $03
	ld   [bc], a                                     ; $4690: $02
	nop                                              ; $4691: $00
	ld   [$8006], sp                                 ; $4692: $08 $06 $80
	dec  b                                           ; $4695: $05
	inc  bc                                          ; $4696: $03
	add  hl, de                                      ; $4697: $19
	add  hl, bc                                      ; $4698: $09
	inc  l                                           ; $4699: $2c
	inc  e                                           ; $469a: $1c
	add  b                                           ; $469b: $80
	add  hl, de                                      ; $469c: $19
	jr   jr_09c_46a8                                 ; $469d: $18 $09

	dec  de                                          ; $469f: $1b
	ld   h, c                                        ; $46a0: $61
	daa                                              ; $46a1: $27
	inc  [hl]                                        ; $46a2: $34
	jr   nc, @-$58                                   ; $46a3: $30 $a6

	ld   l, [hl]                                     ; $46a5: $6e
	ld   b, $5e                                      ; $46a6: $06 $5e

jr_09c_46a8:
	dec  c                                           ; $46a8: $0d
	inc  e                                           ; $46a9: $1c
	ld   [bc], a                                     ; $46aa: $02
	add  b                                           ; $46ab: $80
	inc  de                                          ; $46ac: $13
	or   b                                           ; $46ad: $b0
	inc  bc                                          ; $46ae: $03
	ld   h, b                                        ; $46af: $60
	adc  h                                           ; $46b0: $8c
	ret  nz                                          ; $46b1: $c0

	jr   nc, jr_09c_46b4                             ; $46b2: $30 $00

jr_09c_46b4:
	ccf                                              ; $46b4: $3f
	rra                                              ; $46b5: $1f
	rst  JumpTable                                         ; $46b6: $df
	add  b                                           ; $46b7: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46b8: $cf
	inc  b                                           ; $46b9: $04
	rst  ToBoot                                         ; $46ba: $c7
	rrca                                             ; $46bb: $0f
	ld   bc, $c0d5                                   ; $46bc: $01 $d5 $c0
	add  b                                           ; $46bf: $80
	add  b                                           ; $46c0: $80
	add  hl, de                                      ; $46c1: $19
	jr   nz, jr_09c_46c5                             ; $46c2: $20 $01

	ld   b, c                                        ; $46c4: $41

jr_09c_46c5:
	ld   bc, $0081                                   ; $46c5: $01 $81 $00
	ld   bc, $0400                                   ; $46c8: $01 $00 $04
	nop                                              ; $46cb: $00
	ld   [$fc00], sp                                 ; $46cc: $08 $00 $fc
	nop                                              ; $46cf: $00
	ldh  a, [rP1]                                    ; $46d0: $f0 $00
	inc  bc                                          ; $46d2: $03
	nop                                              ; $46d3: $00
	ld   b, $00                                      ; $46d4: $06 $00
	xor  a                                           ; $46d6: $af
	ld   d, b                                        ; $46d7: $50
	ld   e, h                                        ; $46d8: $5c
	ld   e, b                                        ; $46d9: $58
	ldh  a, [$f8]                                    ; $46da: $f0 $f8
	add  b                                           ; $46dc: $80
	jr   c, @+$09                                    ; $46dd: $38 $07

	sub  b                                           ; $46df: $90
	ret  c                                           ; $46e0: $d8

	sbc  d                                           ; $46e1: $9a
	ld   hl, sp-$25                                  ; $46e2: $f8 $db
	ld   a, [$0f0e]                                  ; $46e4: $fa $0e $0f

jr_09c_46e7:
	add  b                                           ; $46e7: $80
	scf                                              ; $46e8: $37
	ld   c, $72                                      ; $46e9: $0e $72
	ld   a, e                                        ; $46eb: $7b
	or   l                                           ; $46ec: $b5
	dec  a                                           ; $46ed: $3d
	ld   b, c                                        ; $46ee: $41
	ld   bc, $0222                                   ; $46ef: $01 $22 $02
	add  a                                           ; $46f2: $87
	rlca                                             ; $46f3: $07
	rst  $30                                         ; $46f4: $f7
	rlca                                             ; $46f5: $07
	or   b                                           ; $46f6: $b0
	ret  nz                                          ; $46f7: $c0

	rra                                              ; $46f8: $1f
	rst  $38                                         ; $46f9: $ff
	nop                                              ; $46fa: $00
	db   $fc                                         ; $46fb: $fc
	nop                                              ; $46fc: $00
	ld   [bc], a                                     ; $46fd: $02
	add  b                                           ; $46fe: $80
	ld   a, a                                        ; $46ff: $7f
	rst  $38                                         ; $4700: $ff
	add  b                                           ; $4701: $80
	ld   a, a                                        ; $4702: $7f
	nop                                              ; $4703: $00
	rst  $38                                         ; $4704: $ff
	add  b                                           ; $4705: $80
	ei                                               ; $4706: $fb
	add  b                                           ; $4707: $80
	rst  $30                                         ; $4708: $f7
	add  c                                           ; $4709: $81
	rst  $28                                         ; $470a: $ef
	ld   [bc], a                                     ; $470b: $02
	ld   l, a                                        ; $470c: $6f
	sbc  $5e                                         ; $470d: $de $5e
	adc  b                                           ; $470f: $88
	rst  $38                                         ; $4710: $ff
	add  b                                           ; $4711: $80
	cp   $80                                         ; $4712: $fe $80
	db   $fc                                         ; $4714: $fc
	add  b                                           ; $4715: $80
	db   $f4                                         ; $4716: $f4
	add  b                                           ; $4717: $80
	rst  $38                                         ; $4718: $ff
	add  b                                           ; $4719: $80
	rst  JumpTable                                         ; $471a: $df
	add  b                                           ; $471b: $80
	cp   a                                           ; $471c: $bf
	add  d                                           ; $471d: $82
	ld   a, a                                        ; $471e: $7f
	add  b                                           ; $471f: $80
	rst  $38                                         ; $4720: $ff
	add  b                                           ; $4721: $80
	ei                                               ; $4722: $fb
	add  b                                           ; $4723: $80
	ld   a, [$dd80]                                  ; $4724: $fa $80 $dd
	add  b                                           ; $4727: $80
	cp   l                                           ; $4728: $bd
	add  b                                           ; $4729: $80
	cp   e                                           ; $472a: $bb
	nop                                              ; $472b: $00
	ld   a, e                                        ; $472c: $7b
	add  b                                           ; $472d: $80
	dec  sp                                          ; $472e: $3b
	inc  bc                                          ; $472f: $03
	add  hl, hl                                      ; $4730: $29
	dec  h                                           ; $4731: $25
	inc  d                                           ; $4732: $14
	inc  b                                           ; $4733: $04
	add  b                                           ; $4734: $80
	ld   b, d                                        ; $4735: $42
	ld   bc, $ec63                                   ; $4736: $01 $63 $ec
	add  b                                           ; $4739: $80
	add  sp, $00                                     ; $473a: $e8 $00
	ld   [$d280], a                                  ; $473c: $ea $80 $d2
	nop                                              ; $473f: $00
	ret  nc                                          ; $4740: $d0

	add  c                                           ; $4741: $81
	ld   d, h                                        ; $4742: $54
	nop                                              ; $4743: $00
	nop                                              ; $4744: $00
	add  c                                           ; $4745: $81
	adc  b                                           ; $4746: $88
	inc  bc                                          ; $4747: $03
	ld   [$b549], sp                                 ; $4748: $08 $49 $b5
	ld   a, [$f281]                                  ; $474b: $fa $81 $f2
	ld   bc, $6272                                   ; $474e: $01 $72 $62
	add  c                                           ; $4751: $81
	ld   [hl+], a                                    ; $4752: $22
	nop                                              ; $4753: $00
	ld   hl, $8580                                   ; $4754: $21 $80 $85
	inc  bc                                          ; $4757: $03
	and  l                                           ; $4758: $a5
	inc  h                                           ; $4759: $24
	ld   b, [hl]                                     ; $475a: $46
	sbc  c                                           ; $475b: $99
	add  c                                           ; $475c: $81
	cp   a                                           ; $475d: $bf
	add  b                                           ; $475e: $80
	ld   e, l                                        ; $475f: $5d
	inc  b                                           ; $4760: $04
	ld   e, [hl]                                     ; $4761: $5e
	ld   d, h                                        ; $4762: $54
	ld   b, l                                        ; $4763: $45
	ld   c, b                                        ; $4764: $48
	jr   nz, jr_09c_46e7                             ; $4765: $20 $80

	dec  h                                           ; $4767: $25
	inc  b                                           ; $4768: $04
	daa                                              ; $4769: $27
	inc  bc                                          ; $476a: $03
	ld   c, e                                        ; $476b: $4b
	add  [hl]                                        ; $476c: $86
	adc  $80                                         ; $476d: $ce $80
	and  $80                                         ; $476f: $e6 $80
	ld   h, [hl]                                     ; $4771: $66

jr_09c_4772:
	add  d                                           ; $4772: $82
	ld   [hl-], a                                    ; $4773: $32
	ld   [bc], a                                     ; $4774: $02
	ld   [de], a                                     ; $4775: $12
	sub  d                                           ; $4776: $92
	add  b                                           ; $4777: $80
	add  c                                           ; $4778: $81
	add  h                                           ; $4779: $84
	add  c                                           ; $477a: $81
	sub  h                                           ; $477b: $94
	add  b                                           ; $477c: $80
	ld   e, h                                        ; $477d: $5c
	add  b                                           ; $477e: $80
	call c, $d804                                    ; $477f: $dc $04 $d8
	sbc  $d6                                         ; $4782: $de $d6
	call z, $808c                                    ; $4784: $cc $8c $80
	add  b                                           ; $4787: $80
	ld   [bc], a                                     ; $4788: $02
	adc  [hl]                                        ; $4789: $8e
	ld   c, $ff                                      ; $478a: $0e $ff
	add  l                                           ; $478c: $85
	nop                                              ; $478d: $00
	add  b                                           ; $478e: $80
	add  b                                           ; $478f: $80
	jr   z, jr_09c_4772                              ; $4790: $28 $e0

	jr   nz, @+$41                                   ; $4792: $20 $3f

	ld   c, $8e                                      ; $4794: $0e $8e
	jr   nc, jr_09c_47e6                             ; $4796: $30 $4e

	ld   bc, $0203                                   ; $4798: $01 $03 $02
	rlca                                             ; $479b: $07
	inc  b                                           ; $479c: $04
	dec  c                                           ; $479d: $0d
	ld   [$2538], sp                                 ; $479e: $08 $38 $25
	push hl                                          ; $47a1: $e5
	sbc  b                                           ; $47a2: $98
	sbc  [hl]                                        ; $47a3: $9e
	ld   bc, $047f                                   ; $47a4: $01 $7f $04
	and  c                                           ; $47a7: $a1
	ret  nz                                          ; $47a8: $c0

	ld   b, [hl]                                     ; $47a9: $46
	ld   b, c                                        ; $47aa: $41
	ld   a, h                                        ; $47ab: $7c
	ld   h, [hl]                                     ; $47ac: $66
	inc  l                                           ; $47ad: $2c
	xor  l                                           ; $47ae: $ad
	adc  c                                           ; $47af: $89
	adc  e                                           ; $47b0: $8b
	sbc  e                                           ; $47b1: $9b
	sbc  b                                           ; $47b2: $98
	sub  b                                           ; $47b3: $90
	sub  a                                           ; $47b4: $97
	and  a                                           ; $47b5: $a7
	jr   z, @-$36                                    ; $47b6: $28 $c8

	ld   b, e                                        ; $47b8: $43
	add  e                                           ; $47b9: $83
	add  b                                           ; $47ba: $80
	ccf                                              ; $47bb: $3f
	add  d                                           ; $47bc: $82
	rst  $38                                         ; $47bd: $ff
	add  b                                           ; $47be: $80
	cp   $80                                         ; $47bf: $fe $80
	ld   sp, hl                                      ; $47c1: $f9
	add  b                                           ; $47c2: $80
	cp   a                                           ; $47c3: $bf
	ld   bc, $fe7e                                   ; $47c4: $01 $7e $fe
	add  h                                           ; $47c7: $84
	cp   a                                           ; $47c8: $bf

jr_09c_47c9:
	add  d                                           ; $47c9: $82
	cp   e                                           ; $47ca: $bb
	nop                                              ; $47cb: $00
	or   b                                           ; $47cc: $b0
	add  b                                           ; $47cd: $80
	or   l                                           ; $47ce: $b5
	add  b                                           ; $47cf: $80
	or   d                                           ; $47d0: $b2
	ld   bc, $fa32                                   ; $47d1: $01 $32 $fa
	add  b                                           ; $47d4: $80
	ld   sp, hl                                      ; $47d5: $f9
	add  b                                           ; $47d6: $80
	ld   hl, sp+$10                                  ; $47d7: $f8 $10
	cp   $e6                                         ; $47d9: $fe $e6
	ld   hl, sp-$67                                  ; $47db: $f8 $99
	pop  hl                                          ; $47dd: $e1
	ld   h, a                                        ; $47de: $67
	add  a                                           ; $47df: $87
	sbc  a                                           ; $47e0: $9f
	rra                                              ; $47e1: $1f
	ld   a, a                                        ; $47e2: $7f
	ccf                                              ; $47e3: $3f
	ld   e, a                                        ; $47e4: $5f
	sbc  a                                           ; $47e5: $9f

jr_09c_47e6:
	adc  a                                           ; $47e6: $8f
	ccf                                              ; $47e7: $3f
	scf                                              ; $47e8: $37
	rlca                                             ; $47e9: $07
	add  b                                           ; $47ea: $80
	rst  ToBoot                                         ; $47eb: $c7
	sbc  [hl]                                        ; $47ec: $9e
	rst  $38                                         ; $47ed: $ff
	add  b                                           ; $47ee: $80
	ld   a, a                                        ; $47ef: $7f
	add  b                                           ; $47f0: $80
	ld   l, a                                        ; $47f1: $6f
	add  b                                           ; $47f2: $80
	ld   e, a                                        ; $47f3: $5f
	ld   de, $6f5e                                   ; $47f4: $11 $5e $6f
	ret                                              ; $47f7: $c9


	ldh  [$e6], a                                    ; $47f8: $e0 $e6
	ld   a, [$fffb]                                  ; $47fa: $fa $fb $ff
	ldh  a, [rIE]                                    ; $47fd: $f0 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47ff: $cf
	db   $fc                                         ; $4800: $fc
	adc  h                                           ; $4801: $8c
	jp   nz, $8d10                                   ; $4802: $c2 $10 $8d

	and  b                                           ; $4805: $a0
	inc  sp                                          ; $4806: $33
	add  b                                           ; $4807: $80
	ld   d, h                                        ; $4808: $54
	ld   bc, $8d04                                   ; $4809: $01 $04 $8d
	add  b                                           ; $480c: $80
	and  h                                           ; $480d: $a4
	nop                                              ; $480e: $00
	db   $f4                                         ; $480f: $f4
	add  b                                           ; $4810: $80
	db   $ec                                         ; $4811: $ec
	nop                                              ; $4812: $00
	db   $ed                                         ; $4813: $ed
	add  c                                           ; $4814: $81
	db   $ec                                         ; $4815: $ec
	add  b                                           ; $4816: $80
	ld   e, h                                        ; $4817: $5c
	add  hl, bc                                      ; $4818: $09
	ret  nz                                          ; $4819: $c0

	ret  nc                                          ; $481a: $d0

	jp   nc, Jump_09c_40ca                           ; $481b: $d2 $ca $40

	ld   d, b                                        ; $481e: $50
	inc  b                                           ; $481f: $04
	inc  hl                                          ; $4820: $23
	ld   bc, $8141                                   ; $4821: $01 $41 $81
	ld   bc, $8181                                   ; $4824: $01 $81 $81
	sbc  d                                           ; $4827: $9a
	rst  $38                                         ; $4828: $ff
	add  b                                           ; $4829: $80
	cp   $80                                         ; $482a: $fe $80
	db   $fc                                         ; $482c: $fc
	add  [hl]                                        ; $482d: $86
	rst  $38                                         ; $482e: $ff
	add  b                                           ; $482f: $80
	sbc  a                                           ; $4830: $9f
	add  h                                           ; $4831: $84
	rra                                              ; $4832: $1f
	dec  c                                           ; $4833: $0d
	cp   $bd                                         ; $4834: $fe $bd
	cp   a                                           ; $4836: $bf
	cp   e                                           ; $4837: $bb
	cp   a                                           ; $4838: $bf
	or   a                                           ; $4839: $b7
	cp   [hl]                                        ; $483a: $be
	xor  [hl]                                        ; $483b: $ae
	cp   l                                           ; $483c: $bd
	sbc  h                                           ; $483d: $9c
	sbc  d                                           ; $483e: $9a
	sbc  b                                           ; $483f: $98
	or   h                                           ; $4840: $b4
	or   b                                           ; $4841: $b0
	add  b                                           ; $4842: $80
	and  b                                           ; $4843: $a0
	ld   b, $58                                      ; $4844: $06 $58
	ld   b, b                                        ; $4846: $40
	jr   nz, jr_09c_47c9                             ; $4847: $20 $80

	ld   b, b                                        ; $4849: $40
	nop                                              ; $484a: $00
	add  b                                           ; $484b: $80
	add  a                                           ; $484c: $87
	nop                                              ; $484d: $00
	nop                                              ; $484e: $00
	and  b                                           ; $484f: $a0
	add  b                                           ; $4850: $80
	ld   a, [de]                                     ; $4851: $1a
	add  c                                           ; $4852: $81
	dec  e                                           ; $4853: $1d
	inc  bc                                          ; $4854: $03
	inc  e                                           ; $4855: $1c
	ld   e, $6e                                      ; $4856: $1e $6e
	ld   l, $80                                      ; $4858: $2e $80
	cpl                                              ; $485a: $2f
	add  b                                           ; $485b: $80
	ld   l, a                                        ; $485c: $6f
	add  b                                           ; $485d: $80
	ld   b, h                                        ; $485e: $44
	db   $10                                         ; $485f: $10
	xor  $ec                                         ; $4860: $ee $ec
	push af                                          ; $4862: $f5
	or   $fa                                         ; $4863: $f6 $fa
	ld   hl, sp+$7e                                  ; $4865: $f8 $7e
	ld   d, h                                        ; $4867: $54
	inc  d                                           ; $4868: $14
	dec  h                                           ; $4869: $25
	and  [hl]                                        ; $486a: $a6
	ld   [hl-], a                                    ; $486b: $32
	ld   [de], a                                     ; $486c: $12
	sbc  d                                           ; $486d: $9a
	jp   z, $fdcc                                    ; $486e: $ca $cc $fd

	rst  $38                                         ; $4871: $ff
	nop                                              ; $4872: $00
	rst  $38                                         ; $4873: $ff
	nop                                              ; $4874: $00
	rst  $38                                         ; $4875: $ff
	nop                                              ; $4876: $00
	rst  $38                                         ; $4877: $ff
	nop                                              ; $4878: $00
	cp   c                                           ; $4879: $b9
	nop                                              ; $487a: $00
	jp   $0400                                       ; $487b: $c3 $00 $04


	ld   b, c                                        ; $487e: $41
	ld   a, $26                                      ; $487f: $3e $26
	ld   a, $36                                      ; $4881: $3e $36
	add  c                                           ; $4883: $81
	ld   a, $12                                      ; $4884: $3e $12
	db   $fd                                         ; $4886: $fd
	ld   a, h                                        ; $4887: $7c
	ld   e, h                                        ; $4888: $5c
	ld   a, h                                        ; $4889: $7c
	ld   l, l                                        ; $488a: $6d
	ld   a, h                                        ; $488b: $7c
	ld   d, c                                        ; $488c: $51
	ld   [hl], b                                     ; $488d: $70
	ld   [bc], a                                     ; $488e: $02
	nop                                              ; $488f: $00
	or   h                                           ; $4890: $b4
	jr   nc, @+$2b                                   ; $4891: $30 $29

	jr   nz, jr_09c_48a8                             ; $4893: $20 $13

	nop                                              ; $4895: $00
	and  b                                           ; $4896: $a0
	nop                                              ; $4897: $00
	add  $81                                         ; $4898: $c6 $81
	nop                                              ; $489a: $00
	inc  bc                                          ; $489b: $03
	inc  c                                           ; $489c: $0c
	nop                                              ; $489d: $00
	xor  a                                           ; $489e: $af
	ld   e, b                                        ; $489f: $58
	add  b                                           ; $48a0: $80
	inc  bc                                          ; $48a1: $03
	inc  bc                                          ; $48a2: $03
	ld   bc, $84fd                                   ; $48a3: $01 $fd $84
	add  [hl]                                        ; $48a6: $86
	add  b                                           ; $48a7: $80

jr_09c_48a8:
	ld   [bc], a                                     ; $48a8: $02
	inc  de                                          ; $48a9: $13
	inc  hl                                          ; $48aa: $23
	ld   bc, $0131                                   ; $48ab: $01 $31 $01
	add  hl, de                                      ; $48ae: $19
	ld   bc, $004c                                   ; $48af: $01 $4c $00
	ld   h, h                                        ; $48b2: $64
	ld   [bc], a                                     ; $48b3: $02
	ld   [$3709], sp                                 ; $48b4: $08 $09 $37
	rlca                                             ; $48b7: $07
	add  e                                           ; $48b8: $83
	inc  bc                                          ; $48b9: $03
	reti                                             ; $48ba: $d9


	ld   bc, $101c                                   ; $48bb: $01 $1c $10
	add  b                                           ; $48be: $80
	jr   z, jr_09c_48c3                              ; $48bf: $28 $02

	ret  z                                           ; $48c1: $c8

	ld   a, a                                        ; $48c2: $7f

jr_09c_48c3:
	push af                                          ; $48c3: $f5
	add  c                                           ; $48c4: $81
	rst  $38                                         ; $48c5: $ff
	dec  b                                           ; $48c6: $05
	rst  $20                                         ; $48c7: $e7
	rst  $38                                         ; $48c8: $ff
	pop  af                                          ; $48c9: $f1
	rst  $38                                         ; $48ca: $ff
	adc  $fe                                         ; $48cb: $ce $fe
	add  b                                           ; $48cd: $80
	db   $fd                                         ; $48ce: $fd
	ld   bc, $fbdb                                   ; $48cf: $01 $db $fb
	add  b                                           ; $48d2: $80
	di                                               ; $48d3: $f3
	add  b                                           ; $48d4: $80
	dec  bc                                          ; $48d5: $0b
	add  b                                           ; $48d6: $80
	dec  e                                           ; $48d7: $1d
	inc  c                                           ; $48d8: $0c
	ld   e, $de                                      ; $48d9: $1e $de
	rrca                                             ; $48db: $0f
	cpl                                              ; $48dc: $2f
	sub  a                                           ; $48dd: $97
	add  a                                           ; $48de: $87
	adc  e                                           ; $48df: $8b
	add  e                                           ; $48e0: $83
	dec  b                                           ; $48e1: $05
	ld   bc, $8043                                   ; $48e2: $01 $43 $80
	ldh  [$81], a                                    ; $48e5: $e0 $81
	ret  nz                                          ; $48e7: $c0

	dec  b                                           ; $48e8: $05
	sbc  b                                           ; $48e9: $98
	add  b                                           ; $48ea: $80
	ld   a, [hl]                                     ; $48eb: $7e
	ld   a, b                                        ; $48ec: $78
	rst  $38                                         ; $48ed: $ff
	cp   $80                                         ; $48ee: $fe $80
	rst  $38                                         ; $48f0: $ff
	dec  bc                                          ; $48f1: $0b
	ccf                                              ; $48f2: $3f
	rst  $38                                         ; $48f3: $ff
	ld   e, e                                        ; $48f4: $5b
	ei                                               ; $48f5: $fb
	and  h                                           ; $48f6: $a4
	db   $fc                                         ; $48f7: $fc
	set  7, a                                        ; $48f8: $cb $ff
	push af                                          ; $48fa: $f5
	rst  $38                                         ; $48fb: $ff
	ld   a, c                                        ; $48fc: $79
	ld   a, a                                        ; $48fd: $7f
	add  b                                           ; $48fe: $80
	cp   a                                           ; $48ff: $bf
	add  b                                           ; $4900: $80
	call c, $ab02                                    ; $4901: $dc $02 $ab
	adc  b                                           ; $4904: $88
	call c, $0087                                    ; $4905: $dc $87 $00
	inc  b                                           ; $4908: $04
	add  b                                           ; $4909: $80
	nop                                              ; $490a: $00
	ret  nz                                          ; $490b: $c0

	add  b                                           ; $490c: $80
	ldh  [$81], a                                    ; $490d: $e0 $81
	ret  nz                                          ; $490f: $c0

	inc  b                                           ; $4910: $04
	and  b                                           ; $4911: $a0
	add  b                                           ; $4912: $80
	ld   b, b                                        ; $4913: $40
	nop                                              ; $4914: $00
	ret  nz                                          ; $4915: $c0

	add  c                                           ; $4916: $81
	add  b                                           ; $4917: $80
	ld   [bc], a                                     ; $4918: $02
	ld   b, b                                        ; $4919: $40
	nop                                              ; $491a: $00
	add  b                                           ; $491b: $80
	add  c                                           ; $491c: $81
	nop                                              ; $491d: $00
	ld   [bc], a                                     ; $491e: $02
	ld   bc, $0100                                   ; $491f: $01 $00 $01
	add  e                                           ; $4922: $83
	nop                                              ; $4923: $00
	inc  b                                           ; $4924: $04
	ld   bc, $0200                                   ; $4925: $01 $00 $02
	ld   bc, $8304                                   ; $4928: $01 $04 $83
	inc  bc                                          ; $492b: $03
	ld   [bc], a                                     ; $492c: $02
	rlca                                             ; $492d: $07
	ld   bc, $8302                                   ; $492e: $01 $02 $83
	nop                                              ; $4931: $00
	nop                                              ; $4932: $00
	inc  bc                                          ; $4933: $03
	add  e                                           ; $4934: $83
	ld   bc, $0701                                   ; $4935: $01 $01 $07
	inc  bc                                          ; $4938: $03
	add  d                                           ; $4939: $82
	ld   [bc], a                                     ; $493a: $02
	nop                                              ; $493b: $00
	inc  b                                           ; $493c: $04
	add  c                                           ; $493d: $81
	nop                                              ; $493e: $00
	ld   bc, $0206                                   ; $493f: $01 $06 $02
	add  b                                           ; $4942: $80
	inc  bc                                          ; $4943: $03
	add  d                                           ; $4944: $82
	ld   [bc], a                                     ; $4945: $02
	inc  b                                           ; $4946: $04
	ld   bc, $0400                                   ; $4947: $01 $00 $04
	nop                                              ; $494a: $00
	ld   [bc], a                                     ; $494b: $02
	add  a                                           ; $494c: $87
	nop                                              ; $494d: $00
	ld   [$cdf3], sp                                 ; $494e: $08 $f3 $cd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4951: $cf
	ld   l, [hl]                                     ; $4952: $6e
	or   $06                                         ; $4953: $f6 $06
	ld   h, [hl]                                     ; $4955: $66
	ld   b, $05                                      ; $4956: $06 $05
	add  c                                           ; $4958: $81
	inc  b                                           ; $4959: $04
	ld   [bc], a                                     ; $495a: $02
	ld   [de], a                                     ; $495b: $12
	nop                                              ; $495c: $00
	inc  b                                           ; $495d: $04
	add  c                                           ; $495e: $81
	nop                                              ; $495f: $00
	inc  b                                           ; $4960: $04
	inc  d                                           ; $4961: $14
	nop                                              ; $4962: $00
	ld   a, [bc]                                     ; $4963: $0a
	nop                                              ; $4964: $00
	ld   b, $87                                      ; $4965: $06 $87
	nop                                              ; $4967: $00
	ld   [bc], a                                     ; $4968: $02
	ret  z                                           ; $4969: $c8

	nop                                              ; $496a: $00
	ld   c, b                                        ; $496b: $48
	add  c                                           ; $496c: $81
	nop                                              ; $496d: $00
	nop                                              ; $496e: $00
	ret  nz                                          ; $496f: $c0

	add  c                                           ; $4970: $81
	add  b                                           ; $4971: $80
	db   $10                                         ; $4972: $10
	ld   [hl], b                                     ; $4973: $70
	ld   b, b                                        ; $4974: $40
	ld   c, h                                        ; $4975: $4c
	ld   [hl], b                                     ; $4976: $70
	ld   b, d                                        ; $4977: $42
	ld   a, b                                        ; $4978: $78
	sub  l                                           ; $4979: $95
	cp   [hl]                                        ; $497a: $be
	and  h                                           ; $497b: $a4
	sbc  [hl]                                        ; $497c: $9e
	ld   e, d                                        ; $497d: $5a
	add  $a5                                         ; $497e: $c6 $a5
	ld   l, e                                        ; $4980: $6b
	ld   e, d                                        ; $4981: $5a
	ld   [hl], l                                     ; $4982: $75
	ld   h, l                                        ; $4983: $65
	add  b                                           ; $4984: $80
	or   l                                           ; $4985: $b5
	add  b                                           ; $4986: $80
	ret  nc                                          ; $4987: $d0

	add  hl, bc                                      ; $4988: $09
	rst  $28                                         ; $4989: $ef
	ld   d, d                                        ; $498a: $52
	ld   bc, $027f                                   ; $498b: $01 $7f $02
	sub  [hl]                                        ; $498e: $96
	inc  b                                           ; $498f: $04
	call c, $6c0c                                    ; $4990: $dc $0c $6c
	add  b                                           ; $4993: $80
	inc  c                                           ; $4994: $0c
	ld   bc, $160e                                   ; $4995: $01 $0e $16
	add  c                                           ; $4998: $81

jr_09c_4999:
	rlca                                             ; $4999: $07
	nop                                              ; $499a: $00
	dec  bc                                          ; $499b: $0b
	add  l                                           ; $499c: $85
	inc  bc                                          ; $499d: $03
	nop                                              ; $499e: $00
	rrca                                             ; $499f: $0f
	add  c                                           ; $49a0: $81
	rlca                                             ; $49a1: $07
	ld   b, $08                                      ; $49a2: $06 $08
	ld   bc, $0005                                   ; $49a4: $01 $05 $00
	ld   [bc], a                                     ; $49a7: $02
	nop                                              ; $49a8: $00
	inc  bc                                          ; $49a9: $03
	add  c                                           ; $49aa: $81
	nop                                              ; $49ab: $00
	rlca                                             ; $49ac: $07
	ld   b, $00                                      ; $49ad: $06 $00
	dec  sp                                          ; $49af: $3b
	nop                                              ; $49b0: $00
	ld   a, h                                        ; $49b1: $7c
	ccf                                              ; $49b2: $3f
	db   $fc                                         ; $49b3: $fc
	ld   a, a                                        ; $49b4: $7f
	add  c                                           ; $49b5: $81
	rst  $38                                         ; $49b6: $ff
	add  b                                           ; $49b7: $80
	cp   a                                           ; $49b8: $bf
	ld   [$7e7f], sp                                 ; $49b9: $08 $7f $7e
	rst  $38                                         ; $49bc: $ff
	db   $fd                                         ; $49bd: $fd
	rst  $38                                         ; $49be: $ff
	ld   a, [$f9ff]                                  ; $49bf: $fa $ff $f9
	rst  $38                                         ; $49c2: $ff
	add  b                                           ; $49c3: $80
	cp   $22                                         ; $49c4: $fe $22
	ld   hl, sp-$07                                  ; $49c6: $f8 $f9
	ld   [hl], h                                     ; $49c8: $74
	nop                                              ; $49c9: $00
	ret  nz                                          ; $49ca: $c0

jr_09c_49cb:
	nop                                              ; $49cb: $00
	ld   h, $00                                      ; $49cc: $26 $00
	call nz, $8000                                   ; $49ce: $c4 $00 $80
	nop                                              ; $49d1: $00
	db   $fc                                         ; $49d2: $fc
	nop                                              ; $49d3: $00
	jr   nc, @-$3e                                   ; $49d4: $30 $c0

	ld   d, a                                        ; $49d6: $57
	ldh  [$9d], a                                    ; $49d7: $e0 $9d
	nop                                              ; $49d9: $00
	inc  e                                           ; $49da: $1c
	nop                                              ; $49db: $00
	inc  c                                           ; $49dc: $0c
	nop                                              ; $49dd: $00
	rra                                              ; $49de: $1f
	nop                                              ; $49df: $00
	rlca                                             ; $49e0: $07
	nop                                              ; $49e1: $00
	rlca                                             ; $49e2: $07
	nop                                              ; $49e3: $00
	db   $fd                                         ; $49e4: $fd
	nop                                              ; $49e5: $00
	cp   $00                                         ; $49e6: $fe $00
	ld   [bc], a                                     ; $49e8: $02
	add  e                                           ; $49e9: $83
	nop                                              ; $49ea: $00
	nop                                              ; $49eb: $00
	add  b                                           ; $49ec: $80
	add  l                                           ; $49ed: $85
	nop                                              ; $49ee: $00
	ld   c, $e0                                      ; $49ef: $0e $e0
	add  b                                           ; $49f1: $80
	db   $10                                         ; $49f2: $10
	ldh  [$e8], a                                    ; $49f3: $e0 $e8
	ldh  a, [$e4]                                    ; $49f5: $f0 $e4
	ld   hl, sp-$1d                                  ; $49f7: $f8 $e3
	db   $ec                                         ; $49f9: $ec
	add  sp, -$13                                    ; $49fa: $e8 $ed
	db   $e4                                         ; $49fc: $e4
	push af                                          ; $49fd: $f5
	ldh  a, [$80]                                    ; $49fe: $f0 $80
	ld   hl, sp+$01                                  ; $4a00: $f8 $01
	db   $fd                                         ; $4a02: $fd
	ld   [bc], a                                     ; $4a03: $02
	add  c                                           ; $4a04: $81
	nop                                              ; $4a05: $00
	db   $10                                         ; $4a06: $10
	ret  nz                                          ; $4a07: $c0

	nop                                              ; $4a08: $00
	jr   nc, jr_09c_49cb                             ; $4a09: $30 $c0

	ret  z                                           ; $4a0b: $c8

	ldh  a, [$f4]                                    ; $4a0c: $f0 $f4
	ld   hl, sp+$7a                                  ; $4a0e: $f8 $7a
	db   $fc                                         ; $4a10: $fc
	inc  a                                           ; $4a11: $3c
	ld   e, h                                        ; $4a12: $5c
	db   $dd                                         ; $4a13: $dd
	sbc  $1c                                         ; $4a14: $de $1c
	ld   a, [hl-]                                    ; $4a16: $3a
	jr   c, jr_09c_4999                              ; $4a17: $38 $80

	ld   a, h                                        ; $4a19: $7c
	inc  b                                           ; $4a1a: $04
	ld   a, [hl]                                     ; $4a1b: $7e
	ld   b, d                                        ; $4a1c: $42
	ccf                                              ; $4a1d: $3f
	rra                                              ; $4a1e: $1f
	sbc  h                                           ; $4a1f: $9c
	add  b                                           ; $4a20: $80
	and  c                                           ; $4a21: $a1
	add  b                                           ; $4a22: $80
	and  b                                           ; $4a23: $a0
	ld   [de], a                                     ; $4a24: $12
	and  [hl]                                        ; $4a25: $a6
	jr   nz, jr_09c_4a96                             ; $4a26: $20 $6e

	ld   l, c                                        ; $4a28: $69
	ld   c, c                                        ; $4a29: $49
	ld   c, b                                        ; $4a2a: $48
	jr   nz, jr_09c_4a2d                             ; $4a2b: $20 $00

jr_09c_4a2d:
	rlca                                             ; $4a2d: $07
	nop                                              ; $4a2e: $00
	adc  c                                           ; $4a2f: $89
	nop                                              ; $4a30: $00
	ld   [bc], a                                     ; $4a31: $02
	ld   bc, $0305                                   ; $4a32: $01 $05 $03
	dec  de                                          ; $4a35: $1b
	inc  bc                                          ; $4a36: $03
	ld   [bc], a                                     ; $4a37: $02
	add  c                                           ; $4a38: $81
	inc  bc                                          ; $4a39: $03
	ld   bc, $0301                                   ; $4a3a: $01 $01 $03
	add  b                                           ; $4a3d: $80
	ld   [bc], a                                     ; $4a3e: $02
	add  b                                           ; $4a3f: $80
	ld   b, $00                                      ; $4a40: $06 $00
	inc  b                                           ; $4a42: $04
	add  c                                           ; $4a43: $81
	dec  b                                           ; $4a44: $05
	ld   [$0fbe], sp                                 ; $4a45: $08 $be $0f
	db   $eb                                         ; $4a48: $eb
	dec  bc                                          ; $4a49: $0b
	ld   bc, $0507                                   ; $4a4a: $01 $07 $05
	rrca                                             ; $4a4d: $0f
	inc  bc                                          ; $4a4e: $03
	add  a                                           ; $4a4f: $87
	rrca                                             ; $4a50: $0f
	nop                                              ; $4a51: $00
	rla                                              ; $4a52: $17
	add  a                                           ; $4a53: $87
	rlca                                             ; $4a54: $07
	ld   b, $04                                      ; $4a55: $06 $04
	rlca                                             ; $4a57: $07
	ld   [bc], a                                     ; $4a58: $02
	rlca                                             ; $4a59: $07
	ld   d, d                                        ; $4a5a: $52
	add  b                                           ; $4a5b: $80
	or   h                                           ; $4a5c: $b4
	add  b                                           ; $4a5d: $80
	add  b                                           ; $4a5e: $80
	ld   bc, $c583                                   ; $4a5f: $01 $83 $c5
	add  b                                           ; $4a62: $80
	rst  ToBoot                                         ; $4a63: $c7
	inc  bc                                          ; $4a64: $03
	add  $c5                                         ; $4a65: $c6 $c5
	call nz, $87c8                                   ; $4a67: $c4 $c8 $87
	ret  nz                                          ; $4a6a: $c0

	nop                                              ; $4a6b: $00
	jp   nz, $c085                                   ; $4a6c: $c2 $85 $c0

	inc  de                                          ; $4a6f: $13
	jp   nz, $e9c0                                   ; $4a70: $c2 $c0 $e9

	nop                                              ; $4a73: $00
	db   $10                                         ; $4a74: $10
	ld   b, $26                                      ; $4a75: $06 $26
	add  hl, bc                                      ; $4a77: $09
	ld   h, l                                        ; $4a78: $65
	dec  l                                           ; $4a79: $2d
	ld   sp, $0330                                   ; $4a7a: $31 $30 $03
	rlca                                             ; $4a7d: $07
	ld   b, l                                        ; $4a7e: $45
	ccf                                              ; $4a7f: $3f
	ld   sp, $670f                                   ; $4a80: $31 $0f $67
	daa                                              ; $4a83: $27
	add  b                                           ; $4a84: $80
	ld   l, b                                        ; $4a85: $68
	add  b                                           ; $4a86: $80
	dec  d                                           ; $4a87: $15
	inc  b                                           ; $4a88: $04
	ld   b, e                                        ; $4a89: $43
	inc  bc                                          ; $4a8a: $03
	jr   nc, jr_09c_4a8d                             ; $4a8b: $30 $00

jr_09c_4a8d:
	rrca                                             ; $4a8d: $0f
	add  e                                           ; $4a8e: $83
	nop                                              ; $4a8f: $00
	ld   bc, $01e7                                   ; $4a90: $01 $e7 $01
	add  b                                           ; $4a93: $80
	ld   b, c                                        ; $4a94: $41
	ld   [bc], a                                     ; $4a95: $02

jr_09c_4a96:
	ld   bc, $d3c3                                   ; $4a96: $01 $c3 $d3
	add  b                                           ; $4a99: $80
	and  e                                           ; $4a9a: $a3
	inc  b                                           ; $4a9b: $04
	ld   h, e                                        ; $4a9c: $63
	dec  de                                          ; $4a9d: $1b
	ld   [hl], e                                     ; $4a9e: $73
	sub  e                                           ; $4a9f: $93
	sub  a                                           ; $4aa0: $97
	add  e                                           ; $4aa1: $83
	rst  ToBoot                                         ; $4aa2: $c7
	dec  b                                           ; $4aa3: $05
	adc  $ae                                         ; $4aa4: $ce $ae
	adc  [hl]                                        ; $4aa6: $8e
	ld   c, [hl]                                     ; $4aa7: $4e
	ld   c, $ae                                      ; $4aa8: $0e $ae
	add  e                                           ; $4aaa: $83
	ld   e, $02                                      ; $4aab: $1e $02
	ld   e, [hl]                                     ; $4aad: $5e
	ld   a, $41                                      ; $4aae: $3e $41
	add  e                                           ; $4ab0: $83

jr_09c_4ab1:
	nop                                              ; $4ab1: $00
	nop                                              ; $4ab2: $00
	add  b                                           ; $4ab3: $80
	add  c                                           ; $4ab4: $81
	nop                                              ; $4ab5: $00
	ld   l, $40                                      ; $4ab6: $2e $40
	nop                                              ; $4ab8: $00
	cp   h                                           ; $4ab9: $bc
	add  b                                           ; $4aba: $80
	ld   [hl], e                                     ; $4abb: $73
	ld   a, b                                        ; $4abc: $78
	add  h                                           ; $4abd: $84
	rrca                                             ; $4abe: $0f
	ld   h, l                                        ; $4abf: $65
	rlca                                             ; $4ac0: $07
	sbc  b                                           ; $4ac1: $98
	ld   bc, $00c6                                   ; $4ac2: $01 $c6 $00
	ld   h, c                                        ; $4ac5: $61
	nop                                              ; $4ac6: $00
	jr   nc, jr_09c_4ac9                             ; $4ac7: $30 $00

jr_09c_4ac9:
	jr   jr_09c_4acb                                 ; $4ac9: $18 $00

jr_09c_4acb:
	adc  b                                           ; $4acb: $88
	nop                                              ; $4acc: $00
	ld   h, b                                        ; $4acd: $60
	nop                                              ; $4ace: $00
	jr   jr_09c_4ab1                                 ; $4acf: $18 $e0

	and  $f8                                         ; $4ad1: $e6 $f8
	ld   a, b                                        ; $4ad3: $78
	db   $fc                                         ; $4ad4: $fc
	inc  a                                           ; $4ad5: $3c
	ld   a, h                                        ; $4ad6: $7c
	sbc  h                                           ; $4ad7: $9c
	jr   c, jr_09c_4b1b                              ; $4ad8: $38 $41

	inc  e                                           ; $4ada: $1c
	jr   nz, jr_09c_4ae4                             ; $4adb: $20 $07

	ld   de, $0803                                   ; $4add: $11 $03 $08
	ld   bc, $0004                                   ; $4ae0: $01 $04 $00
	ld   [bc], a                                     ; $4ae3: $02

jr_09c_4ae4:
	nop                                              ; $4ae4: $00
	ld   bc, $0093                                   ; $4ae5: $01 $93 $00
	nop                                              ; $4ae8: $00
	add  b                                           ; $4ae9: $80
	adc  l                                           ; $4aea: $8d
	nop                                              ; $4aeb: $00
	nop                                              ; $4aec: $00
	ret  nz                                          ; $4aed: $c0

	add  c                                           ; $4aee: $81
	add  b                                           ; $4aef: $80
	nop                                              ; $4af0: $00
	ldh  [$81], a                                    ; $4af1: $e0 $81
	ret  nz                                          ; $4af3: $c0

	ld   c, $f0                                      ; $4af4: $0e $f0
	ldh  [$60], a                                    ; $4af6: $e0 $60
	ldh  [$f8], a                                    ; $4af8: $e0 $f8
	ldh  a, [$b0]                                    ; $4afa: $f0 $b0
	ldh  a, [$fc]                                    ; $4afc: $f0 $fc
	ld   hl, sp-$28                                  ; $4afe: $f8 $d8
	ld   hl, sp-$06                                  ; $4b00: $f8 $fa
	ld   hl, sp-$14                                  ; $4b02: $f8 $ec
	add  c                                           ; $4b04: $81
	db   $fc                                         ; $4b05: $fc
	ld   bc, $fcf5                                   ; $4b06: $01 $f5 $fc
	add  h                                           ; $4b09: $84

jr_09c_4b0a:
	cp   $15                                         ; $4b0a: $fe $15
	rst  $20                                         ; $4b0c: $e7
	nop                                              ; $4b0d: $00
	ld   hl, sp+$00                                  ; $4b0e: $f8 $00
	ld   e, $00                                      ; $4b10: $1e $00
	inc  b                                           ; $4b12: $04
	nop                                              ; $4b13: $00
	add  b                                           ; $4b14: $80
	nop                                              ; $4b15: $00
	call nz, $e580                                   ; $4b16: $c4 $80 $e5
	ret  nz                                          ; $4b19: $c0

	ei                                               ; $4b1a: $fb

jr_09c_4b1b:
	ldh  [$f4], a                                    ; $4b1b: $e0 $f4
	ldh  a, [$fa]                                    ; $4b1d: $f0 $fa
	ld   hl, sp-$03                                  ; $4b1f: $f8 $fd
	db   $fc                                         ; $4b21: $fc
	add  b                                           ; $4b22: $80
	cp   $15                                         ; $4b23: $fe $15
	ccf                                              ; $4b25: $3f
	rst  $38                                         ; $4b26: $ff
	ld   e, a                                        ; $4b27: $5f
	rst  $38                                         ; $4b28: $ff
	xor  a                                           ; $4b29: $af
	rst  $38                                         ; $4b2a: $ff
	rst  $30                                         ; $4b2b: $f7
	rst  $38                                         ; $4b2c: $ff
	ld   [hl], l                                     ; $4b2d: $75
	db   $10                                         ; $4b2e: $10
	ld   e, [hl]                                     ; $4b2f: $5e
	jr   c, jr_09c_4b62                              ; $4b30: $38 $30

	ld   [hl], b                                     ; $4b32: $70
	jr   z, @-$5a                                    ; $4b33: $28 $a4

	dec  b                                           ; $4b35: $05
	inc  b                                           ; $4b36: $04
	ld   d, $0e                                      ; $4b37: $16 $0e
	ld   l, $1c                                      ; $4b39: $2e $1c
	add  b                                           ; $4b3b: $80
	dec  e                                           ; $4b3c: $1d
	inc  h                                           ; $4b3d: $24
	ld   c, h                                        ; $4b3e: $4c
	jr   z, jr_09c_4b0a                              ; $4b3f: $28 $c9

	ld   bc, $0595                                   ; $4b41: $01 $95 $05
	inc  [hl]                                        ; $4b44: $34
	rlca                                             ; $4b45: $07
	ld   h, e                                        ; $4b46: $63
	rlca                                             ; $4b47: $07
	add  l                                           ; $4b48: $85
	ld   b, $44                                      ; $4b49: $06 $44
	rlca                                             ; $4b4b: $07
	add  a                                           ; $4b4c: $87
	rlca                                             ; $4b4d: $07
	ld   [hl], a                                     ; $4b4e: $77
	nop                                              ; $4b4f: $00
	and  [hl]                                        ; $4b50: $a6
	ld   a, $3a                                      ; $4b51: $3e $3a
	ld   a, $1c                                      ; $4b53: $3e $1c
	ld   a, $bf                                      ; $4b55: $3e $bf
	cp   l                                           ; $4b57: $bd
	cp   h                                           ; $4b58: $bc
	cp   l                                           ; $4b59: $bd
	dec  a                                           ; $4b5a: $3d
	dec  sp                                          ; $4b5b: $3b
	sbc  c                                           ; $4b5c: $99
	cp   [hl]                                        ; $4b5d: $be

jr_09c_4b5e:
	inc  e                                           ; $4b5e: $1c
	ld   a, a                                        ; $4b5f: $7f
	ld   a, [hl]                                     ; $4b60: $7e
	ccf                                              ; $4b61: $3f

jr_09c_4b62:
	ld   a, $80                                      ; $4b62: $3e $80
	cp   [hl]                                        ; $4b64: $be
	nop                                              ; $4b65: $00
	ccf                                              ; $4b66: $3f
	add  b                                           ; $4b67: $80
	ld   a, a                                        ; $4b68: $7f
	add  b                                           ; $4b69: $80
	cp   a                                           ; $4b6a: $bf
	inc  c                                           ; $4b6b: $0c
	ccf                                              ; $4b6c: $3f
	rst  $38                                         ; $4b6d: $ff
	cp   a                                           ; $4b6e: $bf
	rst  JumpTable                                         ; $4b6f: $df
	ld   b, b                                        ; $4b70: $40
	nop                                              ; $4b71: $00
	jr   nc, jr_09c_4b74                             ; $4b72: $30 $00

jr_09c_4b74:
	add  b                                           ; $4b74: $80
	nop                                              ; $4b75: $00
	ret  c                                           ; $4b76: $d8

	add  b                                           ; $4b77: $80
	adc  h                                           ; $4b78: $8c
	add  c                                           ; $4b79: $81
	add  b                                           ; $4b7a: $80
	ld   [$0026], sp                                 ; $4b7b: $08 $26 $00
	db   $d3                                         ; $4b7e: $d3
	ret  nz                                          ; $4b7f: $c0

	add  c                                           ; $4b80: $81
	add  b                                           ; $4b81: $80
	ld   [$1400], sp                                 ; $4b82: $08 $00 $14
	add  b                                           ; $4b85: $80
	ret  nc                                          ; $4b86: $d0

	ld   e, $98                                      ; $4b87: $1e $98
	sbc  $dc                                         ; $4b89: $de $dc
	xor  a                                           ; $4b8b: $af
	and  [hl]                                        ; $4b8c: $a6
	cp   [hl]                                        ; $4b8d: $be
	cp   $cd                                         ; $4b8e: $fe $cd
	db   $fd                                         ; $4b90: $fd
	ret  nz                                          ; $4b91: $c0

	rst  $38                                         ; $4b92: $ff
	jp   $f9cd                                       ; $4b93: $c3 $cd $f9


	db   $fd                                         ; $4b96: $fd
	push bc                                          ; $4b97: $c5
	db   $ed                                         ; $4b98: $ed
	ld   h, e                                        ; $4b99: $63
	rst  $28                                         ; $4b9a: $ef
	ld   hl, $9372                                   ; $4b9b: $21 $72 $93
	cp   h                                           ; $4b9e: $bc
	rst  JumpTable                                         ; $4b9f: $df
	pop  bc                                          ; $4ba0: $c1
	ld   d, a                                        ; $4ba1: $57
	ld   d, e                                        ; $4ba2: $53
	adc  e                                           ; $4ba3: $8b
	inc  bc                                          ; $4ba4: $03
	ld   h, e                                        ; $4ba5: $63
	inc  bc                                          ; $4ba6: $03
	add  b                                           ; $4ba7: $80
	ld   bc, $1800                                   ; $4ba8: $01 $00 $18
	add  c                                           ; $4bab: $81
	nop                                              ; $4bac: $00
	nop                                              ; $4bad: $00
	ld   [$0081], sp                                 ; $4bae: $08 $81 $00
	dec  c                                           ; $4bb1: $0d
	or   d                                           ; $4bb2: $b2
	db   $10                                         ; $4bb3: $10
	ld   e, [hl]                                     ; $4bb4: $5e
	jr   c, jr_09c_4be7                              ; $4bb5: $38 $30

	ld   [hl], b                                     ; $4bb7: $70
	jr   z, jr_09c_4b5e                              ; $4bb8: $28 $a4

	dec  b                                           ; $4bba: $05
	inc  b                                           ; $4bbb: $04
	ld   d, $0e                                      ; $4bbc: $16 $0e
	ld   l, $1c                                      ; $4bbe: $2e $1c
	add  b                                           ; $4bc0: $80
	dec  e                                           ; $4bc1: $1d
	inc  hl                                          ; $4bc2: $23
	ld   c, l                                        ; $4bc3: $4d
	add  hl, hl                                      ; $4bc4: $29
	jp   z, $9402                                    ; $4bc5: $ca $02 $94

	inc  b                                           ; $4bc8: $04
	inc  [hl]                                        ; $4bc9: $34
	dec  b                                           ; $4bca: $05
	ld   h, c                                        ; $4bcb: $61
	rlca                                             ; $4bcc: $07
	add  l                                           ; $4bcd: $85
	ld   b, $44                                      ; $4bce: $06 $44
	rlca                                             ; $4bd0: $07
	add  a                                           ; $4bd1: $87
	rlca                                             ; $4bd2: $07
	ld   [hl], a                                     ; $4bd3: $77
	nop                                              ; $4bd4: $00
	and  [hl]                                        ; $4bd5: $a6
	ld   a, $3a                                      ; $4bd6: $3e $3a
	ld   a, $1c                                      ; $4bd8: $3e $1c
	ld   a, $bf                                      ; $4bda: $3e $bf
	cp   l                                           ; $4bdc: $bd
	cp   h                                           ; $4bdd: $bc
	cp   l                                           ; $4bde: $bd
	dec  a                                           ; $4bdf: $3d

jr_09c_4be0:
	dec  sp                                          ; $4be0: $3b
	sbc  c                                           ; $4be1: $99
	cp   [hl]                                        ; $4be2: $be
	sbc  h                                           ; $4be3: $9c
	rst  $38                                         ; $4be4: $ff
	ld   a, [hl]                                     ; $4be5: $7e
	ccf                                              ; $4be6: $3f

jr_09c_4be7:
	add  d                                           ; $4be7: $82
	ld   a, $01                                      ; $4be8: $3e $01
	ld   a, [hl]                                     ; $4bea: $7e
	ld   a, a                                        ; $4beb: $7f
	add  b                                           ; $4bec: $80
	cp   a                                           ; $4bed: $bf
	inc  c                                           ; $4bee: $0c
	ccf                                              ; $4bef: $3f
	rst  $38                                         ; $4bf0: $ff
	cp   a                                           ; $4bf1: $bf
	rst  JumpTable                                         ; $4bf2: $df
	ld   b, b                                        ; $4bf3: $40
	nop                                              ; $4bf4: $00
	jr   nc, jr_09c_4bf7                             ; $4bf5: $30 $00

jr_09c_4bf7:
	add  b                                           ; $4bf7: $80
	nop                                              ; $4bf8: $00
	ret  c                                           ; $4bf9: $d8

	add  b                                           ; $4bfa: $80
	adc  h                                           ; $4bfb: $8c
	add  c                                           ; $4bfc: $81
	add  b                                           ; $4bfd: $80
	jr   jr_09c_4c26                                 ; $4bfe: $18 $26

	nop                                              ; $4c00: $00
	db   $d3                                         ; $4c01: $d3
	ret  nz                                          ; $4c02: $c0

	pop  hl                                          ; $4c03: $e1
	ldh  [$08], a                                    ; $4c04: $e0 $08
	nop                                              ; $4c06: $00
	inc  b                                           ; $4c07: $04
	nop                                              ; $4c08: $00
	db   $10                                         ; $4c09: $10
	sbc  b                                           ; $4c0a: $98
	sbc  $dc                                         ; $4c0b: $de $dc
	xor  a                                           ; $4c0d: $af
	and  [hl]                                        ; $4c0e: $a6
	cp   [hl]                                        ; $4c0f: $be
	cp   $cd                                         ; $4c10: $fe $cd
	db   $fd                                         ; $4c12: $fd
	ret  nz                                          ; $4c13: $c0

	rst  $38                                         ; $4c14: $ff
	rst  $10                                         ; $4c15: $d7
	reti                                             ; $4c16: $d9


	pop  bc                                          ; $4c17: $c1
	add  c                                           ; $4c18: $81
	rst  $38                                         ; $4c19: $ff
	dec  c                                           ; $4c1a: $0d
	ld   a, a                                        ; $4c1b: $7f
	rst  $38                                         ; $4c1c: $ff
	ccf                                              ; $4c1d: $3f
	ld   a, [hl]                                     ; $4c1e: $7e
	sbc  a                                           ; $4c1f: $9f
	cp   h                                           ; $4c20: $bc
	rst  JumpTable                                         ; $4c21: $df
	pop  bc                                          ; $4c22: $c1
	ld   d, a                                        ; $4c23: $57
	ld   d, e                                        ; $4c24: $53
	adc  e                                           ; $4c25: $8b

jr_09c_4c26:
	inc  bc                                          ; $4c26: $03
	ld   h, e                                        ; $4c27: $63
	inc  bc                                          ; $4c28: $03
	add  b                                           ; $4c29: $80
	ld   bc, $1800                                   ; $4c2a: $01 $00 $18
	add  c                                           ; $4c2d: $81
	nop                                              ; $4c2e: $00
	nop                                              ; $4c2f: $00
	ld   [$0081], sp                                 ; $4c30: $08 $81 $00
	dec  c                                           ; $4c33: $0d
	or   d                                           ; $4c34: $b2
	db   $10                                         ; $4c35: $10
	ld   e, [hl]                                     ; $4c36: $5e
	jr   c, jr_09c_4c69                              ; $4c37: $38 $30

	ld   [hl], b                                     ; $4c39: $70
	jr   z, jr_09c_4be0                              ; $4c3a: $28 $a4

	dec  b                                           ; $4c3c: $05
	inc  b                                           ; $4c3d: $04
	ld   d, $0e                                      ; $4c3e: $16 $0e
	ld   l, $1c                                      ; $4c40: $2e $1c
	add  b                                           ; $4c42: $80
	dec  e                                           ; $4c43: $1d
	inc  h                                           ; $4c44: $24
	ld   c, l                                        ; $4c45: $4d
	add  hl, hl                                      ; $4c46: $29
	jp   z, $9503                                    ; $4c47: $ca $03 $95

	rlca                                             ; $4c4a: $07
	scf                                              ; $4c4b: $37
	dec  b                                           ; $4c4c: $05
	ld   h, c                                        ; $4c4d: $61
	inc  b                                           ; $4c4e: $04
	add  [hl]                                        ; $4c4f: $86
	ld   b, $44                                      ; $4c50: $06 $44
	rlca                                             ; $4c52: $07
	add  a                                           ; $4c53: $87
	rlca                                             ; $4c54: $07
	ld   [hl], a                                     ; $4c55: $77
	nop                                              ; $4c56: $00
	and  [hl]                                        ; $4c57: $a6
	ld   a, $3a                                      ; $4c58: $3e $3a
	ld   a, $1c                                      ; $4c5a: $3e $1c
	ld   a, $bf                                      ; $4c5c: $3e $bf
	cp   l                                           ; $4c5e: $bd
	cp   h                                           ; $4c5f: $bc
	cp   l                                           ; $4c60: $bd
	dec  a                                           ; $4c61: $3d
	dec  sp                                          ; $4c62: $3b
	sbc  c                                           ; $4c63: $99
	cp   [hl]                                        ; $4c64: $be
	sbc  h                                           ; $4c65: $9c
	rst  $38                                         ; $4c66: $ff
	ld   a, [hl]                                     ; $4c67: $7e
	rst  $38                                         ; $4c68: $ff

jr_09c_4c69:
	cp   $81                                         ; $4c69: $fe $81
	rst  $38                                         ; $4c6b: $ff
	ld   [bc], a                                     ; $4c6c: $02
	cp   a                                           ; $4c6d: $bf
	ld   a, [hl]                                     ; $4c6e: $7e
	ld   a, $80                                      ; $4c6f: $3e $80
	ccf                                              ; $4c71: $3f
	dec  bc                                          ; $4c72: $0b
	rst  $38                                         ; $4c73: $ff
	cp   a                                           ; $4c74: $bf
	rst  JumpTable                                         ; $4c75: $df
	ld   b, b                                        ; $4c76: $40
	nop                                              ; $4c77: $00
	jr   nc, jr_09c_4c7a                             ; $4c78: $30 $00

jr_09c_4c7a:
	add  b                                           ; $4c7a: $80
	nop                                              ; $4c7b: $00
	ret  c                                           ; $4c7c: $d8

	add  b                                           ; $4c7d: $80
	adc  h                                           ; $4c7e: $8c
	add  c                                           ; $4c7f: $81
	add  b                                           ; $4c80: $80
	inc  d                                           ; $4c81: $14
	ld   h, $00                                      ; $4c82: $26 $00
	db   $d3                                         ; $4c84: $d3
	ret  nz                                          ; $4c85: $c0

	pop  hl                                          ; $4c86: $e1
	ldh  [$28], a                                    ; $4c87: $e0 $28
	ldh  [$d4], a                                    ; $4c89: $e0 $d4
	ldh  a, [$e8]                                    ; $4c8b: $f0 $e8
	ld   hl, sp-$0a                                  ; $4c8d: $f8 $f6
	inc  b                                           ; $4c8f: $04
	rrca                                             ; $4c90: $0f
	ld   c, $3e                                      ; $4c91: $0e $3e
	cp   $cd                                         ; $4c93: $fe $cd
	db   $fd                                         ; $4c95: $fd
	rrca                                             ; $4c96: $0f
	adc  c                                           ; $4c97: $89
	nop                                              ; $4c98: $00
	nop                                              ; $4c99: $00
	inc  bc                                          ; $4c9a: $03
	add  c                                           ; $4c9b: $81
	ld   bc, $0200                                   ; $4c9c: $01 $00 $02
	rst  $38                                         ; $4c9f: $ff
	nop                                              ; $4ca0: $00

jr_09c_4ca1:
	rst  $38                                         ; $4ca1: $ff
	nop                                              ; $4ca2: $00
	rst  $38                                         ; $4ca3: $ff
	nop                                              ; $4ca4: $00
	rst  $38                                         ; $4ca5: $ff
	nop                                              ; $4ca6: $00
	rst  $38                                         ; $4ca7: $ff
	nop                                              ; $4ca8: $00
	rst  $38                                         ; $4ca9: $ff
	nop                                              ; $4caa: $00
	rst  $38                                         ; $4cab: $ff
	nop                                              ; $4cac: $00
	add  [hl]                                        ; $4cad: $86
	nop                                              ; $4cae: $00
	jr   nz, jr_09c_4cb2                             ; $4caf: $20 $01

	adc  h                                           ; $4cb1: $8c

jr_09c_4cb2:
	nop                                              ; $4cb2: $00
	ld   [de], a                                     ; $4cb3: $12
	ld   e, $00                                      ; $4cb4: $1e $00
	ld   [hl], c                                     ; $4cb6: $71
	ld   e, $f2                                      ; $4cb7: $1e $f2
	ld   a, a                                        ; $4cb9: $7f
	nop                                              ; $4cba: $00
	inc  bc                                          ; $4cbb: $03
	ld   bc, $e6f9                                   ; $4cbc: $01 $f9 $e6
	rst  $38                                         ; $4cbf: $ff
	add  [hl]                                        ; $4cc0: $86
	rst  $20                                         ; $4cc1: $e7
	rlca                                             ; $4cc2: $07
	sbc  a                                           ; $4cc3: $9f
	ld   h, e                                        ; $4cc4: $63
	ld   a, a                                        ; $4cc5: $7f
	ei                                               ; $4cc6: $fb
	add  a                                           ; $4cc7: $87
	nop                                              ; $4cc8: $00
	inc  c                                           ; $4cc9: $0c
	rlca                                             ; $4cca: $07
	nop                                              ; $4ccb: $00
	rra                                              ; $4ccc: $1f
	rlca                                             ; $4ccd: $07
	jr   nc, jr_09c_4cee                             ; $4cce: $30 $1e

	ldh  a, [c]                                      ; $4cd0: $f2
	inc  b                                           ; $4cd1: $04
	ld   b, e                                        ; $4cd2: $43
	ld   a, [bc]                                     ; $4cd3: $0a
	ld   c, $20                                      ; $4cd4: $0e $20
	and  b                                           ; $4cd6: $a0
	add  b                                           ; $4cd7: $80
	ld   b, b                                        ; $4cd8: $40
	add  b                                           ; $4cd9: $80
	ret  nz                                          ; $4cda: $c0

	add  b                                           ; $4cdb: $80
	db   $fc                                         ; $4cdc: $fc
	add  b                                           ; $4cdd: $80
	ldh  [$80], a                                    ; $4cde: $e0 $80
	ret  nz                                          ; $4ce0: $c0

	add  a                                           ; $4ce1: $87
	nop                                              ; $4ce2: $00
	ld   a, [bc]                                     ; $4ce3: $0a
	ldh  [rP1], a                                    ; $4ce4: $e0 $00
	ld   hl, sp-$20                                  ; $4ce6: $f8 $e0
	inc  b                                           ; $4ce8: $04
	nop                                              ; $4ce9: $00
	inc  bc                                          ; $4cea: $03
	nop                                              ; $4ceb: $00
	cp   $02                                         ; $4cec: $fe $02

jr_09c_4cee:
	inc  bc                                          ; $4cee: $03
	add  d                                           ; $4cef: $82

jr_09c_4cf0:
	nop                                              ; $4cf0: $00
	add  b                                           ; $4cf1: $80
	inc  bc                                          ; $4cf2: $03
	add  b                                           ; $4cf3: $80
	nop                                              ; $4cf4: $00
	add  b                                           ; $4cf5: $80
	ld   bc, $0081                                   ; $4cf6: $01 $81 $00
	ld   c, $c0                                      ; $4cf9: $0e $c0
	nop                                              ; $4cfb: $00
	ldh  a, [$c0]                                    ; $4cfc: $f0 $c0
	jr   jr_09c_4cf0                                 ; $4cfe: $18 $f0

	inc  e                                           ; $4d00: $1c
	ld   hl, sp+$3e                                  ; $4d01: $f8 $3e
	db   $fc                                         ; $4d03: $fc
	dec  bc                                          ; $4d04: $0b
	ld   a, [$fc0c]                                  ; $4d05: $fa $0c $fc
	ccf                                              ; $4d08: $3f
	add  b                                           ; $4d09: $80
	rra                                              ; $4d0a: $1f
	rrca                                             ; $4d0b: $0f
	rst  $20                                         ; $4d0c: $e7
	and  $f8                                         ; $4d0d: $e6 $f8
	add  hl, sp                                      ; $4d0f: $39
	inc  a                                           ; $4d10: $3c
	call c, $6c5e                                    ; $4d11: $dc $5e $6c
	dec  c                                           ; $4d14: $0d
	ld   d, $06                                      ; $4d15: $16 $06
	dec  bc                                          ; $4d17: $0b
	jp   $0047                                       ; $4d18: $c3 $47 $00


	ret  nz                                          ; $4d1b: $c0

	add  c                                           ; $4d1c: $81
	add  b                                           ; $4d1d: $80
	nop                                              ; $4d1e: $00
	jr   nz, jr_09c_4ca1                             ; $4d1f: $20 $80

	nop                                              ; $4d21: $00
	nop                                              ; $4d22: $00
	add  b                                           ; $4d23: $80
	add  b                                           ; $4d24: $80
	ret  nz                                          ; $4d25: $c0

	dec  b                                           ; $4d26: $05
	nop                                              ; $4d27: $00
	ret  nz                                          ; $4d28: $c0

	ld   [hl], b                                     ; $4d29: $70
	ld   h, b                                        ; $4d2a: $60
	nop                                              ; $4d2b: $00
	ld   h, b                                        ; $4d2c: $60
	add  d                                           ; $4d2d: $82
	and  b                                           ; $4d2e: $a0
	nop                                              ; $4d2f: $00
	nop                                              ; $4d30: $00
	add  l                                           ; $4d31: $85
	jr   nz, jr_09c_4d34                             ; $4d32: $20 $00

jr_09c_4d34:
	sub  b                                           ; $4d34: $90
	add  c                                           ; $4d35: $81
	add  b                                           ; $4d36: $80
	nop                                              ; $4d37: $00
	and  b                                           ; $4d38: $a0
	add  c                                           ; $4d39: $81
	add  b                                           ; $4d3a: $80
	nop                                              ; $4d3b: $00
	ld   b, b                                        ; $4d3c: $40
	add  c                                           ; $4d3d: $81
	nop                                              ; $4d3e: $00
	nop                                              ; $4d3f: $00
	add  b                                           ; $4d40: $80
	add  a                                           ; $4d41: $87
	nop                                              ; $4d42: $00
	rlca                                             ; $4d43: $07
	add  b                                           ; $4d44: $80
	nop                                              ; $4d45: $00
	ld   a, b                                        ; $4d46: $78
	add  b                                           ; $4d47: $80
	add  [hl]                                        ; $4d48: $86
	ret  nc                                          ; $4d49: $d0

	pop  de                                          ; $4d4a: $d1
	ret  c                                           ; $4d4b: $d8

	add  d                                           ; $4d4c: $82
	call c, $2700                                    ; $4d4d: $dc $00 $27
	adc  c                                           ; $4d50: $89
	nop                                              ; $4d51: $00
	ld   c, $80                                      ; $4d52: $0e $80
	nop                                              ; $4d54: $00
	ld   b, b                                        ; $4d55: $40
	nop                                              ; $4d56: $00
	jr   nz, jr_09c_4d59                             ; $4d57: $20 $00

jr_09c_4d59:
	stop                                             ; $4d59: $10 $00
	ld   [$0c00], sp                                 ; $4d5b: $08 $00 $0c
	nop                                              ; $4d5e: $00
	ld   [bc], a                                     ; $4d5f: $02
	nop                                              ; $4d60: $00
	ld   bc, $0280                                   ; $4d61: $01 $80 $02
	add  c                                           ; $4d64: $81
	inc  bc                                          ; $4d65: $03
	nop                                              ; $4d66: $00
	db   $f4                                         ; $4d67: $f4
	adc  c                                           ; $4d68: $89
	nop                                              ; $4d69: $00
	inc  c                                           ; $4d6a: $0c
	add  b                                           ; $4d6b: $80
	nop                                              ; $4d6c: $00
	ld   h, b                                        ; $4d6d: $60
	add  b                                           ; $4d6e: $80
	sub  b                                           ; $4d6f: $90
	ldh  [$e8], a                                    ; $4d70: $e0 $e8
	ldh  a, [$f4]                                    ; $4d72: $f0 $f4
	ld   hl, sp-$06                                  ; $4d74: $f8 $fa
	db   $fc                                         ; $4d76: $fc
	db   $fd                                         ; $4d77: $fd
	add  b                                           ; $4d78: $80
	cp   $83                                         ; $4d79: $fe $83
	rst  $38                                         ; $4d7b: $ff
	sub  [hl]                                        ; $4d7c: $96
	nop                                              ; $4d7d: $00
	ld   [$0080], sp                                 ; $4d7e: $08 $80 $00
	ld   b, b                                        ; $4d81: $40
	add  b                                           ; $4d82: $80
	and  b                                           ; $4d83: $a0
	ret  nz                                          ; $4d84: $c0

	ret  nc                                          ; $4d85: $d0

	ldh  [$e8], a                                    ; $4d86: $e0 $e8
	add  c                                           ; $4d88: $81
	ldh  a, [rP1]                                    ; $4d89: $f0 $00
	db   $f4                                         ; $4d8b: $f4
	add  c                                           ; $4d8c: $81
	ld   hl, sp+$00                                  ; $4d8d: $f8 $00
	ld   a, [$fc8c]                                  ; $4d8f: $fa $8c $fc
	add  hl, bc                                      ; $4d92: $09
	ld   a, b                                        ; $4d93: $78
	ld   a, d                                        ; $4d94: $7a
	nop                                              ; $4d95: $00
	inc  c                                           ; $4d96: $0c
	nop                                              ; $4d97: $00
	ld   [hl], b                                     ; $4d98: $70
	nop                                              ; $4d99: $00
	add  b                                           ; $4d9a: $80
	nop                                              ; $4d9b: $00
	rst  $38                                         ; $4d9c: $ff
	add  d                                           ; $4d9d: $82
	ld   a, a                                        ; $4d9e: $7f
	add  [hl]                                        ; $4d9f: $86
	rst  $38                                         ; $4da0: $ff
	add  b                                           ; $4da1: $80
	ccf                                              ; $4da2: $3f
	add  b                                           ; $4da3: $80
	rrca                                             ; $4da4: $0f
	add  b                                           ; $4da5: $80
	rlca                                             ; $4da6: $07
	add  b                                           ; $4da7: $80
	ld   bc, $0080                                   ; $4da8: $01 $80 $00
	add  b                                           ; $4dab: $80
	add  b                                           ; $4dac: $80
	add  e                                           ; $4dad: $83
	nop                                              ; $4dae: $00
	ld   [bc], a                                     ; $4daf: $02
	inc  bc                                          ; $4db0: $03
	nop                                              ; $4db1: $00
	db   $fc                                         ; $4db2: $fc
	adc  l                                           ; $4db3: $8d
	nop                                              ; $4db4: $00
	nop                                              ; $4db5: $00
	ld   bc, $008d                                   ; $4db6: $01 $8d $00
	jr   nz, jr_09c_4dbc                             ; $4db9: $20 $01

	nop                                              ; $4dbb: $00

jr_09c_4dbc:
	ld   bc, $0200                                   ; $4dbc: $01 $00 $02
	nop                                              ; $4dbf: $00
	ld   c, $03                                      ; $4dc0: $0e $03
	add  hl, sp                                      ; $4dc2: $39
	rrca                                             ; $4dc3: $0f
	ld   h, a                                        ; $4dc4: $67
	ccf                                              ; $4dc5: $3f
	call c, $0d7f                                    ; $4dc6: $dc $7f $0d
	ld   a, c                                        ; $4dc9: $79
	cp   [hl]                                        ; $4dca: $be
	ldh  [c], a                                      ; $4dcb: $e2
	ld   a, [$f4c6]                                  ; $4dcc: $fa $c6 $f4
	call z, $c8c9                                    ; $4dcf: $cc $c9 $c8
	and  b                                           ; $4dd2: $a0
	sub  b                                           ; $4dd3: $90
	add  h                                           ; $4dd4: $84
	add  b                                           ; $4dd5: $80
	ld   l, b                                        ; $4dd6: $68
	nop                                              ; $4dd7: $00
	inc  de                                          ; $4dd8: $13
	ld   d, b                                        ; $4dd9: $50
	ldh  a, [$87]                                    ; $4dda: $f0 $87
	nop                                              ; $4ddc: $00
	nop                                              ; $4ddd: $00
	inc  bc                                          ; $4dde: $03
	add  l                                           ; $4ddf: $85
	ld   bc, $0200                                   ; $4de0: $01 $00 $02
	add  e                                           ; $4de3: $83
	nop                                              ; $4de4: $00
	nop                                              ; $4de5: $00
	ld   bc, $0085                                   ; $4de6: $01 $85 $00
	ld   bc, $dd22                                   ; $4de9: $01 $22 $dd
	add  b                                           ; $4dec: $80
	sbc  d                                           ; $4ded: $9a
	add  b                                           ; $4dee: $80
	cp   d                                           ; $4def: $ba
	add  b                                           ; $4df0: $80
	or   l                                           ; $4df1: $b5
	add  b                                           ; $4df2: $80
	dec  [hl]                                        ; $4df3: $35
	add  b                                           ; $4df4: $80
	inc  l                                           ; $4df5: $2c
	nop                                              ; $4df6: $00
	xor  b                                           ; $4df7: $a8
	add  c                                           ; $4df8: $81
	dec  hl                                          ; $4df9: $2b
	nop                                              ; $4dfa: $00
	ld   b, e                                        ; $4dfb: $43
	add  c                                           ; $4dfc: $81
	ld   b, $08                                      ; $4dfd: $06 $08
	ld   h, $02                                      ; $4dff: $26 $02
	ld   [de], a                                     ; $4e01: $12
	inc  bc                                          ; $4e02: $03
	dec  bc                                          ; $4e03: $0b
	ld   bc, $0005                                   ; $4e04: $01 $05 $00
	ld   [bc], a                                     ; $4e07: $02
	add  c                                           ; $4e08: $81
	nop                                              ; $4e09: $00
	nop                                              ; $4e0a: $00
	ld   bc, $0081                                   ; $4e0b: $01 $81 $00
	ld   [$0008], sp                                 ; $4e0e: $08 $08 $00
	ld   bc, $0f00                                   ; $4e11: $01 $00 $0f
	ld   bc, $0004                                   ; $4e14: $01 $04 $00
	inc  bc                                          ; $4e17: $03
	add  c                                           ; $4e18: $81
	nop                                              ; $4e19: $00
	nop                                              ; $4e1a: $00
	ld   bc, $0081                                   ; $4e1b: $01 $81 $00
	db   $10                                         ; $4e1e: $10
	ld   [bc], a                                     ; $4e1f: $02
	nop                                              ; $4e20: $00
	inc  b                                           ; $4e21: $04
	nop                                              ; $4e22: $00
	ld   [$1000], sp                                 ; $4e23: $08 $00 $10
	nop                                              ; $4e26: $00
	ld   h, b                                        ; $4e27: $60
	rrca                                             ; $4e28: $0f
	adc  a                                           ; $4e29: $8f
	ld   a, a                                        ; $4e2a: $7f
	add  c                                           ; $4e2b: $81
	nop                                              ; $4e2c: $00
	ld   [bc], a                                     ; $4e2d: $02
	ld   bc, $8105                                   ; $4e2e: $01 $05 $81
	inc  bc                                          ; $4e31: $03
	nop                                              ; $4e32: $00
	dec  bc                                          ; $4e33: $0b
	add  c                                           ; $4e34: $81
	nop                                              ; $4e35: $00
	nop                                              ; $4e36: $00
	db   $10                                         ; $4e37: $10
	adc  a                                           ; $4e38: $8f
	nop                                              ; $4e39: $00
	inc  de                                          ; $4e3a: $13
	jr   nz, jr_09c_4e3d                             ; $4e3b: $20 $00

jr_09c_4e3d:
	xor  a                                           ; $4e3d: $af
	nop                                              ; $4e3e: $00
	ld   hl, $6100                                   ; $4e3f: $21 $00 $61
	nop                                              ; $4e42: $00
	ld   h, b                                        ; $4e43: $60
	nop                                              ; $4e44: $00
	ld   a, $00                                      ; $4e45: $3e $00
	ld   c, a                                        ; $4e47: $4f
	nop                                              ; $4e48: $00
	ld   [hl], c                                     ; $4e49: $71
	ld   b, b                                        ; $4e4a: $40
	ld   a, [hl]                                     ; $4e4b: $7e
	ld   [hl], b                                     ; $4e4c: $70
	ccf                                              ; $4e4d: $3f
	ld   a, $80                                      ; $4e4e: $3e $80
	rlca                                             ; $4e50: $07
	add  b                                           ; $4e51: $80
	ld   bc, $0084                                   ; $4e52: $01 $84 $00
	rlca                                             ; $4e55: $07
	ret  nz                                          ; $4e56: $c0

	nop                                              ; $4e57: $00
	jr   c, jr_09c_4e5a                              ; $4e58: $38 $00

jr_09c_4e5a:
	rst  ToBoot                                         ; $4e5a: $c7
	nop                                              ; $4e5b: $00
	rst  $38                                         ; $4e5c: $ff
	ret  nz                                          ; $4e5d: $c0

	add  d                                           ; $4e5e: $82
	rst  $38                                         ; $4e5f: $ff
	add  b                                           ; $4e60: $80
	rrca                                             ; $4e61: $0f
	ld   a, [de]                                     ; $4e62: $1a
	stop                                             ; $4e63: $10 $00
	dec  d                                           ; $4e65: $15
	nop                                              ; $4e66: $00
	inc  bc                                          ; $4e67: $03
	nop                                              ; $4e68: $00
	ld   b, $00                                      ; $4e69: $06 $00
	add  b                                           ; $4e6b: $80
	nop                                              ; $4e6c: $00
	ld   b, b                                        ; $4e6d: $40
	nop                                              ; $4e6e: $00
	jr   nz, jr_09c_4e71                             ; $4e6f: $20 $00

jr_09c_4e71:
	stop                                             ; $4e71: $10 $00
	ld   [$0400], sp                                 ; $4e73: $08 $00 $04
	nop                                              ; $4e76: $00
	ld   [bc], a                                     ; $4e77: $02
	nop                                              ; $4e78: $00
	adc  $00                                         ; $4e79: $ce $00
	cp   b                                           ; $4e7b: $b8
	ld   [$8088], sp                                 ; $4e7c: $08 $88 $80
	ld   l, b                                        ; $4e7f: $68
	inc  de                                          ; $4e80: $13
	ld   c, b                                        ; $4e81: $48
	ld   b, h                                        ; $4e82: $44
	ld   b, b                                        ; $4e83: $40
	ld   c, d                                        ; $4e84: $4a
	ld   h, b                                        ; $4e85: $60
	ld   hl, sp+$00                                  ; $4e86: $f8 $00
	inc  l                                           ; $4e88: $2c
	nop                                              ; $4e89: $00
	ld   h, b                                        ; $4e8a: $60
	nop                                              ; $4e8b: $00
	ld   [hl], $00                                   ; $4e8c: $36 $00
	add  c                                           ; $4e8e: $81
	nop                                              ; $4e8f: $00
	ld   b, b                                        ; $4e90: $40
	nop                                              ; $4e91: $00
	jr   nz, jr_09c_4e94                             ; $4e92: $20 $00

jr_09c_4e94:
	dec  bc                                          ; $4e94: $0b
	add  e                                           ; $4e95: $83
	nop                                              ; $4e96: $00
	ld   b, $cc                                      ; $4e97: $06 $cc
	jr   z, jr_09c_4efb                              ; $4e99: $28 $60

	inc  b                                           ; $4e9b: $04
	ld   b, l                                        ; $4e9c: $45
	inc  c                                           ; $4e9d: $0c
	ld   c, h                                        ; $4e9e: $4c
	add  c                                           ; $4e9f: $81
	ld   e, h                                        ; $4ea0: $5c
	ld   bc, $3e5e                                   ; $4ea1: $01 $5e $3e
	add  b                                           ; $4ea4: $80
	cp   [hl]                                        ; $4ea5: $be
	nop                                              ; $4ea6: $00
	cp   a                                           ; $4ea7: $bf
	add  b                                           ; $4ea8: $80
	ld   a, a                                        ; $4ea9: $7f
	dec  b                                           ; $4eaa: $05
	ccf                                              ; $4eab: $3f
	rst  $38                                         ; $4eac: $ff
	rrca                                             ; $4ead: $0f
	ccf                                              ; $4eae: $3f
	rlca                                             ; $4eaf: $07
	rrca                                             ; $4eb0: $0f
	add  b                                           ; $4eb1: $80
	inc  bc                                          ; $4eb2: $03
	ld   bc, $0301                                   ; $4eb3: $01 $01 $03
	add  c                                           ; $4eb6: $81
	ld   [bc], a                                     ; $4eb7: $02
	ld   [$05fd], sp                                 ; $4eb8: $08 $fd $05
	inc  bc                                          ; $4ebb: $03
	ld   [$080a], sp                                 ; $4ebc: $08 $0a $08
	dec  bc                                          ; $4ebf: $0b
	ld   [$8709], sp                                 ; $4ec0: $08 $09 $87
	ld   [$0a00], sp                                 ; $4ec3: $08 $00 $0a
	add  c                                           ; $4ec6: $81
	stop                                             ; $4ec7: $10 $00
	ld   de, $1080                                   ; $4ec9: $11 $80 $10
	ld   de, $2820                                   ; $4ecc: $11 $20 $28
	jr   nz, jr_09c_4f05                             ; $4ecf: $20 $34

	ld   b, b                                        ; $4ed1: $40
	ld   b, d                                        ; $4ed2: $42
	ld   b, b                                        ; $4ed3: $40
	ld   d, c                                        ; $4ed4: $51
	ld   b, b                                        ; $4ed5: $40
	ld   c, a                                        ; $4ed6: $4f
	cp   $ff                                         ; $4ed7: $fe $ff
	db   $fc                                         ; $4ed9: $fc
	cp   $f8                                         ; $4eda: $fe $f8
	db   $fc                                         ; $4edc: $fc
	ldh  a, [$f8]                                    ; $4edd: $f0 $f8
	add  b                                           ; $4edf: $80
	ret  nz                                          ; $4ee0: $c0

	ld   e, $00                                      ; $4ee1: $1e $00
	ld   l, b                                        ; $4ee3: $68
	nop                                              ; $4ee4: $00
	jr   nz, jr_09c_4ef7                             ; $4ee5: $20 $10

	ld   h, a                                        ; $4ee7: $67
	nop                                              ; $4ee8: $00
	cp   b                                           ; $4ee9: $b8
	nop                                              ; $4eea: $00
	ldh  [rP1], a                                    ; $4eeb: $e0 $00
	jr   nz, jr_09c_4eef                             ; $4eed: $20 $00

jr_09c_4eef:
	inc  c                                           ; $4eef: $0c
	nop                                              ; $4ef0: $00
	ld   a, [hl+]                                    ; $4ef1: $2a
	nop                                              ; $4ef2: $00
	ld   hl, sp+$00                                  ; $4ef3: $f8 $00
	inc  l                                           ; $4ef5: $2c
	nop                                              ; $4ef6: $00

jr_09c_4ef7:
	rst  ToBoot                                         ; $4ef7: $c7
	ld   h, c                                        ; $4ef8: $61
	and  b                                           ; $4ef9: $a0
	or   b                                           ; $4efa: $b0

jr_09c_4efb:
	jp   nc, $e8d8                                   ; $4efb: $d2 $d8 $e8

	db   $ec                                         ; $4efe: $ec
	ld   h, l                                        ; $4eff: $65
	ld   h, [hl]                                     ; $4f00: $66
	add  b                                           ; $4f01: $80
	ld   [hl-], a                                    ; $4f02: $32
	dec  b                                           ; $4f03: $05
	cp   d                                           ; $4f04: $ba

jr_09c_4f05:
	dec  sp                                          ; $4f05: $3b
	ld   e, c                                        ; $4f06: $59

jr_09c_4f07:
	add  hl, de                                      ; $4f07: $19
	call $80ed                                       ; $4f08: $cd $ed $80
	db   $ec                                         ; $4f0b: $ec

jr_09c_4f0c:
	ld   bc, $f4e4                                   ; $4f0c: $01 $e4 $f4
	add  e                                           ; $4f0f: $83
	or   $01                                         ; $4f10: $f6 $01
	and  $e5                                         ; $4f12: $e6 $e5
	add  c                                           ; $4f14: $81
	db   $e4                                         ; $4f15: $e4
	nop                                              ; $4f16: $00
	ld   e, $ff                                      ; $4f17: $1e $ff
	nop                                              ; $4f19: $00
	db   $fc                                         ; $4f1a: $fc
	nop                                              ; $4f1b: $00
	dec  b                                           ; $4f1c: $05
	jr   nc, @-$2f                                   ; $4f1d: $30 $cf

	dec  sp                                          ; $4f1f: $3b
	add  hl, bc                                      ; $4f20: $09
	push bc                                          ; $4f21: $c5
	inc  de                                          ; $4f22: $13
	add  b                                           ; $4f23: $80
	ld   de, $0901                                   ; $4f24: $11 $01 $09
	dec  h                                           ; $4f27: $25
	add  c                                           ; $4f28: $81
	inc  hl                                          ; $4f29: $23
	inc  bc                                          ; $4f2a: $03
	db   $e3                                         ; $4f2b: $e3
	ldh  [c], a                                      ; $4f2c: $e2
	ldh  [$75], a                                    ; $4f2d: $e0 $75
	add  b                                           ; $4f2f: $80
	nop                                              ; $4f30: $00
	add  d                                           ; $4f31: $82
	ld   bc, $4082                                   ; $4f32: $01 $82 $40
	nop                                              ; $4f35: $00
	ld   h, b                                        ; $4f36: $60
	add  b                                           ; $4f37: $80
	jr   nz, jr_09c_4f4e                             ; $4f38: $20 $14

	and  b                                           ; $4f3a: $a0
	or   b                                           ; $4f3b: $b0
	add  sp, $26                                     ; $4f3c: $e8 $26
	jr   c, jr_09c_4f49                              ; $4f3e: $38 $09

	adc  [hl]                                        ; $4f40: $8e
	ld   [bc], a                                     ; $4f41: $02
	jp   $80a0                                       ; $4f42: $c3 $a0 $80


	db   $10                                         ; $4f45: $10
	ld   b, b                                        ; $4f46: $40
	inc  c                                           ; $4f47: $0c
	inc  h                                           ; $4f48: $24

jr_09c_4f49:
	daa                                              ; $4f49: $27
	inc  sp                                          ; $4f4a: $33
	inc  de                                          ; $4f4b: $13
	rst  JumpTable                                         ; $4f4c: $df
	daa                                              ; $4f4d: $27

jr_09c_4f4e:
	ld   h, a                                        ; $4f4e: $67
	add  b                                           ; $4f4f: $80
	ld   c, a                                        ; $4f50: $4f
	dec  c                                           ; $4f51: $0d
	ld   e, a                                        ; $4f52: $5f
	db   $dd                                         ; $4f53: $dd
	cp   h                                           ; $4f54: $bc
	cp   d                                           ; $4f55: $ba
	cp   b                                           ; $4f56: $b8
	or   h                                           ; $4f57: $b4
	pop  af                                          ; $4f58: $f1
	jp   hl                                          ; $4f59: $e9


	db   $eb                                         ; $4f5a: $eb
	jp   z, Jump_09c_62c6                            ; $4f5b: $ca $c6 $62

	ld   c, b                                        ; $4f5e: $48
	ret  z                                           ; $4f5f: $c8

	add  b                                           ; $4f60: $80
	adc  b                                           ; $4f61: $88
	add  b                                           ; $4f62: $80
	ld   a, [bc]                                     ; $4f63: $0a
	inc  b                                           ; $4f64: $04
	ld   a, [hl+]                                    ; $4f65: $2a
	ld   a, [bc]                                     ; $4f66: $0a
	ld   c, d                                        ; $4f67: $4a
	inc  c                                           ; $4f68: $0c
	adc  h                                           ; $4f69: $8c
	add  b                                           ; $4f6a: $80
	inc  d                                           ; $4f6b: $14
	ld   [bc], a                                     ; $4f6c: $02
	and  d                                           ; $4f6d: $a2
	xor  d                                           ; $4f6e: $aa
	or   a                                           ; $4f6f: $b7
	add  b                                           ; $4f70: $80
	or   b                                           ; $4f71: $b0
	nop                                              ; $4f72: $00
	cp   b                                           ; $4f73: $b8
	add  b                                           ; $4f74: $80
	sbc  b                                           ; $4f75: $98
	ld   c, $58                                      ; $4f76: $0e $58
	ld   e, h                                        ; $4f78: $5c
	ld   c, h                                        ; $4f79: $4c
	ld   c, [hl]                                     ; $4f7a: $4e
	ld   b, $87                                      ; $4f7b: $06 $87
	add  e                                           ; $4f7d: $83
	sbc  e                                           ; $4f7e: $9b
	add  hl, bc                                      ; $4f7f: $09
	ld   c, l                                        ; $4f80: $4d
	cpl                                              ; $4f81: $2f
	ld   d, e                                        ; $4f82: $53
	ld   e, c                                        ; $4f83: $59
	add  hl, hl                                      ; $4f84: $29

jr_09c_4f85:
	jr   z, jr_09c_4f07                              ; $4f85: $28 $80

	jr   c, jr_09c_4f89                              ; $4f87: $38 $00

jr_09c_4f89:
	jr   jr_09c_4f0c                                 ; $4f89: $18 $81

	inc  e                                           ; $4f8b: $1c
	add  b                                           ; $4f8c: $80
	dec  c                                           ; $4f8d: $0d
	add  b                                           ; $4f8e: $80
	adc  l                                           ; $4f8f: $8d
	ld   a, [bc]                                     ; $4f90: $0a
	call Call_09c_614c                               ; $4f91: $cd $4c $61
	and  b                                           ; $4f94: $a0
	or   b                                           ; $4f95: $b0
	jp   nc, $e8d8                                   ; $4f96: $d2 $d8 $e8

	db   $ec                                         ; $4f99: $ec
	ld   h, l                                        ; $4f9a: $65
	ld   h, [hl]                                     ; $4f9b: $66
	add  b                                           ; $4f9c: $80
	ld   [hl-], a                                    ; $4f9d: $32
	add  hl, bc                                      ; $4f9e: $09
	ld   a, [hl-]                                    ; $4f9f: $3a
	cp   e                                           ; $4fa0: $bb
	add  hl, de                                      ; $4fa1: $19
	ld   e, c                                        ; $4fa2: $59
	and  b                                           ; $4fa3: $a0
	ld   l, a                                        ; $4fa4: $6f
	ld   c, a                                        ; $4fa5: $4f
	ld   c, [hl]                                     ; $4fa6: $4e
	ld   l, $2f                                      ; $4fa7: $2e $2f
	add  b                                           ; $4fa9: $80
	ld   c, a                                        ; $4faa: $4f
	add  hl, bc                                      ; $4fab: $09

jr_09c_4fac:
	ld   a, a                                        ; $4fac: $7f
	ld   [hl], c                                     ; $4fad: $71
	ccf                                              ; $4fae: $3f
	ld   a, $4f                                      ; $4faf: $3e $4f
	rrca                                             ; $4fb1: $0f
	ld   sp, $0f01                                   ; $4fb2: $31 $01 $0f
	add  b                                           ; $4fb5: $80
	add  b                                           ; $4fb6: $80
	ret  nz                                          ; $4fb7: $c0

	inc  b                                           ; $4fb8: $04
	ldh  [rAUD4LEN], a                               ; $4fb9: $e0 $20
	jr   c, jr_09c_4f85                              ; $4fbb: $38 $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fbd: $cf
	add  b                                           ; $4fbe: $80
	pop  af                                          ; $4fbf: $f1
	rlca                                             ; $4fc0: $07
	ld   e, $fe                                      ; $4fc1: $1e $fe
	ld   bc, $801f                                   ; $4fc3: $01 $1f $80
	ld   [hl+], a                                    ; $4fc6: $22
	add  h                                           ; $4fc7: $84
	db   $e4                                         ; $4fc8: $e4
	add  c                                           ; $4fc9: $81
	add  h                                           ; $4fca: $84
	nop                                              ; $4fcb: $00
	call nz, $0481                                   ; $4fcc: $c4 $81 $04
	nop                                              ; $4fcf: $00
	add  h                                           ; $4fd0: $84
	add  c                                           ; $4fd1: $81
	inc  c                                           ; $4fd2: $0c
	add  b                                           ; $4fd3: $80
	ld   [$ce06], sp                                 ; $4fd4: $08 $06 $ce
	nop                                              ; $4fd7: $00
	add  hl, sp                                      ; $4fd8: $39

jr_09c_4fd9:
	nop                                              ; $4fd9: $00
	ld   b, $00                                      ; $4fda: $06 $00
	ld   bc, $0084                                   ; $4fdc: $01 $84 $00
	add  b                                           ; $4fdf: $80
	ret  nz                                          ; $4fe0: $c0

	dec  b                                           ; $4fe1: $05
	ld   hl, sp-$39                                  ; $4fe2: $f8 $c7
	nop                                              ; $4fe4: $00
	rst  $38                                         ; $4fe5: $ff
	nop                                              ; $4fe6: $00
	ccf                                              ; $4fe7: $3f
	add  c                                           ; $4fe8: $81
	nop                                              ; $4fe9: $00

jr_09c_4fea:
	inc  bc                                          ; $4fea: $03
	ldh  a, [rP1]                                    ; $4feb: $f0 $00
	rra                                              ; $4fed: $1f
	db   $10                                         ; $4fee: $10
	add  b                                           ; $4fef: $80
	dec  b                                           ; $4ff0: $05
	dec  d                                           ; $4ff1: $15
	ld   b, $00                                      ; $4ff2: $06 $00
	ld   [hl], $00                                   ; $4ff4: $36 $00
	cp   b                                           ; $4ff6: $b8
	add  b                                           ; $4ff7: $80
	ld   h, b                                        ; $4ff8: $60
	nop                                              ; $4ff9: $00
	jr   nz, jr_09c_4ffc                             ; $4ffa: $20 $00

jr_09c_4ffc:
	inc  c                                           ; $4ffc: $0c
	inc  b                                           ; $4ffd: $04
	ld   l, $0e                                      ; $4ffe: $2e $0e
	or   $96                                         ; $5000: $f6 $96
	cp   d                                           ; $5002: $ba
	or   d                                           ; $5003: $b2
	dec  c                                           ; $5004: $0d
	inc  b                                           ; $5005: $04
	inc  bc                                          ; $5006: $03
	ld   [bc], a                                     ; $5007: $02
	add  l                                           ; $5008: $85
	nop                                              ; $5009: $00
	add  b                                           ; $500a: $80
	ld   b, b                                        ; $500b: $40
	add  b                                           ; $500c: $80
	jr   nz, @+$03                                   ; $500d: $20 $01

	jr   nc, jr_09c_4fd9                             ; $500f: $30 $c8

	add  c                                           ; $5011: $81
	jr   jr_09c_5018                                 ; $5012: $18 $04

	sub  b                                           ; $5014: $90
	inc  [hl]                                        ; $5015: $34
	ld   [hl], h                                     ; $5016: $74
	or   h                                           ; $5017: $b4

jr_09c_5018:
	add  h                                           ; $5018: $84
	add  b                                           ; $5019: $80
	ld   c, b                                        ; $501a: $48
	add  b                                           ; $501b: $80
	ld   [hl], b                                     ; $501c: $70
	add  b                                           ; $501d: $80
	db   $10                                         ; $501e: $10
	ld   bc, $0008                                   ; $501f: $01 $08 $00
	add  e                                           ; $5022: $83
	inc  bc                                          ; $5023: $03
	nop                                              ; $5024: $00
	dec  de                                          ; $5025: $1b
	add  d                                           ; $5026: $82
	ld   bc, $0001                                   ; $5027: $01 $01 $00
	jr   nc, jr_09c_4fac                             ; $502a: $30 $80

	nop                                              ; $502c: $00
	ld   bc, $2808                                   ; $502d: $01 $08 $28
	add  b                                           ; $5030: $80
	add  a                                           ; $5031: $87
	add  b                                           ; $5032: $80
	ld   sp, hl                                      ; $5033: $f9
	add  b                                           ; $5034: $80
	cp   $80                                         ; $5035: $fe $80
	rst  $38                                         ; $5037: $ff
	add  d                                           ; $5038: $82
	ld   a, a                                        ; $5039: $7f
	add  d                                           ; $503a: $82
	ccf                                              ; $503b: $3f
	add  b                                           ; $503c: $80
	cp   $82                                         ; $503d: $fe $82
	rst  $38                                         ; $503f: $ff
	add  d                                           ; $5040: $82
	ld   a, a                                        ; $5041: $7f
	add  d                                           ; $5042: $82
	cp   a                                           ; $5043: $bf
	add  b                                           ; $5044: $80
	rst  JumpTable                                         ; $5045: $df
	add  b                                           ; $5046: $80
	nop                                              ; $5047: $00
	add  b                                           ; $5048: $80
	add  b                                           ; $5049: $80
	add  b                                           ; $504a: $80
	ret  nz                                          ; $504b: $c0

	add  b                                           ; $504c: $80

jr_09c_504d:
	ldh  [$80], a                                    ; $504d: $e0 $80
	ldh  a, [$80]                                    ; $504f: $f0 $80
	ld   hl, sp-$80                                  ; $5051: $f8 $80
	db   $fc                                         ; $5053: $fc
	ld   b, $fe                                      ; $5054: $06 $fe
	inc  h                                           ; $5056: $24
	ld   [bc], a                                     ; $5057: $02
	inc  [hl]                                        ; $5058: $34
	call z, Call_09c_6d4d                            ; $5059: $cc $4d $6d
	add  b                                           ; $505c: $80
	dec  l                                           ; $505d: $2d
	ld   [bc], a                                     ; $505e: $02
	dec  c                                           ; $505f: $0d
	add  hl, bc                                      ; $5060: $09
	ld   [bc], a                                     ; $5061: $02
	add  d                                           ; $5062: $82
	nop                                              ; $5063: $00
	ld   bc, $0204                                   ; $5064: $01 $04 $02
	add  b                                           ; $5067: $80
	jr   jr_09c_4fea                                 ; $5068: $18 $80

	inc  e                                           ; $506a: $1c
	add  b                                           ; $506b: $80
	inc  c                                           ; $506c: $0c
	nop                                              ; $506d: $00
	ld   c, $81                                      ; $506e: $0e $81
	adc  [hl]                                        ; $5070: $8e
	nop                                              ; $5071: $00
	add  a                                           ; $5072: $87
	add  b                                           ; $5073: $80
	rst  ToBoot                                         ; $5074: $c7
	ld   [bc], a                                     ; $5075: $02
	rst  $20                                         ; $5076: $e7
	db   $e3                                         ; $5077: $e3
	inc  bc                                          ; $5078: $03
	adc  h                                           ; $5079: $8c
	nop                                              ; $507a: $00
	ld   bc, $c080                                   ; $507b: $01 $80 $c0
	add  b                                           ; $507e: $80
	inc  e                                           ; $507f: $1c
	add  b                                           ; $5080: $80
	ld   e, $01                                      ; $5081: $1e $01
	rrca                                             ; $5083: $0f
	ld   c, a                                        ; $5084: $4f
	add  b                                           ; $5085: $80
	rlca                                             ; $5086: $07
	add  b                                           ; $5087: $80
	inc  bc                                          ; $5088: $03
	add  b                                           ; $5089: $80
	nop                                              ; $508a: $00
	add  b                                           ; $508b: $80
	db   $10                                         ; $508c: $10
	add  b                                           ; $508d: $80
	ld   [$1f82], sp                                 ; $508e: $08 $82 $1f
	add  [hl]                                        ; $5091: $86
	rrca                                             ; $5092: $0f
	add  b                                           ; $5093: $80
	dec  e                                           ; $5094: $1d
	add  b                                           ; $5095: $80
	ld   [hl], e                                     ; $5096: $73
	add  h                                           ; $5097: $84
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5098: $cf
	add  d                                           ; $5099: $82
	rst  ToBoot                                         ; $509a: $c7
	add  b                                           ; $509b: $80
	jp   $e382                                       ; $509c: $c3 $82 $e3


	add  h                                           ; $509f: $84
	rst  $38                                         ; $50a0: $ff
	add  d                                           ; $50a1: $82
	cp   a                                           ; $50a2: $bf
	add  e                                           ; $50a3: $83
	ccf                                              ; $50a4: $3f
	nop                                              ; $50a5: $00
	inc  a                                           ; $50a6: $3c
	add  b                                           ; $50a7: $80
	nop                                              ; $50a8: $00
	add  d                                           ; $50a9: $82
	add  b                                           ; $50aa: $80
	nop                                              ; $50ab: $00
	jp   nz, $c083                                   ; $50ac: $c2 $83 $c0

	add  b                                           ; $50af: $80
	ldh  [rSB], a                                    ; $50b0: $e0 $01
	pop  hl                                          ; $50b2: $e1
	add  b                                           ; $50b3: $80
	add  b                                           ; $50b4: $80
	ld   h, e                                        ; $50b5: $63
	nop                                              ; $50b6: $00
	ld   hl, $2981                                   ; $50b7: $21 $81 $29
	ld   bc, $f428                                   ; $50ba: $01 $28 $f4
	add  c                                           ; $50bd: $81
	inc  d                                           ; $50be: $14
	add  c                                           ; $50bf: $81
	ld   d, $01                                      ; $50c0: $16 $01
	ld   b, $b0                                      ; $50c2: $06 $b0
	add  b                                           ; $50c4: $80
	ret  nz                                          ; $50c5: $c0

	add  b                                           ; $50c6: $80
	ld   h, b                                        ; $50c7: $60
	add  b                                           ; $50c8: $80
	jr   nz, jr_09c_504d                             ; $50c9: $20 $82

	db   $10                                         ; $50cb: $10
	add  h                                           ; $50cc: $84
	nop                                              ; $50cd: $00
	add  b                                           ; $50ce: $80
	inc  c                                           ; $50cf: $0c
	add  b                                           ; $50d0: $80
	ld   b, $80                                      ; $50d1: $06 $80
	inc  bc                                          ; $50d3: $03
	add  a                                           ; $50d4: $87
	nop                                              ; $50d5: $00
	nop                                              ; $50d6: $00
	rst  $38                                         ; $50d7: $ff
	rst  $38                                         ; $50d8: $ff
	nop                                              ; $50d9: $00
	rst  $38                                         ; $50da: $ff
	nop                                              ; $50db: $00
	rst  $38                                         ; $50dc: $ff
	nop                                              ; $50dd: $00
	rst  $38                                         ; $50de: $ff
	nop                                              ; $50df: $00
	adc  c                                           ; $50e0: $89
	nop                                              ; $50e1: $00
	ld   b, e                                        ; $50e2: $43
	ld   bc, $0100                                   ; $50e3: $01 $00 $01
	add  c                                           ; $50e6: $81
	nop                                              ; $50e7: $00
	ld   [bc], a                                     ; $50e8: $02
	ld   bc, $0100                                   ; $50e9: $01 $00 $01
	add  l                                           ; $50ec: $85
	nop                                              ; $50ed: $00
	nop                                              ; $50ee: $00
	inc  bc                                          ; $50ef: $03
	add  c                                           ; $50f0: $81
	ld   bc, $0700                                   ; $50f1: $01 $00 $07
	add  c                                           ; $50f4: $81
	inc  bc                                          ; $50f5: $03
	inc  de                                          ; $50f6: $13
	dec  bc                                          ; $50f7: $0b
	inc  bc                                          ; $50f8: $03
	ld   [de], a                                     ; $50f9: $12
	ld   a, [bc]                                     ; $50fa: $0a
	ld   l, $16                                      ; $50fb: $2e $16
	ld   d, [hl]                                     ; $50fd: $56
	ld   [hl], $b4                                   ; $50fe: $36 $b4
	ld   [hl], h                                     ; $5100: $74
	ld   [hl], a                                     ; $5101: $77
	rst  $30                                         ; $5102: $f7
	ccf                                              ; $5103: $3f
	cpl                                              ; $5104: $2f
	rst  $20                                         ; $5105: $e7
	ld   b, a                                        ; $5106: $47
	ld   e, a                                        ; $5107: $5f
	sbc  a                                           ; $5108: $9f
	cp   a                                           ; $5109: $bf
	ccf                                              ; $510a: $3f
	add  b                                           ; $510b: $80
	ld   a, a                                        ; $510c: $7f
	add  b                                           ; $510d: $80
	rst  $28                                         ; $510e: $ef
	add  b                                           ; $510f: $80
	sbc  $08                                         ; $5110: $de $08
	sbc  l                                           ; $5112: $9d
	adc  l                                           ; $5113: $8d
	xor  l                                           ; $5114: $ad
	sbc  l                                           ; $5115: $9d
	sbc  c                                           ; $5116: $99
	sub  c                                           ; $5117: $91
	ld   d, c                                        ; $5118: $51
	ld   [$8000], sp                                 ; $5119: $08 $00 $80
	jr   nz, @-$7e                                   ; $511c: $20 $80

	jr   nc, jr_09c_5120                             ; $511e: $30 $00

jr_09c_5120:
	ld   [hl], c                                     ; $5120: $71
	add  b                                           ; $5121: $80
	ldh  [$80], a                                    ; $5122: $e0 $80
	ldh  a, [$80]                                    ; $5124: $f0 $80
	db   $fc                                         ; $5126: $fc
	add  [hl]                                        ; $5127: $86
	rst  $38                                         ; $5128: $ff
	add  b                                           ; $5129: $80
	rst  $30                                         ; $512a: $f7
	add  b                                           ; $512b: $80
	rst  $28                                         ; $512c: $ef
	inc  b                                           ; $512d: $04
	db   $ed                                         ; $512e: $ed
	xor  l                                           ; $512f: $ad
	xor  h                                           ; $5130: $ac
	ld   l, h                                        ; $5131: $6c
	ld   e, b                                        ; $5132: $58
	add  b                                           ; $5133: $80
	ld   d, b                                        ; $5134: $50
	inc  b                                           ; $5135: $04
	adc  b                                           ; $5136: $88
	ld   [$0109], sp                                 ; $5137: $08 $09 $01
	ld   d, l                                        ; $513a: $55
	add  b                                           ; $513b: $80
	dec  d                                           ; $513c: $15
	inc  bc                                          ; $513d: $03
	dec  b                                           ; $513e: $05
	add  l                                           ; $513f: $85
	cp   d                                           ; $5140: $ba
	ccf                                              ; $5141: $3f
	add  h                                           ; $5142: $84
	rst  $38                                         ; $5143: $ff
	add  b                                           ; $5144: $80
	db   $fd                                         ; $5145: $fd
	add  b                                           ; $5146: $80
	sbc  $80                                         ; $5147: $de $80
	xor  $80                                         ; $5149: $ee $80
	rst  $28                                         ; $514b: $ef
	ld   [bc], a                                     ; $514c: $02
	rst  $30                                         ; $514d: $f7
	rst  $10                                         ; $514e: $d7
	sub  a                                           ; $514f: $97
	add  b                                           ; $5150: $80
	and  d                                           ; $5151: $a2
	ld   [bc], a                                     ; $5152: $02
	inc  h                                           ; $5153: $24
	ld   c, b                                        ; $5154: $48
	sub  c                                           ; $5155: $91
	add  b                                           ; $5156: $80
	ld   de, $1002                                   ; $5157: $11 $02 $10
	ld   d, d                                        ; $515a: $52
	nop                                              ; $515b: $00
	add  b                                           ; $515c: $80
	jr   z, jr_09c_5166                              ; $515d: $28 $07

	add  hl, hl                                      ; $515f: $29
	pop  hl                                          ; $5160: $e1
	rst  JumpTable                                         ; $5161: $df
	sbc  b                                           ; $5162: $98
	adc  b                                           ; $5163: $88
	xor  $e6                                         ; $5164: $ee $e6

jr_09c_5166:
	rst  $38                                         ; $5166: $ff
	add  c                                           ; $5167: $81
	ei                                               ; $5168: $fb

jr_09c_5169:
	ld   de, $fdff                                   ; $5169: $11 $ff $fd
	rst  $38                                         ; $516c: $ff
	cp   $7a                                         ; $516d: $fe $7a
	ld   [hl], d                                     ; $516f: $72
	ld   [hl], l                                     ; $5170: $75
	ld   a, c                                        ; $5171: $79
	add  hl, de                                      ; $5172: $19
	add  hl, bc                                      ; $5173: $09
	cp   e                                           ; $5174: $bb
	ld   hl, $2420                                   ; $5175: $21 $20 $24
	inc  e                                           ; $5178: $1c
	sub  h                                           ; $5179: $94
	call nc, $82d6                                   ; $517a: $d4 $d6 $82
	ld   d, d                                        ; $517d: $52
	ld   [bc], a                                     ; $517e: $02
	ld   a, a                                        ; $517f: $7f
	nop                                              ; $5180: $00
	ret  nz                                          ; $5181: $c0

	add  c                                           ; $5182: $81
	add  b                                           ; $5183: $80
	nop                                              ; $5184: $00
	ld   b, b                                        ; $5185: $40
	adc  l                                           ; $5186: $8d
	nop                                              ; $5187: $00
	ld   a, [bc]                                     ; $5188: $0a
	ld   b, b                                        ; $5189: $40
	nop                                              ; $518a: $00
	jr   nz, jr_09c_518d                             ; $518b: $20 $00

jr_09c_518d:
	db   $10                                         ; $518d: $10
	jr   nz, jr_09c_51b8                             ; $518e: $20 $28

	jr   nc, jr_09c_51b6                             ; $5190: $30 $24

	jr   c, jr_09c_5169                              ; $5192: $38 $d5

	add  c                                           ; $5194: $81
	nop                                              ; $5195: $00
	nop                                              ; $5196: $00
	inc  bc                                          ; $5197: $03
	add  c                                           ; $5198: $81
	ld   bc, $0202                                   ; $5199: $01 $02 $02
	nop                                              ; $519c: $00
	ld   bc, $0085                                   ; $519d: $01 $85 $00
	nop                                              ; $51a0: $00
	ld   bc, $0081                                   ; $51a1: $01 $81 $00
	nop                                              ; $51a4: $00
	ld   bc, $0087                                   ; $51a5: $01 $87 $00
	ld   [bc], a                                     ; $51a8: $02
	cp   a                                           ; $51a9: $bf
	ldh  a, [$30]                                    ; $51aa: $f0 $30
	add  b                                           ; $51ac: $80
	ldh  a, [rSB]                                    ; $51ad: $f0 $01
	ld   hl, sp+$78                                  ; $51af: $f8 $78
	add  b                                           ; $51b1: $80
	ldh  a, [c]                                      ; $51b2: $f2
	add  b                                           ; $51b3: $80
	rst  $20                                         ; $51b4: $e7
	dec  de                                          ; $51b5: $1b

jr_09c_51b6:
	rrca                                             ; $51b6: $0f
	add  a                                           ; $51b7: $87

jr_09c_51b8:
	rra                                              ; $51b8: $1f
	rlca                                             ; $51b9: $07
	ccf                                              ; $51ba: $3f
	sbc  a                                           ; $51bb: $9f
	ld   a, a                                        ; $51bc: $7f
	cpl                                              ; $51bd: $2f
	cp   $7e                                         ; $51be: $fe $7e
	db   $fc                                         ; $51c0: $fc
	ld   e, h                                        ; $51c1: $5c
	ld   a, b                                        ; $51c2: $78
	cp   b                                           ; $51c3: $b8

jr_09c_51c4:
	ld   sp, $0171                                   ; $51c4: $31 $71 $01
	dec  a                                           ; $51c7: $3d
	ld   bc, $0003                                   ; $51c8: $01 $03 $00

jr_09c_51cb:
	di                                               ; $51cb: $f3
	inc  a                                           ; $51cc: $3c
	scf                                              ; $51cd: $37
	ld   a, [hl]                                     ; $51ce: $7e
	ld   a, d                                        ; $51cf: $7a
	ld   a, $3c                                      ; $51d0: $3e $3c
	add  b                                           ; $51d2: $80
	sbc  [hl]                                        ; $51d3: $9e
	add  b                                           ; $51d4: $80
	adc  $15                                         ; $51d5: $ce $15
	and  $c7                                         ; $51d7: $e6 $c7
	ldh  a, [$c0]                                    ; $51d9: $f0 $c0
	ld   hl, sp-$0f                                  ; $51db: $f8 $f1
	db   $fc                                         ; $51dd: $fc
	add  sp, -$02                                    ; $51de: $e8 $fe
	db   $fc                                         ; $51e0: $fc
	cp   $f6                                         ; $51e1: $fe $f6

jr_09c_51e3:
	ld   a, [hl]                                     ; $51e3: $7e
	ld   a, l                                        ; $51e4: $7d
	ld   a, h                                        ; $51e5: $7c
	ld   a, d                                        ; $51e6: $7a
	ld   a, b                                        ; $51e7: $78
	ld   a, h                                        ; $51e8: $7c
	ld   h, b                                        ; $51e9: $60
	ld   a, b                                        ; $51ea: $78
	nop                                              ; $51eb: $00
	pop  hl                                          ; $51ec: $e1
	add  e                                           ; $51ed: $83
	nop                                              ; $51ee: $00
	nop                                              ; $51ef: $00
	ld   [bc], a                                     ; $51f0: $02
	add  a                                           ; $51f1: $87
	nop                                              ; $51f2: $00
	ld   a, [bc]                                     ; $51f3: $0a
	inc  c                                           ; $51f4: $0c
	nop                                              ; $51f5: $00
	jr   nc, jr_09c_51ff                             ; $51f6: $30 $07

	ld   b, a                                        ; $51f8: $47
	add  hl, de                                      ; $51f9: $19
	sbc  c                                           ; $51fa: $99
	halt                                             ; $51fb: $76
	ld   [hl], a                                     ; $51fc: $77
	ld   l, c                                        ; $51fd: $69
	ld   l, a                                        ; $51fe: $6f

jr_09c_51ff:
	add  b                                           ; $51ff: $80
	rst  $10                                         ; $5200: $d7
	inc  bc                                          ; $5201: $03
	or   a                                           ; $5202: $b7
	or   e                                           ; $5203: $b3
	ld   l, a                                        ; $5204: $6f
	ld   e, b                                        ; $5205: $58
	add  c                                           ; $5206: $81
	inc  [hl]                                        ; $5207: $34
	add  d                                           ; $5208: $82
	jr   nc, @+$03                                   ; $5209: $30 $01

	jr   c, jr_09c_523d                              ; $520b: $38 $30

	add  b                                           ; $520d: $80
	db   $10                                         ; $520e: $10
	inc  bc                                          ; $520f: $03
	ld   [de], a                                     ; $5210: $12
	db   $10                                         ; $5211: $10
	ld   de, $8010                                   ; $5212: $11 $10 $80
	ld   d, b                                        ; $5215: $50
	rrca                                             ; $5216: $0f
	sub  b                                           ; $5217: $90
	db   $10                                         ; $5218: $10
	ld   d, [hl]                                     ; $5219: $56
	jr   jr_09c_51c4                                 ; $521a: $18 $a8

	ld   [$0cc8], sp                                 ; $521c: $08 $c8 $0c
	ld   [hl], a                                     ; $521f: $77
	ld   b, $32                                      ; $5220: $06 $32
	ld   [bc], a                                     ; $5222: $02
	add  hl, bc                                      ; $5223: $09
	ld   bc, $33db                                   ; $5224: $01 $db $33
	add  b                                           ; $5227: $80
	ld   [hl-], a                                    ; $5228: $32
	add  c                                           ; $5229: $81
	or   d                                           ; $522a: $b2
	add  b                                           ; $522b: $80
	or   b                                           ; $522c: $b0
	ld   bc, $1090                                   ; $522d: $01 $90 $10
	add  c                                           ; $5230: $81
	ld   [de], a                                     ; $5231: $12
	ld   bc, $2242                                   ; $5232: $01 $42 $22
	add  d                                           ; $5235: $82
	jr   nz, jr_09c_5244                             ; $5236: $20 $0c

	cpl                                              ; $5238: $2f
	ld   h, b                                        ; $5239: $60
	ret  nc                                          ; $523a: $d0

	ret  nz                                          ; $523b: $c0

	xor  a                                           ; $523c: $af

jr_09c_523d:
	add  b                                           ; $523d: $80
	ld   a, a                                        ; $523e: $7f
	nop                                              ; $523f: $00
	ldh  [rP1], a                                    ; $5240: $e0 $00
	jr   nz, jr_09c_5244                             ; $5242: $20 $00

jr_09c_5244:
	jr   nc, jr_09c_51cb                             ; $5244: $30 $85

	add  b                                           ; $5246: $80
	ld   bc, $c0e0                                   ; $5247: $01 $e0 $c0
	add  h                                           ; $524a: $84
	ld   b, b                                        ; $524b: $40
	add  d                                           ; $524c: $82
	nop                                              ; $524d: $00
	nop                                              ; $524e: $00
	db   $10                                         ; $524f: $10
	add  b                                           ; $5250: $80
	ret  nz                                          ; $5251: $c0

	dec  b                                           ; $5252: $05
	ldh  [$e8], a                                    ; $5253: $e0 $e8
	ld   [hl], b                                     ; $5255: $70
	db   $f4                                         ; $5256: $f4
	cp   b                                           ; $5257: $b8
	ld   hl, sp-$80                                  ; $5258: $f8 $80
	ret  z                                           ; $525a: $c8

	add  c                                           ; $525b: $81
	ret  nc                                          ; $525c: $d0

	inc  bc                                          ; $525d: $03
	ld   d, d                                        ; $525e: $52
	ld   b, h                                        ; $525f: $44
	inc  h                                           ; $5260: $24
	jr   z, jr_09c_51e3                              ; $5261: $28 $80

	add  sp, $01                                     ; $5263: $e8 $01
	ld   [$810c], sp                                 ; $5265: $08 $0c $81
	db   $ec                                         ; $5268: $ec
	add  c                                           ; $5269: $81
	db   $e4                                         ; $526a: $e4
	add  b                                           ; $526b: $80
	db   $f4                                         ; $526c: $f4
	nop                                              ; $526d: $00
	or   $83                                         ; $526e: $f6 $83
	ldh  a, [$84]                                    ; $5270: $f0 $84
	ld   hl, sp-$80                                  ; $5272: $f8 $80
	nop                                              ; $5274: $00
	nop                                              ; $5275: $00
	db   $ec                                         ; $5276: $ec
	add  c                                           ; $5277: $81
	ldh  [rP1], a                                    ; $5278: $e0 $00
	ret  nc                                          ; $527a: $d0

	add  c                                           ; $527b: $81
	ret  nz                                          ; $527c: $c0

	add  d                                           ; $527d: $82
	add  b                                           ; $527e: $80
	ld   [$4058], sp                                 ; $527f: $08 $58 $40
	ld   b, h                                        ; $5282: $44
	ld   e, b                                        ; $5283: $58
	ld   e, d                                        ; $5284: $5a
	ld   e, h                                        ; $5285: $5c
	call c, $cecc                                    ; $5286: $dc $cc $ce
	add  d                                           ; $5289: $82
	ret  nz                                          ; $528a: $c0

	inc  bc                                          ; $528b: $03
	ret  nc                                          ; $528c: $d0

	call nc, $d8d0                                   ; $528d: $d4 $d0 $d8
	add  c                                           ; $5290: $81
	ret  nz                                          ; $5291: $c0

	ld   [bc], a                                     ; $5292: $02
	pop  af                                          ; $5293: $f1
	nop                                              ; $5294: $00
	ld   [bc], a                                     ; $5295: $02
	add  c                                           ; $5296: $81
	ld   bc, $0500                                   ; $5297: $01 $00 $05
	add  b                                           ; $529a: $80
	inc  bc                                          ; $529b: $03
	add  b                                           ; $529c: $80
	ld   [bc], a                                     ; $529d: $02
	add  c                                           ; $529e: $81
	ld   bc, $0002                                   ; $529f: $01 $02 $00
	inc  bc                                          ; $52a2: $03
	add  hl, bc                                      ; $52a3: $09
	add  c                                           ; $52a4: $81
	rlca                                             ; $52a5: $07
	inc  b                                           ; $52a6: $04
	dec  c                                           ; $52a7: $0d
	inc  bc                                          ; $52a8: $03
	ld   [bc], a                                     ; $52a9: $02
	inc  bc                                          ; $52aa: $03
	rlca                                             ; $52ab: $07
	add  c                                           ; $52ac: $81
	ld   bc, $0300                                   ; $52ad: $01 $00 $03
	add  c                                           ; $52b0: $81
	nop                                              ; $52b1: $00
	nop                                              ; $52b2: $00
	ld   bc, $0087                                   ; $52b3: $01 $87 $00
	inc  b                                           ; $52b6: $04
	ld   bc, $0200                                   ; $52b7: $01 $00 $02
	ld   bc, $8105                                   ; $52ba: $01 $05 $81
	inc  bc                                          ; $52bd: $03
	nop                                              ; $52be: $00
	rlca                                             ; $52bf: $07
	add  d                                           ; $52c0: $82
	ld   bc, $0081                                   ; $52c1: $01 $81 $00
	ld   [bc], a                                     ; $52c4: $02
	ld   [bc], a                                     ; $52c5: $02
	nop                                              ; $52c6: $00
	ld   bc, $0081                                   ; $52c7: $01 $81 $00
	ld   bc, $3c43                                   ; $52ca: $01 $43 $3c
	add  d                                           ; $52cd: $82
	ccf                                              ; $52ce: $3f
	ld   [bc], a                                     ; $52cf: $02
	ld   e, a                                        ; $52d0: $5f
	rra                                              ; $52d1: $1f
	rst  JumpTable                                         ; $52d2: $df
	add  b                                           ; $52d3: $80
	rra                                              ; $52d4: $1f
	add  e                                           ; $52d5: $83
	rst  JumpTable                                         ; $52d6: $df
	nop                                              ; $52d7: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52d8: $cf
	add  b                                           ; $52d9: $80
	db   $eb                                         ; $52da: $eb
	inc  bc                                          ; $52db: $03
	db   $ed                                         ; $52dc: $ed
	push hl                                          ; $52dd: $e5
	add  h                                           ; $52de: $84
	add  b                                           ; $52df: $80
	add  b                                           ; $52e0: $80
	ld   [bc], a                                     ; $52e1: $02
	inc  bc                                          ; $52e2: $03
	ld   [de], a                                     ; $52e3: $12
	inc  d                                           ; $52e4: $14
	dec  [hl]                                        ; $52e5: $35
	scf                                              ; $52e6: $37
	add  c                                           ; $52e7: $81
	ld   [hl], a                                     ; $52e8: $77
	nop                                              ; $52e9: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52ea: $cf
	add  b                                           ; $52eb: $80
	add  b                                           ; $52ec: $80
	add  e                                           ; $52ed: $83
	nop                                              ; $52ee: $00
	ld   bc, $8060                                   ; $52ef: $01 $60 $80
	add  c                                           ; $52f2: $81
	nop                                              ; $52f3: $00
	add  c                                           ; $52f4: $81
	ld   b, b                                        ; $52f5: $40
	add  d                                           ; $52f6: $82
	nop                                              ; $52f7: $00
	dec  bc                                          ; $52f8: $0b
	ret  nc                                          ; $52f9: $d0

	nop                                              ; $52fa: $00
	jr   nz, jr_09c_52fd                             ; $52fb: $20 $00

jr_09c_52fd:
	sbc  b                                           ; $52fd: $98
	nop                                              ; $52fe: $00
	call z, Call_09c_7000                            ; $52ff: $cc $00 $70
	nop                                              ; $5302: $00
	jr   jr_09c_5305                                 ; $5303: $18 $00

jr_09c_5305:
	add  b                                           ; $5305: $80
	ld   b, b                                        ; $5306: $40
	ld   [bc], a                                     ; $5307: $02
	sub  $40                                         ; $5308: $d6 $40
	ld   c, h                                        ; $530a: $4c
	add  b                                           ; $530b: $80
	jr   nz, @+$03                                   ; $530c: $20 $01

	ldh  [$e4], a                                    ; $530e: $e0 $e4
	add  b                                           ; $5310: $80
	nop                                              ; $5311: $00
	ld   bc, $08e0                                   ; $5312: $01 $e0 $08
	add  d                                           ; $5315: $82
	nop                                              ; $5316: $00
	ld   bc, $0610                                   ; $5317: $01 $10 $06
	add  h                                           ; $531a: $84
	nop                                              ; $531b: $00
	nop                                              ; $531c: $00
	ld   [$0082], sp                                 ; $531d: $08 $82 $00
	ld   [bc], a                                     ; $5320: $02
	ld   hl, sp+$00                                  ; $5321: $f8 $00
	db   $e3                                         ; $5323: $e3
	add  c                                           ; $5324: $81
	ldh  [$80], a                                    ; $5325: $e0 $80
	db   $e4                                         ; $5327: $e4
	ld   b, $62                                      ; $5328: $06 $62
	ld   h, [hl]                                     ; $532a: $66
	inc  b                                           ; $532b: $04
	ld   [$4c0e], sp                                 ; $532c: $08 $0e $4c
	ld   c, c                                        ; $532f: $49
	add  d                                           ; $5330: $82
	ld   c, l                                        ; $5331: $4d
	ld   [bc], a                                     ; $5332: $02
	ld   c, [hl]                                     ; $5333: $4e
	ld   b, [hl]                                     ; $5334: $46
	inc  c                                           ; $5335: $0c
	add  b                                           ; $5336: $80
	ld   b, $80                                      ; $5337: $06 $80

jr_09c_5339:
	dec  h                                           ; $5339: $25
	add  b                                           ; $533a: $80
	inc  h                                           ; $533b: $24
	ld   bc, $2622                                   ; $533c: $01 $22 $26
	add  b                                           ; $533f: $80
	ld   [hl+], a                                    ; $5340: $22
	ld   [bc], a                                     ; $5341: $02
	scf                                              ; $5342: $37
	dec  [hl]                                        ; $5343: $35
	ld   bc, $8580                                   ; $5344: $01 $80 $85
	dec  bc                                          ; $5347: $0b
	dec  b                                           ; $5348: $05
	inc  bc                                          ; $5349: $03
	db   $d3                                         ; $534a: $d3
	di                                               ; $534b: $f3
	inc  sp                                          ; $534c: $33
	sbc  d                                           ; $534d: $9a
	nop                                              ; $534e: $00
	sbc  b                                           ; $534f: $98
	jr   jr_09c_5362                                 ; $5350: $18 $10

	ld   b, b                                        ; $5352: $40
	ld   h, b                                        ; $5353: $60
	add  b                                           ; $5354: $80
	ldh  [rSC], a                                    ; $5355: $e0 $02
	jr   nz, jr_09c_5339                             ; $5357: $20 $e0

	nop                                              ; $5359: $00
	add  b                                           ; $535a: $80
	and  c                                           ; $535b: $a1
	ld   [bc], a                                     ; $535c: $02
	ld   b, e                                        ; $535d: $43
	ld   b, d                                        ; $535e: $42
	nop                                              ; $535f: $00
	add  b                                           ; $5360: $80
	ld   [bc], a                                     ; $5361: $02

jr_09c_5362:
	ld   bc, $0100                                   ; $5362: $01 $00 $01
	add  c                                           ; $5365: $81

jr_09c_5366:
	nop                                              ; $5366: $00
	ld   [bc], a                                     ; $5367: $02
	rst  $30                                         ; $5368: $f7
	add  hl, hl                                      ; $5369: $29
	ld   hl, sGlobalFlags1                                   ; $536a: $21 $80 $a0
	rlca                                             ; $536d: $07
	sub  l                                           ; $536e: $95
	sbc  l                                           ; $536f: $9d
	cp   b                                           ; $5370: $b8
	call nc, $3480                                   ; $5371: $d4 $80 $34
	jr   nc, @+$13                                   ; $5374: $30 $11

	add  b                                           ; $5376: $80
	inc  bc                                          ; $5377: $03
	inc  b                                           ; $5378: $04
	rlca                                             ; $5379: $07
	rrca                                             ; $537a: $0f
	ld   [$000e], sp                                 ; $537b: $08 $0e $00
	add  b                                           ; $537e: $80
	ld   a, [bc]                                     ; $537f: $0a
	add  b                                           ; $5380: $80
	dec  b                                           ; $5381: $05
	add  h                                           ; $5382: $84
	nop                                              ; $5383: $00
	add  b                                           ; $5384: $80
	ld   bc, $ad00                                   ; $5385: $01 $00 $ad
	add  c                                           ; $5388: $81
	ld   d, d                                        ; $5389: $52
	add  b                                           ; $538a: $80
	ld   [bc], a                                     ; $538b: $02
	ld   b, $80                                      ; $538c: $06 $80
	ret  nz                                          ; $538e: $c0

	ld   b, b                                        ; $538f: $40
	jr   nz, @-$1e                                   ; $5390: $20 $e0

	ld   h, d                                        ; $5392: $62
	ld   [hl+], a                                    ; $5393: $22
	add  d                                           ; $5394: $82
	ld   h, d                                        ; $5395: $62
	add  b                                           ; $5396: $80
	ldh  [c], a                                      ; $5397: $e2
	ld   [bc], a                                     ; $5398: $02
	ld   h, b                                        ; $5399: $60
	ret  nz                                          ; $539a: $c0

	ldh  [$82], a                                    ; $539b: $e0 $82
	ld   d, b                                        ; $539d: $50
	ld   bc, $d191                                   ; $539e: $01 $91 $d1
	add  b                                           ; $53a1: $80
	or   c                                           ; $53a2: $b1
	ld   bc, $33b3                                   ; $53a3: $01 $b3 $33
	add  d                                           ; $53a6: $82
	ldh  [$80], a                                    ; $53a7: $e0 $80
	db   $e4                                         ; $53a9: $e4
	rlca                                             ; $53aa: $07
	ld   h, d                                        ; $53ab: $62
	ld   h, [hl]                                     ; $53ac: $66
	dec  b                                           ; $53ad: $05
	inc  c                                           ; $53ae: $0c
	add  hl, bc                                      ; $53af: $09
	ld   c, h                                        ; $53b0: $4c
	ld   c, d                                        ; $53b1: $4a
	ld   c, h                                        ; $53b2: $4c
	add  c                                           ; $53b3: $81
	ld   c, l                                        ; $53b4: $4d
	ld   [bc], a                                     ; $53b5: $02
	ld   c, [hl]                                     ; $53b6: $4e
	ld   b, [hl]                                     ; $53b7: $46
	inc  c                                           ; $53b8: $0c
	add  b                                           ; $53b9: $80
	ld   b, $80                                      ; $53ba: $06 $80

jr_09c_53bc:
	dec  h                                           ; $53bc: $25

jr_09c_53bd:
	add  b                                           ; $53bd: $80
	inc  h                                           ; $53be: $24
	ld   bc, $2622                                   ; $53bf: $01 $22 $26
	add  b                                           ; $53c2: $80
	ld   [hl+], a                                    ; $53c3: $22
	ld   [bc], a                                     ; $53c4: $02
	scf                                              ; $53c5: $37
	dec  [hl]                                        ; $53c6: $35
	ld   bc, $8580                                   ; $53c7: $01 $80 $85
	ld   [bc], a                                     ; $53ca: $02
	dec  b                                           ; $53cb: $05
	inc  bc                                          ; $53cc: $03
	db   $d3                                         ; $53cd: $d3
	add  b                                           ; $53ce: $80
	inc  sp                                          ; $53cf: $33
	ld   b, $32                                      ; $53d0: $06 $32
	jr   jr_09c_53bc                                 ; $53d2: $18 $e8

	jr   jr_09c_5366                                 ; $53d4: $18 $90

	nop                                              ; $53d6: $00
	and  b                                           ; $53d7: $a0
	add  b                                           ; $53d8: $80
	ld   h, b                                        ; $53d9: $60
	ld   [bc], a                                     ; $53da: $02
	jr   nz, jr_09c_53bd                             ; $53db: $20 $e0

	nop                                              ; $53dd: $00
	add  b                                           ; $53de: $80
	and  c                                           ; $53df: $a1
	ld   [bc], a                                     ; $53e0: $02
	ld   b, e                                        ; $53e1: $43
	ld   b, d                                        ; $53e2: $42
	nop                                              ; $53e3: $00
	add  b                                           ; $53e4: $80
	ld   [bc], a                                     ; $53e5: $02
	ld   bc, $0100                                   ; $53e6: $01 $00 $01
	add  c                                           ; $53e9: $81
	nop                                              ; $53ea: $00
	ld   [bc], a                                     ; $53eb: $02
	rst  $30                                         ; $53ec: $f7
	add  hl, hl                                      ; $53ed: $29
	ld   hl, sGlobalFlags1                                   ; $53ee: $21 $80 $a0
	ld   c, $95                                      ; $53f1: $0e $95
	sbc  l                                           ; $53f3: $9d
	cp   l                                           ; $53f4: $bd
	res  0, c                                        ; $53f5: $cb $81
	ccf                                              ; $53f7: $3f
	jr   nz, jr_09c_540f                             ; $53f8: $20 $15

	ld   bc, $0305                                   ; $53fa: $01 $05 $03
	dec  bc                                          ; $53fd: $0b
	ld   [$000e], sp                                 ; $53fe: $08 $0e $00
	add  b                                           ; $5401: $80
	ld   a, [bc]                                     ; $5402: $0a
	add  b                                           ; $5403: $80
	dec  b                                           ; $5404: $05
	add  h                                           ; $5405: $84
	nop                                              ; $5406: $00
	add  b                                           ; $5407: $80
	ld   bc, $ad00                                   ; $5408: $01 $00 $ad
	add  c                                           ; $540b: $81
	ld   d, d                                        ; $540c: $52
	add  b                                           ; $540d: $80
	ld   [bc], a                                     ; $540e: $02

jr_09c_540f:
	nop                                              ; $540f: $00
	nop                                              ; $5410: $00
	add  b                                           ; $5411: $80
	ret  nz                                          ; $5412: $c0

	inc  bc                                          ; $5413: $03
	and  b                                           ; $5414: $a0
	ldh  [$62], a                                    ; $5415: $e0 $62
	and  d                                           ; $5417: $a2
	add  d                                           ; $5418: $82
	ld   h, d                                        ; $5419: $62
	add  b                                           ; $541a: $80
	ldh  [c], a                                      ; $541b: $e2

jr_09c_541c:
	ld   [bc], a                                     ; $541c: $02
	ld   h, b                                        ; $541d: $60
	ret  nz                                          ; $541e: $c0

	ldh  [$82], a                                    ; $541f: $e0 $82
	ld   d, b                                        ; $5421: $50
	ld   bc, $d191                                   ; $5422: $01 $91 $d1
	add  b                                           ; $5425: $80
	or   c                                           ; $5426: $b1
	ld   bc, $33b3                                   ; $5427: $01 $b3 $33
	add  d                                           ; $542a: $82
	ldh  [$80], a                                    ; $542b: $e0 $80
	db   $e4                                         ; $542d: $e4
	dec  c                                           ; $542e: $0d
	ld   h, d                                        ; $542f: $62
	ld   h, [hl]                                     ; $5430: $66
	dec  b                                           ; $5431: $05
	inc  c                                           ; $5432: $0c
	ld   a, [bc]                                     ; $5433: $0a
	ld   c, h                                        ; $5434: $4c
	ld   c, [hl]                                     ; $5435: $4e
	ld   c, h                                        ; $5436: $4c
	ld   c, e                                        ; $5437: $4b
	ld   c, [hl]                                     ; $5438: $4e
	ld   c, a                                        ; $5439: $4f
	ld   c, h                                        ; $543a: $4c
	ld   b, h                                        ; $543b: $44
	inc  c                                           ; $543c: $0c
	add  b                                           ; $543d: $80
	ld   b, $80                                      ; $543e: $06 $80
	dec  h                                           ; $5440: $25
	add  b                                           ; $5441: $80
	inc  h                                           ; $5442: $24
	ld   bc, $2622                                   ; $5443: $01 $22 $26
	add  b                                           ; $5446: $80
	ld   [hl+], a                                    ; $5447: $22
	ld   [bc], a                                     ; $5448: $02
	scf                                              ; $5449: $37
	dec  [hl]                                        ; $544a: $35
	ld   bc, $8580                                   ; $544b: $01 $80 $85
	ld   [bc], a                                     ; $544e: $02
	dec  b                                           ; $544f: $05
	inc  bc                                          ; $5450: $03
	db   $d3                                         ; $5451: $d3
	add  b                                           ; $5452: $80
	inc  sp                                          ; $5453: $33
	ld   bc, $3812                                   ; $5454: $01 $12 $38
	add  c                                           ; $5457: $81
	jr   jr_09c_545d                                 ; $5458: $18 $03

	jr   z, jr_09c_541c                              ; $545a: $28 $c0

	db   $10                                         ; $545c: $10

jr_09c_545d:
	ldh  [$81], a                                    ; $545d: $e0 $81
	nop                                              ; $545f: $00
	add  b                                           ; $5460: $80
	and  c                                           ; $5461: $a1
	ld   [bc], a                                     ; $5462: $02
	ld   b, e                                        ; $5463: $43
	ld   b, d                                        ; $5464: $42
	nop                                              ; $5465: $00
	add  b                                           ; $5466: $80
	ld   [bc], a                                     ; $5467: $02
	ld   bc, $0100                                   ; $5468: $01 $00 $01
	add  c                                           ; $546b: $81
	nop                                              ; $546c: $00
	ld   [bc], a                                     ; $546d: $02
	rst  $30                                         ; $546e: $f7
	add  hl, hl                                      ; $546f: $29
	ld   hl, sGlobalFlags1                                   ; $5470: $21 $80 $a0
	inc  b                                           ; $5473: $04
	sub  l                                           ; $5474: $95
	sbc  l                                           ; $5475: $9d
	cp   l                                           ; $5476: $bd
	ret                                              ; $5477: $c9


	add  e                                           ; $5478: $83
	add  b                                           ; $5479: $80
	inc  sp                                          ; $547a: $33
	inc  b                                           ; $547b: $04
	ld   sp, $0729                                   ; $547c: $31 $29 $07
	db   $10                                         ; $547f: $10
	rrca                                             ; $5480: $0f
	add  c                                           ; $5481: $81
	nop                                              ; $5482: $00
	add  b                                           ; $5483: $80
	ld   a, [bc]                                     ; $5484: $0a
	add  b                                           ; $5485: $80
	dec  b                                           ; $5486: $05
	add  h                                           ; $5487: $84
	nop                                              ; $5488: $00
	add  b                                           ; $5489: $80
	ld   bc, $ad00                                   ; $548a: $01 $00 $ad
	add  c                                           ; $548d: $81
	ld   d, d                                        ; $548e: $52
	add  b                                           ; $548f: $80
	ld   [bc], a                                     ; $5490: $02
	nop                                              ; $5491: $00
	nop                                              ; $5492: $00
	add  b                                           ; $5493: $80
	ret  nz                                          ; $5494: $c0

	ld   bc, $a0e0                                   ; $5495: $01 $e0 $a0
	add  b                                           ; $5498: $80
	ldh  [c], a                                      ; $5499: $e2
	ld   bc, $a262                                   ; $549a: $01 $62 $a2
	add  b                                           ; $549d: $80
	ldh  [c], a                                      ; $549e: $e2
	add  b                                           ; $549f: $80
	ld   h, d                                        ; $54a0: $62
	ld   [bc], a                                     ; $54a1: $02
	ld   h, b                                        ; $54a2: $60
	ret  nz                                          ; $54a3: $c0

	ldh  [$82], a                                    ; $54a4: $e0 $82
	ld   d, b                                        ; $54a6: $50
	ld   bc, $d191                                   ; $54a7: $01 $91 $d1
	add  b                                           ; $54aa: $80
	or   c                                           ; $54ab: $b1
	ld   [bc], a                                     ; $54ac: $02
	or   e                                           ; $54ad: $b3
	inc  sp                                          ; $54ae: $33
	rst  $38                                         ; $54af: $ff
	add  c                                           ; $54b0: $81
	nop                                              ; $54b1: $00
	add  b                                           ; $54b2: $80
	ld   [$1802], sp                                 ; $54b3: $08 $02 $18
	stop                                             ; $54b6: $10 $00
	add  b                                           ; $54b8: $80
	db   $10                                         ; $54b9: $10
	ld   b, $00                                      ; $54ba: $06 $00
	ld   [$3600], sp                                 ; $54bc: $08 $00 $36
	inc  d                                           ; $54bf: $14
	ld   [hl+], a                                    ; $54c0: $22
	nop                                              ; $54c1: $00
	add  b                                           ; $54c2: $80
	inc  e                                           ; $54c3: $1c
	add  b                                           ; $54c4: $80
	nop                                              ; $54c5: $00
	inc  b                                           ; $54c6: $04
	pop  bc                                          ; $54c7: $c1
	ld   b, c                                        ; $54c8: $41
	ld   [hl], a                                     ; $54c9: $77
	sub  h                                           ; $54ca: $94
	sbc  h                                           ; $54cb: $9c
	add  b                                           ; $54cc: $80
	db   $e3                                         ; $54cd: $e3
	add  b                                           ; $54ce: $80
	rst  $38                                         ; $54cf: $ff
	ld   bc, $807f                                   ; $54d0: $01 $7f $80
	add  c                                           ; $54d3: $81
	nop                                              ; $54d4: $00
	add  b                                           ; $54d5: $80
	ld   [$1802], sp                                 ; $54d6: $08 $02 $18
	stop                                             ; $54d9: $10 $00
	add  b                                           ; $54db: $80
	db   $10                                         ; $54dc: $10
	ld   [$0800], sp                                 ; $54dd: $08 $00 $08
	nop                                              ; $54e0: $00
	ld   a, $1c                                      ; $54e1: $3e $1c
	ld   a, $0c                                      ; $54e3: $3e $0c
	stop                                             ; $54e5: $10 $00
	add  b                                           ; $54e7: $80
	inc  e                                           ; $54e8: $1c
	inc  b                                           ; $54e9: $04
	pop  bc                                          ; $54ea: $c1
	ld   b, c                                        ; $54eb: $41
	ld   [hl], a                                     ; $54ec: $77
	sub  h                                           ; $54ed: $94
	sbc  h                                           ; $54ee: $9c
	add  b                                           ; $54ef: $80
	db   $e3                                         ; $54f0: $e3
	add  b                                           ; $54f1: $80
	rst  $38                                         ; $54f2: $ff
	ld   bc, $807f                                   ; $54f3: $01 $7f $80
	rst  $38                                         ; $54f6: $ff
	nop                                              ; $54f7: $00
	rst  $38                                         ; $54f8: $ff

jr_09c_54f9:
	nop                                              ; $54f9: $00
	rst  $38                                         ; $54fa: $ff
	nop                                              ; $54fb: $00
	rst  $38                                         ; $54fc: $ff
	nop                                              ; $54fd: $00
	rst  $38                                         ; $54fe: $ff
	nop                                              ; $54ff: $00
	rst  $38                                         ; $5500: $ff
	nop                                              ; $5501: $00
	rst  $38                                         ; $5502: $ff
	nop                                              ; $5503: $00
	or   [hl]                                        ; $5504: $b6
	nop                                              ; $5505: $00
	db   $ed                                         ; $5506: $ed
	nop                                              ; $5507: $00
	adc  b                                           ; $5508: $88
	nop                                              ; $5509: $00
	ld   d, $03                                      ; $550a: $16 $03
	nop                                              ; $550c: $00
	rrca                                             ; $550d: $0f
	inc  bc                                          ; $550e: $03
	rra                                              ; $550f: $1f
	rrca                                             ; $5510: $0f
	ld   a, a                                        ; $5511: $7f
	rra                                              ; $5512: $1f
	rst  $38                                         ; $5513: $ff
	ld   a, a                                        ; $5514: $7f
	rst  $28                                         ; $5515: $ef
	rst  $38                                         ; $5516: $ff
	adc  a                                           ; $5517: $8f
	rst  $38                                         ; $5518: $ff
	ld   c, a                                        ; $5519: $4f
	rst  $38                                         ; $551a: $ff
	adc  a                                           ; $551b: $8f
	rst  $38                                         ; $551c: $ff
	adc  [hl]                                        ; $551d: $8e
	cp   a                                           ; $551e: $bf
	sub  b                                           ; $551f: $90
	ld   a, l                                        ; $5520: $7d
	add  e                                           ; $5521: $83
	add  l                                           ; $5522: $85
	nop                                              ; $5523: $00
	ld   c, $01                                      ; $5524: $0e $01
	nop                                              ; $5526: $00
	rst  ToBoot                                         ; $5527: $c7
	ld   bc, $c7e8                                   ; $5528: $01 $e8 $c7
	sub  a                                           ; $552b: $97
	rst  $28                                         ; $552c: $ef
	ld   l, a                                        ; $552d: $6f
	rst  $38                                         ; $552e: $ff
	ccf                                              ; $552f: $3f
	rst  $38                                         ; $5530: $ff
	cp   a                                           ; $5531: $bf
	ei                                               ; $5532: $fb
	cp   e                                           ; $5533: $bb
	add  c                                           ; $5534: $81
	rst  $30                                         ; $5535: $f7
	ld   b, $34                                      ; $5536: $06 $34
	rst  $28                                         ; $5538: $ef
	adc  l                                           ; $5539: $8d
	ld   l, a                                        ; $553a: $6f
	ldh  a, [rIE]                                    ; $553b: $f0 $ff
	cp   $85                                         ; $553d: $fe $85
	nop                                              ; $553f: $00
	ld   bc, $00ff                                   ; $5540: $01 $ff $00
	add  b                                           ; $5543: $80
	rst  $38                                         ; $5544: $ff
	inc  d                                           ; $5545: $14
	ccf                                              ; $5546: $3f
	rst  $38                                         ; $5547: $ff
	cp   a                                           ; $5548: $bf
	rst  $38                                         ; $5549: $ff
	ld   a, a                                        ; $554a: $7f
	rst  $38                                         ; $554b: $ff
	ld   a, a                                        ; $554c: $7f
	rst  $38                                         ; $554d: $ff
	ld   a, [hl]                                     ; $554e: $7e
	rst  $38                                         ; $554f: $ff
	cp   $ff                                         ; $5550: $fe $ff
	ld   a, a                                        ; $5552: $7f
	rst  $38                                         ; $5553: $ff
	dec  a                                           ; $5554: $3d
	rst  $38                                         ; $5555: $ff
	adc  h                                           ; $5556: $8c
	rst  JumpTable                                         ; $5557: $df
	ldh  a, [c]                                      ; $5558: $f2
	rst  $28                                         ; $5559: $ef
	di                                               ; $555a: $f3
	add  a                                           ; $555b: $87
	nop                                              ; $555c: $00
	ld   d, $c0                                      ; $555d: $16 $c0
	nop                                              ; $555f: $00
	ldh  a, [$c0]                                    ; $5560: $f0 $c0
	ld   hl, sp-$10                                  ; $5562: $f8 $f0
	db   $fc                                         ; $5564: $fc
	ld   hl, sp-$28                                  ; $5565: $f8 $d8
	ld   hl, sp-$5a                                  ; $5567: $f8 $a6
	db   $fc                                         ; $5569: $fc
	ld   a, e                                        ; $556a: $7b
	cp   $f9                                         ; $556b: $fe $f9
	ccf                                              ; $556d: $3f
	cp   b                                           ; $556e: $b8
	rst  JumpTable                                         ; $556f: $df
	ld   e, $ef                                      ; $5570: $1e $ef
	xor  l                                           ; $5572: $ad
	rst  $30                                         ; $5573: $f7
	add  hl, bc                                      ; $5574: $09
	add  l                                           ; $5575: $85
	nop                                              ; $5576: $00
	jr   jr_09c_54f9                                 ; $5577: $18 $80

	nop                                              ; $5579: $00
	ret  nz                                          ; $557a: $c0

	add  b                                           ; $557b: $80
	ldh  [$c0], a                                    ; $557c: $e0 $c0
	ldh  a, [$e0]                                    ; $557e: $f0 $e0
	ld   hl, sp-$10                                  ; $5580: $f8 $f0
	db   $ec                                         ; $5582: $ec
	add  sp, $76                                     ; $5583: $e8 $76
	db   $f4                                         ; $5585: $f4
	rst  $30                                         ; $5586: $f7
	or   $ba                                         ; $5587: $f6 $ba
	ld   a, d                                        ; $5589: $7a
	ld   a, c                                        ; $558a: $79
	ld   a, e                                        ; $558b: $7b
	ld   e, a                                        ; $558c: $5f
	cp   l                                           ; $558d: $bd
	cp   h                                           ; $558e: $bc
	cp   l                                           ; $558f: $bd
	ld   e, [hl]                                     ; $5590: $5e
	add  c                                           ; $5591: $81
	nop                                              ; $5592: $00
	nop                                              ; $5593: $00
	add  b                                           ; $5594: $80
	add  e                                           ; $5595: $83
	nop                                              ; $5596: $00
	nop                                              ; $5597: $00
	ret  nz                                          ; $5598: $c0

	add  c                                           ; $5599: $81
	add  b                                           ; $559a: $80
	nop                                              ; $559b: $00
	nop                                              ; $559c: $00
	add  a                                           ; $559d: $87
	add  b                                           ; $559e: $80
	nop                                              ; $559f: $00
	ret  nz                                          ; $55a0: $c0

	add  c                                           ; $55a1: $81
	nop                                              ; $55a2: $00
	nop                                              ; $55a3: $00
	add  b                                           ; $55a4: $80
	add  c                                           ; $55a5: $81
	nop                                              ; $55a6: $00
	inc  b                                           ; $55a7: $04
	ld   h, e                                        ; $55a8: $63
	cp   l                                           ; $55a9: $bd
	xor  l                                           ; $55aa: $ad
	db   $dd                                         ; $55ab: $dd
	add  hl, de                                      ; $55ac: $19
	add  e                                           ; $55ad: $83
	ld   e, h                                        ; $55ae: $5c
	nop                                              ; $55af: $00
	ld   d, h                                        ; $55b0: $54
	add  c                                           ; $55b1: $81
	ld   e, h                                        ; $55b2: $5c
	nop                                              ; $55b3: $00
	inc  e                                           ; $55b4: $1c
	add  d                                           ; $55b5: $82
	ld   e, l                                        ; $55b6: $5d
	add  hl, bc                                      ; $55b7: $09
	ret  c                                           ; $55b8: $d8

	db   $db                                         ; $55b9: $db
	cp   b                                           ; $55ba: $b8
	cp   h                                           ; $55bb: $bc
	ld   [hl], b                                     ; $55bc: $70
	ld   a, b                                        ; $55bd: $78
	ret  nz                                          ; $55be: $c0

	ldh  a, [rP1]                                    ; $55bf: $f0 $00
	ret  nz                                          ; $55c1: $c0

	add  l                                           ; $55c2: $85
	nop                                              ; $55c3: $00
	nop                                              ; $55c4: $00
	ld   bc, $0081                                   ; $55c5: $01 $81 $00
	nop                                              ; $55c8: $00
	ld   [bc], a                                     ; $55c9: $02
	add  e                                           ; $55ca: $83
	ld   bc, $0702                                   ; $55cb: $01 $02 $07
	inc  bc                                          ; $55ce: $03
	ld   bc, $0280                                   ; $55cf: $01 $80 $02
	nop                                              ; $55d2: $00
	ld   bc, $0380                                   ; $55d3: $01 $80 $03
	ld   [bc], a                                     ; $55d6: $02
	rrca                                             ; $55d7: $0f
	rlca                                             ; $55d8: $07
	dec  e                                           ; $55d9: $1d
	add  b                                           ; $55da: $80
	ld   c, $09                                      ; $55db: $0e $09
	inc  c                                           ; $55dd: $0c
	jr   c, @+$1f                                    ; $55de: $38 $1d

	inc  e                                           ; $55e0: $1c
	add  hl, de                                      ; $55e1: $19
	ld   [de], a                                     ; $55e2: $12
	dec  de                                          ; $55e3: $1b
	ld   l, d                                        ; $55e4: $6a
	inc  sp                                          ; $55e5: $33
	dec  [hl]                                        ; $55e6: $35
	add  c                                           ; $55e7: $81
	scf                                              ; $55e8: $37
	nop                                              ; $55e9: $00
	ld   sp, $3780                                   ; $55ea: $31 $80 $37
	ld   de, $0f2f                                   ; $55ed: $11 $2f $0f
	cpl                                              ; $55f0: $2f
	dec  hl                                          ; $55f1: $2b
	cpl                                              ; $55f2: $2f
	add  hl, hl                                      ; $55f3: $29
	cpl                                              ; $55f4: $2f
	ld   l, l                                        ; $55f5: $6d
	rla                                              ; $55f6: $17
	dec  d                                           ; $55f7: $15
	rla                                              ; $55f8: $17
	scf                                              ; $55f9: $37
	dec  bc                                          ; $55fa: $0b
	ld   a, [de]                                     ; $55fb: $1a
	ld   bc, $000f                                   ; $55fc: $01 $0f $00
	ld   bc, $0082                                   ; $55ff: $01 $82 $00
	nop                                              ; $5602: $00
	rst  $38                                         ; $5603: $ff
	add  b                                           ; $5604: $80
	rst  $30                                         ; $5605: $f7
	add  b                                           ; $5606: $80
	db   $e3                                         ; $5607: $e3
	inc  b                                           ; $5608: $04
	ld   b, c                                        ; $5609: $41
	ld   c, c                                        ; $560a: $49
	add  c                                           ; $560b: $81
	sub  l                                           ; $560c: $95
	nop                                              ; $560d: $00
	add  c                                           ; $560e: $81
	ld   b, d                                        ; $560f: $42
	nop                                              ; $5610: $00
	ld   h, b                                        ; $5611: $60
	add  c                                           ; $5612: $81
	add  c                                           ; $5613: $81
	add  d                                           ; $5614: $82
	nop                                              ; $5615: $00
	nop                                              ; $5616: $00
	ld   b, b                                        ; $5617: $40
	add  a                                           ; $5618: $87
	nop                                              ; $5619: $00
	ld   [bc], a                                     ; $561a: $02
	add  d                                           ; $561b: $82
	ld   a, l                                        ; $561c: $7d
	ld   a, $81                                      ; $561d: $3e $81
	cp   [hl]                                        ; $561f: $be
	add  b                                           ; $5620: $80
	cp   a                                           ; $5621: $bf
	nop                                              ; $5622: $00
	rra                                              ; $5623: $1f
	add  c                                           ; $5624: $81
	ld   e, a                                        ; $5625: $5f

jr_09c_5626:
	add  b                                           ; $5626: $80
	ld   c, a                                        ; $5627: $4f
	add  b                                           ; $5628: $80
	rrca                                             ; $5629: $0f
	add  c                                           ; $562a: $81
	rlca                                             ; $562b: $07
	add  c                                           ; $562c: $81
	rla                                              ; $562d: $17
	add  d                                           ; $562e: $82
	ld   d, $00                                      ; $562f: $16 $00
	ld   d, h                                        ; $5631: $54
	add  b                                           ; $5632: $80
	inc  [hl]                                        ; $5633: $34
	rrca                                             ; $5634: $0f
	dec  [hl]                                        ; $5635: $35
	pop  af                                          ; $5636: $f1
	ld   [hl+], a                                    ; $5637: $22
	dec  c                                           ; $5638: $0d
	nop                                              ; $5639: $00
	ld   bc, $3000                                   ; $563a: $01 $00 $30
	nop                                              ; $563d: $00
	inc  bc                                          ; $563e: $03
	nop                                              ; $563f: $00
	add  a                                           ; $5640: $87
	nop                                              ; $5641: $00
	ld   l, d                                        ; $5642: $6a
	nop                                              ; $5643: $00
	or   b                                           ; $5644: $b0
	add  b                                           ; $5645: $80
	ld   [bc], a                                     ; $5646: $02
	dec  de                                          ; $5647: $1b
	ld   a, d                                        ; $5648: $7a
	ld   c, e                                        ; $5649: $4b
	ret  nz                                          ; $564a: $c0

	ld   [de], a                                     ; $564b: $12
	db   $10                                         ; $564c: $10
	inc  d                                           ; $564d: $14
	nop                                              ; $564e: $00
	jr   z, jr_09c_5671                              ; $564f: $28 $20

	jr   nc, jr_09c_5653                             ; $5651: $30 $00

jr_09c_5653:
	ld   h, b                                        ; $5653: $60
	nop                                              ; $5654: $00
	ret  nz                                          ; $5655: $c0

	nop                                              ; $5656: $00
	add  b                                           ; $5657: $80
	nop                                              ; $5658: $00
	rra                                              ; $5659: $1f
	ld   [$0518], sp                                 ; $565a: $08 $18 $05
	dec  c                                           ; $565d: $0d
	nop                                              ; $565e: $00
	inc  b                                           ; $565f: $04
	nop                                              ; $5660: $00
	ld   [bc], a                                     ; $5661: $02
	nop                                              ; $5662: $00
	ld   bc, $0081                                   ; $5663: $01 $81 $00
	nop                                              ; $5666: $00
	ld   bc, $0081                                   ; $5667: $01 $81 $00
	nop                                              ; $566a: $00
	inc  bc                                          ; $566b: $03
	add  c                                           ; $566c: $81
	ld   bc, $0207                                   ; $566d: $01 $07 $02
	nop                                              ; $5670: $00

jr_09c_5671:
	jp   $2501                                       ; $5671: $c3 $01 $25


	ld   bc, $051d                                   ; $5674: $01 $1d $05
	add  b                                           ; $5677: $80
	ld   e, $03                                      ; $5678: $1e $03
	ld   a, a                                        ; $567a: $7f
	nop                                              ; $567b: $00
	add  b                                           ; $567c: $80
	nop                                              ; $567d: $00
	add  d                                           ; $567e: $82
	add  b                                           ; $567f: $80
	ld   a, [de]                                     ; $5680: $1a
	ret  nz                                          ; $5681: $c0

	ld   b, b                                        ; $5682: $40
	ld   h, b                                        ; $5683: $60
	jr   nz, jr_09c_56b6                             ; $5684: $20 $30

	ld   d, b                                        ; $5686: $50
	ld   e, b                                        ; $5687: $58
	ld   l, b                                        ; $5688: $68
	ld   l, h                                        ; $5689: $6c
	ld   [hl], h                                     ; $568a: $74
	or   $38                                         ; $568b: $f6 $38
	ld   a, c                                        ; $568d: $79
	ld   c, $3e                                      ; $568e: $0e $3e
	ld   bc, $000f                                   ; $5690: $01 $0f $00
	ld   bc, $3000                                   ; $5693: $01 $00 $30
	nop                                              ; $5696: $00
	cp   [hl]                                        ; $5697: $be
	nop                                              ; $5698: $00
	adc  l                                           ; $5699: $8d
	ld   bc, $8122                                   ; $569a: $01 $22 $81
	nop                                              ; $569d: $00
	nop                                              ; $569e: $00
	jr   nz, jr_09c_5626                             ; $569f: $20 $85

	nop                                              ; $56a1: $00
	inc  c                                           ; $56a2: $0c
	ld   bc, $0200                                   ; $56a3: $01 $00 $02
	nop                                              ; $56a6: $00
	inc  b                                           ; $56a7: $04
	ld   [bc], a                                     ; $56a8: $02
	sbc  d                                           ; $56a9: $9a
	ld   b, $67                                      ; $56aa: $06 $67
	sbc  b                                           ; $56ac: $98
	sbc  [hl]                                        ; $56ad: $9e
	nop                                              ; $56ae: $00
	ld   hl, sp-$7b                                  ; $56af: $f8 $85
	nop                                              ; $56b1: $00
	dec  bc                                          ; $56b2: $0b
	add  b                                           ; $56b3: $80
	nop                                              ; $56b4: $00
	ret  nz                                          ; $56b5: $c0

jr_09c_56b6:
	add  b                                           ; $56b6: $80
	add  e                                           ; $56b7: $83
	add  b                                           ; $56b8: $80
	adc  a                                           ; $56b9: $8f
	add  b                                           ; $56ba: $80
	rst  $38                                         ; $56bb: $ff
	ret  nz                                          ; $56bc: $c0

	call z, $80c0                                    ; $56bd: $cc $c0 $80
	or   b                                           ; $56c0: $b0
	add  b                                           ; $56c1: $80
	ld   a, b                                        ; $56c2: $78
	add  b                                           ; $56c3: $80
	cp   a                                           ; $56c4: $bf
	inc  c                                           ; $56c5: $0c
	rst  JumpTable                                         ; $56c6: $df
	sbc  h                                           ; $56c7: $9c
	xor  h                                           ; $56c8: $ac
	ret  z                                           ; $56c9: $c8

	ld   d, b                                        ; $56ca: $50
	ld   h, b                                        ; $56cb: $60
	xor  h                                           ; $56cc: $ac
	xor  b                                           ; $56cd: $a8
	ret  z                                           ; $56ce: $c8

	ld   d, b                                        ; $56cf: $50
	ld   d, [hl]                                     ; $56d0: $56
	inc  d                                           ; $56d1: $14
	ld   [hl], $83                                   ; $56d2: $36 $83
	nop                                              ; $56d4: $00
	inc  d                                           ; $56d5: $14
	add  b                                           ; $56d6: $80
	nop                                              ; $56d7: $00
	ret  nz                                          ; $56d8: $c0

	add  b                                           ; $56d9: $80
	and  b                                           ; $56da: $a0
	ret  nz                                          ; $56db: $c0

	db   $10                                         ; $56dc: $10
	ld   h, b                                        ; $56dd: $60
	ld   c, b                                        ; $56de: $48
	ld   [hl], b                                     ; $56df: $70
	inc  a                                           ; $56e0: $3c
	jr   c, jr_09c_5705                              ; $56e1: $38 $22

	jr   c, jr_09c_5702                              ; $56e3: $38 $1d

	sbc  h                                           ; $56e5: $9c
	sub  b                                           ; $56e6: $90
	sbc  h                                           ; $56e7: $9c
	sbc  [hl]                                        ; $56e8: $9e
	sbc  $c9                                         ; $56e9: $de $c9
	add  d                                           ; $56eb: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56ec: $cf
	ld   bc, $1def                                   ; $56ed: $01 $ef $1d
	add  e                                           ; $56f0: $83
	nop                                              ; $56f1: $00
	inc  de                                          ; $56f2: $13
	ret  nz                                          ; $56f3: $c0

	nop                                              ; $56f4: $00
	jr   nc, jr_09c_56f7                             ; $56f5: $30 $00

jr_09c_56f7:
	ld   c, b                                        ; $56f7: $48
	ld   d, b                                        ; $56f8: $50
	halt                                             ; $56f9: $76
	ld   l, b                                        ; $56fa: $68
	ld   l, c                                        ; $56fb: $69
	ld   l, h                                        ; $56fc: $6c
	dec  a                                           ; $56fd: $3d
	dec  [hl]                                        ; $56fe: $35
	inc  d                                           ; $56ff: $14
	ld   d, $9e                                      ; $5700: $16 $9e

jr_09c_5702:
	sbc  d                                           ; $5702: $9a
	adc  d                                           ; $5703: $8a
	adc  e                                           ; $5704: $8b

jr_09c_5705:
	adc  a                                           ; $5705: $8f
	adc  l                                           ; $5706: $8d
	add  b                                           ; $5707: $80
	add  l                                           ; $5708: $85
	add  b                                           ; $5709: $80
	dec  b                                           ; $570a: $05
	rlca                                             ; $570b: $07
	ld   bc, $7f00                                   ; $570c: $01 $00 $7f
	nop                                              ; $570f: $00
	ret  nz                                          ; $5710: $c0

	add  b                                           ; $5711: $80
	and  b                                           ; $5712: $a0
	ret  nz                                          ; $5713: $c0

	add  l                                           ; $5714: $85
	ld   b, b                                        ; $5715: $40
	add  c                                           ; $5716: $81
	add  b                                           ; $5717: $80
	nop                                              ; $5718: $00
	sub  b                                           ; $5719: $90
	add  b                                           ; $571a: $80
	add  b                                           ; $571b: $80
	ld   bc, $c8c0                                   ; $571c: $01 $c0 $c8
	add  b                                           ; $571f: $80
	ld   b, b                                        ; $5720: $40
	add  b                                           ; $5721: $80
	ret  nc                                          ; $5722: $d0

	nop                                              ; $5723: $00
	db   $10                                         ; $5724: $10
	add  b                                           ; $5725: $80
	sub  b                                           ; $5726: $90
	inc  b                                           ; $5727: $04
	jr   jr_09c_574a                                 ; $5728: $18 $20

	jr   nc, jr_09c_572c                             ; $572a: $30 $00

jr_09c_572c:
	ldh  [$83], a                                    ; $572c: $e0 $83
	nop                                              ; $572e: $00
	dec  c                                           ; $572f: $0d
	rlca                                             ; $5730: $07
	nop                                              ; $5731: $00
	rrca                                             ; $5732: $0f
	rlca                                             ; $5733: $07
	ld   a, [de]                                     ; $5734: $1a
	ld   c, $0d                                      ; $5735: $0e $0d
	rrca                                             ; $5737: $0f
	ld   a, [hl-]                                    ; $5738: $3a
	rra                                              ; $5739: $1f
	ld   a, l                                        ; $573a: $7d
	ccf                                              ; $573b: $3f
	cp   $7f                                         ; $573c: $fe $7f
	add  b                                           ; $573e: $80
	rst  $38                                         ; $573f: $ff
	add  d                                           ; $5740: $82
	rst  $30                                         ; $5741: $f7
	add  b                                           ; $5742: $80
	di                                               ; $5743: $f3
	add  b                                           ; $5744: $80
	pop  af                                          ; $5745: $f1
	add  b                                           ; $5746: $80
	ldh  a, [rP1]                                    ; $5747: $f0 $00
	rst  $38                                         ; $5749: $ff

jr_09c_574a:
	sbc  c                                           ; $574a: $99
	nop                                              ; $574b: $00
	inc  b                                           ; $574c: $04
	inc  bc                                          ; $574d: $03
	nop                                              ; $574e: $00
	inc  b                                           ; $574f: $04
	inc  bc                                          ; $5750: $03
	inc  b                                           ; $5751: $04
	add  c                                           ; $5752: $81
	nop                                              ; $5753: $00
	rlca                                             ; $5754: $07
	inc  bc                                          ; $5755: $03
	nop                                              ; $5756: $00
	inc  c                                           ; $5757: $0c
	ld   [bc], a                                     ; $5758: $02
	ld   a, [hl-]                                    ; $5759: $3a
	ld   a, [bc]                                     ; $575a: $0a
	ld   a, [$803a]                                  ; $575b: $fa $3a $80
	ld   a, d                                        ; $575e: $7a
	rlca                                             ; $575f: $07
	ld   a, [bc]                                     ; $5760: $0a
	adc  d                                           ; $5761: $8a
	add  d                                           ; $5762: $82
	ld   [hl], d                                     ; $5763: $72
	ldh  a, [c]                                      ; $5764: $f2
	adc  d                                           ; $5765: $8a
	ld   a, [$88f2]                                  ; $5766: $fa $f2 $88
	ld   a, [$030e]                                  ; $5769: $fa $0e $03
	ldh  a, [$f2]                                    ; $576c: $f0 $f2
	ldh  a, [$f4]                                    ; $576e: $f0 $f4
	ldh  [$e8], a                                    ; $5770: $e0 $e8
	ldh  [$f0], a                                    ; $5772: $e0 $f0
	ret  nz                                          ; $5774: $c0

	ldh  [$80], a                                    ; $5775: $e0 $80
	ret  nz                                          ; $5777: $c0

	nop                                              ; $5778: $00
	add  b                                           ; $5779: $80
	add  c                                           ; $577a: $81
	nop                                              ; $577b: $00
	add  hl, bc                                      ; $577c: $09
	add  b                                           ; $577d: $80
	nop                                              ; $577e: $00
	ld   b, b                                        ; $577f: $40
	add  b                                           ; $5780: $80
	add  e                                           ; $5781: $83
	add  b                                           ; $5782: $80
	adc  a                                           ; $5783: $8f
	add  e                                           ; $5784: $83
	cp   h                                           ; $5785: $bc
	call z, $c081                                    ; $5786: $cc $81 $c0
	ld   b, $b0                                      ; $5789: $06 $b0
	ld   b, b                                        ; $578b: $40
	inc  b                                           ; $578c: $04
	rla                                              ; $578d: $17
	dec  bc                                          ; $578e: $0b
	rrca                                             ; $578f: $0f
	rlca                                             ; $5790: $07
	adc  b                                           ; $5791: $88
	rrca                                             ; $5792: $0f
	add  b                                           ; $5793: $80
	ld   [rRAMG], sp                                 ; $5794: $08 $00 $00
	add  b                                           ; $5797: $80
	inc  bc                                          ; $5798: $03
	add  b                                           ; $5799: $80
	rlca                                             ; $579a: $07
	add  b                                           ; $579b: $80
	ld   [$0380], sp                                 ; $579c: $08 $80 $03
	ld   bc, $1505                                   ; $579f: $01 $05 $15
	add  b                                           ; $57a2: $80
	dec  b                                           ; $57a3: $05
	ld   bc, $0d02                                   ; $57a4: $01 $02 $0d
	rst  $38                                         ; $57a7: $ff
	nop                                              ; $57a8: $00
	db   $fc                                         ; $57a9: $fc
	nop                                              ; $57aa: $00
	ld   [bc], a                                     ; $57ab: $02
	ld   hl, sp-$09                                  ; $57ac: $f8 $f7
	rst  $38                                         ; $57ae: $ff
	add  b                                           ; $57af: $80
	rst  $28                                         ; $57b0: $ef
	daa                                              ; $57b1: $27
	sbc  a                                           ; $57b2: $9f
	sub  [hl]                                        ; $57b3: $96
	ccf                                              ; $57b4: $3f
	jr   c, @+$7f                                    ; $57b5: $38 $7d

	ld   a, a                                        ; $57b7: $7f
	ei                                               ; $57b8: $fb
	rst  JumpTable                                         ; $57b9: $df
	rst  $30                                         ; $57ba: $f7
	cp   [hl]                                        ; $57bb: $be
	xor  $71                                         ; $57bc: $ee $71
	rst  $30                                         ; $57be: $f7
	cp   $fb                                         ; $57bf: $fe $fb
	set  3, l                                        ; $57c1: $cb $dd
	push af                                          ; $57c3: $f5
	xor  $5d                                         ; $57c4: $ee $5d
	rst  $30                                         ; $57c6: $f7
	cpl                                              ; $57c7: $2f
	ei                                               ; $57c8: $fb
	reti                                             ; $57c9: $d9


	ei                                               ; $57ca: $fb
	cpl                                              ; $57cb: $2f
	ld   a, l                                        ; $57cc: $7d
	ld   bc, $fafb                                   ; $57cd: $01 $fb $fa
	db   $fd                                         ; $57d0: $fd
	or   l                                           ; $57d1: $b5
	cp   $82                                         ; $57d2: $fe $82
	cp   $f4                                         ; $57d4: $fe $f4
	ld   a, a                                        ; $57d6: $7f
	ld   e, a                                        ; $57d7: $5f
	ld   a, a                                        ; $57d8: $7f
	cp   $81                                         ; $57d9: $fe $81
	cp   a                                           ; $57db: $bf
	ld   [$dfff], sp                                 ; $57dc: $08 $ff $df
	adc  $df                                         ; $57df: $ce $df
	ld   e, a                                        ; $57e1: $5f
	rst  JumpTable                                         ; $57e2: $df
	rst  $38                                         ; $57e3: $ff
	ld   l, a                                        ; $57e4: $6f
	daa                                              ; $57e5: $27
	add  e                                           ; $57e6: $83
	ld   l, a                                        ; $57e7: $6f
	ld   [bc], a                                     ; $57e8: $02
	ld   l, l                                        ; $57e9: $6d
	ld   l, a                                        ; $57ea: $6f
	ld   c, e                                        ; $57eb: $4b
	add  b                                           ; $57ec: $80

jr_09c_57ed:
	ld   l, a                                        ; $57ed: $6f
	add  b                                           ; $57ee: $80
	ld   l, [hl]                                     ; $57ef: $6e
	add  b                                           ; $57f0: $80

jr_09c_57f1:
	ld   e, [hl]                                     ; $57f1: $5e
	add  b                                           ; $57f2: $80
	ld   e, l                                        ; $57f3: $5d
	add  b                                           ; $57f4: $80
	jp   c, $b020                                    ; $57f5: $da $20 $b0

	or   d                                           ; $57f8: $b2
	nop                                              ; $57f9: $00
	ld   a, b                                        ; $57fa: $78
	nop                                              ; $57fb: $00
	dec  c                                           ; $57fc: $0d
	nop                                              ; $57fd: $00
	adc  $00                                         ; $57fe: $ce $00
	rst  $30                                         ; $5800: $f7
	add  b                                           ; $5801: $80
	cp   a                                           ; $5802: $bf
	add  b                                           ; $5803: $80
	rst  $28                                         ; $5804: $ef
	ldh  [$39], a                                    ; $5805: $e0 $39
	jr   c, @+$40                                    ; $5807: $38 $3e

	ld   c, $bf                                      ; $5809: $0e $bf
	ld   bc, $008d                                   ; $580b: $01 $8d $00
	ld   b, $00                                      ; $580e: $06 $00

jr_09c_5810:
	sbc  h                                           ; $5810: $9c
	nop                                              ; $5811: $00
	rst  $38                                         ; $5812: $ff
	nop                                              ; $5813: $00
	sbc  a                                           ; $5814: $9f
	ld   bc, $07ff                                   ; $5815: $01 $ff $07
	add  b                                           ; $5818: $80
	rrca                                             ; $5819: $0f
	add  b                                           ; $581a: $80
	add  e                                           ; $581b: $83
	inc  b                                           ; $581c: $04
	ld   [hl], e                                     ; $581d: $73
	or   e                                           ; $581e: $b3
	and  c                                           ; $581f: $a1
	jr   nz, jr_09c_5883                             ; $5820: $20 $61

	add  b                                           ; $5822: $80
	ld   b, b                                        ; $5823: $40
	dec  b                                           ; $5824: $05
	add  b                                           ; $5825: $80
	or   b                                           ; $5826: $b0
	and  b                                           ; $5827: $a0
	and  c                                           ; $5828: $a1
	pop  bc                                          ; $5829: $c1
	ret  c                                           ; $582a: $d8

	add  b                                           ; $582b: $80
	ret  nc                                          ; $582c: $d0

	rla                                              ; $582d: $17
	ldh  [rAUD2LOW], a                               ; $582e: $e0 $18
	sub  b                                           ; $5830: $90
	rst  $38                                         ; $5831: $ff
	add  d                                           ; $5832: $82
	cp   $61                                         ; $5833: $fe $61
	ld   hl, sp+$38                                  ; $5835: $f8 $38
	ld   a, h                                        ; $5837: $7c
	inc  e                                           ; $5838: $1c
	inc  a                                           ; $5839: $3c
	inc  c                                           ; $583a: $0c
	sbc  h                                           ; $583b: $9c
	add  d                                           ; $583c: $82
	ld   [$05e2], a                                  ; $583d: $ea $e2 $05
	ld   bc, $44c7                                   ; $5840: $01 $c7 $44
	ld   a, h                                        ; $5843: $7c
	add  c                                           ; $5844: $81
	ld   bc, $3e80                                   ; $5845: $01 $80 $3e
	ld   bc, $363f                                   ; $5848: $01 $3f $36
	add  b                                           ; $584b: $80
	ld   [hl-], a                                    ; $584c: $32
	add  c                                           ; $584d: $81
	ld   d, d                                        ; $584e: $52
	nop                                              ; $584f: $00
	inc  hl                                          ; $5850: $23
	add  c                                           ; $5851: $81
	ld   hl, sp-$7c                                  ; $5852: $f8 $84
	db   $fc                                         ; $5854: $fc
	add  h                                           ; $5855: $84
	ld   hl, sp+$02                                  ; $5856: $f8 $02
	ei                                               ; $5858: $fb
	add  sp, $6a                                     ; $5859: $e8 $6a
	add  c                                           ; $585b: $81
	ld   [hl], d                                     ; $585c: $72
	nop                                              ; $585d: $00
	scf                                              ; $585e: $37
	add  c                                           ; $585f: $81
	add  hl, sp                                      ; $5860: $39
	nop                                              ; $5861: $00
	dec  de                                          ; $5862: $1b
	add  c                                           ; $5863: $81
	ld   e, $80                                      ; $5864: $1e $80
	ld   b, $01                                      ; $5866: $06 $01
	add  e                                           ; $5868: $83
	ld   a, b                                        ; $5869: $78
	add  b                                           ; $586a: $80
	jr   c, jr_09c_57ed                              ; $586b: $38 $80

	jr   jr_09c_57f1                                 ; $586d: $18 $82

	ld   [$8880], sp                                 ; $586f: $08 $80 $88
	nop                                              ; $5872: $00
	sbc  b                                           ; $5873: $98
	add  c                                           ; $5874: $81
	sub  h                                           ; $5875: $94
	nop                                              ; $5876: $00
	ld   a, $81                                      ; $5877: $3e $81
	db   $10                                         ; $5879: $10
	add  e                                           ; $587a: $83
	ld   de, $1280                                   ; $587b: $11 $80 $12
	add  c                                           ; $587e: $81
	ld   [hl+], a                                    ; $587f: $22
	add  b                                           ; $5880: $80
	ld   [bc], a                                     ; $5881: $02
	inc  b                                           ; $5882: $04

jr_09c_5883:
	ld   h, $20                                      ; $5883: $26 $20
	nop                                              ; $5885: $00
	ld   [bc], a                                     ; $5886: $02
	db   $10                                         ; $5887: $10
	add  c                                           ; $5888: $81
	nop                                              ; $5889: $00
	ld   bc, $2120                                   ; $588a: $01 $20 $21
	add  d                                           ; $588d: $82
	jr   nc, jr_09c_5810                             ; $588e: $30 $80

	jr   c, @+$04                                    ; $5890: $38 $02

	db   $10                                         ; $5892: $10
	ld   c, $86                                      ; $5893: $0e $86
	add  b                                           ; $5895: $80
	ld   b, $05                                      ; $5896: $06 $05
	ld   d, $56                                      ; $5898: $16 $56
	sub  a                                           ; $589a: $97
	or   a                                           ; $589b: $b7
	scf                                              ; $589c: $37
	inc  sp                                          ; $589d: $33
	add  d                                           ; $589e: $82
	ld   e, e                                        ; $589f: $5b
	ld   [bc], a                                     ; $58a0: $02
	ld   l, e                                        ; $58a1: $6b
	ld   h, d                                        ; $58a2: $62
	ld   [$0080], sp                                 ; $58a3: $08 $80 $00
	inc  h                                           ; $58a6: $24
	ret  nz                                          ; $58a7: $c0

	nop                                              ; $58a8: $00
	add  b                                           ; $58a9: $80
	nop                                              ; $58aa: $00
	ld   h, b                                        ; $58ab: $60
	nop                                              ; $58ac: $00
	add  c                                           ; $58ad: $81
	nop                                              ; $58ae: $00
	ld   bc, $e200                                   ; $58af: $01 $00 $e2
	nop                                              ; $58b2: $00
	cp   b                                           ; $58b3: $b8
	ld   hl, sp-$07                                  ; $58b4: $f8 $f9
	ld   hl, sp-$39                                  ; $58b6: $f8 $c7
	ret  nz                                          ; $58b8: $c0

	ccf                                              ; $58b9: $3f
	nop                                              ; $58ba: $00
	db   $fd                                         ; $58bb: $fd
	nop                                              ; $58bc: $00
	ldh  [rP1], a                                    ; $58bd: $e0 $00
	ld   bc, $4c00                                   ; $58bf: $01 $00 $4c
	nop                                              ; $58c2: $00
	sbc  d                                           ; $58c3: $9a
	inc  bc                                          ; $58c4: $03
	ei                                               ; $58c5: $fb
	inc  bc                                          ; $58c6: $03
	cp   e                                           ; $58c7: $bb
	inc  bc                                          ; $58c8: $03
	pop  af                                          ; $58c9: $f1
	ld   bc, $81c1                                   ; $58ca: $01 $c1 $81
	ld   bc, $8000                                   ; $58cd: $01 $00 $80
	add  c                                           ; $58d0: $81
	nop                                              ; $58d1: $00
	nop                                              ; $58d2: $00
	daa                                              ; $58d3: $27
	add  c                                           ; $58d4: $81
	ld   d, b                                        ; $58d5: $50
	nop                                              ; $58d6: $00
	ldh  a, [$81]                                    ; $58d7: $f0 $81
	or   b                                           ; $58d9: $b0
	nop                                              ; $58da: $00
	ldh  a, [$80]                                    ; $58db: $f0 $80
	ret  nc                                          ; $58dd: $d0

	add  c                                           ; $58de: $81
	ret  z                                           ; $58df: $c8

	add  b                                           ; $58e0: $80
	add  sp, $00                                     ; $58e1: $e8 $00
	rst  $20                                         ; $58e3: $e7
	add  a                                           ; $58e4: $87
	inc  bc                                          ; $58e5: $03
	nop                                              ; $58e6: $00
	rrca                                             ; $58e7: $0f
	add  e                                           ; $58e8: $83
	inc  de                                          ; $58e9: $13
	ld   bc, $3cb4                                   ; $58ea: $01 $b4 $3c
	add  b                                           ; $58ed: $80
	inc  e                                           ; $58ee: $1c
	add  h                                           ; $58ef: $84
	ld   e, $00                                      ; $58f0: $1e $00
	ld   c, a                                        ; $58f2: $4f
	add  e                                           ; $58f3: $83
	adc  a                                           ; $58f4: $8f
	inc  bc                                          ; $58f5: $03
	add  hl, hl                                      ; $58f6: $29
	ld   h, $2b                                      ; $58f7: $26 $2b
	inc  hl                                          ; $58f9: $23
	add  b                                           ; $58fa: $80
	ld   [hl-], a                                    ; $58fb: $32
	ld   bc, $5034                                   ; $58fc: $01 $34 $50
	add  b                                           ; $58ff: $80
	stop                                             ; $5900: $10 $00
	ld   [de], a                                     ; $5902: $12
	add  c                                           ; $5903: $81
	db   $10                                         ; $5904: $10
	ld   [de], a                                     ; $5905: $12
	nop                                              ; $5906: $00
	jr   nz, jr_09c_5947                             ; $5907: $20 $3e

	nop                                              ; $5909: $00
	cp   b                                           ; $590a: $b8
	nop                                              ; $590b: $00
	ld   e, a                                        ; $590c: $5f
	nop                                              ; $590d: $00
	rla                                              ; $590e: $17
	nop                                              ; $590f: $00
	daa                                              ; $5910: $27
	rlca                                             ; $5911: $07
	dec  bc                                          ; $5912: $0b
	inc  bc                                          ; $5913: $03
	dec  d                                           ; $5914: $15
	ld   bc, $303a                                   ; $5915: $01 $3a $30
	ld   sp, hl                                      ; $5918: $f9
	rst  $38                                         ; $5919: $ff
	nop                                              ; $591a: $00
	rst  $38                                         ; $591b: $ff
	nop                                              ; $591c: $00
	rst  $38                                         ; $591d: $ff
	nop                                              ; $591e: $00
	rst  $38                                         ; $591f: $ff
	nop                                              ; $5920: $00
	ld   sp, hl                                      ; $5921: $f9
	nop                                              ; $5922: $00
	inc  e                                           ; $5923: $1c
	ld   bc, $0096                                   ; $5924: $01 $96 $00
	ld   [$0001], sp                                 ; $5927: $08 $01 $00
	ld   [bc], a                                     ; $592a: $02
	ld   bc, $0304                                   ; $592b: $01 $04 $03
	ld   [bc], a                                     ; $592e: $02
	inc  bc                                          ; $592f: $03
	inc  b                                           ; $5930: $04
	adc  c                                           ; $5931: $89
	nop                                              ; $5932: $00
	dec  bc                                          ; $5933: $0b
	inc  bc                                          ; $5934: $03
	nop                                              ; $5935: $00
	rrca                                             ; $5936: $0f
	inc  bc                                          ; $5937: $03
	rra                                              ; $5938: $1f
	rrca                                             ; $5939: $0f
	ccf                                              ; $593a: $3f
	rra                                              ; $593b: $1f
	ld   a, a                                        ; $593c: $7f
	ccf                                              ; $593d: $3f
	rst  $38                                         ; $593e: $ff
	ld   a, a                                        ; $593f: $7f
	add  b                                           ; $5940: $80
	db   $fc                                         ; $5941: $fc
	ld   b, $f0                                      ; $5942: $06 $f0
	di                                               ; $5944: $f3
	db   $e3                                         ; $5945: $e3
	rst  $28                                         ; $5946: $ef

jr_09c_5947:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5947: $cf
	rst  JumpTable                                         ; $5948: $df
	ldh  [$87], a                                    ; $5949: $e0 $87
	nop                                              ; $594b: $00
	dec  b                                           ; $594c: $05
	ld   bc, $f700                                   ; $594d: $01 $00 $f7
	ld   bc, $c7cf                                   ; $5950: $01 $cf $c7
	add  b                                           ; $5953: $80
	xor  a                                           ; $5954: $af
	add  b                                           ; $5955: $80
	rst  JumpTable                                         ; $5956: $df
	add  b                                           ; $5957: $80
	cp   a                                           ; $5958: $bf
	add  b                                           ; $5959: $80
	rst  $38                                         ; $595a: $ff
	add  b                                           ; $595b: $80
	nop                                              ; $595c: $00
	ld   bc, $1fe0                                   ; $595d: $01 $e0 $1f
	add  d                                           ; $5960: $82
	ccf                                              ; $5961: $3f
	adc  b                                           ; $5962: $88
	nop                                              ; $5963: $00
	dec  b                                           ; $5964: $05
	ldh  a, [rP1]                                    ; $5965: $f0 $00
	db   $fc                                         ; $5967: $fc
	ldh  a, [rIE]                                    ; $5968: $f0 $ff
	db   $fc                                         ; $596a: $fc
	add  [hl]                                        ; $596b: $86
	rst  $38                                         ; $596c: $ff
	add  b                                           ; $596d: $80
	dec  a                                           ; $596e: $3d
	ld   [bc], a                                     ; $596f: $02
	ld   b, $c6                                      ; $5970: $06 $c6
	ret  nz                                          ; $5972: $c0

	add  b                                           ; $5973: $80
	ld   hl, sp+$13                                  ; $5974: $f8 $13
	cp   $c1                                         ; $5976: $fe $c1
	nop                                              ; $5978: $00
	ldh  a, [$c0]                                    ; $5979: $f0 $c0
	ld   hl, sp-$10                                  ; $597b: $f8 $f0
	db   $fc                                         ; $597d: $fc
	ld   hl, sp-$02                                  ; $597e: $f8 $fe
	db   $fc                                         ; $5980: $fc
	rst  $30                                         ; $5981: $f7
	cp   $f2                                         ; $5982: $fe $f2
	cp   $f2                                         ; $5984: $fe $f2
	cp   $f7                                         ; $5986: $fe $f7
	db   $eb                                         ; $5988: $eb
	ld   l, e                                        ; $5989: $6b
	add  b                                           ; $598a: $80
	ld   c, a                                        ; $598b: $4f
	add  b                                           ; $598c: $80
	ld   b, a                                        ; $598d: $47
	add  b                                           ; $598e: $80
	ld   d, a                                        ; $598f: $57
	add  c                                           ; $5990: $81
	ld   e, a                                        ; $5991: $5f
	add  c                                           ; $5992: $81
	sbc  a                                           ; $5993: $9f
	ld   bc, $7fbf                                   ; $5994: $01 $bf $7f
	add  e                                           ; $5997: $83
	nop                                              ; $5998: $00
	nop                                              ; $5999: $00
	ret  nz                                          ; $599a: $c0

	add  e                                           ; $599b: $83
	add  b                                           ; $599c: $80
	nop                                              ; $599d: $00
	ldh  [$83], a                                    ; $599e: $e0 $83
	ret  nz                                          ; $59a0: $c0

	nop                                              ; $59a1: $00
	ldh  a, [$81]                                    ; $59a2: $f0 $81
	ldh  [$80], a                                    ; $59a4: $e0 $80
	ret  nz                                          ; $59a6: $c0

	nop                                              ; $59a7: $00
	ret  c                                           ; $59a8: $d8

	add  c                                           ; $59a9: $81
	ret  nc                                          ; $59aa: $d0

	add  b                                           ; $59ab: $80
	ldh  [rP1], a                                    ; $59ac: $e0 $00
	db   $ec                                         ; $59ae: $ec
	add  c                                           ; $59af: $81
	add  sp, $05                                     ; $59b0: $e8 $05
	ret  nc                                          ; $59b2: $d0

	ldh  a, [$72]                                    ; $59b3: $f0 $72
	ldh  a, [$d0]                                    ; $59b5: $f0 $d0
	ldh  a, [$80]                                    ; $59b7: $f0 $80
	ret  nc                                          ; $59b9: $d0

	ld   bc, $d0d1                                   ; $59ba: $01 $d1 $d0
	add  b                                           ; $59bd: $80
	ret  c                                           ; $59be: $d8

	ld   bc, $d858                                   ; $59bf: $01 $58 $d8
	add  d                                           ; $59c2: $82
	ld   l, b                                        ; $59c3: $68
	add  b                                           ; $59c4: $80
	ld   h, b                                        ; $59c5: $60
	add  [hl]                                        ; $59c6: $86
	and  b                                           ; $59c7: $a0
	add  b                                           ; $59c8: $80
	add  b                                           ; $59c9: $80
	nop                                              ; $59ca: $00
	add  c                                           ; $59cb: $81
	add  e                                           ; $59cc: $83
	add  b                                           ; $59cd: $80
	nop                                              ; $59ce: $00
	add  d                                           ; $59cf: $82
	add  c                                           ; $59d0: $81
	add  b                                           ; $59d1: $80
	rrca                                             ; $59d2: $0f
	inc  b                                           ; $59d3: $04
	nop                                              ; $59d4: $00
	ld   [rROMB0], sp                                 ; $59d5: $08 $00 $20
	nop                                              ; $59d8: $00
	stop                                             ; $59d9: $10 $00
	ldh  [$80], a                                    ; $59db: $e0 $80
	or   b                                           ; $59dd: $b0
	ret  nz                                          ; $59de: $c0

	ld   e, b                                        ; $59df: $58
	ld   b, b                                        ; $59e0: $40
	ld   c, h                                        ; $59e1: $4c
	ld   h, b                                        ; $59e2: $60
	add  b                                           ; $59e3: $80
	jr   nz, jr_09c_59ea                             ; $59e4: $20 $04

	ld   h, $a0                                      ; $59e6: $26 $a0
	add  b                                           ; $59e8: $80

jr_09c_59e9:
	ret  nz                                          ; $59e9: $c0

jr_09c_59ea:
	ld   [hl+], a                                    ; $59ea: $22
	add  l                                           ; $59eb: $85
	nop                                              ; $59ec: $00
	inc  bc                                          ; $59ed: $03
	db   $fc                                         ; $59ee: $fc
	nop                                              ; $59ef: $00
	inc  bc                                          ; $59f0: $03
	nop                                              ; $59f1: $00
	add  b                                           ; $59f2: $80
	jr   @-$7e                                       ; $59f3: $18 $80

	ret  nz                                          ; $59f5: $c0

	add  b                                           ; $59f6: $80
	rra                                              ; $59f7: $1f
	add  b                                           ; $59f8: $80
	db   $fd                                         ; $59f9: $fd
	add  b                                           ; $59fa: $80
	cp   $80                                         ; $59fb: $fe $80
	db   $f4                                         ; $59fd: $f4
	add  b                                           ; $59fe: $80
	ld   a, [$d480]                                  ; $59ff: $fa $80 $d4
	add  b                                           ; $5a02: $80
	nop                                              ; $5a03: $00
	add  b                                           ; $5a04: $80
	ld   a, a                                        ; $5a05: $7f
	nop                                              ; $5a06: $00
	rst  $38                                         ; $5a07: $ff
	adc  c                                           ; $5a08: $89
	nop                                              ; $5a09: $00
	inc  bc                                          ; $5a0a: $03
	ret  nz                                          ; $5a0b: $c0

	nop                                              ; $5a0c: $00
	and  b                                           ; $5a0d: $a0
	add  b                                           ; $5a0e: $80
	add  [hl]                                        ; $5a0f: $86
	nop                                              ; $5a10: $00
	nop                                              ; $5a11: $00
	jr   nz, @-$7d                                   ; $5a12: $20 $81

	nop                                              ; $5a14: $00
	dec  b                                           ; $5a15: $05
	jr   nz, jr_09c_5a18                             ; $5a16: $20 $00

jr_09c_5a18:
	ret  nc                                          ; $5a18: $d0

	ret  nz                                          ; $5a19: $c0

	ld   a, d                                        ; $5a1a: $7a
	ld   [hl], l                                     ; $5a1b: $75
	add  h                                           ; $5a1c: $84
	ld   h, h                                        ; $5a1d: $64
	add  b                                           ; $5a1e: $80
	db   $ec                                         ; $5a1f: $ec
	add  b                                           ; $5a20: $80
	add  sp, -$7c                                    ; $5a21: $e8 $84
	ret  z                                           ; $5a23: $c8

	add  b                                           ; $5a24: $80
	ret  nz                                          ; $5a25: $c0

	inc  b                                           ; $5a26: $04
	add  d                                           ; $5a27: $82
	add  b                                           ; $5a28: $80
	add  e                                           ; $5a29: $83
	add  h                                           ; $5a2a: $84
	dec  b                                           ; $5a2b: $05
	add  b                                           ; $5a2c: $80
	ld   d, [hl]                                     ; $5a2d: $56
	add  b                                           ; $5a2e: $80
	cp   a                                           ; $5a2f: $bf
	add  c                                           ; $5a30: $81
	rst  $38                                         ; $5a31: $ff
	add  h                                           ; $5a32: $84
	nop                                              ; $5a33: $00
	add  h                                           ; $5a34: $84
	ld   bc, $0382                                   ; $5a35: $01 $82 $03
	db   $10                                         ; $5a38: $10
	ld   b, $07                                      ; $5a39: $06 $07
	inc  b                                           ; $5a3b: $04
	ld   b, $08                                      ; $5a3c: $06 $08
	dec  c                                           ; $5a3e: $0d
	ld   de, $f31b                                   ; $5a3f: $11 $1b $f3
	ld   h, $a6                                      ; $5a42: $26 $a6
	ld   e, $de                                      ; $5a44: $1e $de
	ld   e, $fe                                      ; $5a46: $1e $fe
	inc  c                                           ; $5a48: $0c
	xor  h                                           ; $5a49: $ac
	add  c                                           ; $5a4a: $81
	rst  $38                                         ; $5a4b: $ff
	ld   [$7fbf], sp                                 ; $5a4c: $08 $bf $7f
	ccf                                              ; $5a4f: $3f
	rra                                              ; $5a50: $1f
	rst  $30                                         ; $5a51: $f7
	ld   c, $16                                      ; $5a52: $0e $16
	ld   bc, $80f1                                   ; $5a54: $01 $f1 $80
	ld   c, $80                                      ; $5a57: $0e $80
	pop  af                                          ; $5a59: $f1
	dec  b                                           ; $5a5a: $05
	inc  c                                           ; $5a5b: $0c
	rrca                                             ; $5a5c: $0f
	ldh  [$fc], a                                    ; $5a5d: $e0 $fc
	nop                                              ; $5a5f: $00
	ldh  [$87], a                                    ; $5a60: $e0 $87
	nop                                              ; $5a62: $00
	nop                                              ; $5a63: $00
	ret  nz                                          ; $5a64: $c0

	add  c                                           ; $5a65: $81
	jr   nz, jr_09c_59e9                             ; $5a66: $20 $81

	nop                                              ; $5a68: $00
	nop                                              ; $5a69: $00
	db   $10                                         ; $5a6a: $10
	add  c                                           ; $5a6b: $81
	add  b                                           ; $5a6c: $80
	nop                                              ; $5a6d: $00
	adc  b                                           ; $5a6e: $88
	add  b                                           ; $5a6f: $80
	add  b                                           ; $5a70: $80
	inc  b                                           ; $5a71: $04
	add  h                                           ; $5a72: $84
	add  b                                           ; $5a73: $80
	and  e                                           ; $5a74: $a3
	and  c                                           ; $5a75: $a1
	ld   h, c                                        ; $5a76: $61
	add  e                                           ; $5a77: $83
	ld   h, b                                        ; $5a78: $60
	add  b                                           ; $5a79: $80
	ld   b, b                                        ; $5a7a: $40
	ld   a, [bc]                                     ; $5a7b: $0a
	inc  sp                                          ; $5a7c: $33
	nop                                              ; $5a7d: $00
	call z, $0f00                                    ; $5a7e: $cc $00 $0f
	nop                                              ; $5a81: $00
	ld   [bc], a                                     ; $5a82: $02
	rlca                                             ; $5a83: $07
	ld   b, $07                                      ; $5a84: $06 $07
	inc  bc                                          ; $5a86: $03
	add  c                                           ; $5a87: $81
	rlca                                             ; $5a88: $07
	add  d                                           ; $5a89: $82
	ld   b, $80                                      ; $5a8a: $06 $80
	dec  b                                           ; $5a8c: $05
	add  b                                           ; $5a8d: $80
	inc  bc                                          ; $5a8e: $03
	rlca                                             ; $5a8f: $07
	ld   b, $07                                      ; $5a90: $06 $07
	inc  e                                           ; $5a92: $1c
	rrca                                             ; $5a93: $0f
	add  hl, bc                                      ; $5a94: $09
	rrca                                             ; $5a95: $0f
	jr   nc, jr_09c_5aad                             ; $5a96: $30 $15

	add  b                                           ; $5a98: $80
	dec  bc                                          ; $5a99: $0b
	ld   bc, $2b6a                                   ; $5a9a: $01 $6a $2b
	add  b                                           ; $5a9d: $80
	dec  de                                          ; $5a9e: $1b
	add  b                                           ; $5a9f: $80
	rla                                              ; $5aa0: $17
	add  d                                           ; $5aa1: $82
	dec  d                                           ; $5aa2: $15
	add  b                                           ; $5aa3: $80
	dec  h                                           ; $5aa4: $25
	dec  b                                           ; $5aa5: $05
	ld   b, c                                        ; $5aa6: $41
	ld   bc, $0111                                   ; $5aa7: $01 $11 $01
	inc  [hl]                                        ; $5aaa: $34
	inc  b                                           ; $5aab: $04
	add  b                                           ; $5aac: $80

jr_09c_5aad:
	inc  c                                           ; $5aad: $0c
	add  b                                           ; $5aae: $80

jr_09c_5aaf:
	ld   [$3901], sp                                 ; $5aaf: $08 $01 $39
	add  hl, de                                      ; $5ab2: $19
	add  b                                           ; $5ab3: $80
	rla                                              ; $5ab4: $17
	ld   bc, $3676                                   ; $5ab5: $01 $76 $36
	add  b                                           ; $5ab8: $80
	ld   l, $08                                      ; $5ab9: $2e $08
	adc  $6e                                         ; $5abb: $ce $6e
	ld   e, $7e                                      ; $5abd: $1e $7e
	ld   a, [$3dfe]                                  ; $5abf: $fa $fe $3d
	db   $fd                                         ; $5ac2: $fd
	ld   a, e                                        ; $5ac3: $7b
	sbc  c                                           ; $5ac4: $99
	nop                                              ; $5ac5: $00
	nop                                              ; $5ac6: $00
	ld   bc, $0083                                   ; $5ac7: $01 $83 $00
	nop                                              ; $5aca: $00
	ld   [bc], a                                     ; $5acb: $02
	add  c                                           ; $5acc: $81
	ld   bc, $0703                                   ; $5acd: $01 $03 $07
	inc  bc                                          ; $5ad0: $03
	ld   [bc], a                                     ; $5ad1: $02
	inc  bc                                          ; $5ad2: $03
	add  b                                           ; $5ad3: $80
	ld   [bc], a                                     ; $5ad4: $02
	nop                                              ; $5ad5: $00
	ld   c, $81                                      ; $5ad6: $0e $81
	ld   b, $00                                      ; $5ad8: $06 $00
	dec  b                                           ; $5ada: $05
	add  e                                           ; $5adb: $83
	inc  b                                           ; $5adc: $04
	nop                                              ; $5add: $00
	ld   a, [bc]                                     ; $5ade: $0a
	add  e                                           ; $5adf: $83
	nop                                              ; $5ae0: $00
	nop                                              ; $5ae1: $00
	dec  b                                           ; $5ae2: $05
	add  c                                           ; $5ae3: $81
	nop                                              ; $5ae4: $00
	ld   [$bdeb], sp                                 ; $5ae5: $08 $eb $bd

jr_09c_5ae8:
	dec  l                                           ; $5ae8: $2d
	cp   l                                           ; $5ae9: $bd
	xor  l                                           ; $5aea: $ad
	cp   l                                           ; $5aeb: $bd
	ld   e, c                                        ; $5aec: $59
	ld   a, c                                        ; $5aed: $79
	ld   [hl], b                                     ; $5aee: $70
	add  c                                           ; $5aef: $81
	ld   a, b                                        ; $5af0: $78
	add  b                                           ; $5af1: $80
	ld   e, b                                        ; $5af2: $58
	nop                                              ; $5af3: $00
	ld   e, c                                        ; $5af4: $59
	add  c                                           ; $5af5: $81
	ld   e, b                                        ; $5af6: $58
	ld   b, $41                                      ; $5af7: $06 $41
	ld   b, b                                        ; $5af9: $40
	nop                                              ; $5afa: $00
	rrca                                             ; $5afb: $0f
	adc  a                                           ; $5afc: $8f
	jr   nc, jr_09c_5aaf                             ; $5afd: $30 $b0

	add  b                                           ; $5aff: $80
	ld   c, $80                                      ; $5b00: $0e $80
	ld   h, c                                        ; $5b02: $61
	add  b                                           ; $5b03: $80
	rra                                              ; $5b04: $1f
	ld   [bc], a                                     ; $5b05: $02
	ccf                                              ; $5b06: $3f
	jp   $8000                                       ; $5b07: $c3 $00 $80


	ld   b, $04                                      ; $5b0a: $06 $04
	ld   [$1906], sp                                 ; $5b0c: $08 $06 $19
	rrca                                             ; $5b0f: $0f
	inc  sp                                          ; $5b10: $33
	add  c                                           ; $5b11: $81
	rra                                              ; $5b12: $1f
	ld   [bc], a                                     ; $5b13: $02
	rla                                              ; $5b14: $17
	rra                                              ; $5b15: $1f
	cpl                                              ; $5b16: $2f
	add  c                                           ; $5b17: $81
	rrca                                             ; $5b18: $0f
	nop                                              ; $5b19: $00
	daa                                              ; $5b1a: $27
	add  c                                           ; $5b1b: $81
	rlca                                             ; $5b1c: $07
	inc  bc                                          ; $5b1d: $03
	ld   h, e                                        ; $5b1e: $63
	inc  hl                                          ; $5b1f: $23
	and  e                                           ; $5b20: $a3
	ld   h, e                                        ; $5b21: $63
	add  b                                           ; $5b22: $80
	ld   [hl], c                                     ; $5b23: $71

jr_09c_5b24:
	inc  h                                           ; $5b24: $24
	ret  c                                           ; $5b25: $d8

	jr   c, jr_09c_5b54                              ; $5b26: $38 $2c

	inc  e                                           ; $5b28: $1c
	xor  a                                           ; $5b29: $af
	nop                                              ; $5b2a: $00
	ldh  [rLCDC], a                                  ; $5b2b: $e0 $40
	ld   [hl], b                                     ; $5b2d: $70
	jr   nz, jr_09c_5ae8                             ; $5b2e: $20 $b8

	jr   nc, jr_09c_5b6e                             ; $5b30: $30 $3c

	jr   jr_09c_5b8c                                 ; $5b32: $18 $58

	jr   jr_09c_5b54                                 ; $5b34: $18 $1e

	sbc  h                                           ; $5b36: $9c
	cp   h                                           ; $5b37: $bc
	call c, $eecf                                    ; $5b38: $dc $cf $ee
	sub  $c6                                         ; $5b3b: $d6 $c6
	ld   a, [bc]                                     ; $5b3d: $0a
	ld   [bc], a                                     ; $5b3e: $02
	inc  b                                           ; $5b3f: $04
	nop                                              ; $5b40: $00
	ld   [bc], a                                     ; $5b41: $02
	nop                                              ; $5b42: $00
	ld   bc, $ff00                                   ; $5b43: $01 $00 $ff
	nop                                              ; $5b46: $00
	add  b                                           ; $5b47: $80
	nop                                              ; $5b48: $00
	ld   a, a                                        ; $5b49: $7f
	adc  l                                           ; $5b4a: $8d
	nop                                              ; $5b4b: $00
	dec  c                                           ; $5b4c: $0d
	inc  e                                           ; $5b4d: $1c
	nop                                              ; $5b4e: $00
	ld   h, e                                        ; $5b4f: $63
	inc  e                                           ; $5b50: $1c
	ldh  [$03], a                                    ; $5b51: $e0 $03
	add  c                                           ; $5b53: $81

jr_09c_5b54:
	ld   bc, $203f                                   ; $5b54: $01 $3f $20
	and  $99                                         ; $5b57: $e6 $99
	ld   h, b                                        ; $5b59: $60
	nop                                              ; $5b5a: $00
	add  b                                           ; $5b5b: $80
	rlca                                             ; $5b5c: $07
	sub  d                                           ; $5b5d: $92
	nop                                              ; $5b5e: $00
	db   $10                                         ; $5b5f: $10
	ret  nz                                          ; $5b60: $c0

	nop                                              ; $5b61: $00
	jr   nc, jr_09c_5b24                             ; $5b62: $30 $c0

	ret  z                                           ; $5b64: $c8

	ret  nc                                          ; $5b65: $d0

	ret  c                                           ; $5b66: $d8

	nop                                              ; $5b67: $00
	ld   [$c4c0], sp                                 ; $5b68: $08 $c0 $c4
	add  sp, $04                                     ; $5b6b: $e8 $04
	cpl                                              ; $5b6d: $2f

jr_09c_5b6e:
	rra                                              ; $5b6e: $1f
	ld   c, a                                        ; $5b6f: $4f
	ld   c, d                                        ; $5b70: $4a
	add  b                                           ; $5b71: $80
	ld   b, b                                        ; $5b72: $40
	nop                                              ; $5b73: $00
	jp   z, $a280                                    ; $5b74: $ca $80 $a2

	ld   [bc], a                                     ; $5b77: $02
	and  c                                           ; $5b78: $a1
	or   b                                           ; $5b79: $b0
	inc  h                                           ; $5b7a: $24
	add  c                                           ; $5b7b: $81
	jr   nz, jr_09c_5b7f                             ; $5b7c: $20 $01

	nop                                              ; $5b7e: $00

jr_09c_5b7f:
	ld   d, b                                        ; $5b7f: $50
	add  b                                           ; $5b80: $80
	ld   b, b                                        ; $5b81: $40
	inc  c                                           ; $5b82: $0c
	inc  [hl]                                        ; $5b83: $34
	ld   h, l                                        ; $5b84: $65
	inc  h                                           ; $5b85: $24
	ld   b, c                                        ; $5b86: $41
	inc  bc                                          ; $5b87: $03
	inc  hl                                          ; $5b88: $23
	add  hl, bc                                      ; $5b89: $09
	ld   d, b                                        ; $5b8a: $50
	ld   [hl+], a                                    ; $5b8b: $22

jr_09c_5b8c:
	dec  bc                                          ; $5b8c: $0b
	ld   c, $00                                      ; $5b8d: $0e $00
	ld   e, d                                        ; $5b8f: $5a
	add  b                                           ; $5b90: $80
	ld   h, l                                        ; $5b91: $65
	nop                                              ; $5b92: $00
	ld   b, l                                        ; $5b93: $45
	add  c                                           ; $5b94: $81
	ld   b, h                                        ; $5b95: $44
	ld   bc, $0604                                   ; $5b96: $01 $04 $06
	add  b                                           ; $5b99: $80
	ld   b, [hl]                                     ; $5b9a: $46
	ld   [bc], a                                     ; $5b9b: $02
	ld   h, [hl]                                     ; $5b9c: $66
	ld   h, d                                        ; $5b9d: $62
	ld   l, d                                        ; $5b9e: $6a
	add  b                                           ; $5b9f: $80
	ld   l, e                                        ; $5ba0: $6b
	dec  c                                           ; $5ba1: $0d
	ld   hl, $38a5                                   ; $5ba2: $21 $a5 $38
	ld   [hl-], a                                    ; $5ba5: $32
	ret  nc                                          ; $5ba6: $d0

	db   $10                                         ; $5ba7: $10
	inc  l                                           ; $5ba8: $2c
	adc  c                                           ; $5ba9: $89
	inc  bc                                          ; $5baa: $03
	inc  de                                          ; $5bab: $13
	add  e                                           ; $5bac: $83
	adc  c                                           ; $5bad: $89
	dec  b                                           ; $5bae: $05
	inc  bc                                          ; $5baf: $03
	add  b                                           ; $5bb0: $80
	nop                                              ; $5bb1: $00
	add  hl, bc                                      ; $5bb2: $09
	ld   [bc], a                                     ; $5bb3: $02
	push de                                          ; $5bb4: $d5
	call c, $4240                                    ; $5bb5: $dc $40 $42
	add  [hl]                                        ; $5bb8: $86
	adc  e                                           ; $5bb9: $8b
	di                                               ; $5bba: $f3
	ld   d, c                                        ; $5bbb: $51
	ld   e, c                                        ; $5bbc: $59
	add  b                                           ; $5bbd: $80
	ld   l, h                                        ; $5bbe: $6c
	inc  bc                                          ; $5bbf: $03
	ld   h, $a6                                      ; $5bc0: $26 $a6
	sub  e                                           ; $5bc2: $93
	ld   d, e                                        ; $5bc3: $53
	add  b                                           ; $5bc4: $80
	ld   l, c                                        ; $5bc5: $69
	ld   a, [bc]                                     ; $5bc6: $0a
	jp   nc, $0492                                   ; $5bc7: $d2 $92 $04

	dec  h                                           ; $5bca: $25
	ld   b, c                                        ; $5bcb: $41
	ldh  [$35], a                                    ; $5bcc: $e0 $35
	and  h                                           ; $5bce: $a4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bcf: $cf
	ccf                                              ; $5bd0: $3f
	ld   e, $80                                      ; $5bd1: $1e $80
	ld   bc, $0003                                   ; $5bd3: $01 $03 $00
	ld   c, b                                        ; $5bd6: $48
	or   a                                           ; $5bd7: $b7
	scf                                              ; $5bd8: $37
	add  b                                           ; $5bd9: $80
	inc  sp                                          ; $5bda: $33
	add  b                                           ; $5bdb: $80
	or   e                                           ; $5bdc: $b3
	add  b                                           ; $5bdd: $80
	ld   hl, $a082                                   ; $5bde: $21 $82 $a0
	add  d                                           ; $5be1: $82
	add  c                                           ; $5be2: $81
	add  h                                           ; $5be3: $84
	sub  l                                           ; $5be4: $95
	ld   [bc], a                                     ; $5be5: $02
	or   a                                           ; $5be6: $b7
	rst  $30                                         ; $5be7: $f7
	ld   [hl], a                                     ; $5be8: $77
	add  h                                           ; $5be9: $84
	ld   [hl], l                                     ; $5bea: $75
	inc  b                                           ; $5beb: $04
	rst  $28                                         ; $5bec: $ef
	cpl                                              ; $5bed: $2f
	rra                                              ; $5bee: $1f
	ld   c, a                                        ; $5bef: $4f
	ld   c, d                                        ; $5bf0: $4a
	add  b                                           ; $5bf1: $80
	ld   b, b                                        ; $5bf2: $40
	nop                                              ; $5bf3: $00
	jp   z, $a280                                    ; $5bf4: $ca $80 $a2

	ld   [bc], a                                     ; $5bf7: $02
	and  c                                           ; $5bf8: $a1
	or   b                                           ; $5bf9: $b0
	inc  h                                           ; $5bfa: $24
	add  c                                           ; $5bfb: $81
	jr   nz, jr_09c_5bff                             ; $5bfc: $20 $01

	nop                                              ; $5bfe: $00

jr_09c_5bff:
	ld   d, b                                        ; $5bff: $50
	add  b                                           ; $5c00: $80
	ld   b, b                                        ; $5c01: $40
	inc  c                                           ; $5c02: $0c
	inc  [hl]                                        ; $5c03: $34
	ld   h, l                                        ; $5c04: $65
	inc  h                                           ; $5c05: $24
	ld   b, c                                        ; $5c06: $41
	dec  e                                           ; $5c07: $1d
	rra                                              ; $5c08: $1f
	inc  hl                                          ; $5c09: $23
	ld   b, b                                        ; $5c0a: $40
	ld   a, [hl-]                                    ; $5c0b: $3a
	dec  bc                                          ; $5c0c: $0b
	ld   c, $00                                      ; $5c0d: $0e $00
	ld   e, d                                        ; $5c0f: $5a
	add  b                                           ; $5c10: $80
	ld   h, l                                        ; $5c11: $65
	nop                                              ; $5c12: $00
	ld   b, l                                        ; $5c13: $45
	add  c                                           ; $5c14: $81
	ld   b, h                                        ; $5c15: $44
	ld   bc, $0604                                   ; $5c16: $01 $04 $06
	add  b                                           ; $5c19: $80
	ld   b, [hl]                                     ; $5c1a: $46
	ld   [bc], a                                     ; $5c1b: $02
	ld   h, [hl]                                     ; $5c1c: $66
	ld   h, d                                        ; $5c1d: $62
	ld   l, d                                        ; $5c1e: $6a
	add  b                                           ; $5c1f: $80
	ld   l, e                                        ; $5c20: $6b
	dec  c                                           ; $5c21: $0d
	ld   hl, $38a5                                   ; $5c22: $21 $a5 $38
	ld   [hl-], a                                    ; $5c25: $32
	ret  nc                                          ; $5c26: $d0

	db   $10                                         ; $5c27: $10
	inc  l                                           ; $5c28: $2c
	adc  c                                           ; $5c29: $89
	inc  bc                                          ; $5c2a: $03
	inc  de                                          ; $5c2b: $13
	add  e                                           ; $5c2c: $83
	adc  c                                           ; $5c2d: $89
	dec  b                                           ; $5c2e: $05
	inc  bc                                          ; $5c2f: $03
	add  b                                           ; $5c30: $80
	nop                                              ; $5c31: $00
	add  hl, bc                                      ; $5c32: $09
	ld   [bc], a                                     ; $5c33: $02
	push de                                          ; $5c34: $d5
	call c, $4240                                    ; $5c35: $dc $40 $42
	add  [hl]                                        ; $5c38: $86
	adc  e                                           ; $5c39: $8b
	di                                               ; $5c3a: $f3
	ld   d, c                                        ; $5c3b: $51
	ld   e, c                                        ; $5c3c: $59
	add  b                                           ; $5c3d: $80
	ld   l, h                                        ; $5c3e: $6c
	inc  bc                                          ; $5c3f: $03
	ld   h, $a6                                      ; $5c40: $26 $a6
	sub  e                                           ; $5c42: $93
	ld   d, e                                        ; $5c43: $53
	add  b                                           ; $5c44: $80
	ld   l, c                                        ; $5c45: $69
	ld   a, [bc]                                     ; $5c46: $0a
	jp   nc, $0492                                   ; $5c47: $d2 $92 $04

	dec  h                                           ; $5c4a: $25
	ld   a, $ff                                      ; $5c4b: $3e $ff
	ldh  [$80], a                                    ; $5c4d: $e0 $80
	ld   e, d                                        ; $5c4f: $5a
	dec  sp                                          ; $5c50: $3b
	ld   e, $80                                      ; $5c51: $1e $80
	ld   bc, $0003                                   ; $5c53: $01 $03 $00
	ld   c, b                                        ; $5c56: $48
	or   a                                           ; $5c57: $b7
	scf                                              ; $5c58: $37
	add  b                                           ; $5c59: $80
	inc  sp                                          ; $5c5a: $33
	ld   bc, $33b3                                   ; $5c5b: $01 $b3 $33
	add  b                                           ; $5c5e: $80
	and  c                                           ; $5c5f: $a1
	ld   bc, $20a0                                   ; $5c60: $01 $a0 $20
	add  b                                           ; $5c63: $80
	and  b                                           ; $5c64: $a0
	add  d                                           ; $5c65: $82
	add  c                                           ; $5c66: $81
	add  h                                           ; $5c67: $84
	sub  l                                           ; $5c68: $95
	ld   [bc], a                                     ; $5c69: $02
	or   a                                           ; $5c6a: $b7
	rst  $30                                         ; $5c6b: $f7
	ld   [hl], a                                     ; $5c6c: $77
	add  h                                           ; $5c6d: $84
	ld   [hl], l                                     ; $5c6e: $75
	inc  b                                           ; $5c6f: $04
	rst  $28                                         ; $5c70: $ef
	cpl                                              ; $5c71: $2f
	rra                                              ; $5c72: $1f
	ld   c, a                                        ; $5c73: $4f
	ld   c, d                                        ; $5c74: $4a
	add  b                                           ; $5c75: $80
	ld   b, b                                        ; $5c76: $40
	nop                                              ; $5c77: $00
	jp   z, $a280                                    ; $5c78: $ca $80 $a2

	ld   [bc], a                                     ; $5c7b: $02
	and  c                                           ; $5c7c: $a1
	or   b                                           ; $5c7d: $b0
	inc  h                                           ; $5c7e: $24
	add  c                                           ; $5c7f: $81
	jr   nz, jr_09c_5c83                             ; $5c80: $20 $01

	nop                                              ; $5c82: $00

jr_09c_5c83:
	ld   d, b                                        ; $5c83: $50
	add  b                                           ; $5c84: $80
	ld   b, b                                        ; $5c85: $40
	inc  c                                           ; $5c86: $0c
	inc  [hl]                                        ; $5c87: $34
	ld   h, l                                        ; $5c88: $65
	inc  h                                           ; $5c89: $24
	ld   b, c                                        ; $5c8a: $41
	dec  e                                           ; $5c8b: $1d
	inc  bc                                          ; $5c8c: $03
	dec  a                                           ; $5c8d: $3d
	ld   c, [hl]                                     ; $5c8e: $4e
	inc  a                                           ; $5c8f: $3c
	ld   de, $001e                                   ; $5c90: $11 $1e $00
	ld   e, d                                        ; $5c93: $5a
	add  b                                           ; $5c94: $80
	ld   h, l                                        ; $5c95: $65
	nop                                              ; $5c96: $00
	ld   b, l                                        ; $5c97: $45
	add  c                                           ; $5c98: $81
	ld   b, h                                        ; $5c99: $44
	ld   bc, $0604                                   ; $5c9a: $01 $04 $06
	add  b                                           ; $5c9d: $80
	ld   b, [hl]                                     ; $5c9e: $46
	ld   [bc], a                                     ; $5c9f: $02
	ld   h, [hl]                                     ; $5ca0: $66
	ld   h, d                                        ; $5ca1: $62
	ld   l, d                                        ; $5ca2: $6a
	add  b                                           ; $5ca3: $80
	ld   l, e                                        ; $5ca4: $6b
	dec  c                                           ; $5ca5: $0d
	ld   hl, $38a5                                   ; $5ca6: $21 $a5 $38
	ld   [hl-], a                                    ; $5ca9: $32
	ret  nc                                          ; $5caa: $d0

	db   $10                                         ; $5cab: $10
	inc  l                                           ; $5cac: $2c
	adc  c                                           ; $5cad: $89
	inc  bc                                          ; $5cae: $03
	inc  de                                          ; $5caf: $13
	add  e                                           ; $5cb0: $83
	adc  c                                           ; $5cb1: $89
	dec  b                                           ; $5cb2: $05
	inc  bc                                          ; $5cb3: $03
	add  b                                           ; $5cb4: $80
	nop                                              ; $5cb5: $00
	add  hl, bc                                      ; $5cb6: $09
	ld   [bc], a                                     ; $5cb7: $02
	push de                                          ; $5cb8: $d5
	call c, $4240                                    ; $5cb9: $dc $40 $42
	add  [hl]                                        ; $5cbc: $86
	adc  e                                           ; $5cbd: $8b
	di                                               ; $5cbe: $f3
	ld   d, c                                        ; $5cbf: $51
	ld   e, c                                        ; $5cc0: $59
	add  b                                           ; $5cc1: $80
	ld   l, h                                        ; $5cc2: $6c
	inc  bc                                          ; $5cc3: $03
	ld   h, $a6                                      ; $5cc4: $26 $a6
	sub  e                                           ; $5cc6: $93
	ld   d, e                                        ; $5cc7: $53
	add  b                                           ; $5cc8: $80
	ld   l, c                                        ; $5cc9: $69
	ld   a, [bc]                                     ; $5cca: $0a
	jp   nc, $0492                                   ; $5ccb: $d2 $92 $04

	dec  h                                           ; $5cce: $25
	jr   nz, @+$01                                   ; $5ccf: $20 $ff

	ld   e, d                                        ; $5cd1: $5a
	cp   h                                           ; $5cd2: $bc
	ret  c                                           ; $5cd3: $d8

	ld   bc, $803e                                   ; $5cd4: $01 $3e $80
	ld   bc, $0003                                   ; $5cd7: $01 $03 $00
	ld   c, b                                        ; $5cda: $48
	or   a                                           ; $5cdb: $b7
	scf                                              ; $5cdc: $37
	add  b                                           ; $5cdd: $80
	inc  sp                                          ; $5cde: $33
	add  b                                           ; $5cdf: $80
	or   e                                           ; $5ce0: $b3
	add  b                                           ; $5ce1: $80
	ld   hl, $a082                                   ; $5ce2: $21 $82 $a0
	add  d                                           ; $5ce5: $82
	add  c                                           ; $5ce6: $81
	add  h                                           ; $5ce7: $84
	sub  l                                           ; $5ce8: $95
	ld   [bc], a                                     ; $5ce9: $02
	or   a                                           ; $5cea: $b7
	rst  $30                                         ; $5ceb: $f7
	ld   [hl], a                                     ; $5cec: $77
	add  h                                           ; $5ced: $84
	ld   [hl], l                                     ; $5cee: $75

jr_09c_5cef:
	nop                                              ; $5cef: $00
	rst  $38                                         ; $5cf0: $ff
	add  e                                           ; $5cf1: $83
	nop                                              ; $5cf2: $00
	add  b                                           ; $5cf3: $80
	ld   b, b                                        ; $5cf4: $40
	rlca                                             ; $5cf5: $07
	ldh  [$60], a                                    ; $5cf6: $e0 $60
	and  b                                           ; $5cf8: $a0
	ld   h, b                                        ; $5cf9: $60
	ld   d, d                                        ; $5cfa: $52
	ld   e, $02                                      ; $5cfb: $1e $02
	ld   c, $83                                      ; $5cfd: $0e $83
	nop                                              ; $5cff: $00

Jump_09c_5d00:
	dec  bc                                          ; $5d00: $0b
	add  b                                           ; $5d01: $80
	ld   h, b                                        ; $5d02: $60
	jr   nz, jr_09c_5cef                             ; $5d03: $20 $ea

	jr   jr_09c_5d35                                 ; $5d05: $18 $2e

	nop                                              ; $5d07: $00
	cp   $00                                         ; $5d08: $fe $00
	cp   $00                                         ; $5d0a: $fe $00
	inc  e                                           ; $5d0c: $1c
	add  e                                           ; $5d0d: $83
	nop                                              ; $5d0e: $00

jr_09c_5d0f:
	add  b                                           ; $5d0f: $80
	ld   b, b                                        ; $5d10: $40
	ld   b, $e0                                      ; $5d11: $06 $e0
	ld   h, b                                        ; $5d13: $60
	and  b                                           ; $5d14: $a0
	ld   h, b                                        ; $5d15: $60
	ld   d, d                                        ; $5d16: $52
	ld   e, $04                                      ; $5d17: $1e $04
	add  b                                           ; $5d19: $80
	add  hl, bc                                      ; $5d1a: $09
	ld   bc, $060e                                   ; $5d1b: $01 $0e $06
	add  b                                           ; $5d1e: $80
	nop                                              ; $5d1f: $00
	dec  bc                                          ; $5d20: $0b
	add  b                                           ; $5d21: $80
	ld   h, b                                        ; $5d22: $60
	jr   nz, jr_09c_5d0f                             ; $5d23: $20 $ea

	jr   jr_09c_5d55                                 ; $5d25: $18 $2e

	nop                                              ; $5d27: $00
	cp   $00                                         ; $5d28: $fe $00
	cp   $00                                         ; $5d2a: $fe $00
	inc  e                                           ; $5d2c: $1c
	rst  $38                                         ; $5d2d: $ff
	nop                                              ; $5d2e: $00
	rst  $38                                         ; $5d2f: $ff
	nop                                              ; $5d30: $00
	rst  $38                                         ; $5d31: $ff
	nop                                              ; $5d32: $00
	rst  $38                                         ; $5d33: $ff
	nop                                              ; $5d34: $00

jr_09c_5d35:
	rst  $38                                         ; $5d35: $ff
	nop                                              ; $5d36: $00
	rst  $38                                         ; $5d37: $ff
	nop                                              ; $5d38: $00
	rst  $10                                         ; $5d39: $d7
	nop                                              ; $5d3a: $00
	ld   hl, $0301                                   ; $5d3b: $21 $01 $03
	ccf                                              ; $5d3e: $3f
	rst  ToBoot                                         ; $5d3f: $c7
	rst  $38                                         ; $5d40: $ff
	ld   hl, sp-$7c                                  ; $5d41: $f8 $84
	rst  $38                                         ; $5d43: $ff
	add  b                                           ; $5d44: $80
	ccf                                              ; $5d45: $3f
	ld   b, $07                                      ; $5d46: $06 $07
	rst  ToBoot                                         ; $5d48: $c7
	ret  nz                                          ; $5d49: $c0

	ld   hl, sp-$09                                  ; $5d4a: $f8 $f7
	rst  $28                                         ; $5d4c: $ef
	rst  $38                                         ; $5d4d: $ff
	add  b                                           ; $5d4e: $80
	rst  JumpTable                                         ; $5d4f: $df
	nop                                              ; $5d50: $00
	rra                                              ; $5d51: $1f
	add  b                                           ; $5d52: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d53: $cf
	add  b                                           ; $5d54: $80

jr_09c_5d55:
	ldh  a, [c]                                      ; $5d55: $f2
	add  b                                           ; $5d56: $80
	db   $fc                                         ; $5d57: $fc
	add  b                                           ; $5d58: $80
	cp   $80                                         ; $5d59: $fe $80
	rst  $38                                         ; $5d5b: $ff
	dec  b                                           ; $5d5c: $05
	add  c                                           ; $5d5d: $81
	cp   [hl]                                        ; $5d5e: $be
	cp   c                                           ; $5d5f: $b9
	cp   d                                           ; $5d60: $ba
	nop                                              ; $5d61: $00
	ld   b, h                                        ; $5d62: $44
	add  b                                           ; $5d63: $80
	jr   c, jr_09c_5d67                              ; $5d64: $38 $01

	ld   h, b                                        ; $5d66: $60

jr_09c_5d67:
	ldh  [$80], a                                    ; $5d67: $e0 $80
	sbc  b                                           ; $5d69: $98
	add  b                                           ; $5d6a: $80
	ld   [hl], b                                     ; $5d6b: $70
	ld   [bc], a                                     ; $5d6c: $02
	pop  bc                                          ; $5d6d: $c1
	ld   b, c                                        ; $5d6e: $41
	ld   a, b                                        ; $5d6f: $78
	add  e                                           ; $5d70: $83
	nop                                              ; $5d71: $00
	add  b                                           ; $5d72: $80
	inc  bc                                          ; $5d73: $03
	add  b                                           ; $5d74: $80
	rrca                                             ; $5d75: $0f
	add  b                                           ; $5d76: $80
	ccf                                              ; $5d77: $3f
	add  b                                           ; $5d78: $80
	ldh  [$80], a                                    ; $5d79: $e0 $80
	add  b                                           ; $5d7b: $80
	add  b                                           ; $5d7c: $80
	ld   bc, $0f80                                   ; $5d7d: $01 $80 $0f
	add  b                                           ; $5d80: $80
	ld   a, a                                        ; $5d81: $7f
	add  d                                           ; $5d82: $82
	rst  $38                                         ; $5d83: $ff
	add  b                                           ; $5d84: $80
	ldh  a, [$80]                                    ; $5d85: $f0 $80
	nop                                              ; $5d87: $00
	add  b                                           ; $5d88: $80
	ld   bc, $ff84                                   ; $5d89: $01 $84 $ff
	add  b                                           ; $5d8c: $80
	db   $fc                                         ; $5d8d: $fc
	add  b                                           ; $5d8e: $80
	add  b                                           ; $5d8f: $80
	add  b                                           ; $5d90: $80
	ccf                                              ; $5d91: $3f
	add  h                                           ; $5d92: $84
	rst  $38                                         ; $5d93: $ff
	add  b                                           ; $5d94: $80
	ret  nz                                          ; $5d95: $c0

	add  h                                           ; $5d96: $84
	nop                                              ; $5d97: $00
	add  b                                           ; $5d98: $80
	add  b                                           ; $5d99: $80
	add  b                                           ; $5d9a: $80
	rst  $38                                         ; $5d9b: $ff
	add  b                                           ; $5d9c: $80
	jp   $fe80                                       ; $5d9d: $c3 $80 $fe


	add  b                                           ; $5da0: $80
	dec  b                                           ; $5da1: $05
	add  d                                           ; $5da2: $82
	inc  bc                                          ; $5da3: $03
	add  b                                           ; $5da4: $80
	rlca                                             ; $5da5: $07
	add  b                                           ; $5da6: $80
	ld   [hl], a                                     ; $5da7: $77
	add  b                                           ; $5da8: $80
	xor  $80                                         ; $5da9: $ee $80
	sbc  [hl]                                        ; $5dab: $9e
	ld   [bc], a                                     ; $5dac: $02
	rst  JumpTable                                         ; $5dad: $df
	ret  nz                                          ; $5dae: $c0

	and  b                                           ; $5daf: $a0
	add  c                                           ; $5db0: $81
	add  b                                           ; $5db1: $80
	nop                                              ; $5db2: $00
	ld   b, b                                        ; $5db3: $40
	add  h                                           ; $5db4: $84
	nop                                              ; $5db5: $00
	add  c                                           ; $5db6: $81
	add  b                                           ; $5db7: $80
	add  h                                           ; $5db8: $84
	nop                                              ; $5db9: $00
	add  d                                           ; $5dba: $82
	ld   bc, $0382                                   ; $5dbb: $01 $82 $03
	add  b                                           ; $5dbe: $80
	rlca                                             ; $5dbf: $07
	add  b                                           ; $5dc0: $80
	ld   a, a                                        ; $5dc1: $7f
	add  a                                           ; $5dc2: $87
	rst  $38                                         ; $5dc3: $ff
	ld   bc, $fffe                                   ; $5dc4: $01 $fe $ff
	add  c                                           ; $5dc7: $81
	db   $fd                                         ; $5dc8: $fd
	nop                                              ; $5dc9: $00

jr_09c_5dca:
	rst  $38                                         ; $5dca: $ff
	add  d                                           ; $5dcb: $82

jr_09c_5dcc:
	jp   $8301                                       ; $5dcc: $c3 $01 $83


	pop  hl                                          ; $5dcf: $e1
	add  c                                           ; $5dd0: $81
	ld   h, c                                        ; $5dd1: $61
	add  d                                           ; $5dd2: $82
	ldh  a, [$80]                                    ; $5dd3: $f0 $80
	ld   hl, sp+$03                                  ; $5dd5: $f8 $03
	rst  $20                                         ; $5dd7: $e7
	add  sp, -$05                                    ; $5dd8: $e8 $fb
	di                                               ; $5dda: $f3
	add  d                                           ; $5ddb: $82
	rst  $30                                         ; $5ddc: $f7
	ld   bc, $f7f3                                   ; $5ddd: $01 $f3 $f7
	add  b                                           ; $5de0: $80
	db   $e3                                         ; $5de1: $e3
	dec  b                                           ; $5de2: $05
	rst  ToBoot                                         ; $5de3: $c7
	push bc                                          ; $5de4: $c5
	rst  ToBoot                                         ; $5de5: $c7
	add  $f3                                         ; $5de6: $c6 $f3
	dec  bc                                          ; $5de8: $0b
	add  b                                           ; $5de9: $80
	add  c                                           ; $5dea: $81
	dec  b                                           ; $5deb: $05
	push bc                                          ; $5dec: $c5
	pop  bc                                          ; $5ded: $c1
	ldh  [c], a                                      ; $5dee: $e2
	ldh  [$f1], a                                    ; $5def: $e0 $f1
	ldh  a, [$80]                                    ; $5df1: $f0 $80
	ld   hl, sp-$80                                  ; $5df3: $f8 $80
	db   $fc                                         ; $5df5: $fc
	add  b                                           ; $5df6: $80
	cp   $00                                         ; $5df7: $fe $00
	nop                                              ; $5df9: $00
	add  l                                           ; $5dfa: $85
	rst  $38                                         ; $5dfb: $ff
	add  b                                           ; $5dfc: $80
	ld   a, a                                        ; $5dfd: $7f
	dec  bc                                          ; $5dfe: $0b
	cp   a                                           ; $5dff: $bf
	ccf                                              ; $5e00: $3f
	ld   e, a                                        ; $5e01: $5f
	rra                                              ; $5e02: $1f
	inc  hl                                          ; $5e03: $23
	inc  bc                                          ; $5e04: $03
	db   $10                                         ; $5e05: $10
	rst  $30                                         ; $5e06: $f7
	rst  $38                                         ; $5e07: $ff
	ld   sp, hl                                      ; $5e08: $f9
	rst  $38                                         ; $5e09: $ff
	cp   $88                                         ; $5e0a: $fe $88
	rst  $38                                         ; $5e0c: $ff
	ld   bc, $f608                                   ; $5e0d: $01 $08 $f6
	add  b                                           ; $5e10: $80
	cp   $01                                         ; $5e11: $fe $01
	rst  $38                                         ; $5e13: $ff
	db   $fd                                         ; $5e14: $fd
	add  b                                           ; $5e15: $80
	pop  af                                          ; $5e16: $f1
	add  b                                           ; $5e17: $80
	db   $fd                                         ; $5e18: $fd
	add  b                                           ; $5e19: $80
	push af                                          ; $5e1a: $f5
	nop                                              ; $5e1b: $00
	rst  $38                                         ; $5e1c: $ff
	add  c                                           ; $5e1d: $81
	ei                                               ; $5e1e: $fb
	ld   bc, $3fc7                                   ; $5e1f: $01 $c7 $3f
	add  b                                           ; $5e22: $80
	sbc  a                                           ; $5e23: $9f
	add  b                                           ; $5e24: $80
	rst  $28                                         ; $5e25: $ef
	add  b                                           ; $5e26: $80
	rst  $30                                         ; $5e27: $f7
	add  b                                           ; $5e28: $80
	di                                               ; $5e29: $f3
	dec  bc                                          ; $5e2a: $0b
	pop  af                                          ; $5e2b: $f1
	push af                                          ; $5e2c: $f5
	ldh  a, [$f2]                                    ; $5e2d: $f0 $f2
	rst  $30                                         ; $5e2f: $f7
	or   $a5                                         ; $5e30: $f6 $a5
	sbc  d                                           ; $5e32: $9a
	ld   hl, sp-$28                                  ; $5e33: $f8 $d8
	ld   hl, sp-$20                                  ; $5e35: $f8 $e0
	add  b                                           ; $5e37: $80
	ldh  a, [$80]                                    ; $5e38: $f0 $80
	ld   hl, sp-$80                                  ; $5e3a: $f8 $80
	db   $fc                                         ; $5e3c: $fc
	add  b                                           ; $5e3d: $80
	cp   $80                                         ; $5e3e: $fe $80
	ld   a, [hl]                                     ; $5e40: $7e
	add  [hl]                                        ; $5e41: $86
	nop                                              ; $5e42: $00
	add  b                                           ; $5e43: $80
	inc  bc                                          ; $5e44: $03
	add  b                                           ; $5e45: $80
	ld   c, $80                                      ; $5e46: $0e $80
	jr   jr_09c_5dca                                 ; $5e48: $18 $80

	jr   nc, jr_09c_5dcc                             ; $5e4a: $30 $80

	rlca                                             ; $5e4c: $07
	add  b                                           ; $5e4d: $80
	rra                                              ; $5e4e: $1f
	add  b                                           ; $5e4f: $80
	dec  sp                                          ; $5e50: $3b
	add  b                                           ; $5e51: $80
	rst  $20                                         ; $5e52: $e7
	add  b                                           ; $5e53: $80
	add  a                                           ; $5e54: $87
	add  b                                           ; $5e55: $80
	rrca                                             ; $5e56: $0f
	add  b                                           ; $5e57: $80
	ld   e, $80                                      ; $5e58: $1e $80
	inc  e                                           ; $5e5a: $1c
	add  b                                           ; $5e5b: $80
	rst  $38                                         ; $5e5c: $ff
	add  b                                           ; $5e5d: $80
	db   $fc                                         ; $5e5e: $fc
	add  b                                           ; $5e5f: $80
	ldh  a, [$80]                                    ; $5e60: $f0 $80
	ret  nz                                          ; $5e62: $c0

	add  b                                           ; $5e63: $80
	add  b                                           ; $5e64: $80
	add  b                                           ; $5e65: $80
	nop                                              ; $5e66: $00
	add  b                                           ; $5e67: $80
	inc  bc                                          ; $5e68: $03
	add  b                                           ; $5e69: $80
	rrca                                             ; $5e6a: $0f
	add  b                                           ; $5e6b: $80
	nop                                              ; $5e6c: $00
	add  b                                           ; $5e6d: $80
	ld   bc, $0380                                   ; $5e6e: $01 $80 $03
	add  b                                           ; $5e71: $80
	rla                                              ; $5e72: $17
	add  b                                           ; $5e73: $80
	ld   l, a                                        ; $5e74: $6f
	add  b                                           ; $5e75: $80
	rst  JumpTable                                         ; $5e76: $df
	add  b                                           ; $5e77: $80
	cp   a                                           ; $5e78: $bf
	add  b                                           ; $5e79: $80
	ld   a, a                                        ; $5e7a: $7f
	add  b                                           ; $5e7b: $80
	ld   a, [hl]                                     ; $5e7c: $7e
	add  c                                           ; $5e7d: $81
	db   $fc                                         ; $5e7e: $fc
	add  a                                           ; $5e7f: $87
	db   $fd                                         ; $5e80: $fd
	add  b                                           ; $5e81: $80
	ld   sp, hl                                      ; $5e82: $f9
	nop                                              ; $5e83: $00
	ld   a, [hl]                                     ; $5e84: $7e
	add  c                                           ; $5e85: $81
	add  b                                           ; $5e86: $80
	add  [hl]                                        ; $5e87: $86
	nop                                              ; $5e88: $00
	add  b                                           ; $5e89: $80
	add  c                                           ; $5e8a: $81
	add  b                                           ; $5e8b: $80
	add  e                                           ; $5e8c: $83
	add  d                                           ; $5e8d: $82
	rrca                                             ; $5e8e: $0f
	add  b                                           ; $5e8f: $80
	rra                                              ; $5e90: $1f
	add  b                                           ; $5e91: $80
	ccf                                              ; $5e92: $3f
	add  b                                           ; $5e93: $80
	ld   a, a                                        ; $5e94: $7f
	add  h                                           ; $5e95: $84
	rst  $38                                         ; $5e96: $ff
	ld   [bc], a                                     ; $5e97: $02
	db   $fc                                         ; $5e98: $fc
	ei                                               ; $5e99: $fb
	rst  $38                                         ; $5e9a: $ff
	add  c                                           ; $5e9b: $81
	rst  $30                                         ; $5e9c: $f7
	nop                                              ; $5e9d: $00
	rst  $38                                         ; $5e9e: $ff
	add  c                                           ; $5e9f: $81
	rst  $28                                         ; $5ea0: $ef
	inc  bc                                          ; $5ea1: $03
	and  $c6                                         ; $5ea2: $e6 $c6
	call z, $808c                                    ; $5ea4: $cc $8c $80
	sbc  b                                           ; $5ea7: $98
	ld   bc, $f878                                   ; $5ea8: $01 $78 $f8
	add  d                                           ; $5eab: $82
	ld   sp, hl                                      ; $5eac: $f9
	add  b                                           ; $5ead: $80
	cp   c                                           ; $5eae: $b9
	add  b                                           ; $5eaf: $80
	sbc  e                                           ; $5eb0: $9b
	add  b                                           ; $5eb1: $80
	sub  e                                           ; $5eb2: $93
	add  b                                           ; $5eb3: $80
	jp   $c280                                       ; $5eb4: $c3 $80 $c2


	adc  b                                           ; $5eb7: $88
	add  a                                           ; $5eb8: $87
	add  b                                           ; $5eb9: $80
	adc  a                                           ; $5eba: $8f
	add  b                                           ; $5ebb: $80
	ld   c, $80                                      ; $5ebc: $0e $80
	ld   [$000b], sp                                 ; $5ebe: $08 $0b $00
	ld   a, a                                        ; $5ec1: $7f
	rst  $38                                         ; $5ec2: $ff
	cp   [hl]                                        ; $5ec3: $be
	cp   $dd                                         ; $5ec4: $fe $dd
	db   $fd                                         ; $5ec6: $fd
	db   $ed                                         ; $5ec7: $ed
	db   $fd                                         ; $5ec8: $fd
	ldh  a, [c]                                      ; $5ec9: $f2
	cp   $fc                                         ; $5eca: $fe $fc
	add  b                                           ; $5ecc: $80
	ld   a, $80                                      ; $5ecd: $3e $80
	rra                                              ; $5ecf: $1f
	db   $10                                         ; $5ed0: $10
	inc  [hl]                                        ; $5ed1: $34
	inc  b                                           ; $5ed2: $04
	ld   l, d                                        ; $5ed3: $6a
	add  d                                           ; $5ed4: $82
	db   $f4                                         ; $5ed5: $f4
	ret  nz                                          ; $5ed6: $c0

	ld   a, [$fce0]                                  ; $5ed7: $fa $e0 $fc
	ldh  a, [$f2]                                    ; $5eda: $f0 $f2
	ld   [hl], d                                     ; $5edc: $72
	ld   a, d                                        ; $5edd: $7a
	inc  [hl]                                        ; $5ede: $34
	or   a                                           ; $5edf: $b7
	adc  e                                           ; $5ee0: $8b
	ld   [$ff81], sp                                 ; $5ee1: $08 $81 $ff
	inc  c                                           ; $5ee4: $0c
	cp   a                                           ; $5ee5: $bf
	rst  $38                                         ; $5ee6: $ff
	sbc  a                                           ; $5ee7: $9f
	rst  $38                                         ; $5ee8: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ee9: $cf
	rst  $38                                         ; $5eea: $ff
	rst  $30                                         ; $5eeb: $f7
	ld   a, a                                        ; $5eec: $7f
	dec  hl                                          ; $5eed: $2b
	ld   a, a                                        ; $5eee: $7f
	ld   [hl], l                                     ; $5eef: $75
	ld   a, [hl]                                     ; $5ef0: $7e
	rst  ToBoot                                         ; $5ef1: $c7
	add  l                                           ; $5ef2: $85
	nop                                              ; $5ef3: $00
	ld   [$ffe4], sp                                 ; $5ef4: $08 $e4 $ff
	db   $d3                                         ; $5ef7: $d3
	rst  $38                                         ; $5ef8: $ff
	add  h                                           ; $5ef9: $84
	rst  $38                                         ; $5efa: $ff
	dec  bc                                          ; $5efb: $0b
	rst  $38                                         ; $5efc: $ff
	cp   b                                           ; $5efd: $b8
	add  l                                           ; $5efe: $85
	nop                                              ; $5eff: $00
	ld   [bc], a                                     ; $5f00: $02
	ld   a, a                                        ; $5f01: $7f
	rst  $38                                         ; $5f02: $ff
	ld   a, a                                        ; $5f03: $7f
	add  e                                           ; $5f04: $83
	rst  $38                                         ; $5f05: $ff
	add  [hl]                                        ; $5f06: $86
	nop                                              ; $5f07: $00
	add  d                                           ; $5f08: $82
	rst  $38                                         ; $5f09: $ff
	inc  b                                           ; $5f0a: $04
	db   $fc                                         ; $5f0b: $fc
	rst  $38                                         ; $5f0c: $ff
	di                                               ; $5f0d: $f3
	rst  $38                                         ; $5f0e: $ff
	rrca                                             ; $5f0f: $0f
	add  l                                           ; $5f10: $85
	nop                                              ; $5f11: $00
	ld   [$f0b0], sp                                 ; $5f12: $08 $b0 $f0
	ld   b, b                                        ; $5f15: $40
	ldh  a, [$e0]                                    ; $5f16: $f0 $e0
	ldh  a, [$90]                                    ; $5f18: $f0 $90
	ldh  a, [$80]                                    ; $5f1a: $f0 $80
	add  c                                           ; $5f1c: $81
	nop                                              ; $5f1d: $00
	add  b                                           ; $5f1e: $80
	ld   bc, $0780                                   ; $5f1f: $01 $80 $07
	add  b                                           ; $5f22: $80
	inc  e                                           ; $5f23: $1c
	add  b                                           ; $5f24: $80
	inc  sp                                          ; $5f25: $33
	add  b                                           ; $5f26: $80
	ret  z                                           ; $5f27: $c8

	add  b                                           ; $5f28: $80
	daa                                              ; $5f29: $27
	add  b                                           ; $5f2a: $80
	ld   e, $80                                      ; $5f2b: $1e $80
	ld   a, c                                        ; $5f2d: $79
	add  b                                           ; $5f2e: $80
	and  $80                                         ; $5f2f: $e6 $80
	sbc  c                                           ; $5f31: $99
	add  b                                           ; $5f32: $80
	ld   b, a                                        ; $5f33: $47
	add  b                                           ; $5f34: $80
	inc  a                                           ; $5f35: $3c
	add  b                                           ; $5f36: $80
	ldh  [$80], a                                    ; $5f37: $e0 $80
	rrca                                             ; $5f39: $0f
	add  b                                           ; $5f3a: $80
	ld   [hl], c                                     ; $5f3b: $71
	add  b                                           ; $5f3c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f3d: $cf
	add  b                                           ; $5f3e: $80
	ld   a, $80                                      ; $5f3f: $3e $80
	pop  af                                          ; $5f41: $f1
	add  b                                           ; $5f42: $80
	adc  b                                           ; $5f43: $88
	add  b                                           ; $5f44: $80
	ld   b, a                                        ; $5f45: $47
	add  b                                           ; $5f46: $80
	ccf                                              ; $5f47: $3f
	add  b                                           ; $5f48: $80
	rst  $38                                         ; $5f49: $ff
	ld   [$f000], sp                                 ; $5f4a: $08 $00 $f0
	ret  nz                                          ; $5f4d: $c0

	ldh  a, [rAUD1SWEEP]                             ; $5f4e: $f0 $10
	ldh  a, [$c0]                                    ; $5f50: $f0 $c0
	ldh  a, [rAUD1SWEEP]                             ; $5f52: $f0 $10
	add  e                                           ; $5f54: $83
	ldh  a, [rTAC]                                   ; $5f55: $f0 $07
	add  b                                           ; $5f57: $80
	ldh  a, [$e0]                                    ; $5f58: $f0 $e0
	add  b                                           ; $5f5a: $80
	ld   h, b                                        ; $5f5b: $60
	nop                                              ; $5f5c: $00
	add  b                                           ; $5f5d: $80
	nop                                              ; $5f5e: $00
	add  b                                           ; $5f5f: $80
	ld   bc, $0780                                   ; $5f60: $01 $80 $07
	add  b                                           ; $5f63: $80
	rra                                              ; $5f64: $1f
	add  c                                           ; $5f65: $81
	rst  $38                                         ; $5f66: $ff
	ld   bc, $c03f                                   ; $5f67: $01 $3f $c0
	add  c                                           ; $5f6a: $81
	nop                                              ; $5f6b: $00

jr_09c_5f6c:
	add  b                                           ; $5f6c: $80
	ld   hl, sp-$80                                  ; $5f6d: $f8 $80
	db   $fc                                         ; $5f6f: $fc
	ld   [bc], a                                     ; $5f70: $02
	cp   $ee                                         ; $5f71: $fe $ee
	rst  $28                                         ; $5f73: $ef
	add  b                                           ; $5f74: $80
	rst  $30                                         ; $5f75: $f7
	add  b                                           ; $5f76: $80
	di                                               ; $5f77: $f3
	ld   bc, $30cb                                   ; $5f78: $01 $cb $30
	add  c                                           ; $5f7b: $81
	inc  bc                                          ; $5f7c: $03
	ld   [bc], a                                     ; $5f7d: $02
	dec  b                                           ; $5f7e: $05
	ld   bc, $8102                                   ; $5f7f: $01 $02 $81
	nop                                              ; $5f82: $00
	ld   bc, $0001                                   ; $5f83: $01 $01 $00
	add  d                                           ; $5f86: $82
	add  b                                           ; $5f87: $80
	stop                                             ; $5f88: $10 $00
	ldh  a, [$ee]                                    ; $5f8a: $f0 $ee
	ldh  [$9f], a                                    ; $5f8c: $e0 $9f
	add  b                                           ; $5f8e: $80
	ld   l, [hl]                                     ; $5f8f: $6e
	rrca                                             ; $5f90: $0f
	sbc  a                                           ; $5f91: $9f
	rra                                              ; $5f92: $1f
	rst  $38                                         ; $5f93: $ff
	ld   a, [hl]                                     ; $5f94: $7e
	cp   $3e                                         ; $5f95: $fe $3e
	ccf                                              ; $5f97: $3f
	inc  a                                           ; $5f98: $3c
	cp   l                                           ; $5f99: $bd
	add  b                                           ; $5f9a: $80
	rst  $38                                         ; $5f9b: $ff
	add  b                                           ; $5f9c: $80
	ld   a, a                                        ; $5f9d: $7f
	add  b                                           ; $5f9e: $80
	adc  a                                           ; $5f9f: $8f
	ld   a, [bc]                                     ; $5fa0: $0a
	ldh  a, [$f3]                                    ; $5fa1: $f0 $f3
	ei                                               ; $5fa3: $fb
	rst  $38                                         ; $5fa4: $ff
	rst  $20                                         ; $5fa5: $e7
	rst  $38                                         ; $5fa6: $ff
	ld   e, a                                        ; $5fa7: $5f
	rst  $38                                         ; $5fa8: $ff
	ccf                                              ; $5fa9: $3f
	ld   a, a                                        ; $5faa: $7f
	nop                                              ; $5fab: $00
	add  b                                           ; $5fac: $80
	add  b                                           ; $5fad: $80
	add  b                                           ; $5fae: $80
	ldh  [$80], a                                    ; $5faf: $e0 $80
	ld   hl, sp+$10                                  ; $5fb1: $f8 $10
	db   $fc                                         ; $5fb3: $fc
	inc  a                                           ; $5fb4: $3c
	rst  $38                                         ; $5fb5: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fb6: $cf
	rst  $38                                         ; $5fb7: $ff
	di                                               ; $5fb8: $f3
	rst  $38                                         ; $5fb9: $ff
	db   $fd                                         ; $5fba: $fd
	ldh  a, [rTMA]                                   ; $5fbb: $f0 $06
	rrca                                             ; $5fbd: $0f
	inc  bc                                          ; $5fbe: $03
	rlca                                             ; $5fbf: $07
	ld   bc, $0003                                   ; $5fc0: $01 $03 $00
	ld   bc, $0081                                   ; $5fc3: $01 $81 $00
	add  b                                           ; $5fc6: $80
	add  b                                           ; $5fc7: $80
	add  b                                           ; $5fc8: $80
	ldh  [rAUD1LEN], a                               ; $5fc9: $e0 $11
	cpl                                              ; $5fcb: $2f
	ld   c, $06                                      ; $5fcc: $0e $06
	rlca                                             ; $5fce: $07
	or   e                                           ; $5fcf: $b3
	add  e                                           ; $5fd0: $83
	reti                                             ; $5fd1: $d9


	pop  bc                                          ; $5fd2: $c1
	rst  $30                                         ; $5fd3: $f7
	ld   a, b                                        ; $5fd4: $78
	rst  $38                                         ; $5fd5: $ff
	nop                                              ; $5fd6: $00
	ld   e, b                                        ; $5fd7: $58
	db   $10                                         ; $5fd8: $10
	jr   nz, jr_09c_5fdb                             ; $5fd9: $20 $00

jr_09c_5fdb:
	ld   h, b                                        ; $5fdb: $60
	ld   [hl], b                                     ; $5fdc: $70
	add  b                                           ; $5fdd: $80
	ldh  [$80], a                                    ; $5fde: $e0 $80
	add  b                                           ; $5fe0: $80
	adc  h                                           ; $5fe1: $8c
	nop                                              ; $5fe2: $00
	add  b                                           ; $5fe3: $80
	ld   bc, $0780                                   ; $5fe4: $01 $80 $07
	add  b                                           ; $5fe7: $80
	ld   a, [bc]                                     ; $5fe8: $0a
	add  b                                           ; $5fe9: $80
	jr   nz, jr_09c_5f6c                             ; $5fea: $20 $80

	add  c                                           ; $5fec: $81
	add  b                                           ; $5fed: $80
	rlca                                             ; $5fee: $07
	add  b                                           ; $5fef: $80
	ld   a, $80                                      ; $5ff0: $3e $80
	ld   a, b                                        ; $5ff2: $78
	add  b                                           ; $5ff3: $80
	db   $e3                                         ; $5ff4: $e3
	add  b                                           ; $5ff5: $80
	adc  a                                           ; $5ff6: $8f
	add  b                                           ; $5ff7: $80
	ccf                                              ; $5ff8: $3f
	add  b                                           ; $5ff9: $80
	ld   a, a                                        ; $5ffa: $7f
	add  b                                           ; $5ffb: $80
	rst  $38                                         ; $5ffc: $ff
	add  b                                           ; $5ffd: $80
	cp   $02                                         ; $5ffe: $fe $02

Call_09c_6000:
	ret  nz                                          ; $6000: $c0

	ldh  a, [$30]                                    ; $6001: $f0 $30
	add  a                                           ; $6003: $87
	ldh  a, [$36]                                    ; $6004: $f0 $36
	add  b                                           ; $6006: $80
	ldh  a, [$60]                                    ; $6007: $f0 $60
	ldh  a, [$08]                                    ; $6009: $f0 $08
	rst  $38                                         ; $600b: $ff
	daa                                              ; $600c: $27
	rst  $38                                         ; $600d: $ff
	jr   c, @+$01                                    ; $600e: $38 $ff

	call nz, $00ff                                   ; $6010: $c4 $ff $00
	rst  $38                                         ; $6013: $ff
	ld   [bc], a                                     ; $6014: $02
	rst  $38                                         ; $6015: $ff
	ld   [hl+], a                                    ; $6016: $22
	db   $fc                                         ; $6017: $fc
	inc  bc                                          ; $6018: $03
	ldh  [$e3], a                                    ; $6019: $e0 $e3
	rst  $38                                         ; $601b: $ff
	jr   @+$01                                       ; $601c: $18 $ff

	add  b                                           ; $601e: $80
	rst  $38                                         ; $601f: $ff
	ld   b, $ff                                      ; $6020: $06 $ff
	ld   l, [hl]                                     ; $6022: $6e
	ldh  a, [$6f]                                    ; $6023: $f0 $6f
	add  b                                           ; $6025: $80
	ld   [hl], b                                     ; $6026: $70
	nop                                              ; $6027: $00
	add  b                                           ; $6028: $80
	nop                                              ; $6029: $00
	add  a                                           ; $602a: $87
	rst  $38                                         ; $602b: $ff
	ld   b, $ff                                      ; $602c: $06 $ff
	ld   h, c                                        ; $602e: $61
	rst  $38                                         ; $602f: $ff
	jr   @+$01                                       ; $6030: $18 $ff

jr_09c_6032:
	ld   b, $3f                                      ; $6032: $06 $3f
	pop  af                                          ; $6034: $f1
	rrca                                             ; $6035: $0f
	inc  [hl]                                        ; $6036: $34
	rlca                                             ; $6037: $07

jr_09c_6038:
	inc  bc                                          ; $6038: $03
	rlca                                             ; $6039: $07
	ret  z                                           ; $603a: $c8

	ldh  a, [$30]                                    ; $603b: $f0 $30
	add  c                                           ; $603d: $81
	ldh  a, [rSC]                                    ; $603e: $f0 $02
	jr   nc, jr_09c_6032                             ; $6040: $30 $f0

	jr   nc, @-$7d                                   ; $6042: $30 $81

	ldh  a, [$08]                                    ; $6044: $f0 $08
	jr   nc, jr_09c_6038                             ; $6046: $30 $f0

	ld   b, b                                        ; $6048: $40
	ldh  a, [$bf]                                    ; $6049: $f0 $bf
	rlca                                             ; $604b: $07
	ccf                                              ; $604c: $3f

jr_09c_604d:
	nop                                              ; $604d: $00
	rlca                                             ; $604e: $07
	add  l                                           ; $604f: $85
	nop                                              ; $6050: $00
	add  b                                           ; $6051: $80
	ret  nz                                          ; $6052: $c0

	add  b                                           ; $6053: $80
	db   $fc                                         ; $6054: $fc
	nop                                              ; $6055: $00
	rst  $38                                         ; $6056: $ff
	add  b                                           ; $6057: $80
	dec  a                                           ; $6058: $3d
	rlca                                             ; $6059: $07
	ld   e, $fe                                      ; $605a: $1e $fe
	ld   b, $1e                                      ; $605c: $06 $1e
	ld   bc, $0007                                   ; $605e: $01 $07 $00
	ld   bc, $0083                                   ; $6061: $01 $83 $00
	add  b                                           ; $6064: $80
	ret  nz                                          ; $6065: $c0

	add  d                                           ; $6066: $82
	ldh  [rSC], a                                    ; $6067: $e0 $02
	ldh  a, [rSVBK]                                  ; $6069: $f0 $70
	ld   a, b                                        ; $606b: $78
	add  b                                           ; $606c: $80
	cp   b                                           ; $606d: $b8
	rra                                              ; $606e: $1f
	jr   jr_09c_604d                                 ; $606f: $18 $dc

	inc  c                                           ; $6071: $0c
	ld   l, $0e                                      ; $6072: $2e $0e
	ld   l, $1c                                      ; $6074: $2e $1c
	ld   e, $18                                      ; $6076: $1e $18
	inc  a                                           ; $6078: $3c
	nop                                              ; $6079: $00
	jr   z, jr_09c_609c                              ; $607a: $28 $20

	ld   l, b                                        ; $607c: $68
	ld   b, b                                        ; $607d: $40
	ld   b, h                                        ; $607e: $44
	jr   c, jr_09c_609b                              ; $607f: $38 $1a

	inc  e                                           ; $6081: $1c
	dec  e                                           ; $6082: $1d
	ld   e, $61                                      ; $6083: $1e $61
	rra                                              ; $6085: $1f
	cpl                                              ; $6086: $2f
	rrca                                             ; $6087: $0f
	rla                                              ; $6088: $17
	rlca                                             ; $6089: $07
	add  hl, bc                                      ; $608a: $09
	inc  bc                                          ; $608b: $03
	ld   b, $02                                      ; $608c: $06 $02
	ld   bc, $0083                                   ; $608e: $01 $83 $00
	nop                                              ; $6091: $00
	rst  $38                                         ; $6092: $ff
	add  b                                           ; $6093: $80
	cp   $85                                         ; $6094: $fe $85
	rst  $38                                         ; $6096: $ff
	inc  de                                          ; $6097: $13
	cp   a                                           ; $6098: $bf
	ld   a, a                                        ; $6099: $7f
	di                                               ; $609a: $f3

jr_09c_609b:
	ld   e, a                                        ; $609b: $5f

jr_09c_609c:
	ld   [hl], b                                     ; $609c: $70
	rrca                                             ; $609d: $0f
	db   $e3                                         ; $609e: $e3
	ld   [hl], b                                     ; $609f: $70
	ld   hl, sp-$48                                  ; $60a0: $f8 $b8
	db   $fc                                         ; $60a2: $fc
	call z, $f6fe                                    ; $60a3: $cc $fe $f6
	rst  $38                                         ; $60a6: $ff
	ei                                               ; $60a7: $fb
	rst  $38                                         ; $60a8: $ff
	db   $fd                                         ; $60a9: $fd
	rst  $38                                         ; $60aa: $ff
	cp   $80                                         ; $60ab: $fe $80
	rst  $38                                         ; $60ad: $ff
	ld   de, $00c7                                   ; $60ae: $11 $c7 $00
	ld   [hl], h                                     ; $60b1: $74
	nop                                              ; $60b2: $00
	adc  $00                                         ; $60b3: $ce $00
	inc  bc                                          ; $60b5: $03
	nop                                              ; $60b6: $00
	pop  bc                                          ; $60b7: $c1
	nop                                              ; $60b8: $00
	or   b                                           ; $60b9: $b0
	ret  nc                                          ; $60ba: $d0

	call c, $efec                                    ; $60bb: $dc $ec $ef
	jr   nc, @-$2f                                   ; $60be: $30 $cf

	nop                                              ; $60c0: $00
	add  b                                           ; $60c1: $80
	ret  nz                                          ; $60c2: $c0

	ld   e, b                                        ; $60c3: $58
	ldh  [$60], a                                    ; $60c4: $e0 $60
	ld   a, b                                        ; $60c6: $78
	cp   b                                           ; $60c7: $b8
	ld   a, h                                        ; $60c8: $7c
	call z, $f6ee                                    ; $60c9: $cc $ee $f6
	rst  $20                                         ; $60cc: $e7
	ei                                               ; $60cd: $fb
	rst  $30                                         ; $60ce: $f7
	db   $fc                                         ; $60cf: $fc
	rst  $30                                         ; $60d0: $f7
	rlca                                             ; $60d1: $07
	dec  bc                                          ; $60d2: $0b
	inc  bc                                          ; $60d3: $03
	dec  e                                           ; $60d4: $1d
	ld   bc, $003c                                   ; $60d5: $01 $3c $00
	ld   h, [hl]                                     ; $60d8: $66
	nop                                              ; $60d9: $00
	ld   bc, $6000                                   ; $60da: $01 $00 $60
	nop                                              ; $60dd: $00
	ldh  a, [$c0]                                    ; $60de: $f0 $c0
	ld   c, $ff                                      ; $60e0: $0e $ff
	ld   [bc], a                                     ; $60e2: $02
	rst  $38                                         ; $60e3: $ff
	jr   z, @+$01                                    ; $60e4: $28 $ff

	ld   b, $3f                                      ; $60e6: $06 $3f
	ld   b, c                                        ; $60e8: $41
	inc  c                                           ; $60e9: $0c
	ld   [hl], c                                     ; $60ea: $71
	nop                                              ; $60eb: $00
	cp   a                                           ; $60ec: $bf
	nop                                              ; $60ed: $00
	jp   nc, Jump_09c_5d00                           ; $60ee: $d2 $00 $5d

	ret  nz                                          ; $60f1: $c0

	xor  [hl]                                        ; $60f2: $ae
	ldh  a, [rP1]                                    ; $60f3: $f0 $00
	ldh  a, [rAUD1SWEEP]                             ; $60f5: $f0 $10
	ldh  a, [$c0]                                    ; $60f7: $f0 $c0
	ld   [hl], b                                     ; $60f9: $70
	add  b                                           ; $60fa: $80
	jr   nc, @-$3e                                   ; $60fb: $30 $c0

	ld   [hl], b                                     ; $60fd: $70
	ret  nz                                          ; $60fe: $c0

	ldh  a, [$f1]                                    ; $60ff: $f0 $f1
	cp   $fd                                         ; $6101: $fe $fd
	db   $fc                                         ; $6103: $fc
	ld   a, [$f4f8]                                  ; $6104: $fa $f8 $f4
	ldh  a, [$e8]                                    ; $6107: $f0 $e8

jr_09c_6109:
	ldh  [$d0], a                                    ; $6109: $e0 $d0
	ret  nz                                          ; $610b: $c0

	add  b                                           ; $610c: $80
	and  b                                           ; $610d: $a0
	nop                                              ; $610e: $00
	ld   b, b                                        ; $610f: $40
	ld   a, c                                        ; $6110: $79
	jr   nc, jr_09c_6109                             ; $6111: $30 $f6

	add  hl, bc                                      ; $6113: $09
	add  hl, sp                                      ; $6114: $39
	nop                                              ; $6115: $00
	inc  c                                           ; $6116: $0c
	ld   [bc], a                                     ; $6117: $02
	rlca                                             ; $6118: $07
	dec  b                                           ; $6119: $05
	inc  b                                           ; $611a: $04
	ld   b, $01                                      ; $611b: $06 $01
	add  c                                           ; $611d: $81
	nop                                              ; $611e: $00
	db   $10                                         ; $611f: $10
	inc  l                                           ; $6120: $2c
	inc  bc                                          ; $6121: $03
	ld   e, a                                        ; $6122: $5f
	rrca                                             ; $6123: $0f
	and  h                                           ; $6124: $a4
	inc  a                                           ; $6125: $3c
	sbc  e                                           ; $6126: $9b
	ldh  [$fc], a                                    ; $6127: $e0 $fc
	add  b                                           ; $6129: $80
	ld   h, e                                        ; $612a: $63
	nop                                              ; $612b: $00
	sbc  h                                           ; $612c: $9c
	inc  bc                                          ; $612d: $03
	ld   l, l                                        ; $612e: $6d
	rra                                              ; $612f: $1f
	ld   l, [hl]                                     ; $6130: $6e
	add  c                                           ; $6131: $81
	ldh  a, [$80]                                    ; $6132: $f0 $80
	db   $10                                         ; $6134: $10
	ld   a, [bc]                                     ; $6135: $0a
	ld   h, b                                        ; $6136: $60
	nop                                              ; $6137: $00
	ldh  a, [rAUD1SWEEP]                             ; $6138: $f0 $10
	or   b                                           ; $613a: $b0
	ld   [hl], b                                     ; $613b: $70
	ret  nc                                          ; $613c: $d0

	ldh  a, [rP1]                                    ; $613d: $f0 $00
	ldh  a, [$60]                                    ; $613f: $f0 $60
	rst  $38                                         ; $6141: $ff
	nop                                              ; $6142: $00
	rst  $38                                         ; $6143: $ff
	nop                                              ; $6144: $00
	rst  $38                                         ; $6145: $ff
	nop                                              ; $6146: $00
	rst  $38                                         ; $6147: $ff
	nop                                              ; $6148: $00
	rst  $38                                         ; $6149: $ff
	nop                                              ; $614a: $00
	rst  $38                                         ; $614b: $ff

Call_09c_614c:
	nop                                              ; $614c: $00
	rst  $30                                         ; $614d: $f7
	nop                                              ; $614e: $00
	ldh  a, [rIE]                                    ; $614f: $f0 $ff
	ldh  [rIE], a                                    ; $6151: $e0 $ff
	pop  bc                                          ; $6153: $c1
	rst  $38                                         ; $6154: $ff
	add  d                                           ; $6155: $82
	rst  $38                                         ; $6156: $ff
	inc  h                                           ; $6157: $24
	rst  $38                                         ; $6158: $ff
	ld   l, h                                        ; $6159: $6c
	rst  $38                                         ; $615a: $ff
	reti                                             ; $615b: $d9


	db   $fd                                         ; $615c: $fd
	sbc  c                                           ; $615d: $99
	ld   sp, hl                                      ; $615e: $f9
	dec  c                                           ; $615f: $0d
	rst  $38                                         ; $6160: $ff
	ld   c, $ff                                      ; $6161: $0e $ff
	ld   c, $ff                                      ; $6163: $0e $ff
	cpl                                              ; $6165: $2f
	rst  $38                                         ; $6166: $ff
	ld   a, l                                        ; $6167: $7d
	rst  $38                                         ; $6168: $ff
	rst  JumpTable                                         ; $6169: $df
	rst  $38                                         ; $616a: $ff
	db   $eb                                         ; $616b: $eb
	cp   a                                           ; $616c: $bf
	cp   $81                                         ; $616d: $fe $81
	inc  bc                                          ; $616f: $03
	rst  $38                                         ; $6170: $ff
	ld   bc, $00ff                                   ; $6171: $01 $ff $00
	rst  $38                                         ; $6174: $ff
	jr   nz, @+$01                                   ; $6175: $20 $ff

	db   $10                                         ; $6177: $10
	rst  $38                                         ; $6178: $ff
	db   $10                                         ; $6179: $10
	ld   e, [hl]                                     ; $617a: $5e
	ld   [$88ab], sp                                 ; $617b: $08 $ab $88
	adc  c                                           ; $617e: $89
	cp   $fe                                         ; $617f: $fe $fe
	ld   e, $fe                                      ; $6181: $1e $fe
	add  [hl]                                        ; $6183: $86
	cp   $02                                         ; $6184: $fe $02
	cp   $02                                         ; $6186: $fe $02
	cp   $02                                         ; $6188: $fe $02
	ld   a, [$7e42]                                  ; $618a: $fa $42 $7e
	ld   b, d                                        ; $618d: $42
	ld   l, [hl]                                     ; $618e: $6e
	or   e                                           ; $618f: $b3
	cp   e                                           ; $6190: $bb
	inc  sp                                          ; $6191: $33
	ld   [hl], a                                     ; $6192: $77
	ld   [hl], e                                     ; $6193: $73
	halt                                             ; $6194: $76
	ld   [hl], a                                     ; $6195: $77
	cp   $f7                                         ; $6196: $fe $f7
	cp   $f7                                         ; $6198: $fe $f7
	sbc  $ef                                         ; $619a: $de $ef
	sbc  $ca                                         ; $619c: $de $ca
	rst  $38                                         ; $619e: $ff
	rst  ToBoot                                         ; $619f: $c7
	nop                                              ; $61a0: $00
	jp   $8100                                       ; $61a1: $c3 $00 $81


	nop                                              ; $61a4: $00
	add  c                                           ; $61a5: $81
	nop                                              ; $61a6: $00
	add  c                                           ; $61a7: $81
	nop                                              ; $61a8: $00
	ld   bc, $0100                                   ; $61a9: $01 $00 $01
	ld   bc, $0101                                   ; $61ac: $01 $01 $01
	adc  h                                           ; $61af: $8c
	adc  h                                           ; $61b0: $8c
	sbc  h                                           ; $61b1: $9c
	sbc  $9e                                         ; $61b2: $de $9e
	rst  $38                                         ; $61b4: $ff
	sbc  [hl]                                        ; $61b5: $9e
	rst  $38                                         ; $61b6: $ff
	sbc  a                                           ; $61b7: $9f
	ei                                               ; $61b8: $fb
	cp   a                                           ; $61b9: $bf
	di                                               ; $61ba: $f3
	ccf                                              ; $61bb: $3f
	di                                               ; $61bc: $f3
	ld   h, e                                        ; $61bd: $63
	rst  $38                                         ; $61be: $ff
	ld   [hl+], a                                    ; $61bf: $22
	ld   [hl+], a                                    ; $61c0: $22
	ld   [hl+], a                                    ; $61c1: $22
	or   d                                           ; $61c2: $b2
	ld   [hl-], a                                    ; $61c3: $32
	cp   $36                                         ; $61c4: $fe $36
	cp   $36                                         ; $61c6: $fe $36
	cp   $36                                         ; $61c8: $fe $36
	cp   $76                                         ; $61ca: $fe $76
	sbc  $76                                         ; $61cc: $de $76
	sbc  $7f                                         ; $61ce: $de $7f
	rst  ToBoot                                         ; $61d0: $c7
	ld   [hl], a                                     ; $61d1: $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61d2: $cf
	cp   $df                                         ; $61d3: $fe $df
	db   $fc                                         ; $61d5: $fc
	or   $f7                                         ; $61d6: $f6 $f7
	rst  ToBoot                                         ; $61d8: $c7
	ld   h, a                                        ; $61d9: $67
	push bc                                          ; $61da: $c5
	rst  $28                                         ; $61db: $ef
	rst  $20                                         ; $61dc: $e7
	ld   h, b                                        ; $61dd: $60
	ret  nz                                          ; $61de: $c0

	ld   bc, $4283                                   ; $61df: $01 $83 $42
	add  e                                           ; $61e2: $83
	rst  ToBoot                                         ; $61e3: $c7
	rlca                                             ; $61e4: $07
	jp   $8080                                       ; $61e5: $c3 $80 $80


	nop                                              ; $61e8: $00
	nop                                              ; $61e9: $00
	nop                                              ; $61ea: $00
	nop                                              ; $61eb: $00
	nop                                              ; $61ec: $00
	nop                                              ; $61ed: $00
	nop                                              ; $61ee: $00
	ld   a, [hl]                                     ; $61ef: $7e
	rst  $38                                         ; $61f0: $ff
	rst  $38                                         ; $61f1: $ff
	jp   $1eef                                       ; $61f2: $c3 $ef $1e


	rst  $38                                         ; $61f5: $ff
	ccf                                              ; $61f6: $3f
	call nz, $0e6d                                   ; $61f7: $c4 $6d $0e
	ld   c, $0e                                      ; $61fa: $0e $0e
	ld   a, [bc]                                     ; $61fc: $0a
	rlca                                             ; $61fd: $07
	ld   e, $f6                                      ; $61fe: $1e $f6
	sbc  [hl]                                        ; $6200: $9e
	ld   d, $fe                                      ; $6201: $16 $fe
	xor  $3e                                         ; $6203: $ee $3e
	cp   $3e                                         ; $6205: $fe $3e
	cp   [hl]                                        ; $6207: $be
	xor  $fa                                         ; $6208: $ee $fa
	sbc  $f6                                         ; $620a: $de $f6
	ld   e, $ee                                      ; $620c: $1e $ee
	ld   a, $60                                      ; $620e: $3e $60
	ret  nz                                          ; $6210: $c0

	ld   b, b                                        ; $6211: $40
	ldh  [rLCDC], a                                  ; $6212: $e0 $40
	ldh  [$e0], a                                    ; $6214: $e0 $e0
	ldh  [$e0], a                                    ; $6216: $e0 $e0
	ldh  [rSVBK], a                                  ; $6218: $e0 $70
	ld   h, b                                        ; $621a: $60
	db   $10                                         ; $621b: $10
	db   $10                                         ; $621c: $10
	ld   [$0008], sp                                 ; $621d: $08 $08 $00
	nop                                              ; $6220: $00
	ld   [$1400], sp                                 ; $6221: $08 $00 $14
	ld   [$181c], sp                                 ; $6224: $08 $1c $18
	inc  e                                           ; $6227: $1c
	jr   jr_09c_622a                                 ; $6228: $18 $00

jr_09c_622a:
	nop                                              ; $622a: $00
	jr   c, jr_09c_623d                              ; $622b: $38 $10

	ld   e, $06                                      ; $622d: $1e $06
	rlca                                             ; $622f: $07
	nop                                              ; $6230: $00
	ld   bc, $0000                                   ; $6231: $01 $00 $00
	nop                                              ; $6234: $00
	nop                                              ; $6235: $00
	nop                                              ; $6236: $00
	nop                                              ; $6237: $00
	nop                                              ; $6238: $00
	nop                                              ; $6239: $00
	nop                                              ; $623a: $00
	nop                                              ; $623b: $00
	nop                                              ; $623c: $00

jr_09c_623d:
	ld   bc, $fe00                                   ; $623d: $01 $00 $fe
	ld   a, [hl]                                     ; $6240: $7e
	cp   $06                                         ; $6241: $fe $06
	cp   $0a                                         ; $6243: $fe $0a
	cp   $06                                         ; $6245: $fe $06
	cp   $0e                                         ; $6247: $fe $0e
	cp   $1e                                         ; $6249: $fe $1e
	or   $16                                         ; $624b: $f6 $16
	cp   $1e                                         ; $624d: $fe $1e
	inc  b                                           ; $624f: $04
	inc  b                                           ; $6250: $04
	ld   [bc], a                                     ; $6251: $02
	ld   [bc], a                                     ; $6252: $02
	ld   bc, $0001                                   ; $6253: $01 $01 $00
	nop                                              ; $6256: $00
	nop                                              ; $6257: $00
	nop                                              ; $6258: $00
	nop                                              ; $6259: $00
	nop                                              ; $625a: $00
	nop                                              ; $625b: $00
	nop                                              ; $625c: $00
	nop                                              ; $625d: $00
	nop                                              ; $625e: $00
	ld   [$0c00], sp                                 ; $625f: $08 $00 $0c
	nop                                              ; $6262: $00
	nop                                              ; $6263: $00
	nop                                              ; $6264: $00
	add  b                                           ; $6265: $80
	add  b                                           ; $6266: $80
	ld   h, b                                        ; $6267: $60
	ld   b, b                                        ; $6268: $40
	jr   nc, jr_09c_628b                             ; $6269: $30 $20

	rra                                              ; $626b: $1f
	add  hl, de                                      ; $626c: $19
	rrca                                             ; $626d: $0f
	ld   c, $01                                      ; $626e: $0e $01
	nop                                              ; $6270: $00
	inc  bc                                          ; $6271: $03
	nop                                              ; $6272: $00
	rlca                                             ; $6273: $07
	inc  bc                                          ; $6274: $03
	rra                                              ; $6275: $1f
	ld   b, $3f                                      ; $6276: $06 $3f

jr_09c_6278:
	jr   jr_09c_6278                                 ; $6278: $18 $fe

	ld   h, b                                        ; $627a: $60
	db   $fc                                         ; $627b: $fc
	add  b                                           ; $627c: $80
	ld   hl, sp+$00                                  ; $627d: $f8 $00
	cp   $1e                                         ; $627f: $fe $1e
	cp   $1e                                         ; $6281: $fe $1e
	cp   $1e                                         ; $6283: $fe $1e
	cp   $1e                                         ; $6285: $fe $1e
	cp   $1e                                         ; $6287: $fe $1e
	or   $1e                                         ; $6289: $f6 $1e

jr_09c_628b:
	ld   a, [$e21e]                                  ; $628b: $fa $1e $e2
	cp   $00                                         ; $628e: $fe $00
	nop                                              ; $6290: $00
	nop                                              ; $6291: $00
	nop                                              ; $6292: $00
	nop                                              ; $6293: $00
	nop                                              ; $6294: $00
	nop                                              ; $6295: $00
	nop                                              ; $6296: $00
	nop                                              ; $6297: $00
	nop                                              ; $6298: $00
	nop                                              ; $6299: $00
	nop                                              ; $629a: $00
	ld   bc, $0701                                   ; $629b: $01 $01 $07
	ld   b, $17                                      ; $629e: $06 $17
	ld   e, $2e                                      ; $62a0: $1e $2e
	ld   a, $26                                      ; $62a2: $3e $26
	ld   a, $32                                      ; $62a4: $3e $32
	ld   a, $39                                      ; $62a6: $3e $39
	ccf                                              ; $62a8: $3f
	ld   l, d                                        ; $62a9: $6a
	ld   a, a                                        ; $62aa: $7f
	rst  $38                                         ; $62ab: $ff
	rst  $38                                         ; $62ac: $ff
	ei                                               ; $62ad: $fb
	add  hl, sp                                      ; $62ae: $39
	db   $e3                                         ; $62af: $e3
	inc  bc                                          ; $62b0: $03
	inc  e                                           ; $62b1: $1c
	rra                                              ; $62b2: $1f
	ld   h, b                                        ; $62b3: $60
	ld   a, a                                        ; $62b4: $7f
	adc  h                                           ; $62b5: $8c
	rst  $38                                         ; $62b6: $ff
	inc  sp                                          ; $62b7: $33
	rst  $38                                         ; $62b8: $ff
	ld   l, h                                        ; $62b9: $6c
	rst  $38                                         ; $62ba: $ff
	ld   hl, sp-$01                                  ; $62bb: $f8 $ff
	ldh  [rIE], a                                    ; $62bd: $e0 $ff
	ld   [bc], a                                     ; $62bf: $02
	cp   $1e                                         ; $62c0: $fe $1e
	cp   $7e                                         ; $62c2: $fe $7e
	cp   $c2                                         ; $62c4: $fe $c2

Jump_09c_62c6:
	cp   $02                                         ; $62c6: $fe $02
	cp   $02                                         ; $62c8: $fe $02
	cp   $1e                                         ; $62ca: $fe $1e
	cp   $fe                                         ; $62cc: $fe $fe
	cp   $b3                                         ; $62ce: $fe $b3
	cp   e                                           ; $62d0: $bb
	inc  sp                                          ; $62d1: $33
	ld   [hl], a                                     ; $62d2: $77
	ld   [hl], e                                     ; $62d3: $73
	halt                                             ; $62d4: $76
	ld   [hl], a                                     ; $62d5: $77
	cp   $f7                                         ; $62d6: $fe $f7
	cp   $f7                                         ; $62d8: $fe $f7
	sbc  $ee                                         ; $62da: $de $ee
	rst  JumpTable                                         ; $62dc: $df
	jp   c, $c7ef                                    ; $62dd: $da $ef $c7

	nop                                              ; $62e0: $00
	jp   $8100                                       ; $62e1: $c3 $00 $81


	nop                                              ; $62e4: $00
	add  c                                           ; $62e5: $81
	nop                                              ; $62e6: $00
	add  c                                           ; $62e7: $81
	nop                                              ; $62e8: $00
	ld   bc, $0100                                   ; $62e9: $01 $00 $01
	ld   bc, $8101                                   ; $62ec: $01 $01 $81
	adc  h                                           ; $62ef: $8c
	adc  h                                           ; $62f0: $8c
	sbc  h                                           ; $62f1: $9c
	sbc  $9e                                         ; $62f2: $de $9e
	rst  $38                                         ; $62f4: $ff
	sbc  [hl]                                        ; $62f5: $9e
	rst  $38                                         ; $62f6: $ff
	sbc  a                                           ; $62f7: $9f
	ei                                               ; $62f8: $fb
	cp   a                                           ; $62f9: $bf
	di                                               ; $62fa: $f3
	inc  sp                                          ; $62fb: $33
	rst  $38                                         ; $62fc: $ff
	ld   a, a                                        ; $62fd: $7f
	rst  $38                                         ; $62fe: $ff
	ld   a, a                                        ; $62ff: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6300: $cf
	ld   a, a                                        ; $6301: $7f
	rst  JumpTable                                         ; $6302: $df
	cp   $f6                                         ; $6303: $fe $f6
	db   $fd                                         ; $6305: $fd
	rst  ToBoot                                         ; $6306: $c7
	rst  $30                                         ; $6307: $f7
	rst  ToBoot                                         ; $6308: $c7
	ld   h, a                                        ; $6309: $67
	push bc                                          ; $630a: $c5
	rst  $28                                         ; $630b: $ef
	rst  $20                                         ; $630c: $e7
	ld   h, b                                        ; $630d: $60
	ret  nz                                          ; $630e: $c0

	ld   bc, wLCDC                                   ; $630f: $01 $03 $c2
	add  e                                           ; $6312: $83
	rst  ToBoot                                         ; $6313: $c7
	rlca                                             ; $6314: $07
	add  e                                           ; $6315: $83
	nop                                              ; $6316: $00
	nop                                              ; $6317: $00
	nop                                              ; $6318: $00
	nop                                              ; $6319: $00
	nop                                              ; $631a: $00
	nop                                              ; $631b: $00
	nop                                              ; $631c: $00
	nop                                              ; $631d: $00
	nop                                              ; $631e: $00
	ld   a, [hl]                                     ; $631f: $7e
	db   $e3                                         ; $6320: $e3
	rst  JumpTable                                         ; $6321: $df
	rst  $38                                         ; $6322: $ff
	rst  $28                                         ; $6323: $ef
	ccf                                              ; $6324: $3f
	call nz, $866d                                   ; $6325: $c4 $6d $86
	ld   c, $0e                                      ; $6328: $0e $0e
	ld   c, $1e                                      ; $632a: $0e $1e
	ld   a, [bc]                                     ; $632c: $0a
	dec  d                                           ; $632d: $15
	ld   e, $f6                                      ; $632e: $1e $f6
	sbc  [hl]                                        ; $6330: $9e
	ld   d, $fe                                      ; $6331: $16 $fe
	xor  $3e                                         ; $6333: $ee $3e
	cp   $be                                         ; $6335: $fe $be
	cp   [hl]                                        ; $6337: $be
	xor  $fa                                         ; $6338: $ee $fa
	sbc  $f6                                         ; $633a: $de $f6
	ld   e, $ee                                      ; $633c: $1e $ee
	ld   a, $00                                      ; $633e: $3e $00
	nop                                              ; $6340: $00
	ld   [$1400], sp                                 ; $6341: $08 $00 $14
	ld   [$181c], sp                                 ; $6344: $08 $1c $18
	inc  e                                           ; $6347: $1c
	jr   jr_09c_634a                                 ; $6348: $18 $00

jr_09c_634a:
	nop                                              ; $634a: $00
	jr   c, @+$12                                    ; $634b: $38 $10

	rra                                              ; $634d: $1f
	inc  bc                                          ; $634e: $03
	or   e                                           ; $634f: $b3
	cp   e                                           ; $6350: $bb
	inc  sp                                          ; $6351: $33
	ld   [hl], a                                     ; $6352: $77
	ld   [hl], e                                     ; $6353: $73
	halt                                             ; $6354: $76
	ld   [hl], a                                     ; $6355: $77
	cp   $f7                                         ; $6356: $fe $f7
	cp   $f7                                         ; $6358: $fe $f7
	sbc  $df                                         ; $635a: $de $df
	cp   $eb                                         ; $635c: $fe $eb
	sbc  $8c                                         ; $635e: $de $8c
	adc  h                                           ; $6360: $8c
	sbc  h                                           ; $6361: $9c
	sbc  $9e                                         ; $6362: $de $9e
	rst  $38                                         ; $6364: $ff
	sbc  [hl]                                        ; $6365: $9e
	rst  $38                                         ; $6366: $ff
	sbc  a                                           ; $6367: $9f
	ei                                               ; $6368: $fb
	cp   a                                           ; $6369: $bf
	di                                               ; $636a: $f3
	ccf                                              ; $636b: $3f
	di                                               ; $636c: $f3
	ld   a, e                                        ; $636d: $7b
	rst  $20                                         ; $636e: $e7
	ld   a, a                                        ; $636f: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6370: $cf
	ld   [hl], a                                     ; $6371: $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6372: $cf
	cp   $ff                                         ; $6373: $fe $ff
	db   $fc                                         ; $6375: $fc
	sub  $f7                                         ; $6376: $d6 $f7
	rst  ToBoot                                         ; $6378: $c7
	ld   h, a                                        ; $6379: $67
	push bc                                          ; $637a: $c5
	rst  $28                                         ; $637b: $ef
	rst  $20                                         ; $637c: $e7
	ld   h, b                                        ; $637d: $60
	ret  nz                                          ; $637e: $c0

	add  c                                           ; $637f: $81
	inc  bc                                          ; $6380: $03
	ld   b, d                                        ; $6381: $42
	add  e                                           ; $6382: $83
	rst  ToBoot                                         ; $6383: $c7
	add  a                                           ; $6384: $87
	jp   $8080                                       ; $6385: $c3 $80 $80


	nop                                              ; $6388: $00
	nop                                              ; $6389: $00
	nop                                              ; $638a: $00
	nop                                              ; $638b: $00
	nop                                              ; $638c: $00
	nop                                              ; $638d: $00
	nop                                              ; $638e: $00
	ld   h, [hl]                                     ; $638f: $66
	rst  $38                                         ; $6390: $ff
	rst  $38                                         ; $6391: $ff
	ei                                               ; $6392: $fb
	ld   l, a                                        ; $6393: $6f
	cp   $f7                                         ; $6394: $fe $f7
	cp   a                                           ; $6396: $bf
	call nz, $0e6d                                   ; $6397: $c4 $6d $0e
	ld   c, $0e                                      ; $639a: $0e $0e
	ld   a, [bc]                                     ; $639c: $0a
	dec  d                                           ; $639d: $15
	ld   e, $b6                                      ; $639e: $1e $b6
	sbc  $f6                                         ; $63a0: $de $f6
	ld   e, $ee                                      ; $63a2: $1e $ee
	ld   a, $fe                                      ; $63a4: $3e $fe
	ld   a, $be                                      ; $63a6: $3e $be
	xor  $fa                                         ; $63a8: $ee $fa
	sbc  $f6                                         ; $63aa: $de $f6
	ld   e, $ee                                      ; $63ac: $1e $ee
	ld   a, $00                                      ; $63ae: $3e $00
	nop                                              ; $63b0: $00
	ld   [$1400], sp                                 ; $63b1: $08 $00 $14
	ld   [$181c], sp                                 ; $63b4: $08 $1c $18
	inc  e                                           ; $63b7: $1c
	jr   jr_09c_63ba                                 ; $63b8: $18 $00

jr_09c_63ba:
	nop                                              ; $63ba: $00
	jr   nc, jr_09c_63cd                             ; $63bb: $30 $10

	rra                                              ; $63bd: $1f
	ld   [bc], a                                     ; $63be: $02
	jr   jr_09c_63c1                                 ; $63bf: $18 $00

jr_09c_63c1:
	inc  c                                           ; $63c1: $0c
	nop                                              ; $63c2: $00
	nop                                              ; $63c3: $00
	nop                                              ; $63c4: $00
	add  b                                           ; $63c5: $80
	add  b                                           ; $63c6: $80
	ld   h, b                                        ; $63c7: $60
	ld   b, b                                        ; $63c8: $40
	jr   nc, @+$22                                   ; $63c9: $30 $20

	rra                                              ; $63cb: $1f
	add  hl, de                                      ; $63cc: $19

jr_09c_63cd:
	rrca                                             ; $63cd: $0f
	ld   c, $b3                                      ; $63ce: $0e $b3
	cp   e                                           ; $63d0: $bb
	inc  sp                                          ; $63d1: $33
	ld   [hl], a                                     ; $63d2: $77
	ld   [hl], e                                     ; $63d3: $73
	halt                                             ; $63d4: $76
	ld   [hl], a                                     ; $63d5: $77
	cp   $f7                                         ; $63d6: $fe $f7
	cp   $f7                                         ; $63d8: $fe $f7
	sbc  $fe                                         ; $63da: $de $fe
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63dc: $cf
	ei                                               ; $63dd: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63de: $cf
	rst  ToBoot                                         ; $63df: $c7
	nop                                              ; $63e0: $00
	jp   $8100                                       ; $63e1: $c3 $00 $81


	nop                                              ; $63e4: $00
	add  c                                           ; $63e5: $81
	nop                                              ; $63e6: $00
	add  c                                           ; $63e7: $81
	nop                                              ; $63e8: $00
	ld   bc, $0100                                   ; $63e9: $01 $00 $01
	add  c                                           ; $63ec: $81
	ld   bc, $8c83                                   ; $63ed: $01 $83 $8c
	adc  h                                           ; $63f0: $8c
	sbc  h                                           ; $63f1: $9c
	sbc  $9e                                         ; $63f2: $de $9e
	rst  $38                                         ; $63f4: $ff
	sbc  [hl]                                        ; $63f5: $9e
	rst  $38                                         ; $63f6: $ff
	sbc  a                                           ; $63f7: $9f
	ei                                               ; $63f8: $fb
	cp   a                                           ; $63f9: $bf
	di                                               ; $63fa: $f3
	ccf                                              ; $63fb: $3f
	di                                               ; $63fc: $f3
	ld   l, a                                        ; $63fd: $6f
	di                                               ; $63fe: $f3
	ld   b, a                                        ; $63ff: $47
	rst  $38                                         ; $6400: $ff
	ld   a, b                                        ; $6401: $78
	rst  ToBoot                                         ; $6402: $c7
	rst  $30                                         ; $6403: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6404: $cf
	db   $fc                                         ; $6405: $fc
	sbc  $f6                                         ; $6406: $de $f6
	rst  $30                                         ; $6408: $f7
	ld   h, a                                        ; $6409: $67
	push bc                                          ; $640a: $c5
	rst  $28                                         ; $640b: $ef
	rst  $20                                         ; $640c: $e7
	ld   h, b                                        ; $640d: $60
	ret  nz                                          ; $640e: $c0

	add  c                                           ; $640f: $81
	inc  bc                                          ; $6410: $03
	jp   nz, $c703                                   ; $6411: $c2 $03 $c7

	rlca                                             ; $6414: $07
	jp   $8080                                       ; $6415: $c3 $80 $80


	nop                                              ; $6418: $00
	nop                                              ; $6419: $00
	nop                                              ; $641a: $00
	nop                                              ; $641b: $00
	nop                                              ; $641c: $00
	nop                                              ; $641d: $00
	nop                                              ; $641e: $00
	ld   d, d                                        ; $641f: $52
	rst  $38                                         ; $6420: $ff
	rst  $38                                         ; $6421: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6422: $cf
	pop  hl                                          ; $6423: $e1
	ld   e, $ff                                      ; $6424: $1e $ff
	ccf                                              ; $6426: $3f
	call nc, $0e6d                                   ; $6427: $d4 $6d $0e
	ld   c, $0e                                      ; $642a: $0e $0e
	ld   a, [bc]                                     ; $642c: $0a
	dec  d                                           ; $642d: $15
	ld   e, $f6                                      ; $642e: $1e $f6
	sbc  [hl]                                        ; $6430: $9e
	ld   d, [hl]                                     ; $6431: $56
	cp   [hl]                                        ; $6432: $be
	ld   l, $fe                                      ; $6433: $2e $fe
	cp   $3e                                         ; $6435: $fe $3e
	cp   $ae                                         ; $6437: $fe $ae
	cp   d                                           ; $6439: $ba
	sbc  $76                                         ; $643a: $de $76
	sbc  $ee                                         ; $643c: $de $ee
	ld   a, $00                                      ; $643e: $3e $00
	nop                                              ; $6440: $00
	ld   [$1400], sp                                 ; $6441: $08 $00 $14
	ld   [$181c], sp                                 ; $6444: $08 $1c $18
	inc  e                                           ; $6447: $1c
	jr   jr_09c_644a                                 ; $6448: $18 $00

jr_09c_644a:
	nop                                              ; $644a: $00
	jr   nc, jr_09c_645d                             ; $644b: $30 $10

	rra                                              ; $644d: $1f
	ld   b, $b3                                      ; $644e: $06 $b3
	cp   e                                           ; $6450: $bb
	inc  sp                                          ; $6451: $33
	ld   [hl], a                                     ; $6452: $77
	ld   [hl], e                                     ; $6453: $73
	halt                                             ; $6454: $76
	ld   [hl], a                                     ; $6455: $77
	cp   $f7                                         ; $6456: $fe $f7
	cp   $f7                                         ; $6458: $fe $f7
	sbc  $ce                                         ; $645a: $de $ce
	rst  $38                                         ; $645c: $ff

jr_09c_645d:
	ld   a, [$8ccf]                                  ; $645d: $fa $cf $8c
	adc  h                                           ; $6460: $8c
	sbc  h                                           ; $6461: $9c
	sbc  $9e                                         ; $6462: $de $9e
	rst  $38                                         ; $6464: $ff
	sbc  [hl]                                        ; $6465: $9e
	rst  $38                                         ; $6466: $ff
	sbc  a                                           ; $6467: $9f
	ei                                               ; $6468: $fb
	cp   a                                           ; $6469: $bf
	di                                               ; $646a: $f3
	inc  sp                                          ; $646b: $33
	rst  $38                                         ; $646c: $ff
	ld   a, a                                        ; $646d: $7f
	rst  $38                                         ; $646e: $ff
	ld   a, a                                        ; $646f: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6470: $cf
	ld   l, a                                        ; $6471: $6f
	db   $db                                         ; $6472: $db
	ld   hl, sp-$0d                                  ; $6473: $f8 $f3
	ldh  a, [$d2]                                    ; $6475: $f0 $d2
	ldh  a, [c]                                      ; $6477: $f2
	jp   wNumPaletteColorsToLoadCompDataFor                                       ; $6478: $c3 $63 $c3


	db   $eb                                         ; $647b: $eb
	add  sp, $6f                                     ; $647c: $e8 $6f
	rst  ToBoot                                         ; $647e: $c7
	add  c                                           ; $647f: $81
	inc  bc                                          ; $6480: $03
	ld   [bc], a                                     ; $6481: $02
	add  e                                           ; $6482: $83
	add  a                                           ; $6483: $87
	rlca                                             ; $6484: $07
	inc  bc                                          ; $6485: $03
	nop                                              ; $6486: $00
	nop                                              ; $6487: $00
	nop                                              ; $6488: $00
	nop                                              ; $6489: $00
	nop                                              ; $648a: $00
	nop                                              ; $648b: $00
	nop                                              ; $648c: $00
	nop                                              ; $648d: $00
	nop                                              ; $648e: $00
	ld   a, [hl]                                     ; $648f: $7e
	db   $e3                                         ; $6490: $e3
	rst  $38                                         ; $6491: $ff
	rst  $38                                         ; $6492: $ff
	db   $fd                                         ; $6493: $fd
	ld   h, e                                        ; $6494: $63
	pop  hl                                          ; $6495: $e1
	ld   c, h                                        ; $6496: $4c
	add  d                                           ; $6497: $82
	ld   [$0c0a], sp                                 ; $6498: $08 $0a $0c
	ld   c, $0c                                      ; $649b: $0e $0c
	inc  c                                           ; $649d: $0c
	nop                                              ; $649e: $00
	or   [hl]                                        ; $649f: $b6
	sbc  $d6                                         ; $64a0: $de $d6
	ld   a, $ee                                      ; $64a2: $3e $ee
	cp   [hl]                                        ; $64a4: $be
	cp   $fe                                         ; $64a5: $fe $fe
	sbc  $6e                                         ; $64a7: $de $6e
	cp   d                                           ; $64a9: $ba
	ld   e, [hl]                                     ; $64aa: $5e
	or   $1e                                         ; $64ab: $f6 $1e
	xor  $3e                                         ; $64ad: $ee $3e
	nop                                              ; $64af: $00
	nop                                              ; $64b0: $00
	ld   [$1400], sp                                 ; $64b1: $08 $00 $14
	ld   [$181c], sp                                 ; $64b4: $08 $1c $18
	inc  e                                           ; $64b7: $1c
	jr   jr_09c_64ba                                 ; $64b8: $18 $00

jr_09c_64ba:
	nop                                              ; $64ba: $00
	ld   e, $18                                      ; $64bb: $1e $18
	dec  de                                          ; $64bd: $1b
	ld   bc, $1e1f                                   ; $64be: $01 $1f $1e
	ld   bc, $0000                                   ; $64c1: $01 $00 $00
	nop                                              ; $64c4: $00
	nop                                              ; $64c5: $00
	nop                                              ; $64c6: $00
	nop                                              ; $64c7: $00
	nop                                              ; $64c8: $00
	nop                                              ; $64c9: $00
	nop                                              ; $64ca: $00
	nop                                              ; $64cb: $00
	nop                                              ; $64cc: $00
	ld   bc, $0900                                   ; $64cd: $01 $00 $09
	add  hl, bc                                      ; $64d0: $09
	add  hl, bc                                      ; $64d1: $09
	ld   [$060f], sp                                 ; $64d2: $08 $0f $06
	add  [hl]                                        ; $64d5: $86
	add  b                                           ; $64d6: $80
	ld   h, b                                        ; $64d7: $60
	ld   b, b                                        ; $64d8: $40
	jr   nc, jr_09c_64fb                             ; $64d9: $30 $20

	rra                                              ; $64db: $1f
	add  hl, de                                      ; $64dc: $19
	rrca                                             ; $64dd: $0f
	ld   c, $00                                      ; $64de: $0e $00
	nop                                              ; $64e0: $00
	nop                                              ; $64e1: $00
	nop                                              ; $64e2: $00
	nop                                              ; $64e3: $00
	nop                                              ; $64e4: $00
	nop                                              ; $64e5: $00
	nop                                              ; $64e6: $00
	nop                                              ; $64e7: $00
	nop                                              ; $64e8: $00
	nop                                              ; $64e9: $00
	nop                                              ; $64ea: $00
	nop                                              ; $64eb: $00
	nop                                              ; $64ec: $00
	nop                                              ; $64ed: $00
	nop                                              ; $64ee: $00
	nop                                              ; $64ef: $00
	nop                                              ; $64f0: $00
	nop                                              ; $64f1: $00
	nop                                              ; $64f2: $00
	nop                                              ; $64f3: $00
	nop                                              ; $64f4: $00
	nop                                              ; $64f5: $00
	nop                                              ; $64f6: $00
	nop                                              ; $64f7: $00
	nop                                              ; $64f8: $00
	nop                                              ; $64f9: $00
	nop                                              ; $64fa: $00

jr_09c_64fb:
	nop                                              ; $64fb: $00
	nop                                              ; $64fc: $00
	nop                                              ; $64fd: $00
	nop                                              ; $64fe: $00
	nop                                              ; $64ff: $00
	nop                                              ; $6500: $00
	nop                                              ; $6501: $00
	nop                                              ; $6502: $00
	nop                                              ; $6503: $00
	nop                                              ; $6504: $00
	nop                                              ; $6505: $00
	nop                                              ; $6506: $00
	nop                                              ; $6507: $00
	nop                                              ; $6508: $00
	nop                                              ; $6509: $00
	nop                                              ; $650a: $00
	nop                                              ; $650b: $00
	nop                                              ; $650c: $00
	nop                                              ; $650d: $00
	nop                                              ; $650e: $00
	nop                                              ; $650f: $00
	nop                                              ; $6510: $00
	nop                                              ; $6511: $00
	nop                                              ; $6512: $00
	nop                                              ; $6513: $00
	nop                                              ; $6514: $00
	nop                                              ; $6515: $00
	nop                                              ; $6516: $00
	nop                                              ; $6517: $00
	nop                                              ; $6518: $00
	nop                                              ; $6519: $00
	nop                                              ; $651a: $00
	nop                                              ; $651b: $00
	nop                                              ; $651c: $00
	nop                                              ; $651d: $00
	nop                                              ; $651e: $00
	nop                                              ; $651f: $00
	nop                                              ; $6520: $00
	nop                                              ; $6521: $00
	nop                                              ; $6522: $00
	nop                                              ; $6523: $00
	nop                                              ; $6524: $00
	nop                                              ; $6525: $00
	nop                                              ; $6526: $00
	nop                                              ; $6527: $00
	nop                                              ; $6528: $00
	nop                                              ; $6529: $00
	nop                                              ; $652a: $00
	nop                                              ; $652b: $00
	nop                                              ; $652c: $00
	nop                                              ; $652d: $00
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
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $654f: $cf
	rst  $38                                         ; $6550: $ff
	inc  bc                                          ; $6551: $03
	rst  ToBoot                                         ; $6552: $c7
	ld   sp, hl                                      ; $6553: $f9
	rst  $38                                         ; $6554: $ff
	ld   c, $9f                                      ; $6555: $0e $9f
	ld   a, a                                        ; $6557: $7f
	ld   a, a                                        ; $6558: $7f
	db   $e4                                         ; $6559: $e4
	ld   hl, sp-$20                                  ; $655a: $f8 $e0
	add  b                                           ; $655c: $80
	ret  nz                                          ; $655d: $c0

	add  b                                           ; $655e: $80
	ld   a, c                                        ; $655f: $79
	ei                                               ; $6560: $fb
	cp   e                                           ; $6561: $bb
	rst  $38                                         ; $6562: $ff
	ld   a, [$7aff]                                  ; $6563: $fa $ff $7a
	rst  $38                                         ; $6566: $ff
	ld   a, a                                        ; $6567: $7f
	rst  $38                                         ; $6568: $ff
	sbc  b                                           ; $6569: $98
	ld   a, l                                        ; $656a: $7d
	nop                                              ; $656b: $00
	nop                                              ; $656c: $00
	nop                                              ; $656d: $00
	nop                                              ; $656e: $00
	ld   l, a                                        ; $656f: $6f
	rst  $38                                         ; $6570: $ff
	ld   l, [hl]                                     ; $6571: $6e
	rst  $38                                         ; $6572: $ff
	db   $dd                                         ; $6573: $dd
	rst  $38                                         ; $6574: $ff
	rst  $30                                         ; $6575: $f7
	rst  $38                                         ; $6576: $ff
	sub  c                                           ; $6577: $91
	and  $07                                         ; $6578: $e6 $07
	nop                                              ; $657a: $00
	inc  bc                                          ; $657b: $03
	nop                                              ; $657c: $00
	inc  bc                                          ; $657d: $03
	nop                                              ; $657e: $00
	ld   a, [bc]                                     ; $657f: $0a
	cp   $3e                                         ; $6580: $fe $3e
	ld   a, $fe                                      ; $6582: $3e $fe
	cp   $c6                                         ; $6584: $fe $c6
	cp   $5a                                         ; $6586: $fe $5a
	cp   [hl]                                        ; $6588: $be
	cp   $3e                                         ; $6589: $fe $3e
	jp   nz, $be3e                                   ; $658b: $c2 $3e $be

	ld   a, [hl]                                     ; $658e: $7e
	add  b                                           ; $658f: $80
	ret  nz                                          ; $6590: $c0

	ret  nz                                          ; $6591: $c0

	add  b                                           ; $6592: $80
	ret  nz                                          ; $6593: $c0

	ret  nz                                          ; $6594: $c0

	add  b                                           ; $6595: $80
	ret  nz                                          ; $6596: $c0

	ld   b, b                                        ; $6597: $40
	add  b                                           ; $6598: $80
	ld   b, b                                        ; $6599: $40
	ret  nz                                          ; $659a: $c0

	ret  nz                                          ; $659b: $c0

	ret  nz                                          ; $659c: $c0

	sbc  [hl]                                        ; $659d: $9e
	ret  nz                                          ; $659e: $c0

	nop                                              ; $659f: $00
	nop                                              ; $65a0: $00
	nop                                              ; $65a1: $00
	nop                                              ; $65a2: $00
	nop                                              ; $65a3: $00
	nop                                              ; $65a4: $00
	nop                                              ; $65a5: $00
	nop                                              ; $65a6: $00
	nop                                              ; $65a7: $00
	nop                                              ; $65a8: $00
	nop                                              ; $65a9: $00
	nop                                              ; $65aa: $00
	nop                                              ; $65ab: $00
	nop                                              ; $65ac: $00
	nop                                              ; $65ad: $00
	nop                                              ; $65ae: $00
	inc  bc                                          ; $65af: $03
	nop                                              ; $65b0: $00
	inc  bc                                          ; $65b1: $03
	nop                                              ; $65b2: $00
	inc  bc                                          ; $65b3: $03
	nop                                              ; $65b4: $00
	inc  bc                                          ; $65b5: $03
	nop                                              ; $65b6: $00
	inc  bc                                          ; $65b7: $03
	nop                                              ; $65b8: $00
	inc  bc                                          ; $65b9: $03
	nop                                              ; $65ba: $00
	rlca                                             ; $65bb: $07
	nop                                              ; $65bc: $00
	rlca                                             ; $65bd: $07
	rrca                                             ; $65be: $0f
	add  $7e                                         ; $65bf: $c6 $7e
	cp   $7e                                         ; $65c1: $fe $7e
	and  d                                           ; $65c3: $a2

jr_09c_65c4:
	ld   a, [hl]                                     ; $65c4: $7e
	cp   $3e                                         ; $65c5: $fe $3e
	sbc  $3e                                         ; $65c7: $de $3e
	or   $1e                                         ; $65c9: $f6 $1e
	xor  $1e                                         ; $65cb: $ee $1e
	cp   d                                           ; $65cd: $ba
	adc  $cf                                         ; $65ce: $ce $cf
	cp   a                                           ; $65d0: $bf
	pop  hl                                          ; $65d1: $e1
	add  e                                           ; $65d2: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65d3: $cf
	add  [hl]                                        ; $65d4: $86
	sbc  c                                           ; $65d5: $99
	ld   c, e                                        ; $65d6: $4b
	push de                                          ; $65d7: $d5
	ld   b, e                                        ; $65d8: $43
	ldh  [$c0], a                                    ; $65d9: $e0 $c0
	ldh  [$c0], a                                    ; $65db: $e0 $c0
	ret  nz                                          ; $65dd: $c0

	ldh  [rLCDC], a                                  ; $65de: $e0 $40
	add  b                                           ; $65e0: $80
	ldh  a, [$e0]                                    ; $65e1: $f0 $e0
	sub  c                                           ; $65e3: $91
	ldh  a, [$d8]                                    ; $65e4: $f0 $d8
	add  b                                           ; $65e6: $80
	ld   [$0080], sp                                 ; $65e7: $08 $80 $00
	nop                                              ; $65ea: $00
	nop                                              ; $65eb: $00
	nop                                              ; $65ec: $00
	ld   bc, $3b00                                   ; $65ed: $01 $00 $3b
	inc  a                                           ; $65f0: $3c
	cp   [hl]                                        ; $65f1: $be
	ld   [hl], a                                     ; $65f2: $77
	ld   h, a                                        ; $65f3: $67
	adc  [hl]                                        ; $65f4: $8e

jr_09c_65f5:
	sub  $0e                                         ; $65f5: $d6 $0e
	nop                                              ; $65f7: $00
	nop                                              ; $65f8: $00
	nop                                              ; $65f9: $00
	nop                                              ; $65fa: $00
	nop                                              ; $65fb: $00
	nop                                              ; $65fc: $00
	nop                                              ; $65fd: $00
	nop                                              ; $65fe: $00
	sbc  [hl]                                        ; $65ff: $9e
	ld   l, [hl]                                     ; $6600: $6e
	ld   a, [hl]                                     ; $6601: $7e
	ld   c, $be                                      ; $6602: $0e $be
	adc  d                                           ; $6604: $8a
	ld   a, $8e                                      ; $6605: $3e $8e
	ld   a, $0a                                      ; $6607: $3e $0a
	ld   l, $1e                                      ; $6609: $2e $1e
	ld   l, [hl]                                     ; $660b: $6e
	ld   a, [de]                                     ; $660c: $1a
	ld   l, [hl]                                     ; $660d: $6e
	ld   e, $c0                                      ; $660e: $1e $c0
	ld   h, b                                        ; $6610: $60
	ld   [hl], b                                     ; $6611: $70
	jr   nz, jr_09c_65c4                             ; $6612: $20 $b0

	and  b                                           ; $6614: $a0
	ld   [hl], b                                     ; $6615: $70
	ld   h, b                                        ; $6616: $60
	jr   nc, jr_09c_6649                             ; $6617: $30 $30

	jr   jr_09c_662b                                 ; $6619: $18 $10

	ld   [$0c08], sp                                 ; $661b: $08 $08 $0c
	ld   [$0001], sp                                 ; $661e: $08 $01 $00
	dec  b                                           ; $6621: $05
	nop                                              ; $6622: $00
	add  hl, bc                                      ; $6623: $09
	inc  b                                           ; $6624: $04
	dec  b                                           ; $6625: $05
	inc  c                                           ; $6626: $0c
	ld   bc, $0006                                   ; $6627: $01 $06 $00
	nop                                              ; $662a: $00

jr_09c_662b:
	dec  b                                           ; $662b: $05
	add  hl, bc                                      ; $662c: $09
	nop                                              ; $662d: $00
	nop                                              ; $662e: $00
	nop                                              ; $662f: $00
	nop                                              ; $6630: $00
	add  b                                           ; $6631: $80
	nop                                              ; $6632: $00
	add  b                                           ; $6633: $80
	nop                                              ; $6634: $00
	add  b                                           ; $6635: $80
	nop                                              ; $6636: $00
	nop                                              ; $6637: $00
	nop                                              ; $6638: $00
	ld   h, b                                        ; $6639: $60
	db   $10                                         ; $663a: $10
	and  c                                           ; $663b: $a1
	ret  nz                                          ; $663c: $c0

	ld   bc, $7e00                                   ; $663d: $01 $00 $7e
	ld   e, $7a                                      ; $6640: $1e $7a
	ld   a, [de]                                     ; $6642: $1a
	or   $16                                         ; $6643: $f6 $16
	ld   a, [$f21a]                                  ; $6645: $fa $1a $f2
	ld   [de], a                                     ; $6648: $12

jr_09c_6649:
	ldh  [c], a                                      ; $6649: $e2
	ld   [hl+], a                                    ; $664a: $22
	ldh  [c], a                                      ; $664b: $e2
	ld   [hl+], a                                    ; $664c: $22
	ldh  [c], a                                      ; $664d: $e2
	ld   h, d                                        ; $664e: $62
	ld   b, $04                                      ; $664f: $06 $04
	inc  bc                                          ; $6651: $03
	ld   [bc], a                                     ; $6652: $02
	ld   bc, $0303                                   ; $6653: $01 $03 $03
	inc  bc                                          ; $6656: $03
	rlca                                             ; $6657: $07
	ld   b, $0f                                      ; $6658: $06 $0f
	ld   c, $17                                      ; $665a: $0e $17
	rla                                              ; $665c: $17
	dec  h                                           ; $665d: $25
	daa                                              ; $665e: $27
	nop                                              ; $665f: $00
	inc  bc                                          ; $6660: $03
	inc  bc                                          ; $6661: $03
	nop                                              ; $6662: $00
	add  b                                           ; $6663: $80
	nop                                              ; $6664: $00

jr_09c_6665:
	ret  nz                                          ; $6665: $c0

	add  b                                           ; $6666: $80
	ldh  [rLCDC], a                                  ; $6667: $e0 $40
	ld   [hl], b                                     ; $6669: $70
	jr   nz, jr_09c_66a0                             ; $666a: $20 $34

	jr   jr_09c_65f5                                 ; $666c: $18 $87

	rrca                                             ; $666e: $0f
	ld   b, e                                        ; $666f: $43
	add  b                                           ; $6670: $80
	add  e                                           ; $6671: $83
	ld   bc, $0307                                   ; $6672: $01 $07 $03
	rlca                                             ; $6675: $07
	ld   b, $0f                                      ; $6676: $06 $0f
	inc  c                                           ; $6678: $0c
	rra                                              ; $6679: $1f
	jr   jr_09c_66fb                                 ; $667a: $18 $7f

	jr   nc, jr_09c_6665                             ; $667c: $30 $e7

	pop  bc                                          ; $667e: $c1
	ldh  [c], a                                      ; $667f: $e2
	ldh  [c], a                                      ; $6680: $e2
	ldh  [c], a                                      ; $6681: $e2
	and  d                                           ; $6682: $a2
	ldh  a, [c]                                      ; $6683: $f2
	ld   [hl-], a                                    ; $6684: $32

jr_09c_6685:
	ldh  a, [c]                                      ; $6685: $f2
	ld   [hl-], a                                    ; $6686: $32
	cp   $3e                                         ; $6687: $fe $3e
	or   $76                                         ; $6689: $f6 $76
	ld   a, [$fa7a]                                  ; $668b: $fa $7a $fa
	ld   a, [$4744]                                  ; $668e: $fa $44 $47
	adc  b                                           ; $6691: $88
	adc  a                                           ; $6692: $8f
	ld   [$0c0f], sp                                 ; $6693: $08 $0f $0c
	rrca                                             ; $6696: $0f
	inc  c                                           ; $6697: $0c
	rrca                                             ; $6698: $0f
	ld   c, d                                        ; $6699: $4a
	rrca                                             ; $669a: $0f
	rrc  a                                           ; $669b: $cb $0f
	rrc  a                                           ; $669d: $cb $0f
	add  b                                           ; $669f: $80

jr_09c_66a0:
	add  b                                           ; $66a0: $80
	ld   b, b                                        ; $66a1: $40
	ret  nz                                          ; $66a2: $c0

	jr   nz, jr_09c_6685                             ; $66a3: $20 $e0

	db   $10                                         ; $66a5: $10
	ldh  a, [$09]                                    ; $66a6: $f0 $09
	ld   sp, hl                                      ; $66a8: $f9
	rrca                                             ; $66a9: $0f
	rst  $38                                         ; $66aa: $ff
	rrca                                             ; $66ab: $0f
	rst  $38                                         ; $66ac: $ff
	rra                                              ; $66ad: $1f
	rst  $38                                         ; $66ae: $ff
	inc  bc                                          ; $66af: $03
	inc  bc                                          ; $66b0: $03
	inc  c                                           ; $66b1: $0c
	rrca                                             ; $66b2: $0f
	jr   nc, jr_09c_66f4                             ; $66b3: $30 $3f

	ld   b, c                                        ; $66b5: $41
	ld   a, a                                        ; $66b6: $7f
	add  e                                           ; $66b7: $83
	rst  $38                                         ; $66b8: $ff
	inc  bc                                          ; $66b9: $03
	rst  $38                                         ; $66ba: $ff
	add  a                                           ; $66bb: $87
	rst  $38                                         ; $66bc: $ff
	rst  ToBoot                                         ; $66bd: $c7
	rst  $38                                         ; $66be: $ff
	ld   a, [$fafa]                                  ; $66bf: $fa $fa $fa
	ld   a, [$fafa]                                  ; $66c2: $fa $fa $fa
	ld   a, [$f6fa]                                  ; $66c5: $fa $fa $f6
	ldh  a, [c]                                      ; $66c8: $f2
	or   $f2                                         ; $66c9: $f6 $f2
	sub  $f2                                         ; $66cb: $d6 $f2
	and  [hl]                                        ; $66cd: $a6
	ldh  [c], a                                      ; $66ce: $e2
	add  b                                           ; $66cf: $80
	ret  nz                                          ; $66d0: $c0

	ret  nz                                          ; $66d1: $c0

	add  b                                           ; $66d2: $80
	ret  nz                                          ; $66d3: $c0

	ret  nz                                          ; $66d4: $c0

	add  b                                           ; $66d5: $80
	ret  nz                                          ; $66d6: $c0

	ld   b, b                                        ; $66d7: $40
	add  b                                           ; $66d8: $80
	ld   b, b                                        ; $66d9: $40
	ret  nz                                          ; $66da: $c0

	ret  nz                                          ; $66db: $c0

	ret  nz                                          ; $66dc: $c0

	sbc  [hl]                                        ; $66dd: $9e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66de: $cf
	nop                                              ; $66df: $00
	nop                                              ; $66e0: $00
	nop                                              ; $66e1: $00
	nop                                              ; $66e2: $00
	nop                                              ; $66e3: $00
	nop                                              ; $66e4: $00
	nop                                              ; $66e5: $00
	nop                                              ; $66e6: $00
	nop                                              ; $66e7: $00
	nop                                              ; $66e8: $00
	nop                                              ; $66e9: $00
	nop                                              ; $66ea: $00
	nop                                              ; $66eb: $00
	nop                                              ; $66ec: $00
	add  b                                           ; $66ed: $80
	nop                                              ; $66ee: $00
	inc  bc                                          ; $66ef: $03
	nop                                              ; $66f0: $00
	inc  bc                                          ; $66f1: $03
	nop                                              ; $66f2: $00
	inc  bc                                          ; $66f3: $03

jr_09c_66f4:
	nop                                              ; $66f4: $00
	inc  bc                                          ; $66f5: $03
	nop                                              ; $66f6: $00
	inc  bc                                          ; $66f7: $03
	nop                                              ; $66f8: $00
	rlca                                             ; $66f9: $07
	nop                                              ; $66fa: $00

jr_09c_66fb:
	rlca                                             ; $66fb: $07
	rrca                                             ; $66fc: $0f
	rra                                              ; $66fd: $1f
	jr   c, @-$38                                    ; $66fe: $38 $c6

	ld   a, [hl]                                     ; $6700: $7e
	cp   $7e                                         ; $6701: $fe $7e
	and  d                                           ; $6703: $a2
	ld   a, [hl]                                     ; $6704: $7e
	cp   $3e                                         ; $6705: $fe $3e
	sbc  $3e                                         ; $6707: $de $3e
	or   $1e                                         ; $6709: $f6 $1e
	xor  $9e                                         ; $670b: $ee $9e
	sbc  d                                           ; $670d: $9a
	ld   l, [hl]                                     ; $670e: $6e
	adc  $b1                                         ; $670f: $ce $b1
	pop  hl                                          ; $6711: $e1
	add  e                                           ; $6712: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6713: $cf
	add  [hl]                                        ; $6714: $86
	sbc  c                                           ; $6715: $99
	ld   c, e                                        ; $6716: $4b
	push de                                          ; $6717: $d5
	ld   b, e                                        ; $6718: $43
	ldh  [$c0], a                                    ; $6719: $e0 $c0
	ldh  [$c0], a                                    ; $671b: $e0 $c0
	ret  nz                                          ; $671d: $c0

	ldh  [rLCDC], a                                  ; $671e: $e0 $40
	add  b                                           ; $6720: $80
	ldh  a, [$e0]                                    ; $6721: $f0 $e0
	sub  c                                           ; $6723: $91
	ldh  a, [$d8]                                    ; $6724: $f0 $d8
	add  b                                           ; $6726: $80
	ld   [$0080], sp                                 ; $6727: $08 $80 $00
	nop                                              ; $672a: $00
	nop                                              ; $672b: $00
	nop                                              ; $672c: $00
	ld   bc, $7b00                                   ; $672d: $01 $00 $7b
	ld   l, h                                        ; $6730: $6c
	cp   [hl]                                        ; $6731: $be
	ld   [hl], a                                     ; $6732: $77
	ld   h, a                                        ; $6733: $67
	adc  [hl]                                        ; $6734: $8e
	sub  $0e                                         ; $6735: $d6 $0e
	nop                                              ; $6737: $00
	nop                                              ; $6738: $00
	nop                                              ; $6739: $00
	nop                                              ; $673a: $00
	nop                                              ; $673b: $00
	nop                                              ; $673c: $00
	nop                                              ; $673d: $00
	nop                                              ; $673e: $00
	cp   $0e                                         ; $673f: $fe $0e
	ld   a, [hl]                                     ; $6741: $7e
	ld   c, $be                                      ; $6742: $0e $be
	adc  d                                           ; $6744: $8a
	ld   a, $8e                                      ; $6745: $3e $8e
	ld   a, $0a                                      ; $6747: $3e $0a
	ld   l, $1e                                      ; $6749: $2e $1e
	ld   l, [hl]                                     ; $674b: $6e
	ld   a, [de]                                     ; $674c: $1a
	ld   l, [hl]                                     ; $674d: $6e
	ld   e, $01                                      ; $674e: $1e $01
	nop                                              ; $6750: $00
	dec  b                                           ; $6751: $05
	nop                                              ; $6752: $00
	add  hl, bc                                      ; $6753: $09
	inc  b                                           ; $6754: $04
	dec  b                                           ; $6755: $05
	inc  c                                           ; $6756: $0c
	ld   bc, $0006                                   ; $6757: $01 $06 $00
	db   $10                                         ; $675a: $10
	dec  d                                           ; $675b: $15
	add  hl, bc                                      ; $675c: $09
	nop                                              ; $675d: $00
	nop                                              ; $675e: $00
	nop                                              ; $675f: $00
	nop                                              ; $6760: $00
	add  b                                           ; $6761: $80
	nop                                              ; $6762: $00
	add  b                                           ; $6763: $80
	nop                                              ; $6764: $00
	add  b                                           ; $6765: $80
	nop                                              ; $6766: $00
	nop                                              ; $6767: $00
	nop                                              ; $6768: $00
	db   $10                                         ; $6769: $10
	ld   [$e091], sp                                 ; $676a: $08 $91 $e0
	ld   bc, $8000                                   ; $676d: $01 $00 $80
	ret  nz                                          ; $6770: $c0

	ret  nz                                          ; $6771: $c0

	add  b                                           ; $6772: $80
	ret  nz                                          ; $6773: $c0

	ret  nz                                          ; $6774: $c0

	add  b                                           ; $6775: $80
	ret  nz                                          ; $6776: $c0

	ld   b, b                                        ; $6777: $40
	add  b                                           ; $6778: $80
	ld   b, b                                        ; $6779: $40
	ret  nz                                          ; $677a: $c0

	ret  nz                                          ; $677b: $c0

	ret  nz                                          ; $677c: $c0

	adc  [hl]                                        ; $677d: $8e
	ld   hl, sp+$03                                  ; $677e: $f8 $03
	nop                                              ; $6780: $00
	inc  bc                                          ; $6781: $03
	nop                                              ; $6782: $00
	inc  bc                                          ; $6783: $03
	nop                                              ; $6784: $00
	inc  bc                                          ; $6785: $03
	nop                                              ; $6786: $00
	inc  bc                                          ; $6787: $03
	nop                                              ; $6788: $00
	inc  bc                                          ; $6789: $03
	nop                                              ; $678a: $00
	ld   b, $01                                      ; $678b: $06 $01
	rlca                                             ; $678d: $07
	rrca                                             ; $678e: $0f
	add  $7e                                         ; $678f: $c6 $7e
	cp   $7e                                         ; $6791: $fe $7e
	and  d                                           ; $6793: $a2
	ld   a, [hl]                                     ; $6794: $7e
	cp   $3e                                         ; $6795: $fe $3e
	sbc  $3e                                         ; $6797: $de $3e
	or   $1e                                         ; $6799: $f6 $1e
	ld   l, $de                                      ; $679b: $2e $de
	ld   a, [$ff0e]                                  ; $679d: $fa $0e $ff
	add  a                                           ; $67a0: $87
	push bc                                          ; $67a1: $c5
	add  e                                           ; $67a2: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67a3: $cf
	add  [hl]                                        ; $67a4: $86
	sbc  c                                           ; $67a5: $99
	ld   c, e                                        ; $67a6: $4b
	push de                                          ; $67a7: $d5
	ld   b, e                                        ; $67a8: $43
	ldh  [$c0], a                                    ; $67a9: $e0 $c0
	ldh  [$c0], a                                    ; $67ab: $e0 $c0
	ret  nz                                          ; $67ad: $c0

	ldh  [rLCDC], a                                  ; $67ae: $e0 $40
	add  b                                           ; $67b0: $80
	ldh  a, [$c0]                                    ; $67b1: $f0 $c0
	or   c                                           ; $67b3: $b1
	ldh  a, [$d8]                                    ; $67b4: $f0 $d8
	ret  nz                                          ; $67b6: $c0

	ld   [$0080], sp                                 ; $67b7: $08 $80 $00
	nop                                              ; $67ba: $00
	nop                                              ; $67bb: $00
	nop                                              ; $67bc: $00
	ld   bc, $3b00                                   ; $67bd: $01 $00 $3b
	inc  a                                           ; $67c0: $3c
	cp   [hl]                                        ; $67c1: $be
	ld   [hl], a                                     ; $67c2: $77
	ld   [hl], a                                     ; $67c3: $77
	sbc  [hl]                                        ; $67c4: $9e
	sub  $0e                                         ; $67c5: $d6 $0e
	nop                                              ; $67c7: $00
	nop                                              ; $67c8: $00
	nop                                              ; $67c9: $00
	nop                                              ; $67ca: $00
	nop                                              ; $67cb: $00
	nop                                              ; $67cc: $00
	nop                                              ; $67cd: $00
	nop                                              ; $67ce: $00
	ld   bc, $0500                                   ; $67cf: $01 $00 $05
	nop                                              ; $67d2: $00
	add  hl, bc                                      ; $67d3: $09
	inc  b                                           ; $67d4: $04
	dec  b                                           ; $67d5: $05
	inc  c                                           ; $67d6: $0c
	ld   bc, $0006                                   ; $67d7: $01 $06 $00
	nop                                              ; $67da: $00
	dec  b                                           ; $67db: $05
	add  hl, de                                      ; $67dc: $19
	nop                                              ; $67dd: $00
	nop                                              ; $67de: $00
	nop                                              ; $67df: $00
	nop                                              ; $67e0: $00
	add  b                                           ; $67e1: $80
	nop                                              ; $67e2: $00
	add  b                                           ; $67e3: $80
	nop                                              ; $67e4: $00
	add  b                                           ; $67e5: $80
	nop                                              ; $67e6: $00
	nop                                              ; $67e7: $00
	nop                                              ; $67e8: $00
	nop                                              ; $67e9: $00
	nop                                              ; $67ea: $00
	sub  c                                           ; $67eb: $91
	ldh  a, [rSB]                                    ; $67ec: $f0 $01
	nop                                              ; $67ee: $00
	add  b                                           ; $67ef: $80
	ret  nz                                          ; $67f0: $c0

	ret  nz                                          ; $67f1: $c0

	add  b                                           ; $67f2: $80
	ret  nz                                          ; $67f3: $c0

	ret  nz                                          ; $67f4: $c0

	add  b                                           ; $67f5: $80
	ret  nz                                          ; $67f6: $c0

	ld   b, b                                        ; $67f7: $40
	add  b                                           ; $67f8: $80
	ld   b, b                                        ; $67f9: $40
	ret  nz                                          ; $67fa: $c0

	ldh  a, [$c0]                                    ; $67fb: $f0 $c0
	adc  d                                           ; $67fd: $8a
	db   $fc                                         ; $67fe: $fc
	inc  bc                                          ; $67ff: $03
	nop                                              ; $6800: $00
	inc  bc                                          ; $6801: $03
	nop                                              ; $6802: $00
	inc  bc                                          ; $6803: $03
	nop                                              ; $6804: $00
	inc  bc                                          ; $6805: $03
	nop                                              ; $6806: $00
	inc  bc                                          ; $6807: $03
	nop                                              ; $6808: $00
	inc  bc                                          ; $6809: $03
	nop                                              ; $680a: $00
	inc  b                                           ; $680b: $04
	inc  bc                                          ; $680c: $03
	rlca                                             ; $680d: $07
	ld   c, $ff                                      ; $680e: $0e $ff
	add  a                                           ; $6810: $87
	push hl                                          ; $6811: $e5
	add  a                                           ; $6812: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6813: $cf
	adc  d                                           ; $6814: $8a
	sbc  c                                           ; $6815: $99
	ld   c, e                                        ; $6816: $4b
	push de                                          ; $6817: $d5
	ld   b, e                                        ; $6818: $43
	ldh  [$c0], a                                    ; $6819: $e0 $c0
	ldh  [$c0], a                                    ; $681b: $e0 $c0
	ret  nz                                          ; $681d: $c0

	ldh  [rLCDC], a                                  ; $681e: $e0 $40
	add  b                                           ; $6820: $80
	ldh  a, [c]                                      ; $6821: $f2
	pop  hl                                          ; $6822: $e1
	sub  c                                           ; $6823: $91
	ldh  a, [$d8]                                    ; $6824: $f0 $d8
	add  b                                           ; $6826: $80
	ld   [$0080], sp                                 ; $6827: $08 $80 $00
	nop                                              ; $682a: $00
	nop                                              ; $682b: $00
	nop                                              ; $682c: $00
	ld   bc, $b800                                   ; $682d: $01 $00 $b8
	ccf                                              ; $6830: $3f
	cp   [hl]                                        ; $6831: $be
	ld   [hl], a                                     ; $6832: $77
	daa                                              ; $6833: $27
	adc  $d6                                         ; $6834: $ce $d6
	ld   c, $00                                      ; $6836: $0e $00
	nop                                              ; $6838: $00
	nop                                              ; $6839: $00
	nop                                              ; $683a: $00
	nop                                              ; $683b: $00
	nop                                              ; $683c: $00
	nop                                              ; $683d: $00
	nop                                              ; $683e: $00
	cp   $0e                                         ; $683f: $fe $0e
	ld   a, [hl]                                     ; $6841: $7e
	adc  [hl]                                        ; $6842: $8e
	cp   [hl]                                        ; $6843: $be
	adc  d                                           ; $6844: $8a
	ld   a, $8e                                      ; $6845: $3e $8e
	ld   a, $0a                                      ; $6847: $3e $0a
	ld   l, $1e                                      ; $6849: $2e $1e
	ld   l, [hl]                                     ; $684b: $6e
	ld   a, [de]                                     ; $684c: $1a
	ld   l, [hl]                                     ; $684d: $6e
	ld   e, $80                                      ; $684e: $1e $80
	ret  nz                                          ; $6850: $c0

	ret  nz                                          ; $6851: $c0

	add  b                                           ; $6852: $80
	ret  nz                                          ; $6853: $c0

	ret  nz                                          ; $6854: $c0

	add  b                                           ; $6855: $80
	ret  nz                                          ; $6856: $c0

	ld   b, b                                        ; $6857: $40
	add  b                                           ; $6858: $80
	ld   b, b                                        ; $6859: $40
	ret  nz                                          ; $685a: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $685b: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $685c: $cf
	sbc  a                                           ; $685d: $9f
	ldh  a, [rP1]                                    ; $685e: $f0 $00
	nop                                              ; $6860: $00
	nop                                              ; $6861: $00
	nop                                              ; $6862: $00
	nop                                              ; $6863: $00
	nop                                              ; $6864: $00
	nop                                              ; $6865: $00
	nop                                              ; $6866: $00
	nop                                              ; $6867: $00
	nop                                              ; $6868: $00
	nop                                              ; $6869: $00
	nop                                              ; $686a: $00
	nop                                              ; $686b: $00
	add  b                                           ; $686c: $80
	ldh  [$60], a                                    ; $686d: $e0 $60
	inc  bc                                          ; $686f: $03
	nop                                              ; $6870: $00
	inc  bc                                          ; $6871: $03
	nop                                              ; $6872: $00
	inc  bc                                          ; $6873: $03
	nop                                              ; $6874: $00
	inc  bc                                          ; $6875: $03
	nop                                              ; $6876: $00
	inc  bc                                          ; $6877: $03
	nop                                              ; $6878: $00
	rlca                                             ; $6879: $07
	rrca                                             ; $687a: $0f
	rra                                              ; $687b: $1f
	jr   nc, jr_09c_68bd                             ; $687c: $30 $3f

	ld   e, [hl]                                     ; $687e: $5e
	add  $7e                                         ; $687f: $c6 $7e
	cp   $7e                                         ; $6881: $fe $7e
	and  d                                           ; $6883: $a2
	ld   a, [hl]                                     ; $6884: $7e

jr_09c_6885:
	cp   $3e                                         ; $6885: $fe $3e
	sbc  $3e                                         ; $6887: $de $3e
	or   $1e                                         ; $6889: $f6 $1e
	ld   a, $ce                                      ; $688b: $3e $ce
	jp   c, $f32e                                    ; $688d: $da $2e $f3

	add  e                                           ; $6890: $83
	and  $86                                         ; $6891: $e6 $86
	call z, $988c                                    ; $6893: $cc $8c $98
	ld   c, b                                        ; $6896: $48
	ret  c                                           ; $6897: $d8

	ld   c, b                                        ; $6898: $48
	ldh  [$c0], a                                    ; $6899: $e0 $c0
	ldh  [$c3], a                                    ; $689b: $e0 $c3
	ret  nz                                          ; $689d: $c0

	ldh  [$f0], a                                    ; $689e: $e0 $f0
	ret  nc                                          ; $68a0: $d0

	jr   nc, jr_09c_68c3                             ; $68a1: $30 $20

	jr   nc, jr_09c_68a5                             ; $68a3: $30 $00

jr_09c_68a5:
	sub  b                                           ; $68a5: $90
	add  b                                           ; $68a6: $80
	add  b                                           ; $68a7: $80
	add  b                                           ; $68a8: $80
	nop                                              ; $68a9: $00
	nop                                              ; $68aa: $00
	ld   b, b                                        ; $68ab: $40
	add  b                                           ; $68ac: $80
	ld   bc, $6300                                   ; $68ad: $01 $00 $63
	and  e                                           ; $68b0: $a3
	ld   b, c                                        ; $68b1: $41
	ld   bc, $0888                                   ; $68b2: $01 $88 $08
	ld   [$0008], sp                                 ; $68b5: $08 $08 $00
	nop                                              ; $68b8: $00
	db   $10                                         ; $68b9: $10
	ld   c, $00                                      ; $68ba: $0e $00
	nop                                              ; $68bc: $00

jr_09c_68bd:
	nop                                              ; $68bd: $00
	nop                                              ; $68be: $00
	cp   $0e                                         ; $68bf: $fe $0e
	cp   $8e                                         ; $68c1: $fe $8e

jr_09c_68c3:
	cp   [hl]                                        ; $68c3: $be
	adc  d                                           ; $68c4: $8a
	cp   [hl]                                        ; $68c5: $be
	adc  [hl]                                        ; $68c6: $8e
	ld   a, $0a                                      ; $68c7: $3e $0a
	ld   l, $1e                                      ; $68c9: $2e $1e
	ld   l, [hl]                                     ; $68cb: $6e
	ld   a, [de]                                     ; $68cc: $1a
	ld   l, [hl]                                     ; $68cd: $6e
	ld   e, $01                                      ; $68ce: $1e $01
	nop                                              ; $68d0: $00
	dec  b                                           ; $68d1: $05
	nop                                              ; $68d2: $00
	add  hl, bc                                      ; $68d3: $09
	inc  b                                           ; $68d4: $04
	dec  b                                           ; $68d5: $05
	inc  c                                           ; $68d6: $0c
	ld   bc, $0006                                   ; $68d7: $01 $06 $00
	nop                                              ; $68da: $00
	dec  d                                           ; $68db: $15
	ld   c, $00                                      ; $68dc: $0e $00
	stop                                             ; $68de: $10 $00
	nop                                              ; $68e0: $00
	add  b                                           ; $68e1: $80
	nop                                              ; $68e2: $00
	add  b                                           ; $68e3: $80
	nop                                              ; $68e4: $00
	add  b                                           ; $68e5: $80
	nop                                              ; $68e6: $00
	nop                                              ; $68e7: $00
	nop                                              ; $68e8: $00
	ld   h, b                                        ; $68e9: $60
	ldh  [rAUD1LEN], a                               ; $68ea: $e0 $11
	db   $10                                         ; $68ec: $10
	ld   sp, hl                                      ; $68ed: $f9
	ld   [$101f], sp                                 ; $68ee: $08 $1f $10
	rra                                              ; $68f1: $1f
	ld   [$078b], sp                                 ; $68f2: $08 $8b $07

jr_09c_68f5:
	pop  bc                                          ; $68f5: $c1
	add  b                                           ; $68f6: $80
	db   $e3                                         ; $68f7: $e3
	ld   b, b                                        ; $68f8: $40
	ld   [hl], b                                     ; $68f9: $70
	jr   nz, jr_09c_6930                             ; $68fa: $20 $34

	jr   jr_09c_6885                                 ; $68fc: $18 $87

	rrca                                             ; $68fe: $0f
	di                                               ; $68ff: $f3
	ld   [$11e3], sp                                 ; $6900: $08 $e3 $11
	add  a                                           ; $6903: $87
	db   $e3                                         ; $6904: $e3
	rlca                                             ; $6905: $07
	ld   b, $8f                                      ; $6906: $06 $8f
	inc  c                                           ; $6908: $0c
	rra                                              ; $6909: $1f
	jr   jr_09c_698b                                 ; $690a: $18 $7f

	jr   nc, jr_09c_68f5                             ; $690c: $30 $e7

	pop  bc                                          ; $690e: $c1
	nop                                              ; $690f: $00
	nop                                              ; $6910: $00
	nop                                              ; $6911: $00
	nop                                              ; $6912: $00
	nop                                              ; $6913: $00
	nop                                              ; $6914: $00
	nop                                              ; $6915: $00
	nop                                              ; $6916: $00
	nop                                              ; $6917: $00
	nop                                              ; $6918: $00
	nop                                              ; $6919: $00
	nop                                              ; $691a: $00
	nop                                              ; $691b: $00
	nop                                              ; $691c: $00
	nop                                              ; $691d: $00
	nop                                              ; $691e: $00
	nop                                              ; $691f: $00
	nop                                              ; $6920: $00
	nop                                              ; $6921: $00
	nop                                              ; $6922: $00
	nop                                              ; $6923: $00
	nop                                              ; $6924: $00
	nop                                              ; $6925: $00
	nop                                              ; $6926: $00
	nop                                              ; $6927: $00
	nop                                              ; $6928: $00
	nop                                              ; $6929: $00
	nop                                              ; $692a: $00
	nop                                              ; $692b: $00
	nop                                              ; $692c: $00
	nop                                              ; $692d: $00
	nop                                              ; $692e: $00
	nop                                              ; $692f: $00

jr_09c_6930:
	nop                                              ; $6930: $00
	nop                                              ; $6931: $00
	nop                                              ; $6932: $00
	nop                                              ; $6933: $00
	nop                                              ; $6934: $00
	nop                                              ; $6935: $00
	nop                                              ; $6936: $00
	nop                                              ; $6937: $00
	nop                                              ; $6938: $00
	nop                                              ; $6939: $00
	nop                                              ; $693a: $00
	nop                                              ; $693b: $00
	nop                                              ; $693c: $00
	nop                                              ; $693d: $00
	nop                                              ; $693e: $00
	nop                                              ; $693f: $00
	nop                                              ; $6940: $00
	nop                                              ; $6941: $00
	nop                                              ; $6942: $00
	nop                                              ; $6943: $00
	nop                                              ; $6944: $00
	nop                                              ; $6945: $00
	nop                                              ; $6946: $00
	nop                                              ; $6947: $00
	nop                                              ; $6948: $00
	nop                                              ; $6949: $00
	nop                                              ; $694a: $00
	nop                                              ; $694b: $00
	nop                                              ; $694c: $00
	nop                                              ; $694d: $00
	nop                                              ; $694e: $00
	db   $10                                         ; $694f: $10
	rra                                              ; $6950: $1f
	jr   nz, jr_09c_6992                             ; $6951: $20 $3f

	ld   h, h                                        ; $6953: $64
	ld   e, e                                        ; $6954: $5b
	ld   a, b                                        ; $6955: $78
	ld   b, a                                        ; $6956: $47
	ld   sp, hl                                      ; $6957: $f9
	add  [hl]                                        ; $6958: $86
	sbc  a                                           ; $6959: $9f
	ldh  [rSC], a                                    ; $695a: $e0 $02
	db   $fd                                         ; $695c: $fd
	inc  b                                           ; $695d: $04
	ei                                               ; $695e: $fb
	nop                                              ; $695f: $00
	rst  $38                                         ; $6960: $ff
	inc  e                                           ; $6961: $1c
	rst  $38                                         ; $6962: $ff
	ld   h, $ff                                      ; $6963: $26 $ff
	and  e                                           ; $6965: $a3
	ld   a, a                                        ; $6966: $7f
	ld   h, c                                        ; $6967: $61
	rst  $38                                         ; $6968: $ff
	ld   c, h                                        ; $6969: $4c
	rst  $38                                         ; $696a: $ff
	ld   e, [hl]                                     ; $696b: $5e
	rst  $38                                         ; $696c: $ff
	rst  JumpTable                                         ; $696d: $df
	rst  $38                                         ; $696e: $ff
	nop                                              ; $696f: $00
	rst  $38                                         ; $6970: $ff
	nop                                              ; $6971: $00
	rst  $38                                         ; $6972: $ff
	ldh  [rIE], a                                    ; $6973: $e0 $ff
	adc  b                                           ; $6975: $88
	rst  $30                                         ; $6976: $f7
	ld   b, $f9                                      ; $6977: $06 $f9
	ld   h, a                                        ; $6979: $67
	ld   hl, sp-$0d                                  ; $697a: $f8 $f3
	db   $fd                                         ; $697c: $fd
	di                                               ; $697d: $f3
	db   $fd                                         ; $697e: $fd
	ld   [hl-], a                                    ; $697f: $32
	ldh  a, [c]                                      ; $6980: $f2
	ld   [de], a                                     ; $6981: $12
	ldh  a, [c]                                      ; $6982: $f2
	ld   a, [de]                                     ; $6983: $1a
	ld   [$c63e], a                                  ; $6984: $ea $3e $c6
	cp   $06                                         ; $6987: $fe $06
	or   $0a                                         ; $6989: $f6 $0a

jr_09c_698b:
	ld   b, d                                        ; $698b: $42
	cp   [hl]                                        ; $698c: $be
	ld   [bc], a                                     ; $698d: $02
	cp   $80                                         ; $698e: $fe $80
	rst  $38                                         ; $6990: $ff
	add  d                                           ; $6991: $82

jr_09c_6992:
	rst  $38                                         ; $6992: $ff
	dec  b                                           ; $6993: $05
	rst  $38                                         ; $6994: $ff
	add  hl, bc                                      ; $6995: $09
	rst  $38                                         ; $6996: $ff
	inc  sp                                          ; $6997: $33
	rst  $38                                         ; $6998: $ff
	rst  $20                                         ; $6999: $e7
	rst  $38                                         ; $699a: $ff
	rst  $38                                         ; $699b: $ff
	rst  $38                                         ; $699c: $ff
	cp   $ff                                         ; $699d: $fe $ff
	db   $dd                                         ; $699f: $dd
	ld   sp, hl                                      ; $69a0: $f9
	or   h                                           ; $69a1: $b4
	db   $ec                                         ; $69a2: $ec
	or   h                                           ; $69a3: $b4
	db   $ec                                         ; $69a4: $ec
	or   h                                           ; $69a5: $b4
	db   $ec                                         ; $69a6: $ec
	ld   [hl], h                                     ; $69a7: $74
	call z, $8ce4                                    ; $69a8: $cc $e4 $8c
	ret  z                                           ; $69ab: $c8

	ld   [$9858], sp                                 ; $69ac: $08 $58 $98
	ld   [hl], c                                     ; $69af: $71
	ld   e, $38                                      ; $69b0: $1e $38
	rrca                                             ; $69b2: $0f
	inc  e                                           ; $69b3: $1c
	rrca                                             ; $69b4: $0f
	inc  c                                           ; $69b5: $0c
	rlca                                             ; $69b6: $07
	ld   c, $07                                      ; $69b7: $0e $07
	rlca                                             ; $69b9: $07
	inc  bc                                          ; $69ba: $03
	rlca                                             ; $69bb: $07
	ld   bc, $0708                                   ; $69bc: $01 $08 $07
	add  d                                           ; $69bf: $82
	cp   $62                                         ; $69c0: $fe $62
	cp   $b2                                         ; $69c2: $fe $b2
	cp   $5e                                         ; $69c4: $fe $5e
	cp   $26                                         ; $69c6: $fe $26
	cp   $1a                                         ; $69c8: $fe $1a
	cp   $8e                                         ; $69ca: $fe $8e
	cp   $c2                                         ; $69cc: $fe $c2
	cp   $ff                                         ; $69ce: $fe $ff
	rst  $38                                         ; $69d0: $ff
	ldh  a, [c]                                      ; $69d1: $f2
	db   $fc                                         ; $69d2: $fc
	db   $fd                                         ; $69d3: $fd
	ldh  [rIE], a                                    ; $69d4: $e0 $ff
	db   $e3                                         ; $69d6: $e3
	db   $fc                                         ; $69d7: $fc
	and  b                                           ; $69d8: $a0
	ld   a, l                                        ; $69d9: $7d
	ld   sp, $507e                                   ; $69da: $31 $7e $50
	ld   a, [hl]                                     ; $69dd: $7e
	ld   d, b                                        ; $69de: $50
	ldh  a, [$f0]                                    ; $69df: $f0 $f0
	jr   c, @+$1a                                    ; $69e1: $38 $18

	ldh  a, [$f0]                                    ; $69e3: $f0 $f0
	ret  c                                           ; $69e5: $d8

	ld   a, [$6c8c]                                  ; $69e6: $fa $8c $6c
	nop                                              ; $69e9: $00
	nop                                              ; $69ea: $00
	ldh  [$e0], a                                    ; $69eb: $e0 $e0
	nop                                              ; $69ed: $00
	nop                                              ; $69ee: $00
	ccf                                              ; $69ef: $3f
	rra                                              ; $69f0: $1f
	ld   h, b                                        ; $69f1: $60
	ld   h, b                                        ; $69f2: $60
	rst  JumpTable                                         ; $69f3: $df
	sbc  [hl]                                        ; $69f4: $9e
	scf                                              ; $69f5: $37
	rrca                                             ; $69f6: $0f
	ld   [bc], a                                     ; $69f7: $02
	inc  c                                           ; $69f8: $0c
	ld   bc, $0e01                                   ; $69f9: $01 $01 $0e
	ld   c, $00                                      ; $69fc: $0e $00
	ld   bc, $fef2                                   ; $69fe: $01 $f2 $fe
	cp   [hl]                                        ; $6a01: $be
	ld   a, [hl]                                     ; $6a02: $7e
	ld   a, [hl]                                     ; $6a03: $7e
	ld   e, $9e                                      ; $6a04: $1e $9e
	adc  [hl]                                        ; $6a06: $8e
	ld   e, $1e                                      ; $6a07: $1e $1e
	ld   e, $1a                                      ; $6a09: $1e $1a
	ld   a, [hl-]                                    ; $6a0b: $3a
	ld   [de], a                                     ; $6a0c: $12
	ld   a, $36                                      ; $6a0d: $3e $36
	cp   d                                           ; $6a0f: $ba
	or   l                                           ; $6a10: $b5
	cp   [hl]                                        ; $6a11: $be
	cp   b                                           ; $6a12: $b8
	ld   a, [hl]                                     ; $6a13: $7e
	ld   e, b                                        ; $6a14: $58
	ld   a, $28                                      ; $6a15: $3e $28
	rra                                              ; $6a17: $1f
	jr   @+$09                                       ; $6a18: $18 $07

	inc  b                                           ; $6a1a: $04
	rlca                                             ; $6a1b: $07
	inc  b                                           ; $6a1c: $04
	inc  bc                                          ; $6a1d: $03
	ld   [bc], a                                     ; $6a1e: $02
	nop                                              ; $6a1f: $00
	jr   nz, @+$04                                   ; $6a20: $20 $02

	nop                                              ; $6a22: $00
	ld   b, $80                                      ; $6a23: $06 $80
	rlca                                             ; $6a25: $07
	ld   [bc], a                                     ; $6a26: $02
	inc  bc                                          ; $6a27: $03
	nop                                              ; $6a28: $00
	nop                                              ; $6a29: $00
	db   $10                                         ; $6a2a: $10
	rla                                              ; $6a2b: $17
	rrca                                             ; $6a2c: $0f
	add  b                                           ; $6a2d: $80
	nop                                              ; $6a2e: $00
	nop                                              ; $6a2f: $00
	db   $10                                         ; $6a30: $10
	ld   b, b                                        ; $6a31: $40
	ld   b, h                                        ; $6a32: $44
	ld   b, b                                        ; $6a33: $40
	ld   b, b                                        ; $6a34: $40
	ld   b, b                                        ; $6a35: $40
	add  d                                           ; $6a36: $82
	add  b                                           ; $6a37: $80
	nop                                              ; $6a38: $00
	nop                                              ; $6a39: $00
	nop                                              ; $6a3a: $00
	ret  nz                                          ; $6a3b: $c0

	ldh  [rSB], a                                    ; $6a3c: $e0 $01
	nop                                              ; $6a3e: $00
	ld   [hl], $36                                   ; $6a3f: $36 $36
	ld   a, [hl-]                                    ; $6a41: $3a
	xor  d                                           ; $6a42: $aa
	ld   a, [hl+]                                    ; $6a43: $2a
	ld   a, [hl+]                                    ; $6a44: $2a
	ld   [hl], d                                     ; $6a45: $72
	ld   [hl-], a                                    ; $6a46: $32
	ld   h, d                                        ; $6a47: $62
	ld   [hl+], a                                    ; $6a48: $22
	jp   nz, $c242                                   ; $6a49: $c2 $42 $c2

	ld   b, d                                        ; $6a4c: $42
	add  d                                           ; $6a4d: $82
	add  d                                           ; $6a4e: $82
	inc  bc                                          ; $6a4f: $03
	inc  bc                                          ; $6a50: $03
	inc  bc                                          ; $6a51: $03
	ld   [bc], a                                     ; $6a52: $02
	inc  bc                                          ; $6a53: $03
	inc  bc                                          ; $6a54: $03
	ld   b, $06                                      ; $6a55: $06 $06
	ld   c, $0e                                      ; $6a57: $0e $0e
	rra                                              ; $6a59: $1f
	rra                                              ; $6a5a: $1f
	ccf                                              ; $6a5b: $3f
	ccf                                              ; $6a5c: $3f
	ld   a, a                                        ; $6a5d: $7f
	ld   a, a                                        ; $6a5e: $7f
	jp   $c000                                       ; $6a5f: $c3 $00 $c0


	add  b                                           ; $6a62: $80
	ldh  [rLCDC], a                                  ; $6a63: $e0 $40
	ldh  a, [$e0]                                    ; $6a65: $f0 $e0
	ld   e, h                                        ; $6a67: $5c
	ld   d, b                                        ; $6a68: $50
	ld   c, a                                        ; $6a69: $4f
	ld   c, a                                        ; $6a6a: $4f
	rst  $20                                         ; $6a6b: $e7
	db   $e4                                         ; $6a6c: $e4
	db   $e3                                         ; $6a6d: $e3
	db   $e3                                         ; $6a6e: $e3
	add  e                                           ; $6a6f: $83
	ld   bc, $0303                                   ; $6a70: $01 $03 $03
	rlca                                             ; $6a73: $07
	dec  b                                           ; $6a74: $05
	rra                                              ; $6a75: $1f
	dec  bc                                          ; $6a76: $0b
	ld   a, l                                        ; $6a77: $7d
	dec  e                                           ; $6a78: $1d
	push af                                          ; $6a79: $f5
	push af                                          ; $6a7a: $f5
	rst  $20                                         ; $6a7b: $e7
	ld   h, a                                        ; $6a7c: $67
	rst  ToBoot                                         ; $6a7d: $c7
	rst  ToBoot                                         ; $6a7e: $c7
	ld   [bc], a                                     ; $6a7f: $02
	ld   [bc], a                                     ; $6a80: $02
	ld   [bc], a                                     ; $6a81: $02
	ld   [bc], a                                     ; $6a82: $02
	add  d                                           ; $6a83: $82
	add  d                                           ; $6a84: $82
	add  d                                           ; $6a85: $82
	add  d                                           ; $6a86: $82
	jp   nz, $a2c2                                   ; $6a87: $c2 $c2 $a2

	ldh  [c], a                                      ; $6a8a: $e2
	sbc  d                                           ; $6a8b: $9a
	ld   a, [$fe86]                                  ; $6a8c: $fa $86 $fe
	rst  $38                                         ; $6a8f: $ff
	cp   $ff                                         ; $6a90: $fe $ff
	cp   $ff                                         ; $6a92: $fe $ff
	cp   $f3                                         ; $6a94: $fe $f3
	rst  $38                                         ; $6a96: $ff
	jp   $02ff                                       ; $6a97: $c3 $ff $02


	cp   $02                                         ; $6a9a: $fe $02
	cp   $02                                         ; $6a9c: $fe $02
	cp   $ef                                         ; $6a9e: $fe $ef
	ld   l, $ff                                      ; $6aa0: $2e $ff
	ld   a, $ff                                      ; $6aa2: $3e $ff
	ld   b, d                                        ; $6aa4: $42
	rst  $38                                         ; $6aa5: $ff
	rlca                                             ; $6aa6: $07
	ld   a, [$e11a]                                  ; $6aa7: $fa $1a $e1
	pop  hl                                          ; $6aaa: $e1
	ld   bc, $0101                                   ; $6aab: $01 $01 $01
	ld   bc, $74f7                                   ; $6aae: $01 $f7 $74
	rst  $38                                         ; $6ab1: $ff
	ld   a, b                                        ; $6ab2: $78
	rst  $38                                         ; $6ab3: $ff
	ret  z                                           ; $6ab4: $c8

	rst  $38                                         ; $6ab5: $ff
	pop  bc                                          ; $6ab6: $c1
	ld   a, a                                        ; $6ab7: $7f
	ld   [hl], c                                     ; $6ab8: $71
	adc  a                                           ; $6ab9: $8f
	adc  a                                           ; $6aba: $8f
	ld   h, c                                        ; $6abb: $61
	ld   h, c                                        ; $6abc: $61
	ld   bc, $8201                                   ; $6abd: $01 $01 $82
	cp   $82                                         ; $6ac0: $fe $82
	cp   $82                                         ; $6ac2: $fe $82
	cp   $02                                         ; $6ac4: $fe $02
	cp   $02                                         ; $6ac6: $fe $02
	cp   $02                                         ; $6ac8: $fe $02
	cp   $02                                         ; $6aca: $fe $02
	cp   $02                                         ; $6acc: $fe $02
	cp   $dd                                         ; $6ace: $fe $dd
	ld   sp, hl                                      ; $6ad0: $f9
	or   h                                           ; $6ad1: $b4
	db   $ec                                         ; $6ad2: $ec
	or   h                                           ; $6ad3: $b4
	db   $ec                                         ; $6ad4: $ec
	or   h                                           ; $6ad5: $b4
	db   $ec                                         ; $6ad6: $ec
	ld   [hl], h                                     ; $6ad7: $74
	call z, $8ce4                                    ; $6ad8: $cc $e4 $8c
	ret  z                                           ; $6adb: $c8

	ld   [$bc7c], sp                                 ; $6adc: $08 $7c $bc
	ld   [hl], c                                     ; $6adf: $71
	ld   e, $38                                      ; $6ae0: $1e $38
	rrca                                             ; $6ae2: $0f
	inc  e                                           ; $6ae3: $1c
	rrca                                             ; $6ae4: $0f
	inc  c                                           ; $6ae5: $0c
	rlca                                             ; $6ae6: $07
	ld   c, $07                                      ; $6ae7: $0e $07
	rlca                                             ; $6ae9: $07
	inc  bc                                          ; $6aea: $03
	ld   bc, $8f07                                   ; $6aeb: $01 $07 $8f
	add  a                                           ; $6aee: $87
	ldh  a, [$d0]                                    ; $6aef: $f0 $d0
	db   $10                                         ; $6af1: $10
	db   $10                                         ; $6af2: $10
	ldh  a, [$f0]                                    ; $6af3: $f0 $f0
	ret  c                                           ; $6af5: $d8

	ld   a, [$6c8c]                                  ; $6af6: $fa $8c $6c
	nop                                              ; $6af9: $00

Call_09c_6afa:
	nop                                              ; $6afa: $00
	ldh  [$e0], a                                    ; $6afb: $e0 $e0
	nop                                              ; $6afd: $00
	nop                                              ; $6afe: $00
	rst  $38                                         ; $6aff: $ff
	ld   a, b                                        ; $6b00: $78
	ld   h, b                                        ; $6b01: $60
	nop                                              ; $6b02: $00
	rra                                              ; $6b03: $1f
	ld   e, $37                                      ; $6b04: $1e $37
	rrca                                             ; $6b06: $0f
	ld   [bc], a                                     ; $6b07: $02
	inc  c                                           ; $6b08: $0c
	ld   bc, $0e01                                   ; $6b09: $01 $01 $0e
	ld   c, $00                                      ; $6b0c: $0e $00
	ld   bc, $2000                                   ; $6b0e: $01 $00 $20
	ld   [bc], a                                     ; $6b11: $02
	nop                                              ; $6b12: $00
	ld   b, $80                                      ; $6b13: $06 $80
	rlca                                             ; $6b15: $07
	ld   [bc], a                                     ; $6b16: $02
	inc  bc                                          ; $6b17: $03
	nop                                              ; $6b18: $00
	stop                                             ; $6b19: $10 $00
	inc  bc                                          ; $6b1b: $03
	rra                                              ; $6b1c: $1f
	sub  b                                           ; $6b1d: $90
	ld   [$1000], sp                                 ; $6b1e: $08 $00 $10
	ld   b, b                                        ; $6b21: $40
	ld   b, h                                        ; $6b22: $44
	ld   b, b                                        ; $6b23: $40
	ld   b, b                                        ; $6b24: $40
	ld   b, b                                        ; $6b25: $40
	add  d                                           ; $6b26: $82
	add  b                                           ; $6b27: $80
	nop                                              ; $6b28: $00
	jr   c, jr_09c_6b43                              ; $6b29: $38 $18

jr_09c_6b2b:
	ld   [$19e8], sp                                 ; $6b2b: $08 $e8 $19
	db   $10                                         ; $6b2e: $10
	ret                                              ; $6b2f: $c9


	rlca                                             ; $6b30: $07
	ret  nz                                          ; $6b31: $c0

	add  b                                           ; $6b32: $80
	db   $e3                                         ; $6b33: $e3
	ld   b, b                                        ; $6b34: $40
	ldh  a, [$e0]                                    ; $6b35: $f0 $e0
	ld   e, h                                        ; $6b37: $5c
	ld   d, b                                        ; $6b38: $50
	ld   c, a                                        ; $6b39: $4f
	ld   c, a                                        ; $6b3a: $4f
	rst  $20                                         ; $6b3b: $e7
	db   $e4                                         ; $6b3c: $e4
	db   $e3                                         ; $6b3d: $e3
	db   $e3                                         ; $6b3e: $e3
	or   e                                           ; $6b3f: $b3
	pop  hl                                          ; $6b40: $e1
	inc  bc                                          ; $6b41: $03
	inc  bc                                          ; $6b42: $03

jr_09c_6b43:
	rlca                                             ; $6b43: $07
	dec  b                                           ; $6b44: $05
	rra                                              ; $6b45: $1f
	dec  bc                                          ; $6b46: $0b
	ld   a, l                                        ; $6b47: $7d
	dec  e                                           ; $6b48: $1d
	push af                                          ; $6b49: $f5
	push af                                          ; $6b4a: $f5
	rst  $20                                         ; $6b4b: $e7
	ld   h, a                                        ; $6b4c: $67
	rst  ToBoot                                         ; $6b4d: $c7
	rst  ToBoot                                         ; $6b4e: $c7
	inc  bc                                          ; $6b4f: $03
	inc  bc                                          ; $6b50: $03
	ld   c, $0f                                      ; $6b51: $0e $0f
	inc  e                                           ; $6b53: $1c
	rra                                              ; $6b54: $1f
	jr   c, jr_09c_6b96                              ; $6b55: $38 $3f

	jr   z, jr_09c_6b98                              ; $6b57: $28 $3f

	jr   z, jr_09c_6b9a                              ; $6b59: $28 $3f

	ld   c, h                                        ; $6b5b: $4c
	ld   a, a                                        ; $6b5c: $7f
	ld   c, h                                        ; $6b5d: $4c
	ld   a, a                                        ; $6b5e: $7f
	nop                                              ; $6b5f: $00
	rst  $38                                         ; $6b60: $ff
	nop                                              ; $6b61: $00
	rst  $38                                         ; $6b62: $ff
	nop                                              ; $6b63: $00
	rst  $38                                         ; $6b64: $ff
	nop                                              ; $6b65: $00
	rst  $38                                         ; $6b66: $ff
	nop                                              ; $6b67: $00
	rst  $38                                         ; $6b68: $ff
	nop                                              ; $6b69: $00
	rst  $28                                         ; $6b6a: $ef
	ld   b, b                                        ; $6b6b: $40
	ld   [hl], e                                     ; $6b6c: $73
	jr   nc, jr_09c_6b2b                             ; $6b6d: $30 $bc

	inc  bc                                          ; $6b6f: $03
	rst  $38                                         ; $6b70: $ff
	nop                                              ; $6b71: $00
	cp   $00                                         ; $6b72: $fe $00
	rst  $38                                         ; $6b74: $ff
	nop                                              ; $6b75: $00
	rst  $38                                         ; $6b76: $ff
	nop                                              ; $6b77: $00
	cp   $06                                         ; $6b78: $fe $06
	ld   a, a                                        ; $6b7a: $7f
	ld   bc, $c08f                                   ; $6b7b: $01 $8f $c0
	db   $e3                                         ; $6b7e: $e3
	add  d                                           ; $6b7f: $82
	add  d                                           ; $6b80: $82
	ld   h, d                                        ; $6b81: $62
	ldh  [c], a                                      ; $6b82: $e2
	ld   [de], a                                     ; $6b83: $12
	ld   [hl-], a                                    ; $6b84: $32
	ld   a, [bc]                                     ; $6b85: $0a
	ld   a, [de]                                     ; $6b86: $1a
	ld   a, [bc]                                     ; $6b87: $0a
	ld   e, d                                        ; $6b88: $5a
	ld   b, $ee                                      ; $6b89: $06 $ee
	add  $fe                                         ; $6b8b: $c6 $fe
	halt                                             ; $6b8d: $76
	cp   $4e                                         ; $6b8e: $fe $4e
	ld   a, a                                        ; $6b90: $7f
	ld   c, e                                        ; $6b91: $4b
	ld   a, c                                        ; $6b92: $79
	ld   e, b                                        ; $6b93: $58
	ld   a, b                                        ; $6b94: $78
	ld   a, b                                        ; $6b95: $78

jr_09c_6b96:
	ld   a, b                                        ; $6b96: $78
	ld   a, b                                        ; $6b97: $78

jr_09c_6b98:
	ld   [hl], b                                     ; $6b98: $70
	ld   [hl], b                                     ; $6b99: $70

jr_09c_6b9a:
	ld   [hl], b                                     ; $6b9a: $70
	ld   [hl], b                                     ; $6b9b: $70
	ld   [hl], b                                     ; $6b9c: $70
	ld   [hl], b                                     ; $6b9d: $70
	ld   [hl], b                                     ; $6b9e: $70
	ld   e, $ff                                      ; $6b9f: $1e $ff
	rst  JumpTable                                         ; $6ba1: $df
	ei                                               ; $6ba2: $fb
	rst  $38                                         ; $6ba3: $ff
	ld   a, [hl]                                     ; $6ba4: $7e
	ccf                                              ; $6ba5: $3f
	rlca                                             ; $6ba6: $07
	rlca                                             ; $6ba7: $07
	nop                                              ; $6ba8: $00
	nop                                              ; $6ba9: $00
	nop                                              ; $6baa: $00
	nop                                              ; $6bab: $00
	nop                                              ; $6bac: $00
	nop                                              ; $6bad: $00
	nop                                              ; $6bae: $00
	ld   a, b                                        ; $6baf: $78
	db   $fd                                         ; $6bb0: $fd
	adc  a                                           ; $6bb1: $8f
	rst  $38                                         ; $6bb2: $ff
	ld   hl, sp+$7f                                  ; $6bb3: $f8 $7f
	rst  $38                                         ; $6bb5: $ff
	add  a                                           ; $6bb6: $87
	db   $e3                                         ; $6bb7: $e3
	ldh  [$60], a                                    ; $6bb8: $e0 $60
	nop                                              ; $6bba: $00
	nop                                              ; $6bbb: $00
	nop                                              ; $6bbc: $00
	nop                                              ; $6bbd: $00
	nop                                              ; $6bbe: $00
	ld   e, $fe                                      ; $6bbf: $1e $fe
	ld   [$76fe], a                                  ; $6bc1: $ea $fe $76
	cp   $fa                                         ; $6bc4: $fe $fa
	cp   $f6                                         ; $6bc6: $fe $f6
	ld   a, [hl]                                     ; $6bc8: $7e
	ld   a, d                                        ; $6bc9: $7a
	ld   e, $7e                                      ; $6bca: $1e $7e
	ld   e, $7e                                      ; $6bcc: $1e $7e
	ld   e, $3b                                      ; $6bce: $1e $3b
	scf                                              ; $6bd0: $37
	ld   a, $30                                      ; $6bd1: $3e $30
	inc  a                                           ; $6bd3: $3c
	jr   nc, @+$41                                   ; $6bd4: $30 $3f

	inc  sp                                          ; $6bd6: $33
	ld   a, l                                        ; $6bd7: $7d
	ld   d, l                                        ; $6bd8: $55
	ld   a, c                                        ; $6bd9: $79
	ld   d, b                                        ; $6bda: $50
	ld   a, e                                        ; $6bdb: $7b
	ld   d, c                                        ; $6bdc: $51
	ld   a, b                                        ; $6bdd: $78
	ld   d, b                                        ; $6bde: $50
	ldh  a, [$e0]                                    ; $6bdf: $f0 $e0
	jr   c, jr_09c_6bfb                              ; $6be1: $38 $18

	nop                                              ; $6be3: $00
	nop                                              ; $6be4: $00
	ldh  a, [$e0]                                    ; $6be5: $f0 $e0
	ld   [hl], b                                     ; $6be7: $70
	ld   [hl], b                                     ; $6be8: $70
	ret  nz                                          ; $6be9: $c0

	ret  nz                                          ; $6bea: $c0

	ldh  [$c0], a                                    ; $6beb: $e0 $c0
	nop                                              ; $6bed: $00
	nop                                              ; $6bee: $00
	ccf                                              ; $6bef: $3f
	rra                                              ; $6bf0: $1f
	ld   [hl], e                                     ; $6bf1: $73
	ld   h, b                                        ; $6bf2: $60
	nop                                              ; $6bf3: $00
	nop                                              ; $6bf4: $00
	ccf                                              ; $6bf5: $3f
	rra                                              ; $6bf6: $1f
	ld   a, [hl-]                                    ; $6bf7: $3a
	ld   a, [hl-]                                    ; $6bf8: $3a
	ld   c, $0c                                      ; $6bf9: $0e $0c

jr_09c_6bfb:
	rra                                              ; $6bfb: $1f
	rrca                                             ; $6bfc: $0f
	inc  bc                                          ; $6bfd: $03
	nop                                              ; $6bfe: $00
	cp   [hl]                                        ; $6bff: $be
	sbc  $fe                                         ; $6c00: $de $fe
	ld   e, $fe                                      ; $6c02: $1e $fe
	ld   a, [de]                                     ; $6c04: $1a
	cp   $12                                         ; $6c05: $fe $12
	cp   $86                                         ; $6c07: $fe $86
	cp   $0a                                         ; $6c09: $fe $0a
	cp   $0e                                         ; $6c0b: $fe $0e
	cp   $0a                                         ; $6c0d: $fe $0a
	jr   c, jr_09c_6c39                              ; $6c0f: $38 $28

	jr   c, jr_09c_6c3b                              ; $6c11: $38 $28

	inc  e                                           ; $6c13: $1c
	jr   jr_09c_6c22                                 ; $6c14: $18 $0c

	ld   [$080c], sp                                 ; $6c16: $08 $0c $08
	inc  b                                           ; $6c19: $04
	inc  b                                           ; $6c1a: $04
	ld   b, $04                                      ; $6c1b: $06 $04
	ld   [bc], a                                     ; $6c1d: $02
	ld   [bc], a                                     ; $6c1e: $02
	nop                                              ; $6c1f: $00
	nop                                              ; $6c20: $00
	nop                                              ; $6c21: $00

jr_09c_6c22:
	nop                                              ; $6c22: $00
	nop                                              ; $6c23: $00
	nop                                              ; $6c24: $00
	ld   [bc], a                                     ; $6c25: $02
	ld   [bc], a                                     ; $6c26: $02
	rlca                                             ; $6c27: $07
	ld   [bc], a                                     ; $6c28: $02
	rlca                                             ; $6c29: $07
	inc  bc                                          ; $6c2a: $03
	nop                                              ; $6c2b: $00
	nop                                              ; $6c2c: $00
	rrca                                             ; $6c2d: $0f
	inc  c                                           ; $6c2e: $0c
	nop                                              ; $6c2f: $00
	nop                                              ; $6c30: $00
	nop                                              ; $6c31: $00
	nop                                              ; $6c32: $00
	add  b                                           ; $6c33: $80
	nop                                              ; $6c34: $00

jr_09c_6c35:
	ret  nz                                          ; $6c35: $c0

	nop                                              ; $6c36: $00
	ret  nz                                          ; $6c37: $c0

	nop                                              ; $6c38: $00

jr_09c_6c39:
	add  c                                           ; $6c39: $81
	nop                                              ; $6c3a: $00

jr_09c_6c3b:
	ld   bc, $c100                                   ; $6c3b: $01 $00 $c1
	ret  nz                                          ; $6c3e: $c0

	cp   $16                                         ; $6c3f: $fe $16
	cp   $16                                         ; $6c41: $fe $16
	ld   a, [$f21a]                                  ; $6c43: $fa $1a $f2
	ld   [hl-], a                                    ; $6c46: $32
	ldh  [c], a                                      ; $6c47: $e2
	ld   [hl+], a                                    ; $6c48: $22
	ldh  [c], a                                      ; $6c49: $e2
	ld   [hl+], a                                    ; $6c4a: $22
	jp   nz, $c242                                   ; $6c4b: $c2 $42 $c2

	ld   b, d                                        ; $6c4e: $42
	inc  bc                                          ; $6c4f: $03
	ld   [bc], a                                     ; $6c50: $02
	ld   bc, $0301                                   ; $6c51: $01 $01 $03
	inc  bc                                          ; $6c54: $03
	rrca                                             ; $6c55: $0f
	rrca                                             ; $6c56: $0f
	ld   [hl], d                                     ; $6c57: $72
	ld   a, a                                        ; $6c58: $7f
	add  h                                           ; $6c59: $84
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c5a: $cf
	inc  b                                           ; $6c5b: $04
	dec  a                                           ; $6c5c: $3d
	ld   [$0c7d], sp                                 ; $6c5d: $08 $7d $0c
	inc  b                                           ; $6c60: $04
	add  a                                           ; $6c61: $87
	inc  bc                                          ; $6c62: $03
	ret  nz                                          ; $6c63: $c0

	add  b                                           ; $6c64: $80
	db   $e3                                         ; $6c65: $e3
	ret  nz                                          ; $6c66: $c0

	ldh  a, [hScriptOpcodeParams]                                    ; $6c67: $f0 $a0
	db   $fc                                         ; $6c69: $fc
	sbc  b                                           ; $6c6a: $98
	sbc  a                                           ; $6c6b: $9f
	add  a                                           ; $6c6c: $87
	add  a                                           ; $6c6d: $87
	add  b                                           ; $6c6e: $80
	ld   h, e                                        ; $6c6f: $63
	jr   nz, jr_09c_6c35                             ; $6c70: $20 $c3

	pop  bc                                          ; $6c72: $c1
	rlca                                             ; $6c73: $07
	ld   [bc], a                                     ; $6c74: $02
	adc  a                                           ; $6c75: $8f
	inc  b                                           ; $6c76: $04
	rra                                              ; $6c77: $1f
	ld   [$307f], sp                                 ; $6c78: $08 $7f $30
	rst  $38                                         ; $6c7b: $ff
	ret  nz                                          ; $6c7c: $c0

	rst  $38                                         ; $6c7d: $ff
	inc  b                                           ; $6c7e: $04
	add  d                                           ; $6c7f: $82
	add  d                                           ; $6c80: $82
	jp   nz, $e2c2                                   ; $6c81: $c2 $c2 $e2

	ldh  [c], a                                      ; $6c84: $e2
	jp   nc, $def2                                   ; $6c85: $d2 $f2 $de

	cp   $ea                                         ; $6c88: $fe $ea
	cp   $ea                                         ; $6c8a: $fe $ea
	cp   $ea                                         ; $6c8c: $fe $ea
	cp   $08                                         ; $6c8e: $fe $08
	ei                                               ; $6c90: $fb
	add  hl, bc                                      ; $6c91: $09
	ei                                               ; $6c92: $fb
	ld   de, $11fb                                   ; $6c93: $11 $fb $11
	rst  $30                                         ; $6c96: $f7
	ld   de, $21f7                                   ; $6c97: $11 $f7 $21
	rst  $30                                         ; $6c9a: $f7
	ld   hl, $21ef                                   ; $6c9b: $21 $ef $21
	rst  $28                                         ; $6c9e: $ef
	add  b                                           ; $6c9f: $80
	add  b                                           ; $6ca0: $80
	add  b                                           ; $6ca1: $80
	add  b                                           ; $6ca2: $80
	add  b                                           ; $6ca3: $80
	add  b                                           ; $6ca4: $80
	add  b                                           ; $6ca5: $80
	nop                                              ; $6ca6: $00
	sub  b                                           ; $6ca7: $90
	db   $10                                         ; $6ca8: $10
	sub  d                                           ; $6ca9: $92
	db   $10                                         ; $6caa: $10
	sbc  $10                                         ; $6cab: $de $10
	rst  $38                                         ; $6cad: $ff
	ld   [$043f], sp                                 ; $6cae: $08 $3f $04
	rra                                              ; $6cb1: $1f
	inc  b                                           ; $6cb2: $04
	rrca                                             ; $6cb3: $0f
	inc  b                                           ; $6cb4: $04
	rrca                                             ; $6cb5: $0f
	inc  b                                           ; $6cb6: $04
	rrca                                             ; $6cb7: $0f
	ld   [$080f], sp                                 ; $6cb8: $08 $0f $08
	rrca                                             ; $6cbb: $0f
	ld   [$113f], sp                                 ; $6cbc: $08 $3f $11
	ld   [$eafe], a                                  ; $6cbf: $ea $fe $ea
	cp   $e6                                         ; $6cc2: $fe $e6
	ld   a, [hl]                                     ; $6cc4: $7e
	and  $7e                                         ; $6cc5: $e6 $7e
	add  $7e                                         ; $6cc7: $c6 $7e
	add  $7e                                         ; $6cc9: $c6 $7e
	add  $7e                                         ; $6ccb: $c6 $7e
	add  $fe                                         ; $6ccd: $c6 $fe
	nop                                              ; $6ccf: $00
	nop                                              ; $6cd0: $00
	nop                                              ; $6cd1: $00
	nop                                              ; $6cd2: $00
	nop                                              ; $6cd3: $00
	nop                                              ; $6cd4: $00
	nop                                              ; $6cd5: $00
	nop                                              ; $6cd6: $00
	nop                                              ; $6cd7: $00
	nop                                              ; $6cd8: $00
	nop                                              ; $6cd9: $00
	nop                                              ; $6cda: $00
	nop                                              ; $6cdb: $00
	nop                                              ; $6cdc: $00
	nop                                              ; $6cdd: $00
	nop                                              ; $6cde: $00
	nop                                              ; $6cdf: $00
	nop                                              ; $6ce0: $00
	nop                                              ; $6ce1: $00
	nop                                              ; $6ce2: $00
	nop                                              ; $6ce3: $00
	nop                                              ; $6ce4: $00
	nop                                              ; $6ce5: $00
	nop                                              ; $6ce6: $00
	nop                                              ; $6ce7: $00
	nop                                              ; $6ce8: $00
	nop                                              ; $6ce9: $00
	nop                                              ; $6cea: $00
	nop                                              ; $6ceb: $00
	nop                                              ; $6cec: $00
	nop                                              ; $6ced: $00
	nop                                              ; $6cee: $00
	nop                                              ; $6cef: $00
	nop                                              ; $6cf0: $00
	nop                                              ; $6cf1: $00
	nop                                              ; $6cf2: $00
	nop                                              ; $6cf3: $00
	nop                                              ; $6cf4: $00
	nop                                              ; $6cf5: $00
	nop                                              ; $6cf6: $00
	nop                                              ; $6cf7: $00
	nop                                              ; $6cf8: $00
	nop                                              ; $6cf9: $00
	nop                                              ; $6cfa: $00
	nop                                              ; $6cfb: $00
	nop                                              ; $6cfc: $00
	nop                                              ; $6cfd: $00
	nop                                              ; $6cfe: $00
	nop                                              ; $6cff: $00
	nop                                              ; $6d00: $00
	nop                                              ; $6d01: $00
	nop                                              ; $6d02: $00
	nop                                              ; $6d03: $00
	nop                                              ; $6d04: $00
	nop                                              ; $6d05: $00
	nop                                              ; $6d06: $00
	nop                                              ; $6d07: $00
	nop                                              ; $6d08: $00
	nop                                              ; $6d09: $00
	nop                                              ; $6d0a: $00
	nop                                              ; $6d0b: $00
	nop                                              ; $6d0c: $00
	nop                                              ; $6d0d: $00
	nop                                              ; $6d0e: $00
	nop                                              ; $6d0f: $00
	nop                                              ; $6d10: $00
	nop                                              ; $6d11: $00
	nop                                              ; $6d12: $00
	nop                                              ; $6d13: $00
	nop                                              ; $6d14: $00
	nop                                              ; $6d15: $00
	nop                                              ; $6d16: $00
	nop                                              ; $6d17: $00
	nop                                              ; $6d18: $00
	nop                                              ; $6d19: $00
	nop                                              ; $6d1a: $00
	nop                                              ; $6d1b: $00
	nop                                              ; $6d1c: $00
	nop                                              ; $6d1d: $00
	nop                                              ; $6d1e: $00
	nop                                              ; $6d1f: $00
	nop                                              ; $6d20: $00
	nop                                              ; $6d21: $00
	nop                                              ; $6d22: $00
	nop                                              ; $6d23: $00
	nop                                              ; $6d24: $00
	nop                                              ; $6d25: $00
	nop                                              ; $6d26: $00
	nop                                              ; $6d27: $00
	nop                                              ; $6d28: $00
	nop                                              ; $6d29: $00
	nop                                              ; $6d2a: $00
	nop                                              ; $6d2b: $00
	nop                                              ; $6d2c: $00
	nop                                              ; $6d2d: $00
	nop                                              ; $6d2e: $00
	nop                                              ; $6d2f: $00
	nop                                              ; $6d30: $00
	nop                                              ; $6d31: $00
	nop                                              ; $6d32: $00
	nop                                              ; $6d33: $00
	nop                                              ; $6d34: $00
	nop                                              ; $6d35: $00
	nop                                              ; $6d36: $00
	nop                                              ; $6d37: $00
	nop                                              ; $6d38: $00
	nop                                              ; $6d39: $00
	nop                                              ; $6d3a: $00
	nop                                              ; $6d3b: $00
	nop                                              ; $6d3c: $00
	nop                                              ; $6d3d: $00
	nop                                              ; $6d3e: $00
	nop                                              ; $6d3f: $00
	nop                                              ; $6d40: $00
	nop                                              ; $6d41: $00
	nop                                              ; $6d42: $00
	nop                                              ; $6d43: $00
	nop                                              ; $6d44: $00
	nop                                              ; $6d45: $00
	nop                                              ; $6d46: $00
	nop                                              ; $6d47: $00
	nop                                              ; $6d48: $00
	nop                                              ; $6d49: $00
	nop                                              ; $6d4a: $00
	nop                                              ; $6d4b: $00
	nop                                              ; $6d4c: $00

Call_09c_6d4d:
	nop                                              ; $6d4d: $00
	nop                                              ; $6d4e: $00
	dec  sp                                          ; $6d4f: $3b
	ld   bc, $0f01                                   ; $6d50: $01 $01 $0f
	nop                                              ; $6d53: $00
	add  b                                           ; $6d54: $80
	rrca                                             ; $6d55: $0f
	add  b                                           ; $6d56: $80
	nop                                              ; $6d57: $00
	add  b                                           ; $6d58: $80
	rrca                                             ; $6d59: $0f
	inc  b                                           ; $6d5a: $04
	nop                                              ; $6d5b: $00
	rrca                                             ; $6d5c: $0f
	nop                                              ; $6d5d: $00
	rrca                                             ; $6d5e: $0f
	nop                                              ; $6d5f: $00
	add  c                                           ; $6d60: $81
	rrca                                             ; $6d61: $0f
	add  hl, de                                      ; $6d62: $19
	ld   a, $ff                                      ; $6d63: $3e $ff
	ldh  a, [rIE]                                    ; $6d65: $f0 $ff
	add  hl, bc                                      ; $6d67: $09
	ccf                                              ; $6d68: $3f
	rst  $20                                         ; $6d69: $e7
	rst  $38                                         ; $6d6a: $ff
	rra                                              ; $6d6b: $1f
	rst  $38                                         ; $6d6c: $ff
	ld   a, a                                        ; $6d6d: $7f
	db   $fc                                         ; $6d6e: $fc
	rst  $38                                         ; $6d6f: $ff
	di                                               ; $6d70: $f3
	rst  $30                                         ; $6d71: $f7
	rst  $20                                         ; $6d72: $e7
	ld   l, a                                        ; $6d73: $6f
	di                                               ; $6d74: $f3
	rst  $20                                         ; $6d75: $e7
	ldh  [c], a                                      ; $6d76: $e2
	cp   $e7                                         ; $6d77: $fe $e7
	rst  $38                                         ; $6d79: $ff
	sbc  a                                           ; $6d7a: $9f
	cp   $7e                                         ; $6d7b: $fe $7e
	add  b                                           ; $6d7d: $80
	rst  $38                                         ; $6d7e: $ff
	add  b                                           ; $6d7f: $80
	ld   sp, hl                                      ; $6d80: $f9
	add  b                                           ; $6d81: $80
	ldh  a, [rP1]                                    ; $6d82: $f0 $00
	rst  $38                                         ; $6d84: $ff
	add  b                                           ; $6d85: $80
	ret  nz                                          ; $6d86: $c0

	add  b                                           ; $6d87: $80
	nop                                              ; $6d88: $00
	add  c                                           ; $6d89: $81
	rst  $38                                         ; $6d8a: $ff
	add  b                                           ; $6d8b: $80
	nop                                              ; $6d8c: $00
	add  d                                           ; $6d8d: $82
	rst  $38                                         ; $6d8e: $ff
	add  b                                           ; $6d8f: $80
	nop                                              ; $6d90: $00
	ld   b, $fc                                      ; $6d91: $06 $fc
	dec  b                                           ; $6d93: $05
	ld   bc, $0509                                   ; $6d94: $01 $09 $05
	ld   de, $8009                                   ; $6d97: $11 $09 $80
	ld   hl, $6185                                   ; $6d9a: $21 $85 $61
	rrca                                             ; $6d9d: $0f
	adc  l                                           ; $6d9e: $8d
	ld   a, $3f                                      ; $6d9f: $3e $3f
	rra                                              ; $6da1: $1f
	ccf                                              ; $6da2: $3f
	rrca                                             ; $6da3: $0f
	dec  e                                           ; $6da4: $1d
	rlca                                             ; $6da5: $07
	inc  c                                           ; $6da6: $0c
	nop                                              ; $6da7: $00
	inc  b                                           ; $6da8: $04
	nop                                              ; $6da9: $00
	add  h                                           ; $6daa: $84
	add  b                                           ; $6dab: $80
	rst  $38                                         ; $6dac: $ff
	rst  ToBoot                                         ; $6dad: $c7
	add  b                                           ; $6dae: $80
	ret  nz                                          ; $6daf: $c0

	add  b                                           ; $6db0: $80
	nop                                              ; $6db1: $00
	add  b                                           ; $6db2: $80
	add  b                                           ; $6db3: $80
	add  b                                           ; $6db4: $80
	ld   [bc], a                                     ; $6db5: $02
	add  b                                           ; $6db6: $80
	ld   c, $80                                      ; $6db7: $0e $80
	ccf                                              ; $6db9: $3f
	add  d                                           ; $6dba: $82
	rst  $38                                         ; $6dbb: $ff
	add  b                                           ; $6dbc: $80
	inc  e                                           ; $6dbd: $1c
	nop                                              ; $6dbe: $00
	rra                                              ; $6dbf: $1f
	add  b                                           ; $6dc0: $80
	dec  de                                          ; $6dc1: $1b
	inc  b                                           ; $6dc2: $04
	db   $10                                         ; $6dc3: $10
	inc  e                                           ; $6dc4: $1c
	db   $10                                         ; $6dc5: $10
	ld   l, $29                                      ; $6dc6: $2e $29
	add  b                                           ; $6dc8: $80
	ld   [$3214], sp                                 ; $6dc9: $08 $14 $32
	inc  [hl]                                        ; $6dcc: $34
	add  hl, de                                      ; $6dcd: $19
	ld   a, [de]                                     ; $6dce: $1a
	ld   c, $e0                                      ; $6dcf: $0e $e0
	db   $f4                                         ; $6dd1: $f4
	ld   [$c4de], sp                                 ; $6dd2: $08 $de $c4
	db   $e4                                         ; $6dd5: $e4
	inc  b                                           ; $6dd6: $04
	rra                                              ; $6dd7: $1f
	ldh  [c], a                                      ; $6dd8: $e2
	ld   [bc], a                                     ; $6dd9: $02
	ld   [de], a                                     ; $6dda: $12
	ld   h, d                                        ; $6ddb: $62
	ld   b, d                                        ; $6ddc: $42
	sub  d                                           ; $6ddd: $92
	and  d                                           ; $6dde: $a2
	ei                                               ; $6ddf: $fb
	add  b                                           ; $6de0: $80
	nop                                              ; $6de1: $00
	add  h                                           ; $6de2: $84
	ld   [bc], a                                     ; $6de3: $02
	add  d                                           ; $6de4: $82
	inc  bc                                          ; $6de5: $03
	add  c                                           ; $6de6: $81
	ld   bc, $1606                                   ; $6de7: $01 $06 $16
	nop                                              ; $6dea: $00
	ld   [$1404], sp                                 ; $6deb: $08 $04 $14
	ld   a, [bc]                                     ; $6dee: $0a
	dec  hl                                          ; $6def: $2b
	add  c                                           ; $6df0: $81
	dec  d                                           ; $6df1: $15
	nop                                              ; $6df2: $00
	ld   d, l                                        ; $6df3: $55
	add  b                                           ; $6df4: $80
	add  hl, hl                                      ; $6df5: $29
	add  b                                           ; $6df6: $80
	add  hl, sp                                      ; $6df7: $39
	dec  b                                           ; $6df8: $05
	inc  [hl]                                        ; $6df9: $34
	xor  l                                           ; $6dfa: $ad
	sbc  b                                           ; $6dfb: $98
	add  e                                           ; $6dfc: $83
	and  b                                           ; $6dfd: $a0
	and  e                                           ; $6dfe: $a3
	add  b                                           ; $6dff: $80
	db   $10                                         ; $6e00: $10
	add  b                                           ; $6e01: $80
	add  hl, bc                                      ; $6e02: $09
	ld   bc, $5414                                   ; $6e03: $01 $14 $54
	add  b                                           ; $6e06: $80
	ld   b, [hl]                                     ; $6e07: $46
	add  b                                           ; $6e08: $80
	ld   c, d                                        ; $6e09: $4a
	ld   hl, $2c4b                                   ; $6e0a: $21 $4b $2c
	rlca                                             ; $6e0d: $07
	sub  a                                           ; $6e0e: $97
	rlca                                             ; $6e0f: $07
	or   c                                           ; $6e10: $b1
	ld   bc, wInGameInputsEnabled                                   ; $6e11: $01 $0e $c2
	call z, $f070                                    ; $6e14: $cc $70 $f0
	add  a                                           ; $6e17: $87
	rst  JumpTable                                         ; $6e18: $df
	ret  c                                           ; $6e19: $d8

	ld   d, a                                        ; $6e1a: $57
	rla                                              ; $6e1b: $17
	ld   b, b                                        ; $6e1c: $40
	nop                                              ; $6e1d: $00
	pop  de                                          ; $6e1e: $d1
	call nz, $2c34                                   ; $6e1f: $c4 $34 $2c
	adc  [hl]                                        ; $6e22: $8e
	ld   a, [hl-]                                    ; $6e23: $3a
	ld   a, $04                                      ; $6e24: $3e $04
	db   $dd                                         ; $6e26: $dd
	ld   e, h                                        ; $6e27: $5c
	call c, $bbd8                                    ; $6e28: $dc $d8 $bb
	cp   c                                           ; $6e2b: $b9
	inc  b                                           ; $6e2c: $04
	add  b                                           ; $6e2d: $80
	ld   h, [hl]                                     ; $6e2e: $66
	inc  de                                          ; $6e2f: $13
	ld   b, e                                        ; $6e30: $43
	jp   $0706                                       ; $6e31: $c3 $06 $07


	inc  c                                           ; $6e34: $0c
	adc  [hl]                                        ; $6e35: $8e
	ld   [$908c], sp                                 ; $6e36: $08 $8c $90
	ret  nc                                          ; $6e39: $d0

	add  [hl]                                        ; $6e3a: $86
	and  [hl]                                        ; $6e3b: $a6
	add  [hl]                                        ; $6e3c: $86
	ld   h, d                                        ; $6e3d: $62
	ld   h, b                                        ; $6e3e: $60
	ld   l, h                                        ; $6e3f: $6c
	nop                                              ; $6e40: $00
	jr   nc, jr_09c_6e43                             ; $6e41: $30 $00

jr_09c_6e43:
	ret  nz                                          ; $6e43: $c0

	add  d                                           ; $6e44: $82
	nop                                              ; $6e45: $00
	add  b                                           ; $6e46: $80
	ld   bc, $0380                                   ; $6e47: $01 $80 $03
	ld   bc, $0906                                   ; $6e4a: $01 $06 $09
	add  c                                           ; $6e4d: $81
	nop                                              ; $6e4e: $00
	add  b                                           ; $6e4f: $80
	dec  b                                           ; $6e50: $05
	add  b                                           ; $6e51: $80
	ld   a, [bc]                                     ; $6e52: $0a
	add  b                                           ; $6e53: $80
	dec  b                                           ; $6e54: $05
	add  b                                           ; $6e55: $80
	ld   a, [bc]                                     ; $6e56: $0a
	add  b                                           ; $6e57: $80
	dec  b                                           ; $6e58: $05
	add  b                                           ; $6e59: $80
	ld   a, [bc]                                     ; $6e5a: $0a
	ld   bc, $55a5                                   ; $6e5b: $01 $a5 $55
	add  b                                           ; $6e5e: $80
	xor  d                                           ; $6e5f: $aa
	add  b                                           ; $6e60: $80
	ld   d, l                                        ; $6e61: $55
	add  b                                           ; $6e62: $80
	xor  d                                           ; $6e63: $aa
	add  b                                           ; $6e64: $80
	ld   d, l                                        ; $6e65: $55
	add  b                                           ; $6e66: $80
	xor  d                                           ; $6e67: $aa
	add  b                                           ; $6e68: $80
	ld   d, l                                        ; $6e69: $55
	add  b                                           ; $6e6a: $80
	xor  d                                           ; $6e6b: $aa
	add  b                                           ; $6e6c: $80
	nop                                              ; $6e6d: $00
	add  b                                           ; $6e6e: $80
	add  b                                           ; $6e6f: $80
	add  b                                           ; $6e70: $80
	ld   e, a                                        ; $6e71: $5f
	add  b                                           ; $6e72: $80
	xor  a                                           ; $6e73: $af
	add  b                                           ; $6e74: $80
	ld   d, l                                        ; $6e75: $55
	add  b                                           ; $6e76: $80
	xor  d                                           ; $6e77: $aa
	add  b                                           ; $6e78: $80
	ld   d, l                                        ; $6e79: $55
	add  b                                           ; $6e7a: $80
	xor  d                                           ; $6e7b: $aa
	add  d                                           ; $6e7c: $82
	nop                                              ; $6e7d: $00
	add  h                                           ; $6e7e: $84
	rst  $38                                         ; $6e7f: $ff
	add  b                                           ; $6e80: $80
	cp   a                                           ; $6e81: $bf
	add  b                                           ; $6e82: $80
	ld   d, l                                        ; $6e83: $55
	add  b                                           ; $6e84: $80
	xor  d                                           ; $6e85: $aa
	nop                                              ; $6e86: $00
	xor  $82                                         ; $6e87: $ee $82
	ld   h, d                                        ; $6e89: $62
	nop                                              ; $6e8a: $00
	ld   h, b                                        ; $6e8b: $60
	add  h                                           ; $6e8c: $84
	ld   h, c                                        ; $6e8d: $61
	nop                                              ; $6e8e: $00
	ld   a, c                                        ; $6e8f: $79
	add  b                                           ; $6e90: $80
	ld   [hl], b                                     ; $6e91: $70
	ld   bc, $3830                                   ; $6e92: $01 $30 $38
	add  e                                           ; $6e95: $83
	rst  $38                                         ; $6e96: $ff
	adc  b                                           ; $6e97: $88
	ld   a, a                                        ; $6e98: $7f
	add  [hl]                                        ; $6e99: $86
	cp   $86                                         ; $6e9a: $fe $86
	db   $fc                                         ; $6e9c: $fc
	inc  bc                                          ; $6e9d: $03
	dec  d                                           ; $6e9e: $15
	inc  d                                           ; $6e9f: $14
	inc  l                                           ; $6ea0: $2c
	dec  l                                           ; $6ea1: $2d
	add  b                                           ; $6ea2: $80
	dec  c                                           ; $6ea3: $0d
	add  d                                           ; $6ea4: $82
	dec  b                                           ; $6ea5: $05
	add  h                                           ; $6ea6: $84
	ld   bc, $d602                                   ; $6ea7: $01 $02 $d6
	ld   d, d                                        ; $6eaa: $52
	ld   h, d                                        ; $6eab: $62
	add  b                                           ; $6eac: $80
	ld   [hl+], a                                    ; $6ead: $22
	add  c                                           ; $6eae: $81
	ld   [bc], a                                     ; $6eaf: $02
	nop                                              ; $6eb0: $00
	ld   [de], a                                     ; $6eb1: $12
	add  b                                           ; $6eb2: $80
	ld   [bc], a                                     ; $6eb3: $02
	add  d                                           ; $6eb4: $82
	ld   [de], a                                     ; $6eb5: $12
	ld   bc, $2b32                                   ; $6eb6: $01 $32 $2b
	add  l                                           ; $6eb9: $85
	ld   bc, $0081                                   ; $6eba: $01 $81 $00
	add  e                                           ; $6ebd: $83
	jr   nz, jr_09c_6ec2                             ; $6ebe: $20 $02

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ec0: $cf
	ld   [hl], h                                     ; $6ec1: $74

jr_09c_6ec2:
	halt                                             ; $6ec2: $76
	add  b                                           ; $6ec3: $80
	ld   a, b                                        ; $6ec4: $78
	add  b                                           ; $6ec5: $80
	ld   l, b                                        ; $6ec6: $68
	add  b                                           ; $6ec7: $80
	ld   l, d                                        ; $6ec8: $6a
	add  b                                           ; $6ec9: $80
	ld   [$da83], a                                  ; $6eca: $ea $83 $da
	nop                                              ; $6ecd: $00
	sbc  c                                           ; $6ece: $99
	add  d                                           ; $6ecf: $82
	dec  d                                           ; $6ed0: $15
	add  d                                           ; $6ed1: $82
	rla                                              ; $6ed2: $17
	add  c                                           ; $6ed3: $81
	dec  de                                          ; $6ed4: $1b
	nop                                              ; $6ed5: $00
	sbc  e                                           ; $6ed6: $9b
	add  c                                           ; $6ed7: $81
	dec  de                                          ; $6ed8: $1b
	nop                                              ; $6ed9: $00
	adc  h                                           ; $6eda: $8c
	add  b                                           ; $6edb: $80
	inc  de                                          ; $6edc: $13
	inc  bc                                          ; $6edd: $03
	ld   de, $9270                                   ; $6ede: $11 $70 $92
	adc  d                                           ; $6ee1: $8a
	add  b                                           ; $6ee2: $80
	add  d                                           ; $6ee3: $82
	ld   bc, $a1a2                                   ; $6ee4: $01 $a2 $a1
	add  b                                           ; $6ee7: $80
	and  b                                           ; $6ee8: $a0
	rlca                                             ; $6ee9: $07
	and  h                                           ; $6eea: $a4
	sub  h                                           ; $6eeb: $94
	add  h                                           ; $6eec: $84
	db   $e4                                         ; $6eed: $e4
	ld   sp, $3337                                   ; $6eee: $31 $37 $33
	or   e                                           ; $6ef1: $b3
	add  b                                           ; $6ef2: $80
	inc  hl                                          ; $6ef3: $23
	ld   bc, $0e22                                   ; $6ef4: $01 $22 $0e
	add  d                                           ; $6ef7: $82
	ld   b, $08                                      ; $6ef8: $06 $08
	ld   b, h                                        ; $6efa: $44
	inc  h                                           ; $6efb: $24
	inc  b                                           ; $6efc: $04
	ld   e, h                                        ; $6efd: $5c
	adc  [hl]                                        ; $6efe: $8e
	adc  d                                           ; $6eff: $8a
	dec  bc                                          ; $6f00: $0b
	dec  sp                                          ; $6f01: $3b
	dec  de                                          ; $6f02: $1b
	add  d                                           ; $6f03: $82
	rla                                              ; $6f04: $17
	ld   bc, $3477                                   ; $6f05: $01 $77 $34
	add  b                                           ; $6f08: $80
	inc  l                                           ; $6f09: $2c
	ld   [bc], a                                     ; $6f0a: $02
	db   $ec                                         ; $6f0b: $ec
	ld   l, l                                        ; $6f0c: $6d
	db   $fd                                         ; $6f0d: $fd
	add  b                                           ; $6f0e: $80
	inc  c                                           ; $6f0f: $0c
	add  b                                           ; $6f10: $80
	jr   @-$7e                                       ; $6f11: $18 $80

	ld   sp, $6380                                   ; $6f13: $31 $80 $63
	rlca                                             ; $6f16: $07
	ld   b, a                                        ; $6f17: $47
	ld   b, [hl]                                     ; $6f18: $46
	adc  $cd                                         ; $6f19: $ce $cd
	sbc  h                                           ; $6f1b: $9c
	sbc  d                                           ; $6f1c: $9a
	sbc  b                                           ; $6f1d: $98
	sbc  h                                           ; $6f1e: $9c
	add  [hl]                                        ; $6f1f: $86
	nop                                              ; $6f20: $00
	nop                                              ; $6f21: $00
	rst  $38                                         ; $6f22: $ff
	add  b                                           ; $6f23: $80
	cp   $80                                         ; $6f24: $fe $80
	ld   bc, $fc80                                   ; $6f26: $01 $80 $fc
	nop                                              ; $6f29: $00
	rst  $38                                         ; $6f2a: $ff
	add  l                                           ; $6f2b: $85
	nop                                              ; $6f2c: $00
	ld   bc, $9c63                                   ; $6f2d: $01 $63 $9c
	add  b                                           ; $6f30: $80
	ld   [hl], e                                     ; $6f31: $73
	inc  b                                           ; $6f32: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f33: $cf
	call z, $383c                                    ; $6f34: $cc $3c $38
	ld   hl, sp-$7b                                  ; $6f37: $f8 $85
	nop                                              ; $6f39: $00
	inc  bc                                          ; $6f3a: $03
	dec  b                                           ; $6f3b: $05
	ld   a, [$35f5]                                  ; $6f3c: $fa $f5 $35
	add  b                                           ; $6f3f: $80
	ld   a, [hl-]                                    ; $6f40: $3a
	add  b                                           ; $6f41: $80
	dec  [hl]                                        ; $6f42: $35
	nop                                              ; $6f43: $00
	ccf                                              ; $6f44: $3f
	add  l                                           ; $6f45: $85
	nop                                              ; $6f46: $00
	ld   bc, $8070                                   ; $6f47: $01 $70 $80
	add  b                                           ; $6f4a: $80
	nop                                              ; $6f4b: $00
	add  b                                           ; $6f4c: $80
	add  b                                           ; $6f4d: $80
	add  b                                           ; $6f4e: $80
	jr   nc, jr_09c_6f52                             ; $6f4f: $30 $01

	xor  a                                           ; $6f51: $af

jr_09c_6f52:
	ld   e, a                                        ; $6f52: $5f
	add  b                                           ; $6f53: $80
	xor  a                                           ; $6f54: $af
	add  b                                           ; $6f55: $80
	rst  $38                                         ; $6f56: $ff
	inc  b                                           ; $6f57: $04
	ld   a, a                                        ; $6f58: $7f
	rst  $38                                         ; $6f59: $ff
	add  b                                           ; $6f5a: $80
	rst  $38                                         ; $6f5b: $ff
	ldh  [$82], a                                    ; $6f5c: $e0 $82
	cpl                                              ; $6f5e: $2f
	dec  bc                                          ; $6f5f: $0b
	jr   nz, jr_09c_6faf                             ; $6f60: $20 $4d

	db   $fd                                         ; $6f62: $fd
	db   $fc                                         ; $6f63: $fc
	db   $fd                                         ; $6f64: $fd
	ld   [hl], c                                     ; $6f65: $71
	rst  $38                                         ; $6f66: $ff
	ldh  [rIE], a                                    ; $6f67: $e0 $ff
	nop                                              ; $6f69: $00
	rst  $38                                         ; $6f6a: $ff
	rra                                              ; $6f6b: $1f
	add  b                                           ; $6f6c: $80
	rst  $38                                         ; $6f6d: $ff
	add  b                                           ; $6f6e: $80
	ld   hl, sp+$09                                  ; $6f6f: $f8 $09

jr_09c_6f71:
	nop                                              ; $6f71: $00
	ret  z                                           ; $6f72: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f73: $cf
	rlca                                             ; $6f74: $07
	rst  $38                                         ; $6f75: $ff
	cp   $ff                                         ; $6f76: $fe $ff
	nop                                              ; $6f78: $00
	rst  $38                                         ; $6f79: $ff
	ld   bc, $ff82                                   ; $6f7a: $01 $82 $ff
	add  c                                           ; $6f7d: $81
	nop                                              ; $6f7e: $00
	nop                                              ; $6f7f: $00
	rrca                                             ; $6f80: $0f
	add  c                                           ; $6f81: $81
	ldh  a, [rSC]                                    ; $6f82: $f0 $02
	nop                                              ; $6f84: $00
	ldh  a, [rP1]                                    ; $6f85: $f0 $00
	add  h                                           ; $6f87: $84
	ldh  a, [$81]                                    ; $6f88: $f0 $81
	nop                                              ; $6f8a: $00
	inc  b                                           ; $6f8b: $04
	ld   [$282d], a                                  ; $6f8c: $ea $2d $28
	cpl                                              ; $6f8f: $2f
	dec  hl                                          ; $6f90: $2b
	add  e                                           ; $6f91: $83
	inc  l                                           ; $6f92: $2c
	add  h                                           ; $6f93: $84
	dec  l                                           ; $6f94: $2d
	inc  b                                           ; $6f95: $04
	ld   [hl], $fe                                   ; $6f96: $36 $fe
	ld   c, $fe                                      ; $6f98: $0e $fe
	ldh  a, [$80]                                    ; $6f9a: $f0 $80
	rra                                              ; $6f9c: $1f
	add  e                                           ; $6f9d: $83
	nop                                              ; $6f9e: $00
	add  b                                           ; $6f9f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fa0: $cf
	add  b                                           ; $6fa1: $80
	jp   hl                                          ; $6fa2: $e9


	add  d                                           ; $6fa3: $82

jr_09c_6fa4:
	nop                                              ; $6fa4: $00
	ld   [bc], a                                     ; $6fa5: $02
	inc  bc                                          ; $6fa6: $03
	rst  $38                                         ; $6fa7: $ff
	db   $fc                                         ; $6fa8: $fc
	add  b                                           ; $6fa9: $80
	inc  bc                                          ; $6faa: $03
	add  d                                           ; $6fab: $82
	nop                                              ; $6fac: $00
	inc  bc                                          ; $6fad: $03
	rlca                                             ; $6fae: $07

jr_09c_6faf:
	ld   b, $07                                      ; $6faf: $06 $07
	add  hl, bc                                      ; $6fb1: $09
	add  c                                           ; $6fb2: $81
	nop                                              ; $6fb3: $00
	add  b                                           ; $6fb4: $80

jr_09c_6fb5:
	ldh  a, [rP1]                                    ; $6fb5: $f0 $00
	nop                                              ; $6fb7: $00
	add  b                                           ; $6fb8: $80
	ldh  a, [$81]                                    ; $6fb9: $f0 $81
	nop                                              ; $6fbb: $00
	dec  b                                           ; $6fbc: $05
	ret  nz                                          ; $6fbd: $c0

	ldh  a, [rSVBK]                                  ; $6fbe: $f0 $70
	ldh  a, [$58]                                    ; $6fc0: $f0 $58
	rst  $28                                         ; $6fc2: $ef
	add  b                                           ; $6fc3: $80
	rrca                                             ; $6fc4: $0f
	adc  d                                           ; $6fc5: $8a
	xor  a                                           ; $6fc6: $af
	ld   bc, $0109                                   ; $6fc7: $01 $09 $01
	add  b                                           ; $6fca: $80
	add  b                                           ; $6fcb: $80
	add  b                                           ; $6fcc: $80
	cp   $0f                                         ; $6fcd: $fe $0f
	db   $fc                                         ; $6fcf: $fc
	add  e                                           ; $6fd0: $83
	add  b                                           ; $6fd1: $80
	add  a                                           ; $6fd2: $87
	add  [hl]                                        ; $6fd3: $86
	add  a                                           ; $6fd4: $87
	add  c                                           ; $6fd5: $81
	add  b                                           ; $6fd6: $80
	sbc  a                                           ; $6fd7: $9f
	add  b                                           ; $6fd8: $80

jr_09c_6fd9:
	ld   h, [hl]                                     ; $6fd9: $66
	rst  $38                                         ; $6fda: $ff
	xor  $1f                                         ; $6fdb: $ee $1f
	ld   c, $01                                      ; $6fdd: $0e $01
	add  d                                           ; $6fdf: $82
	ret  nz                                          ; $6fe0: $c0

	ld   [$0ff1], sp                                 ; $6fe1: $08 $f1 $0f
	ldh  [rAUD4ENV], a                               ; $6fe4: $e0 $21
	or   b                                           ; $6fe6: $b0

jr_09c_6fe7:
	ccf                                              ; $6fe7: $3f
	ld   c, a                                        ; $6fe8: $4f
	ldh  a, [rP1]                                    ; $6fe9: $f0 $00
	add  c                                           ; $6feb: $81
	ldh  a, [rSB]                                    ; $6fec: $f0 $01
	ret  nz                                          ; $6fee: $c0

	jr   nc, jr_09c_6f71                             ; $6fef: $30 $80

	nop                                              ; $6ff1: $00
	add  b                                           ; $6ff2: $80
	add  b                                           ; $6ff3: $80

jr_09c_6ff4:
	dec  b                                           ; $6ff4: $05
	jr   nc, jr_09c_6fe7                             ; $6ff5: $30 $f0

	jr   nz, jr_09c_6fd9                             ; $6ff7: $20 $e0

	rrca                                             ; $6ff9: $0f
	nop                                              ; $6ffa: $00
	add  b                                           ; $6ffb: $80
	cp   $80                                         ; $6ffc: $fe $80
	rst  $38                                         ; $6ffe: $ff
	add  c                                           ; $6fff: $81

Call_09c_7000:
	nop                                              ; $7000: $00
	add  l                                           ; $7001: $85
	rst  $38                                         ; $7002: $ff
	ld   bc, $f800                                   ; $7003: $01 $00 $f8
	add  b                                           ; $7006: $80
	ldh  [rSC], a                                    ; $7007: $e0 $02
	nop                                              ; $7009: $00
	jr   jr_09c_6fa4                                 ; $700a: $18 $98

	add  c                                           ; $700c: $81
	ld   sp, hl                                      ; $700d: $f9
	ld   bc, $fcf2                                   ; $700e: $01 $f2 $fc
	add  d                                           ; $7011: $82
	db   $fd                                         ; $7012: $fd
	inc  bc                                          ; $7013: $03
	adc  d                                           ; $7014: $8a
	ld   a, [hl-]                                    ; $7015: $3a
	jr   nc, jr_09c_704f                             ; $7016: $30 $37

	add  b                                           ; $7018: $80
	ccf                                              ; $7019: $3f
	ld   bc, $c707                                   ; $701a: $01 $07 $c7
	add  b                                           ; $701d: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $701e: $cf
	add  b                                           ; $701f: $80
	rlca                                             ; $7020: $07
	add  b                                           ; $7021: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7022: $cf
	add  b                                           ; $7023: $80
	rst  ToBoot                                         ; $7024: $c7
	nop                                              ; $7025: $00
	jr   c, jr_09c_6fb5                              ; $7026: $38 $8d

	ldh  a, [rSB]                                    ; $7028: $f0 $01
	dec  hl                                          ; $702a: $2b
	inc  l                                           ; $702b: $2c
	adc  h                                           ; $702c: $8c
	dec  l                                           ; $702d: $2d
	ld   bc, $00c8                                   ; $702e: $01 $c8 $00
	add  b                                           ; $7031: $80
	add  b                                           ; $7032: $80
	add  b                                           ; $7033: $80
	ldh  [$80], a                                    ; $7034: $e0 $80
	ldh  a, [$80]                                    ; $7036: $f0 $80
	ld   hl, sp-$7e                                  ; $7038: $f8 $82
	db   $fc                                         ; $703a: $fc
	add  b                                           ; $703b: $80
	cp   $8e                                         ; $703c: $fe $8e
	nop                                              ; $703e: $00
	nop                                              ; $703f: $00
	rrca                                             ; $7040: $0f
	adc  l                                           ; $7041: $8d
	nop                                              ; $7042: $00
	nop                                              ; $7043: $00
	ld   [$2d87], a                                  ; $7044: $ea $87 $2d
	rlca                                             ; $7047: $07
	xor  b                                           ; $7048: $a8
	xor  a                                           ; $7049: $af
	xor  d                                           ; $704a: $aa
	dec  l                                           ; $704b: $2d
	xor  h                                           ; $704c: $ac
	db   $ec                                         ; $704d: $ec
	pop  hl                                          ; $704e: $e1

jr_09c_704f:
	jp   hl                                          ; $704f: $e9


	add  d                                           ; $7050: $82
	ld   sp, hl                                      ; $7051: $f9
	add  b                                           ; $7052: $80
	pop  af                                          ; $7053: $f1
	add  b                                           ; $7054: $80
	jp   $0e07                                       ; $7055: $c3 $07 $0e


	adc  [hl]                                        ; $7058: $8e

jr_09c_7059:
	add  h                                           ; $7059: $84
	db   $fc                                         ; $705a: $fc
	add  sp, $1f                                     ; $705b: $e8 $1f
	inc  c                                           ; $705d: $0c
	inc  bc                                          ; $705e: $03
	add  b                                           ; $705f: $80
	ld   b, $80                                      ; $7060: $06 $80
	dec  b                                           ; $7062: $05
	add  b                                           ; $7063: $80
	ld   b, $80                                      ; $7064: $06 $80
	inc  c                                           ; $7066: $0c
	add  b                                           ; $7067: $80
	ld   a, [bc]                                     ; $7068: $0a
	add  b                                           ; $7069: $80
	inc  a                                           ; $706a: $3c
	ld   [bc], a                                     ; $706b: $02
	add  hl, sp                                      ; $706c: $39
	ld   sp, hl                                      ; $706d: $f9
	rst  $38                                         ; $706e: $ff
	add  a                                           ; $706f: $87
	jr   nc, jr_09c_6ff4                             ; $7070: $30 $82

	ld   [hl], b                                     ; $7072: $70
	add  b                                           ; $7073: $80
	ldh  a, [rP1]                                    ; $7074: $f0 $00
	xor  b                                           ; $7076: $a8
	add  c                                           ; $7077: $81
	xor  a                                           ; $7078: $af
	add  b                                           ; $7079: $80
	ld   c, $2a                                      ; $707a: $0e $2a
	ld   sp, hl                                      ; $707c: $f9
	ld   hl, sp-$02                                  ; $707d: $f8 $fe
	ldh  a, [$08]                                    ; $707f: $f0 $08
	nop                                              ; $7081: $00
	jr   nc, jr_09c_7084                             ; $7082: $30 $00

jr_09c_7084:
	ret  nz                                          ; $7084: $c0

	nop                                              ; $7085: $00
	ld   h, b                                        ; $7086: $60
	rrca                                             ; $7087: $0f
	db   $ec                                         ; $7088: $ec
	inc  e                                           ; $7089: $1c
	sub  d                                           ; $708a: $92
	ld   [hl-], a                                    ; $708b: $32
	dec  l                                           ; $708c: $2d
	ld   h, h                                        ; $708d: $64
	ld   d, d                                        ; $708e: $52
	ret  z                                           ; $708f: $c8

	ld   h, h                                        ; $7090: $64
	db   $10                                         ; $7091: $10
	adc  c                                           ; $7092: $89
	jr   nz, jr_09c_70a5                             ; $7093: $20 $10

	nop                                              ; $7095: $00
	ld   a, [hl]                                     ; $7096: $7e
	jr   nz, jr_09c_7059                             ; $7097: $20 $c0

	rrca                                             ; $7099: $0f
	rst  $28                                         ; $709a: $ef
	ccf                                              ; $709b: $3f
	xor  $71                                         ; $709c: $ee $71
	ld   b, b                                        ; $709e: $40
	ld   c, [hl]                                     ; $709f: $4e
	cp   [hl]                                        ; $70a0: $be
	ccf                                              ; $70a1: $3f
	rst  $30                                         ; $70a2: $f7
	ld   a, a                                        ; $70a3: $7f
	ld   b, [hl]                                     ; $70a4: $46

jr_09c_70a5:
	ld   b, c                                        ; $70a5: $41
	rst  $28                                         ; $70a6: $ef
	add  c                                           ; $70a7: $81
	ldh  [$80], a                                    ; $70a8: $e0 $80
	ret  nz                                          ; $70aa: $c0

	add  b                                           ; $70ab: $80
	and  b                                           ; $70ac: $a0
	add  b                                           ; $70ad: $80
	ld   b, b                                        ; $70ae: $40
	add  b                                           ; $70af: $80
	and  b                                           ; $70b0: $a0
	add  b                                           ; $70b1: $80
	ld   b, b                                        ; $70b2: $40
	add  b                                           ; $70b3: $80
	add  b                                           ; $70b4: $80
	nop                                              ; $70b5: $00
	ldh  a, [$80]                                    ; $70b6: $f0 $80
	nop                                              ; $70b8: $00
	add  b                                           ; $70b9: $80
	ld   [$110b], sp                                 ; $70ba: $08 $0b $11
	db   $10                                         ; $70bd: $10
	ld   [hl+], a                                    ; $70be: $22
	ld   hl, $c2c4                                   ; $70bf: $21 $c4 $c2
	adc  b                                           ; $70c2: $88
	add  h                                           ; $70c3: $84
	db   $10                                         ; $70c4: $10
	ld   [$3220], sp                                 ; $70c5: $08 $20 $32
	add  b                                           ; $70c8: $80
	ld   b, b                                        ; $70c9: $40
	inc  bc                                          ; $70ca: $03
	add  b                                           ; $70cb: $80
	nop                                              ; $70cc: $00
	ld   bc, $8286                                   ; $70cd: $01 $86 $82
	ld   [bc], a                                     ; $70d0: $02
	ld   bc, $0c00                                   ; $70d1: $01 $00 $0c
	add  c                                           ; $70d4: $81
	inc  b                                           ; $70d5: $04
	add  hl, bc                                      ; $70d6: $09
	ld   d, d                                        ; $70d7: $52
	ld   a, $e6                                      ; $70d8: $3e $e6
	ld   a, a                                        ; $70da: $7f
	ld   h, l                                        ; $70db: $65
	ld   h, e                                        ; $70dc: $63
	sbc  b                                           ; $70dd: $98
	ld   bc, $0165                                   ; $70de: $01 $65 $01
	add  b                                           ; $70e1: $80
	nop                                              ; $70e2: $00
	nop                                              ; $70e3: $00
	ld   [bc], a                                     ; $70e4: $02
	add  c                                           ; $70e5: $81
	nop                                              ; $70e6: $00
	nop                                              ; $70e7: $00
	pop  af                                          ; $70e8: $f1
	add  e                                           ; $70e9: $83
	nop                                              ; $70ea: $00
	add  b                                           ; $70eb: $80
	db   $10                                         ; $70ec: $10
	add  d                                           ; $70ed: $82
	jr   nc, @-$7d                                   ; $70ee: $30 $81

	ld   [hl], b                                     ; $70f0: $70
	inc  b                                           ; $70f1: $04
	ldh  a, [$50]                                    ; $70f2: $f0 $50
	ld   b, b                                        ; $70f4: $40
	ld   h, b                                        ; $70f5: $60
	ret  nz                                          ; $70f6: $c0

	add  b                                           ; $70f7: $80
	add  b                                           ; $70f8: $80
	ld   [bc], a                                     ; $70f9: $02
	ld   b, b                                        ; $70fa: $40
	nop                                              ; $70fb: $00
	add  b                                           ; $70fc: $80
	add  c                                           ; $70fd: $81
	ld   bc, $0000                                   ; $70fe: $01 $00 $00
	add  b                                           ; $7101: $80
	ld   [bc], a                                     ; $7102: $02
	ld   bc, $0e06                                   ; $7103: $01 $06 $0e
	add  c                                           ; $7106: $81
	inc  b                                           ; $7107: $04
	inc  bc                                          ; $7108: $03
	inc  e                                           ; $7109: $1c
	adc  h                                           ; $710a: $8c
	adc  l                                           ; $710b: $8d
	adc  h                                           ; $710c: $8c
	add  b                                           ; $710d: $80
	inc  c                                           ; $710e: $0c
	add  b                                           ; $710f: $80
	inc  e                                           ; $7110: $1c
	nop                                              ; $7111: $00
	sbc  h                                           ; $7112: $9c
	add  c                                           ; $7113: $81
	inc  e                                           ; $7114: $1c
	ld   [de], a                                     ; $7115: $12
	rra                                              ; $7116: $1f
	add  b                                           ; $7117: $80
	add  h                                           ; $7118: $84
	and  d                                           ; $7119: $a2
	xor  d                                           ; $711a: $aa
	or   [hl]                                        ; $711b: $b6
	and  [hl]                                        ; $711c: $a6
	xor  h                                           ; $711d: $ac
	xor  l                                           ; $711e: $ad
	adc  l                                           ; $711f: $8d
	xor  a                                           ; $7120: $af
	dec  de                                          ; $7121: $1b
	ld   e, b                                        ; $7122: $58
	jr   nc, jr_09c_7163                             ; $7123: $30 $3e

	ld   l, $af                                      ; $7125: $2e $af
	nop                                              ; $7127: $00
	ldh  [$80], a                                    ; $7128: $e0 $80
	add  b                                           ; $712a: $80
	nop                                              ; $712b: $00
	ldh  [$80], a                                    ; $712c: $e0 $80
	ld   h, b                                        ; $712e: $60
	ld   [bc], a                                     ; $712f: $02
	sub  b                                           ; $7130: $90
	db   $10                                         ; $7131: $10
	ld   h, b                                        ; $7132: $60
	add  b                                           ; $7133: $80
	add  b                                           ; $7134: $80
	nop                                              ; $7135: $00
	ldh  [$80], a                                    ; $7136: $e0 $80
	ret  nc                                          ; $7138: $d0

	nop                                              ; $7139: $00
	ldh  a, [rIE]                                    ; $713a: $f0 $ff
	nop                                              ; $713c: $00
	rst  $38                                         ; $713d: $ff
	nop                                              ; $713e: $00
	rst  $38                                         ; $713f: $ff
	nop                                              ; $7140: $00
	rst  $38                                         ; $7141: $ff
	nop                                              ; $7142: $00
	rst  $38                                         ; $7143: $ff
	nop                                              ; $7144: $00
	rst  $38                                         ; $7145: $ff
	nop                                              ; $7146: $00
	rst  $30                                         ; $7147: $f7
	nop                                              ; $7148: $00
	dec  a                                           ; $7149: $3d
	ld   bc, $fb03                                   ; $714a: $01 $03 $fb
	inc  b                                           ; $714d: $04
	di                                               ; $714e: $f3
	db   $d3                                         ; $714f: $d3
	add  d                                           ; $7150: $82
	rst  $10                                         ; $7151: $d7
	ld   bc, $d7c7                                   ; $7152: $01 $c7 $d7
	add  b                                           ; $7155: $80
	call nc, $d380                                   ; $7156: $d4 $80 $d3
	add  b                                           ; $7159: $80
	rst  $10                                         ; $715a: $d7
	inc  b                                           ; $715b: $04
	ld   hl, wBaseInitialStickyCounter                                   ; $715c: $21 $13 $c2
	and  [hl]                                        ; $715f: $a6
	or   [hl]                                        ; $7160: $b6
	add  b                                           ; $7161: $80
	or   c                                           ; $7162: $b1

jr_09c_7163:
	add  b                                           ; $7163: $80
	or   a                                           ; $7164: $b7
	ld   [de], a                                     ; $7165: $12
	or   [hl]                                        ; $7166: $b6
	ld   [hl], a                                     ; $7167: $77
	ld   de, $a5c1                                   ; $7168: $11 $c1 $a5
	or   a                                           ; $716b: $b7
	or   e                                           ; $716c: $b3
	ld   [$0161], sp                                 ; $716d: $08 $61 $01
	add  c                                           ; $7170: $81
	push de                                          ; $7171: $d5
	ld   d, l                                        ; $7172: $55
	ld   c, c                                        ; $7173: $49
	ld   b, b                                        ; $7174: $40
	ld   c, e                                        ; $7175: $4b
	ld   c, d                                        ; $7176: $4a
	ld   l, d                                        ; $7177: $6a
	ld   l, e                                        ; $7178: $6b
	add  b                                           ; $7179: $80
	dec  hl                                          ; $717a: $2b
	add  b                                           ; $717b: $80
	xor  e                                           ; $717c: $ab
	ld   [$7303], sp                                 ; $717d: $08 $03 $73
	ld   a, e                                        ; $7180: $7b
	ld   l, e                                        ; $7181: $6b
	ld   l, h                                        ; $7182: $6c
	xor  l                                           ; $7183: $ad
	and  c                                           ; $7184: $a1
	nop                                              ; $7185: $00
	rst  $38                                         ; $7186: $ff
	add  b                                           ; $7187: $80
	rlca                                             ; $7188: $07
	add  e                                           ; $7189: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $718a: $cf
	ld   a, [bc]                                     ; $718b: $0a
	pop  af                                          ; $718c: $f1
	pop  bc                                          ; $718d: $c1
	cp   e                                           ; $718e: $bb
	xor  e                                           ; $718f: $ab
	ld   l, l                                        ; $7190: $6d
	ld   [hl], l                                     ; $7191: $75
	dec  [hl]                                        ; $7192: $35
	push af                                          ; $7193: $f5
	push de                                          ; $7194: $d5
	ld   [hl], l                                     ; $7195: $75
	push af                                          ; $7196: $f5
	add  e                                           ; $7197: $83
	or   l                                           ; $7198: $b5
	nop                                              ; $7199: $00
	rst  $10                                         ; $719a: $d7
	add  d                                           ; $719b: $82
	cp   $82                                         ; $719c: $fe $82
	db   $fc                                         ; $719e: $fc
	nop                                              ; $719f: $00
	ld   sp, hl                                      ; $71a0: $f9
	add  b                                           ; $71a1: $80
	ld   hl, sp+$01                                  ; $71a2: $f8 $01
	rst  $38                                         ; $71a4: $ff
	ld   sp, hl                                      ; $71a5: $f9
	add  b                                           ; $71a6: $80
	and  $07                                         ; $71a7: $e6 $07
	sbc  c                                           ; $71a9: $99
	ld   e, $67                                      ; $71aa: $1e $67
	ld   l, h                                        ; $71ac: $6c
	ld   l, a                                        ; $71ad: $6f
	di                                               ; $71ae: $f3
	sbc  $ce                                         ; $71af: $de $ce
	add  b                                           ; $71b1: $80
	ccf                                              ; $71b2: $3f
	add  b                                           ; $71b3: $80
	db   $fc                                         ; $71b4: $fc
	add  b                                           ; $71b5: $80
	di                                               ; $71b6: $f3
	add  b                                           ; $71b7: $80
	call z, $ef06                                    ; $71b8: $cc $06 $ef
	cpl                                              ; $71bb: $2f
	rra                                              ; $71bc: $1f
	rrca                                             ; $71bd: $0f
	ld   l, a                                        ; $71be: $6f
	add  e                                           ; $71bf: $83
	ld   b, e                                        ; $71c0: $43
	add  b                                           ; $71c1: $80
	ld   [hl], b                                     ; $71c2: $70
	ld   [bc], a                                     ; $71c3: $02
	ld   a, h                                        ; $71c4: $7c
	call c, $80df                                    ; $71c5: $dc $df $80
	rst  $38                                         ; $71c8: $ff
	ld   [bc], a                                     ; $71c9: $02
	dec  sp                                          ; $71ca: $3b
	ei                                               ; $71cb: $fb
	ld   a, [hl-]                                    ; $71cc: $3a
	add  e                                           ; $71cd: $83
	ld   a, [$f980]                                  ; $71ce: $fa $80 $f9

jr_09c_71d1:
	nop                                              ; $71d1: $00
	ei                                               ; $71d2: $fb
	add  b                                           ; $71d3: $80
	dec  sp                                          ; $71d4: $3b
	add  b                                           ; $71d5: $80
	dec  bc                                          ; $71d6: $0b
	add  b                                           ; $71d7: $80
	jp   $f301                                       ; $71d8: $c3 $01 $f3


	rst  $28                                         ; $71db: $ef
	add  c                                           ; $71dc: $81
	rst  $10                                         ; $71dd: $d7
	inc  bc                                          ; $71de: $03
	scf                                              ; $71df: $37
	rlca                                             ; $71e0: $07
	and  $d6                                         ; $71e1: $e6 $d6
	add  b                                           ; $71e3: $80
	pop  de                                          ; $71e4: $d1
	inc  bc                                          ; $71e5: $03
	push de                                          ; $71e6: $d5
	push bc                                          ; $71e7: $c5
	db   $fc                                         ; $71e8: $fc
	db   $dd                                         ; $71e9: $dd
	add  b                                           ; $71ea: $80
	or   c                                           ; $71eb: $b1
	nop                                              ; $71ec: $00
	sub  $81                                         ; $71ed: $d6 $81
	or   a                                           ; $71ef: $b7
	add  b                                           ; $71f0: $80
	xor  a                                           ; $71f1: $af
	ld   bc, $0f6f                                   ; $71f2: $01 $6f $0f
	add  b                                           ; $71f5: $80
	reti                                             ; $71f6: $d9


	add  b                                           ; $71f7: $80
	rst  ToBoot                                         ; $71f8: $c7
	dec  b                                           ; $71f9: $05
	inc  a                                           ; $71fa: $3c
	cp   h                                           ; $71fb: $bc
	sbc  b                                           ; $71fc: $98
	ld   a, [de]                                     ; $71fd: $1a
	sub  c                                           ; $71fe: $91
	sub  e                                           ; $71ff: $93
	add  d                                           ; $7200: $82
	rst  $38                                         ; $7201: $ff
	add  b                                           ; $7202: $80
	cp   a                                           ; $7203: $bf
	add  b                                           ; $7204: $80
	nop                                              ; $7205: $00
	add  b                                           ; $7206: $80
	rst  $38                                         ; $7207: $ff
	add  d                                           ; $7208: $82
	nop                                              ; $7209: $00
	nop                                              ; $720a: $00
	rst  $38                                         ; $720b: $ff
	add  e                                           ; $720c: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $720d: $cf
	inc  bc                                          ; $720e: $03
	adc  $82                                         ; $720f: $ce $82
	ld   b, b                                        ; $7211: $40
	inc  a                                           ; $7212: $3c
	add  b                                           ; $7213: $80
	rst  $38                                         ; $7214: $ff
	add  b                                           ; $7215: $80
	nop                                              ; $7216: $00
	add  b                                           ; $7217: $80
	ld   bc, $bd05                                   ; $7218: $01 $05 $bd
	or   l                                           ; $721b: $b5
	jp   nc, $f1ca                                   ; $721c: $d2 $ca $f1

	pop  hl                                          ; $721f: $e1
	add  b                                           ; $7220: $80
	ei                                               ; $7221: $fb
	add  b                                           ; $7222: $80
	dec  c                                           ; $7223: $0d
	add  b                                           ; $7224: $80
	ld   sp, $de80                                   ; $7225: $31 $80 $de
	inc  bc                                          ; $7228: $03
	db   $ec                                         ; $7229: $ec
	inc  l                                           ; $722a: $2c
	ld   e, c                                        ; $722b: $59
	sbc  c                                           ; $722c: $99
	add  b                                           ; $722d: $80
	ld   a, [hl]                                     ; $722e: $7e
	adc  b                                           ; $722f: $88
	rst  $38                                         ; $7230: $ff
	inc  bc                                          ; $7231: $03
	ld   b, a                                        ; $7232: $47
	ld   b, [hl]                                     ; $7233: $46
	ld   [hl-], a                                    ; $7234: $32
	inc  sp                                          ; $7235: $33
	add  b                                           ; $7236: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7237: $cf
	add  b                                           ; $7238: $80
	ccf                                              ; $7239: $3f
	nop                                              ; $723a: $00
	rst  $38                                         ; $723b: $ff
	add  b                                           ; $723c: $80
	db   $fc                                         ; $723d: $fc
	add  b                                           ; $723e: $80
	ldh  a, [$80]                                    ; $723f: $f0 $80
	db   $e3                                         ; $7241: $e3
	add  b                                           ; $7242: $80
	adc  a                                           ; $7243: $8f
	inc  bc                                          ; $7244: $03
	rra                                              ; $7245: $1f
	dec  de                                          ; $7246: $1b
	db   $e3                                         ; $7247: $e3
	push hl                                          ; $7248: $e5
	add  b                                           ; $7249: $80
	push bc                                          ; $724a: $c5
	inc  bc                                          ; $724b: $03
	dec  e                                           ; $724c: $1d
	ld   e, $3e                                      ; $724d: $1e $3e
	jr   c, jr_09c_71d1                              ; $724f: $38 $80

	cp   $05                                         ; $7251: $fe $05
	rst  $38                                         ; $7253: $ff
	rst  $20                                         ; $7254: $e7
	rst  $38                                         ; $7255: $ff
	sbc  a                                           ; $7256: $9f
	rst  $38                                         ; $7257: $ff
	ccf                                              ; $7258: $3f
	add  h                                           ; $7259: $84
	dec  a                                           ; $725a: $3d
	add  a                                           ; $725b: $87
	dec  sp                                          ; $725c: $3b
	inc  b                                           ; $725d: $04
	ld   [hl], h                                     ; $725e: $74
	rst  $38                                         ; $725f: $ff
	di                                               ; $7260: $f3
	rst  $38                                         ; $7261: $ff
	db   $fc                                         ; $7262: $fc
	add  b                                           ; $7263: $80
	rst  $38                                         ; $7264: $ff
	ld   bc, $fffe                                   ; $7265: $01 $fe $ff
	add  c                                           ; $7268: $81
	db   $fd                                         ; $7269: $fd
	nop                                              ; $726a: $00
	rst  $38                                         ; $726b: $ff
	add  b                                           ; $726c: $80
	ld   hl, sp+$02                                  ; $726d: $f8 $02
	ei                                               ; $726f: $fb
	inc  bc                                          ; $7270: $03
	ei                                               ; $7271: $fb
	add  b                                           ; $7272: $80
	cp   d                                           ; $7273: $ba
	add  b                                           ; $7274: $80
	pop  hl                                          ; $7275: $e1
	add  b                                           ; $7276: $80
	rra                                              ; $7277: $1f
	add  c                                           ; $7278: $81
	rst  $38                                         ; $7279: $ff
	add  b                                           ; $727a: $80
	ret  nz                                          ; $727b: $c0

	add  b                                           ; $727c: $80
	ld   bc, $ff00                                   ; $727d: $01 $00 $ff
	add  b                                           ; $7280: $80
	ld   c, h                                        ; $7281: $4c
	add  b                                           ; $7282: $80
	dec  a                                           ; $7283: $3d
	ld   [bc], a                                     ; $7284: $02
	or   $f4                                         ; $7285: $f6 $f4
	db   $fc                                         ; $7287: $fc
	add  b                                           ; $7288: $80
	ld   hl, sp+$01                                  ; $7289: $f8 $01
	add  b                                           ; $728b: $80
	add  c                                           ; $728c: $81
	add  b                                           ; $728d: $80
	rra                                              ; $728e: $1f
	add  c                                           ; $728f: $81
	rst  $38                                         ; $7290: $ff
	add  hl, bc                                      ; $7291: $09
	ldh  [$e1], a                                    ; $7292: $e0 $e1
	ld   sp, hl                                      ; $7294: $f9
	ld   hl, sp-$04                                  ; $7295: $f8 $fc
	rst  $38                                         ; $7297: $ff
	db   $fd                                         ; $7298: $fd
	rst  $38                                         ; $7299: $ff
	cp   $ff                                         ; $729a: $fe $ff
	add  b                                           ; $729c: $80
	ld   a, a                                        ; $729d: $7f
	add  b                                           ; $729e: $80
	inc  e                                           ; $729f: $1c
	ld   [bc], a                                     ; $72a0: $02
	ld   l, b                                        ; $72a1: $68
	ld   l, d                                        ; $72a2: $6a
	ld   [bc], a                                     ; $72a3: $02
	add  b                                           ; $72a4: $80
	rst  $38                                         ; $72a5: $ff
	add  b                                           ; $72a6: $80
	nop                                              ; $72a7: $00
	add  c                                           ; $72a8: $81
	rst  $38                                         ; $72a9: $ff
	ld   bc, $7f80                                   ; $72aa: $01 $80 $7f
	add  b                                           ; $72ad: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72ae: $cf
	ld   [bc], a                                     ; $72af: $02
	jr   nc, @+$22                                   ; $72b0: $30 $20

	db   $10                                         ; $72b2: $10
	add  b                                           ; $72b3: $80
	nop                                              ; $72b4: $00
	add  b                                           ; $72b5: $80
	cp   $80                                         ; $72b6: $fe $80
	nop                                              ; $72b8: $00
	add  c                                           ; $72b9: $81
	rst  $38                                         ; $72ba: $ff
	ld   bc, $bf40                                   ; $72bb: $01 $40 $bf
	add  b                                           ; $72be: $80
	rst  $38                                         ; $72bf: $ff
	add  d                                           ; $72c0: $82
	nop                                              ; $72c1: $00
	add  b                                           ; $72c2: $80
	inc  bc                                          ; $72c3: $03
	add  b                                           ; $72c4: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72c5: $cf
	dec  b                                           ; $72c6: $05
	rra                                              ; $72c7: $1f
	ccf                                              ; $72c8: $3f
	rra                                              ; $72c9: $1f
	rst  $38                                         ; $72ca: $ff
	rra                                              ; $72cb: $1f
	rst  JumpTable                                         ; $72cc: $df
	add  b                                           ; $72cd: $80
	rst  $38                                         ; $72ce: $ff
	add  b                                           ; $72cf: $80
	inc  e                                           ; $72d0: $1c
	ld   [$2b0b], sp                                 ; $72d1: $08 $0b $2b
	cp   c                                           ; $72d4: $b9
	sbc  b                                           ; $72d5: $98
	rst  JumpTable                                         ; $72d6: $df
	sbc  $b7                                         ; $72d7: $de $b7
	sub  a                                           ; $72d9: $97
	sbc  a                                           ; $72da: $9f
	add  b                                           ; $72db: $80
	adc  a                                           ; $72dc: $8f
	ld   bc, $4080                                   ; $72dd: $01 $80 $40
	add  b                                           ; $72e0: $80
	ld   a, h                                        ; $72e1: $7c
	add  c                                           ; $72e2: $81
	ld   a, a                                        ; $72e3: $7f
	inc  bc                                          ; $72e4: $03
	cp   $7f                                         ; $72e5: $fe $7f
	cp   l                                           ; $72e7: $bd
	ccf                                              ; $72e8: $3f
	add  b                                           ; $72e9: $80
	jp   $ff01                                       ; $72ea: $c3 $01 $ff


	db   $fc                                         ; $72ed: $fc
	add  c                                           ; $72ee: $81
	rst  $38                                         ; $72ef: $ff
	add  b                                           ; $72f0: $80
	ld   bc, $c080                                   ; $72f1: $01 $80 $c0
	ld   bc, $00ff                                   ; $72f4: $01 $ff $00
	add  h                                           ; $72f7: $84
	rst  $38                                         ; $72f8: $ff
	ld   bc, $ff3f                                   ; $72f9: $01 $3f $ff
	add  c                                           ; $72fc: $81
	rst  JumpTable                                         ; $72fd: $df
	nop                                              ; $72fe: $00
	rst  $38                                         ; $72ff: $ff
	add  b                                           ; $7300: $80
	rrca                                             ; $7301: $0f
	dec  b                                           ; $7302: $05
	rst  $28                                         ; $7303: $ef
	push af                                          ; $7304: $f5
	ei                                               ; $7305: $fb
	db   $fd                                         ; $7306: $fd
	rst  $38                                         ; $7307: $ff
	inc  bc                                          ; $7308: $03
	add  d                                           ; $7309: $82
	rst  $38                                         ; $730a: $ff
	add  b                                           ; $730b: $80
	nop                                              ; $730c: $00
	rrca                                             ; $730d: $0f
	jp   z, $f40a                                    ; $730e: $ca $0a $f4

	call nc, Call_09c_6afa                           ; $7311: $d4 $fa $6a
	ld   [hl], c                                     ; $7314: $71
	ld   a, c                                        ; $7315: $79
	ld   a, b                                        ; $7316: $78
	ld   a, h                                        ; $7317: $7c
	ld   a, a                                        ; $7318: $7f
	ld   a, l                                        ; $7319: $7d
	ld   a, a                                        ; $731a: $7f
	ld   a, [hl]                                     ; $731b: $7e
	ld   a, a                                        ; $731c: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $731d: $cf
	add  c                                           ; $731e: $81
	rst  $38                                         ; $731f: $ff
	ld   b, $f7                                      ; $7320: $06 $f7
	rst  $28                                         ; $7322: $ef
	ld   h, b                                        ; $7323: $60
	ld   c, e                                        ; $7324: $4b
	inc  sp                                          ; $7325: $33
	jr   nc, jr_09c_7328                             ; $7326: $30 $00

jr_09c_7328:
	add  b                                           ; $7328: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7329: $cf
	ld   bc, $00ff                                   ; $732a: $01 $ff $00
	add  l                                           ; $732d: $85
	rst  $38                                         ; $732e: $ff
	nop                                              ; $732f: $00
	nop                                              ; $7330: $00
	add  b                                           ; $7331: $80
	rst  $38                                         ; $7332: $ff
	add  b                                           ; $7333: $80
	nop                                              ; $7334: $00
	add  c                                           ; $7335: $81
	rst  $38                                         ; $7336: $ff
	nop                                              ; $7337: $00
	nop                                              ; $7338: $00
	add  l                                           ; $7339: $85
	rst  $38                                         ; $733a: $ff
	ld   [$c707], sp                                 ; $733b: $08 $07 $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $733e: $cf
	rrca                                             ; $733f: $0f
	rra                                              ; $7340: $1f
	rst  $38                                         ; $7341: $ff
	rst  JumpTable                                         ; $7342: $df
	rst  $38                                         ; $7343: $ff
	ccf                                              ; $7344: $3f
	add  e                                           ; $7345: $83
	rst  $38                                         ; $7346: $ff
	add  b                                           ; $7347: $80
	ei                                               ; $7348: $fb
	inc  b                                           ; $7349: $04
	cpl                                              ; $734a: $2f
	ld   l, a                                        ; $734b: $6f
	ld   e, a                                        ; $734c: $5f
	ld   a, a                                        ; $734d: $7f
	ld   h, b                                        ; $734e: $60
	add  d                                           ; $734f: $82
	ld   a, a                                        ; $7350: $7f
	add  hl, bc                                      ; $7351: $09
	nop                                              ; $7352: $00
	add  b                                           ; $7353: $80
	xor  c                                           ; $7354: $a9
	xor  b                                           ; $7355: $a8
	sub  a                                           ; $7356: $97
	sub  l                                           ; $7357: $95
	xor  a                                           ; $7358: $af
	call c, $8cfc                                    ; $7359: $dc $fc $8c
	add  b                                           ; $735c: $80
	db   $fc                                         ; $735d: $fc
	ld   bc, $7efe                                   ; $735e: $01 $fe $7e
	add  b                                           ; $7361: $80
	cp   $80                                         ; $7362: $fe $80
	ldh  a, [$80]                                    ; $7364: $f0 $80
	ld   [$da80], a                                  ; $7366: $ea $80 $da
	rlca                                             ; $7369: $07
	ld   [$ffcf], sp                                 ; $736a: $08 $cf $ff
	ei                                               ; $736d: $fb
	rst  $38                                         ; $736e: $ff
	db   $dd                                         ; $736f: $dd
	rst  $38                                         ; $7370: $ff
	cp   $81                                         ; $7371: $fe $81
	rst  $38                                         ; $7373: $ff
	nop                                              ; $7374: $00
	rst  $28                                         ; $7375: $ef
	add  d                                           ; $7376: $82
	rst  $38                                         ; $7377: $ff
	ld   bc, $f2fd                                   ; $7378: $01 $fd $f2
	add  l                                           ; $737b: $85
	rst  $38                                         ; $737c: $ff
	add  hl, bc                                      ; $737d: $09
	ld   a, a                                        ; $737e: $7f
	rst  $38                                         ; $737f: $ff
	cp   a                                           ; $7380: $bf
	rst  $38                                         ; $7381: $ff
	rst  JumpTable                                         ; $7382: $df
	rst  $38                                         ; $7383: $ff
	rst  $20                                         ; $7384: $e7
	rst  $38                                         ; $7385: $ff
	rlca                                             ; $7386: $07
	rst  $38                                         ; $7387: $ff
	add  h                                           ; $7388: $84
	cp   $86                                         ; $7389: $fe $86
	rst  $38                                         ; $738b: $ff
	add  b                                           ; $738c: $80
	rra                                              ; $738d: $1f
	add  h                                           ; $738e: $84
	xor  a                                           ; $738f: $af
	add  b                                           ; $7390: $80
	rra                                              ; $7391: $1f
	add  d                                           ; $7392: $82
	rst  $38                                         ; $7393: $ff
	add  b                                           ; $7394: $80
	rst  JumpTable                                         ; $7395: $df
	ld   [bc], a                                     ; $7396: $02
	add  a                                           ; $7397: $87
	sbc  a                                           ; $7398: $9f
	sbc  b                                           ; $7399: $98
	add  b                                           ; $739a: $80
	sbc  a                                           ; $739b: $9f
	add  d                                           ; $739c: $82
	cp   a                                           ; $739d: $bf
	add  b                                           ; $739e: $80
	add  a                                           ; $739f: $87
	add  b                                           ; $73a0: $80
	xor  e                                           ; $73a1: $ab
	add  b                                           ; $73a2: $80
	xor  l                                           ; $73a3: $ad
	ld   [bc], a                                     ; $73a4: $02
	adc  b                                           ; $73a5: $88
	ld   h, a                                        ; $73a6: $67
	ld   l, e                                        ; $73a7: $6b
	add  l                                           ; $73a8: $85
	ei                                               ; $73a9: $fb
	add  b                                           ; $73aa: $80
	di                                               ; $73ab: $f3
	nop                                              ; $73ac: $00
	rst  $30                                         ; $73ad: $f7
	add  b                                           ; $73ae: $80
	or   a                                           ; $73af: $b7
	add  b                                           ; $73b0: $80
	rst  $30                                         ; $73b1: $f7
	nop                                              ; $73b2: $00
	adc  b                                           ; $73b3: $88
	add  b                                           ; $73b4: $80
	jp   nc, $d680                                   ; $73b5: $d2 $80 $d6

	ld   bc, $4ece                                   ; $73b8: $01 $ce $4e
	add  b                                           ; $73bb: $80
	ret  c                                           ; $73bc: $d8

	add  b                                           ; $73bd: $80
	db   $db                                         ; $73be: $db
	add  b                                           ; $73bf: $80
	ld   [$e680], a                                  ; $73c0: $ea $80 $e6
	inc  bc                                          ; $73c3: $03
	db   $e4                                         ; $73c4: $e4
	inc  d                                           ; $73c5: $14
	rst  $38                                         ; $73c6: $ff
	rst  $30                                         ; $73c7: $f7
	add  c                                           ; $73c8: $81
	rst  $38                                         ; $73c9: $ff
	dec  b                                           ; $73ca: $05
	rlca                                             ; $73cb: $07
	inc  bc                                          ; $73cc: $03
	rlca                                             ; $73cd: $07
	db   $f4                                         ; $73ce: $f4
	rst  $30                                         ; $73cf: $f7
	inc  bc                                          ; $73d0: $03
	add  b                                           ; $73d1: $80
	di                                               ; $73d2: $f3
	ld   [bc], a                                     ; $73d3: $02
	ld   bc, $0603                                   ; $73d4: $01 $03 $06
	add  [hl]                                        ; $73d7: $86
	rst  $38                                         ; $73d8: $ff
	add  b                                           ; $73d9: $80
	cp   $80                                         ; $73da: $fe $80
	ld   a, l                                        ; $73dc: $7d
	dec  b                                           ; $73dd: $05
	inc  bc                                          ; $73de: $03
	ld   [bc], a                                     ; $73df: $02
	ld   [hl], a                                     ; $73e0: $77
	ld   c, c                                        ; $73e1: $49
	rst  $38                                         ; $73e2: $ff
	cp   a                                           ; $73e3: $bf
	add  c                                           ; $73e4: $81
	rst  $38                                         ; $73e5: $ff
	ld   bc, $ff7f                                   ; $73e6: $01 $7f $ff
	add  b                                           ; $73e9: $80
	ccf                                              ; $73ea: $3f
	ld   b, $df                                      ; $73eb: $06 $df
	rra                                              ; $73ed: $1f
	ldh  [$c0], a                                    ; $73ee: $e0 $c0
	ld   d, b                                        ; $73f0: $50
	rst  ToBoot                                         ; $73f1: $c7
	adc  b                                           ; $73f2: $88
	add  e                                           ; $73f3: $83
	rst  $38                                         ; $73f4: $ff
	add  b                                           ; $73f5: $80
	ldh  [$08], a                                    ; $73f6: $e0 $08
	sub  b                                           ; $73f8: $90
	add  a                                           ; $73f9: $87
	ld   h, a                                        ; $73fa: $67
	nop                                              ; $73fb: $00
	rlca                                             ; $73fc: $07
	ld   h, a                                        ; $73fd: $67
	ld   b, b                                        ; $73fe: $40
	ld   h, b                                        ; $73ff: $60
	or   b                                           ; $7400: $b0
	add  b                                           ; $7401: $80
	and  l                                           ; $7402: $a5
	add  b                                           ; $7403: $80
	or   l                                           ; $7404: $b5
	ld   bc, $39b9                                   ; $7405: $01 $b9 $39
	add  b                                           ; $7408: $80
	dec  c                                           ; $7409: $0d
	add  b                                           ; $740a: $80
	db   $ed                                         ; $740b: $ed
	ld   b, $2b                                      ; $740c: $06 $2b
	xor  e                                           ; $740e: $ab
	or   e                                           ; $740f: $b3
	inc  sp                                          ; $7410: $33
	inc  de                                          ; $7411: $13
	add  sp, -$15                                    ; $7412: $e8 $eb
	add  d                                           ; $7414: $82
	rst  $28                                         ; $7415: $ef
	nop                                              ; $7416: $00
	ld   l, a                                        ; $7417: $6f
	add  b                                           ; $7418: $80
	rst  $28                                         ; $7419: $ef
	add  b                                           ; $741a: $80
	rst  $20                                         ; $741b: $e7
	nop                                              ; $741c: $00
	rst  $30                                         ; $741d: $f7
	add  b                                           ; $741e: $80
	or   $02                                         ; $741f: $f6 $02
	rst  $20                                         ; $7421: $e7
	rst  $30                                         ; $7422: $f7
	ld   h, [hl]                                     ; $7423: $66
	add  d                                           ; $7424: $82
	rst  $20                                         ; $7425: $e7
	add  c                                           ; $7426: $81
	rst  $28                                         ; $7427: $ef
	add  b                                           ; $7428: $80
	ld   l, a                                        ; $7429: $6f
	dec  bc                                          ; $742a: $0b
	db   $ed                                         ; $742b: $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $742c: $cf
	scf                                              ; $742d: $37
	rlca                                             ; $742e: $07
	inc  bc                                          ; $742f: $03
	ld   hl, sp-$07                                  ; $7430: $f8 $f9
	push hl                                          ; $7432: $e5
	db   $e4                                         ; $7433: $e4
	db   $ec                                         ; $7434: $ec
	rst  $28                                         ; $7435: $ef
	db   $eb                                         ; $7436: $eb
	add  b                                           ; $7437: $80
	add  sp, -$80                                    ; $7438: $e8 $80
	db   $eb                                         ; $743a: $eb
	inc  bc                                          ; $743b: $03
	add  sp, -$28                                    ; $743c: $e8 $d8
	rst  JumpTable                                         ; $743e: $df
	rst  $10                                         ; $743f: $d7

jr_09c_7440:
	add  b                                           ; $7440: $80
	ret  nc                                          ; $7441: $d0

	inc  bc                                          ; $7442: $03
	add  hl, sp                                      ; $7443: $39
	rst  $20                                         ; $7444: $e7
	ld   b, $07                                      ; $7445: $06 $07
	add  b                                           ; $7447: $80
	rst  $20                                         ; $7448: $e7
	add  b                                           ; $7449: $80
	rlca                                             ; $744a: $07
	inc  bc                                          ; $744b: $03
	rst  $20                                         ; $744c: $e7
	and  $1e                                         ; $744d: $e6 $1e
	ld   c, $80                                      ; $744f: $0e $80
	adc  $80                                         ; $7451: $ce $80
	ld   c, $02                                      ; $7453: $0e $02
	dec  e                                           ; $7455: $1d
	ld   [hl], a                                     ; $7456: $77
	ld   a, e                                        ; $7457: $7b
	add  c                                           ; $7458: $81
	ld   l, a                                        ; $7459: $6f
	nop                                              ; $745a: $00
	ld   a, a                                        ; $745b: $7f
	add  b                                           ; $745c: $80
	ld   e, a                                        ; $745d: $5f
	add  b                                           ; $745e: $80
	rra                                              ; $745f: $1f
	rlca                                             ; $7460: $07
	rst  JumpTable                                         ; $7461: $df
	ret  nz                                          ; $7462: $c0

	nop                                              ; $7463: $00
	ccf                                              ; $7464: $3f
	cp   a                                           ; $7465: $bf
	ld   h, b                                        ; $7466: $60
	rst  $10                                         ; $7467: $d7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7468: $cf
	add  c                                           ; $7469: $81
	db   $db                                         ; $746a: $db
	nop                                              ; $746b: $00
	rst  JumpTable                                         ; $746c: $df
	add  b                                           ; $746d: $80
	call $cc80                                       ; $746e: $cd $80 $cc
	ld   [$31cd], sp                                 ; $7471: $08 $cd $31
	nop                                              ; $7474: $00
	cp   $06                                         ; $7475: $fe $06
	or   e                                           ; $7477: $b3
	ld   [hl], e                                     ; $7478: $73
	jr   nc, jr_09c_74eb                             ; $7479: $30 $70

	add  b                                           ; $747b: $80
	ld   [hl], e                                     ; $747c: $73
	add  b                                           ; $747d: $80
	ld   [hl], b                                     ; $747e: $70
	dec  c                                           ; $747f: $0d
	ld   [hl], e                                     ; $7480: $73
	inc  sp                                          ; $7481: $33
	inc  a                                           ; $7482: $3c
	cp   b                                           ; $7483: $b8
	cp   c                                           ; $7484: $b9
	add  hl, sp                                      ; $7485: $39
	jr   c, jr_09c_7440                              ; $7486: $38 $b8

	ld   a, h                                        ; $7488: $7c
	db   $d3                                         ; $7489: $d3
	inc  de                                          ; $748a: $13
	dec  de                                          ; $748b: $1b
	ei                                               ; $748c: $fb
	db   $eb                                         ; $748d: $eb
	add  b                                           ; $748e: $80
	dec  bc                                          ; $748f: $0b
	add  b                                           ; $7490: $80
	db   $eb                                         ; $7491: $eb
	inc  bc                                          ; $7492: $03
	dec  bc                                          ; $7493: $0b
	dec  c                                           ; $7494: $0d
	db   $fd                                         ; $7495: $fd
	push af                                          ; $7496: $f5
	add  b                                           ; $7497: $80
	dec  b                                           ; $7498: $05
	nop                                              ; $7499: $00
	ld   a, [hl+]                                    ; $749a: $2a
	add  d                                           ; $749b: $82
	di                                               ; $749c: $f3
	ld   bc, $e3fb                                   ; $749d: $01 $fb $e3
	add  c                                           ; $74a0: $81
	ei                                               ; $74a1: $fb
	inc  b                                           ; $74a2: $04
	db   $db                                         ; $74a3: $db
	ld   sp, hl                                      ; $74a4: $f9
	cp   $f0                                         ; $74a5: $fe $f0
	ldh  [$80], a                                    ; $74a7: $e0 $80
	adc  a                                           ; $74a9: $8f
	add  b                                           ; $74aa: $80
	rrca                                             ; $74ab: $0f
	ld   bc, $f0d0                                   ; $74ac: $01 $d0 $f0
	add  b                                           ; $74af: $80
	ld   l, $09                                      ; $74b0: $2e $09
	jr   nc, jr_09c_7505                             ; $74b2: $30 $51

	ld   e, l                                        ; $74b4: $5d
	ld   e, a                                        ; $74b5: $5f
	ld   h, d                                        ; $74b6: $62
	and  $f5                                         ; $74b7: $e6 $f5
	db   $fd                                         ; $74b9: $fd
	db   $ed                                         ; $74ba: $ed
	ld   [hl+], a                                    ; $74bb: $22
	add  b                                           ; $74bc: $80
	cp   $80                                         ; $74bd: $fe $80
	nop                                              ; $74bf: $00
	add  b                                           ; $74c0: $80
	rst  $38                                         ; $74c1: $ff
	ld   bc, $ff3f                                   ; $74c2: $01 $3f $ff
	add  b                                           ; $74c5: $80
	ld   e, a                                        ; $74c6: $5f
	ld   bc, $ffdf                                   ; $74c7: $01 $df $ff
	add  c                                           ; $74ca: $81
	rst  $28                                         ; $74cb: $ef
	nop                                              ; $74cc: $00
	rrca                                             ; $74cd: $0f
	add  b                                           ; $74ce: $80
	cp   a                                           ; $74cf: $bf
	add  b                                           ; $74d0: $80
	add  b                                           ; $74d1: $80
	add  b                                           ; $74d2: $80
	rst  $38                                         ; $74d3: $ff
	ld   bc, $fffe                                   ; $74d4: $01 $fe $ff
	add  c                                           ; $74d7: $81
	db   $fd                                         ; $74d8: $fd
	nop                                              ; $74d9: $00
	rst  $38                                         ; $74da: $ff
	add  c                                           ; $74db: $81
	ei                                               ; $74dc: $fb
	add  c                                           ; $74dd: $81
	ld   hl, sp-$80                                  ; $74de: $f8 $80
	dec  b                                           ; $74e0: $05
	add  b                                           ; $74e1: $80
	cp   d                                           ; $74e2: $ba
	dec  bc                                          ; $74e3: $0b
	ld   b, $c6                                      ; $74e4: $06 $c6
	ld   e, l                                        ; $74e6: $5d
	ld   a, l                                        ; $74e7: $7d
	and  e                                           ; $74e8: $a3
	or   e                                           ; $74e9: $b3
	rst  $10                                         ; $74ea: $d7

jr_09c_74eb:
	rst  JumpTable                                         ; $74eb: $df
	db   $db                                         ; $74ec: $db
	ld   l, h                                        ; $74ed: $6c
	ld   l, e                                        ; $74ee: $6b
	cp   e                                           ; $74ef: $bb
	add  b                                           ; $74f0: $80
	sbc  e                                           ; $74f1: $9b
	dec  c                                           ; $74f2: $0d
	db   $d3                                         ; $74f3: $d3
	ld   b, e                                        ; $74f4: $43
	inc  bc                                          ; $74f5: $03
	ld   a, l                                        ; $74f6: $7d
	ld   h, c                                        ; $74f7: $61
	ld   c, $06                                      ; $74f8: $0e $06
	ld   e, e                                        ; $74fa: $5b
	ld   b, e                                        ; $74fb: $43
	ret  nz                                          ; $74fc: $c0

	call c, $effc                                    ; $74fd: $dc $fc $ef
	rst  $38                                         ; $7500: $ff
	add  l                                           ; $7501: $85
	rst  $30                                         ; $7502: $f7
	inc  bc                                          ; $7503: $03
	rlca                                             ; $7504: $07

jr_09c_7505:
	nop                                              ; $7505: $00
	ld   hl, sp-$05                                  ; $7506: $f8 $fb
	add  b                                           ; $7508: $80
	inc  bc                                          ; $7509: $03
	ld   [bc], a                                     ; $750a: $02
	nop                                              ; $750b: $00
	ei                                               ; $750c: $fb
	rst  $38                                         ; $750d: $ff
	add  b                                           ; $750e: $80
	rst  $30                                         ; $750f: $f7
	add  e                                           ; $7510: $83
	ld   [hl], a                                     ; $7511: $77
	ld   [$0070], sp                                 ; $7512: $08 $70 $00
	adc  a                                           ; $7515: $8f
	rst  $28                                         ; $7516: $ef
	ld   h, b                                        ; $7517: $60
	ldh  [rAUD2LOW], a                               ; $7518: $e0 $18
	db   $eb                                         ; $751a: $eb
	rst  $28                                         ; $751b: $ef
	add  b                                           ; $751c: $80
	db   $ec                                         ; $751d: $ec
	dec  bc                                          ; $751e: $0b
	push hl                                          ; $751f: $e5
	pop  hl                                          ; $7520: $e1
	ldh  [$df], a                                    ; $7521: $e0 $df
	jp   $3038                                       ; $7523: $c3 $38 $30


	db   $ed                                         ; $7526: $ed
	pop  hl                                          ; $7527: $e1
	ld   bc, $e31d                                   ; $7528: $01 $1d $e3
	rst  $38                                         ; $752b: $ff
	nop                                              ; $752c: $00
	rst  $38                                         ; $752d: $ff
	nop                                              ; $752e: $00
	rst  $38                                         ; $752f: $ff
	nop                                              ; $7530: $00
	rst  $38                                         ; $7531: $ff
	nop                                              ; $7532: $00
	rst  $38                                         ; $7533: $ff
	nop                                              ; $7534: $00
	rst  $38                                         ; $7535: $ff
	nop                                              ; $7536: $00
	rst  $38                                         ; $7537: $ff
	nop                                              ; $7538: $00
	or   $00                                         ; $7539: $f6 $00
	inc  d                                           ; $753b: $14
	ld   bc, $0f00                                   ; $753c: $01 $00 $0f
	add  b                                           ; $753f: $80
	ld   b, $01                                      ; $7540: $06 $01

jr_09c_7542:
	rrca                                             ; $7542: $0f
	ld   c, $80                                      ; $7543: $0e $80
	rrca                                             ; $7545: $0f
	ld   bc, $0c0d                                   ; $7546: $01 $0d $0c
	add  b                                           ; $7549: $80
	ld   c, $83                                      ; $754a: $0e $83
	rrca                                             ; $754c: $0f
	ld   b, $9c                                      ; $754d: $06 $9c
	rst  $38                                         ; $754f: $ff
	inc  de                                          ; $7550: $13
	rst  $38                                         ; $7551: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7552: $cf
	rst  $38                                         ; $7553: $ff
	cp   a                                           ; $7554: $bf
	add  c                                           ; $7555: $81
	rst  $38                                         ; $7556: $ff
	ld   [$7f1f], sp                                 ; $7557: $08 $1f $7f
	ld   h, e                                        ; $755a: $63
	rst  ToBoot                                         ; $755b: $c7
	call nz, Call_09c_79f9                           ; $755c: $c4 $f9 $79
	cp   a                                           ; $755f: $bf
	rst  $38                                         ; $7560: $ff
	add  b                                           ; $7561: $80
	rst  JumpTable                                         ; $7562: $df
	inc  bc                                          ; $7563: $03
	rst  $28                                         ; $7564: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7565: $cf
	rst  $38                                         ; $7566: $ff
	rst  $28                                         ; $7567: $ef
	add  l                                           ; $7568: $85
	rst  $38                                         ; $7569: $ff
	nop                                              ; $756a: $00
	rrca                                             ; $756b: $0f
	add  b                                           ; $756c: $80
	cp   $82                                         ; $756d: $fe $82
	rst  $38                                         ; $756f: $ff
	add  b                                           ; $7570: $80
	ld   a, [hl]                                     ; $7571: $7e
	ld   bc, $bfbe                                   ; $7572: $01 $be $bf
	add  b                                           ; $7575: $80
	db   $dd                                         ; $7576: $dd
	dec  b                                           ; $7577: $05
	db   $eb                                         ; $7578: $eb
	add  sp, -$79                                    ; $7579: $e8 $87
	add  l                                           ; $757b: $85
	sbc  b                                           ; $757c: $98
	ret  c                                           ; $757d: $d8

	add  b                                           ; $757e: $80
	ld   e, h                                        ; $757f: $5c
	add  b                                           ; $7580: $80
	ld   l, [hl]                                     ; $7581: $6e
	ld   bc, $4eee                                   ; $7582: $01 $ee $4e
	add  b                                           ; $7585: $80
	rst  $28                                         ; $7586: $ef
	ld   h, $f7                                      ; $7587: $26 $f7
	rst  $20                                         ; $7589: $e7
	rst  $30                                         ; $758a: $f7
	ccf                                              ; $758b: $3f
	ei                                               ; $758c: $fb
	add  [hl]                                        ; $758d: $86
	rst  ToBoot                                         ; $758e: $c7
	ld   [$d48f], sp                                 ; $758f: $08 $8f $d4
	rst  JumpTable                                         ; $7592: $df
	db   $ec                                         ; $7593: $ec
	cp   $68                                         ; $7594: $fe $68
	db   $fc                                         ; $7596: $fc
	and  [hl]                                        ; $7597: $a6
	cp   $df                                         ; $7598: $fe $df
	rst  $38                                         ; $759a: $ff
	rst  $30                                         ; $759b: $f7
	rst  $38                                         ; $759c: $ff
	ret  c                                           ; $759d: $d8

	pop  hl                                          ; $759e: $e1
	ld   c, l                                        ; $759f: $4d
	adc  a                                           ; $75a0: $8f
	ld   b, $07                                      ; $75a1: $06 $07
	inc  de                                          ; $75a3: $13
	rra                                              ; $75a4: $1f
	dec  hl                                          ; $75a5: $2b
	dec  a                                           ; $75a6: $3d
	add  hl, bc                                      ; $75a7: $09
	ld   [hl], c                                     ; $75a8: $71
	ld   h, b                                        ; $75a9: $60
	ret  nz                                          ; $75aa: $c0

	add  d                                           ; $75ab: $82
	jp   $ff7f                                       ; $75ac: $c3 $7f $ff


	add  b                                           ; $75af: $80
	add  e                                           ; $75b0: $83
	inc  c                                           ; $75b1: $0c
	ld   hl, $c1e1                                   ; $75b2: $21 $e1 $c1
	ld   hl, $2120                                   ; $75b5: $21 $20 $21
	and  [hl]                                        ; $75b8: $a6
	and  $4f                                         ; $75b9: $e6 $4f
	rst  $28                                         ; $75bb: $ef
	cp   a                                           ; $75bc: $bf
	rst  $38                                         ; $75bd: $ff
	add  b                                           ; $75be: $80
	add  b                                           ; $75bf: $80
	jr   nc, jr_09c_7542                             ; $75c0: $30 $80

	inc  c                                           ; $75c2: $0c
	add  b                                           ; $75c3: $80
	inc  bc                                          ; $75c4: $03
	add  b                                           ; $75c5: $80
	nop                                              ; $75c6: $00
	inc  bc                                          ; $75c7: $03
	add  $46                                         ; $75c8: $c6 $46
	add  sp, -$58                                    ; $75ca: $e8 $a8
	add  b                                           ; $75cc: $80
	rst  $20                                         ; $75cd: $e7
	ld   bc, $d0e0                                   ; $75ce: $01 $e0 $d0
	add  b                                           ; $75d1: $80
	rst  $38                                         ; $75d2: $ff
	rra                                              ; $75d3: $1f
	ei                                               ; $75d4: $fb
	rst  $20                                         ; $75d5: $e7
	pop  af                                          ; $75d6: $f1
	ld   bc, $23e1                                   ; $75d7: $01 $e1 $23
	ldh  [hScriptOpcodeParams], a                                    ; $75da: $e0 $a0
	ldh  [hScriptOpcodeParams+1], a                                    ; $75dc: $e0 $a1
	ldh  [hScriptOpcodeParams], a                                    ; $75de: $e0 $a0
	ldh  [rTAC], a                                   ; $75e0: $e0 $07
	call c, $ee9c                                    ; $75e2: $dc $9c $ee
	ld   [$f5d7], a                                  ; $75e5: $ea $d7 $f5
	ld   l, a                                        ; $75e8: $6f
	ld   a, [hl]                                     ; $75e9: $7e
	ld   [hl], a                                     ; $75ea: $77
	ld   a, a                                        ; $75eb: $7f
	cp   e                                           ; $75ec: $bb
	dec  a                                           ; $75ed: $3d
	rst  JumpTable                                         ; $75ee: $df
	sbc  [hl]                                        ; $75ef: $9e
	rst  $20                                         ; $75f0: $e7
	jr   nz, @+$01                                   ; $75f1: $20 $ff

	ld   hl, sp-$7e                                  ; $75f3: $f8 $82
	ld   a, a                                        ; $75f5: $7f
	add  b                                           ; $75f6: $80
	cp   a                                           ; $75f7: $bf
	inc  bc                                          ; $75f8: $03
	rst  JumpTable                                         ; $75f9: $df
	ld   e, a                                        ; $75fa: $5f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75fb: $cf
	ld   c, a                                        ; $75fc: $4f
	add  b                                           ; $75fd: $80
	db   $e3                                         ; $75fe: $e3
	ld   bc, $0ef0                                   ; $75ff: $01 $f0 $0e
	add  c                                           ; $7602: $81
	rst  $38                                         ; $7603: $ff
	inc  bc                                          ; $7604: $03
	ld   de, $e2fe                                   ; $7605: $11 $fe $e2
	db   $e4                                         ; $7608: $e4
	add  c                                           ; $7609: $81
	add  sp, -$80                                    ; $760a: $e8 $80
	ldh  [$80], a                                    ; $760c: $e0 $80
	ldh  a, [rSB]                                    ; $760e: $f0 $01
	ld   a, a                                        ; $7610: $7f
	add  b                                           ; $7611: $80
	add  c                                           ; $7612: $81
	nop                                              ; $7613: $00
	dec  b                                           ; $7614: $05
	adc  [hl]                                        ; $7615: $8e
	adc  h                                           ; $7616: $8c
	sub  c                                           ; $7617: $91
	ld   e, l                                        ; $7618: $5d
	add  hl, de                                      ; $7619: $19
	ld   e, c                                        ; $761a: $59
	add  b                                           ; $761b: $80
	ld   d, c                                        ; $761c: $51
	inc  b                                           ; $761d: $04
	ld   b, b                                        ; $761e: $40
	or   c                                           ; $761f: $b1
	or   e                                           ; $7620: $b3
	cp   a                                           ; $7621: $bf
	ld   [hl], e                                     ; $7622: $73
	add  d                                           ; $7623: $82
	ld   a, a                                        ; $7624: $7f
	add  l                                           ; $7625: $85
	rst  $38                                         ; $7626: $ff
	ld   a, [bc]                                     ; $7627: $0a
	cp   $ff                                         ; $7628: $fe $ff
	db   $fd                                         ; $762a: $fd
	cp   $ee                                         ; $762b: $fe $ee
	add  c                                           ; $762d: $81
	xor  c                                           ; $762e: $a9
	and  c                                           ; $762f: $a1
	xor  l                                           ; $7630: $ad
	pop  bc                                          ; $7631: $c1
	sub  l                                           ; $7632: $95
	add  b                                           ; $7633: $80
	pop  bc                                          ; $7634: $c1
	rlca                                             ; $7635: $07
	add  c                                           ; $7636: $81
	ld   sp, $4101                                   ; $7637: $31 $01 $41
	ld   bc, $0131                                   ; $763a: $01 $31 $01
	xor  l                                           ; $763d: $ad
	adc  l                                           ; $763e: $8d
	rrca                                             ; $763f: $0f
	nop                                              ; $7640: $00
	rst  $38                                         ; $7641: $ff
	add  b                                           ; $7642: $80
	cp   $80                                         ; $7643: $fe $80
	db   $fd                                         ; $7645: $fd
	add  b                                           ; $7646: $80
	ei                                               ; $7647: $fb
	add  b                                           ; $7648: $80
	rst  $20                                         ; $7649: $e7
	add  b                                           ; $764a: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $764b: $cf
	add  b                                           ; $764c: $80
	adc  a                                           ; $764d: $8f
	add  b                                           ; $764e: $80
	cp   a                                           ; $764f: $bf
	inc  bc                                          ; $7650: $03
	rst  $38                                         ; $7651: $ff
	sbc  a                                           ; $7652: $9f
	ld   a, a                                        ; $7653: $7f
	rra                                              ; $7654: $1f
	add  b                                           ; $7655: $80
	adc  b                                           ; $7656: $88
	add  b                                           ; $7657: $80
	pop  bc                                          ; $7658: $c1
	add  b                                           ; $7659: $80
	db   $fd                                         ; $765a: $fd
	add  b                                           ; $765b: $80
	rst  $38                                         ; $765c: $ff
	add  d                                           ; $765d: $82
	ei                                               ; $765e: $fb
	dec  b                                           ; $765f: $05
	rst  $30                                         ; $7660: $f7
	di                                               ; $7661: $f3
	ccf                                              ; $7662: $3f
	inc  sp                                          ; $7663: $33
	rst  $38                                         ; $7664: $ff
	rst  $20                                         ; $7665: $e7
	add  b                                           ; $7666: $80
	rst  JumpTable                                         ; $7667: $df
	ld   bc, $cfff                                   ; $7668: $01 $ff $cf
	add  b                                           ; $766b: $80
	cp   a                                           ; $766c: $bf
	ld   de, $9dbe                                   ; $766d: $11 $be $9d
	cp   a                                           ; $7670: $bf
	and  e                                           ; $7671: $a3
	rst  $38                                         ; $7672: $ff
	ld   hl, sp-$01                                  ; $7673: $f8 $ff
	db   $e4                                         ; $7675: $e4
	rst  $38                                         ; $7676: $ff
	ld   a, [$e5ef]                                  ; $7677: $fa $ef $e5
	sbc  $ce                                         ; $767a: $de $ce
	inc  a                                           ; $767c: $3c
	ld   e, b                                        ; $767d: $58
	db   $fd                                         ; $767e: $fd
	ld   a, l                                        ; $767f: $7d
	add  b                                           ; $7680: $80
	db   $fd                                         ; $7681: $fd
	ld   [de], a                                     ; $7682: $12
	rst  $38                                         ; $7683: $ff
	rlca                                             ; $7684: $07
	sbc  b                                           ; $7685: $98
	add  b                                           ; $7686: $80
	cp   [hl]                                        ; $7687: $be
	jp   c, $1d7f                                    ; $7688: $da $7f $1d

	rra                                              ; $768b: $1f
	ld   b, $8f                                      ; $768c: $06 $8f
	adc  e                                           ; $768e: $8b
	or   a                                           ; $768f: $b7
	or   l                                           ; $7690: $b5
	cp   e                                           ; $7691: $bb
	cp   d                                           ; $7692: $ba
	ld   a, c                                        ; $7693: $79
	inc  b                                           ; $7694: $04
	ld   a, l                                        ; $7695: $7d
	add  b                                           ; $7696: $80
	ld   a, c                                        ; $7697: $79
	add  b                                           ; $7698: $80
	dec  a                                           ; $7699: $3d
	ld   b, $1f                                      ; $769a: $06 $1f
	sbc  a                                           ; $769c: $9f
	adc  a                                           ; $769d: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $769e: $cf
	nop                                              ; $769f: $00
	ldh  [$d0], a                                    ; $76a0: $e0 $d0
	add  b                                           ; $76a2: $80
	ldh  a, [c]                                      ; $76a3: $f2
	ld   bc, $f9f6                                   ; $76a4: $01 $f6 $f9
	add  c                                           ; $76a7: $81
	rst  $38                                         ; $76a8: $ff
	add  b                                           ; $76a9: $80
	db   $fc                                         ; $76aa: $fc
	add  b                                           ; $76ab: $80
	ldh  a, [rP1]                                    ; $76ac: $f0 $00
	nop                                              ; $76ae: $00

jr_09c_76af:
	add  b                                           ; $76af: $80
	ld   b, $0d                                      ; $76b0: $06 $0d

jr_09c_76b2:
	rst  $30                                         ; $76b2: $f7
	rst  ToBoot                                         ; $76b3: $c7
	rst  $38                                         ; $76b4: $ff
	or   b                                           ; $76b5: $b0
	rst  $38                                         ; $76b6: $ff
	sbc  a                                           ; $76b7: $9f
	rst  $38                                         ; $76b8: $ff
	adc  a                                           ; $76b9: $8f
	rst  $38                                         ; $76ba: $ff
	ld   h, $ff                                      ; $76bb: $26 $ff
	sbc  c                                           ; $76bd: $99
	cp   $2e                                         ; $76be: $fe $2e
	add  b                                           ; $76c0: $80

jr_09c_76c1:
	ld   hl, sp-$80                                  ; $76c1: $f8 $80
	ret  nc                                          ; $76c3: $d0

	add  b                                           ; $76c4: $80
	ret  z                                           ; $76c5: $c8

	ld   [bc], a                                     ; $76c6: $02
	call nz, $98a3                                   ; $76c7: $c4 $a3 $98
	add  b                                           ; $76ca: $80
	add  h                                           ; $76cb: $84
	add  b                                           ; $76cc: $80
	add  d                                           ; $76cd: $82
	add  b                                           ; $76ce: $80
	add  c                                           ; $76cf: $81
	jr   jr_09c_76b2                                 ; $76d0: $18 $e0

	ld   b, b                                        ; $76d2: $40
	ld   e, b                                        ; $76d3: $58
	jr   nz, jr_09c_76fc                             ; $76d4: $20 $26

	db   $10                                         ; $76d6: $10
	ld   de, $e808                                   ; $76d7: $11 $08 $e8

jr_09c_76da:
	rlca                                             ; $76da: $07
	dec  de                                          ; $76db: $1b
	nop                                              ; $76dc: $00
	inc  bc                                          ; $76dd: $03
	nop                                              ; $76de: $00
	ldh  a, [$80]                                    ; $76df: $f0 $80
	ld   c, $60                                      ; $76e1: $0e $60
	ld   hl, $0038                                   ; $76e3: $21 $38 $00
	ld   b, $80                                      ; $76e6: $06 $80
	ld   bc, $807f                                   ; $76e8: $01 $7f $80
	di                                               ; $76eb: $f3
	ld   [bc], a                                     ; $76ec: $02
	jr   nz, jr_09c_76af                             ; $76ed: $20 $c0

	rra                                              ; $76ef: $1f
	add  d                                           ; $76f0: $82
	nop                                              ; $76f1: $00
	inc  b                                           ; $76f2: $04
	ldh  [rP1], a                                    ; $76f3: $e0 $00
	ld   e, $00                                      ; $76f5: $1e $00
	ld   bc, $8080                                   ; $76f7: $01 $80 $80
	add  e                                           ; $76fa: $83
	rst  $38                                         ; $76fb: $ff

jr_09c_76fc:
	add  [hl]                                        ; $76fc: $86
	nop                                              ; $76fd: $00
	ld   [bc], a                                     ; $76fe: $02
	ldh  [rP1], a                                    ; $76ff: $e0 $00
	rra                                              ; $7701: $1f
	add  b                                           ; $7702: $80
	ldh  [$80], a                                    ; $7703: $e0 $80
	ldh  a, [$80]                                    ; $7705: $f0 $80
	rst  $38                                         ; $7707: $ff
	inc  bc                                          ; $7708: $03
	nop                                              ; $7709: $00
	add  b                                           ; $770a: $80
	nop                                              ; $770b: $00
	ld   b, b                                        ; $770c: $40
	add  c                                           ; $770d: $81
	nop                                              ; $770e: $00
	ld   [bc], a                                     ; $770f: $02
	jr   nz, jr_09c_7712                             ; $7710: $20 $00

jr_09c_7712:
	ldh  [$80], a                                    ; $7712: $e0 $80
	rlca                                             ; $7714: $07
	add  b                                           ; $7715: $80
	dec  de                                          ; $7716: $1b
	add  b                                           ; $7717: $80
	pop  hl                                          ; $7718: $e1
	add  a                                           ; $7719: $87
	ld   bc, $0d02                                   ; $771a: $01 $02 $0d
	ld   bc, $800d                                   ; $771d: $01 $0d $80
	ld   sp, $9f80                                   ; $7720: $31 $80 $9f
	add  b                                           ; $7723: $80
	rst  JumpTable                                         ; $7724: $df
	add  b                                           ; $7725: $80
	rst  $28                                         ; $7726: $ef
	add  b                                           ; $7727: $80
	or   $80                                         ; $7728: $f6 $80
	ld   hl, sp+$01                                  ; $772a: $f8 $01
	db   $fc                                         ; $772c: $fc
	inc  bc                                          ; $772d: $03
	add  [hl]                                        ; $772e: $86
	rst  $38                                         ; $772f: $ff
	nop                                              ; $7730: $00
	nop                                              ; $7731: $00
	add  b                                           ; $7732: $80
	ld   b, b                                        ; $7733: $40
	add  b                                           ; $7734: $80
	jr   nz, jr_09c_7739                             ; $7735: $20 $02

	jr   nc, jr_09c_7749                             ; $7737: $30 $10

jr_09c_7739:
	jr   nz, jr_09c_76c1                             ; $7739: $20 $86

	rst  $38                                         ; $773b: $ff
	add  [hl]                                        ; $773c: $86
	nop                                              ; $773d: $00
	add  [hl]                                        ; $773e: $86
	rst  $38                                         ; $773f: $ff
	add  e                                           ; $7740: $83
	nop                                              ; $7741: $00
	ld   [bc], a                                     ; $7742: $02
	inc  bc                                          ; $7743: $03
	nop                                              ; $7744: $00
	inc  bc                                          ; $7745: $03
	add  l                                           ; $7746: $85
	rst  $38                                         ; $7747: $ff
	inc  c                                           ; $7748: $0c

jr_09c_7749:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7749: $cf
	ccf                                              ; $774a: $3f
	rra                                              ; $774b: $1f

jr_09c_774c:
	rrca                                             ; $774c: $0f
	ld   l, a                                        ; $774d: $6f
	rrca                                             ; $774e: $0f
	adc  a                                           ; $774f: $8f
	rrca                                             ; $7750: $0f
	cp   h                                           ; $7751: $bc
	nop                                              ; $7752: $00
	ld   h, d                                        ; $7753: $62
	nop                                              ; $7754: $00
	jr   nz, jr_09c_76da                             ; $7755: $20 $83

	nop                                              ; $7757: $00
	nop                                              ; $7758: $00
	ld   [bc], a                                     ; $7759: $02
	add  c                                           ; $775a: $81
	nop                                              ; $775b: $00
	ld   [bc], a                                     ; $775c: $02
	inc  b                                           ; $775d: $04
	nop                                              ; $775e: $00
	jp   Jump_09c_4081                               ; $775f: $c3 $81 $40


	nop                                              ; $7762: $00
	ld   l, b                                        ; $7763: $68
	add  h                                           ; $7764: $84
	jr   nz, jr_09c_776d                             ; $7765: $20 $06

	inc  h                                           ; $7767: $24
	inc  b                                           ; $7768: $04
	ld   b, h                                        ; $7769: $44
	ld   d, h                                        ; $776a: $54
	ld   b, h                                        ; $776b: $44
	sbc  [hl]                                        ; $776c: $9e

jr_09c_776d:
	ld   b, $80                                      ; $776d: $06 $80
	ld   [$1080], sp                                 ; $776f: $08 $80 $10
	add  b                                           ; $7772: $80
	ld   hl, $4280                                   ; $7773: $21 $80 $42
	add  b                                           ; $7776: $80
	inc  c                                           ; $7777: $0c
	dec  b                                           ; $7778: $05
	jr   c, jr_09c_77ab                              ; $7779: $38 $30

	ld   c, b                                        ; $777b: $48
	ld   b, b                                        ; $777c: $40
	nop                                              ; $777d: $00
	rrca                                             ; $777e: $0f
	add  b                                           ; $777f: $80
	rra                                              ; $7780: $1f
	add  b                                           ; $7781: $80
	rst  $28                                         ; $7782: $ef
	ld   [bc], a                                     ; $7783: $02
	adc  a                                           ; $7784: $8f
	rrca                                             ; $7785: $0f
	adc  a                                           ; $7786: $8f
	add  l                                           ; $7787: $85
	rrca                                             ; $7788: $0f
	ld   [bc], a                                     ; $7789: $02
	db   $fd                                         ; $778a: $fd
	ld   [de], a                                     ; $778b: $12
	inc  e                                           ; $778c: $1c
	add  d                                           ; $778d: $82
	inc  c                                           ; $778e: $0c
	inc  bc                                          ; $778f: $03
	inc  b                                           ; $7790: $04
	ld   b, $02                                      ; $7791: $06 $02
	inc  bc                                          ; $7793: $03
	add  b                                           ; $7794: $80
	add  c                                           ; $7795: $81
	add  b                                           ; $7796: $80
	ld   sp, hl                                      ; $7797: $f9
	inc  bc                                          ; $7798: $03
	cp   $f1                                         ; $7799: $fe $f1
	stop                                             ; $779b: $10 $00
	add  l                                           ; $779d: $85
	jr   nz, jr_09c_77a0                             ; $779e: $20 $00

jr_09c_77a0:
	nop                                              ; $77a0: $00
	add  d                                           ; $77a1: $82
	ld   b, b                                        ; $77a2: $40
	nop                                              ; $77a3: $00
	ret  nz                                          ; $77a4: $c0

	adc  a                                           ; $77a5: $8f
	nop                                              ; $77a6: $00
	ld   bc, $2f0f                                   ; $77a7: $01 $0f $2f
	add  c                                           ; $77aa: $81

jr_09c_77ab:
	rrca                                             ; $77ab: $0f
	inc  b                                           ; $77ac: $04
	rra                                              ; $77ad: $1f
	rrca                                             ; $77ae: $0f
	ld   c, a                                        ; $77af: $4f
	rrca                                             ; $77b0: $0f
	adc  a                                           ; $77b1: $8f
	add  e                                           ; $77b2: $83
	rrca                                             ; $77b3: $0f
	add  b                                           ; $77b4: $80
	ld   e, [hl]                                     ; $77b5: $5e
	add  b                                           ; $77b6: $80
	ld   l, [hl]                                     ; $77b7: $6e
	add  b                                           ; $77b8: $80
	halt                                             ; $77b9: $76
	add  b                                           ; $77ba: $80
	ld   a, b                                        ; $77bb: $78
	add  b                                           ; $77bc: $80
	ld   a, h                                        ; $77bd: $7c
	add  b                                           ; $77be: $80
	ld   a, [hl]                                     ; $77bf: $7e
	add  b                                           ; $77c0: $80
	ld   a, $06                                      ; $77c1: $3e $06
	sbc  $1e                                         ; $77c3: $de $1e
	cpl                                              ; $77c5: $2f
	db   $10                                         ; $77c6: $10
	jr   @+$0a                                       ; $77c7: $18 $08

	jr   z, jr_09c_774c                              ; $77c9: $28 $81

	ld   [$0c00], sp                                 ; $77cb: $08 $00 $0c
	add  l                                           ; $77ce: $85
	inc  b                                           ; $77cf: $04
	ld   bc, $0038                                   ; $77d0: $01 $38 $00
	add  b                                           ; $77d3: $80
	jr   nz, jr_09c_77d6                             ; $77d4: $20 $00

jr_09c_77d6:
	ld   [hl], b                                     ; $77d6: $70
	add  e                                           ; $77d7: $83
	ld   d, b                                        ; $77d8: $50
	nop                                              ; $77d9: $00
	ld   e, b                                        ; $77da: $58
	add  c                                           ; $77db: $81
	ld   c, b                                        ; $77dc: $48
	inc  b                                           ; $77dd: $04
	ld   c, h                                        ; $77de: $4c
	ld   b, h                                        ; $77df: $44
	ret  z                                           ; $77e0: $c8

	rrca                                             ; $77e1: $0f
	adc  a                                           ; $77e2: $8f
	add  e                                           ; $77e3: $83
	rrca                                             ; $77e4: $0f
	nop                                              ; $77e5: $00
	ld   c, a                                        ; $77e6: $4f
	add  l                                           ; $77e7: $85
	rrca                                             ; $77e8: $0f
	ld   [bc], a                                     ; $77e9: $02
	daa                                              ; $77ea: $27
	ld   [$811c], sp                                 ; $77eb: $08 $1c $81
	inc  b                                           ; $77ee: $04
	ld   [bc], a                                     ; $77ef: $02
	ld   b, $02                                      ; $77f0: $06 $02
	adc  e                                           ; $77f2: $8b
	add  b                                           ; $77f3: $80
	add  e                                           ; $77f4: $83
	dec  b                                           ; $77f5: $05
	add  c                                           ; $77f6: $81
	pop  bc                                          ; $77f7: $c1
	ld   b, b                                        ; $77f8: $40
	ld   b, h                                        ; $77f9: $44
	nop                                              ; $77fa: $00
	jp   $0083                                       ; $77fb: $c3 $83 $00


	ld   [bc], a                                     ; $77fe: $02
	ld   bc, $0300                                   ; $77ff: $01 $00 $03
	add  c                                           ; $7802: $81
	nop                                              ; $7803: $00
	nop                                              ; $7804: $00
	add  [hl]                                        ; $7805: $86
	add  c                                           ; $7806: $81
	add  b                                           ; $7807: $80
	nop                                              ; $7808: $00
	dec  bc                                          ; $7809: $0b
	add  c                                           ; $780a: $81
	nop                                              ; $780b: $00
	ld   [de], a                                     ; $780c: $12
	stop                                             ; $780d: $10 $00
	ld   bc, $0200                                   ; $780f: $01 $00 $02
	nop                                              ; $7812: $00
	inc  h                                           ; $7813: $24
	nop                                              ; $7814: $00
	ld   [$1100], sp                                 ; $7815: $08 $00 $11
	ld   bc, $0fd0                                   ; $7818: $01 $d0 $0f
	rra                                              ; $781b: $1f
	rrca                                             ; $781c: $0f
	ld   l, a                                        ; $781d: $6f
	rrca                                             ; $781e: $0f
	adc  a                                           ; $781f: $8f
	add  e                                           ; $7820: $83
	rrca                                             ; $7821: $0f
	add  b                                           ; $7822: $80
	rra                                              ; $7823: $1f
	add  b                                           ; $7824: $80
	rst  $28                                         ; $7825: $ef
	ld   [bc], a                                     ; $7826: $02
	ld   [$0800], sp                                 ; $7827: $08 $00 $08
	add  c                                           ; $782a: $81
	nop                                              ; $782b: $00
	inc  bc                                          ; $782c: $03
	ld   [$0400], sp                                 ; $782d: $08 $00 $04
	ld   bc, $8180                                   ; $7830: $01 $80 $81
	rlca                                             ; $7833: $07
	ret  nz                                          ; $7834: $c0

	ld   b, d                                        ; $7835: $42
	ld   h, d                                        ; $7836: $62
	ld   [hl+], a                                    ; $7837: $22
	inc  e                                           ; $7838: $1c
	ld   b, h                                        ; $7839: $44
	jr   nz, @-$76                                   ; $783a: $20 $88

	add  d                                           ; $783c: $82
	adc  c                                           ; $783d: $89
	dec  b                                           ; $783e: $05
	ld   c, d                                        ; $783f: $4a
	ld   a, [bc]                                     ; $7840: $0a
	ld   [bc], a                                     ; $7841: $02
	ld   [de], a                                     ; $7842: $12
	sub  b                                           ; $7843: $90
	db   $10                                         ; $7844: $10
	add  b                                           ; $7845: $80
	inc  d                                           ; $7846: $14
	nop                                              ; $7847: $00
	ld   h, b                                        ; $7848: $60
	add  c                                           ; $7849: $81
	add  b                                           ; $784a: $80
	adc  e                                           ; $784b: $8b
	nop                                              ; $784c: $00
	adc  l                                           ; $784d: $8d
	rrca                                             ; $784e: $0f
	nop                                              ; $784f: $00
	ldh  a, [$80]                                    ; $7850: $f0 $80
	ld   a, h                                        ; $7852: $7c
	add  b                                           ; $7853: $80
	cp   $81                                         ; $7854: $fe $81
	rst  $38                                         ; $7856: $ff
	ld   [$7fbf], sp                                 ; $7857: $08 $bf $7f
	ld   c, a                                        ; $785a: $4f
	ld   a, a                                        ; $785b: $7f
	or   a                                           ; $785c: $b7
	cp   [hl]                                        ; $785d: $be
	cp   d                                           ; $785e: $ba
	cp   [hl]                                        ; $785f: $be
	ld   a, l                                        ; $7860: $7d
	add  c                                           ; $7861: $81
	add  b                                           ; $7862: $80
	add  [hl]                                        ; $7863: $86
	sub  b                                           ; $7864: $90
	add  d                                           ; $7865: $82
	db   $10                                         ; $7866: $10
	add  b                                           ; $7867: $80
	nop                                              ; $7868: $00
	nop                                              ; $7869: $00
	ld   bc, $0087                                   ; $786a: $01 $87 $00
	nop                                              ; $786d: $00
	ld   bc, $0081                                   ; $786e: $01 $81 $00
	nop                                              ; $7871: $00
	ldh  a, [$8d]                                    ; $7872: $f0 $8d
	rrca                                             ; $7874: $0f
	db   $10                                         ; $7875: $10
	xor  $0e                                         ; $7876: $ee $0e
	inc  d                                           ; $7878: $14
	inc  b                                           ; $7879: $04
	sub  l                                           ; $787a: $95
	dec  b                                           ; $787b: $05
	and  l                                           ; $787c: $a5
	dec  c                                           ; $787d: $0d
	ld   b, l                                        ; $787e: $45
	dec  e                                           ; $787f: $1d
	adc  b                                           ; $7880: $88
	inc  a                                           ; $7881: $3c
	inc  e                                           ; $7882: $1c
	ld   a, a                                        ; $7883: $7f
	ccf                                              ; $7884: $3f
	rst  $38                                         ; $7885: $ff
	ld   b, [hl]                                     ; $7886: $46
	add  e                                           ; $7887: $83
	ld   [bc], a                                     ; $7888: $02
	nop                                              ; $7889: $00
	inc  hl                                          ; $788a: $23
	add  c                                           ; $788b: $81
	ld   bc, $9101                                   ; $788c: $01 $01 $91
	add  c                                           ; $788f: $81
	add  b                                           ; $7890: $80
	pop  bc                                          ; $7891: $c1
	ld   [$e3e1], sp                                 ; $7892: $08 $e1 $e3
	ld   [hl], b                                     ; $7895: $70
	ld   b, h                                        ; $7896: $44
	inc  b                                           ; $7897: $04
	inc  h                                           ; $7898: $24
	ld   h, $22                                      ; $7899: $26 $22
	ld   [bc], a                                     ; $789b: $02
	add  c                                           ; $789c: $81
	ld   [de], a                                     ; $789d: $12
	nop                                              ; $789e: $00
	inc  de                                          ; $789f: $13
	add  c                                           ; $78a0: $81
	ld   de, $8102                                   ; $78a1: $11 $02 $81
	adc  h                                           ; $78a4: $8c
	inc  sp                                          ; $78a5: $33
	adc  e                                           ; $78a6: $8b
	rrca                                             ; $78a7: $0f
	ld   [de], a                                     ; $78a8: $12
	rst  JumpTable                                         ; $78a9: $df
	adc  a                                           ; $78aa: $8f
	add  sp, -$01                                    ; $78ab: $e8 $ff
	ld   a, a                                        ; $78ad: $7f
	cp   $ff                                         ; $78ae: $fe $ff
	db   $fc                                         ; $78b0: $fc
	ld   a, a                                        ; $78b1: $7f
	ld   hl, sp-$0c                                  ; $78b2: $f8 $f4
	ldh  a, [$e8]                                    ; $78b4: $f0 $e8
	ldh  [$e1], a                                    ; $78b6: $e0 $e1
	ldh  [$f8], a                                    ; $78b8: $e0 $f8
	ldh  a, [$87]                                    ; $78ba: $f0 $87
	add  b                                           ; $78bc: $80
	db   $fc                                         ; $78bd: $fc
	add  b                                           ; $78be: $80
	or   e                                           ; $78bf: $b3
	add  b                                           ; $78c0: $80
	ldh  [$80], a                                    ; $78c1: $e0 $80
	db   $10                                         ; $78c3: $10
	rra                                              ; $78c4: $1f
	dec  c                                           ; $78c5: $0d
	add  hl, bc                                      ; $78c6: $09
	ld   c, $06                                      ; $78c7: $0e $06
	cp   a                                           ; $78c9: $bf
	adc  h                                           ; $78ca: $8c
	rst  $38                                         ; $78cb: $ff
	ld   [hl], b                                     ; $78cc: $70
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78cd: $cf
	xor  b                                           ; $78ce: $a8
	rst  $28                                         ; $78cf: $ef
	halt                                             ; $78d0: $76
	rst  $38                                         ; $78d1: $ff
	adc  h                                           ; $78d2: $8c
	rst  $38                                         ; $78d3: $ff
	cp   a                                           ; $78d4: $bf
	rst  $38                                         ; $78d5: $ff
	ld   a, a                                        ; $78d6: $7f
	rst  $38                                         ; $78d7: $ff
	cp   $ff                                         ; $78d8: $fe $ff
	dec  e                                           ; $78da: $1d
	rst  $38                                         ; $78db: $ff
	ld   l, $ff                                      ; $78dc: $2e $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78de: $cf
	rst  $38                                         ; $78df: $ff
	ccf                                              ; $78e0: $3f
	rst  $38                                         ; $78e1: $ff
	rrca                                             ; $78e2: $0f
	rst  $38                                         ; $78e3: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78e4: $cf
	add  e                                           ; $78e5: $83
	rst  $38                                         ; $78e6: $ff
	add  hl, bc                                      ; $78e7: $09
	ld   a, a                                        ; $78e8: $7f
	rst  $38                                         ; $78e9: $ff
	ld   h, b                                        ; $78ea: $60
	cp   $de                                         ; $78eb: $fe $de
	db   $fc                                         ; $78ed: $fc
	cp   l                                           ; $78ee: $bd
	ld   sp, hl                                      ; $78ef: $f9
	ld   a, e                                        ; $78f0: $7b
	di                                               ; $78f1: $f3
	add  c                                           ; $78f2: $81
	rst  $30                                         ; $78f3: $f7
	nop                                              ; $78f4: $00
	rst  $20                                         ; $78f5: $e7
	add  d                                           ; $78f6: $82
	rst  $28                                         ; $78f7: $ef
	ld   bc, $c020                                   ; $78f8: $01 $20 $c0
	add  d                                           ; $78fb: $82
	add  b                                           ; $78fc: $80
	add  d                                           ; $78fd: $82
	nop                                              ; $78fe: $00
	add  d                                           ; $78ff: $82
	add  b                                           ; $7900: $80
	add  b                                           ; $7901: $80
	ret  nz                                          ; $7902: $c0

	inc  bc                                          ; $7903: $03
	ld   hl, $193f                                   ; $7904: $21 $3f $19
	rlca                                             ; $7907: $07
	add  b                                           ; $7908: $80
	inc  bc                                          ; $7909: $03
	add  d                                           ; $790a: $82
	ld   bc, $0084                                   ; $790b: $01 $84 $00
	ld   [bc], a                                     ; $790e: $02
	add  b                                           ; $790f: $80
	ldh  a, [rSVBK]                                  ; $7910: $f0 $70
	add  c                                           ; $7912: $81
	add  b                                           ; $7913: $80
	inc  b                                           ; $7914: $04
	nop                                              ; $7915: $00
	ldh  [$80], a                                    ; $7916: $e0 $80
	ldh  a, [$e0]                                    ; $7918: $f0 $e0
	add  e                                           ; $791a: $83
	ldh  a, [rP1]                                    ; $791b: $f0 $00
	rst  $38                                         ; $791d: $ff
	rst  $38                                         ; $791e: $ff
	nop                                              ; $791f: $00
	rst  $38                                         ; $7920: $ff
	nop                                              ; $7921: $00
	rst  $38                                         ; $7922: $ff
	nop                                              ; $7923: $00
	rst  $38                                         ; $7924: $ff
	nop                                              ; $7925: $00
	rst  $38                                         ; $7926: $ff
	nop                                              ; $7927: $00
	rst  $38                                         ; $7928: $ff
	nop                                              ; $7929: $00
	rst  $30                                         ; $792a: $f7
	nop                                              ; $792b: $00
	dec  d                                           ; $792c: $15
	ld   bc, $0082                                   ; $792d: $01 $82 $00
	ld   [bc], a                                     ; $7930: $02
	ld   a, [hl-]                                    ; $7931: $3a
	nop                                              ; $7932: $00
	ld   c, l                                        ; $7933: $4d
	add  c                                           ; $7934: $81
	ld   a, [hl-]                                    ; $7935: $3a
	ld   b, $02                                      ; $7936: $06 $02
	dec  [hl]                                        ; $7938: $35
	ld   b, h                                        ; $7939: $44
	dec  b                                           ; $793a: $05
	inc  [hl]                                        ; $793b: $34
	nop                                              ; $793c: $00
	rrca                                             ; $793d: $0f
	sub  l                                           ; $793e: $95
	nop                                              ; $793f: $00
	ld   c, $c0                                      ; $7940: $0e $c0
	nop                                              ; $7942: $00
	ld   a, b                                        ; $7943: $78
	ret  nz                                          ; $7944: $c0

	rrca                                             ; $7945: $0f
	ld   hl, sp+$01                                  ; $7946: $f8 $01
	ld   a, a                                        ; $7948: $7f
	add  b                                           ; $7949: $80
	rrca                                             ; $794a: $0f
	ld   [hl], b                                     ; $794b: $70
	ld   bc, $000e                                   ; $794c: $01 $0e $00
	ld   bc, $0095                                   ; $794f: $01 $95 $00
	ld   d, $e0                                      ; $7952: $16 $e0
	nop                                              ; $7954: $00
	inc  a                                           ; $7955: $3c
	ldh  [rTAC], a                                   ; $7956: $e0 $07
	db   $fc                                         ; $7958: $fc
	nop                                              ; $7959: $00
	ccf                                              ; $795a: $3f
	ret  nz                                          ; $795b: $c0

	rlca                                             ; $795c: $07
	jr   nz, jr_09c_7967                             ; $795d: $20 $08

	add  hl, bc                                      ; $795f: $09
	dec  c                                           ; $7960: $0d
	ld   [$080e], sp                                 ; $7961: $08 $0e $08
	rrca                                             ; $7964: $0f
	inc  de                                          ; $7965: $13
	nop                                              ; $7966: $00

jr_09c_7967:
	ld   [bc], a                                     ; $7967: $02
	nop                                              ; $7968: $00
	inc  b                                           ; $7969: $04
	add  c                                           ; $796a: $81
	ld   [bc], a                                     ; $796b: $02
	nop                                              ; $796c: $00
	inc  bc                                          ; $796d: $03
	add  e                                           ; $796e: $83
	ld   bc, $0382                                   ; $796f: $01 $82 $03
	inc  b                                           ; $7972: $04
	dec  bc                                          ; $7973: $0b
	inc  bc                                          ; $7974: $03
	ld   b, $07                                      ; $7975: $06 $07
	dec  e                                           ; $7977: $1d
	add  c                                           ; $7978: $81
	rrca                                             ; $7979: $0f
	ld   bc, $0714                                   ; $797a: $01 $14 $07
	add  b                                           ; $797d: $80
	inc  bc                                          ; $797e: $03
	dec  de                                          ; $797f: $1b
	add  hl, bc                                      ; $7980: $09
	ld   bc, $0f1d                                   ; $7981: $01 $1d $0f
	ld   [$080f], sp                                 ; $7984: $08 $0f $08
	rrca                                             ; $7987: $0f
	ld   [$080f], sp                                 ; $7988: $08 $0f $08
	rrca                                             ; $798b: $0f
	ld   [$080f], sp                                 ; $798c: $08 $0f $08
	rrca                                             ; $798f: $0f
	ld   [$080f], sp                                 ; $7990: $08 $0f $08
	rrca                                             ; $7993: $0f
	ld   [$080f], sp                                 ; $7994: $08 $0f $08
	rrca                                             ; $7997: $0f
	ld   [$090f], sp                                 ; $7998: $08 $0f $09
	inc  c                                           ; $799b: $0c
	add  b                                           ; $799c: $80
	dec  bc                                          ; $799d: $0b
	ld   de, $076f                                   ; $799e: $11 $6f $07
	adc  a                                           ; $79a1: $8f
	ld   l, a                                        ; $79a2: $6f
	sbc  a                                           ; $79a3: $9f
	nop                                              ; $79a4: $00
	adc  a                                           ; $79a5: $8f
	nop                                              ; $79a6: $00
	ldh  a, [$87]                                    ; $79a7: $f0 $87
	ld   d, $d1                                      ; $79a9: $16 $d1
	ld   h, d                                        ; $79ab: $62
	cp   [hl]                                        ; $79ac: $be
	nop                                              ; $79ad: $00
	rra                                              ; $79ae: $1f
	ldh  [$e3], a                                    ; $79af: $e0 $e3
	add  b                                           ; $79b1: $80
	ld   a, b                                        ; $79b2: $78
	nop                                              ; $79b3: $00
	rst  $38                                         ; $79b4: $ff
	sub  e                                           ; $79b5: $93
	nop                                              ; $79b6: $00
	ld   [bc], a                                     ; $79b7: $02
	ld   bc, $0200                                   ; $79b8: $01 $00 $02
	add  c                                           ; $79bb: $81
	nop                                              ; $79bc: $00
	nop                                              ; $79bd: $00
	dec  b                                           ; $79be: $05
	add  c                                           ; $79bf: $81
	ld   bc, $0b00                                   ; $79c0: $01 $00 $0b
	add  e                                           ; $79c3: $83
	inc  bc                                          ; $79c4: $03
	nop                                              ; $79c5: $00
	ld   a, [de]                                     ; $79c6: $1a
	add  c                                           ; $79c7: $81
	ld   [bc], a                                     ; $79c8: $02
	ld   bc, $0212                                   ; $79c9: $01 $12 $02
	add  b                                           ; $79cc: $80
	nop                                              ; $79cd: $00
	add  hl, de                                      ; $79ce: $19
	ld   b, $00                                      ; $79cf: $06 $00
	rlca                                             ; $79d1: $07
	ld   bc, $070f                                   ; $79d2: $01 $0f $07
	rra                                              ; $79d5: $1f
	rrca                                             ; $79d6: $0f
	dec  a                                           ; $79d7: $3d
	dec  e                                           ; $79d8: $1d
	ld   c, e                                        ; $79d9: $4b
	dec  sp                                          ; $79da: $3b
	and  a                                           ; $79db: $a7
	ld   [hl], a                                     ; $79dc: $77
	add  $ee                                         ; $79dd: $c6 $ee
	adc  c                                           ; $79df: $89
	db   $dd                                         ; $79e0: $dd
	call z, $badb                                    ; $79e1: $cc $db $ba
	or   a                                           ; $79e4: $b7
	or   l                                           ; $79e5: $b5
	or   a                                           ; $79e6: $b7
	ld   l, d                                        ; $79e7: $6a
	ld   l, [hl]                                     ; $79e8: $6e
	add  b                                           ; $79e9: $80
	ld   c, h                                        ; $79ea: $4c
	add  b                                           ; $79eb: $80
	ld   c, c                                        ; $79ec: $49
	add  b                                           ; $79ed: $80
	reti                                             ; $79ee: $d9


	add  b                                           ; $79ef: $80
	sbc  b                                           ; $79f0: $98
	nop                                              ; $79f1: $00
	sub  d                                           ; $79f2: $92
	add  e                                           ; $79f3: $83
	sub  b                                           ; $79f4: $90
	inc  b                                           ; $79f5: $04
	ld   d, d                                        ; $79f6: $52
	db   $10                                         ; $79f7: $10
	and  [hl]                                        ; $79f8: $a6

Call_09c_79f9:
	nop                                              ; $79f9: $00
	add  hl, bc                                      ; $79fa: $09
	add  e                                           ; $79fb: $83
	nop                                              ; $79fc: $00
	nop                                              ; $79fd: $00
	db   $10                                         ; $79fe: $10
	add  d                                           ; $79ff: $82
	nop                                              ; $7a00: $00
	add  b                                           ; $7a01: $80
	inc  b                                           ; $7a02: $04
	ld   bc, $1000                                   ; $7a03: $01 $00 $10
	add  c                                           ; $7a06: $81
	nop                                              ; $7a07: $00
	ld   a, [bc]                                     ; $7a08: $0a
	ld   [bc], a                                     ; $7a09: $02
	nop                                              ; $7a0a: $00
	ld   [bc], a                                     ; $7a0b: $02
	nop                                              ; $7a0c: $00
	rlca                                             ; $7a0d: $07
	rrca                                             ; $7a0e: $0f
	rla                                              ; $7a0f: $17
	rlca                                             ; $7a10: $07
	inc  bc                                          ; $7a11: $03
	rlca                                             ; $7a12: $07
	dec  bc                                          ; $7a13: $0b
	add  b                                           ; $7a14: $80
	inc  bc                                          ; $7a15: $03
	inc  bc                                          ; $7a16: $03
	ld   bc, $0104                              ; $7a17: $01 $04 $01
	ld   [bc], a                                     ; $7a1a: $02
	add  c                                           ; $7a1b: $81
	nop                                              ; $7a1c: $00
	inc  d                                           ; $7a1d: $14
	ld   c, $00                                      ; $7a1e: $0e $00
	ldh  a, [rIF]                                    ; $7a20: $f0 $0f
	nop                                              ; $7a22: $00
	rst  $38                                         ; $7a23: $ff
	inc  sp                                          ; $7a24: $33
	jp   $002c                                       ; $7a25: $c3 $2c $00


	ld   l, a                                        ; $7a28: $6f
	ret  nz                                          ; $7a29: $c0

	dec  bc                                          ; $7a2a: $0b
	ld   hl, sp+$04                                  ; $7a2b: $f8 $04
	ld   a, h                                        ; $7a2d: $7c
	add  hl, de                                      ; $7a2e: $19
	ld   de, $1151                                   ; $7a2f: $11 $51 $11
	sub  c                                           ; $7a32: $91
	add  c                                           ; $7a33: $81
	ld   de, $0380                                   ; $7a34: $11 $80 $03
	nop                                              ; $7a37: $00
	ld   h, e                                        ; $7a38: $63
	add  e                                           ; $7a39: $83
	inc  bc                                          ; $7a3a: $03
	ld   [bc], a                                     ; $7a3b: $02
	jp   $8703                                       ; $7a3c: $c3 $03 $87


	add  a                                           ; $7a3f: $87
	rlca                                             ; $7a40: $07
	ld   bc, $0787                                   ; $7a41: $01 $87 $07
	add  b                                           ; $7a44: $80
	dec  c                                           ; $7a45: $0d
	ld   bc, $009f                                   ; $7a46: $01 $9f $00
	add  b                                           ; $7a49: $80
	ld   bc, $0780                                   ; $7a4a: $01 $80 $07
	add  b                                           ; $7a4d: $80
	ld   c, $80                                      ; $7a4e: $0e $80
	dec  a                                           ; $7a50: $3d
	add  [hl]                                        ; $7a51: $86
	ld   a, a                                        ; $7a52: $7f
	add  d                                           ; $7a53: $82
	ccf                                              ; $7a54: $3f
	add  d                                           ; $7a55: $82
	rra                                              ; $7a56: $1f
	add  b                                           ; $7a57: $80
	ld   l, a                                        ; $7a58: $6f
	add  b                                           ; $7a59: $80

jr_09c_7a5a:
	ld   h, a                                        ; $7a5a: $67
	add  b                                           ; $7a5b: $80
	rst  $20                                         ; $7a5c: $e7
	add  b                                           ; $7a5d: $80
	ld   a, [hl]                                     ; $7a5e: $7e
	add  b                                           ; $7a5f: $80
	rst  ToBoot                                         ; $7a60: $c7
	add  b                                           ; $7a61: $80
	add  e                                           ; $7a62: $83
	add  b                                           ; $7a63: $80
	ld   a, c                                        ; $7a64: $79
	add  b                                           ; $7a65: $80
	ldh  a, [$80]                                    ; $7a66: $f0 $80
	rst  ToBoot                                         ; $7a68: $c7
	add  b                                           ; $7a69: $80
	rst  $20                                         ; $7a6a: $e7
	add  b                                           ; $7a6b: $80
	rst  $28                                         ; $7a6c: $ef
	add  d                                           ; $7a6d: $82
	rst  $30                                         ; $7a6e: $f7
	add  b                                           ; $7a6f: $80
	rst  $38                                         ; $7a70: $ff
	add  b                                           ; $7a71: $80
	adc  a                                           ; $7a72: $8f
	add  b                                           ; $7a73: $80
	add  c                                           ; $7a74: $81
	add  b                                           ; $7a75: $80
	ret  nz                                          ; $7a76: $c0

	add  d                                           ; $7a77: $82
	ldh  [$82], a                                    ; $7a78: $e0 $82
	nop                                              ; $7a7a: $00
	add  b                                           ; $7a7b: $80
	add  b                                           ; $7a7c: $80
	add  b                                           ; $7a7d: $80
	ret  nz                                          ; $7a7e: $c0

	add  b                                           ; $7a7f: $80
	ldh  [$80], a                                    ; $7a80: $e0 $80

jr_09c_7a82:
	ldh  a, [$80]                                    ; $7a82: $f0 $80
	ld   hl, sp-$80                                  ; $7a84: $f8 $80
	db   $fd                                         ; $7a86: $fd
	add  b                                           ; $7a87: $80
	call $c180                                       ; $7a88: $cd $80 $c1
	add  b                                           ; $7a8b: $80
	ret  nz                                          ; $7a8c: $c0

	add  b                                           ; $7a8d: $80
	ldh  [$80], a                                    ; $7a8e: $e0 $80
	ldh  a, [$80]                                    ; $7a90: $f0 $80
	ld   a, [hl]                                     ; $7a92: $7e
	add  d                                           ; $7a93: $82
	nop                                              ; $7a94: $00
	nop                                              ; $7a95: $00
	add  b                                           ; $7a96: $80
	add  l                                           ; $7a97: $85
	nop                                              ; $7a98: $00
	nop                                              ; $7a99: $00
	ld   b, b                                        ; $7a9a: $40
	add  e                                           ; $7a9b: $83
	nop                                              ; $7a9c: $00
	add  b                                           ; $7a9d: $80
	add  b                                           ; $7a9e: $80
	nop                                              ; $7a9f: $00
	ldh  [$81], a                                    ; $7aa0: $e0 $81
	ret  nz                                          ; $7aa2: $c0

	nop                                              ; $7aa3: $00
	add  b                                           ; $7aa4: $80
	add  c                                           ; $7aa5: $81
	ret  nz                                          ; $7aa6: $c0

	nop                                              ; $7aa7: $00
	sub  b                                           ; $7aa8: $90
	add  l                                           ; $7aa9: $85
	ldh  [rSC], a                                    ; $7aaa: $e0 $02
	cp   b                                           ; $7aac: $b8
	ldh  a, [$e0]                                    ; $7aad: $f0 $e0
	add  c                                           ; $7aaf: $81
	ldh  a, [rTIMA]                                  ; $7ab0: $f0 $05
	or   b                                           ; $7ab2: $b0
	ldh  a, [$50]                                    ; $7ab3: $f0 $50
	ld   [hl], b                                     ; $7ab5: $70
	ld   [hl], h                                     ; $7ab6: $74
	ld   [hl], b                                     ; $7ab7: $70
	add  b                                           ; $7ab8: $80
	ld   a, b                                        ; $7ab9: $78
	ld   bc, $7868                                   ; $7aba: $01 $68 $78
	add  e                                           ; $7abd: $83
	jr   c, jr_09c_7ac2                              ; $7abe: $38 $02

	cp   b                                           ; $7ac0: $b8
	cp   [hl]                                        ; $7ac1: $be

jr_09c_7ac2:
	cp   h                                           ; $7ac2: $bc
	add  d                                           ; $7ac3: $82
	sbc  h                                           ; $7ac4: $9c
	nop                                              ; $7ac5: $00
	inc  e                                           ; $7ac6: $1c
	add  a                                           ; $7ac7: $87
	sbc  h                                           ; $7ac8: $9c
	add  h                                           ; $7ac9: $84
	sub  h                                           ; $7aca: $94
	add  d                                           ; $7acb: $82
	inc  d                                           ; $7acc: $14
	add  b                                           ; $7acd: $80
	stop                                             ; $7ace: $10 $00
	ld   [de], a                                     ; $7ad0: $12
	add  c                                           ; $7ad1: $81
	db   $10                                         ; $7ad2: $10
	add  d                                           ; $7ad3: $82
	jr   nc, jr_09c_7ad6                             ; $7ad4: $30 $00

jr_09c_7ad6:
	inc  h                                           ; $7ad6: $24
	add  c                                           ; $7ad7: $81
	jr   nz, jr_09c_7a5a                             ; $7ad8: $20 $80

	ld   h, b                                        ; $7ada: $60
	ld   [bc], a                                     ; $7adb: $02
	ld   b, $fe                                      ; $7adc: $06 $fe
	rst  $38                                         ; $7ade: $ff
	add  b                                           ; $7adf: $80
	ld   a, a                                        ; $7ae0: $7f
	dec  bc                                          ; $7ae1: $0b
	rrca                                             ; $7ae2: $0f
	cp   a                                           ; $7ae3: $bf
	scf                                              ; $7ae4: $37
	ld   e, a                                        ; $7ae5: $5f
	dec  de                                          ; $7ae6: $1b
	cpl                                              ; $7ae7: $2f
	dec  c                                           ; $7ae8: $0d
	ld   c, $0f                                      ; $7ae9: $0e $0f
	rla                                              ; $7aeb: $17
	rlca                                             ; $7aec: $07
	dec  bc                                          ; $7aed: $0b
	add  l                                           ; $7aee: $85
	inc  bc                                          ; $7aef: $03
	nop                                              ; $7af0: $00
	dec  b                                           ; $7af1: $05
	add  c                                           ; $7af2: $81
	ld   bc, $2105                                   ; $7af3: $01 $05 $21
	ld   bc, $00e2                                   ; $7af6: $01 $e2 $00
	cp   l                                           ; $7af9: $bd
	ld   a, b                                        ; $7afa: $78
	add  b                                           ; $7afb: $80
	jr   c, jr_09c_7a82                              ; $7afc: $38 $84

	cp   b                                           ; $7afe: $b8
	add  b                                           ; $7aff: $80
	ld   hl, sp+$02                                  ; $7b00: $f8 $02
	add  b                                           ; $7b02: $80
	ld   hl, sp+$7e                                  ; $7b03: $f8 $7e
	add  c                                           ; $7b05: $81
	db   $fc                                         ; $7b06: $fc
	ld   h, $fa                                      ; $7b07: $26 $fa
	ld   hl, sp-$0c                                  ; $7b09: $f8 $f4
	ldh  a, [$e8]                                    ; $7b0b: $f0 $e8
	ldh  [$e8], a                                    ; $7b0d: $e0 $e8
	ldh  [$e4], a                                    ; $7b0f: $e0 $e4
	add  sp, -$16                                    ; $7b11: $e8 $ea
	db   $ec                                         ; $7b13: $ec
	db   $ed                                         ; $7b14: $ed
	db   $ec                                         ; $7b15: $ec
	stop                                             ; $7b16: $10 $00
	inc  h                                           ; $7b18: $24
	ld   bc, $0149                           ; $7b19: $01 $49 $01
	dec  d                                           ; $7b1c: $15
	ld   bc, $0169                                   ; $7b1d: $01 $69 $01
	rlca                                             ; $7b20: $07
	inc  bc                                          ; $7b21: $03
	inc  sp                                          ; $7b22: $33
	inc  bc                                          ; $7b23: $03
	ldh  a, [c]                                      ; $7b24: $f2
	inc  bc                                          ; $7b25: $03
	ld   e, a                                        ; $7b26: $5f
	rlca                                             ; $7b27: $07
	and  a                                           ; $7b28: $a7
	rlca                                             ; $7b29: $07
	ld   e, a                                        ; $7b2a: $5f
	rrca                                             ; $7b2b: $0f
	cp   a                                           ; $7b2c: $bf
	rra                                              ; $7b2d: $1f
	rst  JumpTable                                         ; $7b2e: $df
	add  c                                           ; $7b2f: $81
	rra                                              ; $7b30: $1f
	ld   bc, $1f9f                                   ; $7b31: $01 $9f $1f
	add  b                                           ; $7b34: $80
	ld   c, $04                                      ; $7b35: $0e $04
	nop                                              ; $7b37: $00
	add  [hl]                                        ; $7b38: $86
	ld   b, $5b                                      ; $7b39: $06 $5b
	ld   d, e                                        ; $7b3b: $53
	add  c                                           ; $7b3c: $81
	ld   l, l                                        ; $7b3d: $6d
	inc  b                                           ; $7b3e: $04
	ld   l, c                                        ; $7b3f: $69
	xor  [hl]                                        ; $7b40: $ae
	and  [hl]                                        ; $7b41: $a6

jr_09c_7b42:
	or   a                                           ; $7b42: $b7
	or   l                                           ; $7b43: $b5
	add  b                                           ; $7b44: $80
	or   a                                           ; $7b45: $b7
	ld   bc, $d2d7                                   ; $7b46: $01 $d7 $d2

jr_09c_7b49:
	add  c                                           ; $7b49: $81
	db   $db                                         ; $7b4a: $db
	add  b                                           ; $7b4b: $80
	jp   c, $d800                                    ; $7b4c: $da $00 $d8

	add  b                                           ; $7b4f: $80
	add  sp, $01                                     ; $7b50: $e8 $01
	db   $ec                                         ; $7b52: $ec
	ld   l, h                                        ; $7b53: $6c
	add  b                                           ; $7b54: $80
	db   $ec                                         ; $7b55: $ec
	add  b                                           ; $7b56: $80
	add  sp, $03                                     ; $7b57: $e8 $03
	and  b                                           ; $7b59: $a0
	rst  JumpTable                                         ; $7b5a: $df
	nop                                              ; $7b5b: $00
	add  b                                           ; $7b5c: $80
	add  c                                           ; $7b5d: $81
	nop                                              ; $7b5e: $00
	nop                                              ; $7b5f: $00
	ld   b, b                                        ; $7b60: $40
	add  c                                           ; $7b61: $81
	add  b                                           ; $7b62: $80
	nop                                              ; $7b63: $00
	ret  nz                                          ; $7b64: $c0

	add  c                                           ; $7b65: $81
	nop                                              ; $7b66: $00
	nop                                              ; $7b67: $00
	ld   b, b                                        ; $7b68: $40
	add  c                                           ; $7b69: $81
	add  b                                           ; $7b6a: $80
	ld   [bc], a                                     ; $7b6b: $02
	ret  nz                                          ; $7b6c: $c0

	nop                                              ; $7b6d: $00
	add  b                                           ; $7b6e: $80
	add  l                                           ; $7b6f: $85
	nop                                              ; $7b70: $00
	nop                                              ; $7b71: $00
	add  b                                           ; $7b72: $80
	add  c                                           ; $7b73: $81
	nop                                              ; $7b74: $00
	nop                                              ; $7b75: $00
	add  b                                           ; $7b76: $80
	add  l                                           ; $7b77: $85
	nop                                              ; $7b78: $00
	inc  b                                           ; $7b79: $04
	inc  l                                           ; $7b7a: $2c
	nop                                              ; $7b7b: $00
	cpl                                              ; $7b7c: $2f
	nop                                              ; $7b7d: $00
	inc  bc                                          ; $7b7e: $03
	sub  l                                           ; $7b7f: $95
	nop                                              ; $7b80: $00
	ld   b, $78                                      ; $7b81: $06 $78
	nop                                              ; $7b83: $00
	add  [hl]                                        ; $7b84: $86
	nop                                              ; $7b85: $00
	add  [hl]                                        ; $7b86: $86
	nop                                              ; $7b87: $00
	ld   a, b                                        ; $7b88: $78
	or   b                                           ; $7b89: $b0
	nop                                              ; $7b8a: $00
	inc  bc                                          ; $7b8b: $03
	add  c                                           ; $7b8c: $81
	ld   bc, $dd5f                                   ; $7b8d: $01 $5f $dd
	add  d                                           ; $7b90: $82
	inc  c                                           ; $7b91: $0c
	add  c                                           ; $7b92: $81
	inc  e                                           ; $7b93: $1c
	nop                                              ; $7b94: $00
	ld   a, [de]                                     ; $7b95: $1a
	add  b                                           ; $7b96: $80
	jr   c, @+$06                                    ; $7b97: $38 $04

	ld   a, b                                        ; $7b99: $78
	ld   d, h                                        ; $7b9a: $54
	ret  nc                                          ; $7b9b: $d0

	ld   sp, $8030                                   ; $7b9c: $31 $30 $80

jr_09c_7b9f:
	ldh  a, [rAUD2ENV]                               ; $7b9f: $f0 $17
	add  sp, -$20                                    ; $7ba1: $e8 $e0
	sub  d                                           ; $7ba3: $92
	add  b                                           ; $7ba4: $80
	ld   h, b                                        ; $7ba5: $60
	nop                                              ; $7ba6: $00
	adc  l                                           ; $7ba7: $8d
	nop                                              ; $7ba8: $00
	ld   [hl-], a                                    ; $7ba9: $32
	nop                                              ; $7baa: $00
	call nz, $3800                                   ; $7bab: $c4 $00 $38
	nop                                              ; $7bae: $00
	ccf                                              ; $7baf: $3f
	nop                                              ; $7bb0: $00
	jr   jr_09c_7bc3                                 ; $7bb1: $18 $10

	dec  b                                           ; $7bb3: $05
	ld   [$1411], sp                                 ; $7bb4: $08 $11 $14
	sbc  h                                           ; $7bb7: $9c
	inc  e                                           ; $7bb8: $1c
	add  b                                           ; $7bb9: $80
	inc  d                                           ; $7bba: $14
	add  b                                           ; $7bbb: $80
	ld   [$3080], sp                                 ; $7bbc: $08 $80 $30
	add  b                                           ; $7bbf: $80

jr_09c_7bc0:
	jr   nz, jr_09c_7b42                             ; $7bc0: $20 $80

	nop                                              ; $7bc2: $00

jr_09c_7bc3:
	add  b                                           ; $7bc3: $80
	jr   nc, jr_09c_7bc6                             ; $7bc4: $30 $00

jr_09c_7bc6:
	jr   c, jr_09c_7b49                              ; $7bc6: $38 $81

	jr   nc, jr_09c_7bd0                             ; $7bc8: $30 $06

	ld   [hl-], a                                    ; $7bca: $32
	jr   nc, jr_09c_7bc0                             ; $7bcb: $30 $f3

	ld   h, b                                        ; $7bcd: $60
	ld   h, [hl]                                     ; $7bce: $66
	ld   h, b                                        ; $7bcf: $60

jr_09c_7bd0:
	adc  l                                           ; $7bd0: $8d
	add  e                                           ; $7bd1: $83
	ld   [bc], a                                     ; $7bd2: $02
	inc  bc                                          ; $7bd3: $03
	ret  nz                                          ; $7bd4: $c0

	nop                                              ; $7bd5: $00
	or   [hl]                                        ; $7bd6: $b6
	ld   b, $80                                      ; $7bd7: $06 $80
	ld   bc, $0680                                   ; $7bd9: $01 $80 $06
	ld   [bc], a                                     ; $7bdc: $02
	ld   [$140c], sp                                 ; $7bdd: $08 $0c $14
	add  c                                           ; $7be0: $81
	dec  e                                           ; $7be1: $1d
	add  b                                           ; $7be2: $80
	dec  de                                          ; $7be3: $1b
	ld   [bc], a                                     ; $7be4: $02
	add  hl, de                                      ; $7be5: $19
	dec  e                                           ; $7be6: $1d
	add  hl, bc                                      ; $7be7: $09
	add  c                                           ; $7be8: $81
	rrca                                             ; $7be9: $0f
	ld   b, $0e                                      ; $7bea: $06 $0e
	dec  c                                           ; $7bec: $0d
	ld   c, $0f                                      ; $7bed: $0e $0f
	ld   [hl], h                                     ; $7bef: $74
	nop                                              ; $7bf0: $00
	add  hl, hl                                      ; $7bf1: $29
	add  c                                           ; $7bf2: $81
	nop                                              ; $7bf3: $00
	add  b                                           ; $7bf4: $80
	ld   [bc], a                                     ; $7bf5: $02
	inc  c                                           ; $7bf6: $0c
	add  d                                           ; $7bf7: $82
	ld   [bc], a                                     ; $7bf8: $02
	ld   [hl+], a                                    ; $7bf9: $22
	ld   [bc], a                                     ; $7bfa: $02
	or   b                                           ; $7bfb: $b0
	and  b                                           ; $7bfc: $a0
	rst  $30                                         ; $7bfd: $f7
	halt                                             ; $7bfe: $76
	ld   a, l                                        ; $7bff: $7d
	inc  d                                           ; $7c00: $14
	inc  de                                          ; $7c01: $13
	nop                                              ; $7c02: $00
	dec  b                                           ; $7c03: $05
	add  e                                           ; $7c04: $83
	nop                                              ; $7c05: $00
	ld   [bc], a                                     ; $7c06: $02
	ld   [bc], a                                     ; $7c07: $02
	nop                                              ; $7c08: $00
	inc  bc                                          ; $7c09: $03
	add  b                                           ; $7c0a: $80
	ld   bc, $0003                                   ; $7c0b: $01 $03 $00
	ld   de, $8800                                   ; $7c0e: $11 $00 $88
	add  c                                           ; $7c11: $81
	nop                                              ; $7c12: $00
	ld   [bc], a                                     ; $7c13: $02
	inc  d                                           ; $7c14: $14
	nop                                              ; $7c15: $00
	ld   b, b                                        ; $7c16: $40
	add  e                                           ; $7c17: $83
	nop                                              ; $7c18: $00
	inc  bc                                          ; $7c19: $03
	or   b                                           ; $7c1a: $b0
	add  b                                           ; $7c1b: $80
	ld   [hl+], a                                    ; $7c1c: $22
	jr   nz, jr_09c_7b9f                             ; $7c1d: $20 $80

	nop                                              ; $7c1f: $00
	add  b                                           ; $7c20: $80
	ld   a, [bc]                                     ; $7c21: $0a
	add  b                                           ; $7c22: $80
	ld   b, $01                                      ; $7c23: $06 $01
	ld   e, [hl]                                     ; $7c25: $5e
	ld   c, [hl]                                     ; $7c26: $4e
	add  b                                           ; $7c27: $80
	adc  $80                                         ; $7c28: $ce $80
	ld   c, $02                                      ; $7c2a: $0e $02
	db   $ed                                         ; $7c2c: $ed
	inc  c                                           ; $7c2d: $0c
	ld   h, e                                        ; $7c2e: $63
	add  e                                           ; $7c2f: $83
	ld   [bc], a                                     ; $7c30: $02
	inc  bc                                          ; $7c31: $03
	ret  nz                                          ; $7c32: $c0

	nop                                              ; $7c33: $00
	or   [hl]                                        ; $7c34: $b6
	ld   b, $80                                      ; $7c35: $06 $80
	rrca                                             ; $7c37: $0f
	add  b                                           ; $7c38: $80
	ld   bc, $0080                                   ; $7c39: $01 $80 $00
	nop                                              ; $7c3c: $00
	db   $10                                         ; $7c3d: $10
	add  b                                           ; $7c3e: $80
	inc  e                                           ; $7c3f: $1c
	nop                                              ; $7c40: $00
	dec  e                                           ; $7c41: $1d
	add  b                                           ; $7c42: $80
	dec  de                                          ; $7c43: $1b
	ld   [bc], a                                     ; $7c44: $02
	add  hl, de                                      ; $7c45: $19
	dec  e                                           ; $7c46: $1d
	add  hl, bc                                      ; $7c47: $09
	add  c                                           ; $7c48: $81
	rrca                                             ; $7c49: $0f
	ld   b, $0e                                      ; $7c4a: $06 $0e
	dec  c                                           ; $7c4c: $0d
	ld   c, $0f                                      ; $7c4d: $0e $0f
	ld   [hl], h                                     ; $7c4f: $74
	nop                                              ; $7c50: $00
	add  hl, hl                                      ; $7c51: $29
	add  c                                           ; $7c52: $81
	nop                                              ; $7c53: $00
	add  b                                           ; $7c54: $80
	ld   [bc], a                                     ; $7c55: $02
	ld   c, $82                                      ; $7c56: $0e $82
	ld   [bc], a                                     ; $7c58: $02
	ld   [hl+], a                                    ; $7c59: $22
	ld   [bc], a                                     ; $7c5a: $02
	or   b                                           ; $7c5b: $b0
	and  b                                           ; $7c5c: $a0
	rst  $30                                         ; $7c5d: $f7
	halt                                             ; $7c5e: $76
	ld   a, [hl]                                     ; $7c5f: $7e
	inc  d                                           ; $7c60: $14
	rla                                              ; $7c61: $17
	nop                                              ; $7c62: $00
	inc  b                                           ; $7c63: $04
	nop                                              ; $7c64: $00
	ld   b, $81                                      ; $7c65: $06 $81
	nop                                              ; $7c67: $00
	ld   [bc], a                                     ; $7c68: $02
	ld   [bc], a                                     ; $7c69: $02
	nop                                              ; $7c6a: $00
	inc  bc                                          ; $7c6b: $03
	add  b                                           ; $7c6c: $80
	ld   bc, $0003                                   ; $7c6d: $01 $03 $00
	ld   de, $8800                                   ; $7c70: $11 $00 $88
	add  c                                           ; $7c73: $81
	nop                                              ; $7c74: $00
	ld   [bc], a                                     ; $7c75: $02
	inc  d                                           ; $7c76: $14
	nop                                              ; $7c77: $00
	ld   b, b                                        ; $7c78: $40
	add  e                                           ; $7c79: $83
	nop                                              ; $7c7a: $00
	dec  c                                           ; $7c7b: $0d
	or   b                                           ; $7c7c: $b0
	add  b                                           ; $7c7d: $80
	ldh  [c], a                                      ; $7c7e: $e2
	jr   nz, @-$0e                                   ; $7c7f: $20 $f0

	db   $10                                         ; $7c81: $10
	ld   a, [hl-]                                    ; $7c82: $3a
	ld   a, [bc]                                     ; $7c83: $0a
	ld   e, $06                                      ; $7c84: $1e $06
	ld   c, [hl]                                     ; $7c86: $4e
	ld   b, [hl]                                     ; $7c87: $46
	sbc  $ce                                         ; $7c88: $de $ce
	add  b                                           ; $7c8a: $80
	ld   c, $02                                      ; $7c8b: $0e $02
	db   $ed                                         ; $7c8d: $ed
	inc  c                                           ; $7c8e: $0c

jr_09c_7c8f:
	ld   h, e                                        ; $7c8f: $63
	add  e                                           ; $7c90: $83
	ld   [bc], a                                     ; $7c91: $02
	inc  bc                                          ; $7c92: $03
	ret  nz                                          ; $7c93: $c0

	nop                                              ; $7c94: $00
	or   [hl]                                        ; $7c95: $b6
	ld   b, $80                                      ; $7c96: $06 $80
	rrca                                             ; $7c98: $0f
	inc  c                                           ; $7c99: $0c
	add  hl, bc                                      ; $7c9a: $09
	rrca                                             ; $7c9b: $0f
	ld   c, $0f                                      ; $7c9c: $0e $0f
	inc  de                                          ; $7c9e: $13
	rla                                              ; $7c9f: $17
	ld   [de], a                                     ; $7ca0: $12
	inc  de                                          ; $7ca1: $13
	ld   [de], a                                     ; $7ca2: $12
	db   $10                                         ; $7ca3: $10
	ld   de, $0819                                   ; $7ca4: $11 $19 $08
	add  c                                           ; $7ca7: $81
	rrca                                             ; $7ca8: $0f
	ld   b, $0e                                      ; $7ca9: $06 $0e
	dec  c                                           ; $7cab: $0d
	ld   c, $0f                                      ; $7cac: $0e $0f
	ld   [hl], h                                     ; $7cae: $74
	nop                                              ; $7caf: $00
	add  hl, hl                                      ; $7cb0: $29
	add  c                                           ; $7cb1: $81
	nop                                              ; $7cb2: $00
	add  b                                           ; $7cb3: $80
	ld   [bc], a                                     ; $7cb4: $02
	ld   [$0282], sp                                 ; $7cb5: $08 $82 $02
	ld   [hl+], a                                    ; $7cb8: $22
	ld   [bc], a                                     ; $7cb9: $02
	or   b                                           ; $7cba: $b0
	and  b                                           ; $7cbb: $a0
	rst  $30                                         ; $7cbc: $f7
	halt                                             ; $7cbd: $76
	ld   a, [hl]                                     ; $7cbe: $7e
	add  b                                           ; $7cbf: $80
	inc  d                                           ; $7cc0: $14
	add  c                                           ; $7cc1: $81
	nop                                              ; $7cc2: $00
	ld   b, $02                                      ; $7cc3: $06 $02
	nop                                              ; $7cc5: $00
	inc  b                                           ; $7cc6: $04
	ld   bc, $0004                                   ; $7cc7: $01 $04 $00
	inc  bc                                          ; $7cca: $03
	add  b                                           ; $7ccb: $80
	ld   bc, $0003                                   ; $7ccc: $01 $03 $00
	ld   de, $8800                                   ; $7ccf: $11 $00 $88
	add  c                                           ; $7cd2: $81
	nop                                              ; $7cd3: $00
	ld   [bc], a                                     ; $7cd4: $02
	inc  d                                           ; $7cd5: $14
	nop                                              ; $7cd6: $00
	ld   b, b                                        ; $7cd7: $40
	add  e                                           ; $7cd8: $83
	nop                                              ; $7cd9: $00
	ld   [de], a                                     ; $7cda: $12
	or   b                                           ; $7cdb: $b0
	add  b                                           ; $7cdc: $80
	ldh  [c], a                                      ; $7cdd: $e2
	jr   nz, jr_09c_7d10                             ; $7cde: $20 $30

	db   $10                                         ; $7ce0: $10
	ld   a, [de]                                     ; $7ce1: $1a
	ld   a, [bc]                                     ; $7ce2: $0a
	ld   c, $06                                      ; $7ce3: $0e $06
	ld   e, $26                                      ; $7ce5: $1e $26
	add  $06                                         ; $7ce7: $c6 $06
	ld   e, $0e                                      ; $7ce9: $1e $0e
	db   $ed                                         ; $7ceb: $ed
	inc  c                                           ; $7cec: $0c
	ld   c, $8f                                      ; $7ced: $0e $8f
	nop                                              ; $7cef: $00
	inc  b                                           ; $7cf0: $04
	jr   nz, jr_09c_7cf3                             ; $7cf1: $20 $00

jr_09c_7cf3:
	inc  l                                           ; $7cf3: $2c
	db   $10                                         ; $7cf4: $10
	inc  e                                           ; $7cf5: $1c
	sbc  c                                           ; $7cf6: $99
	nop                                              ; $7cf7: $00
	ld   a, [bc]                                     ; $7cf8: $0a
	jr   nz, jr_09c_7d0b                             ; $7cf9: $20 $10

	inc  h                                           ; $7cfb: $24
	ld   a, [hl+]                                    ; $7cfc: $2a
	inc  l                                           ; $7cfd: $2c
	jr   nz, @+$32                                   ; $7cfe: $20 $30

	inc  d                                           ; $7d00: $14
	ld   a, [de]                                     ; $7d01: $1a
	nop                                              ; $7d02: $00
	inc  c                                           ; $7d03: $0c
	add  c                                           ; $7d04: $81
	nop                                              ; $7d05: $00
	add  b                                           ; $7d06: $80
	jr   nc, @-$7e                                   ; $7d07: $30 $80

	jr   jr_09c_7c8f                                 ; $7d09: $18 $84

jr_09c_7d0b:
	ld   [$00ff], sp                                 ; $7d0b: $08 $ff $00
	rst  $38                                         ; $7d0e: $ff
	nop                                              ; $7d0f: $00

jr_09c_7d10:
	rst  $38                                         ; $7d10: $ff
	nop                                              ; $7d11: $00
	rst  $38                                         ; $7d12: $ff
	nop                                              ; $7d13: $00
	rst  $38                                         ; $7d14: $ff
	nop                                              ; $7d15: $00
	rst  $38                                         ; $7d16: $ff
	nop                                              ; $7d17: $00
	xor  [hl]                                        ; $7d18: $ae
	nop                                              ; $7d19: $00
	add  hl, hl                                      ; $7d1a: $29
	ld   bc, $0098                                   ; $7d1b: $01 $98 $00
	add  b                                           ; $7d1e: $80
	ld   bc, $0a80                                   ; $7d1f: $01 $80 $0a
	adc  [hl]                                        ; $7d22: $8e
	nop                                              ; $7d23: $00
	add  b                                           ; $7d24: $80
	ld   bc, $0a80                                   ; $7d25: $01 $80 $0a
	add  b                                           ; $7d28: $80
	dec  d                                           ; $7d29: $15
	add  b                                           ; $7d2a: $80
	ld   h, $80                                      ; $7d2b: $26 $80
	dec  bc                                          ; $7d2d: $0b
	add  b                                           ; $7d2e: $80
	ld   d, $80                                      ; $7d2f: $16 $80
	ld   d, l                                        ; $7d31: $55
	add  b                                           ; $7d32: $80
	xor  e                                           ; $7d33: $ab
	add  b                                           ; $7d34: $80
	dec  b                                           ; $7d35: $05
	adc  b                                           ; $7d36: $88
	nop                                              ; $7d37: $00
	add  b                                           ; $7d38: $80
	dec  b                                           ; $7d39: $05
	add  b                                           ; $7d3a: $80
	nop                                              ; $7d3b: $00
	add  b                                           ; $7d3c: $80

jr_09c_7d3d:
	ld   d, l                                        ; $7d3d: $55
	add  b                                           ; $7d3e: $80
	xor  d                                           ; $7d3f: $aa
	add  b                                           ; $7d40: $80
	ld   a, a                                        ; $7d41: $7f
	add  b                                           ; $7d42: $80
	cp   [hl]                                        ; $7d43: $be
	add  b                                           ; $7d44: $80
	rst  $30                                         ; $7d45: $f7
	add  b                                           ; $7d46: $80
	xor  $80                                         ; $7d47: $ee $80
	ld   e, c                                        ; $7d49: $59
	add  b                                           ; $7d4a: $80
	ld   [$5580], a                                  ; $7d4b: $ea $80 $55
	adc  b                                           ; $7d4e: $88
	nop                                              ; $7d4f: $00
	add  b                                           ; $7d50: $80
	ld   b, b                                        ; $7d51: $40
	add  b                                           ; $7d52: $80
	ld   a, [bc]                                     ; $7d53: $0a
	add  b                                           ; $7d54: $80
	ld   d, b                                        ; $7d55: $50
	add  b                                           ; $7d56: $80
	and  d                                           ; $7d57: $a2
	add  b                                           ; $7d58: $80
	push de                                          ; $7d59: $d5
	add  b                                           ; $7d5a: $80
	and  d                                           ; $7d5b: $a2
	add  b                                           ; $7d5c: $80
	ld   d, l                                        ; $7d5d: $55
	add  b                                           ; $7d5e: $80
	adc  b                                           ; $7d5f: $88
	add  b                                           ; $7d60: $80
	ld   d, l                                        ; $7d61: $55
	add  b                                           ; $7d62: $80
	ld   [bc], a                                     ; $7d63: $02
	add  b                                           ; $7d64: $80
	ld   b, b                                        ; $7d65: $40
	adc  [hl]                                        ; $7d66: $8e

jr_09c_7d67:
	nop                                              ; $7d67: $00
	add  b                                           ; $7d68: $80
	and  b                                           ; $7d69: $a0
	add  b                                           ; $7d6a: $80
	ld   d, h                                        ; $7d6b: $54
	add  b                                           ; $7d6c: $80
	and  d                                           ; $7d6d: $a2
	add  b                                           ; $7d6e: $80
	ld   d, b                                        ; $7d6f: $50
	add  b                                           ; $7d70: $80
	and  d                                           ; $7d71: $a2
	add  b                                           ; $7d72: $80
	ld   b, b                                        ; $7d73: $40
	sbc  h                                           ; $7d74: $9c
	nop                                              ; $7d75: $00
	add  b                                           ; $7d76: $80
	ld   bc, $0a80                                   ; $7d77: $01 $80 $0a
	sub  d                                           ; $7d7a: $92
	nop                                              ; $7d7b: $00
	add  b                                           ; $7d7c: $80
	ld   bc, $0080                                   ; $7d7d: $01 $80 $00
	add  b                                           ; $7d80: $80
	dec  b                                           ; $7d81: $05
	add  b                                           ; $7d82: $80
	ld   a, [hl+]                                    ; $7d83: $2a
	add  b                                           ; $7d84: $80
	ld   d, l                                        ; $7d85: $55
	add  b                                           ; $7d86: $80
	xor  e                                           ; $7d87: $ab
	add  b                                           ; $7d88: $80
	dec  b                                           ; $7d89: $05
	adc  d                                           ; $7d8a: $8a
	nop                                              ; $7d8b: $00
	add  b                                           ; $7d8c: $80
	ld   a, [bc]                                     ; $7d8d: $0a
	add  b                                           ; $7d8e: $80
	ld   bc, $2a80                                   ; $7d8f: $01 $80 $2a
	add  b                                           ; $7d92: $80
	ld   a, l                                        ; $7d93: $7d
	add  b                                           ; $7d94: $80
	xor  d                                           ; $7d95: $aa
	add  b                                           ; $7d96: $80
	rst  $10                                         ; $7d97: $d7
	add  b                                           ; $7d98: $80
	xor  $80                                         ; $7d99: $ee $80
	ld   e, c                                        ; $7d9b: $59
	add  b                                           ; $7d9c: $80
	ld   [$5580], a                                  ; $7d9d: $ea $80 $55
	adc  b                                           ; $7da0: $88
	nop                                              ; $7da1: $00
	add  b                                           ; $7da2: $80
	ld   d, h                                        ; $7da3: $54
	add  b                                           ; $7da4: $80
	nop                                              ; $7da5: $00
	add  b                                           ; $7da6: $80
	ld   d, l                                        ; $7da7: $55
	add  b                                           ; $7da8: $80
	xor  d                                           ; $7da9: $aa
	add  b                                           ; $7daa: $80
	push af                                          ; $7dab: $f5
	add  b                                           ; $7dac: $80
	ei                                               ; $7dad: $fb
	add  b                                           ; $7dae: $80
	ld   [hl], a                                     ; $7daf: $77
	add  b                                           ; $7db0: $80
	cp   d                                           ; $7db1: $ba
	add  b                                           ; $7db2: $80
	push af                                          ; $7db3: $f5
	add  b                                           ; $7db4: $80
	xor  d                                           ; $7db5: $aa
	add  b                                           ; $7db6: $80
	ld   b, b                                        ; $7db7: $40
	adc  d                                           ; $7db8: $8a
	nop                                              ; $7db9: $00
	add  b                                           ; $7dba: $80
	jr   z, jr_09c_7d3d                              ; $7dbb: $28 $80

	inc  b                                           ; $7dbd: $04
	add  b                                           ; $7dbe: $80
	xor  d                                           ; $7dbf: $aa
	add  b                                           ; $7dc0: $80
	ld   d, l                                        ; $7dc1: $55
	add  b                                           ; $7dc2: $80
	ld   [$f580], a                                  ; $7dc3: $ea $80 $f5
	add  b                                           ; $7dc6: $80
	add  sp, -$80                                    ; $7dc7: $e8 $80
	ld   d, h                                        ; $7dc9: $54
	add  b                                           ; $7dca: $80
	jr   nz, jr_09c_7d67                             ; $7dcb: $20 $9a

	nop                                              ; $7dcd: $00
	add  b                                           ; $7dce: $80
	ld   bc, $0a80                                   ; $7dcf: $01 $80 $0a
	sub  h                                           ; $7dd2: $94
	nop                                              ; $7dd3: $00
	add  b                                           ; $7dd4: $80
	inc  b                                           ; $7dd5: $04
	add  b                                           ; $7dd6: $80
	rrca                                             ; $7dd7: $0f
	add  b                                           ; $7dd8: $80
	ld   [hl], $80                                   ; $7dd9: $36 $80
	ld   d, l                                        ; $7ddb: $55
	add  b                                           ; $7ddc: $80
	xor  e                                           ; $7ddd: $ab
	add  b                                           ; $7dde: $80
	dec  b                                           ; $7ddf: $05
	adc  d                                           ; $7de0: $8a
	nop                                              ; $7de1: $00
	add  b                                           ; $7de2: $80
	ld   a, [bc]                                     ; $7de3: $0a
	add  b                                           ; $7de4: $80
	nop                                              ; $7de5: $00
	add  b                                           ; $7de6: $80
	ld   a, [hl+]                                    ; $7de7: $2a
	add  b                                           ; $7de8: $80
	ld   [hl], a                                     ; $7de9: $77
	add  b                                           ; $7dea: $80
	xor  d                                           ; $7deb: $aa
	add  b                                           ; $7dec: $80
	rst  $30                                         ; $7ded: $f7
	add  b                                           ; $7dee: $80
	xor  $80                                         ; $7def: $ee $80
	ld   e, c                                        ; $7df1: $59
	add  b                                           ; $7df2: $80
	ld   [$5580], a                                  ; $7df3: $ea $80 $55
	add  [hl]                                        ; $7df6: $86
	nop                                              ; $7df7: $00
	add  b                                           ; $7df8: $80
	xor  d                                           ; $7df9: $aa
	add  b                                           ; $7dfa: $80
	nop                                              ; $7dfb: $00
	add  b                                           ; $7dfc: $80

jr_09c_7dfd:
	ld   [hl+], a                                    ; $7dfd: $22
	add  b                                           ; $7dfe: $80
	ld   d, h                                        ; $7dff: $54
	add  b                                           ; $7e00: $80
	xor  d                                           ; $7e01: $aa
	add  b                                           ; $7e02: $80
	db   $ed                                         ; $7e03: $ed
	add  b                                           ; $7e04: $80
	xor  d                                           ; $7e05: $aa
	add  b                                           ; $7e06: $80
	push de                                          ; $7e07: $d5
	add  b                                           ; $7e08: $80
	ldh  [$80], a                                    ; $7e09: $e0 $80
	ld   d, h                                        ; $7e0b: $54
	add  b                                           ; $7e0c: $80
	ld   a, [hl+]                                    ; $7e0d: $2a
	add  b                                           ; $7e0e: $80
	ld   b, b                                        ; $7e0f: $40
	add  [hl]                                        ; $7e10: $86
	nop                                              ; $7e11: $00
	add  b                                           ; $7e12: $80
	add  b                                           ; $7e13: $80
	add  b                                           ; $7e14: $80
	nop                                              ; $7e15: $00
	add  b                                           ; $7e16: $80
	xor  b                                           ; $7e17: $a8
	add  b                                           ; $7e18: $80
	nop                                              ; $7e19: $00
	add  b                                           ; $7e1a: $80
	and  d                                           ; $7e1b: $a2
	add  b                                           ; $7e1c: $80
	ld   d, b                                        ; $7e1d: $50
	add  b                                           ; $7e1e: $80
	add  b                                           ; $7e1f: $80
	add  b                                           ; $7e20: $80
	nop                                              ; $7e21: $00
	add  b                                           ; $7e22: $80
	and  b                                           ; $7e23: $a0
	add  b                                           ; $7e24: $80
	ld   b, b                                        ; $7e25: $40
	sbc  h                                           ; $7e26: $9c
	nop                                              ; $7e27: $00
	add  b                                           ; $7e28: $80
	dec  b                                           ; $7e29: $05
	sbc  h                                           ; $7e2a: $9c
	nop                                              ; $7e2b: $00
	add  b                                           ; $7e2c: $80
	ld   d, l                                        ; $7e2d: $55
	add  b                                           ; $7e2e: $80
	xor  d                                           ; $7e2f: $aa
	sub  [hl]                                        ; $7e30: $96
	nop                                              ; $7e31: $00
	add  b                                           ; $7e32: $80
	dec  d                                           ; $7e33: $15
	add  b                                           ; $7e34: $80
	cp   a                                           ; $7e35: $bf
	add  b                                           ; $7e36: $80
	ld   a, a                                        ; $7e37: $7f
	add  b                                           ; $7e38: $80
	xor  d                                           ; $7e39: $aa
	sub  d                                           ; $7e3a: $92
	nop                                              ; $7e3b: $00
	add  b                                           ; $7e3c: $80
	inc  b                                           ; $7e3d: $04
	add  b                                           ; $7e3e: $80
	cp   d                                           ; $7e3f: $ba
	add  b                                           ; $7e40: $80
	ld   [hl], l                                     ; $7e41: $75
	add  b                                           ; $7e42: $80
	rst  $38                                         ; $7e43: $ff
	add  b                                           ; $7e44: $80
	push de                                          ; $7e45: $d5
	add  b                                           ; $7e46: $80
	xor  d                                           ; $7e47: $aa
	sub  h                                           ; $7e48: $94
	nop                                              ; $7e49: $00
	add  b                                           ; $7e4a: $80
	and  b                                           ; $7e4b: $a0
	add  b                                           ; $7e4c: $80
	ld   b, l                                        ; $7e4d: $45
	add  b                                           ; $7e4e: $80
	add  sp, -$80                                    ; $7e4f: $e8 $80
	ld   d, b                                        ; $7e51: $50
	add  b                                           ; $7e52: $80
	xor  b                                           ; $7e53: $a8
	sbc  d                                           ; $7e54: $9a
	nop                                              ; $7e55: $00
	add  b                                           ; $7e56: $80
	dec  b                                           ; $7e57: $05
	sbc  h                                           ; $7e58: $9c
	nop                                              ; $7e59: $00
	add  b                                           ; $7e5a: $80
	ld   d, l                                        ; $7e5b: $55
	add  b                                           ; $7e5c: $80
	xor  d                                           ; $7e5d: $aa
	sub  [hl]                                        ; $7e5e: $96
	nop                                              ; $7e5f: $00
	add  b                                           ; $7e60: $80
	dec  d                                           ; $7e61: $15
	add  b                                           ; $7e62: $80
	cp   a                                           ; $7e63: $bf
	add  b                                           ; $7e64: $80
	rst  $10                                         ; $7e65: $d7
	add  b                                           ; $7e66: $80
	cp   d                                           ; $7e67: $ba
	sub  d                                           ; $7e68: $92
	nop                                              ; $7e69: $00
	add  b                                           ; $7e6a: $80
	inc  b                                           ; $7e6b: $04
	add  b                                           ; $7e6c: $80
	cp   d                                           ; $7e6d: $ba
	add  b                                           ; $7e6e: $80
	ld   d, l                                        ; $7e6f: $55
	add  b                                           ; $7e70: $80
	ld   a, [$fd80]                                  ; $7e71: $fa $80 $fd
	add  b                                           ; $7e74: $80
	cp   $80                                         ; $7e75: $fe $80
	ld   d, h                                        ; $7e77: $54
	adc  [hl]                                        ; $7e78: $8e
	nop                                              ; $7e79: $00
	add  b                                           ; $7e7a: $80
	jr   z, jr_09c_7dfd                              ; $7e7b: $28 $80

	nop                                              ; $7e7d: $00
	add  b                                           ; $7e7e: $80
	adc  b                                           ; $7e7f: $88
	add  b                                           ; $7e80: $80
	ld   d, l                                        ; $7e81: $55
	add  b                                           ; $7e82: $80
	xor  d                                           ; $7e83: $aa
	add  b                                           ; $7e84: $80
	ld   d, l                                        ; $7e85: $55
	add  b                                           ; $7e86: $80
	xor  b                                           ; $7e87: $a8
	sbc  d                                           ; $7e88: $9a
	nop                                              ; $7e89: $00
	add  b                                           ; $7e8a: $80
	dec  b                                           ; $7e8b: $05
	sbc  h                                           ; $7e8c: $9c
	nop                                              ; $7e8d: $00
	add  b                                           ; $7e8e: $80
	ld   d, l                                        ; $7e8f: $55
	add  b                                           ; $7e90: $80
	xor  d                                           ; $7e91: $aa
	sub  [hl]                                        ; $7e92: $96
	nop                                              ; $7e93: $00
	add  b                                           ; $7e94: $80
	dec  b                                           ; $7e95: $05
	add  b                                           ; $7e96: $80
	jp   c, $5f80                                    ; $7e97: $da $80 $5f

	add  b                                           ; $7e9a: $80
	xor  d                                           ; $7e9b: $aa
	sub  h                                           ; $7e9c: $94
	nop                                              ; $7e9d: $00
	add  b                                           ; $7e9e: $80
	ld   [bc], a                                     ; $7e9f: $02
	add  b                                           ; $7ea0: $80
	ld   d, l                                        ; $7ea1: $55
	add  b                                           ; $7ea2: $80
	xor  e                                           ; $7ea3: $ab
	add  b                                           ; $7ea4: $80
	rst  $38                                         ; $7ea5: $ff
	add  b                                           ; $7ea6: $80
	xor  d                                           ; $7ea7: $aa
	add  b                                           ; $7ea8: $80
	ld   d, h                                        ; $7ea9: $54
	sub  d                                           ; $7eaa: $92
	nop                                              ; $7eab: $00
	add  b                                           ; $7eac: $80
	xor  b                                           ; $7ead: $a8
	add  b                                           ; $7eae: $80
	call nc, $0880                                   ; $7eaf: $d4 $80 $08
	add  b                                           ; $7eb2: $80
	ld   d, h                                        ; $7eb3: $54
	add  b                                           ; $7eb4: $80
	xor  d                                           ; $7eb5: $aa
	adc  c                                           ; $7eb6: $89
	nop                                              ; $7eb7: $00
	add  b                                           ; $7eb8: $80
	ld   a, a                                        ; $7eb9: $7f
	add  b                                           ; $7eba: $80
	ccf                                              ; $7ebb: $3f
	add  b                                           ; $7ebc: $80
	rla                                              ; $7ebd: $17
	add  b                                           ; $7ebe: $80
	ld   a, [bc]                                     ; $7ebf: $0a
	add  b                                           ; $7ec0: $80
	dec  b                                           ; $7ec1: $05
	inc  b                                           ; $7ec2: $04
	ld   [bc], a                                     ; $7ec3: $02
	rlca                                             ; $7ec4: $07
	inc  b                                           ; $7ec5: $04
	rrca                                             ; $7ec6: $0f
	ld   c, $80                                      ; $7ec7: $0e $80
	dec  d                                           ; $7ec9: $15
	add  b                                           ; $7eca: $80
	ld   a, [hl+]                                    ; $7ecb: $2a
	add  b                                           ; $7ecc: $80
	ld   e, a                                        ; $7ecd: $5f
	add  b                                           ; $7ece: $80
	xor  a                                           ; $7ecf: $af
	add  a                                           ; $7ed0: $87
	nop                                              ; $7ed1: $00
	add  d                                           ; $7ed2: $82
	ld   hl, sp-$80                                  ; $7ed3: $f8 $80
	ldh  a, [rTMA]                                   ; $7ed5: $f0 $06
	ldh  [hScriptOpcodeParams], a                                    ; $7ed7: $e0 $a0
	nop                                              ; $7ed9: $00
	and  b                                           ; $7eda: $a0
	ld   h, b                                        ; $7edb: $60
	sbc  $5e                                         ; $7edc: $de $5e
	add  b                                           ; $7ede: $80
	cp   a                                           ; $7edf: $bf
	add  b                                           ; $7ee0: $80
	ld   e, a                                        ; $7ee1: $5f
	add  b                                           ; $7ee2: $80
	xor  a                                           ; $7ee3: $af
	add  b                                           ; $7ee4: $80
	ld   d, a                                        ; $7ee5: $57
	add  b                                           ; $7ee6: $80
	ld   a, [$0086]                                  ; $7ee7: $fa $86 $00
	add  d                                           ; $7eea: $82
	add  b                                           ; $7eeb: $80
	add  b                                           ; $7eec: $80
	ret  nz                                          ; $7eed: $c0

	ld   [de], a                                     ; $7eee: $12
	and  b                                           ; $7eef: $a0
	add  b                                           ; $7ef0: $80
	ldh  [$c0], a                                    ; $7ef1: $e0 $c0
	xor  b                                           ; $7ef3: $a8
	and  b                                           ; $7ef4: $a0
	ld   e, b                                        ; $7ef5: $58
	ld   d, b                                        ; $7ef6: $50
	cp   d                                           ; $7ef7: $ba

jr_09c_7ef8:
	jr   c, jr_09c_7ef8                              ; $7ef8: $38 $fe

	inc  a                                           ; $7efa: $3c
	ld   a, c                                        ; $7efb: $79
	jr   jr_09c_7f22                                 ; $7efc: $18 $24

	inc  b                                           ; $7efe: $04
	dec  bc                                          ; $7eff: $0b
	nop                                              ; $7f00: $00
	push af                                          ; $7f01: $f5
	add  c                                           ; $7f02: $81
	cp   a                                           ; $7f03: $bf
	ld   bc, $5dbd                                   ; $7f04: $01 $bd $5d
	add  b                                           ; $7f07: $80
	ld   e, e                                        ; $7f08: $5b
	dec  bc                                          ; $7f09: $0b
	push af                                          ; $7f0a: $f5
	dec  b                                           ; $7f0b: $05
	ld   l, d                                        ; $7f0c: $6a
	ld   [hl-], a                                    ; $7f0d: $32
	ld   hl, ClearTextBoxDimensionsAndSetDefaultTextStyle                                   ; $7f0e: $21 $09 $14
	inc  [hl]                                        ; $7f11: $34
	stop                                             ; $7f12: $10 $00
	stop                                             ; $7f14: $10 $00
	add  b                                           ; $7f16: $80
	ld   [bc], a                                     ; $7f17: $02
	add  b                                           ; $7f18: $80
	nop                                              ; $7f19: $00
	ld   bc, $0103                                   ; $7f1a: $01 $03 $01
	add  b                                           ; $7f1d: $80
	nop                                              ; $7f1e: $00
	ld   de, $0305                                   ; $7f1f: $11 $05 $03

jr_09c_7f22:
	dec  bc                                          ; $7f22: $0b
	rrca                                             ; $7f23: $0f
	push af                                          ; $7f24: $f5
	pop  af                                          ; $7f25: $f1
	cp   $b8                                         ; $7f26: $fe $b8
	or   l                                           ; $7f28: $b5
	jp   nc, $a98e                                   ; $7f29: $d2 $8e $a9

	ld   e, l                                        ; $7f2c: $5d
	ld   e, [hl]                                     ; $7f2d: $5e
	adc  e                                           ; $7f2e: $8b
	adc  b                                           ; $7f2f: $88
	jr   jr_09c_7f4c                                 ; $7f30: $18 $1a

	add  b                                           ; $7f32: $80
	inc  b                                           ; $7f33: $04
	ld   bc, $0406                                   ; $7f34: $01 $06 $04
	add  b                                           ; $7f37: $80
	ld   [$5701], sp                                 ; $7f38: $08 $01 $57
	ld   d, h                                        ; $7f3b: $54
	add  b                                           ; $7f3c: $80
	xor  [hl]                                        ; $7f3d: $ae
	add  b                                           ; $7f3e: $80
	ld   [hl], h                                     ; $7f3f: $74
	ld   bc, $bebf                                   ; $7f40: $01 $bf $be
	add  b                                           ; $7f43: $80
	ld   a, a                                        ; $7f44: $7f
	add  b                                           ; $7f45: $80
	cp   a                                           ; $7f46: $bf
	add  d                                           ; $7f47: $82
	nop                                              ; $7f48: $00
	ld   d, $80                                      ; $7f49: $16 $80
	nop                                              ; $7f4b: $00

jr_09c_7f4c:
	add  b                                           ; $7f4c: $80
	nop                                              ; $7f4d: $00
	add  b                                           ; $7f4e: $80
	nop                                              ; $7f4f: $00
	add  b                                           ; $7f50: $80
	nop                                              ; $7f51: $00
	add  b                                           ; $7f52: $80
	nop                                              ; $7f53: $00
	add  b                                           ; $7f54: $80
	nop                                              ; $7f55: $00
	add  b                                           ; $7f56: $80
	nop                                              ; $7f57: $00
	add  b                                           ; $7f58: $80
	nop                                              ; $7f59: $00
	add  b                                           ; $7f5a: $80
	nop                                              ; $7f5b: $00
	add  b                                           ; $7f5c: $80
	nop                                              ; $7f5d: $00
	add  b                                           ; $7f5e: $80
	nop                                              ; $7f5f: $00
	add  b                                           ; $7f60: $80
	add  e                                           ; $7f61: $83
	nop                                              ; $7f62: $00
	add  b                                           ; $7f63: $80
	dec  b                                           ; $7f64: $05
	add  b                                           ; $7f65: $80
	ld   a, [bc]                                     ; $7f66: $0a
	add  b                                           ; $7f67: $80
	dec  d                                           ; $7f68: $15
	add  b                                           ; $7f69: $80
	ld   a, [bc]                                     ; $7f6a: $0a
	ld   b, $15                                      ; $7f6b: $06 $15
	inc  b                                           ; $7f6d: $04
	dec  de                                          ; $7f6e: $1b
	nop                                              ; $7f6f: $00
	rla                                              ; $7f70: $17
	ld   [$800a], sp                                 ; $7f71: $08 $0a $80
	dec  b                                           ; $7f74: $05
	add  b                                           ; $7f75: $80
	ld   d, $80                                      ; $7f76: $16 $80
	dec  bc                                          ; $7f78: $0b
	inc  b                                           ; $7f79: $04
	dec  d                                           ; $7f7a: $15
	db   $10                                         ; $7f7b: $10
	ld   a, [bc]                                     ; $7f7c: $0a
	nop                                              ; $7f7d: $00
	db   $10                                         ; $7f7e: $10
	add  b                                           ; $7f7f: $80
	ld   [$1080], sp                                 ; $7f80: $08 $80 $10
	add  b                                           ; $7f83: $80
	nop                                              ; $7f84: $00
	add  b                                           ; $7f85: $80
	rst  $38                                         ; $7f86: $ff
	add  b                                           ; $7f87: $80
	cp   a                                           ; $7f88: $bf
	add  b                                           ; $7f89: $80
	ld   e, a                                        ; $7f8a: $5f
	dec  bc                                          ; $7f8b: $0b
	xor  a                                           ; $7f8c: $af
	cpl                                              ; $7f8d: $2f
	db   $dd                                         ; $7f8e: $dd
	ld   e, l                                        ; $7f8f: $5d
	xor  e                                           ; $7f90: $ab
	dec  hl                                          ; $7f91: $2b
	ld   b, l                                        ; $7f92: $45
	push bc                                          ; $7f93: $c5
	xor  d                                           ; $7f94: $aa
	ld   a, [hl+]                                    ; $7f95: $2a
	pop  bc                                          ; $7f96: $c1
	ld   b, c                                        ; $7f97: $41
	add  b                                           ; $7f98: $80
	add  b                                           ; $7f99: $80
	add  b                                           ; $7f9a: $80
	ld   b, b                                        ; $7f9b: $40
	add  b                                           ; $7f9c: $80

jr_09c_7f9d:
	ret  nz                                          ; $7f9d: $c0

	add  b                                           ; $7f9e: $80
	add  c                                           ; $7f9f: $81
	add  b                                           ; $7fa0: $80
	ld   a, [bc]                                     ; $7fa1: $0a
	add  b                                           ; $7fa2: $80
	dec  d                                           ; $7fa3: $15
	add  b                                           ; $7fa4: $80
	ld   a, [hl+]                                    ; $7fa5: $2a
	db   $10                                         ; $7fa6: $10
	ld   bc, $0b00                                   ; $7fa7: $01 $00 $0b
	nop                                              ; $7faa: $00
	rra                                              ; $7fab: $1f
	nop                                              ; $7fac: $00
	ccf                                              ; $7fad: $3f
	nop                                              ; $7fae: $00
	dec  d                                           ; $7faf: $15
	ld   hl, $1024                                   ; $7fb0: $21 $24 $10
	ld   d, $20                                      ; $7fb3: $16 $20
	ld   [hl+], a                                    ; $7fb5: $22
	ld   [bc], a                                     ; $7fb6: $02
	inc  a                                           ; $7fb7: $3c
	adc  l                                           ; $7fb8: $8d
	nop                                              ; $7fb9: $00
	add  b                                           ; $7fba: $80
	ld   d, l                                        ; $7fbb: $55
	ld   b, $ab                                      ; $7fbc: $06 $ab
	dec  hl                                          ; $7fbe: $2b

jr_09c_7fbf:
	db   $dd                                         ; $7fbf: $dd
	ld   e, l                                        ; $7fc0: $5d
	xor  a                                           ; $7fc1: $af
	cpl                                              ; $7fc2: $2f
	ld   a, [hl]                                     ; $7fc3: $7e
	add  b                                           ; $7fc4: $80
	cp   $82                                         ; $7fc5: $fe $82
	ld   a, [hl]                                     ; $7fc7: $7e
	nop                                              ; $7fc8: $00
	cp   $a6                                         ; $7fc9: $fe $a6
	nop                                              ; $7fcb: $00
	ld   [$0001], sp                                 ; $7fcc: $08 $01 $00
	ld   c, $01                                      ; $7fcf: $0e $01
	ld   de, $2c0f                                   ; $7fd1: $11 $0f $2c
	rra                                              ; $7fd4: $1f
	inc  hl                                          ; $7fd5: $23
	sub  l                                           ; $7fd6: $95
	nop                                              ; $7fd7: $00
	ld   [$00c0], sp                                 ; $7fd8: $08 $c0 $00
	jr   nz, jr_09c_7f9d                             ; $7fdb: $20 $c0

	jr   nc, jr_09c_7fbf                             ; $7fdd: $30 $e0

	ret  z                                           ; $7fdf: $c8

	ldh  a, [$c8]                                    ; $7fe0: $f0 $c8
	sub  a                                           ; $7fe2: $97
	nop                                              ; $7fe3: $00
	nop                                              ; $7fe4: $00
	ld   c, l                                        ; $7fe5: $4d
	add  e                                           ; $7fe6: $83
	jr   c, jr_09c_7fe9                              ; $7fe7: $38 $00

jr_09c_7fe9:
	ld   [hl], l                                     ; $7fe9: $75
	sub  a                                           ; $7fea: $97
	nop                                              ; $7feb: $00
	nop                                              ; $7fec: $00
	ldh  a, [$83]                                    ; $7fed: $f0 $83
	ldh  [rP1], a                                    ; $7fef: $e0 $00
	db   $10                                         ; $7ff1: $10
	rst  $38                                         ; $7ff2: $ff
	nop                                              ; $7ff3: $00
	rst  $38                                         ; $7ff4: $ff
	nop                                              ; $7ff5: $00
	rst  $38                                         ; $7ff6: $ff
	nop                                              ; $7ff7: $00
	rst  $38                                         ; $7ff8: $ff
	nop                                              ; $7ff9: $00
	ld   sp, hl                                      ; $7ffa: $f9
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
