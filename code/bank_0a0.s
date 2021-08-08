; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0a0", ROMX[$4000], BANK[$a0]

	call nc, $8e00                                   ; $4000: $d4 $00 $8e
	nop                                              ; $4003: $00
	rlca                                             ; $4004: $07
	ld   b, $01                                      ; $4005: $06 $01
	ld   a, [bc]                                     ; $4007: $0a
	ld   [bc], a                                     ; $4008: $02
	ld   e, $0e                                      ; $4009: $1e $0e
	ld   a, [hl+]                                    ; $400b: $2a
	ld   a, [bc]                                     ; $400c: $0a
	add  b                                           ; $400d: $80
	dec  bc                                          ; $400e: $0b
	nop                                              ; $400f: $00
	ld   b, h                                        ; $4010: $44
	add  b                                           ; $4011: $80
	inc  b                                           ; $4012: $04
	inc  bc                                          ; $4013: $03

jr_0a0_4014:
	add  l                                           ; $4014: $85
	ld   hl, $fc23                                   ; $4015: $21 $23 $fc
	add  l                                           ; $4018: $85
	nop                                              ; $4019: $00

jr_0a0_401a:
	rlca                                             ; $401a: $07
	rlca                                             ; $401b: $07
	nop                                              ; $401c: $00
	rra                                              ; $401d: $1f
	rlca                                             ; $401e: $07
	ccf                                              ; $401f: $3f
	rra                                              ; $4020: $1f
	rst  $38                                         ; $4021: $ff
	ccf                                              ; $4022: $3f
	add  b                                           ; $4023: $80
	cp   [hl]                                        ; $4024: $be
	nop                                              ; $4025: $00
	sbc  l                                           ; $4026: $9d
	add  b                                           ; $4027: $80
	adc  c                                           ; $4028: $89
	ld   [bc], a                                     ; $4029: $02
	dec  b                                           ; $402a: $05
	call nz, $805c                                   ; $402b: $c4 $5c $80
	inc  c                                           ; $402e: $0c
	ld   b, $24                                      ; $402f: $06 $24
	call nz, $8098                                   ; $4031: $c4 $98 $80
	inc  b                                           ; $4034: $04
	ld   bc, $8502                                   ; $4035: $01 $02 $85
	nop                                              ; $4038: $00
	rlca                                             ; $4039: $07
	ret  nz                                          ; $403a: $c0

	nop                                              ; $403b: $00
	ldh  a, [$c0]                                    ; $403c: $f0 $c0
	adc  h                                           ; $403e: $8c
	add  b                                           ; $403f: $80
	ld   c, a                                        ; $4040: $4f
	ld   c, h                                        ; $4041: $4c
	add  b                                           ; $4042: $80
	cp   [hl]                                        ; $4043: $be
	dec  c                                           ; $4044: $0d
	ld   a, l                                        ; $4045: $7d
	ld   e, l                                        ; $4046: $5d
	ld   e, a                                        ; $4047: $5f
	rrca                                             ; $4048: $0f
	add  b                                           ; $4049: $80
	or   b                                           ; $404a: $b0
	and  b                                           ; $404b: $a0
	ldh  [$90], a                                    ; $404c: $e0 $90
	adc  h                                           ; $404e: $8c
	inc  h                                           ; $404f: $24
	ld   b, a                                        ; $4050: $47
	add  e                                           ; $4051: $83
	inc  bc                                          ; $4052: $03
	adc  [hl]                                        ; $4053: $8e
	nop                                              ; $4054: $00
	dec  bc                                          ; $4055: $0b
	adc  b                                           ; $4056: $88
	ld   [hl], h                                     ; $4057: $74
	adc  h                                           ; $4058: $8c
	adc  b                                           ; $4059: $88
	add  sp, -$20                                    ; $405a: $e8 $e0
	ld   a, b                                        ; $405c: $78
	ld   [hl], b                                     ; $405d: $70
	inc  c                                           ; $405e: $0c
	ld   [$e4e6], sp                                 ; $405f: $08 $e6 $e4
	add  b                                           ; $4062: $80
	ld   a, b                                        ; $4063: $78
	ld   [bc], a                                     ; $4064: $02
	inc  a                                           ; $4065: $3c
	cp   l                                           ; $4066: $bd
	ld   a, a                                        ; $4067: $7f
	adc  [hl]                                        ; $4068: $8e
	nop                                              ; $4069: $00
	add  b                                           ; $406a: $80
	ld   bc, $0084                                   ; $406b: $01 $84 $00
	nop                                              ; $406e: $00
	ld   bc, $0080                                   ; $406f: $01 $80 $00
	nop                                              ; $4072: $00
	ld   bc, $0080                                   ; $4073: $01 $80 $00
	add  c                                           ; $4076: $81
	ld   bc, $0002                                   ; $4077: $01 $02 $00
	ld   [bc], a                                     ; $407a: $02
	inc  bc                                          ; $407b: $03
	add  a                                           ; $407c: $87
	nop                                              ; $407d: $00
	nop                                              ; $407e: $00
	ld   bc, $0085                                   ; $407f: $01 $85 $00
	nop                                              ; $4082: $00
	ld   bc, $009a                                   ; $4083: $01 $9a $00
	dec  b                                           ; $4086: $05
	add  b                                           ; $4087: $80
	nop                                              ; $4088: $00
	ld   b, b                                        ; $4089: $40
	jr   nz, jr_0a0_409c                             ; $408a: $20 $10

	ld   [hl], b                                     ; $408c: $70
	add  c                                           ; $408d: $81
	ld   b, b                                        ; $408e: $40
	add  c                                           ; $408f: $81
	nop                                              ; $4090: $00
	nop                                              ; $4091: $00
	jr   nz, jr_0a0_4014                             ; $4092: $20 $80

	ld   b, b                                        ; $4094: $40
	nop                                              ; $4095: $00
	ld   h, b                                        ; $4096: $60
	add  b                                           ; $4097: $80
	jr   nc, jr_0a0_401a                             ; $4098: $30 $80

	db   $10                                         ; $409a: $10
	add  c                                           ; $409b: $81

jr_0a0_409c:
	nop                                              ; $409c: $00
	add  c                                           ; $409d: $81
	add  b                                           ; $409e: $80
	ld   bc, $8000                                   ; $409f: $01 $00 $80
	add  l                                           ; $40a2: $85
	nop                                              ; $40a3: $00
	nop                                              ; $40a4: $00
	add  b                                           ; $40a5: $80
	sub  e                                           ; $40a6: $93
	nop                                              ; $40a7: $00

jr_0a0_40a8:
	inc  b                                           ; $40a8: $04
	rlca                                             ; $40a9: $07
	nop                                              ; $40aa: $00
	ld   a, a                                        ; $40ab: $7f
	rlca                                             ; $40ac: $07
	add  b                                           ; $40ad: $80
	add  b                                           ; $40ae: $80
	ld   a, a                                        ; $40af: $7f
	add  b                                           ; $40b0: $80
	rst  $38                                         ; $40b1: $ff
	add  b                                           ; $40b2: $80
	cp   $80                                         ; $40b3: $fe $80
	db   $fd                                         ; $40b5: $fd
	add  d                                           ; $40b6: $82
	ei                                               ; $40b7: $fb
	add  c                                           ; $40b8: $81
	or   $05                                         ; $40b9: $f6 $05
	inc  b                                           ; $40bb: $04
	ld   [bc], a                                     ; $40bc: $02
	rra                                              ; $40bd: $1f
	rrca                                             ; $40be: $0f
	add  hl, sp                                      ; $40bf: $39
	add  hl, de                                      ; $40c0: $19
	add  b                                           ; $40c1: $80
	inc  e                                           ; $40c2: $1c
	ld   bc, $3e7e                                   ; $40c3: $01 $7e $3e
	add  b                                           ; $40c6: $80
	ccf                                              ; $40c7: $3f
	ld   [hl], $b8                                   ; $40c8: $36 $b8

jr_0a0_40ca:
	jr   c, jr_0a0_40cc                              ; $40ca: $38 $00

jr_0a0_40cc:
	add  [hl]                                        ; $40cc: $86
	jr   c, jr_0a0_40cf                              ; $40cd: $38 $00

jr_0a0_40cf:
	adc  $00                                         ; $40cf: $ce $00
	cp   a                                           ; $40d1: $bf
	nop                                              ; $40d2: $00
	ld   [hl], b                                     ; $40d3: $70
	nop                                              ; $40d4: $00
	jp   $0400                                       ; $40d5: $c3 $00 $04


	nop                                              ; $40d8: $00
	adc  a                                           ; $40d9: $8f
	nop                                              ; $40da: $00
	ld   [$c000], sp                                 ; $40db: $08 $00 $c0
	ld   b, b                                        ; $40de: $40
	ld   h, b                                        ; $40df: $60
	jr   nz, jr_0a0_4112                             ; $40e0: $20 $30

	db   $10                                         ; $40e2: $10
	jr   @+$4a                                       ; $40e3: $18 $48

	rrca                                             ; $40e5: $0f
	jr   nz, jr_0a0_40a8                             ; $40e6: $20 $c0

	rla                                              ; $40e8: $17
	rst  $28                                         ; $40e9: $ef
	inc  bc                                          ; $40ea: $03
	ld   d, a                                        ; $40eb: $57
	inc  bc                                          ; $40ec: $03
	pop  bc                                          ; $40ed: $c1
	nop                                              ; $40ee: $00
	adc  $00                                         ; $40ef: $ce $00
	call nc, $c100                                   ; $40f1: $d4 $00 $c1
	nop                                              ; $40f4: $00
	add  hl, de                                      ; $40f5: $19
	nop                                              ; $40f6: $00
	call nz, Call_0a0_4b00                           ; $40f7: $c4 $00 $4b
	nop                                              ; $40fa: $00
	cp   d                                           ; $40fb: $ba
	nop                                              ; $40fc: $00
	pop  bc                                          ; $40fd: $c1
	inc  b                                           ; $40fe: $04
	inc  c                                           ; $40ff: $0c
	add  b                                           ; $4100: $80
	dec  c                                           ; $4101: $0d
	inc  e                                           ; $4102: $1c
	ld   [$101b], sp                                 ; $4103: $08 $1b $10
	push af                                          ; $4106: $f5
	nop                                              ; $4107: $00
	jr   jr_0a0_40ca                                 ; $4108: $18 $c0

	ldh  [$80], a                                    ; $410a: $e0 $80
	ret  nz                                          ; $410c: $c0

	nop                                              ; $410d: $00
	add  b                                           ; $410e: $80
	nop                                              ; $410f: $00
	cp   $00                                         ; $4110: $fe $00

jr_0a0_4112:
	rst  $30                                         ; $4112: $f7
	nop                                              ; $4113: $00
	dec  c                                           ; $4114: $0d
	nop                                              ; $4115: $00
	add  [hl]                                        ; $4116: $86
	nop                                              ; $4117: $00
	ld   b, b                                        ; $4118: $40
	nop                                              ; $4119: $00
	ldh  [c], a                                      ; $411a: $e2
	nop                                              ; $411b: $00
	jr   nz, jr_0a0_411e                             ; $411c: $20 $00

jr_0a0_411e:
	push bc                                          ; $411e: $c5
	cp   b                                           ; $411f: $b8
	add  b                                           ; $4120: $80
	or   b                                           ; $4121: $b0
	ld   bc, $0084                                   ; $4122: $01 $84 $00
	add  b                                           ; $4125: $80

jr_0a0_4126:
	ld   [hl], b                                     ; $4126: $70
	add  b                                           ; $4127: $80
	ldh  a, [$80]                                    ; $4128: $f0 $80
	ldh  [$08], a                                    ; $412a: $e0 $08
	call nz, $0ac8                                   ; $412c: $c4 $c8 $0a
	jr   jr_0a0_4156                                 ; $412f: $18 $25

	nop                                              ; $4131: $00
	ld   bc, $4000                                   ; $4132: $01 $00 $40
	add  c                                           ; $4135: $81
	nop                                              ; $4136: $00
	ld   [bc], a                                     ; $4137: $02
	add  c                                           ; $4138: $81
	nop                                              ; $4139: $00
	ld   [bc], a                                     ; $413a: $02
	add  e                                           ; $413b: $83
	nop                                              ; $413c: $00
	ld   a, [bc]                                     ; $413d: $0a
	pop  bc                                          ; $413e: $c1
	nop                                              ; $413f: $00
	ld   hl, sp-$40                                  ; $4140: $f8 $c0
	rst  $38                                         ; $4142: $ff
	ld   hl, sp-$20                                  ; $4143: $f8 $e0
	rst  $38                                         ; $4145: $ff
	rst  JumpTable                                         ; $4146: $df
	rst  $38                                         ; $4147: $ff
	cp   a                                           ; $4148: $bf
	add  c                                           ; $4149: $81
	rst  $38                                         ; $414a: $ff
	nop                                              ; $414b: $00
	ld   a, a                                        ; $414c: $7f
	add  [hl]                                        ; $414d: $86
	rst  $38                                         ; $414e: $ff
	add  h                                           ; $414f: $84
	ld   a, a                                        ; $4150: $7f
	add  c                                           ; $4151: $81
	rst  $38                                         ; $4152: $ff
	add  h                                           ; $4153: $84
	nop                                              ; $4154: $00
	inc  b                                           ; $4155: $04

jr_0a0_4156:
	ldh  a, [rP1]                                    ; $4156: $f0 $00
	inc  c                                           ; $4158: $0c
	ldh  a, [$f3]                                    ; $4159: $f0 $f3
	add  b                                           ; $415b: $80
	db   $fc                                         ; $415c: $fc
	sub  c                                           ; $415d: $91
	rst  $38                                         ; $415e: $ff
	adc  d                                           ; $415f: $8a
	nop                                              ; $4160: $00
	ld   b, $c0                                      ; $4161: $06 $c0
	nop                                              ; $4163: $00
	jr   nc, jr_0a0_4126                             ; $4164: $30 $c0

	call z, $f3f0                                    ; $4166: $cc $f0 $f3
	add  b                                           ; $4169: $80
	db   $fc                                         ; $416a: $fc
	add  l                                           ; $416b: $85
	rst  $38                                         ; $416c: $ff
	inc  b                                           ; $416d: $04
	rst  JumpTable                                         ; $416e: $df
	rst  $38                                         ; $416f: $ff
	cp   a                                           ; $4170: $bf
	cp   $61                                         ; $4171: $fe $61
	add  c                                           ; $4173: $81
	nop                                              ; $4174: $00
	ld   b, $80                                      ; $4175: $06 $80
	nop                                              ; $4177: $00
	ld   b, b                                        ; $4178: $40
	add  b                                           ; $4179: $80
	and  b                                           ; $417a: $a0
	add  b                                           ; $417b: $80
	sub  b                                           ; $417c: $90
	add  c                                           ; $417d: $81
	ld   h, b                                        ; $417e: $60
	inc  b                                           ; $417f: $04
	ld   b, b                                        ; $4180: $40
	ldh  [hScriptOpcodeParams], a                                    ; $4181: $e0 $a0
	ldh  [$60], a                                    ; $4183: $e0 $60
	add  e                                           ; $4185: $83
	ldh  [rP1], a                                    ; $4186: $e0 $00
	ret  nc                                          ; $4188: $d0

	add  c                                           ; $4189: $81
	ret  nz                                          ; $418a: $c0

	nop                                              ; $418b: $00
	and  b                                           ; $418c: $a0
	add  c                                           ; $418d: $81
	add  b                                           ; $418e: $80
	nop                                              ; $418f: $00
	pop  bc                                          ; $4190: $c1
	add  e                                           ; $4191: $83
	nop                                              ; $4192: $00
	nop                                              ; $4193: $00
	ld   bc, $0081                                   ; $4194: $01 $81 $00
	dec  b                                           ; $4197: $05
	ld   bc, $0700                                   ; $4198: $01 $00 $07
	ld   bc, $0709                                   ; $419b: $01 $09 $07
	add  d                                           ; $419e: $82
	ld   b, $04                                      ; $419f: $06 $04
	ld   [bc], a                                     ; $41a1: $02
	rlca                                             ; $41a2: $07
	ld   b, $07                                      ; $41a3: $06 $07
	rra                                              ; $41a5: $1f
	add  c                                           ; $41a6: $81
	rrca                                             ; $41a7: $0f
	inc  d                                           ; $41a8: $14
	ld   h, $1f                                      ; $41a9: $26 $1f
	dec  de                                          ; $41ab: $1b
	rra                                              ; $41ac: $1f
	jr   nz, jr_0a0_41af                             ; $41ad: $20 $00

jr_0a0_41af:
	inc  bc                                          ; $41af: $03
	nop                                              ; $41b0: $00
	inc  c                                           ; $41b1: $0c
	inc  bc                                          ; $41b2: $03
	inc  de                                          ; $41b3: $13
	rlca                                             ; $41b4: $07
	daa                                              ; $41b5: $27
	rla                                              ; $41b6: $17
	ld   d, a                                        ; $41b7: $57
	scf                                              ; $41b8: $37
	dec  [hl]                                        ; $41b9: $35
	cpl                                              ; $41ba: $2f
	xor  a                                           ; $41bb: $af
	ld   l, a                                        ; $41bc: $6f
	ld   l, e                                        ; $41bd: $6b
	add  c                                           ; $41be: $81
	rst  $28                                         ; $41bf: $ef
	rlca                                             ; $41c0: $07
	ld   l, a                                        ; $41c1: $6f
	rst  $28                                         ; $41c2: $ef
	ld   h, a                                        ; $41c3: $67
	ld   l, a                                        ; $41c4: $6f
	dec  hl                                          ; $41c5: $2b
	ld   l, e                                        ; $41c6: $6b
	ld   a, [hl+]                                    ; $41c7: $2a
	dec  hl                                          ; $41c8: $2b
	add  b                                           ; $41c9: $80
	xor  e                                           ; $41ca: $ab
	inc  b                                           ; $41cb: $04
	adc  l                                           ; $41cc: $8d
	xor  l                                           ; $41cd: $ad
	ret  nz                                          ; $41ce: $c0

	nop                                              ; $41cf: $00
	ret  nz                                          ; $41d0: $c0

	add  b                                           ; $41d1: $80
	ccf                                              ; $41d2: $3f
	sbc  c                                           ; $41d3: $99
	rst  $38                                         ; $41d4: $ff
	add  hl, bc                                      ; $41d5: $09
	jp   $0200                                       ; $41d6: $c3 $00 $02


	nop                                              ; $41d9: $00
	and  d                                           ; $41da: $a2
	add  b                                           ; $41db: $80
	or   $e2                                         ; $41dc: $f6 $e2
	rst  $28                                         ; $41de: $ef
	rst  $20                                         ; $41df: $e7
	add  b                                           ; $41e0: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41e1: $cf
	add  b                                           ; $41e2: $80
	cp   a                                           ; $41e3: $bf
	add  b                                           ; $41e4: $80
	ld   b, e                                        ; $41e5: $43
	ld   bc, $0626                                   ; $41e6: $01 $26 $06
	add  b                                           ; $41e9: $80
	ld   c, $01                                      ; $41ea: $0e $01
	ld   a, h                                        ; $41ec: $7c
	ld   e, l                                        ; $41ed: $5d

jr_0a0_41ee:
	add  b                                           ; $41ee: $80
	ld   a, l                                        ; $41ef: $7d
	nop                                              ; $41f0: $00
	ld   sp, hl                                      ; $41f1: $f9
	add  c                                           ; $41f2: $81
	ei                                               ; $41f3: $fb

jr_0a0_41f4:
	nop                                              ; $41f4: $00
	di                                               ; $41f5: $f3
	add  c                                           ; $41f6: $81
	rst  $30                                         ; $41f7: $f7
	nop                                              ; $41f8: $00
	ld   hl, sp-$01                                  ; $41f9: $f8 $ff
	nop                                              ; $41fb: $00
	rst  $38                                         ; $41fc: $ff
	nop                                              ; $41fd: $00
	db   $db                                         ; $41fe: $db
	nop                                              ; $41ff: $00
	nop                                              ; $4200: $00
	rst  $38                                         ; $4201: $ff
	add  b                                           ; $4202: $80
	cp   [hl]                                        ; $4203: $be
	ld   b, $70                                      ; $4204: $06 $70
	ld   a, a                                        ; $4206: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4207: $cf
	rst  $38                                         ; $4208: $ff
	cp   a                                           ; $4209: $bf
	db   $fc                                         ; $420a: $fc
	ld   a, h                                        ; $420b: $7c
	add  b                                           ; $420c: $80
	ld   a, b                                        ; $420d: $78
	add  b                                           ; $420e: $80
	rst  $30                                         ; $420f: $f7
	add  b                                           ; $4210: $80
	rst  $38                                         ; $4211: $ff
	inc  bc                                          ; $4212: $03
	adc  $c0                                         ; $4213: $ce $c0
	ld   c, $00                                      ; $4215: $0e $00
	add  b                                           ; $4217: $80
	call nc, $1580                                   ; $4218: $d4 $80 $15
	add  b                                           ; $421b: $80
	inc  c                                           ; $421c: $0c
	add  b                                           ; $421d: $80
	ret  z                                           ; $421e: $c8

	add  b                                           ; $421f: $80
	add  e                                           ; $4220: $83
	dec  b                                           ; $4221: $05
	add  hl, sp                                      ; $4222: $39
	ld   bc, $00c6                                   ; $4223: $01 $c6 $00
	cp   $00                                         ; $4226: $fe $00
	add  b                                           ; $4228: $80
	rst  $30                                         ; $4229: $f7
	add  b                                           ; $422a: $80
	ld   a, [$7c80]                                  ; $422b: $fa $80 $7c
	add  b                                           ; $422e: $80
	inc  a                                           ; $422f: $3c
	add  b                                           ; $4230: $80
	sbc  $80                                         ; $4231: $de $80
	cp   $80                                         ; $4233: $fe $80
	inc  a                                           ; $4235: $3c
	add  b                                           ; $4236: $80
	dec  a                                           ; $4237: $3d
	add  d                                           ; $4238: $82
	ld   a, l                                        ; $4239: $7d
	add  b                                           ; $423a: $80
	db   $fc                                         ; $423b: $fc
	add  b                                           ; $423c: $80
	cp   $04                                         ; $423d: $fe $04
	ldh  a, [$fe]                                    ; $423f: $f0 $fe
	xor  $fe                                         ; $4241: $ee $fe
	rra                                              ; $4243: $1f
	add  c                                           ; $4244: $81
	db   $ed                                         ; $4245: $ed
	ld   [bc], a                                     ; $4246: $02
	rst  $28                                         ; $4247: $ef
	db   $eb                                         ; $4248: $eb
	add  sp, -$80                                    ; $4249: $e8 $80
	ldh  [$80], a                                    ; $424b: $e0 $80
	cp   $80                                         ; $424d: $fe $80
	rst  $38                                         ; $424f: $ff
	add  b                                           ; $4250: $80
	db   $fc                                         ; $4251: $fc
	ld   [bc], a                                     ; $4252: $02
	ei                                               ; $4253: $fb
	rlca                                             ; $4254: $07
	db   $fc                                         ; $4255: $fc
	add  b                                           ; $4256: $80
	ldh  a, [rP1]                                    ; $4257: $f0 $00
	nop                                              ; $4259: $00
	add  b                                           ; $425a: $80
	inc  b                                           ; $425b: $04
	add  b                                           ; $425c: $80
	call z, $1c80                                    ; $425d: $cc $80 $1c
	add  b                                           ; $4260: $80
	inc  a                                           ; $4261: $3c
	add  c                                           ; $4262: $81
	db   $fc                                         ; $4263: $fc
	ld   bc, $f60a                                   ; $4264: $01 $0a $f6
	add  b                                           ; $4267: $80
	ldh  a, [c]                                      ; $4268: $f2
	add  b                                           ; $4269: $80
	ld   a, b                                        ; $426a: $78
	add  b                                           ; $426b: $80
	jr   c, jr_0a0_41ee                              ; $426c: $38 $80

	inc  c                                           ; $426e: $0c
	nop                                              ; $426f: $00
	nop                                              ; $4270: $00
	add  b                                           ; $4271: $80
	jr   nc, jr_0a0_41f4                             ; $4272: $30 $80

	ld   a, h                                        ; $4274: $7c
	add  b                                           ; $4275: $80
	ld   a, [hl]                                     ; $4276: $7e
	add  h                                           ; $4277: $84
	cp   $84                                         ; $4278: $fe $84
	rst  $38                                         ; $427a: $ff
	add  b                                           ; $427b: $80
	ldh  [rSB], a                                    ; $427c: $e0 $01
	rra                                              ; $427e: $1f
	ld   [$f581], a                                  ; $427f: $ea $81 $f5
	add  b                                           ; $4282: $80
	ld   a, d                                        ; $4283: $7a
	inc  c                                           ; $4284: $0c
	ld   a, [hl-]                                    ; $4285: $3a
	cp   d                                           ; $4286: $ba
	sbc  l                                           ; $4287: $9d
	db   $dd                                         ; $4288: $dd
	ld   c, [hl]                                     ; $4289: $4e
	xor  $a3                                         ; $428a: $ee $a3
	di                                               ; $428c: $f3
	ret  nc                                          ; $428d: $d0

	db   $fc                                         ; $428e: $fc
	inc  e                                           ; $428f: $1c
	rst  $38                                         ; $4290: $ff
	ld   a, a                                        ; $4291: $7f
	add  e                                           ; $4292: $83
	rst  $38                                         ; $4293: $ff
	add  a                                           ; $4294: $87
	ld   a, a                                        ; $4295: $7f
	add  b                                           ; $4296: $80
	rst  $20                                         ; $4297: $e7
	add  l                                           ; $4298: $85
	rst  $28                                         ; $4299: $ef
	nop                                              ; $429a: $00
	rst  $38                                         ; $429b: $ff
	add  e                                           ; $429c: $83
	rst  $30                                         ; $429d: $f7
	nop                                              ; $429e: $00
	rst  $20                                         ; $429f: $e7
	add  d                                           ; $42a0: $82
	db   $fc                                         ; $42a1: $fc
	adc  h                                           ; $42a2: $8c
	cp   $8b                                         ; $42a3: $fe $8b
	rst  $38                                         ; $42a5: $ff
	ld   [$7f9f], sp                                 ; $42a6: $08 $9f $7f
	cpl                                              ; $42a9: $2f
	ccf                                              ; $42aa: $3f
	rra                                              ; $42ab: $1f
	sbc  a                                           ; $42ac: $9f
	add  a                                           ; $42ad: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42ae: $cf
	rst  ToBoot                                         ; $42af: $c7
	add  b                                           ; $42b0: $80
	rst  $20                                         ; $42b1: $e7
	dec  b                                           ; $42b2: $05
	or   $f7                                         ; $42b3: $f6 $f7
	db   $e4                                         ; $42b5: $e4
	cp   $c0                                         ; $42b6: $fe $c0
	db   $db                                         ; $42b8: $db
	adc  d                                           ; $42b9: $8a
	rst  $38                                         ; $42ba: $ff
	ld   c, $7f                                      ; $42bb: $0e $7f
	rst  $38                                         ; $42bd: $ff
	ccf                                              ; $42be: $3f
	cp   a                                           ; $42bf: $bf
	rst  $38                                         ; $42c0: $ff
	db   $fc                                         ; $42c1: $fc
	rst  $38                                         ; $42c2: $ff
	ei                                               ; $42c3: $fb
	rst  $38                                         ; $42c4: $ff
	or   $fe                                         ; $42c5: $f6 $fe
	db   $ed                                         ; $42c7: $ed
	db   $fd                                         ; $42c8: $fd
	db   $dd                                         ; $42c9: $dd
	db   $fd                                         ; $42ca: $fd

Jump_0a0_42cb:
	add  b                                           ; $42cb: $80
	ei                                               ; $42cc: $fb
	inc  b                                           ; $42cd: $04
	or   e                                           ; $42ce: $b3
	di                                               ; $42cf: $f3
	ld   b, b                                        ; $42d0: $40
	db   $fd                                         ; $42d1: $fd
	cp   l                                           ; $42d2: $bd
	add  b                                           ; $42d3: $80
	db   $fd                                         ; $42d4: $fd
	ld   bc, $fafb                                   ; $42d5: $01 $fb $fa
	add  c                                           ; $42d8: $81
	rst  $30                                         ; $42d9: $f7
	ld   [bc], a                                     ; $42da: $02

Jump_0a0_42db:
	ld   [hl], a                                     ; $42db: $77
	rst  $28                                         ; $42dc: $ef
	db   $ed                                         ; $42dd: $ed
	add  c                                           ; $42de: $81
	rst  JumpTable                                         ; $42df: $df
	nop                                              ; $42e0: $00
	inc  hl                                          ; $42e1: $23
	rst  $38                                         ; $42e2: $ff
	nop                                              ; $42e3: $00
	rst  $38                                         ; $42e4: $ff
	nop                                              ; $42e5: $00
	rst  $38                                         ; $42e6: $ff
	nop                                              ; $42e7: $00
	rst  $38                                         ; $42e8: $ff
	nop                                              ; $42e9: $00
	rst  $38                                         ; $42ea: $ff
	nop                                              ; $42eb: $00
	add  sp, $00                                     ; $42ec: $e8 $00
	call nz, $8600                                   ; $42ee: $c4 $00 $86
	nop                                              ; $42f1: $00
	nop                                              ; $42f2: $00
	ld   bc, $0081                                   ; $42f3: $01 $81 $00
	ld   b, $03                                      ; $42f6: $06 $03
	ld   bc, $0100                                   ; $42f8: $01 $00 $01
	nop                                              ; $42fb: $00
	ld   bc, $8506                                   ; $42fc: $01 $06 $85
	ld   [bc], a                                     ; $42ff: $02
	add  b                                           ; $4300: $80
	nop                                              ; $4301: $00
	ld   [$0002], sp                                 ; $4302: $08 $02 $00
	rlca                                             ; $4305: $07
	nop                                              ; $4306: $00
	dec  d                                           ; $4307: $15
	dec  c                                           ; $4308: $0d
	dec  [hl]                                        ; $4309: $35
	dec  de                                          ; $430a: $1b
	dec  bc                                          ; $430b: $0b
	add  d                                           ; $430c: $82
	rla                                              ; $430d: $17
	add  hl, hl                                      ; $430e: $29
	rrca                                             ; $430f: $0f
	ld   c, $0f                                      ; $4310: $0e $0f
	ld   c, $1e                                      ; $4312: $0e $1e
	ld   [$650b], sp                                 ; $4314: $08 $0b $65
	dec  h                                           ; $4317: $25
	ld   hl, $d105                                   ; $4318: $21 $05 $d1
	ld   e, e                                        ; $431b: $5b
	ld   a, [hl+]                                    ; $431c: $2a
	ld   a, e                                        ; $431d: $7b
	ld   [hl], c                                     ; $431e: $71
	or   a                                           ; $431f: $b7
	sub  a                                           ; $4320: $97
	or   a                                           ; $4321: $b7
	and  e                                           ; $4322: $a3
	ld   l, a                                        ; $4323: $6f
	ld   l, $6e                                      ; $4324: $2e $6e
	ld   b, [hl]                                     ; $4326: $46
	ld   e, [hl]                                     ; $4327: $5e
	ld   c, h                                        ; $4328: $4c
	db   $dd                                         ; $4329: $dd
	ld   e, l                                        ; $432a: $5d
	db   $dd                                         ; $432b: $dd
	sbc  l                                           ; $432c: $9d
	cp   l                                           ; $432d: $bd
	sbc  c                                           ; $432e: $99
	cp   e                                           ; $432f: $bb
	dec  sp                                          ; $4330: $3b
	cp   e                                           ; $4331: $bb
	cp   c                                           ; $4332: $b9
	cp   e                                           ; $4333: $bb
	sbc  e                                           ; $4334: $9b
	ld   e, e                                        ; $4335: $5b
	jp   c, Jump_0a0_6b1b                            ; $4336: $da $1b $6b

	add  c                                           ; $4339: $81
	dec  bc                                          ; $433a: $0b
	ld   b, $13                                      ; $433b: $06 $13
	inc  bc                                          ; $433d: $03
	dec  c                                           ; $433e: $0d
	ld   bc, $0002                                   ; $433f: $01 $02 $00
	ld   bc, $0081                                   ; $4342: $01 $81 $00
	dec  c                                           ; $4345: $0d
	jp   nz, $dafd                                   ; $4346: $c2 $fd $da

	ei                                               ; $4349: $fb
	db   $eb                                         ; $434a: $eb
	ei                                               ; $434b: $fb
	cp   e                                           ; $434c: $bb
	ei                                               ; $434d: $fb
	or   d                                           ; $434e: $b2
	ld   a, e                                        ; $434f: $7b
	dec  c                                           ; $4350: $0d
	dec  b                                           ; $4351: $05
	ld   d, $96                                      ; $4352: $16 $96
	add  b                                           ; $4354: $80
	ld   [hl], $00                                   ; $4355: $36 $00
	ld   h, a                                        ; $4357: $67
	add  c                                           ; $4358: $81
	ld   [hl], b                                     ; $4359: $70
	add  b                                           ; $435a: $80
	ldh  a, [rP1]                                    ; $435b: $f0 $00
	ld   [hl], b                                     ; $435d: $70
	add  c                                           ; $435e: $81
	ldh  a, [rSC]                                    ; $435f: $f0 $02
	ld   [hl], b                                     ; $4361: $70
	ldh  a, [$c8]                                    ; $4362: $f0 $c8
	add  a                                           ; $4364: $87
	ldh  [rSC], a                                    ; $4365: $e0 $02
	and  b                                           ; $4367: $a0
	ldh  [$d0], a                                    ; $4368: $e0 $d0
	add  c                                           ; $436a: $81
	ret  nz                                          ; $436b: $c0

	nop                                              ; $436c: $00
	ld   b, b                                        ; $436d: $40
	add  e                                           ; $436e: $83
	ret  nz                                          ; $436f: $c0

	nop                                              ; $4370: $00
	ret  nc                                          ; $4371: $d0

	add  c                                           ; $4372: $81
	ret  nz                                          ; $4373: $c0

	ld   bc, $d0d8                                   ; $4374: $01 $d8 $d0
	add  b                                           ; $4377: $80
	add  sp, $06                                     ; $4378: $e8 $06
	ld   h, h                                        ; $437a: $64
	ld   h, b                                        ; $437b: $60
	sbc  [hl]                                        ; $437c: $9e
	inc  e                                           ; $437d: $1c
	ld   h, c                                        ; $437e: $61
	nop                                              ; $437f: $00
	ldh  [$80], a                                    ; $4380: $e0 $80
	rst  $38                                         ; $4382: $ff
	rla                                              ; $4383: $17
	rst  $28                                         ; $4384: $ef
	db   $eb                                         ; $4385: $eb
	rst  $30                                         ; $4386: $f7
	ldh  a, [$fa]                                    ; $4387: $f0 $fa
	ei                                               ; $4389: $fb
	cp   $ff                                         ; $438a: $fe $ff
	ld   a, l                                        ; $438c: $7d
	push hl                                          ; $438d: $e5
	and  h                                           ; $438e: $a4
	ldh  a, [$d0]                                    ; $438f: $f0 $d0
	cp   $0e                                         ; $4391: $fe $0e
	rra                                              ; $4393: $1f
	rlca                                             ; $4394: $07
	inc  bc                                          ; $4395: $03
	rlca                                             ; $4396: $07
	add  hl, bc                                      ; $4397: $09
	inc  bc                                          ; $4398: $03
	ld   [bc], a                                     ; $4399: $02
	inc  bc                                          ; $439a: $03
	dec  b                                           ; $439b: $05
	add  c                                           ; $439c: $81
	ld   bc, $0202                                   ; $439d: $01 $02 $02
	nop                                              ; $43a0: $00
	db   $fc                                         ; $43a1: $fc
	add  b                                           ; $43a2: $80
	rst  $38                                         ; $43a3: $ff
	ld   bc, $fcfe                                   ; $43a4: $01 $fe $fc
	add  c                                           ; $43a7: $81
	rst  $38                                         ; $43a8: $ff
	add  b                                           ; $43a9: $80
	cpl                                              ; $43aa: $2f
	dec  bc                                          ; $43ab: $0b
	add  e                                           ; $43ac: $83
	inc  bc                                          ; $43ad: $03

jr_0a0_43ae:
	ld   h, b                                        ; $43ae: $60
	and  b                                           ; $43af: $a0
	ld   a, [hl-]                                    ; $43b0: $3a
	ld   e, d                                        ; $43b1: $5a

jr_0a0_43b2:
	rst  $10                                         ; $43b2: $d7
	rst  $28                                         ; $43b3: $ef
	pop  hl                                          ; $43b4: $e1
	rst  $30                                         ; $43b5: $f7
	ldh  a, [c]                                      ; $43b6: $f2
	ei                                               ; $43b7: $fb
	add  b                                           ; $43b8: $80
	db   $fd                                         ; $43b9: $fd
	jr   jr_0a0_43ae                                 ; $43ba: $18 $f2

	cp   $71                                         ; $43bc: $fe $71
	rst  $38                                         ; $43be: $ff
	ld   a, [$bbfb]                                  ; $43bf: $fa $fb $bb
	db   $fd                                         ; $43c2: $fd
	push af                                          ; $43c3: $f5
	db   $fd                                         ; $43c4: $fd
	ld   e, l                                        ; $43c5: $5d
	ld   a, [hl]                                     ; $43c6: $7e
	ld   a, d                                        ; $43c7: $7a
	ld   a, [hl]                                     ; $43c8: $7e
	cp   [hl]                                        ; $43c9: $be
	ld   a, $2e                                      ; $43ca: $3e $2e
	ld   a, $3f                                      ; $43cc: $3e $3f
	dec  a                                           ; $43ce: $3d
	add  hl, sp                                      ; $43cf: $39
	dec  a                                           ; $43d0: $3d
	cp   $7a                                         ; $43d1: $fe $7a
	rst  $38                                         ; $43d3: $ff
	adc  l                                           ; $43d4: $8d
	nop                                              ; $43d5: $00
	ld   [bc], a                                     ; $43d6: $02
	cp   $ff                                         ; $43d7: $fe $ff
	cp   $80                                         ; $43d9: $fe $80
	rst  $38                                         ; $43db: $ff
	add  b                                           ; $43dc: $80
	ld   a, a                                        ; $43dd: $7f
	add  hl, de                                      ; $43de: $19
	cp   l                                           ; $43df: $bd
	or   e                                           ; $43e0: $b3
	ret  nc                                          ; $43e1: $d0

	inc  hl                                          ; $43e2: $23
	ld   [de], a                                     ; $43e3: $12
	inc  bc                                          ; $43e4: $03
	dec  bc                                          ; $43e5: $0b
	di                                               ; $43e6: $f3
	rst  $20                                         ; $43e7: $e7
	di                                               ; $43e8: $f3
	ei                                               ; $43e9: $fb
	rst  $38                                         ; $43ea: $ff
	db   $fd                                         ; $43eb: $fd
	ld   hl, sp-$03                                  ; $43ec: $f8 $fd
	ld   l, [hl]                                     ; $43ee: $6e
	cp   $a6                                         ; $43ef: $fe $a6
	cp   $5e                                         ; $43f1: $fe $5e
	ld   a, [hl]                                     ; $43f3: $7e
	ld   [hl], d                                     ; $43f4: $72
	ld   a, [hl]                                     ; $43f5: $7e
	xor  [hl]                                        ; $43f6: $ae
	cp   [hl]                                        ; $43f7: $be
	or   [hl]                                        ; $43f8: $b6
	add  e                                           ; $43f9: $83
	cp   [hl]                                        ; $43fa: $be
	add  d                                           ; $43fb: $82
	cp   l                                           ; $43fc: $bd
	nop                                              ; $43fd: $00
	ld   e, e                                        ; $43fe: $5b
	add  c                                           ; $43ff: $81
	dec  de                                          ; $4400: $1b
	add  b                                           ; $4401: $80
	ld   d, $06                                      ; $4402: $16 $06
	pop  hl                                          ; $4404: $e1
	ld   hl, $029a                                   ; $4405: $21 $9a $02
	jp   hl                                          ; $4408: $e9


jr_0a0_4409:
	ld   bc, $800e                                   ; $4409: $01 $0e $80
	ld   [bc], a                                     ; $440c: $02
	ld   hl, $0506                                   ; $440d: $21 $06 $05
	inc  b                                           ; $4410: $04
	ld   [bc], a                                     ; $4411: $02
	ld   [$0004], sp                                 ; $4412: $08 $04 $00
	ld   c, b                                        ; $4415: $48

jr_0a0_4416:
	add  b                                           ; $4416: $80
	ldh  [$c0], a                                    ; $4417: $e0 $c0
	ld   [hl], b                                     ; $4419: $70

jr_0a0_441a:
	ldh  [$d8], a                                    ; $441a: $e0 $d8
	or   b                                           ; $441c: $b0
	inc  c                                           ; $441d: $0c
	jr   jr_0a0_43b2                                 ; $441e: $18 $92

	jr   jr_0a0_441a                                 ; $4420: $18 $f8

	inc  a                                           ; $4422: $3c
	cp   a                                           ; $4423: $bf
	sbc  $fe                                         ; $4424: $de $fe
	xor  $c5                                         ; $4426: $ee $c5
	rst  $28                                         ; $4428: $ef
	or   $f7                                         ; $4429: $f6 $f7
	db   $e3                                         ; $442b: $e3
	rst  $30                                         ; $442c: $f7
	ld   a, e                                        ; $442d: $7b
	ei                                               ; $442e: $fb
	dec  sp                                          ; $442f: $3b
	add  c                                           ; $4430: $81
	ld   a, d                                        ; $4431: $7a
	add  b                                           ; $4432: $80
	cp   d                                           ; $4433: $ba
	nop                                              ; $4434: $00
	sbc  d                                           ; $4435: $9a
	add  l                                           ; $4436: $85
	cp   d                                           ; $4437: $ba
	ld   bc, $b4a3                                   ; $4438: $01 $a3 $b4
	add  b                                           ; $443b: $80
	ld   [hl], h                                     ; $443c: $74
	rlca                                             ; $443d: $07
	ld   h, [hl]                                     ; $443e: $66
	ld   l, b                                        ; $443f: $68
	call z, $b8d0                                    ; $4440: $cc $d0 $b8
	and  b                                           ; $4443: $a0
	ld   d, b                                        ; $4444: $50
	ld   b, b                                        ; $4445: $40
	add  b                                           ; $4446: $80
	add  b                                           ; $4447: $80
	ld   [bc], a                                     ; $4448: $02
	jr   nz, jr_0a0_444b                             ; $4449: $20 $00

jr_0a0_444b:
	ret  nz                                          ; $444b: $c0

	add  a                                           ; $444c: $87

jr_0a0_444d:
	nop                                              ; $444d: $00
	nop                                              ; $444e: $00
	add  b                                           ; $444f: $80
	add  c                                           ; $4450: $81
	nop                                              ; $4451: $00
	nop                                              ; $4452: $00
	ret  nz                                          ; $4453: $c0

	add  a                                           ; $4454: $87
	add  b                                           ; $4455: $80
	nop                                              ; $4456: $00
	nop                                              ; $4457: $00
	add  d                                           ; $4458: $82
	jr   nz, jr_0a0_4460                             ; $4459: $20 $05

	nop                                              ; $445b: $00
	add  b                                           ; $445c: $80
	nop                                              ; $445d: $00
	ret  nz                                          ; $445e: $c0

	ld   b, b                                        ; $445f: $40

jr_0a0_4460:
	ret  nz                                          ; $4460: $c0

	adc  c                                           ; $4461: $89
	nop                                              ; $4462: $00
	ld   a, [bc]                                     ; $4463: $0a
	ld   bc, $0700                                   ; $4464: $01 $00 $07
	ld   bc, $0308                                   ; $4467: $01 $08 $03
	inc  de                                          ; $446a: $13
	inc  bc                                          ; $446b: $03
	rrca                                             ; $446c: $0f
	nop                                              ; $446d: $00
	inc  de                                          ; $446e: $13
	sub  e                                           ; $446f: $93
	nop                                              ; $4470: $00
	ld   [$00f0], sp                                 ; $4471: $08 $f0 $00
	jr   nc, jr_0a0_4416                             ; $4474: $30 $a0

	ld   b, b                                        ; $4476: $40
	ret  nz                                          ; $4477: $c0

	jr   nz, jr_0a0_447a                             ; $4478: $20 $00

jr_0a0_447a:
	ret  nz                                          ; $447a: $c0

	sbc  c                                           ; $447b: $99
	nop                                              ; $447c: $00
	ld   b, $38                                      ; $447d: $06 $38
	jr   nc, jr_0a0_4409                             ; $447f: $30 $88

	nop                                              ; $4481: $00
	or   b                                           ; $4482: $b0
	jr   nz, jr_0a0_4495                             ; $4483: $20 $10

	adc  l                                           ; $4485: $8d
	nop                                              ; $4486: $00
	dec  bc                                          ; $4487: $0b
	ld   h, b                                        ; $4488: $60
	nop                                              ; $4489: $00
	db   $fc                                         ; $448a: $fc
	ld   h, b                                        ; $448b: $60
	ld   c, [hl]                                     ; $448c: $4e
	ld   c, h                                        ; $448d: $4c
	sbc  a                                           ; $448e: $9f
	ld   a, $a2                                      ; $448f: $3e $a2
	ld   [hl], d                                     ; $4491: $72
	adc  [hl]                                        ; $4492: $8e
	ld   [bc], a                                     ; $4493: $02

jr_0a0_4494:
	add  b                                           ; $4494: $80

jr_0a0_4495:
	nop                                              ; $4495: $00
	add  d                                           ; $4496: $82
	ld   [bc], a                                     ; $4497: $02
	ld   [bc], a                                     ; $4498: $02
	ld   bc, $0300                                   ; $4499: $01 $00 $03
	add  e                                           ; $449c: $83
	ld   [bc], a                                     ; $449d: $02
	ld   [bc], a                                     ; $449e: $02
	ld   bc, $0300                                   ; $449f: $01 $00 $03
	add  c                                           ; $44a2: $81
	ld   [bc], a                                     ; $44a3: $02
	ld   a, [bc]                                     ; $44a4: $0a
	nop                                              ; $44a5: $00
	ld   bc, $0307                                   ; $44a6: $01 $07 $03
	ld   bc, $0e02                                   ; $44a9: $01 $02 $0e
	dec  b                                           ; $44ac: $05
	ld   bc, $0405                                   ; $44ad: $01 $05 $04
	add  b                                           ; $44b0: $80
	dec  b                                           ; $44b1: $05
	add  l                                           ; $44b2: $85
	inc  bc                                          ; $44b3: $03
	ld   [bc], a                                     ; $44b4: $02
	dec  de                                          ; $44b5: $1b
	dec  bc                                          ; $44b6: $0b
	inc  bc                                          ; $44b7: $03
	add  l                                           ; $44b8: $85
	dec  bc                                          ; $44b9: $0b
	ld   [bc], a                                     ; $44ba: $02
	dec  sp                                          ; $44bb: $3b
	dec  de                                          ; $44bc: $1b
	push af                                          ; $44bd: $f5
	add  b                                           ; $44be: $80
	ret  c                                           ; $44bf: $d8

	ld   bc, $90d0                                   ; $44c0: $01 $d0 $90
	add  c                                           ; $44c3: $81
	add  b                                           ; $44c4: $80
	adc  d                                           ; $44c5: $8a
	nop                                              ; $44c6: $00
	add  b                                           ; $44c7: $80
	jr   nz, @-$7e                                   ; $44c8: $20 $80

	jr   nc, jr_0a0_444d                             ; $44ca: $30 $81

	jr   c, jr_0a0_44d2                              ; $44cc: $38 $04

	inc  a                                           ; $44ce: $3c
	inc  d                                           ; $44cf: $14
	jr   c, jr_0a0_44fa                              ; $44d0: $38 $28

jr_0a0_44d2:
	nop                                              ; $44d2: $00
	add  b                                           ; $44d3: $80
	db   $fc                                         ; $44d4: $fc
	add  b                                           ; $44d5: $80
	ldh  [$81], a                                    ; $44d6: $e0 $81
	nop                                              ; $44d8: $00
	add  b                                           ; $44d9: $80
	ret  nz                                          ; $44da: $c0

Jump_0a0_44db:
	add  b                                           ; $44db: $80
	add  b                                           ; $44dc: $80
	and  d                                           ; $44dd: $a2
	nop                                              ; $44de: $00
	add  b                                           ; $44df: $80
	ld   bc, $008c                                   ; $44e0: $01 $8c $00
	add  b                                           ; $44e3: $80
	jr   c, @-$72                                    ; $44e4: $38 $8c

	nop                                              ; $44e6: $00
	inc  bc                                          ; $44e7: $03
	rst  $38                                         ; $44e8: $ff
	add  a                                           ; $44e9: $87
	ld   a, a                                        ; $44ea: $7f
	rlca                                             ; $44eb: $07
	add  h                                           ; $44ec: $84
	nop                                              ; $44ed: $00
	add  b                                           ; $44ee: $80
	ret  nz                                          ; $44ef: $c0

jr_0a0_44f0:
	inc  b                                           ; $44f0: $04
	add  hl, sp                                      ; $44f1: $39
	jr   z, @+$21                                    ; $44f2: $28 $1f

	ld   bc, $8f0f                                   ; $44f4: $01 $0f $8f
	nop                                              ; $44f7: $00
	add  b                                           ; $44f8: $80
	add  b                                           ; $44f9: $80

jr_0a0_44fa:
	add  d                                           ; $44fa: $82
	nop                                              ; $44fb: $00
	dec  b                                           ; $44fc: $05
	sbc  b                                           ; $44fd: $98
	sub  b                                           ; $44fe: $90
	db   $fc                                         ; $44ff: $fc
	ret  z                                           ; $4500: $c8

	db   $fc                                         ; $4501: $fc
	cp   [hl]                                        ; $4502: $be
	add  c                                           ; $4503: $81
	cp   $00                                         ; $4504: $fe $00
	add  b                                           ; $4506: $80
	adc  c                                           ; $4507: $89
	nop                                              ; $4508: $00
	add  b                                           ; $4509: $80

jr_0a0_450a:
	ld   [$0095], sp                                 ; $450a: $08 $95 $00
	inc  b                                           ; $450d: $04
	ldh  [$d0], a                                    ; $450e: $e0 $d0
	ld   [hl], b                                     ; $4510: $70
	ld   e, b                                        ; $4511: $58
	jr   jr_0a0_4494                                 ; $4512: $18 $80

	inc  b                                           ; $4514: $04
	add  b                                           ; $4515: $80
	inc  bc                                          ; $4516: $03
	add  b                                           ; $4517: $80
	ld   bc, $009c                                   ; $4518: $01 $9c $00
	add  c                                           ; $451b: $81
	add  b                                           ; $451c: $80
	rlca                                             ; $451d: $07
	ret  nz                                          ; $451e: $c0

	nop                                              ; $451f: $00
	ld   h, b                                        ; $4520: $60
	nop                                              ; $4521: $00
	jr   nc, jr_0a0_4524                             ; $4522: $30 $00

jr_0a0_4524:
	jr   @+$0a                                       ; $4524: $18 $08

	add  b                                           ; $4526: $80
	inc  c                                           ; $4527: $0c

jr_0a0_4528:
	add  b                                           ; $4528: $80
	ld   b, $80                                      ; $4529: $06 $80
	inc  bc                                          ; $452b: $03
	add  b                                           ; $452c: $80
	ld   bc, $0080                                   ; $452d: $01 $80 $00
	inc  bc                                          ; $4530: $03
	inc  b                                           ; $4531: $04
	ld   b, $0a                                      ; $4532: $06 $0a
	inc  c                                           ; $4534: $0c
	add  c                                           ; $4535: $81
	inc  d                                           ; $4536: $14
	dec  b                                           ; $4537: $05
	jr   jr_0a0_4562                                 ; $4538: $18 $28

	jr   jr_0a0_4574                                 ; $453a: $18 $38

	jr   nc, jr_0a0_4572                             ; $453c: $30 $34

	add  c                                           ; $453e: $81
	ld   [hl], h                                     ; $453f: $74
	nop                                              ; $4540: $00
	ld   a, b                                        ; $4541: $78
	add  d                                           ; $4542: $82
	ld   l, b                                        ; $4543: $68
	add  b                                           ; $4544: $80

jr_0a0_4545:
	add  sp, $02                                     ; $4545: $e8 $02
	adc  b                                           ; $4547: $88
	ret  c                                           ; $4548: $d8

	ld   e, b                                        ; $4549: $58
	add  c                                           ; $454a: $81
	ret  c                                           ; $454b: $d8

	ld   bc, $8058                                   ; $454c: $01 $58 $80
	add  b                                           ; $454f: $80
	and  b                                           ; $4550: $a0
	add  b                                           ; $4551: $80
	db   $10                                         ; $4552: $10
	rlca                                             ; $4553: $07
	ld   [$0509], sp                                 ; $4554: $08 $09 $05
	inc  d                                           ; $4557: $14
	ld   [de], a                                     ; $4558: $12
	ld   b, $0c                                      ; $4559: $06 $0c
	ld   a, [bc]                                     ; $455b: $0a
	add  b                                           ; $455c: $80

jr_0a0_455d:
	dec  bc                                          ; $455d: $0b
	inc  bc                                          ; $455e: $03
	ld   b, $15                                      ; $455f: $06 $15
	inc  d                                           ; $4561: $14

jr_0a0_4562:
	dec  d                                           ; $4562: $15
	add  d                                           ; $4563: $82
	rla                                              ; $4564: $17
	nop                                              ; $4565: $00
	inc  de                                          ; $4566: $13
	add  l                                           ; $4567: $85
	dec  de                                          ; $4568: $1b
	nop                                              ; $4569: $00
	jr   jr_0a0_44f0                                 ; $456a: $18 $84

	nop                                              ; $456c: $00
	add  b                                           ; $456d: $80
	ret  nz                                          ; $456e: $c0

	add  b                                           ; $456f: $80
	ld   [hl], b                                     ; $4570: $70
	add  b                                           ; $4571: $80

jr_0a0_4572:
	rlca                                             ; $4572: $07
	add  l                                           ; $4573: $85

jr_0a0_4574:
	nop                                              ; $4574: $00
	adc  d                                           ; $4575: $8a
	add  b                                           ; $4576: $80
	add  c                                           ; $4577: $81
	nop                                              ; $4578: $00
	add  b                                           ; $4579: $80
	inc  b                                           ; $457a: $04
	add  b                                           ; $457b: $80
	inc  c                                           ; $457c: $0c
	add  b                                           ; $457d: $80
	jr   c, jr_0a0_4528                              ; $457e: $38 $a8

	nop                                              ; $4580: $00
	add  b                                           ; $4581: $80
	ld   [bc], a                                     ; $4582: $02
	add  b                                           ; $4583: $80
	ld   b, $82                                      ; $4584: $06 $82
	inc  c                                           ; $4586: $0c
	add  b                                           ; $4587: $80
	jr   jr_0a0_450a                                 ; $4588: $18 $80

	jr   nc, @-$7e                                   ; $458a: $30 $80

	jr   nz, @-$79                                   ; $458c: $20 $85

	nop                                              ; $458e: $00
	ld   [$0001], sp                                 ; $458f: $08 $01 $00
	ld   b, $00                                      ; $4592: $06 $00
	ld   [$1703], sp                                 ; $4594: $08 $03 $17
	nop                                              ; $4597: $00
	dec  de                                          ; $4598: $1b
	sub  e                                           ; $4599: $93
	nop                                              ; $459a: $00
	inc  bc                                          ; $459b: $03
	stop                                             ; $459c: $10 $00
	ldh  a, [rP1]                                    ; $459e: $f0 $00
	add  b                                           ; $45a0: $80
	ret  nz                                          ; $45a1: $c0

	ld   [bc], a                                     ; $45a2: $02
	jr   nz, jr_0a0_45a5                             ; $45a3: $20 $00

jr_0a0_45a5:
	ret  nz                                          ; $45a5: $c0

	sbc  e                                           ; $45a6: $9b
	nop                                              ; $45a7: $00
	inc  b                                           ; $45a8: $04
	ld   bc, $0600                                   ; $45a9: $01 $00 $06
	nop                                              ; $45ac: $00
	rlca                                             ; $45ad: $07
	sub  l                                           ; $45ae: $95
	nop                                              ; $45af: $00
	ld   b, $30                                      ; $45b0: $06 $30
	nop                                              ; $45b2: $00
	ld   d, b                                        ; $45b3: $50
	nop                                              ; $45b4: $00
	and  b                                           ; $45b5: $a0
	nop                                              ; $45b6: $00
	ret  nz                                          ; $45b7: $c0

	sbc  c                                           ; $45b8: $99
	nop                                              ; $45b9: $00
	add  b                                           ; $45ba: $80
	jr   c, jr_0a0_45bd                              ; $45bb: $38 $00

jr_0a0_45bd:
	ld   b, h                                        ; $45bd: $44
	add  b                                           ; $45be: $80
	inc  b                                           ; $45bf: $04
	ld   [bc], a                                     ; $45c0: $02
	ld   b, b                                        ; $45c1: $40
	inc  [hl]                                        ; $45c2: $34
	jr   nc, jr_0a0_4545                             ; $45c3: $30 $80

	nop                                              ; $45c5: $00
	add  b                                           ; $45c6: $80
	jr   jr_0a0_455d                                 ; $45c7: $18 $94

	nop                                              ; $45c9: $00
	add  b                                           ; $45ca: $80
	jr   c, @+$01                                    ; $45cb: $38 $ff

	nop                                              ; $45cd: $00
	rst  $38                                         ; $45ce: $ff
	nop                                              ; $45cf: $00
	rst  $38                                         ; $45d0: $ff
	nop                                              ; $45d1: $00
	rst  $38                                         ; $45d2: $ff
	nop                                              ; $45d3: $00
	rst  $38                                         ; $45d4: $ff
	nop                                              ; $45d5: $00
	rst  $38                                         ; $45d6: $ff
	nop                                              ; $45d7: $00
	ld   [$9000], a                                  ; $45d8: $ea $00 $90
	nop                                              ; $45db: $00
	nop                                              ; $45dc: $00
	inc  b                                           ; $45dd: $04
	add  c                                           ; $45de: $81
	ld   bc, $0080                                   ; $45df: $01 $80 $00
	rrca                                             ; $45e2: $0f
	rrca                                             ; $45e3: $0f
	nop                                              ; $45e4: $00
	or   $01                                         ; $45e5: $f6 $01
	dec  c                                           ; $45e7: $0d
	dec  bc                                          ; $45e8: $0b
	dec  sp                                          ; $45e9: $3b
	ld   h, $66                                      ; $45ea: $26 $66
	ld   c, l                                        ; $45ec: $4d
	adc  $f0                                         ; $45ed: $ce $f0
	ld   [hl], d                                     ; $45ef: $72
	ld   a, h                                        ; $45f0: $7c
	db   $fc                                         ; $45f1: $fc
	rst  $38                                         ; $45f2: $ff
	add  b                                           ; $45f3: $80
	ei                                               ; $45f4: $fb
	nop                                              ; $45f5: $00
	pop  af                                          ; $45f6: $f1
	add  c                                           ; $45f7: $81
	push af                                          ; $45f8: $f5
	inc  c                                           ; $45f9: $0c
	or   l                                           ; $45fa: $b5
	or   [hl]                                        ; $45fb: $b6
	ld   h, [hl]                                     ; $45fc: $66
	ld   h, d                                        ; $45fd: $62
	ld   a, l                                        ; $45fe: $7d
	rra                                              ; $45ff: $1f
	sbc  e                                           ; $4600: $9b
	dec  sp                                          ; $4601: $3b
	dec  a                                           ; $4602: $3d
	db   $fd                                         ; $4603: $fd
	ld   a, $be                                      ; $4604: $3e $be
	sbc  a                                           ; $4606: $9f
	add  d                                           ; $4607: $82
	ld   e, a                                        ; $4608: $5f
	inc  bc                                          ; $4609: $03
	reti                                             ; $460a: $d9


	db   $dd                                         ; $460b: $dd
	sbc  b                                           ; $460c: $98
	inc  a                                           ; $460d: $3c
	add  c                                           ; $460e: $81
	nop                                              ; $460f: $00
	nop                                              ; $4610: $00
	ld   h, b                                        ; $4611: $60
	add  b                                           ; $4612: $80
	add  b                                           ; $4613: $80
	dec  de                                          ; $4614: $1b
	ret  nz                                          ; $4615: $c0

	ld   a, l                                        ; $4616: $7d
	ld   h, b                                        ; $4617: $60
	add  d                                           ; $4618: $82
	nop                                              ; $4619: $00
	ld   h, b                                        ; $461a: $60
	jr   nz, @+$3b                                   ; $461b: $20 $39

	ld   [$000f], sp                                 ; $461d: $08 $0f $00
	inc  bc                                          ; $4620: $03
	nop                                              ; $4621: $00
	ld   b, $00                                      ; $4622: $06 $00
	ld   [$1400], sp                                 ; $4624: $08 $00 $14
	inc  bc                                          ; $4627: $03
	inc  hl                                          ; $4628: $23

jr_0a0_4629:
	inc  bc                                          ; $4629: $03
	di                                               ; $462a: $f3
	inc  bc                                          ; $462b: $03
	ld   c, a                                        ; $462c: $4f
	inc  bc                                          ; $462d: $03
	add  a                                           ; $462e: $87
	adc  c                                           ; $462f: $89
	adc  b                                           ; $4630: $88
	add  b                                           ; $4631: $80
	ld   [de], a                                     ; $4632: $12
	inc  c                                           ; $4633: $0c
	ld   b, $05                                      ; $4634: $06 $05
	adc  h                                           ; $4636: $8c
	adc  d                                           ; $4637: $8a
	sbc  b                                           ; $4638: $98
	sub  b                                           ; $4639: $90
	jr   c, @+$2f                                    ; $463a: $38 $2d

	ld   [hl], b                                     ; $463c: $70
	ld   e, b                                        ; $463d: $58
	ldh  [c], a                                      ; $463e: $e2
	ld   c, a                                        ; $463f: $4f
	ld   l, h                                        ; $4640: $6c
	add  d                                           ; $4641: $82
	ret  z                                           ; $4642: $c8

	ld   c, $88                                      ; $4643: $0e $88
	xor  b                                           ; $4645: $a8
	inc  l                                           ; $4646: $2c
	ld   l, h                                        ; $4647: $6c
	ld   e, h                                        ; $4648: $5c
	ld   b, h                                        ; $4649: $44
	ld   c, h                                        ; $464a: $4c
	ret  nz                                          ; $464b: $c0

	db   $f4                                         ; $464c: $f4
	nop                                              ; $464d: $00
	sub  d                                           ; $464e: $92
	ld   e, b                                        ; $464f: $58
	ld   [$2b28], sp                                 ; $4650: $08 $28 $2b
	add  b                                           ; $4653: $80
	inc  l                                           ; $4654: $2c
	ld   bc, $2128                                   ; $4655: $01 $28 $21
	add  b                                           ; $4658: $80
	inc  h                                           ; $4659: $24
	add  hl, bc                                      ; $465a: $09
	rla                                              ; $465b: $17
	ld   d, e                                        ; $465c: $53
	ld   e, e                                        ; $465d: $5b
	add  hl, sp                                      ; $465e: $39
	ld   bc, $001c                                   ; $465f: $01 $1c $00
	ld   [bc], a                                     ; $4662: $02
	jr   c, @+$3b                                    ; $4663: $38 $39

	add  b                                           ; $4665: $80
	ld   a, h                                        ; $4666: $7c
	ld   a, [bc]                                     ; $4667: $0a
	ld   a, $be                                      ; $4668: $3e $be
	ld   a, $fe                                      ; $466a: $3e $fe
	rra                                              ; $466c: $1f
	ccf                                              ; $466d: $3f
	cp   a                                           ; $466e: $bf
	rst  $28                                         ; $466f: $ef
	rst  JumpTable                                         ; $4670: $df
	db   $e3                                         ; $4671: $e3
	inc  bc                                          ; $4672: $03
	add  b                                           ; $4673: $80
	dec  b                                           ; $4674: $05
	inc  b                                           ; $4675: $04
	inc  b                                           ; $4676: $04
	ld   b, l                                        ; $4677: $45
	ld   e, e                                        ; $4678: $5b
	ld   c, d                                        ; $4679: $4a
	ld   e, d                                        ; $467a: $5a
	add  b                                           ; $467b: $80
	jp   z, $8a01                                    ; $467c: $ca $01 $8a

	adc  h                                           ; $467f: $8c
	add  b                                           ; $4680: $80
	ld   c, $04                                      ; $4681: $0e $04
	ld   d, $66                                      ; $4683: $16 $66
	db   $ec                                         ; $4685: $ec
	ld   a, h                                        ; $4686: $7c
	db   $dd                                         ; $4687: $dd
	add  b                                           ; $4688: $80
	call c, $f80c                                    ; $4689: $dc $0c $f8
	cp   d                                           ; $468c: $ba
	ld   a, [$737a]                                  ; $468d: $fa $7a $73
	halt                                             ; $4690: $76
	ld   [hl], l                                     ; $4691: $75
	ld   [hl], h                                     ; $4692: $74
	db   $e4                                         ; $4693: $e4
	ldh  [$60], a                                    ; $4694: $e0 $60
	sub  h                                           ; $4696: $94
	ld   [$0081], sp                                 ; $4697: $08 $81 $00
	add  b                                           ; $469a: $80
	jr   nc, jr_0a0_46a1                             ; $469b: $30 $04

	ld   hl, sp+$08                                  ; $469d: $f8 $08
	jr   c, jr_0a0_46e1                              ; $469f: $38 $40

jr_0a0_46a1:
	adc  b                                           ; $46a1: $88
	add  c                                           ; $46a2: $81
	nop                                              ; $46a3: $00
	ld   [bc], a                                     ; $46a4: $02
	inc  hl                                          ; $46a5: $23
	ld   [bc], a                                     ; $46a6: $02
	jr   nz, jr_0a0_4629                             ; $46a7: $20 $80

	nop                                              ; $46a9: $00
	nop                                              ; $46aa: $00
	ld   bc, $1880                                   ; $46ab: $01 $80 $18
	inc  b                                           ; $46ae: $04
	ld   a, $20                                      ; $46af: $3e $20
	add  hl, sp                                      ; $46b1: $39
	inc  b                                           ; $46b2: $04
	inc  hl                                          ; $46b3: $23
	add  c                                           ; $46b4: $81
	nop                                              ; $46b5: $00
	inc  b                                           ; $46b6: $04
	jr   @-$0f                                       ; $46b7: $18 $ef

	db   $eb                                         ; $46b9: $eb
	rst  $28                                         ; $46ba: $ef
	ld   a, h                                        ; $46bb: $7c
	add  c                                           ; $46bc: $81
	halt                                             ; $46bd: $76
	ld   bc, $b83e                                   ; $46be: $01 $3e $b8
	add  b                                           ; $46c1: $80
	sbc  c                                           ; $46c2: $99
	jr   jr_0a0_46e2                                 ; $46c3: $18 $1d

	ld   e, l                                        ; $46c5: $5d

jr_0a0_46c6:
	ld   c, l                                        ; $46c6: $4d
	dec  c                                           ; $46c7: $0d
	dec  sp                                          ; $46c8: $3b
	add  b                                           ; $46c9: $80
	daa                                              ; $46ca: $27
	nop                                              ; $46cb: $00
	ld   [de], a                                     ; $46cc: $12
	ld   b, b                                        ; $46cd: $40
	ld   e, b                                        ; $46ce: $58
	or   b                                           ; $46cf: $b0
	xor  [hl]                                        ; $46d0: $ae
	ld   e, b                                        ; $46d1: $58
	ld   e, h                                        ; $46d2: $5c
	ld   c, h                                        ; $46d3: $4c
	and  [hl]                                        ; $46d4: $a6
	or   $e2                                         ; $46d5: $f6 $e2
	ld   a, [$16f4]                                  ; $46d7: $fa $f4 $16
	ld   [de], a                                     ; $46da: $12
	ld   l, $26                                      ; $46db: $2e $26
	add  b                                           ; $46dd: $80
	ld   l, [hl]                                     ; $46de: $6e
	add  b                                           ; $46df: $80
	db   $dd                                         ; $46e0: $dd

jr_0a0_46e1:
	ld   a, [bc]                                     ; $46e1: $0a

jr_0a0_46e2:
	cp   l                                           ; $46e2: $bd
	sbc  l                                           ; $46e3: $9d
	cp   d                                           ; $46e4: $ba
	ld   [$fa1a], a                                  ; $46e5: $ea $1a $fa
	ld   l, c                                        ; $46e8: $69
	ld   [$e2e0], a                                  ; $46e9: $ea $e0 $e2
	ld   [$6a81], a                                  ; $46ec: $ea $81 $6a
	ld   bc, $056c                                   ; $46ef: $01 $6c $05
	add  b                                           ; $46f2: $80
	adc  h                                           ; $46f3: $8c
	rlca                                             ; $46f4: $07
	call $edc9                                       ; $46f5: $cd $c9 $ed
	push hl                                          ; $46f8: $e5
	halt                                             ; $46f9: $76
	adc  h                                           ; $46fa: $8c
	nop                                              ; $46fb: $00
	ld   bc, $0085                                   ; $46fc: $01 $85 $00
	ld   b, $80                                      ; $46ff: $06 $80
	ld   bc, $a061                                   ; $4701: $01 $61 $a0
	jr   nc, jr_0a0_46c6                             ; $4704: $30 $c0

	or   b                                           ; $4706: $b0
	add  l                                           ; $4707: $85
	nop                                              ; $4708: $00
	add  hl, bc                                      ; $4709: $09
	ld   bc, $0200                                   ; $470a: $01 $00 $02
	ld   bc, $0b0c                                   ; $470d: $01 $0c $0b
	dec  de                                          ; $4710: $1b
	rlca                                             ; $4711: $07
	ld   h, e                                        ; $4712: $63
	dec  [hl]                                        ; $4713: $35
	add  b                                           ; $4714: $80
	or   l                                           ; $4715: $b5
	ld   [bc], a                                     ; $4716: $02
	or   h                                           ; $4717: $b4
	or   l                                           ; $4718: $b5
	or   c                                           ; $4719: $b1
	add  b                                           ; $471a: $80
	jr   c, jr_0a0_4720                              ; $471b: $38 $03

	cp   c                                           ; $471d: $b9
	sbc  c                                           ; $471e: $99
	or   c                                           ; $471f: $b1

jr_0a0_4720:
	pop  af                                          ; $4720: $f1
	add  b                                           ; $4721: $80
	dec  [hl]                                        ; $4722: $35
	dec  bc                                          ; $4723: $0b
	dec  l                                           ; $4724: $2d

jr_0a0_4725:
	dec  [hl]                                        ; $4725: $35
	db   $fc                                         ; $4726: $fc
	jr   c, jr_0a0_4725                              ; $4727: $38 $fc

	sbc  h                                           ; $4729: $9c
	cp   $64                                         ; $472a: $fe $64
	or   $b2                                         ; $472c: $f6 $b2
	ld   a, d                                        ; $472e: $7a
	ld   a, b                                        ; $472f: $78
	add  d                                           ; $4730: $82
	cp   d                                           ; $4731: $ba
	daa                                              ; $4732: $27
	sub  b                                           ; $4733: $90
	sub  d                                           ; $4734: $92
	inc  d                                           ; $4735: $14
	call nc, $e9c8                                   ; $4736: $d4 $c8 $e9
	jr   nz, jr_0a0_4771                             ; $4739: $20 $36

	jr   nc, jr_0a0_476e                             ; $473b: $30 $31

	sub  c                                           ; $473d: $91
	sbc  l                                           ; $473e: $9d
	jp   c, Jump_0a0_585b                            ; $473f: $da $5b $58

	ld   a, [de]                                     ; $4742: $1a
	jr   c, @+$04                                    ; $4743: $38 $02

	ld   d, d                                        ; $4745: $52
	jp   $fd08                                       ; $4746: $c3 $08 $fd


	nop                                              ; $4749: $00
	rra                                              ; $474a: $1f
	nop                                              ; $474b: $00
	ld   [bc], a                                     ; $474c: $02
	nop                                              ; $474d: $00
	dec  bc                                          ; $474e: $0b
	nop                                              ; $474f: $00
	inc  sp                                          ; $4750: $33
	nop                                              ; $4751: $00
	call nz, $8400                                   ; $4752: $c4 $00 $84
	sub  b                                           ; $4755: $90
	or   b                                           ; $4756: $b0
	ld   b, b                                        ; $4757: $40
	ld   a, [$e000]                                  ; $4758: $fa $00 $e0
	add  c                                           ; $475b: $81
	nop                                              ; $475c: $00
	inc  c                                           ; $475d: $0c
	ld   b, e                                        ; $475e: $43
	nop                                              ; $475f: $00
	jr   nc, jr_0a0_4762                             ; $4760: $30 $00

jr_0a0_4762:
	adc  c                                           ; $4762: $89
	dec  b                                           ; $4763: $05
	ld   b, l                                        ; $4764: $45
	dec  de                                          ; $4765: $1b
	db   $db                                         ; $4766: $db
	sub  b                                           ; $4767: $90
	sbc  a                                           ; $4768: $9f
	adc  a                                           ; $4769: $8f
	xor  a                                           ; $476a: $af
	add  b                                           ; $476b: $80
	adc  a                                           ; $476c: $8f
	ld   a, [bc]                                     ; $476d: $0a

jr_0a0_476e:
	adc  [hl]                                        ; $476e: $8e
	xor  [hl]                                        ; $476f: $ae
	cpl                                              ; $4770: $2f

jr_0a0_4771:
	ccf                                              ; $4771: $3f
	sbc  a                                           ; $4772: $9f
	xor  a                                           ; $4773: $af
	adc  [hl]                                        ; $4774: $8e
	ret                                              ; $4775: $c9


	ld   [bc], a                                     ; $4776: $02
	adc  b                                           ; $4777: $88
	nop                                              ; $4778: $00
	add  b                                           ; $4779: $80
	jr   nz, jr_0a0_4780                             ; $477a: $20 $04

	db   $e3                                         ; $477c: $e3
	sub  c                                           ; $477d: $91
	sub  l                                           ; $477e: $95
	ld   b, c                                        ; $477f: $41

jr_0a0_4780:
	ld   b, [hl]                                     ; $4780: $46
	add  b                                           ; $4781: $80
	add  h                                           ; $4782: $84
	add  hl, bc                                      ; $4783: $09
	inc  d                                           ; $4784: $14
	rla                                              ; $4785: $17
	add  hl, hl                                      ; $4786: $29
	sub  h                                           ; $4787: $94
	cp   h                                           ; $4788: $bc
	db   $fd                                         ; $4789: $fd
	db   $fc                                         ; $478a: $fc
	db   $dd                                         ; $478b: $dd
	call c, $83dd                                    ; $478c: $dc $dd $83
	call c, $dd80                                    ; $478f: $dc $80 $dd
	dec  l                                           ; $4792: $2d
	rst  $38                                         ; $4793: $ff
	cp   $18                                         ; $4794: $fe $18
	ld   b, b                                        ; $4796: $40
	jp   $a303                                       ; $4797: $c3 $03 $a3


	inc  bc                                          ; $479a: $03
	rrca                                             ; $479b: $0f
	rlca                                             ; $479c: $07
	ld   b, a                                        ; $479d: $47
	rlca                                             ; $479e: $07
	ld   h, e                                        ; $479f: $63
	inc  bc                                          ; $47a0: $03
	inc  d                                           ; $47a1: $14
	ld   l, b                                        ; $47a2: $68
	dec  de                                          ; $47a3: $1b
	ld   [$081b], sp                                 ; $47a4: $08 $1b $08
	ld   bc, $1800                                   ; $47a7: $01 $00 $18
	nop                                              ; $47aa: $00
	ret  nz                                          ; $47ab: $c0

	add  b                                           ; $47ac: $80
	adc  h                                           ; $47ad: $8c
	add  b                                           ; $47ae: $80
	add  hl, de                                      ; $47af: $19
	inc  b                                           ; $47b0: $04
	pop  hl                                          ; $47b1: $e1
	jr   jr_0a0_47e5                                 ; $47b2: $18 $31

	ld   de, $0cd2                                   ; $47b4: $11 $d2 $0c
	ld   c, h                                        ; $47b7: $4c
	inc  c                                           ; $47b8: $0c
	adc  h                                           ; $47b9: $8c
	inc  c                                           ; $47ba: $0c
	inc  l                                           ; $47bb: $2c
	dec  c                                           ; $47bc: $0d
	db   $ed                                         ; $47bd: $ed
	rrca                                             ; $47be: $0f
	rst  $28                                         ; $47bf: $ef
	cpl                                              ; $47c0: $2f
	add  b                                           ; $47c1: $80
	rst  $28                                         ; $47c2: $ef
	jr   @+$01                                       ; $47c3: $18 $ff

	rra                                              ; $47c5: $1f
	and  h                                           ; $47c6: $a4
	nop                                              ; $47c7: $00
	cp   e                                           ; $47c8: $bb
	add  hl, de                                      ; $47c9: $19
	add  hl, bc                                      ; $47ca: $09
	adc  $d6                                         ; $47cb: $ce $d6
	add  $d8                                         ; $47cd: $c6 $d8

jr_0a0_47cf:
	ld   de, $20d4                                   ; $47cf: $11 $d4 $20
	adc  h                                           ; $47d2: $8c
	sub  b                                           ; $47d3: $90
	ldh  [$8a], a                                    ; $47d4: $e0 $8a
	daa                                              ; $47d6: $27
	cp   h                                           ; $47d7: $bc
	ld   a, c                                        ; $47d8: $79
	ld   a, e                                        ; $47d9: $7b
	ei                                               ; $47da: $fb
	ret  z                                           ; $47db: $c8

	call $1c80                                       ; $47dc: $cd $80 $1c
	add  b                                           ; $47df: $80
	ld   a, h                                        ; $47e0: $7c
	nop                                              ; $47e1: $00
	db   $fc                                         ; $47e2: $fc
	add  b                                           ; $47e3: $80
	db   $fd                                         ; $47e4: $fd

jr_0a0_47e5:
	add  b                                           ; $47e5: $80
	add  hl, de                                      ; $47e6: $19
	nop                                              ; $47e7: $00
	ld   a, $81                                      ; $47e8: $3e $81
	nop                                              ; $47ea: $00
	nop                                              ; $47eb: $00
	add  b                                           ; $47ec: $80
	add  e                                           ; $47ed: $83
	nop                                              ; $47ee: $00
	nop                                              ; $47ef: $00
	add  d                                           ; $47f0: $82
	add  b                                           ; $47f1: $80
	add  b                                           ; $47f2: $80
	dec  b                                           ; $47f3: $05
	nop                                              ; $47f4: $00
	inc  b                                           ; $47f5: $04
	add  d                                           ; $47f6: $82
	ld   b, a                                        ; $47f7: $47
	nop                                              ; $47f8: $00
	ld   bc, $0081                                   ; $47f9: $01 $81 $00
	nop                                              ; $47fc: $00
	ld   b, $81                                      ; $47fd: $06 $81
	nop                                              ; $47ff: $00
	ld   [bc], a                                     ; $4800: $02
	ld   [bc], a                                     ; $4801: $02
	nop                                              ; $4802: $00
	ld   bc, $0281                                   ; $4803: $01 $81 $02
	nop                                              ; $4806: $00
	dec  h                                           ; $4807: $25
	add  e                                           ; $4808: $83
	rra                                              ; $4809: $1f
	nop                                              ; $480a: $00
	ld   a, a                                        ; $480b: $7f
	add  b                                           ; $480c: $80
	ld   a, $80                                      ; $480d: $3e $80
	inc  a                                           ; $480f: $3c
	ld   bc, $f939                                   ; $4810: $01 $39 $f9
	add  c                                           ; $4813: $81
	ld   a, a                                        ; $4814: $7f
	nop                                              ; $4815: $00
	rst  $38                                         ; $4816: $ff
	add  d                                           ; $4817: $82
	ld   sp, hl                                      ; $4818: $f9
	add  b                                           ; $4819: $80
	pop  hl                                          ; $481a: $e1
	add  b                                           ; $481b: $80
	ld   bc, $7180                                   ; $481c: $01 $80 $71
	add  b                                           ; $481f: $80
	ld   sp, hl                                      ; $4820: $f9
	nop                                              ; $4821: $00
	rst  $38                                         ; $4822: $ff
	add  b                                           ; $4823: $80
	cp   $0c                                         ; $4824: $fe $0c
	ld   b, $e0                                      ; $4826: $06 $e0
	jr   nz, jr_0a0_485a                             ; $4828: $20 $30

	pop  af                                          ; $482a: $f1
	ldh  a, [$f4]                                    ; $482b: $f0 $f4
	ld   hl, sp+$03                                  ; $482d: $f8 $03
	inc  b                                           ; $482f: $04
	ld   bc, $fc00                                   ; $4830: $01 $00 $fc
	add  b                                           ; $4833: $80
	nop                                              ; $4834: $00
	dec  bc                                          ; $4835: $0b
	db   $fc                                         ; $4836: $fc
	inc  h                                           ; $4837: $24
	ld   [bc], a                                     ; $4838: $02
	add  d                                           ; $4839: $82
	ld   [bc], a                                     ; $483a: $02
	ld   b, d                                        ; $483b: $42
	ld   [bc], a                                     ; $483c: $02
	adc  e                                           ; $483d: $8b
	rlca                                             ; $483e: $07
	sub  a                                           ; $483f: $97
	nop                                              ; $4840: $00
	rst  $38                                         ; $4841: $ff
	add  c                                           ; $4842: $81
	nop                                              ; $4843: $00
	inc  bc                                          ; $4844: $03
	rlca                                             ; $4845: $07
	nop                                              ; $4846: $00
	ld   h, b                                        ; $4847: $60
	inc  hl                                          ; $4848: $23
	add  b                                           ; $4849: $80
	ld   hl, $2d01                                   ; $484a: $21 $01 $2d
	jr   nz, jr_0a0_47cf                             ; $484d: $20 $80

	jr   nc, jr_0a0_4859                             ; $484f: $30 $08

	or   [hl]                                        ; $4851: $b6
	ld   bc, $01fd                                   ; $4852: $01 $fd $01
	ld   a, l                                        ; $4855: $7d
	nop                                              ; $4856: $00
	add  b                                           ; $4857: $80
	ld   a, l                                        ; $4858: $7d

jr_0a0_4859:
	ld   [bc], a                                     ; $4859: $02

jr_0a0_485a:
	add  c                                           ; $485a: $81
	ld   a, a                                        ; $485b: $7f
	add  b                                           ; $485c: $80
	ccf                                              ; $485d: $3f
	add  b                                           ; $485e: $80
	rra                                              ; $485f: $1f
	add  b                                           ; $4860: $80
	rrca                                             ; $4861: $0f
	inc  e                                           ; $4862: $1c
	ld   b, $e6                                      ; $4863: $06 $e6
	xor  $0e                                         ; $4865: $ee $0e
	rlca                                             ; $4867: $07
	rst  $20                                         ; $4868: $e7
	ldh  [$fc], a                                    ; $4869: $e0 $fc
	db   $fd                                         ; $486b: $fd
	ldh  [$f6], a                                    ; $486c: $e0 $f6
	add  b                                           ; $486e: $80
	ld   hl, sp+$00                                  ; $486f: $f8 $00
	or   b                                           ; $4871: $b0
	nop                                              ; $4872: $00
	ld   h, c                                        ; $4873: $61
	ld   bc, $01c1                                   ; $4874: $01 $c1 $01
	add  c                                           ; $4877: $81
	ld   bc, $00fc                                   ; $4878: $01 $fc $00
	jp   Jump_0a0_6f20                               ; $487b: $c3 $20 $6f


	ld   h, b                                        ; $487e: $60
	ldh  a, [$81]                                    ; $487f: $f0 $81
	ret  nz                                          ; $4881: $c0

	nop                                              ; $4882: $00
	ldh  [$80], a                                    ; $4883: $e0 $80
	ret  nz                                          ; $4885: $c0

	dec  bc                                          ; $4886: $0b
	add  b                                           ; $4887: $80
	ret  nz                                          ; $4888: $c0

	nop                                              ; $4889: $00
	add  e                                           ; $488a: $83
	ld   bc, $00fd                                   ; $488b: $01 $fd $00
	pop  af                                          ; $488e: $f1
	ld   b, $0f                                      ; $488f: $06 $0f
	inc  bc                                          ; $4891: $03
	rlca                                             ; $4892: $07
	add  c                                           ; $4893: $81
	ld   bc, $0304                                   ; $4894: $01 $04 $03
	nop                                              ; $4897: $00
	ld   bc, $e400                                   ; $4898: $01 $00 $e4
	add  b                                           ; $489b: $80
	db   $e3                                         ; $489c: $e3
	dec  c                                           ; $489d: $0d
	ld   h, e                                        ; $489e: $63
	push af                                          ; $489f: $f5
	ld   sp, $1171                                   ; $48a0: $31 $71 $11
	or   d                                           ; $48a3: $b2
	add  b                                           ; $48a4: $80
	ret  c                                           ; $48a5: $d8

	ret  nz                                          ; $48a6: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48a7: $cf
	ret  nz                                          ; $48a8: $c0

	call nz, $8240                                   ; $48a9: $c4 $40 $82
	rst  $38                                         ; $48ac: $ff
	nop                                              ; $48ad: $00
	rst  $38                                         ; $48ae: $ff
	nop                                              ; $48af: $00
	rst  $38                                         ; $48b0: $ff
	nop                                              ; $48b1: $00
	rst  $38                                         ; $48b2: $ff
	nop                                              ; $48b3: $00
	rst  $38                                         ; $48b4: $ff
	nop                                              ; $48b5: $00
	rst  $38                                         ; $48b6: $ff
	nop                                              ; $48b7: $00
	rst  $38                                         ; $48b8: $ff
	nop                                              ; $48b9: $00
	rst  $38                                         ; $48ba: $ff
	nop                                              ; $48bb: $00
	rst  $38                                         ; $48bc: $ff
	nop                                              ; $48bd: $00
	rst  $38                                         ; $48be: $ff
	nop                                              ; $48bf: $00
	or   e                                           ; $48c0: $b3
	nop                                              ; $48c1: $00
	inc  l                                           ; $48c2: $2c
	ld   bc, $0098                                   ; $48c3: $01 $98 $00
	add  b                                           ; $48c6: $80
	ld   bc, $0a80                                   ; $48c7: $01 $80 $0a
	adc  [hl]                                        ; $48ca: $8e
	nop                                              ; $48cb: $00
	add  b                                           ; $48cc: $80
	ld   bc, $0a80                                   ; $48cd: $01 $80 $0a
	add  b                                           ; $48d0: $80
	dec  d                                           ; $48d1: $15
	add  b                                           ; $48d2: $80
	ld   h, $80                                      ; $48d3: $26 $80
	dec  bc                                          ; $48d5: $0b
	add  b                                           ; $48d6: $80
	ld   d, $80                                      ; $48d7: $16 $80
	ld   d, l                                        ; $48d9: $55
	add  b                                           ; $48da: $80
	xor  e                                           ; $48db: $ab
	add  b                                           ; $48dc: $80
	dec  b                                           ; $48dd: $05
	adc  b                                           ; $48de: $88
	nop                                              ; $48df: $00
	add  b                                           ; $48e0: $80
	dec  b                                           ; $48e1: $05
	add  b                                           ; $48e2: $80
	nop                                              ; $48e3: $00
	add  b                                           ; $48e4: $80

jr_0a0_48e5:
	ld   d, l                                        ; $48e5: $55
	add  b                                           ; $48e6: $80
	xor  d                                           ; $48e7: $aa
	add  b                                           ; $48e8: $80
	ld   a, a                                        ; $48e9: $7f
	add  b                                           ; $48ea: $80
	cp   [hl]                                        ; $48eb: $be
	add  b                                           ; $48ec: $80
	rst  $30                                         ; $48ed: $f7
	add  b                                           ; $48ee: $80
	xor  $80                                         ; $48ef: $ee $80
	ld   e, c                                        ; $48f1: $59
	add  b                                           ; $48f2: $80
	ld   [$5580], a                                  ; $48f3: $ea $80 $55
	adc  b                                           ; $48f6: $88
	nop                                              ; $48f7: $00
	add  b                                           ; $48f8: $80
	ld   b, b                                        ; $48f9: $40
	add  b                                           ; $48fa: $80
	ld   a, [bc]                                     ; $48fb: $0a
	add  b                                           ; $48fc: $80
	ld   d, b                                        ; $48fd: $50
	add  b                                           ; $48fe: $80
	and  d                                           ; $48ff: $a2
	add  b                                           ; $4900: $80
	push de                                          ; $4901: $d5
	add  b                                           ; $4902: $80
	and  d                                           ; $4903: $a2
	add  b                                           ; $4904: $80
	ld   d, l                                        ; $4905: $55
	add  b                                           ; $4906: $80
	adc  b                                           ; $4907: $88
	add  b                                           ; $4908: $80
	ld   d, l                                        ; $4909: $55
	add  b                                           ; $490a: $80
	ld   [bc], a                                     ; $490b: $02
	add  b                                           ; $490c: $80
	ld   b, b                                        ; $490d: $40
	adc  [hl]                                        ; $490e: $8e

jr_0a0_490f:
	nop                                              ; $490f: $00
	add  b                                           ; $4910: $80
	and  b                                           ; $4911: $a0
	add  b                                           ; $4912: $80
	ld   d, h                                        ; $4913: $54
	add  b                                           ; $4914: $80
	and  d                                           ; $4915: $a2
	add  b                                           ; $4916: $80
	ld   d, b                                        ; $4917: $50
	add  b                                           ; $4918: $80
	and  d                                           ; $4919: $a2
	add  b                                           ; $491a: $80
	ld   b, b                                        ; $491b: $40
	sbc  h                                           ; $491c: $9c
	nop                                              ; $491d: $00
	add  b                                           ; $491e: $80
	ld   bc, $0a80                                   ; $491f: $01 $80 $0a
	sub  d                                           ; $4922: $92
	nop                                              ; $4923: $00
	add  b                                           ; $4924: $80
	ld   bc, $0080                                   ; $4925: $01 $80 $00
	add  b                                           ; $4928: $80
	dec  b                                           ; $4929: $05
	add  b                                           ; $492a: $80
	ld   a, [hl+]                                    ; $492b: $2a
	add  b                                           ; $492c: $80
	ld   d, l                                        ; $492d: $55
	add  b                                           ; $492e: $80
	xor  e                                           ; $492f: $ab
	add  b                                           ; $4930: $80
	dec  b                                           ; $4931: $05
	adc  d                                           ; $4932: $8a
	nop                                              ; $4933: $00
	add  b                                           ; $4934: $80
	ld   a, [bc]                                     ; $4935: $0a
	add  b                                           ; $4936: $80
	ld   bc, $2a80                                   ; $4937: $01 $80 $2a
	add  b                                           ; $493a: $80
	ld   a, l                                        ; $493b: $7d
	add  b                                           ; $493c: $80
	xor  d                                           ; $493d: $aa
	add  b                                           ; $493e: $80
	rst  $10                                         ; $493f: $d7
	add  b                                           ; $4940: $80
	xor  $80                                         ; $4941: $ee $80
	ld   e, c                                        ; $4943: $59
	add  b                                           ; $4944: $80
	ld   [$5580], a                                  ; $4945: $ea $80 $55
	adc  b                                           ; $4948: $88
	nop                                              ; $4949: $00
	add  b                                           ; $494a: $80
	ld   d, h                                        ; $494b: $54
	add  b                                           ; $494c: $80
	nop                                              ; $494d: $00
	add  b                                           ; $494e: $80
	ld   d, l                                        ; $494f: $55
	add  b                                           ; $4950: $80
	xor  d                                           ; $4951: $aa
	add  b                                           ; $4952: $80
	push af                                          ; $4953: $f5
	add  b                                           ; $4954: $80
	ei                                               ; $4955: $fb
	add  b                                           ; $4956: $80
	ld   [hl], a                                     ; $4957: $77
	add  b                                           ; $4958: $80
	cp   d                                           ; $4959: $ba
	add  b                                           ; $495a: $80
	push af                                          ; $495b: $f5
	add  b                                           ; $495c: $80
	xor  d                                           ; $495d: $aa
	add  b                                           ; $495e: $80
	ld   b, b                                        ; $495f: $40
	adc  d                                           ; $4960: $8a
	nop                                              ; $4961: $00
	add  b                                           ; $4962: $80
	jr   z, jr_0a0_48e5                              ; $4963: $28 $80

	inc  b                                           ; $4965: $04
	add  b                                           ; $4966: $80
	xor  d                                           ; $4967: $aa
	add  b                                           ; $4968: $80
	ld   d, l                                        ; $4969: $55
	add  b                                           ; $496a: $80
	ld   [$f580], a                                  ; $496b: $ea $80 $f5
	add  b                                           ; $496e: $80
	add  sp, -$80                                    ; $496f: $e8 $80
	ld   d, h                                        ; $4971: $54
	add  b                                           ; $4972: $80
	jr   nz, jr_0a0_490f                             ; $4973: $20 $9a

	nop                                              ; $4975: $00
	add  b                                           ; $4976: $80
	ld   bc, $0a80                                   ; $4977: $01 $80 $0a
	sub  h                                           ; $497a: $94
	nop                                              ; $497b: $00
	add  b                                           ; $497c: $80
	inc  b                                           ; $497d: $04
	add  b                                           ; $497e: $80
	rrca                                             ; $497f: $0f
	add  b                                           ; $4980: $80
	ld   [hl], $80                                   ; $4981: $36 $80
	ld   d, l                                        ; $4983: $55
	add  b                                           ; $4984: $80
	xor  e                                           ; $4985: $ab
	add  b                                           ; $4986: $80
	dec  b                                           ; $4987: $05
	adc  d                                           ; $4988: $8a
	nop                                              ; $4989: $00
	add  b                                           ; $498a: $80
	ld   a, [bc]                                     ; $498b: $0a
	add  b                                           ; $498c: $80
	nop                                              ; $498d: $00
	add  b                                           ; $498e: $80
	ld   a, [hl+]                                    ; $498f: $2a
	add  b                                           ; $4990: $80
	ld   [hl], a                                     ; $4991: $77
	add  b                                           ; $4992: $80
	xor  d                                           ; $4993: $aa
	add  b                                           ; $4994: $80
	rst  $30                                         ; $4995: $f7
	add  b                                           ; $4996: $80
	xor  $80                                         ; $4997: $ee $80
	ld   e, c                                        ; $4999: $59
	add  b                                           ; $499a: $80
	ld   [$5580], a                                  ; $499b: $ea $80 $55
	add  [hl]                                        ; $499e: $86
	nop                                              ; $499f: $00
	add  b                                           ; $49a0: $80
	xor  d                                           ; $49a1: $aa
	add  b                                           ; $49a2: $80
	nop                                              ; $49a3: $00
	add  b                                           ; $49a4: $80

jr_0a0_49a5:
	ld   [hl+], a                                    ; $49a5: $22
	add  b                                           ; $49a6: $80
	ld   d, h                                        ; $49a7: $54
	add  b                                           ; $49a8: $80
	xor  d                                           ; $49a9: $aa
	add  b                                           ; $49aa: $80
	db   $ed                                         ; $49ab: $ed
	add  b                                           ; $49ac: $80
	xor  d                                           ; $49ad: $aa
	add  b                                           ; $49ae: $80
	push de                                          ; $49af: $d5
	add  b                                           ; $49b0: $80
	ldh  [$80], a                                    ; $49b1: $e0 $80
	ld   d, h                                        ; $49b3: $54
	add  b                                           ; $49b4: $80
	ld   a, [hl+]                                    ; $49b5: $2a
	add  b                                           ; $49b6: $80
	ld   b, b                                        ; $49b7: $40
	add  [hl]                                        ; $49b8: $86
	nop                                              ; $49b9: $00
	add  b                                           ; $49ba: $80
	add  b                                           ; $49bb: $80
	add  b                                           ; $49bc: $80
	nop                                              ; $49bd: $00
	add  b                                           ; $49be: $80
	xor  b                                           ; $49bf: $a8
	add  b                                           ; $49c0: $80
	nop                                              ; $49c1: $00
	add  b                                           ; $49c2: $80
	and  d                                           ; $49c3: $a2
	add  b                                           ; $49c4: $80
	ld   d, b                                        ; $49c5: $50
	add  b                                           ; $49c6: $80
	add  b                                           ; $49c7: $80
	add  b                                           ; $49c8: $80
	nop                                              ; $49c9: $00
	add  b                                           ; $49ca: $80
	and  b                                           ; $49cb: $a0
	add  b                                           ; $49cc: $80
	ld   b, b                                        ; $49cd: $40
	sbc  h                                           ; $49ce: $9c
	nop                                              ; $49cf: $00
	add  b                                           ; $49d0: $80
	dec  b                                           ; $49d1: $05
	sbc  h                                           ; $49d2: $9c
	nop                                              ; $49d3: $00
	add  b                                           ; $49d4: $80
	ld   d, l                                        ; $49d5: $55
	add  b                                           ; $49d6: $80
	xor  d                                           ; $49d7: $aa
	sub  [hl]                                        ; $49d8: $96
	nop                                              ; $49d9: $00
	add  b                                           ; $49da: $80
	dec  d                                           ; $49db: $15
	add  b                                           ; $49dc: $80
	cp   a                                           ; $49dd: $bf
	add  b                                           ; $49de: $80
	ld   a, a                                        ; $49df: $7f
	add  b                                           ; $49e0: $80
	xor  d                                           ; $49e1: $aa
	sub  d                                           ; $49e2: $92
	nop                                              ; $49e3: $00
	add  b                                           ; $49e4: $80
	inc  b                                           ; $49e5: $04
	add  b                                           ; $49e6: $80
	cp   d                                           ; $49e7: $ba
	add  b                                           ; $49e8: $80
	ld   [hl], l                                     ; $49e9: $75
	add  b                                           ; $49ea: $80
	rst  $38                                         ; $49eb: $ff
	add  b                                           ; $49ec: $80
	push de                                          ; $49ed: $d5
	add  b                                           ; $49ee: $80
	xor  d                                           ; $49ef: $aa
	sub  h                                           ; $49f0: $94
	nop                                              ; $49f1: $00
	add  b                                           ; $49f2: $80
	and  b                                           ; $49f3: $a0
	add  b                                           ; $49f4: $80
	ld   b, l                                        ; $49f5: $45
	add  b                                           ; $49f6: $80
	add  sp, -$80                                    ; $49f7: $e8 $80
	ld   d, b                                        ; $49f9: $50
	add  b                                           ; $49fa: $80
	xor  b                                           ; $49fb: $a8
	sbc  d                                           ; $49fc: $9a
	nop                                              ; $49fd: $00
	add  b                                           ; $49fe: $80
	dec  b                                           ; $49ff: $05
	sbc  h                                           ; $4a00: $9c
	nop                                              ; $4a01: $00
	add  b                                           ; $4a02: $80
	ld   d, l                                        ; $4a03: $55
	add  b                                           ; $4a04: $80
	xor  d                                           ; $4a05: $aa
	sub  [hl]                                        ; $4a06: $96
	nop                                              ; $4a07: $00
	add  b                                           ; $4a08: $80
	dec  d                                           ; $4a09: $15
	add  b                                           ; $4a0a: $80
	cp   a                                           ; $4a0b: $bf
	add  b                                           ; $4a0c: $80
	rst  $10                                         ; $4a0d: $d7
	add  b                                           ; $4a0e: $80
	cp   d                                           ; $4a0f: $ba
	sub  d                                           ; $4a10: $92
	nop                                              ; $4a11: $00
	add  b                                           ; $4a12: $80
	inc  b                                           ; $4a13: $04
	add  b                                           ; $4a14: $80
	cp   d                                           ; $4a15: $ba
	add  b                                           ; $4a16: $80
	ld   d, l                                        ; $4a17: $55
	add  b                                           ; $4a18: $80
	ld   a, [$fd80]                                  ; $4a19: $fa $80 $fd
	add  b                                           ; $4a1c: $80
	cp   $80                                         ; $4a1d: $fe $80
	ld   d, h                                        ; $4a1f: $54
	adc  [hl]                                        ; $4a20: $8e
	nop                                              ; $4a21: $00
	add  b                                           ; $4a22: $80
	jr   z, jr_0a0_49a5                              ; $4a23: $28 $80

	nop                                              ; $4a25: $00
	add  b                                           ; $4a26: $80
	adc  b                                           ; $4a27: $88
	add  b                                           ; $4a28: $80
	ld   d, l                                        ; $4a29: $55
	add  b                                           ; $4a2a: $80
	xor  d                                           ; $4a2b: $aa
	add  b                                           ; $4a2c: $80
	ld   d, l                                        ; $4a2d: $55
	add  b                                           ; $4a2e: $80
	xor  b                                           ; $4a2f: $a8
	sbc  d                                           ; $4a30: $9a
	nop                                              ; $4a31: $00
	add  b                                           ; $4a32: $80
	dec  b                                           ; $4a33: $05
	sbc  h                                           ; $4a34: $9c
	nop                                              ; $4a35: $00
	add  b                                           ; $4a36: $80
	ld   d, l                                        ; $4a37: $55
	add  b                                           ; $4a38: $80
	xor  d                                           ; $4a39: $aa
	sub  [hl]                                        ; $4a3a: $96
	nop                                              ; $4a3b: $00
	add  b                                           ; $4a3c: $80
	dec  b                                           ; $4a3d: $05
	add  b                                           ; $4a3e: $80
	jp   c, Jump_0a0_5f80                            ; $4a3f: $da $80 $5f

	add  b                                           ; $4a42: $80
	xor  d                                           ; $4a43: $aa
	sub  h                                           ; $4a44: $94
	nop                                              ; $4a45: $00
	add  b                                           ; $4a46: $80
	ld   [bc], a                                     ; $4a47: $02
	add  b                                           ; $4a48: $80
	ld   d, l                                        ; $4a49: $55
	add  b                                           ; $4a4a: $80
	xor  e                                           ; $4a4b: $ab
	add  b                                           ; $4a4c: $80
	rst  $38                                         ; $4a4d: $ff
	add  b                                           ; $4a4e: $80
	xor  d                                           ; $4a4f: $aa
	add  b                                           ; $4a50: $80
	ld   d, h                                        ; $4a51: $54
	sub  d                                           ; $4a52: $92
	nop                                              ; $4a53: $00
	add  b                                           ; $4a54: $80
	xor  b                                           ; $4a55: $a8
	add  b                                           ; $4a56: $80
	call nc, $0880                                   ; $4a57: $d4 $80 $08
	add  b                                           ; $4a5a: $80
	ld   d, h                                        ; $4a5b: $54
	add  b                                           ; $4a5c: $80
	xor  d                                           ; $4a5d: $aa
	sbc  l                                           ; $4a5e: $9d
	nop                                              ; $4a5f: $00
	add  d                                           ; $4a60: $82
	ld   bc, $0096                                   ; $4a61: $01 $96 $00
	add  hl, bc                                      ; $4a64: $09
	xor  b                                           ; $4a65: $a8
	xor  d                                           ; $4a66: $aa
	db   $fc                                         ; $4a67: $fc
	add  $d6                                         ; $4a68: $c6 $d6
	ret  nc                                          ; $4a6a: $d0

	rst  JumpTable                                         ; $4a6b: $df
	db   $e3                                         ; $4a6c: $e3
	ld   bc, $8007                                   ; $4a6d: $01 $07 $80
	inc  bc                                          ; $4a70: $03
	ld   d, $05                                      ; $4a71: $16 $05
	add  hl, bc                                      ; $4a73: $09
	ld   a, [bc]                                     ; $4a74: $0a
	ld   d, $01                                      ; $4a75: $16 $01
	ccf                                              ; $4a77: $3f
	nop                                              ; $4a78: $00
	ld   a, l                                        ; $4a79: $7d
	inc  de                                          ; $4a7a: $13
	xor  [hl]                                        ; $4a7b: $ae

jr_0a0_4a7c:
	ld   a, [hl+]                                    ; $4a7c: $2a
	sbc  a                                           ; $4a7d: $9f
	ld   e, a                                        ; $4a7e: $5f
	ld   a, [$df7a]                                  ; $4a7f: $fa $7a $df
	rra                                              ; $4a82: $1f
	db   $eb                                         ; $4a83: $eb
	ld   a, [hl+]                                    ; $4a84: $2a
	ret  nc                                          ; $4a85: $d0

	ld   b, b                                        ; $4a86: $40
	sbc  e                                           ; $4a87: $9b
	adc  d                                           ; $4a88: $8a

jr_0a0_4a89:
	add  b                                           ; $4a89: $80
	nop                                              ; $4a8a: $00
	add  b                                           ; $4a8b: $80
	ld   [bc], a                                     ; $4a8c: $02
	ld   de, $de3f                                   ; $4a8d: $11 $3f $de
	sbc  [hl]                                        ; $4a90: $9e
	cp   a                                           ; $4a91: $bf
	call $fef1                                       ; $4a92: $cd $f1 $fe
	db   $ec                                         ; $4a95: $ec
	db   $e3                                         ; $4a96: $e3
	or   l                                           ; $4a97: $b5
	and  b                                           ; $4a98: $a0
	add  sp, -$78                                    ; $4a99: $e8 $88
	ld   b, b                                        ; $4a9b: $40
	jp   nz, Jump_0a0_77f8                           ; $4a9c: $c2 $f8 $77

	ld   [hl], l                                     ; $4a9f: $75
	add  b                                           ; $4aa0: $80
	cp   a                                           ; $4aa1: $bf
	add  b                                           ; $4aa2: $80
	ld   d, a                                        ; $4aa3: $57
	dec  bc                                          ; $4aa4: $0b
	rst  $38                                         ; $4aa5: $ff
	db   $fc                                         ; $4aa6: $fc
	ld   a, l                                        ; $4aa7: $7d
	ld   a, d                                        ; $4aa8: $7a
	cp   h                                           ; $4aa9: $bc
	jr   c, jr_0a0_4a7c                              ; $4aaa: $38 $d0

	ld   d, b                                        ; $4aac: $50
	or   b                                           ; $4aad: $b0
	and  b                                           ; $4aae: $a0
	stop                                             ; $4aaf: $10 $00
	add  b                                           ; $4ab1: $80
	add  b                                           ; $4ab2: $80
	inc  bc                                          ; $4ab3: $03
	ret  nz                                          ; $4ab4: $c0

	add  b                                           ; $4ab5: $80
	and  b                                           ; $4ab6: $a0
	ldh  [$80], a                                    ; $4ab7: $e0 $80
	ld   d, b                                        ; $4ab9: $50
	add  b                                           ; $4aba: $80
	cp   b                                           ; $4abb: $b8
	ld   [bc], a                                     ; $4abc: $02
	ld   d, h                                        ; $4abd: $54
	inc  d                                           ; $4abe: $14
	cp   [hl]                                        ; $4abf: $be
	add  b                                           ; $4ac0: $80
	ld   a, [hl]                                     ; $4ac1: $7e
	nop                                              ; $4ac2: $00
	cp   $80                                         ; $4ac3: $fe $80
	xor  h                                           ; $4ac5: $ac
	add  b                                           ; $4ac6: $80
	ldh  a, [$80]                                    ; $4ac7: $f0 $80
	add  b                                           ; $4ac9: $80
	add  [hl]                                        ; $4aca: $86
	nop                                              ; $4acb: $00
	add  b                                           ; $4acc: $80
	dec  b                                           ; $4acd: $05
	add  b                                           ; $4ace: $80
	xor  e                                           ; $4acf: $ab
	add  b                                           ; $4ad0: $80
	ld   e, l                                        ; $4ad1: $5d
	add  b                                           ; $4ad2: $80
	cp   e                                           ; $4ad3: $bb
	add  b                                           ; $4ad4: $80
	rst  JumpTable                                         ; $4ad5: $df
	add  b                                           ; $4ad6: $80
	rst  $38                                         ; $4ad7: $ff
	add  b                                           ; $4ad8: $80
	sbc  $80                                         ; $4ad9: $de $80
	db   $ed                                         ; $4adb: $ed
	add  b                                           ; $4adc: $80
	rst  $10                                         ; $4add: $d7
	add  b                                           ; $4ade: $80
	xor  e                                           ; $4adf: $ab
	add  b                                           ; $4ae0: $80
	ld   d, l                                        ; $4ae1: $55
	add  b                                           ; $4ae2: $80
	nop                                              ; $4ae3: $00
	add  b                                           ; $4ae4: $80
	ld   bc, $a280                                   ; $4ae5: $01 $80 $a2
	add  b                                           ; $4ae8: $80
	dec  b                                           ; $4ae9: $05
	add  b                                           ; $4aea: $80
	ld   [de], a                                     ; $4aeb: $12
	add  b                                           ; $4aec: $80
	ret  nc                                          ; $4aed: $d0

	add  b                                           ; $4aee: $80
	ret  nz                                          ; $4aef: $c0

	add  b                                           ; $4af0: $80
	ld   h, b                                        ; $4af1: $60
	inc  b                                           ; $4af2: $04
	and  b                                           ; $4af3: $a0
	add  b                                           ; $4af4: $80
	and  b                                           ; $4af5: $a0
	add  b                                           ; $4af6: $80
	ret  nz                                          ; $4af7: $c0

	add  b                                           ; $4af8: $80
	add  b                                           ; $4af9: $80
	ld   [$e0c0], sp                                 ; $4afa: $08 $c0 $e0
	and  b                                           ; $4afd: $a0
	nop                                              ; $4afe: $00
	ld   b, b                                        ; $4aff: $40

Call_0a0_4b00:
	ldh  [$c0], a                                    ; $4b00: $e0 $c0
	ld   h, b                                        ; $4b02: $60
	ld   b, b                                        ; $4b03: $40
	add  b                                           ; $4b04: $80
	add  b                                           ; $4b05: $80
	add  b                                           ; $4b06: $80
	jr   nz, jr_0a0_4a89                             ; $4b07: $20 $80

	sub  b                                           ; $4b09: $90
	add  b                                           ; $4b0a: $80
	ld   d, b                                        ; $4b0b: $50
	add  b                                           ; $4b0c: $80
	adc  b                                           ; $4b0d: $88
	add  h                                           ; $4b0e: $84
	ld   bc, $0280                                   ; $4b0f: $01 $80 $02
	add  b                                           ; $4b12: $80
	ld   bc, $0280                                   ; $4b13: $01 $80 $02
	add  d                                           ; $4b16: $82
	nop                                              ; $4b17: $00
	add  b                                           ; $4b18: $80
	ld   [bc], a                                     ; $4b19: $02
	add  b                                           ; $4b1a: $80
	nop                                              ; $4b1b: $00
	ld   b, $01                                      ; $4b1c: $06 $01
	nop                                              ; $4b1e: $00
	ld   bc, $0100                                   ; $4b1f: $01 $00 $01
	nop                                              ; $4b22: $00
	ld   bc, $0083                                   ; $4b23: $01 $83 $00
	add  b                                           ; $4b26: $80
	ld   d, l                                        ; $4b27: $55
	inc  c                                           ; $4b28: $0c
	xor  d                                           ; $4b29: $aa
	add  d                                           ; $4b2a: $82
	ld   a, l                                        ; $4b2b: $7d
	ld   bc, $80fa                                   ; $4b2c: $01 $fa $80
	ld   d, e                                        ; $4b2f: $53
	ld   hl, $10e3                                   ; $4b30: $21 $e3 $10
	ret  nc                                          ; $4b33: $d0

	ld   a, b                                        ; $4b34: $78
	ld   hl, sp-$80                                  ; $4b35: $f8 $80
	db   $f4                                         ; $4b37: $f4
	db   $10                                         ; $4b38: $10
	ld   a, d                                        ; $4b39: $7a
	cp   $7a                                         ; $4b3a: $fe $7a
	halt                                             ; $4b3c: $76
	ld   [hl], $6b                                   ; $4b3d: $36 $6b
	jr   z, jr_0a0_4b98                              ; $4b3f: $28 $57

	ld   d, c                                        ; $4b41: $51
	ccf                                              ; $4b42: $3f
	ld   a, [hl-]                                    ; $4b43: $3a
	ld   e, $1d                                      ; $4b44: $1e $1d
	dec  a                                           ; $4b46: $3d
	ld   a, $51                                      ; $4b47: $3e $51
	ld   d, b                                        ; $4b49: $50
	add  b                                           ; $4b4a: $80
	add  sp, -$80                                    ; $4b4b: $e8 $80
	db   $fc                                         ; $4b4d: $fc
	inc  bc                                          ; $4b4e: $03
	ld   [$f6e8], a                                  ; $4b4f: $ea $e8 $f6
	db   $f4                                         ; $4b52: $f4
	add  b                                           ; $4b53: $80
	cp   $80                                         ; $4b54: $fe $80
	push af                                          ; $4b56: $f5
	ld   bc, $7afa                                   ; $4b57: $01 $fa $7a
	add  b                                           ; $4b5a: $80
	ld   [hl], l                                     ; $4b5b: $75
	inc  bc                                          ; $4b5c: $03
	ld   a, [$743a]                                  ; $4b5d: $fa $3a $74
	inc  d                                           ; $4b60: $14
	add  b                                           ; $4b61: $80
	ld   a, [bc]                                     ; $4b62: $0a
	dec  b                                           ; $4b63: $05
	ccf                                              ; $4b64: $3f
	rrca                                             ; $4b65: $0f
	ld   a, [de]                                     ; $4b66: $1a
	ld   a, [bc]                                     ; $4b67: $0a
	rrca                                             ; $4b68: $0f
	dec  b                                           ; $4b69: $05
	add  b                                           ; $4b6a: $80
	ld   bc, $0a00                                   ; $4b6b: $01 $00 $0a
	adc  a                                           ; $4b6e: $8f
	nop                                              ; $4b6f: $00
	add  b                                           ; $4b70: $80
	add  b                                           ; $4b71: $80
	add  b                                           ; $4b72: $80
	nop                                              ; $4b73: $00
	add  b                                           ; $4b74: $80
	add  b                                           ; $4b75: $80
	add  b                                           ; $4b76: $80
	ld   b, b                                        ; $4b77: $40
	add  b                                           ; $4b78: $80
	ldh  [$80], a                                    ; $4b79: $e0 $80
	ret  nz                                          ; $4b7b: $c0

	add  b                                           ; $4b7c: $80
	ldh  [$98], a                                    ; $4b7d: $e0 $98
	nop                                              ; $4b7f: $00
	ld   b, $b4                                      ; $4b80: $06 $b4
	ld   a, b                                        ; $4b82: $78
	ld   l, b                                        ; $4b83: $68
	ld   a, b                                        ; $4b84: $78
	ld   e, b                                        ; $4b85: $58
	ld   a, b                                        ; $4b86: $78
	db   $fc                                         ; $4b87: $fc
	sub  a                                           ; $4b88: $97
	nop                                              ; $4b89: $00
	ld   [bc], a                                     ; $4b8a: $02
	cpl                                              ; $4b8b: $2f
	ld   e, $6f                                      ; $4b8c: $1e $6f
	add  c                                           ; $4b8e: $81
	inc  a                                           ; $4b8f: $3c
	nop                                              ; $4b90: $00
	ld   h, d                                        ; $4b91: $62
	rst  $38                                         ; $4b92: $ff
	nop                                              ; $4b93: $00
	rst  $38                                         ; $4b94: $ff
	nop                                              ; $4b95: $00
	rst  $38                                         ; $4b96: $ff
	nop                                              ; $4b97: $00

jr_0a0_4b98:
	rst  $38                                         ; $4b98: $ff
	nop                                              ; $4b99: $00
	rst  $38                                         ; $4b9a: $ff
	nop                                              ; $4b9b: $00
	sbc  b                                           ; $4b9c: $98
	nop                                              ; $4b9d: $00
	ld   bc, $0404                                   ; $4b9e: $01 $04 $04
	inc  b                                           ; $4ba1: $04
	inc  b                                           ; $4ba2: $04
	inc  b                                           ; $4ba3: $04
	inc  b                                           ; $4ba4: $04
	inc  b                                           ; $4ba5: $04
	inc  b                                           ; $4ba6: $04
	inc  b                                           ; $4ba7: $04
	inc  b                                           ; $4ba8: $04
	inc  b                                           ; $4ba9: $04
	inc  b                                           ; $4baa: $04
	inc  b                                           ; $4bab: $04
	inc  b                                           ; $4bac: $04
	inc  b                                           ; $4bad: $04
	inc  b                                           ; $4bae: $04
	inc  b                                           ; $4baf: $04
	inc  h                                           ; $4bb0: $24
	ld   bc, $0401                                   ; $4bb1: $01 $01 $04
	inc  b                                           ; $4bb4: $04
	inc  b                                           ; $4bb5: $04
	inc  b                                           ; $4bb6: $04
	inc  b                                           ; $4bb7: $04
	inc  b                                           ; $4bb8: $04
	inc  b                                           ; $4bb9: $04
	inc  b                                           ; $4bba: $04
	inc  b                                           ; $4bbb: $04
	inc  b                                           ; $4bbc: $04
	inc  b                                           ; $4bbd: $04
	inc  b                                           ; $4bbe: $04
	inc  b                                           ; $4bbf: $04
	inc  b                                           ; $4bc0: $04
	inc  b                                           ; $4bc1: $04
	inc  b                                           ; $4bc2: $04
	inc  b                                           ; $4bc3: $04
	inc  h                                           ; $4bc4: $24
	ld   bc, $0401                                   ; $4bc5: $01 $01 $04
	inc  b                                           ; $4bc8: $04
	inc  b                                           ; $4bc9: $04
	inc  b                                           ; $4bca: $04
	inc  b                                           ; $4bcb: $04
	inc  b                                           ; $4bcc: $04
	inc  b                                           ; $4bcd: $04
	inc  b                                           ; $4bce: $04
	inc  b                                           ; $4bcf: $04
	inc  b                                           ; $4bd0: $04
	inc  b                                           ; $4bd1: $04
	inc  b                                           ; $4bd2: $04
	inc  b                                           ; $4bd3: $04
	inc  b                                           ; $4bd4: $04
	inc  b                                           ; $4bd5: $04
	inc  b                                           ; $4bd6: $04
	inc  b                                           ; $4bd7: $04
	inc  h                                           ; $4bd8: $24
	ld   bc, $0401                                   ; $4bd9: $01 $01 $04
	inc  b                                           ; $4bdc: $04
	inc  b                                           ; $4bdd: $04
	inc  b                                           ; $4bde: $04
	inc  b                                           ; $4bdf: $04
	inc  b                                           ; $4be0: $04
	inc  b                                           ; $4be1: $04
	inc  b                                           ; $4be2: $04
	inc  b                                           ; $4be3: $04
	inc  b                                           ; $4be4: $04
	inc  b                                           ; $4be5: $04
	inc  b                                           ; $4be6: $04
	inc  b                                           ; $4be7: $04
	inc  b                                           ; $4be8: $04
	inc  b                                           ; $4be9: $04
	inc  b                                           ; $4bea: $04
	inc  b                                           ; $4beb: $04
	inc  h                                           ; $4bec: $24
	ld   bc, $0401                                   ; $4bed: $01 $01 $04
	inc  b                                           ; $4bf0: $04
	inc  b                                           ; $4bf1: $04
	inc  b                                           ; $4bf2: $04
	inc  b                                           ; $4bf3: $04
	inc  b                                           ; $4bf4: $04
	inc  b                                           ; $4bf5: $04
	inc  b                                           ; $4bf6: $04
	inc  b                                           ; $4bf7: $04
	inc  b                                           ; $4bf8: $04
	inc  b                                           ; $4bf9: $04
	inc  b                                           ; $4bfa: $04
	inc  b                                           ; $4bfb: $04
	inc  b                                           ; $4bfc: $04
	inc  b                                           ; $4bfd: $04
	inc  b                                           ; $4bfe: $04
	inc  b                                           ; $4bff: $04
	inc  h                                           ; $4c00: $24
	ld   bc, $0401                                   ; $4c01: $01 $01 $04
	inc  b                                           ; $4c04: $04
	inc  b                                           ; $4c05: $04
	inc  b                                           ; $4c06: $04
	inc  b                                           ; $4c07: $04
	inc  b                                           ; $4c08: $04
	inc  b                                           ; $4c09: $04
	inc  b                                           ; $4c0a: $04
	inc  b                                           ; $4c0b: $04
	inc  b                                           ; $4c0c: $04
	inc  b                                           ; $4c0d: $04
	inc  b                                           ; $4c0e: $04
	inc  b                                           ; $4c0f: $04
	inc  b                                           ; $4c10: $04
	inc  b                                           ; $4c11: $04
	inc  b                                           ; $4c12: $04
	inc  b                                           ; $4c13: $04
	inc  h                                           ; $4c14: $24
	ld   bc, $0301                                   ; $4c15: $01 $01 $03
	inc  bc                                          ; $4c18: $03
	inc  bc                                          ; $4c19: $03
	inc  bc                                          ; $4c1a: $03
	inc  bc                                          ; $4c1b: $03
	inc  bc                                          ; $4c1c: $03
	inc  bc                                          ; $4c1d: $03
	inc  bc                                          ; $4c1e: $03
	inc  bc                                          ; $4c1f: $03
	inc  bc                                          ; $4c20: $03
	inc  bc                                          ; $4c21: $03
	inc  bc                                          ; $4c22: $03
	inc  bc                                          ; $4c23: $03
	inc  bc                                          ; $4c24: $03
	inc  bc                                          ; $4c25: $03
	inc  bc                                          ; $4c26: $03
	inc  bc                                          ; $4c27: $03
	inc  bc                                          ; $4c28: $03
	ld   bc, $0301                                   ; $4c29: $01 $01 $03
	dec  b                                           ; $4c2c: $05
	rlca                                             ; $4c2d: $07
	rlca                                             ; $4c2e: $07
	dec  b                                           ; $4c2f: $05
	dec  b                                           ; $4c30: $05
	ld   b, $06                                      ; $4c31: $06 $06
	ld   b, $06                                      ; $4c33: $06 $06
	dec  b                                           ; $4c35: $05
	dec  b                                           ; $4c36: $05
	inc  bc                                          ; $4c37: $03
	inc  bc                                          ; $4c38: $03
	inc  bc                                          ; $4c39: $03
	inc  bc                                          ; $4c3a: $03
	inc  bc                                          ; $4c3b: $03
	inc  bc                                          ; $4c3c: $03
	ld   bc, $0301                                   ; $4c3d: $01 $01 $03
	dec  b                                           ; $4c40: $05
	rlca                                             ; $4c41: $07
	rlca                                             ; $4c42: $07
	dec  b                                           ; $4c43: $05
	dec  b                                           ; $4c44: $05
	ld   b, $06                                      ; $4c45: $06 $06
	ld   b, $06                                      ; $4c47: $06 $06
	dec  b                                           ; $4c49: $05
	dec  b                                           ; $4c4a: $05
	rlca                                             ; $4c4b: $07
	rlca                                             ; $4c4c: $07
	inc  bc                                          ; $4c4d: $03
	inc  bc                                          ; $4c4e: $03
	inc  bc                                          ; $4c4f: $03
	inc  bc                                          ; $4c50: $03
	ld   bc, $0301                                   ; $4c51: $01 $01 $03
	dec  b                                           ; $4c54: $05
	rlca                                             ; $4c55: $07
	rlca                                             ; $4c56: $07
	dec  b                                           ; $4c57: $05
	dec  b                                           ; $4c58: $05
	ld   b, $06                                      ; $4c59: $06 $06
	ld   b, $06                                      ; $4c5b: $06 $06
	dec  b                                           ; $4c5d: $05
	dec  b                                           ; $4c5e: $05
	rlca                                             ; $4c5f: $07
	rlca                                             ; $4c60: $07
	inc  bc                                          ; $4c61: $03
	inc  bc                                          ; $4c62: $03
	inc  bc                                          ; $4c63: $03
	inc  bc                                          ; $4c64: $03
	ld   bc, $0301                                   ; $4c65: $01 $01 $03
	dec  b                                           ; $4c68: $05
	rlca                                             ; $4c69: $07
	rlca                                             ; $4c6a: $07
	rlca                                             ; $4c6b: $07
	rlca                                             ; $4c6c: $07
	rlca                                             ; $4c6d: $07
	rlca                                             ; $4c6e: $07
	rlca                                             ; $4c6f: $07
	rlca                                             ; $4c70: $07
	rlca                                             ; $4c71: $07
	rlca                                             ; $4c72: $07
	inc  bc                                          ; $4c73: $03
	inc  bc                                          ; $4c74: $03
	inc  bc                                          ; $4c75: $03
	inc  bc                                          ; $4c76: $03
	inc  bc                                          ; $4c77: $03
	inc  bc                                          ; $4c78: $03
	ld   bc, $0301                                   ; $4c79: $01 $01 $03
	dec  b                                           ; $4c7c: $05
	rlca                                             ; $4c7d: $07
	rlca                                             ; $4c7e: $07
	rlca                                             ; $4c7f: $07
	rlca                                             ; $4c80: $07
	rlca                                             ; $4c81: $07
	rlca                                             ; $4c82: $07
	rlca                                             ; $4c83: $07
	rlca                                             ; $4c84: $07
	rlca                                             ; $4c85: $07
	rlca                                             ; $4c86: $07
	inc  bc                                          ; $4c87: $03
	inc  bc                                          ; $4c88: $03
	inc  bc                                          ; $4c89: $03
	inc  bc                                          ; $4c8a: $03
	inc  bc                                          ; $4c8b: $03
	inc  bc                                          ; $4c8c: $03
	ld   bc, $0301                                   ; $4c8d: $01 $01 $03
	inc  bc                                          ; $4c90: $03
	inc  bc                                          ; $4c91: $03
	inc  bc                                          ; $4c92: $03
	inc  bc                                          ; $4c93: $03
	inc  bc                                          ; $4c94: $03
	inc  bc                                          ; $4c95: $03
	inc  bc                                          ; $4c96: $03
	inc  bc                                          ; $4c97: $03
	inc  bc                                          ; $4c98: $03
	inc  bc                                          ; $4c99: $03
	inc  bc                                          ; $4c9a: $03
	inc  bc                                          ; $4c9b: $03
	inc  bc                                          ; $4c9c: $03
	inc  bc                                          ; $4c9d: $03
	inc  bc                                          ; $4c9e: $03
	inc  bc                                          ; $4c9f: $03
	inc  bc                                          ; $4ca0: $03
	ld   bc, $2301                                   ; $4ca1: $01 $01 $23
	inc  bc                                          ; $4ca4: $03
	inc  bc                                          ; $4ca5: $03
	rlca                                             ; $4ca6: $07
	rlca                                             ; $4ca7: $07
	dec  b                                           ; $4ca8: $05
	dec  b                                           ; $4ca9: $05
	ld   b, $06                                      ; $4caa: $06 $06
	ld   b, $06                                      ; $4cac: $06 $06
	dec  b                                           ; $4cae: $05
	dec  b                                           ; $4caf: $05
	rlca                                             ; $4cb0: $07
	rlca                                             ; $4cb1: $07
	inc  bc                                          ; $4cb2: $03
	inc  bc                                          ; $4cb3: $03
	inc  bc                                          ; $4cb4: $03
	ld   bc, $2301                                   ; $4cb5: $01 $01 $23
	inc  bc                                          ; $4cb8: $03
	inc  bc                                          ; $4cb9: $03
	rlca                                             ; $4cba: $07
	rlca                                             ; $4cbb: $07
	dec  b                                           ; $4cbc: $05
	dec  b                                           ; $4cbd: $05
	ld   b, $06                                      ; $4cbe: $06 $06
	ld   b, $06                                      ; $4cc0: $06 $06
	dec  b                                           ; $4cc2: $05
	dec  b                                           ; $4cc3: $05
	rlca                                             ; $4cc4: $07
	rlca                                             ; $4cc5: $07
	inc  bc                                          ; $4cc6: $03
	inc  bc                                          ; $4cc7: $03
	inc  bc                                          ; $4cc8: $03
	ld   bc, $0301                                   ; $4cc9: $01 $01 $03
	inc  bc                                          ; $4ccc: $03
	inc  bc                                          ; $4ccd: $03
	inc  bc                                          ; $4cce: $03
	inc  bc                                          ; $4ccf: $03
	inc  bc                                          ; $4cd0: $03
	inc  bc                                          ; $4cd1: $03
	inc  bc                                          ; $4cd2: $03
	inc  bc                                          ; $4cd3: $03
	inc  bc                                          ; $4cd4: $03
	inc  bc                                          ; $4cd5: $03
	inc  bc                                          ; $4cd6: $03
	inc  bc                                          ; $4cd7: $03
	inc  bc                                          ; $4cd8: $03
	inc  bc                                          ; $4cd9: $03
	inc  bc                                          ; $4cda: $03
	inc  hl                                          ; $4cdb: $23
	inc  hl                                          ; $4cdc: $23
	ld   bc, $0001                                   ; $4cdd: $01 $01 $00
	nop                                              ; $4ce0: $00
	nop                                              ; $4ce1: $00
	nop                                              ; $4ce2: $00
	nop                                              ; $4ce3: $00
	nop                                              ; $4ce4: $00
	nop                                              ; $4ce5: $00
	nop                                              ; $4ce6: $00
	nop                                              ; $4ce7: $00
	nop                                              ; $4ce8: $00
	nop                                              ; $4ce9: $00
	nop                                              ; $4cea: $00
	nop                                              ; $4ceb: $00
	nop                                              ; $4cec: $00
	nop                                              ; $4ced: $00
	nop                                              ; $4cee: $00
	nop                                              ; $4cef: $00
	nop                                              ; $4cf0: $00
	ld   bc, $0001                                   ; $4cf1: $01 $01 $00
	nop                                              ; $4cf4: $00
	nop                                              ; $4cf5: $00
	nop                                              ; $4cf6: $00
	nop                                              ; $4cf7: $00
	nop                                              ; $4cf8: $00
	nop                                              ; $4cf9: $00
	nop                                              ; $4cfa: $00
	nop                                              ; $4cfb: $00
	nop                                              ; $4cfc: $00
	nop                                              ; $4cfd: $00
	nop                                              ; $4cfe: $00
	nop                                              ; $4cff: $00
	nop                                              ; $4d00: $00
	nop                                              ; $4d01: $00
	nop                                              ; $4d02: $00
	nop                                              ; $4d03: $00
	nop                                              ; $4d04: $00
	ld   bc, $1514                                   ; $4d05: $01 $14 $15
	nop                                              ; $4d08: $00
	ld   bc, $0302                                   ; $4d09: $01 $02 $03
	sub  b                                           ; $4d0c: $90
	sub  c                                           ; $4d0d: $91
	sub  d                                           ; $4d0e: $92
	sub  b                                           ; $4d0f: $90
	sub  c                                           ; $4d10: $91
	sub  d                                           ; $4d11: $92
	sub  b                                           ; $4d12: $90
	sub  c                                           ; $4d13: $91
	sub  d                                           ; $4d14: $92
	sub  b                                           ; $4d15: $90
	sub  c                                           ; $4d16: $91
	sub  d                                           ; $4d17: $92
	dec  d                                           ; $4d18: $15
	inc  a                                           ; $4d19: $3c
	inc  d                                           ; $4d1a: $14
	dec  d                                           ; $4d1b: $15
	inc  b                                           ; $4d1c: $04
	dec  b                                           ; $4d1d: $05
	ld   [bc], a                                     ; $4d1e: $02
	inc  bc                                          ; $4d1f: $03
	sub  b                                           ; $4d20: $90
	sub  c                                           ; $4d21: $91
	sub  d                                           ; $4d22: $92
	sub  b                                           ; $4d23: $90
	sub  c                                           ; $4d24: $91
	sub  d                                           ; $4d25: $92
	sub  b                                           ; $4d26: $90
	sub  c                                           ; $4d27: $91
	sub  d                                           ; $4d28: $92
	sub  b                                           ; $4d29: $90
	sub  c                                           ; $4d2a: $91
	sub  d                                           ; $4d2b: $92
	dec  d                                           ; $4d2c: $15
	inc  a                                           ; $4d2d: $3c
	inc  d                                           ; $4d2e: $14
	dec  d                                           ; $4d2f: $15
	ld   b, $07                                      ; $4d30: $06 $07
	ld   [bc], a                                     ; $4d32: $02
	inc  bc                                          ; $4d33: $03
	sub  b                                           ; $4d34: $90
	sub  c                                           ; $4d35: $91
	sub  d                                           ; $4d36: $92
	sub  b                                           ; $4d37: $90
	sub  c                                           ; $4d38: $91
	sub  d                                           ; $4d39: $92
	sub  b                                           ; $4d3a: $90
	sub  c                                           ; $4d3b: $91
	sub  d                                           ; $4d3c: $92
	sub  b                                           ; $4d3d: $90
	sub  c                                           ; $4d3e: $91
	sub  d                                           ; $4d3f: $92
	dec  d                                           ; $4d40: $15
	inc  a                                           ; $4d41: $3c
	inc  d                                           ; $4d42: $14
	dec  d                                           ; $4d43: $15
	ld   [$0a09], sp                                 ; $4d44: $08 $09 $0a
	dec  bc                                          ; $4d47: $0b
	sub  b                                           ; $4d48: $90
	sub  c                                           ; $4d49: $91
	sub  d                                           ; $4d4a: $92
	sub  b                                           ; $4d4b: $90
	sub  c                                           ; $4d4c: $91
	sub  d                                           ; $4d4d: $92
	sub  b                                           ; $4d4e: $90
	sub  c                                           ; $4d4f: $91
	sub  d                                           ; $4d50: $92
	sub  b                                           ; $4d51: $90
	sub  c                                           ; $4d52: $91
	sub  d                                           ; $4d53: $92
	dec  d                                           ; $4d54: $15
	inc  a                                           ; $4d55: $3c
	inc  d                                           ; $4d56: $14
	dec  d                                           ; $4d57: $15
	inc  c                                           ; $4d58: $0c
	dec  c                                           ; $4d59: $0d
	ld   c, $0f                                      ; $4d5a: $0e $0f
	sub  b                                           ; $4d5c: $90
	sub  c                                           ; $4d5d: $91
	sub  d                                           ; $4d5e: $92
	sub  b                                           ; $4d5f: $90
	sub  c                                           ; $4d60: $91
	sub  d                                           ; $4d61: $92
	sub  b                                           ; $4d62: $90
	sub  c                                           ; $4d63: $91
	sub  d                                           ; $4d64: $92
	sub  b                                           ; $4d65: $90
	sub  c                                           ; $4d66: $91
	sub  d                                           ; $4d67: $92
	dec  d                                           ; $4d68: $15
	inc  a                                           ; $4d69: $3c
	ld   d, $15                                      ; $4d6a: $16 $15
	db   $10                                         ; $4d6c: $10
	ld   de, $1312                                   ; $4d6d: $11 $12 $13
	sub  b                                           ; $4d70: $90
	sub  c                                           ; $4d71: $91
	sub  d                                           ; $4d72: $92
	sub  b                                           ; $4d73: $90
	sub  c                                           ; $4d74: $91
	sub  d                                           ; $4d75: $92
	sub  b                                           ; $4d76: $90
	sub  c                                           ; $4d77: $91
	sub  d                                           ; $4d78: $92
	sub  b                                           ; $4d79: $90
	sub  c                                           ; $4d7a: $91
	sub  d                                           ; $4d7b: $92
	dec  d                                           ; $4d7c: $15
	dec  a                                           ; $4d7d: $3d
	rla                                              ; $4d7e: $17
	jr   jr_0a0_4d9a                                 ; $4d7f: $18 $19

	add  hl, de                                      ; $4d81: $19
	add  hl, de                                      ; $4d82: $19
	add  hl, de                                      ; $4d83: $19
	add  hl, de                                      ; $4d84: $19
	add  hl, de                                      ; $4d85: $19
	add  hl, de                                      ; $4d86: $19
	add  hl, de                                      ; $4d87: $19
	add  hl, de                                      ; $4d88: $19
	add  hl, de                                      ; $4d89: $19
	add  hl, de                                      ; $4d8a: $19
	add  hl, de                                      ; $4d8b: $19
	add  hl, de                                      ; $4d8c: $19
	ld   a, [de]                                     ; $4d8d: $1a
	ld   a, $3e                                      ; $4d8e: $3e $3e
	ccf                                              ; $4d90: $3f
	ld   b, b                                        ; $4d91: $40
	rla                                              ; $4d92: $17
	dec  de                                          ; $4d93: $1b
	inc  e                                           ; $4d94: $1c
	dec  e                                           ; $4d95: $1d
	ld   e, $1f                                      ; $4d96: $1e $1f
	jr   nz, jr_0a0_4dbb                             ; $4d98: $20 $21

jr_0a0_4d9a:
	ld   [hl+], a                                    ; $4d9a: $22
	inc  hl                                          ; $4d9b: $23
	inc  h                                           ; $4d9c: $24
	dec  h                                           ; $4d9d: $25
	ld   h, $27                                      ; $4d9e: $26 $27
	jr   z, jr_0a0_4dcb                              ; $4da0: $28 $29

	inc  e                                           ; $4da2: $1c
	inc  e                                           ; $4da3: $1c
	ld   c, [hl]                                     ; $4da4: $4e
	ld   c, e                                        ; $4da5: $4b
	rla                                              ; $4da6: $17
	ld   a, [hl+]                                    ; $4da7: $2a
	dec  hl                                          ; $4da8: $2b
	and  b                                           ; $4da9: $a0
	and  d                                           ; $4daa: $a2
	and  h                                           ; $4dab: $a4
	and  [hl]                                        ; $4dac: $a6
	xor  b                                           ; $4dad: $a8
	xor  d                                           ; $4dae: $aa
	xor  h                                           ; $4daf: $ac
	xor  [hl]                                        ; $4db0: $ae
	or   b                                           ; $4db1: $b0
	or   d                                           ; $4db2: $b2
	or   h                                           ; $4db3: $b4
	or   [hl]                                        ; $4db4: $b6
	add  hl, hl                                      ; $4db5: $29
	ld   b, c                                        ; $4db6: $41
	ld   b, d                                        ; $4db7: $42
	ld   c, h                                        ; $4db8: $4c
	ld   c, e                                        ; $4db9: $4b
	rla                                              ; $4dba: $17

jr_0a0_4dbb:
	dec  de                                          ; $4dbb: $1b
	inc  l                                           ; $4dbc: $2c
	and  c                                           ; $4dbd: $a1
	and  e                                           ; $4dbe: $a3
	and  l                                           ; $4dbf: $a5
	and  a                                           ; $4dc0: $a7
	xor  c                                           ; $4dc1: $a9
	xor  e                                           ; $4dc2: $ab
	xor  l                                           ; $4dc3: $ad
	xor  a                                           ; $4dc4: $af
	or   c                                           ; $4dc5: $b1
	or   e                                           ; $4dc6: $b3
	or   l                                           ; $4dc7: $b5
	or   a                                           ; $4dc8: $b7
	add  hl, hl                                      ; $4dc9: $29
	ld   b, e                                        ; $4dca: $43

jr_0a0_4dcb:
	ld   b, h                                        ; $4dcb: $44
	ld   c, h                                        ; $4dcc: $4c
	ld   c, e                                        ; $4dcd: $4b
	rla                                              ; $4dce: $17
	ld   a, [hl+]                                    ; $4dcf: $2a
	dec  l                                           ; $4dd0: $2d
	cp   b                                           ; $4dd1: $b8
	cp   d                                           ; $4dd2: $ba
	cp   b                                           ; $4dd3: $b8
	cp   d                                           ; $4dd4: $ba
	cp   b                                           ; $4dd5: $b8
	cp   d                                           ; $4dd6: $ba
	cp   b                                           ; $4dd7: $b8
	cp   d                                           ; $4dd8: $ba
	cp   b                                           ; $4dd9: $b8
	cp   d                                           ; $4dda: $ba
	jr   nc, jr_0a0_4e0e                             ; $4ddb: $30 $31

	add  hl, hl                                      ; $4ddd: $29
	ld   b, l                                        ; $4dde: $45
	ld   b, [hl]                                     ; $4ddf: $46
	ld   c, h                                        ; $4de0: $4c
	ld   c, e                                        ; $4de1: $4b
	rla                                              ; $4de2: $17
	ld   l, $2f                                      ; $4de3: $2e $2f
	cp   c                                           ; $4de5: $b9
	cp   e                                           ; $4de6: $bb
	cp   c                                           ; $4de7: $b9
	cp   e                                           ; $4de8: $bb
	cp   c                                           ; $4de9: $b9
	cp   e                                           ; $4dea: $bb
	cp   c                                           ; $4deb: $b9
	cp   e                                           ; $4dec: $bb
	cp   c                                           ; $4ded: $b9
	cp   e                                           ; $4dee: $bb
	ld   [hl-], a                                    ; $4def: $32
	inc  sp                                          ; $4df0: $33
	add  hl, hl                                      ; $4df1: $29
	ld   b, a                                        ; $4df2: $47
	ld   c, b                                        ; $4df3: $48
	ld   c, h                                        ; $4df4: $4c
	ld   c, e                                        ; $4df5: $4b
	rla                                              ; $4df6: $17
	inc  [hl]                                        ; $4df7: $34
	dec  sp                                          ; $4df8: $3b
	dec  [hl]                                        ; $4df9: $35
	ld   [hl], $36                                   ; $4dfa: $36 $36
	ld   [hl], $36                                   ; $4dfc: $36 $36
	ld   [hl], $36                                   ; $4dfe: $36 $36
	ld   [hl], $36                                   ; $4e00: $36 $36
	ld   [hl], $36                                   ; $4e02: $36 $36
	ld   [hl], $37                                   ; $4e04: $36 $37
	ld   c, l                                        ; $4e06: $4d
	ld   c, c                                        ; $4e07: $49
	ld   c, [hl]                                     ; $4e08: $4e
	ld   c, e                                        ; $4e09: $4b
	rla                                              ; $4e0a: $17
	ld   c, [hl]                                     ; $4e0b: $4e
	inc  e                                           ; $4e0c: $1c
	ld   c, [hl]                                     ; $4e0d: $4e

jr_0a0_4e0e:
	and  b                                           ; $4e0e: $a0
	and  d                                           ; $4e0f: $a2
	and  h                                           ; $4e10: $a4
	and  [hl]                                        ; $4e11: $a6
	xor  b                                           ; $4e12: $a8
	xor  d                                           ; $4e13: $aa
	xor  h                                           ; $4e14: $ac
	xor  [hl]                                        ; $4e15: $ae
	or   b                                           ; $4e16: $b0
	or   d                                           ; $4e17: $b2
	or   h                                           ; $4e18: $b4
	or   [hl]                                        ; $4e19: $b6
	add  hl, hl                                      ; $4e1a: $29
	inc  e                                           ; $4e1b: $1c
	ld   c, [hl]                                     ; $4e1c: $4e
	ld   c, e                                        ; $4e1d: $4b
	rla                                              ; $4e1e: $17
	ld   c, [hl]                                     ; $4e1f: $4e
	inc  e                                           ; $4e20: $1c
	ld   c, [hl]                                     ; $4e21: $4e
	and  c                                           ; $4e22: $a1
	and  e                                           ; $4e23: $a3
	and  l                                           ; $4e24: $a5
	and  a                                           ; $4e25: $a7
	xor  c                                           ; $4e26: $a9
	xor  e                                           ; $4e27: $ab
	xor  l                                           ; $4e28: $ad
	xor  a                                           ; $4e29: $af
	or   c                                           ; $4e2a: $b1
	or   e                                           ; $4e2b: $b3
	or   l                                           ; $4e2c: $b5
	or   a                                           ; $4e2d: $b7
	add  hl, hl                                      ; $4e2e: $29
	inc  e                                           ; $4e2f: $1c
	ld   c, [hl]                                     ; $4e30: $4e
	ld   c, e                                        ; $4e31: $4b
	rla                                              ; $4e32: $17
	jr   c, jr_0a0_4e6e                              ; $4e33: $38 $39

	ld   a, [hl-]                                    ; $4e35: $3a
	ld   [hl], $36                                   ; $4e36: $36 $36
	ld   [hl], $36                                   ; $4e38: $36 $36
	ld   [hl], $36                                   ; $4e3a: $36 $36
	ld   [hl], $36                                   ; $4e3c: $36 $36
	ld   [hl], $36                                   ; $4e3e: $36 $36
	ld   [hl], $36                                   ; $4e40: $36 $36
	ld   c, d                                        ; $4e42: $4a
	add  hl, sp                                      ; $4e43: $39
	jr   c, jr_0a0_4e91                              ; $4e44: $38 $4b

	rla                                              ; $4e46: $17
	ld   d, b                                        ; $4e47: $50
	ld   d, d                                        ; $4e48: $52
	ld   d, h                                        ; $4e49: $54
	ld   d, [hl]                                     ; $4e4a: $56
	ld   e, b                                        ; $4e4b: $58
	ld   e, d                                        ; $4e4c: $5a
	ld   e, h                                        ; $4e4d: $5c
	ld   e, [hl]                                     ; $4e4e: $5e
	ld   h, b                                        ; $4e4f: $60
	ld   h, d                                        ; $4e50: $62
	ld   h, h                                        ; $4e51: $64
	ld   h, [hl]                                     ; $4e52: $66
	ld   l, b                                        ; $4e53: $68
	ld   l, d                                        ; $4e54: $6a
	ld   l, h                                        ; $4e55: $6c
	ld   l, [hl]                                     ; $4e56: $6e
	ld   [hl], b                                     ; $4e57: $70
	ld   [hl], d                                     ; $4e58: $72
	ld   c, e                                        ; $4e59: $4b
	rla                                              ; $4e5a: $17
	ld   d, c                                        ; $4e5b: $51
	ld   d, e                                        ; $4e5c: $53
	ld   d, l                                        ; $4e5d: $55
	ld   d, a                                        ; $4e5e: $57
	ld   e, c                                        ; $4e5f: $59
	ld   e, e                                        ; $4e60: $5b
	ld   e, l                                        ; $4e61: $5d
	ld   e, a                                        ; $4e62: $5f
	ld   h, c                                        ; $4e63: $61
	ld   h, e                                        ; $4e64: $63
	ld   h, l                                        ; $4e65: $65
	ld   h, a                                        ; $4e66: $67
	ld   l, c                                        ; $4e67: $69
	ld   l, e                                        ; $4e68: $6b
	ld   l, l                                        ; $4e69: $6d
	ld   l, a                                        ; $4e6a: $6f
	ld   [hl], c                                     ; $4e6b: $71
	ld   [hl], e                                     ; $4e6c: $73
	ld   c, e                                        ; $4e6d: $4b

jr_0a0_4e6e:
	nop                                              ; $4e6e: $00
	nop                                              ; $4e6f: $00
	nop                                              ; $4e70: $00
	nop                                              ; $4e71: $00
	nop                                              ; $4e72: $00
	nop                                              ; $4e73: $00
	nop                                              ; $4e74: $00
	nop                                              ; $4e75: $00
	nop                                              ; $4e76: $00
	nop                                              ; $4e77: $00
	nop                                              ; $4e78: $00
	jr   nz, jr_0a0_4e9b                             ; $4e79: $20 $20

	nop                                              ; $4e7b: $00
	nop                                              ; $4e7c: $00
	nop                                              ; $4e7d: $00
	nop                                              ; $4e7e: $00
	nop                                              ; $4e7f: $00
	nop                                              ; $4e80: $00
	nop                                              ; $4e81: $00
	nop                                              ; $4e82: $00
	nop                                              ; $4e83: $00
	nop                                              ; $4e84: $00
	nop                                              ; $4e85: $00
	nop                                              ; $4e86: $00
	nop                                              ; $4e87: $00
	nop                                              ; $4e88: $00
	nop                                              ; $4e89: $00
	nop                                              ; $4e8a: $00
	nop                                              ; $4e8b: $00
	nop                                              ; $4e8c: $00
	jr   nz, jr_0a0_4eaf                             ; $4e8d: $20 $20

	nop                                              ; $4e8f: $00
	nop                                              ; $4e90: $00

jr_0a0_4e91:
	nop                                              ; $4e91: $00
	nop                                              ; $4e92: $00
	nop                                              ; $4e93: $00
	nop                                              ; $4e94: $00
	nop                                              ; $4e95: $00
	nop                                              ; $4e96: $00
	nop                                              ; $4e97: $00
	nop                                              ; $4e98: $00
	nop                                              ; $4e99: $00
	nop                                              ; $4e9a: $00

jr_0a0_4e9b:
	nop                                              ; $4e9b: $00
	nop                                              ; $4e9c: $00
	nop                                              ; $4e9d: $00
	ld   bc, $0000                                   ; $4e9e: $01 $00 $00
	jr   nz, jr_0a0_4ec3                             ; $4ea1: $20 $20

	nop                                              ; $4ea3: $00
	nop                                              ; $4ea4: $00
	nop                                              ; $4ea5: $00
	nop                                              ; $4ea6: $00
	nop                                              ; $4ea7: $00
	nop                                              ; $4ea8: $00
	nop                                              ; $4ea9: $00
	nop                                              ; $4eaa: $00
	nop                                              ; $4eab: $00
	nop                                              ; $4eac: $00
	nop                                              ; $4ead: $00
	nop                                              ; $4eae: $00

jr_0a0_4eaf:
	nop                                              ; $4eaf: $00
	nop                                              ; $4eb0: $00
	nop                                              ; $4eb1: $00
	ld   bc, $0000                                   ; $4eb2: $01 $00 $00
	nop                                              ; $4eb5: $00
	jr   nz, jr_0a0_4ed8                             ; $4eb6: $20 $20

	nop                                              ; $4eb8: $00
	nop                                              ; $4eb9: $00
	nop                                              ; $4eba: $00
	nop                                              ; $4ebb: $00
	nop                                              ; $4ebc: $00
	nop                                              ; $4ebd: $00
	nop                                              ; $4ebe: $00
	nop                                              ; $4ebf: $00
	nop                                              ; $4ec0: $00
	nop                                              ; $4ec1: $00
	nop                                              ; $4ec2: $00

jr_0a0_4ec3:
	nop                                              ; $4ec3: $00
	nop                                              ; $4ec4: $00
	nop                                              ; $4ec5: $00
	nop                                              ; $4ec6: $00
	nop                                              ; $4ec7: $00
	nop                                              ; $4ec8: $00
	nop                                              ; $4ec9: $00
	jr   nz, jr_0a0_4eec                             ; $4eca: $20 $20

	nop                                              ; $4ecc: $00
	nop                                              ; $4ecd: $00
	nop                                              ; $4ece: $00
	nop                                              ; $4ecf: $00
	nop                                              ; $4ed0: $00
	nop                                              ; $4ed1: $00
	nop                                              ; $4ed2: $00
	nop                                              ; $4ed3: $00
	nop                                              ; $4ed4: $00
	nop                                              ; $4ed5: $00
	nop                                              ; $4ed6: $00
	nop                                              ; $4ed7: $00

jr_0a0_4ed8:
	nop                                              ; $4ed8: $00
	nop                                              ; $4ed9: $00
	nop                                              ; $4eda: $00
	nop                                              ; $4edb: $00
	nop                                              ; $4edc: $00
	nop                                              ; $4edd: $00
	jr   nz, jr_0a0_4f00                             ; $4ede: $20 $20

	nop                                              ; $4ee0: $00
	nop                                              ; $4ee1: $00
	nop                                              ; $4ee2: $00
	nop                                              ; $4ee3: $00
	nop                                              ; $4ee4: $00
	nop                                              ; $4ee5: $00
	nop                                              ; $4ee6: $00
	nop                                              ; $4ee7: $00
	nop                                              ; $4ee8: $00
	nop                                              ; $4ee9: $00
	nop                                              ; $4eea: $00
	nop                                              ; $4eeb: $00

jr_0a0_4eec:
	nop                                              ; $4eec: $00
	nop                                              ; $4eed: $00
	nop                                              ; $4eee: $00
	nop                                              ; $4eef: $00
	nop                                              ; $4ef0: $00
	nop                                              ; $4ef1: $00
	nop                                              ; $4ef2: $00
	jr   nz, jr_0a0_4f15                             ; $4ef3: $20 $20

	nop                                              ; $4ef5: $00
	nop                                              ; $4ef6: $00
	nop                                              ; $4ef7: $00
	nop                                              ; $4ef8: $00
	nop                                              ; $4ef9: $00
	nop                                              ; $4efa: $00
	nop                                              ; $4efb: $00
	nop                                              ; $4efc: $00
	nop                                              ; $4efd: $00
	nop                                              ; $4efe: $00
	nop                                              ; $4eff: $00

jr_0a0_4f00:
	nop                                              ; $4f00: $00
	ld   bc, $0000                                   ; $4f01: $01 $00 $00
	nop                                              ; $4f04: $00
	nop                                              ; $4f05: $00
	nop                                              ; $4f06: $00
	jr   nz, jr_0a0_4f29                             ; $4f07: $20 $20

	nop                                              ; $4f09: $00
	nop                                              ; $4f0a: $00
	nop                                              ; $4f0b: $00
	nop                                              ; $4f0c: $00
	nop                                              ; $4f0d: $00
	nop                                              ; $4f0e: $00
	nop                                              ; $4f0f: $00
	nop                                              ; $4f10: $00
	nop                                              ; $4f11: $00
	nop                                              ; $4f12: $00
	nop                                              ; $4f13: $00
	nop                                              ; $4f14: $00

jr_0a0_4f15:
	ld   bc, $0001                                   ; $4f15: $01 $01 $00
	nop                                              ; $4f18: $00
	ld   bc, $2000                                   ; $4f19: $01 $00 $20
	jr   nz, jr_0a0_4f1e                             ; $4f1c: $20 $00

jr_0a0_4f1e:
	nop                                              ; $4f1e: $00
	nop                                              ; $4f1f: $00
	nop                                              ; $4f20: $00
	nop                                              ; $4f21: $00
	nop                                              ; $4f22: $00
	nop                                              ; $4f23: $00
	nop                                              ; $4f24: $00
	nop                                              ; $4f25: $00
	nop                                              ; $4f26: $00
	nop                                              ; $4f27: $00
	nop                                              ; $4f28: $00

jr_0a0_4f29:
	nop                                              ; $4f29: $00
	nop                                              ; $4f2a: $00
	nop                                              ; $4f2b: $00
	nop                                              ; $4f2c: $00
	ld   [bc], a                                     ; $4f2d: $02
	nop                                              ; $4f2e: $00
	nop                                              ; $4f2f: $00
	jr   nz, jr_0a0_4f32                             ; $4f30: $20 $00

jr_0a0_4f32:
	nop                                              ; $4f32: $00
	nop                                              ; $4f33: $00
	nop                                              ; $4f34: $00
	nop                                              ; $4f35: $00
	nop                                              ; $4f36: $00
	nop                                              ; $4f37: $00
	nop                                              ; $4f38: $00
	nop                                              ; $4f39: $00
	nop                                              ; $4f3a: $00
	nop                                              ; $4f3b: $00
	nop                                              ; $4f3c: $00
	nop                                              ; $4f3d: $00
	nop                                              ; $4f3e: $00
	nop                                              ; $4f3f: $00
	nop                                              ; $4f40: $00
	ld   [bc], a                                     ; $4f41: $02
	ld   [bc], a                                     ; $4f42: $02
	nop                                              ; $4f43: $00
	jr   nz, jr_0a0_4f66                             ; $4f44: $20 $20

	nop                                              ; $4f46: $00
	nop                                              ; $4f47: $00
	nop                                              ; $4f48: $00
	nop                                              ; $4f49: $00
	nop                                              ; $4f4a: $00
	nop                                              ; $4f4b: $00
	nop                                              ; $4f4c: $00
	nop                                              ; $4f4d: $00
	nop                                              ; $4f4e: $00
	nop                                              ; $4f4f: $00
	nop                                              ; $4f50: $00
	inc  bc                                          ; $4f51: $03
	nop                                              ; $4f52: $00
	nop                                              ; $4f53: $00
	nop                                              ; $4f54: $00
	ld   [bc], a                                     ; $4f55: $02
	ld   [bc], a                                     ; $4f56: $02
	nop                                              ; $4f57: $00
	nop                                              ; $4f58: $00
	jr   nz, jr_0a0_4f5b                             ; $4f59: $20 $00

jr_0a0_4f5b:
	nop                                              ; $4f5b: $00
	nop                                              ; $4f5c: $00
	nop                                              ; $4f5d: $00
	nop                                              ; $4f5e: $00
	nop                                              ; $4f5f: $00
	inc  bc                                          ; $4f60: $03
	inc  bc                                          ; $4f61: $03
	inc  bc                                          ; $4f62: $03
	inc  bc                                          ; $4f63: $03
	inc  bc                                          ; $4f64: $03
	inc  bc                                          ; $4f65: $03

jr_0a0_4f66:
	inc  bc                                          ; $4f66: $03
	inc  bc                                          ; $4f67: $03
	inc  bc                                          ; $4f68: $03
	inc  bc                                          ; $4f69: $03
	inc  bc                                          ; $4f6a: $03
	inc  bc                                          ; $4f6b: $03
	inc  bc                                          ; $4f6c: $03
	inc  bc                                          ; $4f6d: $03
	inc  hl                                          ; $4f6e: $23
	jr   nz, jr_0a0_4f71                             ; $4f6f: $20 $00

jr_0a0_4f71:
	nop                                              ; $4f71: $00
	nop                                              ; $4f72: $00
	inc  bc                                          ; $4f73: $03
	inc  bc                                          ; $4f74: $03
	inc  bc                                          ; $4f75: $03
	inc  bc                                          ; $4f76: $03
	inc  bc                                          ; $4f77: $03
	inc  bc                                          ; $4f78: $03
	inc  bc                                          ; $4f79: $03
	inc  bc                                          ; $4f7a: $03
	inc  bc                                          ; $4f7b: $03
	inc  bc                                          ; $4f7c: $03
	inc  bc                                          ; $4f7d: $03
	inc  bc                                          ; $4f7e: $03
	inc  bc                                          ; $4f7f: $03
	inc  bc                                          ; $4f80: $03
	inc  bc                                          ; $4f81: $03
	inc  hl                                          ; $4f82: $23
	inc  hl                                          ; $4f83: $23
	nop                                              ; $4f84: $00
	nop                                              ; $4f85: $00
	nop                                              ; $4f86: $00
	nop                                              ; $4f87: $00
	inc  bc                                          ; $4f88: $03
	inc  bc                                          ; $4f89: $03
	inc  bc                                          ; $4f8a: $03
	inc  bc                                          ; $4f8b: $03
	inc  bc                                          ; $4f8c: $03
	inc  bc                                          ; $4f8d: $03
	inc  bc                                          ; $4f8e: $03
	inc  bc                                          ; $4f8f: $03
	inc  bc                                          ; $4f90: $03
	inc  bc                                          ; $4f91: $03
	inc  bc                                          ; $4f92: $03
	inc  bc                                          ; $4f93: $03
	inc  bc                                          ; $4f94: $03
	inc  bc                                          ; $4f95: $03
	inc  hl                                          ; $4f96: $23
	nop                                              ; $4f97: $00
	nop                                              ; $4f98: $00
	nop                                              ; $4f99: $00
	nop                                              ; $4f9a: $00
	nop                                              ; $4f9b: $00
	nop                                              ; $4f9c: $00
	inc  bc                                          ; $4f9d: $03
	inc  bc                                          ; $4f9e: $03
	inc  bc                                          ; $4f9f: $03
	inc  bc                                          ; $4fa0: $03
	inc  bc                                          ; $4fa1: $03
	inc  bc                                          ; $4fa2: $03
	inc  bc                                          ; $4fa3: $03
	inc  bc                                          ; $4fa4: $03
	inc  bc                                          ; $4fa5: $03
	inc  bc                                          ; $4fa6: $03
	inc  bc                                          ; $4fa7: $03
	inc  bc                                          ; $4fa8: $03
	inc  bc                                          ; $4fa9: $03
	nop                                              ; $4faa: $00
	nop                                              ; $4fab: $00
	nop                                              ; $4fac: $00
	nop                                              ; $4fad: $00
	nop                                              ; $4fae: $00
	nop                                              ; $4faf: $00
	nop                                              ; $4fb0: $00
	nop                                              ; $4fb1: $00
	nop                                              ; $4fb2: $00
	nop                                              ; $4fb3: $00
	nop                                              ; $4fb4: $00
	nop                                              ; $4fb5: $00
	nop                                              ; $4fb6: $00
	nop                                              ; $4fb7: $00
	nop                                              ; $4fb8: $00
	nop                                              ; $4fb9: $00
	nop                                              ; $4fba: $00
	nop                                              ; $4fbb: $00
	nop                                              ; $4fbc: $00
	nop                                              ; $4fbd: $00
	nop                                              ; $4fbe: $00
	nop                                              ; $4fbf: $00
	nop                                              ; $4fc0: $00
	nop                                              ; $4fc1: $00
	nop                                              ; $4fc2: $00
	nop                                              ; $4fc3: $00
	nop                                              ; $4fc4: $00
	nop                                              ; $4fc5: $00
	nop                                              ; $4fc6: $00
	nop                                              ; $4fc7: $00
	nop                                              ; $4fc8: $00
	nop                                              ; $4fc9: $00
	nop                                              ; $4fca: $00
	nop                                              ; $4fcb: $00
	nop                                              ; $4fcc: $00
	nop                                              ; $4fcd: $00
	nop                                              ; $4fce: $00
	nop                                              ; $4fcf: $00
	nop                                              ; $4fd0: $00
	nop                                              ; $4fd1: $00
	nop                                              ; $4fd2: $00
	nop                                              ; $4fd3: $00
	nop                                              ; $4fd4: $00
	nop                                              ; $4fd5: $00
	nop                                              ; $4fd6: $00
	nop                                              ; $4fd7: $00
	nop                                              ; $4fd8: $00
	nop                                              ; $4fd9: $00
	nop                                              ; $4fda: $00
	nop                                              ; $4fdb: $00
	nop                                              ; $4fdc: $00
	ld   bc, $0505                                   ; $4fdd: $01 $05 $05
	dec  b                                           ; $4fe0: $05
	ld   bc, $0000                                   ; $4fe1: $01 $00 $00
	nop                                              ; $4fe4: $00
	nop                                              ; $4fe5: $00
	nop                                              ; $4fe6: $00
	nop                                              ; $4fe7: $00
	nop                                              ; $4fe8: $00
	nop                                              ; $4fe9: $00
	nop                                              ; $4fea: $00
	nop                                              ; $4feb: $00
	nop                                              ; $4fec: $00
	nop                                              ; $4fed: $00
	nop                                              ; $4fee: $00
	nop                                              ; $4fef: $00
	inc  bc                                          ; $4ff0: $03
	ld   [bc], a                                     ; $4ff1: $02
	dec  b                                           ; $4ff2: $05
	ld   b, $07                                      ; $4ff3: $06 $07
	ld   [bc], a                                     ; $4ff5: $02
	inc  bc                                          ; $4ff6: $03
	nop                                              ; $4ff7: $00
	nop                                              ; $4ff8: $00
	nop                                              ; $4ff9: $00
	nop                                              ; $4ffa: $00
	nop                                              ; $4ffb: $00
	nop                                              ; $4ffc: $00
	nop                                              ; $4ffd: $00
	nop                                              ; $4ffe: $00
	nop                                              ; $4fff: $00
	nop                                              ; $5000: $00
	nop                                              ; $5001: $00
	nop                                              ; $5002: $00
	nop                                              ; $5003: $00
	inc  b                                           ; $5004: $04
	dec  b                                           ; $5005: $05
	ld   [$0a09], sp                                 ; $5006: $08 $09 $0a
	dec  b                                           ; $5009: $05
	inc  b                                           ; $500a: $04
	nop                                              ; $500b: $00
	nop                                              ; $500c: $00
	nop                                              ; $500d: $00
	nop                                              ; $500e: $00
	nop                                              ; $500f: $00
	nop                                              ; $5010: $00
	nop                                              ; $5011: $00
	nop                                              ; $5012: $00
	nop                                              ; $5013: $00
	nop                                              ; $5014: $00
	nop                                              ; $5015: $00
	nop                                              ; $5016: $00
	nop                                              ; $5017: $00
	ld   bc, $0b05                                   ; $5018: $01 $05 $0b
	inc  c                                           ; $501b: $0c
	dec  c                                           ; $501c: $0d
	dec  b                                           ; $501d: $05
	ld   bc, $0000                                   ; $501e: $01 $00 $00
	nop                                              ; $5021: $00
	nop                                              ; $5022: $00
	nop                                              ; $5023: $00
	nop                                              ; $5024: $00
	nop                                              ; $5025: $00
	nop                                              ; $5026: $00
	nop                                              ; $5027: $00
	nop                                              ; $5028: $00
	nop                                              ; $5029: $00
	nop                                              ; $502a: $00
	inc  bc                                          ; $502b: $03
	ld   [bc], a                                     ; $502c: $02
	ld   c, $0f                                      ; $502d: $0e $0f
	db   $10                                         ; $502f: $10
	ld   de, $0212                                   ; $5030: $11 $12 $02
	inc  bc                                          ; $5033: $03
	nop                                              ; $5034: $00
	nop                                              ; $5035: $00
	nop                                              ; $5036: $00
	nop                                              ; $5037: $00
	nop                                              ; $5038: $00
	nop                                              ; $5039: $00
	nop                                              ; $503a: $00
	nop                                              ; $503b: $00
	nop                                              ; $503c: $00
	nop                                              ; $503d: $00
	nop                                              ; $503e: $00
	inc  b                                           ; $503f: $04
	dec  b                                           ; $5040: $05
	inc  de                                          ; $5041: $13
	inc  d                                           ; $5042: $14
	dec  d                                           ; $5043: $15
	ld   d, $17                                      ; $5044: $16 $17
	dec  b                                           ; $5046: $05
	inc  b                                           ; $5047: $04
	nop                                              ; $5048: $00
	nop                                              ; $5049: $00
	nop                                              ; $504a: $00
	nop                                              ; $504b: $00
	nop                                              ; $504c: $00
	nop                                              ; $504d: $00
	nop                                              ; $504e: $00
	nop                                              ; $504f: $00
	nop                                              ; $5050: $00
	nop                                              ; $5051: $00
	nop                                              ; $5052: $00
	ld   bc, $1805                                   ; $5053: $01 $05 $18
	add  hl, de                                      ; $5056: $19
	ld   a, [de]                                     ; $5057: $1a
	dec  de                                          ; $5058: $1b
	inc  e                                           ; $5059: $1c
	dec  b                                           ; $505a: $05
	ld   bc, $0000                                   ; $505b: $01 $00 $00
	nop                                              ; $505e: $00
	nop                                              ; $505f: $00
	nop                                              ; $5060: $00
	nop                                              ; $5061: $00
	nop                                              ; $5062: $00
	nop                                              ; $5063: $00
	nop                                              ; $5064: $00
	nop                                              ; $5065: $00
	inc  bc                                          ; $5066: $03
	ld   [bc], a                                     ; $5067: $02
	dec  b                                           ; $5068: $05
	dec  e                                           ; $5069: $1d
	ld   e, $1f                                      ; $506a: $1e $1f
	jr   nz, @+$23                                   ; $506c: $20 $21

	dec  b                                           ; $506e: $05
	ld   [bc], a                                     ; $506f: $02
	inc  bc                                          ; $5070: $03
	nop                                              ; $5071: $00
	nop                                              ; $5072: $00
	nop                                              ; $5073: $00
	nop                                              ; $5074: $00
	nop                                              ; $5075: $00
	nop                                              ; $5076: $00
	nop                                              ; $5077: $00
	nop                                              ; $5078: $00
	nop                                              ; $5079: $00
	inc  b                                           ; $507a: $04
	dec  b                                           ; $507b: $05
	dec  b                                           ; $507c: $05
	ld   [hl+], a                                    ; $507d: $22
	inc  hl                                          ; $507e: $23
	inc  h                                           ; $507f: $24
	dec  h                                           ; $5080: $25
	ld   h, $27                                      ; $5081: $26 $27
	dec  b                                           ; $5083: $05
	inc  b                                           ; $5084: $04
	nop                                              ; $5085: $00
	nop                                              ; $5086: $00
	nop                                              ; $5087: $00
	nop                                              ; $5088: $00
	nop                                              ; $5089: $00
	nop                                              ; $508a: $00
	nop                                              ; $508b: $00
	nop                                              ; $508c: $00
	nop                                              ; $508d: $00
	ld   bc, $0505                                   ; $508e: $01 $05 $05
	dec  b                                           ; $5091: $05
	jr   z, jr_0a0_50bd                              ; $5092: $28 $29

	ld   a, [hl+]                                    ; $5094: $2a
	dec  hl                                          ; $5095: $2b
	dec  b                                           ; $5096: $05
	dec  b                                           ; $5097: $05
	ld   bc, $0000                                   ; $5098: $01 $00 $00
	nop                                              ; $509b: $00
	nop                                              ; $509c: $00
	nop                                              ; $509d: $00
	nop                                              ; $509e: $00
	nop                                              ; $509f: $00
	nop                                              ; $50a0: $00
	inc  bc                                          ; $50a1: $03
	ld   [bc], a                                     ; $50a2: $02
	dec  b                                           ; $50a3: $05
	dec  b                                           ; $50a4: $05
	dec  b                                           ; $50a5: $05
	inc  l                                           ; $50a6: $2c
	dec  l                                           ; $50a7: $2d
	ld   a, [hl+]                                    ; $50a8: $2a
	ld   l, $2f                                      ; $50a9: $2e $2f
	dec  b                                           ; $50ab: $05
	ld   [bc], a                                     ; $50ac: $02
	inc  bc                                          ; $50ad: $03
	nop                                              ; $50ae: $00
	nop                                              ; $50af: $00
	nop                                              ; $50b0: $00
	nop                                              ; $50b1: $00
	nop                                              ; $50b2: $00
	nop                                              ; $50b3: $00
	nop                                              ; $50b4: $00
	inc  b                                           ; $50b5: $04
	dec  b                                           ; $50b6: $05
	dec  b                                           ; $50b7: $05
	dec  b                                           ; $50b8: $05
	jr   nc, jr_0a0_50ec                             ; $50b9: $30 $31

	ld   [hl-], a                                    ; $50bb: $32
	inc  sp                                          ; $50bc: $33

jr_0a0_50bd:
	inc  [hl]                                        ; $50bd: $34
	dec  [hl]                                        ; $50be: $35
	dec  b                                           ; $50bf: $05
	dec  b                                           ; $50c0: $05
	inc  b                                           ; $50c1: $04
	nop                                              ; $50c2: $00
	nop                                              ; $50c3: $00
	nop                                              ; $50c4: $00
	nop                                              ; $50c5: $00
	nop                                              ; $50c6: $00
	nop                                              ; $50c7: $00
	ld   [hl], $37                                   ; $50c8: $36 $37
	jr   c, jr_0a0_5105                              ; $50ca: $38 $39

	ld   a, [hl-]                                    ; $50cc: $3a
	dec  sp                                          ; $50cd: $3b
	inc  a                                           ; $50ce: $3c
	dec  a                                           ; $50cf: $3d
	ld   a, $3f                                      ; $50d0: $3e $3f
	ld   b, b                                        ; $50d2: $40
	ld   b, c                                        ; $50d3: $41
	ld   b, d                                        ; $50d4: $42
	ld   b, e                                        ; $50d5: $43
	ld   [hl], $00                                   ; $50d6: $36 $00
	nop                                              ; $50d8: $00
	nop                                              ; $50d9: $00
	nop                                              ; $50da: $00
	ld   b, h                                        ; $50db: $44
	ld   b, l                                        ; $50dc: $45
	ld   b, [hl]                                     ; $50dd: $46
	ld   b, a                                        ; $50de: $47
	ld   c, b                                        ; $50df: $48
	ld   c, c                                        ; $50e0: $49
	ld   c, d                                        ; $50e1: $4a
	ld   c, e                                        ; $50e2: $4b
	ld   c, h                                        ; $50e3: $4c
	ld   c, l                                        ; $50e4: $4d
	ld   c, [hl]                                     ; $50e5: $4e
	ld   c, a                                        ; $50e6: $4f
	ld   d, b                                        ; $50e7: $50
	ld   d, c                                        ; $50e8: $51
	ld   d, d                                        ; $50e9: $52
	ld   b, l                                        ; $50ea: $45
	ld   b, h                                        ; $50eb: $44

jr_0a0_50ec:
	nop                                              ; $50ec: $00
	nop                                              ; $50ed: $00
	nop                                              ; $50ee: $00
	nop                                              ; $50ef: $00
	ld   d, e                                        ; $50f0: $53
	ld   d, h                                        ; $50f1: $54
	ld   d, l                                        ; $50f2: $55
	ld   d, [hl]                                     ; $50f3: $56
	ld   d, a                                        ; $50f4: $57
	ld   e, b                                        ; $50f5: $58
	ld   e, c                                        ; $50f6: $59
	ld   e, d                                        ; $50f7: $5a
	ld   e, e                                        ; $50f8: $5b
	ld   e, h                                        ; $50f9: $5c
	ld   e, l                                        ; $50fa: $5d
	ld   e, [hl]                                     ; $50fb: $5e
	ld   e, a                                        ; $50fc: $5f
	ld   h, b                                        ; $50fd: $60
	ld   d, e                                        ; $50fe: $53
	nop                                              ; $50ff: $00
	nop                                              ; $5100: $00
	nop                                              ; $5101: $00
	nop                                              ; $5102: $00
	nop                                              ; $5103: $00
	nop                                              ; $5104: $00

jr_0a0_5105:
	ld   h, c                                        ; $5105: $61
	ld   h, d                                        ; $5106: $62
	ld   h, e                                        ; $5107: $63
	ld   h, e                                        ; $5108: $63
	ld   h, h                                        ; $5109: $64
	ld   h, l                                        ; $510a: $65
	ld   h, [hl]                                     ; $510b: $66
	ld   h, a                                        ; $510c: $67
	ld   l, b                                        ; $510d: $68
	ld   l, c                                        ; $510e: $69
	ld   l, d                                        ; $510f: $6a
	ld   l, e                                        ; $5110: $6b
	ld   l, h                                        ; $5111: $6c
	nop                                              ; $5112: $00
	nop                                              ; $5113: $00
	nop                                              ; $5114: $00
	nop                                              ; $5115: $00
	nop                                              ; $5116: $00
	nop                                              ; $5117: $00
	nop                                              ; $5118: $00
	nop                                              ; $5119: $00
	nop                                              ; $511a: $00
	nop                                              ; $511b: $00
	nop                                              ; $511c: $00
	nop                                              ; $511d: $00
	nop                                              ; $511e: $00
	nop                                              ; $511f: $00
	nop                                              ; $5120: $00
	nop                                              ; $5121: $00
	nop                                              ; $5122: $00
	nop                                              ; $5123: $00
	nop                                              ; $5124: $00
	nop                                              ; $5125: $00
	nop                                              ; $5126: $00
	nop                                              ; $5127: $00
	nop                                              ; $5128: $00
	nop                                              ; $5129: $00
	nop                                              ; $512a: $00
	nop                                              ; $512b: $00
	nop                                              ; $512c: $00
	nop                                              ; $512d: $00
	nop                                              ; $512e: $00
	nop                                              ; $512f: $00
	nop                                              ; $5130: $00
	nop                                              ; $5131: $00
	nop                                              ; $5132: $00
	nop                                              ; $5133: $00
	nop                                              ; $5134: $00
	nop                                              ; $5135: $00
	nop                                              ; $5136: $00
	nop                                              ; $5137: $00
	nop                                              ; $5138: $00
	nop                                              ; $5139: $00
	nop                                              ; $513a: $00
	nop                                              ; $513b: $00
	nop                                              ; $513c: $00
	nop                                              ; $513d: $00
	rlca                                             ; $513e: $07
	rlca                                             ; $513f: $07
	rlca                                             ; $5140: $07
	rlca                                             ; $5141: $07
	rlca                                             ; $5142: $07
	rlca                                             ; $5143: $07
	rlca                                             ; $5144: $07
	rlca                                             ; $5145: $07
	rlca                                             ; $5146: $07
	rlca                                             ; $5147: $07
	rlca                                             ; $5148: $07
	rlca                                             ; $5149: $07
	rlca                                             ; $514a: $07
	rlca                                             ; $514b: $07
	rlca                                             ; $514c: $07
	rlca                                             ; $514d: $07
	daa                                              ; $514e: $27
	rlca                                             ; $514f: $07
	rlca                                             ; $5150: $07
	rlca                                             ; $5151: $07
	rlca                                             ; $5152: $07
	rlca                                             ; $5153: $07
	rlca                                             ; $5154: $07
	rlca                                             ; $5155: $07
	ld   bc, $0101                                   ; $5156: $01 $01 $01
	nop                                              ; $5159: $00
	ld   [bc], a                                     ; $515a: $02
	ld   [bc], a                                     ; $515b: $02
	ld   [bc], a                                     ; $515c: $02
	inc  b                                           ; $515d: $04
	ld   bc, $0101                                   ; $515e: $01 $01 $01
	ld   bc, $0707                                   ; $5161: $01 $07 $07
	rlca                                             ; $5164: $07
	rlca                                             ; $5165: $07
	rlca                                             ; $5166: $07
	rlca                                             ; $5167: $07
	rlca                                             ; $5168: $07
	rlca                                             ; $5169: $07
	ld   bc, $0001                                   ; $516a: $01 $01 $00
	ld   [bc], a                                     ; $516d: $02
	ld   [bc], a                                     ; $516e: $02
	ld   [bc], a                                     ; $516f: $02
	ld   [bc], a                                     ; $5170: $02
	ld   [bc], a                                     ; $5171: $02
	ld   bc, $0101                                   ; $5172: $01 $01 $01
	ld   bc, $0707                                   ; $5175: $01 $07 $07
	rlca                                             ; $5178: $07
	rlca                                             ; $5179: $07
	rlca                                             ; $517a: $07
	rlca                                             ; $517b: $07
	rlca                                             ; $517c: $07
	rlca                                             ; $517d: $07
	ld   bc, $0001                                   ; $517e: $01 $01 $00
	ld   [bc], a                                     ; $5181: $02
	ld   [bc], a                                     ; $5182: $02
	dec  b                                           ; $5183: $05
	ld   [bc], a                                     ; $5184: $02
	ld   [bc], a                                     ; $5185: $02
	inc  bc                                          ; $5186: $03
	ld   bc, $0101                                   ; $5187: $01 $01 $01
	rlca                                             ; $518a: $07
	rlca                                             ; $518b: $07
	rlca                                             ; $518c: $07
	rlca                                             ; $518d: $07
	rlca                                             ; $518e: $07
	rlca                                             ; $518f: $07
	rlca                                             ; $5190: $07
	rlca                                             ; $5191: $07
	ld   bc, $0001                                   ; $5192: $01 $01 $00
	ld   [bc], a                                     ; $5195: $02
	dec  b                                           ; $5196: $05
	dec  b                                           ; $5197: $05
	dec  b                                           ; $5198: $05
	inc  b                                           ; $5199: $04
	inc  bc                                          ; $519a: $03
	ld   bc, $0101                                   ; $519b: $01 $01 $01
	rlca                                             ; $519e: $07
	rlca                                             ; $519f: $07
	rlca                                             ; $51a0: $07
	rlca                                             ; $51a1: $07
	rlca                                             ; $51a2: $07
	rlca                                             ; $51a3: $07
	rlca                                             ; $51a4: $07
	rlca                                             ; $51a5: $07
	ld   bc, $0001                                   ; $51a6: $01 $01 $00
	inc  bc                                          ; $51a9: $03
	inc  bc                                          ; $51aa: $03
	dec  b                                           ; $51ab: $05
	nop                                              ; $51ac: $00
	ld   b, $01                                      ; $51ad: $06 $01
	ld   bc, $0101                                   ; $51af: $01 $01 $01
	rlca                                             ; $51b2: $07
	rlca                                             ; $51b3: $07
	rlca                                             ; $51b4: $07
	rlca                                             ; $51b5: $07
	rlca                                             ; $51b6: $07
	rlca                                             ; $51b7: $07
	rlca                                             ; $51b8: $07
	rlca                                             ; $51b9: $07
	ld   bc, $0201                                   ; $51ba: $01 $01 $02
	inc  bc                                          ; $51bd: $03
	inc  bc                                          ; $51be: $03
	dec  b                                           ; $51bf: $05
	nop                                              ; $51c0: $00
	ld   bc, $0101                                   ; $51c1: $01 $01 $01
	ld   bc, $0701                                   ; $51c4: $01 $01 $07
	rlca                                             ; $51c7: $07
	rlca                                             ; $51c8: $07
	rlca                                             ; $51c9: $07
	rlca                                             ; $51ca: $07
	rlca                                             ; $51cb: $07
	rlca                                             ; $51cc: $07
	rlca                                             ; $51cd: $07
	ld   bc, $0201                                   ; $51ce: $01 $01 $02
	inc  bc                                          ; $51d1: $03
	inc  bc                                          ; $51d2: $03
	ld   [bc], a                                     ; $51d3: $02
	ld   [bc], a                                     ; $51d4: $02
	inc  bc                                          ; $51d5: $03
	ld   bc, $0101                                   ; $51d6: $01 $01 $01
	ld   bc, $0707                                   ; $51d9: $01 $07 $07
	rlca                                             ; $51dc: $07
	rlca                                             ; $51dd: $07
	rlca                                             ; $51de: $07
	rlca                                             ; $51df: $07
	rlca                                             ; $51e0: $07
	rlca                                             ; $51e1: $07
	ld   bc, $0301                                   ; $51e2: $01 $01 $03
	inc  bc                                          ; $51e5: $03
	ld   [bc], a                                     ; $51e6: $02
	inc  bc                                          ; $51e7: $03
	ld   [bc], a                                     ; $51e8: $02
	ld   [bc], a                                     ; $51e9: $02
	ld   bc, $0101                                   ; $51ea: $01 $01 $01
	ld   bc, $0707                                   ; $51ed: $01 $07 $07
	rlca                                             ; $51f0: $07
	rlca                                             ; $51f1: $07
	rlca                                             ; $51f2: $07
	rlca                                             ; $51f3: $07
	rlca                                             ; $51f4: $07
	rlca                                             ; $51f5: $07
	ld   bc, $0303                                   ; $51f6: $01 $03 $03
	inc  bc                                          ; $51f9: $03
	ld   [bc], a                                     ; $51fa: $02
	inc  bc                                          ; $51fb: $03
	inc  bc                                          ; $51fc: $03
	inc  bc                                          ; $51fd: $03
	nop                                              ; $51fe: $00
	ld   bc, $0101                                   ; $51ff: $01 $01 $01
	rlca                                             ; $5202: $07
	rlca                                             ; $5203: $07
	rlca                                             ; $5204: $07
	rlca                                             ; $5205: $07
	rlca                                             ; $5206: $07
	rlca                                             ; $5207: $07
	rlca                                             ; $5208: $07
	rlca                                             ; $5209: $07
	inc  bc                                          ; $520a: $03
	inc  bc                                          ; $520b: $03
	inc  bc                                          ; $520c: $03
	inc  bc                                          ; $520d: $03
	inc  bc                                          ; $520e: $03
	inc  bc                                          ; $520f: $03
	inc  bc                                          ; $5210: $03
	inc  bc                                          ; $5211: $03
	nop                                              ; $5212: $00
	ld   bc, $0101                                   ; $5213: $01 $01 $01
	rlca                                             ; $5216: $07
	rlca                                             ; $5217: $07
	rlca                                             ; $5218: $07
	rlca                                             ; $5219: $07
	rlca                                             ; $521a: $07
	rlca                                             ; $521b: $07
	rlca                                             ; $521c: $07
	rlca                                             ; $521d: $07
	inc  bc                                          ; $521e: $03
	inc  bc                                          ; $521f: $03
	inc  bc                                          ; $5220: $03
	inc  b                                           ; $5221: $04
	inc  b                                           ; $5222: $04
	inc  b                                           ; $5223: $04
	inc  b                                           ; $5224: $04
	inc  b                                           ; $5225: $04
	inc  bc                                          ; $5226: $03
	ld   bc, $0101                                   ; $5227: $01 $01 $01
	rlca                                             ; $522a: $07
	rlca                                             ; $522b: $07
	rlca                                             ; $522c: $07
	rlca                                             ; $522d: $07
	rlca                                             ; $522e: $07
	rlca                                             ; $522f: $07
	rlca                                             ; $5230: $07
	rlca                                             ; $5231: $07
	inc  bc                                          ; $5232: $03
	inc  bc                                          ; $5233: $03
	inc  bc                                          ; $5234: $03
	inc  b                                           ; $5235: $04
	inc  b                                           ; $5236: $04
	inc  b                                           ; $5237: $04
	inc  b                                           ; $5238: $04
	inc  b                                           ; $5239: $04
	inc  bc                                          ; $523a: $03
	inc  bc                                          ; $523b: $03
	ld   bc, $0701                                   ; $523c: $01 $01 $07
	rlca                                             ; $523f: $07
	rlca                                             ; $5240: $07
	rlca                                             ; $5241: $07
	rlca                                             ; $5242: $07
	rlca                                             ; $5243: $07
	rlca                                             ; $5244: $07
	rlca                                             ; $5245: $07
	inc  bc                                          ; $5246: $03
	inc  bc                                          ; $5247: $03
	inc  bc                                          ; $5248: $03
	ld   [bc], a                                     ; $5249: $02
	inc  b                                           ; $524a: $04
	inc  b                                           ; $524b: $04
	inc  b                                           ; $524c: $04
	inc  b                                           ; $524d: $04
	inc  bc                                          ; $524e: $03
	nop                                              ; $524f: $00
	ld   bc, $0701                                   ; $5250: $01 $01 $07
	rlca                                             ; $5253: $07
	rlca                                             ; $5254: $07
	rlca                                             ; $5255: $07
	rlca                                             ; $5256: $07
	rlca                                             ; $5257: $07
	rlca                                             ; $5258: $07
	rlca                                             ; $5259: $07
	ld   bc, $0303                                   ; $525a: $01 $03 $03
	ld   b, $00                                      ; $525d: $06 $00
	ld   b, $06                                      ; $525f: $06 $06
	inc  b                                           ; $5261: $04
	inc  bc                                          ; $5262: $03
	nop                                              ; $5263: $00
	ld   bc, $0701                                   ; $5264: $01 $01 $07
	rlca                                             ; $5267: $07
	rlca                                             ; $5268: $07
	rlca                                             ; $5269: $07
	rlca                                             ; $526a: $07
	rlca                                             ; $526b: $07
	rlca                                             ; $526c: $07
	rlca                                             ; $526d: $07
	ld   bc, $0303                                   ; $526e: $01 $03 $03
	ld   b, $00                                      ; $5271: $06 $00
	dec  b                                           ; $5273: $05
	ld   b, $03                                      ; $5274: $06 $03
	inc  bc                                          ; $5276: $03
	inc  bc                                          ; $5277: $03
	ld   bc, $0705                                   ; $5278: $01 $05 $07
	rlca                                             ; $527b: $07
	rlca                                             ; $527c: $07
	rlca                                             ; $527d: $07
	rlca                                             ; $527e: $07
	rlca                                             ; $527f: $07
	rlca                                             ; $5280: $07
	rlca                                             ; $5281: $07
	inc  bc                                          ; $5282: $03
	inc  bc                                          ; $5283: $03
	inc  bc                                          ; $5284: $03
	inc  bc                                          ; $5285: $03
	nop                                              ; $5286: $00
	dec  b                                           ; $5287: $05
	ld   b, $03                                      ; $5288: $06 $03
	inc  bc                                          ; $528a: $03
	inc  bc                                          ; $528b: $03
	ld   bc, $0705                                   ; $528c: $01 $05 $07
	rlca                                             ; $528f: $07
	rlca                                             ; $5290: $07
	rlca                                             ; $5291: $07
	rlca                                             ; $5292: $07
	rlca                                             ; $5293: $07
	rlca                                             ; $5294: $07
	ld   b, a                                        ; $5295: $47
	rlca                                             ; $5296: $07
	rlca                                             ; $5297: $07
	rlca                                             ; $5298: $07
	rlca                                             ; $5299: $07
	rlca                                             ; $529a: $07
	rlca                                             ; $529b: $07
	rlca                                             ; $529c: $07
	rlca                                             ; $529d: $07
	rlca                                             ; $529e: $07
	rlca                                             ; $529f: $07
	rlca                                             ; $52a0: $07
	rlca                                             ; $52a1: $07
	rlca                                             ; $52a2: $07
	rlca                                             ; $52a3: $07
	rlca                                             ; $52a4: $07
	rlca                                             ; $52a5: $07
	ld   b, l                                        ; $52a6: $45
	ld   b, l                                        ; $52a7: $45
	ld   b, l                                        ; $52a8: $45
	ld   b, b                                        ; $52a9: $40
	ld   b, c                                        ; $52aa: $41
	ld   b, c                                        ; $52ab: $41
	ld   b, c                                        ; $52ac: $41
	ld   b, c                                        ; $52ad: $41
	ld   b, c                                        ; $52ae: $41
	ld   b, c                                        ; $52af: $41
	ld   b, c                                        ; $52b0: $41
	ld   b, c                                        ; $52b1: $41
	ld   b, c                                        ; $52b2: $41
	ld   b, c                                        ; $52b3: $41
	ld   b, c                                        ; $52b4: $41
	ld   b, c                                        ; $52b5: $41
	ld   b, b                                        ; $52b6: $40
	ld   b, l                                        ; $52b7: $45
	ld   b, l                                        ; $52b8: $45
	ld   b, l                                        ; $52b9: $45
	ld   b, l                                        ; $52ba: $45
	ld   b, l                                        ; $52bb: $45
	ld   b, l                                        ; $52bc: $45
	ld   b, [hl]                                     ; $52bd: $46
	add  b                                           ; $52be: $80
	add  c                                           ; $52bf: $81
	add  d                                           ; $52c0: $82
	add  e                                           ; $52c1: $83
	add  h                                           ; $52c2: $84
	add  l                                           ; $52c3: $85
	add  [hl]                                        ; $52c4: $86
	add  a                                           ; $52c5: $87
	adc  b                                           ; $52c6: $88
	adc  c                                           ; $52c7: $89
	adc  d                                           ; $52c8: $8a
	adc  e                                           ; $52c9: $8b
	ld   b, d                                        ; $52ca: $42
	ld   b, l                                        ; $52cb: $45
	ld   b, l                                        ; $52cc: $45
	ld   b, l                                        ; $52cd: $45
	ld   b, l                                        ; $52ce: $45
	ld   b, l                                        ; $52cf: $45
	ld   b, l                                        ; $52d0: $45
	ld   b, [hl]                                     ; $52d1: $46
	sub  b                                           ; $52d2: $90
	sub  c                                           ; $52d3: $91
	sub  d                                           ; $52d4: $92
	sub  e                                           ; $52d5: $93
	sub  h                                           ; $52d6: $94
	sub  l                                           ; $52d7: $95
	sub  [hl]                                        ; $52d8: $96
	sub  a                                           ; $52d9: $97
	sbc  b                                           ; $52da: $98
	sbc  c                                           ; $52db: $99
	sbc  d                                           ; $52dc: $9a
	sbc  e                                           ; $52dd: $9b
	ld   b, d                                        ; $52de: $42
	ld   b, l                                        ; $52df: $45
	ld   b, l                                        ; $52e0: $45
	ld   b, l                                        ; $52e1: $45
	ld   b, l                                        ; $52e2: $45
	ld   b, l                                        ; $52e3: $45
	ld   b, l                                        ; $52e4: $45
	ld   b, [hl]                                     ; $52e5: $46
	and  b                                           ; $52e6: $a0
	and  c                                           ; $52e7: $a1
	and  d                                           ; $52e8: $a2
	and  e                                           ; $52e9: $a3
	and  h                                           ; $52ea: $a4
	and  l                                           ; $52eb: $a5
	and  [hl]                                        ; $52ec: $a6
	and  a                                           ; $52ed: $a7
	xor  b                                           ; $52ee: $a8
	xor  c                                           ; $52ef: $a9
	xor  d                                           ; $52f0: $aa
	xor  e                                           ; $52f1: $ab
	ld   b, d                                        ; $52f2: $42
	ld   b, l                                        ; $52f3: $45
	ld   b, l                                        ; $52f4: $45
	ld   b, l                                        ; $52f5: $45
	ld   b, l                                        ; $52f6: $45
	ld   b, l                                        ; $52f7: $45
	ld   b, l                                        ; $52f8: $45
	ld   b, [hl]                                     ; $52f9: $46
	or   b                                           ; $52fa: $b0
	or   c                                           ; $52fb: $b1
	or   d                                           ; $52fc: $b2
	or   e                                           ; $52fd: $b3
	or   h                                           ; $52fe: $b4
	or   l                                           ; $52ff: $b5
	or   [hl]                                        ; $5300: $b6
	or   a                                           ; $5301: $b7
	cp   b                                           ; $5302: $b8
	cp   c                                           ; $5303: $b9
	cp   d                                           ; $5304: $ba
	cp   e                                           ; $5305: $bb
	ld   b, d                                        ; $5306: $42
	ld   b, l                                        ; $5307: $45
	ld   b, l                                        ; $5308: $45
	ld   b, l                                        ; $5309: $45
	ld   b, l                                        ; $530a: $45
	ld   b, l                                        ; $530b: $45
	ld   b, l                                        ; $530c: $45
	ld   b, [hl]                                     ; $530d: $46
	ret  nz                                          ; $530e: $c0

	pop  bc                                          ; $530f: $c1
	jp   nz, $c4c3                                   ; $5310: $c2 $c3 $c4

	push bc                                          ; $5313: $c5
	add  $c7                                         ; $5314: $c6 $c7
	ret  z                                           ; $5316: $c8

	ret                                              ; $5317: $c9


	jp   z, Jump_0a0_42cb                            ; $5318: $ca $cb $42

	ld   b, l                                        ; $531b: $45
	ld   b, l                                        ; $531c: $45
	ld   b, l                                        ; $531d: $45
	ld   b, l                                        ; $531e: $45
	ld   b, l                                        ; $531f: $45
	ld   b, l                                        ; $5320: $45
	ld   b, [hl]                                     ; $5321: $46
	ret  nc                                          ; $5322: $d0

	pop  de                                          ; $5323: $d1
	jp   nc, $d4d3                                   ; $5324: $d2 $d3 $d4

	push de                                          ; $5327: $d5
	sub  $d7                                         ; $5328: $d6 $d7
	ret  c                                           ; $532a: $d8

	reti                                             ; $532b: $d9


	jp   c, Jump_0a0_42db                            ; $532c: $da $db $42

	ld   b, l                                        ; $532f: $45
	ld   b, l                                        ; $5330: $45
	ld   b, l                                        ; $5331: $45
	ld   b, l                                        ; $5332: $45
	ld   b, l                                        ; $5333: $45
	ld   b, l                                        ; $5334: $45
	ld   b, [hl]                                     ; $5335: $46
	ldh  [$e1], a                                    ; $5336: $e0 $e1
	ldh  [c], a                                      ; $5338: $e2
	db   $e3                                         ; $5339: $e3
	db   $e4                                         ; $533a: $e4
	push hl                                          ; $533b: $e5
	and  $e7                                         ; $533c: $e6 $e7
	add  sp, -$17                                    ; $533e: $e8 $e9
	ld   [$42eb], a                                  ; $5340: $ea $eb $42
	ld   b, l                                        ; $5343: $45
	ld   b, l                                        ; $5344: $45
	ld   b, l                                        ; $5345: $45
	ld   b, l                                        ; $5346: $45
	ld   b, l                                        ; $5347: $45
	ld   b, l                                        ; $5348: $45
	ld   b, [hl]                                     ; $5349: $46
	ldh  a, [$f1]                                    ; $534a: $f0 $f1
	ldh  a, [c]                                      ; $534c: $f2
	di                                               ; $534d: $f3
	db   $f4                                         ; $534e: $f4
	push af                                          ; $534f: $f5
	or   $f7                                         ; $5350: $f6 $f7
	ld   hl, sp-$07                                  ; $5352: $f8 $f9
	ld   a, [$42fb]                                  ; $5354: $fa $fb $42
	ld   b, l                                        ; $5357: $45
	ld   b, l                                        ; $5358: $45
	ld   b, l                                        ; $5359: $45
	ld   b, l                                        ; $535a: $45
	ld   b, l                                        ; $535b: $45
	ld   b, l                                        ; $535c: $45
	ld   b, [hl]                                     ; $535d: $46
	adc  h                                           ; $535e: $8c
	adc  l                                           ; $535f: $8d
	adc  [hl]                                        ; $5360: $8e
	adc  a                                           ; $5361: $8f
	call z, $cecd                                    ; $5362: $cc $cd $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5365: $cf
	nop                                              ; $5366: $00
	ld   bc, $0302                                   ; $5367: $01 $02 $03
	ld   b, d                                        ; $536a: $42
	ld   b, l                                        ; $536b: $45
	ld   b, l                                        ; $536c: $45
	ld   b, l                                        ; $536d: $45
	ld   b, l                                        ; $536e: $45
	ld   b, l                                        ; $536f: $45
	ld   b, l                                        ; $5370: $45
	ld   b, [hl]                                     ; $5371: $46
	sbc  h                                           ; $5372: $9c
	sbc  l                                           ; $5373: $9d
	sbc  [hl]                                        ; $5374: $9e
	sbc  a                                           ; $5375: $9f
	call c, $dedd                                    ; $5376: $dc $dd $de
	rst  JumpTable                                         ; $5379: $df
	db   $10                                         ; $537a: $10
	ld   de, $1312                                   ; $537b: $11 $12 $13
	ld   b, d                                        ; $537e: $42
	ld   b, l                                        ; $537f: $45
	ld   b, l                                        ; $5380: $45
	ld   b, l                                        ; $5381: $45
	ld   b, l                                        ; $5382: $45
	ld   b, l                                        ; $5383: $45
	ld   b, l                                        ; $5384: $45
	ld   b, [hl]                                     ; $5385: $46
	xor  h                                           ; $5386: $ac
	xor  l                                           ; $5387: $ad
	xor  [hl]                                        ; $5388: $ae
	xor  a                                           ; $5389: $af
	db   $ec                                         ; $538a: $ec
	db   $ed                                         ; $538b: $ed
	xor  $ef                                         ; $538c: $ee $ef
	jr   nz, @+$23                                   ; $538e: $20 $21

	ld   [hl+], a                                    ; $5390: $22
	inc  hl                                          ; $5391: $23
	ld   b, d                                        ; $5392: $42
	ld   b, l                                        ; $5393: $45
	ld   b, l                                        ; $5394: $45
	ld   b, l                                        ; $5395: $45
	ld   b, l                                        ; $5396: $45
	ld   b, l                                        ; $5397: $45
	ld   b, l                                        ; $5398: $45
	ld   b, [hl]                                     ; $5399: $46
	cp   h                                           ; $539a: $bc
	cp   l                                           ; $539b: $bd
	cp   [hl]                                        ; $539c: $be
	cp   a                                           ; $539d: $bf
	db   $fc                                         ; $539e: $fc
	db   $fd                                         ; $539f: $fd
	cp   $ff                                         ; $53a0: $fe $ff
	jr   nc, jr_0a0_53d5                             ; $53a2: $30 $31

	ld   [hl-], a                                    ; $53a4: $32
	inc  sp                                          ; $53a5: $33
	ld   b, d                                        ; $53a6: $42
	ld   b, l                                        ; $53a7: $45
	ld   b, l                                        ; $53a8: $45
	ld   b, l                                        ; $53a9: $45
	ld   b, l                                        ; $53aa: $45
	ld   b, l                                        ; $53ab: $45
	ld   b, l                                        ; $53ac: $45
	ld   b, [hl]                                     ; $53ad: $46
	inc  b                                           ; $53ae: $04
	dec  b                                           ; $53af: $05
	ld   b, $07                                      ; $53b0: $06 $07
	ld   [$0a09], sp                                 ; $53b2: $08 $09 $0a
	dec  bc                                          ; $53b5: $0b
	inc  c                                           ; $53b6: $0c
	dec  c                                           ; $53b7: $0d
	ld   c, $0f                                      ; $53b8: $0e $0f
	ld   b, d                                        ; $53ba: $42
	ld   b, l                                        ; $53bb: $45
	ld   b, l                                        ; $53bc: $45
	ld   b, l                                        ; $53bd: $45
	ld   b, l                                        ; $53be: $45
	ld   b, l                                        ; $53bf: $45
	ld   b, l                                        ; $53c0: $45
	ld   b, [hl]                                     ; $53c1: $46
	inc  d                                           ; $53c2: $14
	dec  d                                           ; $53c3: $15
	ld   d, $17                                      ; $53c4: $16 $17
	jr   @+$1b                                       ; $53c6: $18 $19

	ld   a, [de]                                     ; $53c8: $1a
	dec  de                                          ; $53c9: $1b
	inc  e                                           ; $53ca: $1c
	dec  e                                           ; $53cb: $1d
	ld   e, $1f                                      ; $53cc: $1e $1f
	ld   b, d                                        ; $53ce: $42
	ld   b, l                                        ; $53cf: $45
	ld   b, l                                        ; $53d0: $45
	ld   b, l                                        ; $53d1: $45
	ld   b, l                                        ; $53d2: $45
	ld   b, l                                        ; $53d3: $45
	ld   b, l                                        ; $53d4: $45

jr_0a0_53d5:
	ld   b, [hl]                                     ; $53d5: $46
	inc  h                                           ; $53d6: $24
	dec  h                                           ; $53d7: $25
	ld   h, $27                                      ; $53d8: $26 $27
	jr   z, jr_0a0_5405                              ; $53da: $28 $29

	ld   a, [hl+]                                    ; $53dc: $2a
	dec  hl                                          ; $53dd: $2b
	inc  l                                           ; $53de: $2c
	dec  l                                           ; $53df: $2d
	ld   l, $2f                                      ; $53e0: $2e $2f
	ld   b, d                                        ; $53e2: $42
	ld   b, l                                        ; $53e3: $45
	ld   b, l                                        ; $53e4: $45
	ld   b, l                                        ; $53e5: $45
	ld   b, l                                        ; $53e6: $45
	ld   b, l                                        ; $53e7: $45
	ld   b, l                                        ; $53e8: $45
	ld   b, [hl]                                     ; $53e9: $46
	inc  [hl]                                        ; $53ea: $34
	dec  [hl]                                        ; $53eb: $35
	ld   [hl], $37                                   ; $53ec: $36 $37
	jr   c, @+$3b                                    ; $53ee: $38 $39

	ld   a, [hl-]                                    ; $53f0: $3a
	dec  sp                                          ; $53f1: $3b
	inc  a                                           ; $53f2: $3c
	dec  a                                           ; $53f3: $3d
	ld   a, $3f                                      ; $53f4: $3e $3f
	ld   b, d                                        ; $53f6: $42
	ld   b, l                                        ; $53f7: $45
	ld   b, l                                        ; $53f8: $45
	ld   b, l                                        ; $53f9: $45
	ld   b, l                                        ; $53fa: $45
	ld   b, l                                        ; $53fb: $45
	ld   b, l                                        ; $53fc: $45
	ld   b, b                                        ; $53fd: $40
	ld   b, e                                        ; $53fe: $43
	ld   b, e                                        ; $53ff: $43
	ld   b, e                                        ; $5400: $43
	ld   b, e                                        ; $5401: $43
	ld   b, e                                        ; $5402: $43
	ld   b, e                                        ; $5403: $43
	ld   b, e                                        ; $5404: $43

jr_0a0_5405:
	ld   b, e                                        ; $5405: $43
	ld   b, e                                        ; $5406: $43
	ld   b, e                                        ; $5407: $43
	ld   b, e                                        ; $5408: $43
	ld   b, e                                        ; $5409: $43
	ld   b, h                                        ; $540a: $44
	ld   b, l                                        ; $540b: $45
	ld   b, l                                        ; $540c: $45
	ld   b, l                                        ; $540d: $45
	rlca                                             ; $540e: $07
	rlca                                             ; $540f: $07
	rlca                                             ; $5410: $07
	rlca                                             ; $5411: $07
	rlca                                             ; $5412: $07
	rlca                                             ; $5413: $07
	rlca                                             ; $5414: $07
	rlca                                             ; $5415: $07
	rlca                                             ; $5416: $07
	rlca                                             ; $5417: $07
	rlca                                             ; $5418: $07
	rlca                                             ; $5419: $07
	rlca                                             ; $541a: $07
	rlca                                             ; $541b: $07
	rlca                                             ; $541c: $07
	rlca                                             ; $541d: $07
	rlca                                             ; $541e: $07
	rlca                                             ; $541f: $07
	rlca                                             ; $5420: $07
	rlca                                             ; $5421: $07
	rlca                                             ; $5422: $07
	rlca                                             ; $5423: $07
	rlca                                             ; $5424: $07
	rlca                                             ; $5425: $07
	ld   b, $06                                      ; $5426: $06 $06
	ld   b, $06                                      ; $5428: $06 $06
	ld   b, $06                                      ; $542a: $06 $06
	ld   b, $06                                      ; $542c: $06 $06
	ld   b, $06                                      ; $542e: $06 $06
	ld   b, $06                                      ; $5430: $06 $06
	rlca                                             ; $5432: $07
	rlca                                             ; $5433: $07
	rlca                                             ; $5434: $07
	rlca                                             ; $5435: $07
	rlca                                             ; $5436: $07
	rlca                                             ; $5437: $07
	rlca                                             ; $5438: $07
	rlca                                             ; $5439: $07
	ld   b, $06                                      ; $543a: $06 $06
	ld   b, $06                                      ; $543c: $06 $06
	dec  b                                           ; $543e: $05
	dec  b                                           ; $543f: $05
	dec  b                                           ; $5440: $05
	ld   [bc], a                                     ; $5441: $02
	nop                                              ; $5442: $00
	nop                                              ; $5443: $00
	ld   b, $06                                      ; $5444: $06 $06
	rlca                                             ; $5446: $07
	rlca                                             ; $5447: $07
	rlca                                             ; $5448: $07
	rlca                                             ; $5449: $07
	rlca                                             ; $544a: $07
	rlca                                             ; $544b: $07
	rlca                                             ; $544c: $07
	rlca                                             ; $544d: $07
	ld   b, $06                                      ; $544e: $06 $06
	ld   b, $05                                      ; $5450: $06 $05
	dec  b                                           ; $5452: $05
	ld   [bc], a                                     ; $5453: $02
	ld   [bc], a                                     ; $5454: $02
	ld   [bc], a                                     ; $5455: $02
	ld   [bc], a                                     ; $5456: $02
	nop                                              ; $5457: $00
	nop                                              ; $5458: $00
	ld   b, $07                                      ; $5459: $06 $07
	rlca                                             ; $545b: $07
	rlca                                             ; $545c: $07
	rlca                                             ; $545d: $07
	rlca                                             ; $545e: $07
	rlca                                             ; $545f: $07
	rlca                                             ; $5460: $07
	rlca                                             ; $5461: $07
	ld   b, $06                                      ; $5462: $06 $06
	ld   b, $05                                      ; $5464: $06 $05
	dec  b                                           ; $5466: $05
	ld   [bc], a                                     ; $5467: $02
	ld   [bc], a                                     ; $5468: $02
	ld   [bc], a                                     ; $5469: $02
	ld   [bc], a                                     ; $546a: $02
	ld   [bc], a                                     ; $546b: $02
	nop                                              ; $546c: $00
	ld   b, $07                                      ; $546d: $06 $07
	rlca                                             ; $546f: $07
	rlca                                             ; $5470: $07
	rlca                                             ; $5471: $07
	rlca                                             ; $5472: $07
	rlca                                             ; $5473: $07
	rlca                                             ; $5474: $07
	rlca                                             ; $5475: $07
	ld   b, $06                                      ; $5476: $06 $06
	ld   b, $05                                      ; $5478: $06 $05
	ld   [bc], a                                     ; $547a: $02
	ld   [bc], a                                     ; $547b: $02
	ld   [bc], a                                     ; $547c: $02
	ld   [bc], a                                     ; $547d: $02
	ld   [bc], a                                     ; $547e: $02
	ld   [bc], a                                     ; $547f: $02
	dec  b                                           ; $5480: $05
	ld   b, $07                                      ; $5481: $06 $07
	rlca                                             ; $5483: $07
	rlca                                             ; $5484: $07
	rlca                                             ; $5485: $07
	rlca                                             ; $5486: $07
	rlca                                             ; $5487: $07
	rlca                                             ; $5488: $07
	rlca                                             ; $5489: $07
	ld   b, $06                                      ; $548a: $06 $06
	dec  b                                           ; $548c: $05
	ld   [bc], a                                     ; $548d: $02
	ld   [bc], a                                     ; $548e: $02
	ld   [bc], a                                     ; $548f: $02
	ld   [bc], a                                     ; $5490: $02
	ld   [bc], a                                     ; $5491: $02
	ld   [bc], a                                     ; $5492: $02
	ld   [bc], a                                     ; $5493: $02
	dec  b                                           ; $5494: $05
	ld   b, $07                                      ; $5495: $06 $07
	rlca                                             ; $5497: $07
	rlca                                             ; $5498: $07
	rlca                                             ; $5499: $07
	rlca                                             ; $549a: $07
	rlca                                             ; $549b: $07
	rlca                                             ; $549c: $07
	rlca                                             ; $549d: $07
	ld   b, $06                                      ; $549e: $06 $06
	nop                                              ; $54a0: $00
	ld   [bc], a                                     ; $54a1: $02
	ld   [bc], a                                     ; $54a2: $02
	ld   [bc], a                                     ; $54a3: $02
	ld   [bc], a                                     ; $54a4: $02
	ld   bc, $0202                                   ; $54a5: $01 $02 $02
	ld   [bc], a                                     ; $54a8: $02
	ld   b, $07                                      ; $54a9: $06 $07
	rlca                                             ; $54ab: $07
	rlca                                             ; $54ac: $07
	rlca                                             ; $54ad: $07
	rlca                                             ; $54ae: $07
	rlca                                             ; $54af: $07
	rlca                                             ; $54b0: $07
	rlca                                             ; $54b1: $07
	ld   b, $06                                      ; $54b2: $06 $06
	nop                                              ; $54b4: $00
	ld   [bc], a                                     ; $54b5: $02
	ld   bc, $0101                                   ; $54b6: $01 $01 $01
	ld   bc, $0202                                   ; $54b9: $01 $02 $02
	ld   [bc], a                                     ; $54bc: $02
	dec  b                                           ; $54bd: $05
	rlca                                             ; $54be: $07
	rlca                                             ; $54bf: $07
	rlca                                             ; $54c0: $07
	rlca                                             ; $54c1: $07
	rlca                                             ; $54c2: $07
	rlca                                             ; $54c3: $07
	rlca                                             ; $54c4: $07
	rlca                                             ; $54c5: $07
	ld   b, $06                                      ; $54c6: $06 $06
	ld   b, $02                                      ; $54c8: $06 $02
	ld   [bc], a                                     ; $54ca: $02
	ld   bc, $0101                                   ; $54cb: $01 $01 $01
	ld   [bc], a                                     ; $54ce: $02
	ld   [bc], a                                     ; $54cf: $02
	ld   [bc], a                                     ; $54d0: $02
	dec  b                                           ; $54d1: $05
	rlca                                             ; $54d2: $07
	rlca                                             ; $54d3: $07
	rlca                                             ; $54d4: $07
	rlca                                             ; $54d5: $07
	rlca                                             ; $54d6: $07
	rlca                                             ; $54d7: $07
	rlca                                             ; $54d8: $07
	rlca                                             ; $54d9: $07
	ld   b, $06                                      ; $54da: $06 $06
	dec  b                                           ; $54dc: $05
	ld   [bc], a                                     ; $54dd: $02
	ld   [bc], a                                     ; $54de: $02
	ld   [bc], a                                     ; $54df: $02
	ld   bc, $0201                                   ; $54e0: $01 $01 $02
	ld   [bc], a                                     ; $54e3: $02
	ld   [bc], a                                     ; $54e4: $02
	dec  b                                           ; $54e5: $05
	rlca                                             ; $54e6: $07
	rlca                                             ; $54e7: $07
	rlca                                             ; $54e8: $07
	rlca                                             ; $54e9: $07
	rlca                                             ; $54ea: $07
	rlca                                             ; $54eb: $07
	rlca                                             ; $54ec: $07
	rlca                                             ; $54ed: $07
	ld   b, $06                                      ; $54ee: $06 $06
	ld   b, $02                                      ; $54f0: $06 $02
	ld   [bc], a                                     ; $54f2: $02
	ld   [bc], a                                     ; $54f3: $02
	ld   bc, $0202                                   ; $54f4: $01 $02 $02
	ld   [bc], a                                     ; $54f7: $02
	nop                                              ; $54f8: $00
	dec  b                                           ; $54f9: $05
	rlca                                             ; $54fa: $07
	rlca                                             ; $54fb: $07
	rlca                                             ; $54fc: $07
	rlca                                             ; $54fd: $07
	rlca                                             ; $54fe: $07
	rlca                                             ; $54ff: $07
	rlca                                             ; $5500: $07
	rlca                                             ; $5501: $07
	ld   bc, $0601                                   ; $5502: $01 $01 $06
	ld   [bc], a                                     ; $5505: $02
	dec  b                                           ; $5506: $05
	dec  b                                           ; $5507: $05
	ld   [bc], a                                     ; $5508: $02
	ld   [bc], a                                     ; $5509: $02
	ld   [bc], a                                     ; $550a: $02
	ld   [bc], a                                     ; $550b: $02
	ld   bc, $0706                                   ; $550c: $01 $06 $07
	rlca                                             ; $550f: $07
	rlca                                             ; $5510: $07
	rlca                                             ; $5511: $07
	rlca                                             ; $5512: $07
	rlca                                             ; $5513: $07
	rlca                                             ; $5514: $07
	rlca                                             ; $5515: $07
	ld   bc, $0101                                   ; $5516: $01 $01 $01
	ld   bc, $0101                                   ; $5519: $01 $01 $01
	ld   bc, $0201                                   ; $551c: $01 $01 $02
	ld   bc, $0404                                   ; $551f: $01 $04 $04
	rlca                                             ; $5522: $07
	rlca                                             ; $5523: $07
	rlca                                             ; $5524: $07
	rlca                                             ; $5525: $07
	rlca                                             ; $5526: $07
	rlca                                             ; $5527: $07
	rlca                                             ; $5528: $07
	rlca                                             ; $5529: $07
	ld   bc, $0101                                   ; $552a: $01 $01 $01
	ld   bc, $0101                                   ; $552d: $01 $01 $01
	ld   bc, $0301                                   ; $5530: $01 $01 $03
	inc  bc                                          ; $5533: $03
	inc  bc                                          ; $5534: $03
	inc  bc                                          ; $5535: $03
	rlca                                             ; $5536: $07
	rlca                                             ; $5537: $07
	rlca                                             ; $5538: $07
	rlca                                             ; $5539: $07
	rlca                                             ; $553a: $07
	rlca                                             ; $553b: $07
	rlca                                             ; $553c: $07
	rlca                                             ; $553d: $07
	ld   bc, $0301                                   ; $553e: $01 $01 $03
	ld   bc, $0101                                   ; $5541: $01 $01 $01
	ld   bc, $0301                                   ; $5544: $01 $01 $03
	inc  bc                                          ; $5547: $03
	inc  bc                                          ; $5548: $03
	inc  bc                                          ; $5549: $03
	rlca                                             ; $554a: $07
	rlca                                             ; $554b: $07
	rlca                                             ; $554c: $07
	rlca                                             ; $554d: $07
	rlca                                             ; $554e: $07
	rlca                                             ; $554f: $07
	rlca                                             ; $5550: $07
	rlca                                             ; $5551: $07
	ld   bc, $0303                                   ; $5552: $01 $03 $03
	ld   bc, $0101                                   ; $5555: $01 $01 $01
	ld   bc, $0301                                   ; $5558: $01 $01 $03
	inc  bc                                          ; $555b: $03
	inc  bc                                          ; $555c: $03
	inc  bc                                          ; $555d: $03
	rlca                                             ; $555e: $07
	rlca                                             ; $555f: $07
	rlca                                             ; $5560: $07
	rlca                                             ; $5561: $07
	rlca                                             ; $5562: $07
	rlca                                             ; $5563: $07
	rlca                                             ; $5564: $07
	rlca                                             ; $5565: $07
	rlca                                             ; $5566: $07
	rlca                                             ; $5567: $07
	rlca                                             ; $5568: $07
	rlca                                             ; $5569: $07
	rlca                                             ; $556a: $07
	rlca                                             ; $556b: $07
	rlca                                             ; $556c: $07
	rlca                                             ; $556d: $07
	rlca                                             ; $556e: $07
	rlca                                             ; $556f: $07
	rlca                                             ; $5570: $07
	rlca                                             ; $5571: $07
	rlca                                             ; $5572: $07
	rlca                                             ; $5573: $07
	rlca                                             ; $5574: $07
	rlca                                             ; $5575: $07
	ld   b, e                                        ; $5576: $43
	ld   b, e                                        ; $5577: $43
	ld   b, e                                        ; $5578: $43
	ccf                                              ; $5579: $3f
	ld   b, b                                        ; $557a: $40
	ld   b, b                                        ; $557b: $40
	ld   b, b                                        ; $557c: $40
	ld   b, b                                        ; $557d: $40
	ld   b, b                                        ; $557e: $40
	ld   b, b                                        ; $557f: $40
	ld   b, b                                        ; $5580: $40
	ld   b, b                                        ; $5581: $40
	ld   b, b                                        ; $5582: $40
	ld   b, b                                        ; $5583: $40
	ld   b, b                                        ; $5584: $40
	ld   b, b                                        ; $5585: $40
	ld   b, c                                        ; $5586: $41
	ld   b, e                                        ; $5587: $43
	ld   b, e                                        ; $5588: $43
	ld   b, e                                        ; $5589: $43
	ld   b, e                                        ; $558a: $43
	ld   b, e                                        ; $558b: $43
	ld   b, e                                        ; $558c: $43
	ld   b, d                                        ; $558d: $42
	add  b                                           ; $558e: $80
	add  c                                           ; $558f: $81
	add  d                                           ; $5590: $82
	add  e                                           ; $5591: $83
	add  h                                           ; $5592: $84
	add  l                                           ; $5593: $85
	add  [hl]                                        ; $5594: $86
	add  a                                           ; $5595: $87
	adc  b                                           ; $5596: $88
	adc  c                                           ; $5597: $89
	adc  d                                           ; $5598: $8a
	adc  e                                           ; $5599: $8b
	ld   b, h                                        ; $559a: $44
	ld   b, e                                        ; $559b: $43
	ld   b, e                                        ; $559c: $43
	ld   b, e                                        ; $559d: $43
	ld   b, e                                        ; $559e: $43
	ld   b, e                                        ; $559f: $43
	ld   b, e                                        ; $55a0: $43
	ld   b, d                                        ; $55a1: $42
	sub  b                                           ; $55a2: $90
	sub  c                                           ; $55a3: $91
	sub  d                                           ; $55a4: $92
	sub  e                                           ; $55a5: $93
	sub  h                                           ; $55a6: $94
	sub  l                                           ; $55a7: $95
	sub  [hl]                                        ; $55a8: $96
	sub  a                                           ; $55a9: $97
	sbc  b                                           ; $55aa: $98
	sbc  c                                           ; $55ab: $99
	sbc  d                                           ; $55ac: $9a
	sbc  e                                           ; $55ad: $9b
	ld   b, h                                        ; $55ae: $44
	ld   b, e                                        ; $55af: $43
	ld   b, e                                        ; $55b0: $43
	ld   b, e                                        ; $55b1: $43
	ld   b, e                                        ; $55b2: $43
	ld   b, e                                        ; $55b3: $43
	ld   b, e                                        ; $55b4: $43
	ld   b, d                                        ; $55b5: $42
	and  b                                           ; $55b6: $a0
	and  c                                           ; $55b7: $a1
	and  d                                           ; $55b8: $a2
	and  e                                           ; $55b9: $a3
	and  h                                           ; $55ba: $a4
	and  l                                           ; $55bb: $a5
	and  [hl]                                        ; $55bc: $a6
	and  a                                           ; $55bd: $a7
	xor  b                                           ; $55be: $a8
	xor  c                                           ; $55bf: $a9
	xor  d                                           ; $55c0: $aa
	xor  e                                           ; $55c1: $ab
	ld   b, h                                        ; $55c2: $44
	ld   b, e                                        ; $55c3: $43
	ld   b, e                                        ; $55c4: $43
	ld   b, e                                        ; $55c5: $43
	ld   b, e                                        ; $55c6: $43
	ld   b, e                                        ; $55c7: $43
	ld   b, e                                        ; $55c8: $43
	ld   b, d                                        ; $55c9: $42
	or   b                                           ; $55ca: $b0
	or   c                                           ; $55cb: $b1
	or   d                                           ; $55cc: $b2
	or   e                                           ; $55cd: $b3
	or   h                                           ; $55ce: $b4
	or   l                                           ; $55cf: $b5
	or   [hl]                                        ; $55d0: $b6
	or   a                                           ; $55d1: $b7
	cp   b                                           ; $55d2: $b8
	cp   c                                           ; $55d3: $b9
	cp   d                                           ; $55d4: $ba
	cp   e                                           ; $55d5: $bb
	ld   b, h                                        ; $55d6: $44
	ld   b, e                                        ; $55d7: $43
	ld   b, e                                        ; $55d8: $43
	ld   b, e                                        ; $55d9: $43
	ld   b, e                                        ; $55da: $43
	ld   b, e                                        ; $55db: $43
	ld   b, e                                        ; $55dc: $43
	ld   b, d                                        ; $55dd: $42
	ret  nz                                          ; $55de: $c0

	pop  bc                                          ; $55df: $c1
	jp   nz, $c4c3                                   ; $55e0: $c2 $c3 $c4

	push bc                                          ; $55e3: $c5
	add  $c7                                         ; $55e4: $c6 $c7
	ret  z                                           ; $55e6: $c8

	ret                                              ; $55e7: $c9


	jp   z, $44cb                                    ; $55e8: $ca $cb $44

	ld   b, e                                        ; $55eb: $43
	ld   b, e                                        ; $55ec: $43
	ld   b, e                                        ; $55ed: $43
	ld   b, e                                        ; $55ee: $43
	ld   b, e                                        ; $55ef: $43
	ld   b, e                                        ; $55f0: $43
	ld   b, d                                        ; $55f1: $42
	ret  nc                                          ; $55f2: $d0

	pop  de                                          ; $55f3: $d1
	jp   nc, $d4d3                                   ; $55f4: $d2 $d3 $d4

	push de                                          ; $55f7: $d5
	sub  $d7                                         ; $55f8: $d6 $d7
	ret  c                                           ; $55fa: $d8

	reti                                             ; $55fb: $d9


	jp   c, Jump_0a0_44db                            ; $55fc: $da $db $44

	ld   b, e                                        ; $55ff: $43
	ld   b, e                                        ; $5600: $43
	ld   b, e                                        ; $5601: $43
	ld   b, e                                        ; $5602: $43
	ld   b, e                                        ; $5603: $43
	ld   b, e                                        ; $5604: $43
	ld   b, d                                        ; $5605: $42
	ldh  [$e1], a                                    ; $5606: $e0 $e1
	ldh  [c], a                                      ; $5608: $e2
	db   $e3                                         ; $5609: $e3
	db   $e4                                         ; $560a: $e4
	push hl                                          ; $560b: $e5
	and  $e7                                         ; $560c: $e6 $e7
	add  sp, -$17                                    ; $560e: $e8 $e9
	ld   [$44eb], a                                  ; $5610: $ea $eb $44
	ld   b, e                                        ; $5613: $43
	ld   b, e                                        ; $5614: $43
	ld   b, e                                        ; $5615: $43
	ld   b, e                                        ; $5616: $43
	ld   b, e                                        ; $5617: $43
	ld   b, e                                        ; $5618: $43
	ld   b, d                                        ; $5619: $42
	ldh  a, [$f1]                                    ; $561a: $f0 $f1
	ldh  a, [c]                                      ; $561c: $f2
	di                                               ; $561d: $f3
	db   $f4                                         ; $561e: $f4
	push af                                          ; $561f: $f5
	or   $f7                                         ; $5620: $f6 $f7
	ld   hl, sp-$07                                  ; $5622: $f8 $f9
	ld   a, [$44fb]                                  ; $5624: $fa $fb $44
	ld   b, e                                        ; $5627: $43
	ld   b, e                                        ; $5628: $43
	ld   b, e                                        ; $5629: $43
	ld   b, e                                        ; $562a: $43
	ld   b, e                                        ; $562b: $43
	ld   b, e                                        ; $562c: $43
	ld   b, d                                        ; $562d: $42
	nop                                              ; $562e: $00
	ld   bc, $0302                                   ; $562f: $01 $02 $03
	inc  b                                           ; $5632: $04
	dec  b                                           ; $5633: $05
	ld   b, $07                                      ; $5634: $06 $07
	ld   [$0a09], sp                                 ; $5636: $08 $09 $0a
	dec  bc                                          ; $5639: $0b
	ld   b, h                                        ; $563a: $44
	ld   b, e                                        ; $563b: $43
	ld   b, e                                        ; $563c: $43
	ld   b, e                                        ; $563d: $43
	ld   b, e                                        ; $563e: $43
	ld   b, e                                        ; $563f: $43
	ld   b, e                                        ; $5640: $43
	ld   b, d                                        ; $5641: $42
	db   $10                                         ; $5642: $10
	ld   de, $1312                                   ; $5643: $11 $12 $13
	inc  d                                           ; $5646: $14
	dec  d                                           ; $5647: $15
	ld   d, $17                                      ; $5648: $16 $17
	jr   jr_0a0_5665                                 ; $564a: $18 $19

	ld   a, [de]                                     ; $564c: $1a
	dec  de                                          ; $564d: $1b
	ld   b, h                                        ; $564e: $44
	ld   b, e                                        ; $564f: $43
	ld   b, e                                        ; $5650: $43
	ld   b, e                                        ; $5651: $43
	ld   b, e                                        ; $5652: $43
	ld   b, e                                        ; $5653: $43
	ld   b, e                                        ; $5654: $43
	ld   b, d                                        ; $5655: $42
	jr   nz, jr_0a0_5679                             ; $5656: $20 $21

	ld   [hl+], a                                    ; $5658: $22
	inc  hl                                          ; $5659: $23
	inc  h                                           ; $565a: $24
	dec  h                                           ; $565b: $25
	ld   h, $27                                      ; $565c: $26 $27
	jr   z, @+$2b                                    ; $565e: $28 $29

	ld   a, [hl+]                                    ; $5660: $2a
	dec  hl                                          ; $5661: $2b
	ld   b, h                                        ; $5662: $44
	ld   b, e                                        ; $5663: $43
	ld   b, e                                        ; $5664: $43

jr_0a0_5665:
	ld   b, e                                        ; $5665: $43
	ld   b, e                                        ; $5666: $43
	ld   b, e                                        ; $5667: $43
	ld   b, e                                        ; $5668: $43
	ld   b, d                                        ; $5669: $42
	jr   nc, @+$33                                   ; $566a: $30 $31

	ld   [hl-], a                                    ; $566c: $32
	inc  sp                                          ; $566d: $33
	inc  [hl]                                        ; $566e: $34
	dec  [hl]                                        ; $566f: $35
	ld   [hl], $37                                   ; $5670: $36 $37
	jr   c, @+$3b                                    ; $5672: $38 $39

	ld   a, [hl-]                                    ; $5674: $3a
	dec  sp                                          ; $5675: $3b
	ld   b, h                                        ; $5676: $44
	ld   b, e                                        ; $5677: $43
	ld   b, e                                        ; $5678: $43

jr_0a0_5679:
	ld   b, e                                        ; $5679: $43
	ld   b, e                                        ; $567a: $43
	ld   b, e                                        ; $567b: $43
	ld   b, e                                        ; $567c: $43
	ld   b, d                                        ; $567d: $42
	adc  h                                           ; $567e: $8c
	adc  l                                           ; $567f: $8d
	adc  [hl]                                        ; $5680: $8e
	adc  a                                           ; $5681: $8f
	call z, $cecd                                    ; $5682: $cc $cd $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5685: $cf
	inc  c                                           ; $5686: $0c
	dec  c                                           ; $5687: $0d
	ld   c, $0f                                      ; $5688: $0e $0f
	ld   b, h                                        ; $568a: $44
	ld   b, e                                        ; $568b: $43
	ld   b, e                                        ; $568c: $43
	ld   b, e                                        ; $568d: $43
	ld   b, e                                        ; $568e: $43
	ld   b, e                                        ; $568f: $43
	ld   b, e                                        ; $5690: $43
	ld   b, d                                        ; $5691: $42
	sbc  h                                           ; $5692: $9c
	sbc  l                                           ; $5693: $9d
	sbc  [hl]                                        ; $5694: $9e
	sbc  a                                           ; $5695: $9f
	call c, $dedd                                    ; $5696: $dc $dd $de
	rst  JumpTable                                         ; $5699: $df
	inc  e                                           ; $569a: $1c
	dec  e                                           ; $569b: $1d
	ld   e, $1f                                      ; $569c: $1e $1f
	ld   b, h                                        ; $569e: $44
	ld   b, e                                        ; $569f: $43
	ld   b, e                                        ; $56a0: $43
	ld   b, e                                        ; $56a1: $43
	ld   b, e                                        ; $56a2: $43
	ld   b, e                                        ; $56a3: $43
	ld   b, e                                        ; $56a4: $43
	ld   b, d                                        ; $56a5: $42
	xor  h                                           ; $56a6: $ac
	xor  l                                           ; $56a7: $ad
	xor  [hl]                                        ; $56a8: $ae
	xor  a                                           ; $56a9: $af
	db   $ec                                         ; $56aa: $ec
	db   $ed                                         ; $56ab: $ed
	xor  $ee                                         ; $56ac: $ee $ee
	inc  l                                           ; $56ae: $2c
	dec  l                                           ; $56af: $2d
	ld   l, $2f                                      ; $56b0: $2e $2f
	ld   b, h                                        ; $56b2: $44
	ld   b, e                                        ; $56b3: $43
	ld   b, e                                        ; $56b4: $43
	ld   b, e                                        ; $56b5: $43
	ld   b, e                                        ; $56b6: $43
	ld   b, e                                        ; $56b7: $43
	ld   b, e                                        ; $56b8: $43
	ld   b, d                                        ; $56b9: $42
	cp   h                                           ; $56ba: $bc
	cp   l                                           ; $56bb: $bd
	cp   [hl]                                        ; $56bc: $be
	cp   a                                           ; $56bd: $bf
	db   $fc                                         ; $56be: $fc
	db   $fd                                         ; $56bf: $fd
	cp   $ff                                         ; $56c0: $fe $ff
	inc  a                                           ; $56c2: $3c
	dec  a                                           ; $56c3: $3d
	ld   a, $ef                                      ; $56c4: $3e $ef
	ld   b, h                                        ; $56c6: $44
	ld   b, e                                        ; $56c7: $43
	ld   b, e                                        ; $56c8: $43
	ld   b, e                                        ; $56c9: $43
	ld   b, e                                        ; $56ca: $43
	ld   b, e                                        ; $56cb: $43
	ld   b, e                                        ; $56cc: $43
	ld   b, l                                        ; $56cd: $45
	ld   b, [hl]                                     ; $56ce: $46
	ld   b, [hl]                                     ; $56cf: $46
	ld   b, [hl]                                     ; $56d0: $46
	ld   b, [hl]                                     ; $56d1: $46
	ld   b, [hl]                                     ; $56d2: $46
	ld   b, [hl]                                     ; $56d3: $46
	ld   b, [hl]                                     ; $56d4: $46
	ld   b, [hl]                                     ; $56d5: $46
	ld   b, [hl]                                     ; $56d6: $46
	ld   b, [hl]                                     ; $56d7: $46
	ld   b, [hl]                                     ; $56d8: $46
	ld   b, [hl]                                     ; $56d9: $46
	ld   b, a                                        ; $56da: $47
	ld   b, e                                        ; $56db: $43
	ld   b, e                                        ; $56dc: $43
	ld   b, e                                        ; $56dd: $43
	rlca                                             ; $56de: $07
	rlca                                             ; $56df: $07
	rlca                                             ; $56e0: $07
	rlca                                             ; $56e1: $07
	rlca                                             ; $56e2: $07
	rlca                                             ; $56e3: $07
	rlca                                             ; $56e4: $07
	rlca                                             ; $56e5: $07
	rlca                                             ; $56e6: $07
	rlca                                             ; $56e7: $07
	rlca                                             ; $56e8: $07
	rlca                                             ; $56e9: $07
	rlca                                             ; $56ea: $07
	rlca                                             ; $56eb: $07
	rlca                                             ; $56ec: $07
	rlca                                             ; $56ed: $07
	rlca                                             ; $56ee: $07
	rlca                                             ; $56ef: $07
	rlca                                             ; $56f0: $07
	rlca                                             ; $56f1: $07
	rlca                                             ; $56f2: $07
	rlca                                             ; $56f3: $07
	rlca                                             ; $56f4: $07
	rlca                                             ; $56f5: $07
	dec  b                                           ; $56f6: $05
	dec  b                                           ; $56f7: $05
	ld   b, $06                                      ; $56f8: $06 $06
	ld   [bc], a                                     ; $56fa: $02
	ld   [bc], a                                     ; $56fb: $02
	ld   [bc], a                                     ; $56fc: $02
	ld   b, $06                                      ; $56fd: $06 $06
	dec  b                                           ; $56ff: $05
	ld   b, $05                                      ; $5700: $06 $05
	rlca                                             ; $5702: $07
	rlca                                             ; $5703: $07
	rlca                                             ; $5704: $07
	rlca                                             ; $5705: $07
	rlca                                             ; $5706: $07
	rlca                                             ; $5707: $07
	rlca                                             ; $5708: $07
	rlca                                             ; $5709: $07
	dec  b                                           ; $570a: $05
	ld   b, $06                                      ; $570b: $06 $06
	ld   [bc], a                                     ; $570d: $02
	ld   [bc], a                                     ; $570e: $02
	ld   [bc], a                                     ; $570f: $02
	ld   [bc], a                                     ; $5710: $02
	ld   [bc], a                                     ; $5711: $02
	ld   b, $05                                      ; $5712: $06 $05
	dec  b                                           ; $5714: $05
	dec  b                                           ; $5715: $05
	rlca                                             ; $5716: $07
	rlca                                             ; $5717: $07
	rlca                                             ; $5718: $07
	rlca                                             ; $5719: $07
	rlca                                             ; $571a: $07
	rlca                                             ; $571b: $07
	rlca                                             ; $571c: $07
	rlca                                             ; $571d: $07
	ld   b, $06                                      ; $571e: $06 $06
	ld   [bc], a                                     ; $5720: $02
	ld   [bc], a                                     ; $5721: $02
	ld   [bc], a                                     ; $5722: $02
	ld   bc, $0201                                   ; $5723: $01 $01 $02
	ld   [bc], a                                     ; $5726: $02
	ld   b, $06                                      ; $5727: $06 $06
	dec  b                                           ; $5729: $05
	rlca                                             ; $572a: $07
	rlca                                             ; $572b: $07
	rlca                                             ; $572c: $07
	rlca                                             ; $572d: $07
	rlca                                             ; $572e: $07
	rlca                                             ; $572f: $07
	rlca                                             ; $5730: $07
	rlca                                             ; $5731: $07
	ld   b, $06                                      ; $5732: $06 $06
	ld   [bc], a                                     ; $5734: $02
	ld   [bc], a                                     ; $5735: $02
	nop                                              ; $5736: $00
	ld   bc, $0001                                   ; $5737: $01 $01 $00
	ld   [bc], a                                     ; $573a: $02
	ld   b, $05                                      ; $573b: $06 $05
	dec  b                                           ; $573d: $05
	rlca                                             ; $573e: $07
	rlca                                             ; $573f: $07
	rlca                                             ; $5740: $07
	rlca                                             ; $5741: $07
	rlca                                             ; $5742: $07
	rlca                                             ; $5743: $07
	rlca                                             ; $5744: $07
	rlca                                             ; $5745: $07
	dec  b                                           ; $5746: $05
	ld   b, $01                                      ; $5747: $06 $01
	ld   bc, $0101                                   ; $5749: $01 $01 $01
	ld   bc, $0202                                   ; $574c: $01 $02 $02
	ld   b, $06                                      ; $574f: $06 $06
	dec  b                                           ; $5751: $05
	rlca                                             ; $5752: $07
	rlca                                             ; $5753: $07
	rlca                                             ; $5754: $07
	rlca                                             ; $5755: $07
	rlca                                             ; $5756: $07
	rlca                                             ; $5757: $07
	rlca                                             ; $5758: $07
	rlca                                             ; $5759: $07
	dec  b                                           ; $575a: $05
	dec  b                                           ; $575b: $05
	ld   bc, $0101                                   ; $575c: $01 $01 $01
	ld   bc, $0201                                   ; $575f: $01 $01 $02
	ld   b, $06                                      ; $5762: $06 $06
	ld   b, $05                                      ; $5764: $06 $05
	rlca                                             ; $5766: $07
	rlca                                             ; $5767: $07
	rlca                                             ; $5768: $07
	rlca                                             ; $5769: $07
	rlca                                             ; $576a: $07
	rlca                                             ; $576b: $07
	rlca                                             ; $576c: $07
	rlca                                             ; $576d: $07
	ld   b, $06                                      ; $576e: $06 $06
	ld   bc, $0101                                   ; $5770: $01 $01 $01
	ld   bc, $0601                                   ; $5773: $01 $01 $06
	ld   b, $06                                      ; $5776: $06 $06
	dec  b                                           ; $5778: $05
	dec  b                                           ; $5779: $05
	rlca                                             ; $577a: $07
	rlca                                             ; $577b: $07
	rlca                                             ; $577c: $07
	rlca                                             ; $577d: $07
	rlca                                             ; $577e: $07
	rlca                                             ; $577f: $07
	rlca                                             ; $5780: $07
	rlca                                             ; $5781: $07
	inc  bc                                          ; $5782: $03
	inc  bc                                          ; $5783: $03
	inc  bc                                          ; $5784: $03
	ld   bc, $0101                                   ; $5785: $01 $01 $01
	ld   bc, $0505                                   ; $5788: $01 $05 $05
	dec  b                                           ; $578b: $05
	ld   b, $06                                      ; $578c: $06 $06
	rlca                                             ; $578e: $07
	rlca                                             ; $578f: $07
	rlca                                             ; $5790: $07
	rlca                                             ; $5791: $07
	rlca                                             ; $5792: $07
	rlca                                             ; $5793: $07
	rlca                                             ; $5794: $07
	rlca                                             ; $5795: $07
	inc  bc                                          ; $5796: $03
	inc  bc                                          ; $5797: $03
	inc  bc                                          ; $5798: $03
	nop                                              ; $5799: $00
	ld   bc, $0000                                   ; $579a: $01 $00 $00
	ld   b, $05                                      ; $579d: $06 $05
	dec  b                                           ; $579f: $05
	dec  b                                           ; $57a0: $05
	dec  b                                           ; $57a1: $05
	rlca                                             ; $57a2: $07
	rlca                                             ; $57a3: $07
	rlca                                             ; $57a4: $07
	rlca                                             ; $57a5: $07
	rlca                                             ; $57a6: $07
	rlca                                             ; $57a7: $07
	rlca                                             ; $57a8: $07
	rlca                                             ; $57a9: $07
	inc  bc                                          ; $57aa: $03
	inc  bc                                          ; $57ab: $03
	inc  bc                                          ; $57ac: $03
	inc  bc                                          ; $57ad: $03
	nop                                              ; $57ae: $00
	nop                                              ; $57af: $00
	nop                                              ; $57b0: $00
	dec  b                                           ; $57b1: $05
	dec  b                                           ; $57b2: $05
	dec  b                                           ; $57b3: $05
	dec  b                                           ; $57b4: $05
	dec  b                                           ; $57b5: $05
	rlca                                             ; $57b6: $07
	rlca                                             ; $57b7: $07
	rlca                                             ; $57b8: $07
	rlca                                             ; $57b9: $07
	rlca                                             ; $57ba: $07
	rlca                                             ; $57bb: $07
	rlca                                             ; $57bc: $07
	rlca                                             ; $57bd: $07
	inc  bc                                          ; $57be: $03
	inc  bc                                          ; $57bf: $03
	inc  bc                                          ; $57c0: $03
	inc  bc                                          ; $57c1: $03
	inc  bc                                          ; $57c2: $03
	nop                                              ; $57c3: $00
	nop                                              ; $57c4: $00
	dec  b                                           ; $57c5: $05
	dec  b                                           ; $57c6: $05
	dec  b                                           ; $57c7: $05
	dec  b                                           ; $57c8: $05
	dec  b                                           ; $57c9: $05
	rlca                                             ; $57ca: $07
	rlca                                             ; $57cb: $07
	rlca                                             ; $57cc: $07
	rlca                                             ; $57cd: $07
	rlca                                             ; $57ce: $07
	rlca                                             ; $57cf: $07
	rlca                                             ; $57d0: $07
	rlca                                             ; $57d1: $07
	inc  bc                                          ; $57d2: $03
	inc  bc                                          ; $57d3: $03
	inc  bc                                          ; $57d4: $03
	inc  bc                                          ; $57d5: $03
	inc  bc                                          ; $57d6: $03
	inc  bc                                          ; $57d7: $03
	nop                                              ; $57d8: $00
	inc  b                                           ; $57d9: $04
	inc  b                                           ; $57da: $04
	dec  b                                           ; $57db: $05
	dec  b                                           ; $57dc: $05
	dec  b                                           ; $57dd: $05
	rlca                                             ; $57de: $07
	rlca                                             ; $57df: $07
	rlca                                             ; $57e0: $07
	rlca                                             ; $57e1: $07
	rlca                                             ; $57e2: $07
	rlca                                             ; $57e3: $07
	rlca                                             ; $57e4: $07
	rlca                                             ; $57e5: $07
	inc  bc                                          ; $57e6: $03
	inc  bc                                          ; $57e7: $03
	inc  bc                                          ; $57e8: $03
	inc  bc                                          ; $57e9: $03
	inc  bc                                          ; $57ea: $03
	inc  bc                                          ; $57eb: $03
	inc  bc                                          ; $57ec: $03
	inc  b                                           ; $57ed: $04
	inc  b                                           ; $57ee: $04
	inc  b                                           ; $57ef: $04
	inc  b                                           ; $57f0: $04
	inc  b                                           ; $57f1: $04
	rlca                                             ; $57f2: $07
	rlca                                             ; $57f3: $07
	rlca                                             ; $57f4: $07
	rlca                                             ; $57f5: $07
	rlca                                             ; $57f6: $07
	rlca                                             ; $57f7: $07
	rlca                                             ; $57f8: $07
	rlca                                             ; $57f9: $07
	inc  bc                                          ; $57fa: $03
	inc  bc                                          ; $57fb: $03
	inc  bc                                          ; $57fc: $03
	inc  bc                                          ; $57fd: $03
	inc  bc                                          ; $57fe: $03
	inc  bc                                          ; $57ff: $03
	inc  b                                           ; $5800: $04
	inc  b                                           ; $5801: $04
	inc  b                                           ; $5802: $04
	inc  b                                           ; $5803: $04
	inc  b                                           ; $5804: $04
	inc  b                                           ; $5805: $04
	rlca                                             ; $5806: $07
	rlca                                             ; $5807: $07
	rlca                                             ; $5808: $07
	rlca                                             ; $5809: $07
	rlca                                             ; $580a: $07
	rlca                                             ; $580b: $07
	rlca                                             ; $580c: $07
	rlca                                             ; $580d: $07
	inc  bc                                          ; $580e: $03
	inc  bc                                          ; $580f: $03
	inc  bc                                          ; $5810: $03
	inc  bc                                          ; $5811: $03
	nop                                              ; $5812: $00
	inc  b                                           ; $5813: $04
	inc  b                                           ; $5814: $04
	inc  b                                           ; $5815: $04
	inc  b                                           ; $5816: $04
	inc  b                                           ; $5817: $04
	inc  b                                           ; $5818: $04
	inc  b                                           ; $5819: $04
	rlca                                             ; $581a: $07
	rlca                                             ; $581b: $07
	rlca                                             ; $581c: $07
	rlca                                             ; $581d: $07
	rlca                                             ; $581e: $07
	rlca                                             ; $581f: $07
	rlca                                             ; $5820: $07
	rlca                                             ; $5821: $07
	inc  bc                                          ; $5822: $03
	inc  bc                                          ; $5823: $03
	inc  bc                                          ; $5824: $03
	inc  bc                                          ; $5825: $03
	nop                                              ; $5826: $00
	inc  b                                           ; $5827: $04
	inc  b                                           ; $5828: $04
	inc  b                                           ; $5829: $04
	inc  b                                           ; $582a: $04
	inc  b                                           ; $582b: $04
	inc  b                                           ; $582c: $04
	inc  b                                           ; $582d: $04
	rlca                                             ; $582e: $07
	rlca                                             ; $582f: $07
	rlca                                             ; $5830: $07
	rlca                                             ; $5831: $07
	rlca                                             ; $5832: $07
	rlca                                             ; $5833: $07
	rlca                                             ; $5834: $07
	rlca                                             ; $5835: $07
	rlca                                             ; $5836: $07
	rlca                                             ; $5837: $07
	rlca                                             ; $5838: $07
	rlca                                             ; $5839: $07
	rlca                                             ; $583a: $07
	rlca                                             ; $583b: $07
	rlca                                             ; $583c: $07
	rlca                                             ; $583d: $07
	rlca                                             ; $583e: $07
	rlca                                             ; $583f: $07
	rlca                                             ; $5840: $07
	rlca                                             ; $5841: $07
	rlca                                             ; $5842: $07
	rlca                                             ; $5843: $07
	rlca                                             ; $5844: $07
	rlca                                             ; $5845: $07
	ld   b, e                                        ; $5846: $43
	ld   b, e                                        ; $5847: $43
	ld   b, e                                        ; $5848: $43
	ccf                                              ; $5849: $3f
	ld   b, b                                        ; $584a: $40
	ld   b, b                                        ; $584b: $40
	ld   b, b                                        ; $584c: $40
	ld   b, b                                        ; $584d: $40
	ld   b, b                                        ; $584e: $40
	ld   b, b                                        ; $584f: $40
	ld   b, b                                        ; $5850: $40
	ld   b, b                                        ; $5851: $40
	ld   b, b                                        ; $5852: $40
	ld   b, b                                        ; $5853: $40
	ld   b, b                                        ; $5854: $40
	ld   b, b                                        ; $5855: $40
	ld   b, c                                        ; $5856: $41
	ld   b, e                                        ; $5857: $43
	ld   b, e                                        ; $5858: $43
	ld   b, e                                        ; $5859: $43
	ld   b, e                                        ; $585a: $43

Jump_0a0_585b:
	ld   b, e                                        ; $585b: $43
	ld   b, e                                        ; $585c: $43
	ld   b, d                                        ; $585d: $42
	add  b                                           ; $585e: $80
	add  c                                           ; $585f: $81
	add  d                                           ; $5860: $82
	add  e                                           ; $5861: $83
	add  h                                           ; $5862: $84
	add  l                                           ; $5863: $85
	add  [hl]                                        ; $5864: $86
	add  a                                           ; $5865: $87
	adc  b                                           ; $5866: $88
	adc  c                                           ; $5867: $89
	adc  d                                           ; $5868: $8a
	adc  e                                           ; $5869: $8b
	ld   b, h                                        ; $586a: $44
	ld   b, e                                        ; $586b: $43
	ld   b, e                                        ; $586c: $43
	ld   b, e                                        ; $586d: $43
	ld   b, e                                        ; $586e: $43
	ld   b, e                                        ; $586f: $43
	ld   b, e                                        ; $5870: $43
	ld   b, d                                        ; $5871: $42
	sub  b                                           ; $5872: $90
	sub  c                                           ; $5873: $91
	sub  d                                           ; $5874: $92
	sub  e                                           ; $5875: $93
	sub  h                                           ; $5876: $94
	sub  l                                           ; $5877: $95
	sub  [hl]                                        ; $5878: $96
	sub  a                                           ; $5879: $97
	sbc  b                                           ; $587a: $98
	sbc  c                                           ; $587b: $99
	sbc  d                                           ; $587c: $9a
	sbc  e                                           ; $587d: $9b
	ld   b, h                                        ; $587e: $44
	ld   b, e                                        ; $587f: $43
	ld   b, e                                        ; $5880: $43
	ld   b, e                                        ; $5881: $43
	ld   b, e                                        ; $5882: $43
	ld   b, e                                        ; $5883: $43
	ld   b, e                                        ; $5884: $43
	ld   b, d                                        ; $5885: $42
	and  b                                           ; $5886: $a0
	and  c                                           ; $5887: $a1
	and  d                                           ; $5888: $a2
	and  e                                           ; $5889: $a3
	and  h                                           ; $588a: $a4
	and  l                                           ; $588b: $a5
	and  [hl]                                        ; $588c: $a6
	and  a                                           ; $588d: $a7
	xor  b                                           ; $588e: $a8
	xor  c                                           ; $588f: $a9
	xor  d                                           ; $5890: $aa
	xor  e                                           ; $5891: $ab
	ld   b, h                                        ; $5892: $44
	ld   b, e                                        ; $5893: $43
	ld   b, e                                        ; $5894: $43
	ld   b, e                                        ; $5895: $43
	ld   b, e                                        ; $5896: $43
	ld   b, e                                        ; $5897: $43
	ld   b, e                                        ; $5898: $43
	ld   b, d                                        ; $5899: $42
	or   b                                           ; $589a: $b0
	or   c                                           ; $589b: $b1
	or   d                                           ; $589c: $b2
	or   e                                           ; $589d: $b3
	or   h                                           ; $589e: $b4
	or   l                                           ; $589f: $b5
	or   [hl]                                        ; $58a0: $b6
	or   a                                           ; $58a1: $b7
	cp   b                                           ; $58a2: $b8
	cp   c                                           ; $58a3: $b9
	cp   d                                           ; $58a4: $ba
	cp   e                                           ; $58a5: $bb
	ld   b, h                                        ; $58a6: $44
	ld   b, e                                        ; $58a7: $43
	ld   b, e                                        ; $58a8: $43
	ld   b, e                                        ; $58a9: $43
	ld   b, e                                        ; $58aa: $43
	ld   b, e                                        ; $58ab: $43
	ld   b, e                                        ; $58ac: $43
	ld   b, d                                        ; $58ad: $42
	ret  nz                                          ; $58ae: $c0

	pop  bc                                          ; $58af: $c1
	jp   nz, $c4c3                                   ; $58b0: $c2 $c3 $c4

	push bc                                          ; $58b3: $c5
	add  $c7                                         ; $58b4: $c6 $c7
	ret  z                                           ; $58b6: $c8

	ret                                              ; $58b7: $c9


	jp   z, $44cb                                    ; $58b8: $ca $cb $44

	ld   b, e                                        ; $58bb: $43
	ld   b, e                                        ; $58bc: $43
	ld   b, e                                        ; $58bd: $43
	ld   b, e                                        ; $58be: $43
	ld   b, e                                        ; $58bf: $43
	ld   b, e                                        ; $58c0: $43
	ld   b, d                                        ; $58c1: $42
	ret  nc                                          ; $58c2: $d0

	pop  de                                          ; $58c3: $d1
	jp   nc, $d4d3                                   ; $58c4: $d2 $d3 $d4

	push de                                          ; $58c7: $d5
	sub  $d7                                         ; $58c8: $d6 $d7
	ret  c                                           ; $58ca: $d8

	reti                                             ; $58cb: $d9


	jp   c, Jump_0a0_44db                            ; $58cc: $da $db $44

	ld   b, e                                        ; $58cf: $43
	ld   b, e                                        ; $58d0: $43
	ld   b, e                                        ; $58d1: $43
	ld   b, e                                        ; $58d2: $43
	ld   b, e                                        ; $58d3: $43
	ld   b, e                                        ; $58d4: $43
	ld   b, d                                        ; $58d5: $42
	ldh  [$e1], a                                    ; $58d6: $e0 $e1
	ldh  [c], a                                      ; $58d8: $e2
	db   $e3                                         ; $58d9: $e3
	db   $e4                                         ; $58da: $e4
	push hl                                          ; $58db: $e5
	and  $e7                                         ; $58dc: $e6 $e7
	add  sp, -$17                                    ; $58de: $e8 $e9
	ld   [$44eb], a                                  ; $58e0: $ea $eb $44
	ld   b, e                                        ; $58e3: $43
	ld   b, e                                        ; $58e4: $43
	ld   b, e                                        ; $58e5: $43
	ld   b, e                                        ; $58e6: $43
	ld   b, e                                        ; $58e7: $43
	ld   b, e                                        ; $58e8: $43
	ld   b, d                                        ; $58e9: $42
	ldh  a, [$f1]                                    ; $58ea: $f0 $f1
	ldh  a, [c]                                      ; $58ec: $f2
	di                                               ; $58ed: $f3
	db   $f4                                         ; $58ee: $f4
	push af                                          ; $58ef: $f5
	or   $f7                                         ; $58f0: $f6 $f7
	ld   hl, sp-$07                                  ; $58f2: $f8 $f9
	ld   a, [$44fb]                                  ; $58f4: $fa $fb $44
	ld   b, e                                        ; $58f7: $43
	ld   b, e                                        ; $58f8: $43
	ld   b, e                                        ; $58f9: $43
	ld   b, e                                        ; $58fa: $43
	ld   b, e                                        ; $58fb: $43
	ld   b, e                                        ; $58fc: $43
	ld   b, d                                        ; $58fd: $42
	nop                                              ; $58fe: $00
	ld   bc, $0302                                   ; $58ff: $01 $02 $03
	inc  b                                           ; $5902: $04
	dec  b                                           ; $5903: $05
	ld   b, $07                                      ; $5904: $06 $07
	ld   [$0a09], sp                                 ; $5906: $08 $09 $0a
	dec  bc                                          ; $5909: $0b
	ld   b, h                                        ; $590a: $44
	ld   b, e                                        ; $590b: $43
	ld   b, e                                        ; $590c: $43
	ld   b, e                                        ; $590d: $43
	ld   b, e                                        ; $590e: $43
	ld   b, e                                        ; $590f: $43
	ld   b, e                                        ; $5910: $43
	ld   b, d                                        ; $5911: $42
	db   $10                                         ; $5912: $10
	ld   de, $1312                                   ; $5913: $11 $12 $13
	inc  d                                           ; $5916: $14
	dec  d                                           ; $5917: $15
	ld   d, $17                                      ; $5918: $16 $17
	jr   jr_0a0_5935                                 ; $591a: $18 $19

	ld   a, [de]                                     ; $591c: $1a
	dec  de                                          ; $591d: $1b
	ld   b, h                                        ; $591e: $44
	ld   b, e                                        ; $591f: $43
	ld   b, e                                        ; $5920: $43
	ld   b, e                                        ; $5921: $43
	ld   b, e                                        ; $5922: $43
	ld   b, e                                        ; $5923: $43
	ld   b, e                                        ; $5924: $43
	ld   b, d                                        ; $5925: $42
	jr   nz, jr_0a0_5949                             ; $5926: $20 $21

	ld   [hl+], a                                    ; $5928: $22
	inc  hl                                          ; $5929: $23
	inc  h                                           ; $592a: $24
	dec  h                                           ; $592b: $25
	ld   h, $27                                      ; $592c: $26 $27
	jr   z, @+$2b                                    ; $592e: $28 $29

	ld   a, [hl+]                                    ; $5930: $2a
	dec  hl                                          ; $5931: $2b
	ld   b, h                                        ; $5932: $44
	ld   b, e                                        ; $5933: $43
	ld   b, e                                        ; $5934: $43

jr_0a0_5935:
	ld   b, e                                        ; $5935: $43
	ld   b, e                                        ; $5936: $43
	ld   b, e                                        ; $5937: $43
	ld   b, e                                        ; $5938: $43
	ld   b, d                                        ; $5939: $42
	jr   nc, @+$33                                   ; $593a: $30 $31

	ld   [hl-], a                                    ; $593c: $32
	inc  sp                                          ; $593d: $33
	inc  [hl]                                        ; $593e: $34
	dec  [hl]                                        ; $593f: $35
	ld   [hl], $37                                   ; $5940: $36 $37
	jr   c, @+$3b                                    ; $5942: $38 $39

	ld   a, [hl-]                                    ; $5944: $3a
	dec  sp                                          ; $5945: $3b
	ld   b, h                                        ; $5946: $44
	ld   b, e                                        ; $5947: $43
	ld   b, e                                        ; $5948: $43

jr_0a0_5949:
	ld   b, e                                        ; $5949: $43
	ld   b, e                                        ; $594a: $43
	ld   b, e                                        ; $594b: $43
	ld   b, e                                        ; $594c: $43
	ld   b, d                                        ; $594d: $42
	adc  h                                           ; $594e: $8c
	adc  l                                           ; $594f: $8d
	adc  [hl]                                        ; $5950: $8e
	adc  a                                           ; $5951: $8f
	call z, $cecd                                    ; $5952: $cc $cd $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5955: $cf
	inc  c                                           ; $5956: $0c
	dec  c                                           ; $5957: $0d
	ld   c, $0f                                      ; $5958: $0e $0f
	ld   b, h                                        ; $595a: $44
	ld   b, e                                        ; $595b: $43
	ld   b, e                                        ; $595c: $43
	ld   b, e                                        ; $595d: $43
	ld   b, e                                        ; $595e: $43
	ld   b, e                                        ; $595f: $43
	ld   b, e                                        ; $5960: $43
	ld   b, d                                        ; $5961: $42
	sbc  h                                           ; $5962: $9c
	sbc  l                                           ; $5963: $9d
	sbc  [hl]                                        ; $5964: $9e
	sbc  a                                           ; $5965: $9f
	call c, $dedd                                    ; $5966: $dc $dd $de
	rst  JumpTable                                         ; $5969: $df
	inc  e                                           ; $596a: $1c
	dec  e                                           ; $596b: $1d
	ld   e, $1f                                      ; $596c: $1e $1f
	ld   b, h                                        ; $596e: $44
	ld   b, e                                        ; $596f: $43
	ld   b, e                                        ; $5970: $43
	ld   b, e                                        ; $5971: $43
	ld   b, e                                        ; $5972: $43
	ld   b, e                                        ; $5973: $43
	ld   b, e                                        ; $5974: $43
	ld   b, d                                        ; $5975: $42
	xor  h                                           ; $5976: $ac
	xor  l                                           ; $5977: $ad
	xor  [hl]                                        ; $5978: $ae
	xor  a                                           ; $5979: $af
	db   $ec                                         ; $597a: $ec
	db   $ed                                         ; $597b: $ed
	xor  $ef                                         ; $597c: $ee $ef
	inc  l                                           ; $597e: $2c
	dec  l                                           ; $597f: $2d
	ld   l, $2f                                      ; $5980: $2e $2f
	ld   b, h                                        ; $5982: $44
	ld   b, e                                        ; $5983: $43
	ld   b, e                                        ; $5984: $43
	ld   b, e                                        ; $5985: $43
	ld   b, e                                        ; $5986: $43
	ld   b, e                                        ; $5987: $43
	ld   b, e                                        ; $5988: $43
	ld   b, d                                        ; $5989: $42
	cp   h                                           ; $598a: $bc
	cp   l                                           ; $598b: $bd
	cp   [hl]                                        ; $598c: $be
	cp   a                                           ; $598d: $bf
	db   $fc                                         ; $598e: $fc
	db   $fd                                         ; $598f: $fd
	cp   $ff                                         ; $5990: $fe $ff
	dec  l                                           ; $5992: $2d
	inc  a                                           ; $5993: $3c
	dec  a                                           ; $5994: $3d
	ld   a, $44                                      ; $5995: $3e $44
	ld   b, e                                        ; $5997: $43
	ld   b, e                                        ; $5998: $43
	ld   b, e                                        ; $5999: $43
	ld   b, e                                        ; $599a: $43
	ld   b, e                                        ; $599b: $43
	ld   b, e                                        ; $599c: $43
	ld   b, l                                        ; $599d: $45
	ld   b, [hl]                                     ; $599e: $46
	ld   b, [hl]                                     ; $599f: $46
	ld   b, [hl]                                     ; $59a0: $46
	ld   b, [hl]                                     ; $59a1: $46
	ld   b, [hl]                                     ; $59a2: $46
	ld   b, [hl]                                     ; $59a3: $46
	ld   b, [hl]                                     ; $59a4: $46
	ld   b, [hl]                                     ; $59a5: $46
	ld   b, [hl]                                     ; $59a6: $46
	ld   b, [hl]                                     ; $59a7: $46
	ld   b, [hl]                                     ; $59a8: $46
	ld   b, [hl]                                     ; $59a9: $46
	ld   b, a                                        ; $59aa: $47
	ld   b, e                                        ; $59ab: $43
	ld   b, e                                        ; $59ac: $43
	ld   b, e                                        ; $59ad: $43
	rlca                                             ; $59ae: $07
	rlca                                             ; $59af: $07
	rlca                                             ; $59b0: $07
	rlca                                             ; $59b1: $07
	rlca                                             ; $59b2: $07
	rlca                                             ; $59b3: $07
	rlca                                             ; $59b4: $07
	rlca                                             ; $59b5: $07
	rlca                                             ; $59b6: $07
	rlca                                             ; $59b7: $07
	rlca                                             ; $59b8: $07
	rlca                                             ; $59b9: $07
	rlca                                             ; $59ba: $07
	rlca                                             ; $59bb: $07
	rlca                                             ; $59bc: $07
	rlca                                             ; $59bd: $07
	daa                                              ; $59be: $27
	rlca                                             ; $59bf: $07
	rlca                                             ; $59c0: $07
	rlca                                             ; $59c1: $07
	rlca                                             ; $59c2: $07
	rlca                                             ; $59c3: $07
	rlca                                             ; $59c4: $07
	rlca                                             ; $59c5: $07
	nop                                              ; $59c6: $00
	nop                                              ; $59c7: $00
	inc  b                                           ; $59c8: $04
	ld   b, $04                                      ; $59c9: $06 $04
	ld   b, $00                                      ; $59cb: $06 $00
	nop                                              ; $59cd: $00
	nop                                              ; $59ce: $00
	nop                                              ; $59cf: $00
	nop                                              ; $59d0: $00
	nop                                              ; $59d1: $00
	rlca                                             ; $59d2: $07
	rlca                                             ; $59d3: $07
	rlca                                             ; $59d4: $07
	rlca                                             ; $59d5: $07
	rlca                                             ; $59d6: $07
	rlca                                             ; $59d7: $07
	rlca                                             ; $59d8: $07
	rlca                                             ; $59d9: $07
	ld   bc, $0101                                   ; $59da: $01 $01 $01
	ld   b, $06                                      ; $59dd: $06 $06
	inc  b                                           ; $59df: $04
	inc  b                                           ; $59e0: $04
	ld   [bc], a                                     ; $59e1: $02
	ld   [bc], a                                     ; $59e2: $02
	ld   [bc], a                                     ; $59e3: $02
	nop                                              ; $59e4: $00
	nop                                              ; $59e5: $00
	rlca                                             ; $59e6: $07
	rlca                                             ; $59e7: $07
	rlca                                             ; $59e8: $07
	rlca                                             ; $59e9: $07
	rlca                                             ; $59ea: $07
	rlca                                             ; $59eb: $07
	rlca                                             ; $59ec: $07
	rlca                                             ; $59ed: $07
	ld   bc, $0101                                   ; $59ee: $01 $01 $01
	ld   b, $04                                      ; $59f1: $06 $04
	inc  bc                                          ; $59f3: $03
	inc  bc                                          ; $59f4: $03
	ld   [bc], a                                     ; $59f5: $02
	ld   [bc], a                                     ; $59f6: $02
	ld   [bc], a                                     ; $59f7: $02
	ld   [bc], a                                     ; $59f8: $02
	ld   [bc], a                                     ; $59f9: $02
	rlca                                             ; $59fa: $07
	rlca                                             ; $59fb: $07
	rlca                                             ; $59fc: $07
	rlca                                             ; $59fd: $07
	rlca                                             ; $59fe: $07
	rlca                                             ; $59ff: $07
	rlca                                             ; $5a00: $07
	rlca                                             ; $5a01: $07
	nop                                              ; $5a02: $00
	nop                                              ; $5a03: $00
	nop                                              ; $5a04: $00
	ld   bc, $0300                                   ; $5a05: $01 $00 $03
	inc  bc                                          ; $5a08: $03
	inc  bc                                          ; $5a09: $03
	inc  bc                                          ; $5a0a: $03
	ld   [bc], a                                     ; $5a0b: $02
	ld   [bc], a                                     ; $5a0c: $02
	ld   [bc], a                                     ; $5a0d: $02
	rlca                                             ; $5a0e: $07
	rlca                                             ; $5a0f: $07
	rlca                                             ; $5a10: $07
	rlca                                             ; $5a11: $07
	rlca                                             ; $5a12: $07
	rlca                                             ; $5a13: $07
	rlca                                             ; $5a14: $07
	rlca                                             ; $5a15: $07
	nop                                              ; $5a16: $00
	nop                                              ; $5a17: $00
	nop                                              ; $5a18: $00
	nop                                              ; $5a19: $00
	nop                                              ; $5a1a: $00
	nop                                              ; $5a1b: $00
	inc  bc                                          ; $5a1c: $03
	inc  bc                                          ; $5a1d: $03
	inc  bc                                          ; $5a1e: $03
	inc  bc                                          ; $5a1f: $03
	inc  bc                                          ; $5a20: $03
	ld   [bc], a                                     ; $5a21: $02
	rlca                                             ; $5a22: $07
	rlca                                             ; $5a23: $07
	rlca                                             ; $5a24: $07
	rlca                                             ; $5a25: $07
	rlca                                             ; $5a26: $07
	rlca                                             ; $5a27: $07
	rlca                                             ; $5a28: $07
	rlca                                             ; $5a29: $07
	nop                                              ; $5a2a: $00
	nop                                              ; $5a2b: $00
	nop                                              ; $5a2c: $00
	nop                                              ; $5a2d: $00
	nop                                              ; $5a2e: $00
	nop                                              ; $5a2f: $00
	inc  bc                                          ; $5a30: $03
	inc  bc                                          ; $5a31: $03
	nop                                              ; $5a32: $00
	nop                                              ; $5a33: $00
	nop                                              ; $5a34: $00
	ld   [bc], a                                     ; $5a35: $02
	rlca                                             ; $5a36: $07
	rlca                                             ; $5a37: $07
	rlca                                             ; $5a38: $07
	rlca                                             ; $5a39: $07
	rlca                                             ; $5a3a: $07
	rlca                                             ; $5a3b: $07
	rlca                                             ; $5a3c: $07
	rlca                                             ; $5a3d: $07
	nop                                              ; $5a3e: $00
	nop                                              ; $5a3f: $00
	nop                                              ; $5a40: $00
	ld   b, $00                                      ; $5a41: $06 $00
	nop                                              ; $5a43: $00
	nop                                              ; $5a44: $00
	nop                                              ; $5a45: $00
	nop                                              ; $5a46: $00
	ld   bc, $0000                                   ; $5a47: $01 $00 $00
	rlca                                             ; $5a4a: $07
	rlca                                             ; $5a4b: $07
	rlca                                             ; $5a4c: $07
	rlca                                             ; $5a4d: $07
	rlca                                             ; $5a4e: $07
	rlca                                             ; $5a4f: $07
	rlca                                             ; $5a50: $07
	rlca                                             ; $5a51: $07
	nop                                              ; $5a52: $00
	ld   b, $06                                      ; $5a53: $06 $06
	ld   b, $00                                      ; $5a55: $06 $00
	nop                                              ; $5a57: $00
	ld   bc, $0101                                   ; $5a58: $01 $01 $01
	ld   bc, $0001                                   ; $5a5b: $01 $01 $00
	rlca                                             ; $5a5e: $07
	rlca                                             ; $5a5f: $07
	rlca                                             ; $5a60: $07
	rlca                                             ; $5a61: $07
	rlca                                             ; $5a62: $07
	rlca                                             ; $5a63: $07
	rlca                                             ; $5a64: $07
	rlca                                             ; $5a65: $07
	dec  b                                           ; $5a66: $05
	ld   b, $06                                      ; $5a67: $06 $06
	ld   b, $04                                      ; $5a69: $06 $04
	dec  b                                           ; $5a6b: $05
	ld   bc, $0101                                   ; $5a6c: $01 $01 $01
	ld   bc, $0001                                   ; $5a6f: $01 $01 $00
	rlca                                             ; $5a72: $07
	rlca                                             ; $5a73: $07
	rlca                                             ; $5a74: $07
	rlca                                             ; $5a75: $07
	rlca                                             ; $5a76: $07
	rlca                                             ; $5a77: $07
	rlca                                             ; $5a78: $07
	rlca                                             ; $5a79: $07
	ld   bc, $0606                                   ; $5a7a: $01 $06 $06
	ld   bc, $0501                                   ; $5a7d: $01 $01 $05
	ld   bc, $0101                                   ; $5a80: $01 $01 $01
	ld   bc, $0201                                   ; $5a83: $01 $01 $02
	rlca                                             ; $5a86: $07
	rlca                                             ; $5a87: $07
	rlca                                             ; $5a88: $07
	rlca                                             ; $5a89: $07
	rlca                                             ; $5a8a: $07
	rlca                                             ; $5a8b: $07
	rlca                                             ; $5a8c: $07
	rlca                                             ; $5a8d: $07
	ld   bc, $0101                                   ; $5a8e: $01 $01 $01
	ld   bc, $0601                                   ; $5a91: $01 $01 $06
	ld   b, $01                                      ; $5a94: $06 $01
	ld   bc, $0001                                   ; $5a96: $01 $01 $00
	nop                                              ; $5a99: $00
	rlca                                             ; $5a9a: $07
	rlca                                             ; $5a9b: $07
	rlca                                             ; $5a9c: $07
	rlca                                             ; $5a9d: $07
	rlca                                             ; $5a9e: $07
	rlca                                             ; $5a9f: $07
	rlca                                             ; $5aa0: $07
	rlca                                             ; $5aa1: $07
	inc  bc                                          ; $5aa2: $03
	inc  bc                                          ; $5aa3: $03
	inc  bc                                          ; $5aa4: $03
	ld   bc, $0600                                   ; $5aa5: $01 $00 $06
	ld   b, $01                                      ; $5aa8: $06 $01
	ld   b, $04                                      ; $5aaa: $06 $04
	inc  b                                           ; $5aac: $04
	nop                                              ; $5aad: $00
	rlca                                             ; $5aae: $07
	rlca                                             ; $5aaf: $07
	rlca                                             ; $5ab0: $07
	rlca                                             ; $5ab1: $07
	rlca                                             ; $5ab2: $07
	rlca                                             ; $5ab3: $07
	rlca                                             ; $5ab4: $07
	rlca                                             ; $5ab5: $07
	inc  bc                                          ; $5ab6: $03
	inc  bc                                          ; $5ab7: $03
	inc  bc                                          ; $5ab8: $03
	nop                                              ; $5ab9: $00
	nop                                              ; $5aba: $00
	nop                                              ; $5abb: $00
	ld   bc, $0401                                   ; $5abc: $01 $01 $04
	dec  b                                           ; $5abf: $05
	dec  b                                           ; $5ac0: $05
	inc  b                                           ; $5ac1: $04
	rlca                                             ; $5ac2: $07
	rlca                                             ; $5ac3: $07
	rlca                                             ; $5ac4: $07
	rlca                                             ; $5ac5: $07
	rlca                                             ; $5ac6: $07
	rlca                                             ; $5ac7: $07
	rlca                                             ; $5ac8: $07
	rlca                                             ; $5ac9: $07
	inc  bc                                          ; $5aca: $03
	inc  bc                                          ; $5acb: $03
	dec  b                                           ; $5acc: $05
	dec  b                                           ; $5acd: $05
	nop                                              ; $5ace: $00
	dec  b                                           ; $5acf: $05
	ld   bc, $0401                                   ; $5ad0: $01 $01 $04
	nop                                              ; $5ad3: $00
	dec  b                                           ; $5ad4: $05
	dec  b                                           ; $5ad5: $05
	rlca                                             ; $5ad6: $07
	rlca                                             ; $5ad7: $07
	rlca                                             ; $5ad8: $07
	rlca                                             ; $5ad9: $07
	rlca                                             ; $5ada: $07
	rlca                                             ; $5adb: $07
	rlca                                             ; $5adc: $07
	rlca                                             ; $5add: $07
	inc  bc                                          ; $5ade: $03
	inc  bc                                          ; $5adf: $03
	nop                                              ; $5ae0: $00
	ld   b, $05                                      ; $5ae1: $06 $05
	ld   bc, $0101                                   ; $5ae3: $01 $01 $01
	inc  b                                           ; $5ae6: $04
	dec  b                                           ; $5ae7: $05
	dec  b                                           ; $5ae8: $05
	dec  b                                           ; $5ae9: $05
	rlca                                             ; $5aea: $07
	rlca                                             ; $5aeb: $07
	rlca                                             ; $5aec: $07
	rlca                                             ; $5aed: $07
	rlca                                             ; $5aee: $07
	rlca                                             ; $5aef: $07
	rlca                                             ; $5af0: $07
	rlca                                             ; $5af1: $07
	inc  bc                                          ; $5af2: $03
	inc  bc                                          ; $5af3: $03
	nop                                              ; $5af4: $00
	ld   b, $06                                      ; $5af5: $06 $06
	ld   b, $01                                      ; $5af7: $06 $01
	ld   bc, $0500                                   ; $5af9: $01 $00 $05
	dec  b                                           ; $5afc: $05
	dec  b                                           ; $5afd: $05
	rlca                                             ; $5afe: $07
	rlca                                             ; $5aff: $07
	rlca                                             ; $5b00: $07
	rlca                                             ; $5b01: $07
	rlca                                             ; $5b02: $07
	rlca                                             ; $5b03: $07
	rlca                                             ; $5b04: $07
	ld   b, a                                        ; $5b05: $47
	rlca                                             ; $5b06: $07
	rlca                                             ; $5b07: $07
	rlca                                             ; $5b08: $07
	rlca                                             ; $5b09: $07
	rlca                                             ; $5b0a: $07
	rlca                                             ; $5b0b: $07
	rlca                                             ; $5b0c: $07
	rlca                                             ; $5b0d: $07
	rlca                                             ; $5b0e: $07
	rlca                                             ; $5b0f: $07
	rlca                                             ; $5b10: $07
	rlca                                             ; $5b11: $07
	rlca                                             ; $5b12: $07
	rlca                                             ; $5b13: $07
	rlca                                             ; $5b14: $07
	rlca                                             ; $5b15: $07
	ld   b, l                                        ; $5b16: $45
	ld   b, l                                        ; $5b17: $45
	ld   b, l                                        ; $5b18: $45
	ld   b, b                                        ; $5b19: $40
	ld   b, c                                        ; $5b1a: $41
	ld   b, c                                        ; $5b1b: $41
	ld   b, c                                        ; $5b1c: $41
	ld   b, c                                        ; $5b1d: $41
	ld   b, c                                        ; $5b1e: $41
	ld   b, c                                        ; $5b1f: $41
	ld   b, c                                        ; $5b20: $41
	ld   b, c                                        ; $5b21: $41
	ld   b, c                                        ; $5b22: $41
	ld   b, c                                        ; $5b23: $41
	ld   b, c                                        ; $5b24: $41
	ld   b, c                                        ; $5b25: $41
	ld   b, b                                        ; $5b26: $40
	ld   b, l                                        ; $5b27: $45
	ld   b, l                                        ; $5b28: $45
	ld   b, l                                        ; $5b29: $45
	ld   b, l                                        ; $5b2a: $45
	ld   b, l                                        ; $5b2b: $45
	ld   b, l                                        ; $5b2c: $45
	ld   b, [hl]                                     ; $5b2d: $46
	add  b                                           ; $5b2e: $80
	add  c                                           ; $5b2f: $81
	add  d                                           ; $5b30: $82
	add  e                                           ; $5b31: $83
	add  h                                           ; $5b32: $84
	add  l                                           ; $5b33: $85
	add  [hl]                                        ; $5b34: $86
	add  a                                           ; $5b35: $87
	adc  b                                           ; $5b36: $88
	adc  c                                           ; $5b37: $89
	adc  d                                           ; $5b38: $8a
	adc  e                                           ; $5b39: $8b
	ld   b, d                                        ; $5b3a: $42
	ld   b, l                                        ; $5b3b: $45
	ld   b, l                                        ; $5b3c: $45
	ld   b, l                                        ; $5b3d: $45
	ld   b, l                                        ; $5b3e: $45
	ld   b, l                                        ; $5b3f: $45
	ld   b, l                                        ; $5b40: $45
	ld   b, [hl]                                     ; $5b41: $46
	sub  b                                           ; $5b42: $90
	sub  c                                           ; $5b43: $91
	sub  d                                           ; $5b44: $92
	sub  e                                           ; $5b45: $93
	sub  h                                           ; $5b46: $94
	sub  l                                           ; $5b47: $95
	sub  [hl]                                        ; $5b48: $96
	sub  a                                           ; $5b49: $97
	sbc  b                                           ; $5b4a: $98
	sbc  c                                           ; $5b4b: $99
	sbc  d                                           ; $5b4c: $9a
	sbc  e                                           ; $5b4d: $9b
	ld   b, d                                        ; $5b4e: $42
	ld   b, l                                        ; $5b4f: $45
	ld   b, l                                        ; $5b50: $45
	ld   b, l                                        ; $5b51: $45
	ld   b, l                                        ; $5b52: $45
	ld   b, l                                        ; $5b53: $45
	ld   b, l                                        ; $5b54: $45
	ld   b, [hl]                                     ; $5b55: $46
	and  b                                           ; $5b56: $a0
	and  c                                           ; $5b57: $a1
	and  d                                           ; $5b58: $a2
	and  e                                           ; $5b59: $a3
	and  h                                           ; $5b5a: $a4
	and  l                                           ; $5b5b: $a5
	and  [hl]                                        ; $5b5c: $a6
	and  a                                           ; $5b5d: $a7
	xor  b                                           ; $5b5e: $a8
	xor  c                                           ; $5b5f: $a9
	xor  d                                           ; $5b60: $aa
	xor  e                                           ; $5b61: $ab
	ld   b, d                                        ; $5b62: $42
	ld   b, l                                        ; $5b63: $45
	ld   b, l                                        ; $5b64: $45
	ld   b, l                                        ; $5b65: $45
	ld   b, l                                        ; $5b66: $45
	ld   b, l                                        ; $5b67: $45
	ld   b, l                                        ; $5b68: $45
	ld   b, [hl]                                     ; $5b69: $46
	or   b                                           ; $5b6a: $b0
	or   c                                           ; $5b6b: $b1
	or   d                                           ; $5b6c: $b2
	or   e                                           ; $5b6d: $b3
	or   h                                           ; $5b6e: $b4
	or   l                                           ; $5b6f: $b5
	or   [hl]                                        ; $5b70: $b6
	or   a                                           ; $5b71: $b7
	cp   b                                           ; $5b72: $b8
	cp   c                                           ; $5b73: $b9
	cp   d                                           ; $5b74: $ba
	cp   e                                           ; $5b75: $bb
	ld   b, d                                        ; $5b76: $42
	ld   b, l                                        ; $5b77: $45
	ld   b, l                                        ; $5b78: $45
	ld   b, l                                        ; $5b79: $45
	ld   b, l                                        ; $5b7a: $45
	ld   b, l                                        ; $5b7b: $45
	ld   b, l                                        ; $5b7c: $45
	ld   b, [hl]                                     ; $5b7d: $46
	ret  nz                                          ; $5b7e: $c0

	pop  bc                                          ; $5b7f: $c1
	jp   nz, $c4c3                                   ; $5b80: $c2 $c3 $c4

	push bc                                          ; $5b83: $c5
	add  $c7                                         ; $5b84: $c6 $c7
	ret  z                                           ; $5b86: $c8

	ret                                              ; $5b87: $c9


	jp   z, Jump_0a0_42cb                            ; $5b88: $ca $cb $42

	ld   b, l                                        ; $5b8b: $45
	ld   b, l                                        ; $5b8c: $45
	ld   b, l                                        ; $5b8d: $45
	ld   b, l                                        ; $5b8e: $45
	ld   b, l                                        ; $5b8f: $45
	ld   b, l                                        ; $5b90: $45
	ld   b, [hl]                                     ; $5b91: $46
	ret  nc                                          ; $5b92: $d0

	pop  de                                          ; $5b93: $d1
	jp   nc, $d4d3                                   ; $5b94: $d2 $d3 $d4

	push de                                          ; $5b97: $d5
	sub  $d7                                         ; $5b98: $d6 $d7
	ret  c                                           ; $5b9a: $d8

	reti                                             ; $5b9b: $d9


	jp   c, Jump_0a0_42db                            ; $5b9c: $da $db $42

	ld   b, l                                        ; $5b9f: $45
	ld   b, l                                        ; $5ba0: $45
	ld   b, l                                        ; $5ba1: $45
	ld   b, l                                        ; $5ba2: $45
	ld   b, l                                        ; $5ba3: $45
	ld   b, l                                        ; $5ba4: $45
	ld   b, [hl]                                     ; $5ba5: $46
	ldh  [$e1], a                                    ; $5ba6: $e0 $e1
	ldh  [c], a                                      ; $5ba8: $e2
	db   $e3                                         ; $5ba9: $e3
	db   $e4                                         ; $5baa: $e4
	push hl                                          ; $5bab: $e5
	and  $e7                                         ; $5bac: $e6 $e7
	add  sp, -$17                                    ; $5bae: $e8 $e9
	ld   [$42eb], a                                  ; $5bb0: $ea $eb $42
	ld   b, l                                        ; $5bb3: $45
	ld   b, l                                        ; $5bb4: $45
	ld   b, l                                        ; $5bb5: $45
	ld   b, l                                        ; $5bb6: $45
	ld   b, l                                        ; $5bb7: $45
	ld   b, l                                        ; $5bb8: $45
	ld   b, [hl]                                     ; $5bb9: $46
	ldh  a, [$f1]                                    ; $5bba: $f0 $f1
	ldh  a, [c]                                      ; $5bbc: $f2
	di                                               ; $5bbd: $f3
	db   $f4                                         ; $5bbe: $f4
	push af                                          ; $5bbf: $f5
	or   $f7                                         ; $5bc0: $f6 $f7
	ld   hl, sp-$07                                  ; $5bc2: $f8 $f9
	ld   a, [$42fb]                                  ; $5bc4: $fa $fb $42
	ld   b, l                                        ; $5bc7: $45
	ld   b, l                                        ; $5bc8: $45
	ld   b, l                                        ; $5bc9: $45
	ld   b, l                                        ; $5bca: $45
	ld   b, l                                        ; $5bcb: $45
	ld   b, l                                        ; $5bcc: $45
	ld   b, [hl]                                     ; $5bcd: $46
	adc  h                                           ; $5bce: $8c
	adc  l                                           ; $5bcf: $8d
	adc  [hl]                                        ; $5bd0: $8e
	adc  a                                           ; $5bd1: $8f
	call z, $cecd                                    ; $5bd2: $cc $cd $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bd5: $cf
	inc  c                                           ; $5bd6: $0c
	dec  c                                           ; $5bd7: $0d
	ld   c, $0f                                      ; $5bd8: $0e $0f
	ld   b, d                                        ; $5bda: $42
	ld   b, l                                        ; $5bdb: $45
	ld   b, l                                        ; $5bdc: $45
	ld   b, l                                        ; $5bdd: $45
	ld   b, l                                        ; $5bde: $45
	ld   b, l                                        ; $5bdf: $45
	ld   b, l                                        ; $5be0: $45
	ld   b, [hl]                                     ; $5be1: $46
	sbc  h                                           ; $5be2: $9c
	sbc  l                                           ; $5be3: $9d
	sbc  [hl]                                        ; $5be4: $9e
	sbc  a                                           ; $5be5: $9f
	call c, $dedd                                    ; $5be6: $dc $dd $de
	rst  JumpTable                                         ; $5be9: $df
	inc  e                                           ; $5bea: $1c
	dec  e                                           ; $5beb: $1d
	ld   e, $1f                                      ; $5bec: $1e $1f
	ld   b, d                                        ; $5bee: $42
	ld   b, l                                        ; $5bef: $45
	ld   b, l                                        ; $5bf0: $45
	ld   b, l                                        ; $5bf1: $45
	ld   b, l                                        ; $5bf2: $45
	ld   b, l                                        ; $5bf3: $45
	ld   b, l                                        ; $5bf4: $45
	ld   b, [hl]                                     ; $5bf5: $46
	xor  h                                           ; $5bf6: $ac
	xor  l                                           ; $5bf7: $ad
	xor  [hl]                                        ; $5bf8: $ae
	xor  a                                           ; $5bf9: $af
	db   $ec                                         ; $5bfa: $ec
	db   $ed                                         ; $5bfb: $ed
	xor  $ef                                         ; $5bfc: $ee $ef
	inc  l                                           ; $5bfe: $2c
	dec  l                                           ; $5bff: $2d
	ld   l, $2f                                      ; $5c00: $2e $2f
	ld   b, d                                        ; $5c02: $42
	ld   b, l                                        ; $5c03: $45
	ld   b, l                                        ; $5c04: $45
	ld   b, l                                        ; $5c05: $45
	ld   b, l                                        ; $5c06: $45
	ld   b, l                                        ; $5c07: $45
	ld   b, l                                        ; $5c08: $45
	ld   b, [hl]                                     ; $5c09: $46
	cp   h                                           ; $5c0a: $bc
	cp   l                                           ; $5c0b: $bd
	cp   [hl]                                        ; $5c0c: $be
	cp   a                                           ; $5c0d: $bf
	db   $fc                                         ; $5c0e: $fc
	db   $fd                                         ; $5c0f: $fd
	cp   $ff                                         ; $5c10: $fe $ff
	inc  a                                           ; $5c12: $3c
	dec  a                                           ; $5c13: $3d
	ld   a, $3f                                      ; $5c14: $3e $3f
	ld   b, d                                        ; $5c16: $42
	ld   b, l                                        ; $5c17: $45
	ld   b, l                                        ; $5c18: $45
	ld   b, l                                        ; $5c19: $45
	ld   b, l                                        ; $5c1a: $45
	ld   b, l                                        ; $5c1b: $45
	ld   b, l                                        ; $5c1c: $45
	ld   b, [hl]                                     ; $5c1d: $46
	nop                                              ; $5c1e: $00
	ld   bc, $0302                                   ; $5c1f: $01 $02 $03
	inc  b                                           ; $5c22: $04
	dec  b                                           ; $5c23: $05
	ld   b, $07                                      ; $5c24: $06 $07
	ld   [$0a09], sp                                 ; $5c26: $08 $09 $0a
	dec  bc                                          ; $5c29: $0b
	ld   b, d                                        ; $5c2a: $42
	ld   b, l                                        ; $5c2b: $45
	ld   b, l                                        ; $5c2c: $45
	ld   b, l                                        ; $5c2d: $45
	ld   b, l                                        ; $5c2e: $45
	ld   b, l                                        ; $5c2f: $45
	ld   b, l                                        ; $5c30: $45
	ld   b, [hl]                                     ; $5c31: $46
	db   $10                                         ; $5c32: $10
	ld   de, $1312                                   ; $5c33: $11 $12 $13
	inc  d                                           ; $5c36: $14
	dec  d                                           ; $5c37: $15
	ld   d, $17                                      ; $5c38: $16 $17
	jr   jr_0a0_5c55                                 ; $5c3a: $18 $19

	ld   a, [de]                                     ; $5c3c: $1a
	dec  de                                          ; $5c3d: $1b
	ld   b, d                                        ; $5c3e: $42
	ld   b, l                                        ; $5c3f: $45
	ld   b, l                                        ; $5c40: $45
	ld   b, l                                        ; $5c41: $45
	ld   b, l                                        ; $5c42: $45
	ld   b, l                                        ; $5c43: $45
	ld   b, l                                        ; $5c44: $45
	ld   b, [hl]                                     ; $5c45: $46
	jr   nz, jr_0a0_5c69                             ; $5c46: $20 $21

	ld   [hl+], a                                    ; $5c48: $22
	inc  hl                                          ; $5c49: $23
	inc  h                                           ; $5c4a: $24
	dec  h                                           ; $5c4b: $25
	ld   h, $27                                      ; $5c4c: $26 $27
	jr   z, jr_0a0_5c79                              ; $5c4e: $28 $29

	ld   a, [hl+]                                    ; $5c50: $2a
	dec  hl                                          ; $5c51: $2b
	ld   b, d                                        ; $5c52: $42
	ld   b, l                                        ; $5c53: $45
	ld   b, l                                        ; $5c54: $45

jr_0a0_5c55:
	ld   b, l                                        ; $5c55: $45
	ld   b, l                                        ; $5c56: $45
	ld   b, l                                        ; $5c57: $45
	ld   b, l                                        ; $5c58: $45
	ld   b, [hl]                                     ; $5c59: $46
	jr   nc, jr_0a0_5c8d                             ; $5c5a: $30 $31

	ld   [hl-], a                                    ; $5c5c: $32
	inc  sp                                          ; $5c5d: $33
	inc  [hl]                                        ; $5c5e: $34
	dec  [hl]                                        ; $5c5f: $35
	ld   [hl], $37                                   ; $5c60: $36 $37
	jr   c, @+$3b                                    ; $5c62: $38 $39

	ld   a, [hl-]                                    ; $5c64: $3a
	dec  sp                                          ; $5c65: $3b
	ld   b, d                                        ; $5c66: $42
	ld   b, l                                        ; $5c67: $45
	ld   b, l                                        ; $5c68: $45

jr_0a0_5c69:
	ld   b, l                                        ; $5c69: $45
	ld   b, l                                        ; $5c6a: $45
	ld   b, l                                        ; $5c6b: $45
	ld   b, l                                        ; $5c6c: $45
	ld   b, b                                        ; $5c6d: $40
	ld   b, e                                        ; $5c6e: $43
	ld   b, e                                        ; $5c6f: $43
	ld   b, e                                        ; $5c70: $43
	ld   b, e                                        ; $5c71: $43
	ld   b, e                                        ; $5c72: $43
	ld   b, e                                        ; $5c73: $43
	ld   b, e                                        ; $5c74: $43
	ld   b, e                                        ; $5c75: $43
	ld   b, e                                        ; $5c76: $43
	ld   b, e                                        ; $5c77: $43
	ld   b, e                                        ; $5c78: $43

jr_0a0_5c79:
	ld   b, e                                        ; $5c79: $43
	ld   b, h                                        ; $5c7a: $44
	ld   b, l                                        ; $5c7b: $45
	ld   b, l                                        ; $5c7c: $45
	ld   b, l                                        ; $5c7d: $45
	rlca                                             ; $5c7e: $07
	rlca                                             ; $5c7f: $07
	rlca                                             ; $5c80: $07
	rlca                                             ; $5c81: $07
	rlca                                             ; $5c82: $07
	rlca                                             ; $5c83: $07
	rlca                                             ; $5c84: $07
	rlca                                             ; $5c85: $07
	rlca                                             ; $5c86: $07
	rlca                                             ; $5c87: $07
	rlca                                             ; $5c88: $07
	rlca                                             ; $5c89: $07
	rlca                                             ; $5c8a: $07
	rlca                                             ; $5c8b: $07
	rlca                                             ; $5c8c: $07

jr_0a0_5c8d:
	rlca                                             ; $5c8d: $07
	daa                                              ; $5c8e: $27
	rlca                                             ; $5c8f: $07
	rlca                                             ; $5c90: $07
	rlca                                             ; $5c91: $07
	rlca                                             ; $5c92: $07
	rlca                                             ; $5c93: $07
	rlca                                             ; $5c94: $07
	rlca                                             ; $5c95: $07
	ld   bc, $0101                                   ; $5c96: $01 $01 $01
	ld   bc, $0101                                   ; $5c99: $01 $01 $01
	ld   bc, $0101                                   ; $5c9c: $01 $01 $01
	ld   bc, $0101                                   ; $5c9f: $01 $01 $01
	rlca                                             ; $5ca2: $07
	rlca                                             ; $5ca3: $07
	rlca                                             ; $5ca4: $07
	rlca                                             ; $5ca5: $07
	rlca                                             ; $5ca6: $07
	rlca                                             ; $5ca7: $07
	rlca                                             ; $5ca8: $07
	rlca                                             ; $5ca9: $07
	ld   bc, $0101                                   ; $5caa: $01 $01 $01
	ld   bc, $0101                                   ; $5cad: $01 $01 $01
	inc  bc                                          ; $5cb0: $03
	inc  bc                                          ; $5cb1: $03
	inc  bc                                          ; $5cb2: $03
	dec  b                                           ; $5cb3: $05
	ld   bc, $0701                                   ; $5cb4: $01 $01 $07
	rlca                                             ; $5cb7: $07
	rlca                                             ; $5cb8: $07
	rlca                                             ; $5cb9: $07
	rlca                                             ; $5cba: $07
	rlca                                             ; $5cbb: $07
	rlca                                             ; $5cbc: $07
	rlca                                             ; $5cbd: $07
	ld   bc, $0101                                   ; $5cbe: $01 $01 $01
	ld   bc, $0501                                   ; $5cc1: $01 $01 $05
	inc  bc                                          ; $5cc4: $03
	inc  bc                                          ; $5cc5: $03
	inc  bc                                          ; $5cc6: $03
	inc  bc                                          ; $5cc7: $03
	inc  bc                                          ; $5cc8: $03
	ld   bc, $0707                                   ; $5cc9: $01 $07 $07
	rlca                                             ; $5ccc: $07
	rlca                                             ; $5ccd: $07
	rlca                                             ; $5cce: $07
	rlca                                             ; $5ccf: $07
	rlca                                             ; $5cd0: $07
	rlca                                             ; $5cd1: $07
	ld   bc, $0101                                   ; $5cd2: $01 $01 $01
	ld   bc, $0501                                   ; $5cd5: $01 $01 $05
	inc  bc                                          ; $5cd8: $03
	ld   [bc], a                                     ; $5cd9: $02
	inc  bc                                          ; $5cda: $03
	inc  bc                                          ; $5cdb: $03
	inc  bc                                          ; $5cdc: $03
	dec  b                                           ; $5cdd: $05
	rlca                                             ; $5cde: $07
	rlca                                             ; $5cdf: $07
	rlca                                             ; $5ce0: $07
	rlca                                             ; $5ce1: $07
	rlca                                             ; $5ce2: $07
	rlca                                             ; $5ce3: $07
	rlca                                             ; $5ce4: $07
	rlca                                             ; $5ce5: $07
	ld   bc, $0101                                   ; $5ce6: $01 $01 $01
	ld   bc, $0501                                   ; $5ce9: $01 $01 $05
	dec  b                                           ; $5cec: $05
	ld   [bc], a                                     ; $5ced: $02
	inc  bc                                          ; $5cee: $03
	inc  bc                                          ; $5cef: $03
	inc  bc                                          ; $5cf0: $03
	inc  bc                                          ; $5cf1: $03
	rlca                                             ; $5cf2: $07
	rlca                                             ; $5cf3: $07
	rlca                                             ; $5cf4: $07
	rlca                                             ; $5cf5: $07
	rlca                                             ; $5cf6: $07
	rlca                                             ; $5cf7: $07
	rlca                                             ; $5cf8: $07
	rlca                                             ; $5cf9: $07
	ld   bc, $0101                                   ; $5cfa: $01 $01 $01
	ld   bc, $0101                                   ; $5cfd: $01 $01 $01
	ld   [bc], a                                     ; $5d00: $02
	ld   [bc], a                                     ; $5d01: $02
	ld   [bc], a                                     ; $5d02: $02
	ld   [bc], a                                     ; $5d03: $02
	inc  bc                                          ; $5d04: $03
	dec  b                                           ; $5d05: $05
	rlca                                             ; $5d06: $07
	rlca                                             ; $5d07: $07
	rlca                                             ; $5d08: $07
	rlca                                             ; $5d09: $07
	rlca                                             ; $5d0a: $07
	rlca                                             ; $5d0b: $07
	rlca                                             ; $5d0c: $07
	rlca                                             ; $5d0d: $07
	ld   bc, $0101                                   ; $5d0e: $01 $01 $01
	ld   bc, $0101                                   ; $5d11: $01 $01 $01
	ld   [bc], a                                     ; $5d14: $02
	ld   [bc], a                                     ; $5d15: $02
	ld   [bc], a                                     ; $5d16: $02
	ld   [bc], a                                     ; $5d17: $02
	inc  bc                                          ; $5d18: $03
	dec  b                                           ; $5d19: $05
	rlca                                             ; $5d1a: $07
	rlca                                             ; $5d1b: $07
	rlca                                             ; $5d1c: $07
	rlca                                             ; $5d1d: $07
	rlca                                             ; $5d1e: $07
	rlca                                             ; $5d1f: $07
	rlca                                             ; $5d20: $07
	rlca                                             ; $5d21: $07
	ld   [bc], a                                     ; $5d22: $02
	ld   [bc], a                                     ; $5d23: $02
	ld   bc, $0101                                   ; $5d24: $01 $01 $01
	ld   [bc], a                                     ; $5d27: $02
	ld   [bc], a                                     ; $5d28: $02
	ld   [bc], a                                     ; $5d29: $02
	ld   [bc], a                                     ; $5d2a: $02
	nop                                              ; $5d2b: $00
	inc  bc                                          ; $5d2c: $03
	inc  bc                                          ; $5d2d: $03
	rlca                                             ; $5d2e: $07
	rlca                                             ; $5d2f: $07
	rlca                                             ; $5d30: $07
	rlca                                             ; $5d31: $07
	rlca                                             ; $5d32: $07
	rlca                                             ; $5d33: $07
	rlca                                             ; $5d34: $07
	rlca                                             ; $5d35: $07
	ld   [bc], a                                     ; $5d36: $02
	ld   [bc], a                                     ; $5d37: $02
	ld   [bc], a                                     ; $5d38: $02
	ld   [bc], a                                     ; $5d39: $02
	ld   [bc], a                                     ; $5d3a: $02
	ld   [bc], a                                     ; $5d3b: $02
	ld   [bc], a                                     ; $5d3c: $02
	ld   [bc], a                                     ; $5d3d: $02
	ld   bc, $0000                                   ; $5d3e: $01 $00 $00
	inc  bc                                          ; $5d41: $03
	rlca                                             ; $5d42: $07
	rlca                                             ; $5d43: $07
	rlca                                             ; $5d44: $07
	rlca                                             ; $5d45: $07
	rlca                                             ; $5d46: $07
	rlca                                             ; $5d47: $07
	rlca                                             ; $5d48: $07
	rlca                                             ; $5d49: $07
	ld   [bc], a                                     ; $5d4a: $02
	ld   [bc], a                                     ; $5d4b: $02
	ld   [bc], a                                     ; $5d4c: $02
	ld   [bc], a                                     ; $5d4d: $02
	ld   [bc], a                                     ; $5d4e: $02
	ld   [bc], a                                     ; $5d4f: $02
	ld   b, $06                                      ; $5d50: $06 $06
	nop                                              ; $5d52: $00
	nop                                              ; $5d53: $00
	nop                                              ; $5d54: $00
	inc  bc                                          ; $5d55: $03
	rlca                                             ; $5d56: $07
	rlca                                             ; $5d57: $07
	rlca                                             ; $5d58: $07
	rlca                                             ; $5d59: $07
	rlca                                             ; $5d5a: $07
	rlca                                             ; $5d5b: $07
	rlca                                             ; $5d5c: $07
	rlca                                             ; $5d5d: $07
	ld   bc, $0101                                   ; $5d5e: $01 $01 $01
	ld   bc, $0101                                   ; $5d61: $01 $01 $01
	ld   b, $06                                      ; $5d64: $06 $06
	nop                                              ; $5d66: $00
	ld   [bc], a                                     ; $5d67: $02
	nop                                              ; $5d68: $00
	ld   bc, $0707                                   ; $5d69: $01 $07 $07
	rlca                                             ; $5d6c: $07
	rlca                                             ; $5d6d: $07
	rlca                                             ; $5d6e: $07
	rlca                                             ; $5d6f: $07
	rlca                                             ; $5d70: $07
	rlca                                             ; $5d71: $07
	ld   bc, $0101                                   ; $5d72: $01 $01 $01
	ld   b, $06                                      ; $5d75: $06 $06
	ld   b, $06                                      ; $5d77: $06 $06
	nop                                              ; $5d79: $00
	ld   [bc], a                                     ; $5d7a: $02
	ld   [bc], a                                     ; $5d7b: $02
	nop                                              ; $5d7c: $00
	ld   bc, $0707                                   ; $5d7d: $01 $07 $07
	rlca                                             ; $5d80: $07
	rlca                                             ; $5d81: $07
	rlca                                             ; $5d82: $07
	rlca                                             ; $5d83: $07
	rlca                                             ; $5d84: $07
	rlca                                             ; $5d85: $07
	ld   [bc], a                                     ; $5d86: $02
	ld   [bc], a                                     ; $5d87: $02
	ld   b, $00                                      ; $5d88: $06 $00
	nop                                              ; $5d8a: $00
	nop                                              ; $5d8b: $00
	nop                                              ; $5d8c: $00
	nop                                              ; $5d8d: $00
	ld   [bc], a                                     ; $5d8e: $02
	ld   [bc], a                                     ; $5d8f: $02
	ld   [bc], a                                     ; $5d90: $02
	ld   bc, $0707                                   ; $5d91: $01 $07 $07
	rlca                                             ; $5d94: $07
	rlca                                             ; $5d95: $07
	rlca                                             ; $5d96: $07
	rlca                                             ; $5d97: $07
	rlca                                             ; $5d98: $07
	rlca                                             ; $5d99: $07
	ld   [bc], a                                     ; $5d9a: $02
	ld   [bc], a                                     ; $5d9b: $02
	inc  b                                           ; $5d9c: $04
	nop                                              ; $5d9d: $00
	nop                                              ; $5d9e: $00
	nop                                              ; $5d9f: $00
	nop                                              ; $5da0: $00
	nop                                              ; $5da1: $00
	nop                                              ; $5da2: $00
	ld   [bc], a                                     ; $5da3: $02
	ld   [bc], a                                     ; $5da4: $02
	ld   bc, $0707                                   ; $5da5: $01 $07 $07
	rlca                                             ; $5da8: $07
	rlca                                             ; $5da9: $07
	rlca                                             ; $5daa: $07
	rlca                                             ; $5dab: $07
	rlca                                             ; $5dac: $07
	rlca                                             ; $5dad: $07
	ld   [bc], a                                     ; $5dae: $02
	ld   [bc], a                                     ; $5daf: $02
	ld   [bc], a                                     ; $5db0: $02
	inc  b                                           ; $5db1: $04
	nop                                              ; $5db2: $00
	nop                                              ; $5db3: $00
	nop                                              ; $5db4: $00
	nop                                              ; $5db5: $00
	ld   b, $02                                      ; $5db6: $06 $02
	nop                                              ; $5db8: $00
	nop                                              ; $5db9: $00
	rlca                                             ; $5dba: $07
	rlca                                             ; $5dbb: $07
	rlca                                             ; $5dbc: $07
	rlca                                             ; $5dbd: $07
	rlca                                             ; $5dbe: $07
	rlca                                             ; $5dbf: $07
	rlca                                             ; $5dc0: $07
	rlca                                             ; $5dc1: $07
	nop                                              ; $5dc2: $00
	ld   [bc], a                                     ; $5dc3: $02
	ld   [bc], a                                     ; $5dc4: $02
	ld   [bc], a                                     ; $5dc5: $02
	ld   [bc], a                                     ; $5dc6: $02
	nop                                              ; $5dc7: $00
	nop                                              ; $5dc8: $00
	nop                                              ; $5dc9: $00
	ld   b, $02                                      ; $5dca: $06 $02
	ld   [bc], a                                     ; $5dcc: $02
	nop                                              ; $5dcd: $00
	rlca                                             ; $5dce: $07
	rlca                                             ; $5dcf: $07
	rlca                                             ; $5dd0: $07
	rlca                                             ; $5dd1: $07
	rlca                                             ; $5dd2: $07
	rlca                                             ; $5dd3: $07
	rlca                                             ; $5dd4: $07
	ld   b, a                                        ; $5dd5: $47
	rlca                                             ; $5dd6: $07
	rlca                                             ; $5dd7: $07
	rlca                                             ; $5dd8: $07
	rlca                                             ; $5dd9: $07
	rlca                                             ; $5dda: $07
	rlca                                             ; $5ddb: $07
	rlca                                             ; $5ddc: $07
	rlca                                             ; $5ddd: $07
	rlca                                             ; $5dde: $07
	rlca                                             ; $5ddf: $07
	rlca                                             ; $5de0: $07
	rlca                                             ; $5de1: $07
	rlca                                             ; $5de2: $07
	rlca                                             ; $5de3: $07
	rlca                                             ; $5de4: $07
	rlca                                             ; $5de5: $07
	ld   b, l                                        ; $5de6: $45
	ld   b, l                                        ; $5de7: $45
	ld   b, l                                        ; $5de8: $45
	ld   b, b                                        ; $5de9: $40
	ld   b, c                                        ; $5dea: $41
	ld   b, c                                        ; $5deb: $41
	ld   b, c                                        ; $5dec: $41
	ld   b, c                                        ; $5ded: $41
	ld   b, c                                        ; $5dee: $41
	ld   b, c                                        ; $5def: $41
	ld   b, c                                        ; $5df0: $41
	ld   b, c                                        ; $5df1: $41
	ld   b, c                                        ; $5df2: $41
	ld   b, c                                        ; $5df3: $41
	ld   b, c                                        ; $5df4: $41
	ld   b, c                                        ; $5df5: $41
	ld   b, b                                        ; $5df6: $40
	ld   b, l                                        ; $5df7: $45
	ld   b, l                                        ; $5df8: $45
	ld   b, l                                        ; $5df9: $45
	ld   b, l                                        ; $5dfa: $45
	ld   b, l                                        ; $5dfb: $45
	ld   b, l                                        ; $5dfc: $45
	ld   b, [hl]                                     ; $5dfd: $46
	add  b                                           ; $5dfe: $80
	add  c                                           ; $5dff: $81
	add  d                                           ; $5e00: $82
	add  e                                           ; $5e01: $83
	add  h                                           ; $5e02: $84
	add  l                                           ; $5e03: $85
	add  [hl]                                        ; $5e04: $86
	add  a                                           ; $5e05: $87
	adc  b                                           ; $5e06: $88
	adc  c                                           ; $5e07: $89
	adc  d                                           ; $5e08: $8a
	adc  e                                           ; $5e09: $8b
	ld   b, d                                        ; $5e0a: $42
	ld   b, l                                        ; $5e0b: $45
	ld   b, l                                        ; $5e0c: $45
	ld   b, l                                        ; $5e0d: $45
	ld   b, l                                        ; $5e0e: $45
	ld   b, l                                        ; $5e0f: $45
	ld   b, l                                        ; $5e10: $45
	ld   b, [hl]                                     ; $5e11: $46
	sub  b                                           ; $5e12: $90
	sub  c                                           ; $5e13: $91
	sub  d                                           ; $5e14: $92
	sub  e                                           ; $5e15: $93
	sub  h                                           ; $5e16: $94
	sub  l                                           ; $5e17: $95
	sub  [hl]                                        ; $5e18: $96
	sub  a                                           ; $5e19: $97
	sbc  b                                           ; $5e1a: $98
	sbc  c                                           ; $5e1b: $99
	sbc  d                                           ; $5e1c: $9a
	sbc  e                                           ; $5e1d: $9b
	ld   b, d                                        ; $5e1e: $42
	ld   b, l                                        ; $5e1f: $45
	ld   b, l                                        ; $5e20: $45
	ld   b, l                                        ; $5e21: $45
	ld   b, l                                        ; $5e22: $45
	ld   b, l                                        ; $5e23: $45
	ld   b, l                                        ; $5e24: $45
	ld   b, [hl]                                     ; $5e25: $46
	and  b                                           ; $5e26: $a0
	and  c                                           ; $5e27: $a1
	and  d                                           ; $5e28: $a2
	and  e                                           ; $5e29: $a3
	and  h                                           ; $5e2a: $a4
	and  l                                           ; $5e2b: $a5
	and  [hl]                                        ; $5e2c: $a6
	and  a                                           ; $5e2d: $a7
	xor  b                                           ; $5e2e: $a8
	xor  c                                           ; $5e2f: $a9
	xor  d                                           ; $5e30: $aa
	xor  e                                           ; $5e31: $ab
	ld   b, d                                        ; $5e32: $42
	ld   b, l                                        ; $5e33: $45
	ld   b, l                                        ; $5e34: $45
	ld   b, l                                        ; $5e35: $45
	ld   b, l                                        ; $5e36: $45
	ld   b, l                                        ; $5e37: $45
	ld   b, l                                        ; $5e38: $45
	ld   b, [hl]                                     ; $5e39: $46
	or   b                                           ; $5e3a: $b0
	or   c                                           ; $5e3b: $b1
	or   d                                           ; $5e3c: $b2
	or   e                                           ; $5e3d: $b3
	or   h                                           ; $5e3e: $b4
	or   l                                           ; $5e3f: $b5
	or   [hl]                                        ; $5e40: $b6
	or   a                                           ; $5e41: $b7
	cp   b                                           ; $5e42: $b8
	cp   c                                           ; $5e43: $b9
	cp   d                                           ; $5e44: $ba
	cp   e                                           ; $5e45: $bb
	ld   b, d                                        ; $5e46: $42
	ld   b, l                                        ; $5e47: $45
	ld   b, l                                        ; $5e48: $45
	ld   b, l                                        ; $5e49: $45
	ld   b, l                                        ; $5e4a: $45
	ld   b, l                                        ; $5e4b: $45
	ld   b, l                                        ; $5e4c: $45
	ld   b, [hl]                                     ; $5e4d: $46
	ret  nz                                          ; $5e4e: $c0

	pop  bc                                          ; $5e4f: $c1
	jp   nz, $c4c3                                   ; $5e50: $c2 $c3 $c4

	push bc                                          ; $5e53: $c5
	add  $c7                                         ; $5e54: $c6 $c7
	ret  z                                           ; $5e56: $c8

	ret                                              ; $5e57: $c9


	jp   z, Jump_0a0_42cb                            ; $5e58: $ca $cb $42

	ld   b, l                                        ; $5e5b: $45
	ld   b, l                                        ; $5e5c: $45
	ld   b, l                                        ; $5e5d: $45
	ld   b, l                                        ; $5e5e: $45
	ld   b, l                                        ; $5e5f: $45
	ld   b, l                                        ; $5e60: $45
	ld   b, [hl]                                     ; $5e61: $46
	ret  nc                                          ; $5e62: $d0

	pop  de                                          ; $5e63: $d1
	jp   nc, $d4d3                                   ; $5e64: $d2 $d3 $d4

	push de                                          ; $5e67: $d5
	sub  $d7                                         ; $5e68: $d6 $d7
	ret  c                                           ; $5e6a: $d8

	reti                                             ; $5e6b: $d9


	jp   c, Jump_0a0_42db                            ; $5e6c: $da $db $42

	ld   b, l                                        ; $5e6f: $45
	ld   b, l                                        ; $5e70: $45
	ld   b, l                                        ; $5e71: $45
	ld   b, l                                        ; $5e72: $45
	ld   b, l                                        ; $5e73: $45
	ld   b, l                                        ; $5e74: $45
	ld   b, [hl]                                     ; $5e75: $46
	ldh  [$e1], a                                    ; $5e76: $e0 $e1
	ldh  [c], a                                      ; $5e78: $e2
	db   $e3                                         ; $5e79: $e3
	db   $e4                                         ; $5e7a: $e4
	push hl                                          ; $5e7b: $e5
	and  $e7                                         ; $5e7c: $e6 $e7
	add  sp, -$17                                    ; $5e7e: $e8 $e9
	ld   [$42eb], a                                  ; $5e80: $ea $eb $42
	ld   b, l                                        ; $5e83: $45
	ld   b, l                                        ; $5e84: $45
	ld   b, l                                        ; $5e85: $45
	ld   b, l                                        ; $5e86: $45
	ld   b, l                                        ; $5e87: $45
	ld   b, l                                        ; $5e88: $45
	ld   b, [hl]                                     ; $5e89: $46
	ldh  a, [$f1]                                    ; $5e8a: $f0 $f1
	ldh  a, [c]                                      ; $5e8c: $f2
	di                                               ; $5e8d: $f3
	db   $f4                                         ; $5e8e: $f4
	push af                                          ; $5e8f: $f5
	or   $f7                                         ; $5e90: $f6 $f7
	ld   hl, sp-$07                                  ; $5e92: $f8 $f9
	ld   a, [$42fb]                                  ; $5e94: $fa $fb $42
	ld   b, l                                        ; $5e97: $45
	ld   b, l                                        ; $5e98: $45
	ld   b, l                                        ; $5e99: $45
	ld   b, l                                        ; $5e9a: $45
	ld   b, l                                        ; $5e9b: $45
	ld   b, l                                        ; $5e9c: $45
	ld   b, [hl]                                     ; $5e9d: $46
	adc  h                                           ; $5e9e: $8c
	adc  l                                           ; $5e9f: $8d
	adc  [hl]                                        ; $5ea0: $8e
	adc  a                                           ; $5ea1: $8f
	call z, $cecd                                    ; $5ea2: $cc $cd $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ea5: $cf
	nop                                              ; $5ea6: $00
	ld   bc, $0302                                   ; $5ea7: $01 $02 $03
	ld   b, d                                        ; $5eaa: $42
	ld   b, l                                        ; $5eab: $45
	ld   b, l                                        ; $5eac: $45
	ld   b, l                                        ; $5ead: $45
	ld   b, l                                        ; $5eae: $45
	ld   b, l                                        ; $5eaf: $45
	ld   b, l                                        ; $5eb0: $45
	ld   b, [hl]                                     ; $5eb1: $46
	sbc  h                                           ; $5eb2: $9c
	sbc  l                                           ; $5eb3: $9d
	sbc  [hl]                                        ; $5eb4: $9e
	sbc  a                                           ; $5eb5: $9f
	call c, $dedd                                    ; $5eb6: $dc $dd $de
	rst  JumpTable                                         ; $5eb9: $df
	db   $10                                         ; $5eba: $10
	ld   de, $1312                                   ; $5ebb: $11 $12 $13
	ld   b, d                                        ; $5ebe: $42
	ld   b, l                                        ; $5ebf: $45
	ld   b, l                                        ; $5ec0: $45
	ld   b, l                                        ; $5ec1: $45
	ld   b, l                                        ; $5ec2: $45
	ld   b, l                                        ; $5ec3: $45
	ld   b, l                                        ; $5ec4: $45
	ld   b, [hl]                                     ; $5ec5: $46
	xor  h                                           ; $5ec6: $ac
	xor  l                                           ; $5ec7: $ad
	xor  [hl]                                        ; $5ec8: $ae
	xor  a                                           ; $5ec9: $af
	db   $ec                                         ; $5eca: $ec
	db   $ed                                         ; $5ecb: $ed
	xor  $ef                                         ; $5ecc: $ee $ef
	jr   nz, @+$23                                   ; $5ece: $20 $21

	ld   [hl+], a                                    ; $5ed0: $22
	inc  hl                                          ; $5ed1: $23
	ld   b, d                                        ; $5ed2: $42
	ld   b, l                                        ; $5ed3: $45
	ld   b, l                                        ; $5ed4: $45
	ld   b, l                                        ; $5ed5: $45
	ld   b, l                                        ; $5ed6: $45
	ld   b, l                                        ; $5ed7: $45
	ld   b, l                                        ; $5ed8: $45
	ld   b, [hl]                                     ; $5ed9: $46
	cp   h                                           ; $5eda: $bc
	cp   l                                           ; $5edb: $bd
	cp   [hl]                                        ; $5edc: $be
	cp   a                                           ; $5edd: $bf
	db   $fc                                         ; $5ede: $fc
	db   $fd                                         ; $5edf: $fd
	cp   $ff                                         ; $5ee0: $fe $ff
	jr   nc, jr_0a0_5f15                             ; $5ee2: $30 $31

	ld   [hl-], a                                    ; $5ee4: $32
	inc  sp                                          ; $5ee5: $33
	ld   b, d                                        ; $5ee6: $42
	ld   b, l                                        ; $5ee7: $45
	ld   b, l                                        ; $5ee8: $45
	ld   b, l                                        ; $5ee9: $45
	ld   b, l                                        ; $5eea: $45
	ld   b, l                                        ; $5eeb: $45
	ld   b, l                                        ; $5eec: $45
	ld   b, [hl]                                     ; $5eed: $46
	inc  b                                           ; $5eee: $04
	dec  b                                           ; $5eef: $05
	ld   b, $07                                      ; $5ef0: $06 $07
	ld   [$0a09], sp                                 ; $5ef2: $08 $09 $0a
	dec  bc                                          ; $5ef5: $0b
	inc  c                                           ; $5ef6: $0c
	dec  c                                           ; $5ef7: $0d
	ld   c, $0f                                      ; $5ef8: $0e $0f
	ld   b, d                                        ; $5efa: $42
	ld   b, l                                        ; $5efb: $45
	ld   b, l                                        ; $5efc: $45
	ld   b, l                                        ; $5efd: $45
	ld   b, l                                        ; $5efe: $45
	ld   b, l                                        ; $5eff: $45
	ld   b, l                                        ; $5f00: $45
	ld   b, [hl]                                     ; $5f01: $46
	inc  d                                           ; $5f02: $14
	dec  d                                           ; $5f03: $15
	ld   d, $17                                      ; $5f04: $16 $17
	jr   @+$1b                                       ; $5f06: $18 $19

	ld   a, [de]                                     ; $5f08: $1a
	dec  de                                          ; $5f09: $1b
	inc  e                                           ; $5f0a: $1c
	dec  e                                           ; $5f0b: $1d
	ld   e, $1f                                      ; $5f0c: $1e $1f
	ld   b, d                                        ; $5f0e: $42
	ld   b, l                                        ; $5f0f: $45
	ld   b, l                                        ; $5f10: $45
	ld   b, l                                        ; $5f11: $45
	ld   b, l                                        ; $5f12: $45
	ld   b, l                                        ; $5f13: $45
	ld   b, l                                        ; $5f14: $45

jr_0a0_5f15:
	ld   b, [hl]                                     ; $5f15: $46
	inc  h                                           ; $5f16: $24
	dec  h                                           ; $5f17: $25
	ld   h, $27                                      ; $5f18: $26 $27
	jr   z, jr_0a0_5f45                              ; $5f1a: $28 $29

	ld   a, [hl+]                                    ; $5f1c: $2a
	dec  hl                                          ; $5f1d: $2b
	inc  l                                           ; $5f1e: $2c
	dec  l                                           ; $5f1f: $2d
	ld   l, $2f                                      ; $5f20: $2e $2f
	ld   b, d                                        ; $5f22: $42
	ld   b, l                                        ; $5f23: $45
	ld   b, l                                        ; $5f24: $45
	ld   b, l                                        ; $5f25: $45
	ld   b, l                                        ; $5f26: $45
	ld   b, l                                        ; $5f27: $45
	ld   b, l                                        ; $5f28: $45
	ld   b, [hl]                                     ; $5f29: $46
	inc  [hl]                                        ; $5f2a: $34
	dec  [hl]                                        ; $5f2b: $35
	ld   [hl], $37                                   ; $5f2c: $36 $37
	jr   c, jr_0a0_5f69                              ; $5f2e: $38 $39

	ld   a, [hl-]                                    ; $5f30: $3a
	dec  sp                                          ; $5f31: $3b
	inc  a                                           ; $5f32: $3c
	dec  a                                           ; $5f33: $3d
	ld   a, $3f                                      ; $5f34: $3e $3f
	ld   b, d                                        ; $5f36: $42
	ld   b, l                                        ; $5f37: $45
	ld   b, l                                        ; $5f38: $45
	ld   b, l                                        ; $5f39: $45
	ld   b, l                                        ; $5f3a: $45
	ld   b, l                                        ; $5f3b: $45
	ld   b, l                                        ; $5f3c: $45
	ld   b, b                                        ; $5f3d: $40
	ld   b, e                                        ; $5f3e: $43
	ld   b, e                                        ; $5f3f: $43
	ld   b, e                                        ; $5f40: $43
	ld   b, e                                        ; $5f41: $43
	ld   b, e                                        ; $5f42: $43
	ld   b, e                                        ; $5f43: $43
	ld   b, e                                        ; $5f44: $43

jr_0a0_5f45:
	ld   b, e                                        ; $5f45: $43
	ld   b, e                                        ; $5f46: $43
	ld   b, e                                        ; $5f47: $43
	ld   b, e                                        ; $5f48: $43
	ld   b, e                                        ; $5f49: $43
	ld   b, h                                        ; $5f4a: $44
	ld   b, l                                        ; $5f4b: $45
	ld   b, l                                        ; $5f4c: $45
	ld   b, l                                        ; $5f4d: $45
	rlca                                             ; $5f4e: $07
	rlca                                             ; $5f4f: $07
	rlca                                             ; $5f50: $07
	rlca                                             ; $5f51: $07
	rlca                                             ; $5f52: $07
	rlca                                             ; $5f53: $07
	rlca                                             ; $5f54: $07
	rlca                                             ; $5f55: $07
	rlca                                             ; $5f56: $07
	rlca                                             ; $5f57: $07
	rlca                                             ; $5f58: $07
	rlca                                             ; $5f59: $07
	rlca                                             ; $5f5a: $07
	rlca                                             ; $5f5b: $07
	rlca                                             ; $5f5c: $07
	rlca                                             ; $5f5d: $07
	daa                                              ; $5f5e: $27
	rlca                                             ; $5f5f: $07
	rlca                                             ; $5f60: $07
	rlca                                             ; $5f61: $07
	rlca                                             ; $5f62: $07
	rlca                                             ; $5f63: $07
	rlca                                             ; $5f64: $07
	rlca                                             ; $5f65: $07
	dec  b                                           ; $5f66: $05
	dec  b                                           ; $5f67: $05
	dec  b                                           ; $5f68: $05

jr_0a0_5f69:
	dec  b                                           ; $5f69: $05
	dec  b                                           ; $5f6a: $05
	dec  b                                           ; $5f6b: $05
	dec  b                                           ; $5f6c: $05
	dec  b                                           ; $5f6d: $05
	dec  b                                           ; $5f6e: $05
	dec  b                                           ; $5f6f: $05
	dec  b                                           ; $5f70: $05
	dec  b                                           ; $5f71: $05
	rlca                                             ; $5f72: $07
	rlca                                             ; $5f73: $07
	rlca                                             ; $5f74: $07
	rlca                                             ; $5f75: $07
	rlca                                             ; $5f76: $07
	rlca                                             ; $5f77: $07
	rlca                                             ; $5f78: $07
	rlca                                             ; $5f79: $07
	ld   b, $06                                      ; $5f7a: $06 $06
	ld   b, $06                                      ; $5f7c: $06 $06
	inc  b                                           ; $5f7e: $04
	inc  b                                           ; $5f7f: $04

Jump_0a0_5f80:
	inc  b                                           ; $5f80: $04
	ld   b, $06                                      ; $5f81: $06 $06
	ld   b, $05                                      ; $5f83: $06 $05
	dec  b                                           ; $5f85: $05
	rlca                                             ; $5f86: $07
	rlca                                             ; $5f87: $07
	rlca                                             ; $5f88: $07
	rlca                                             ; $5f89: $07
	rlca                                             ; $5f8a: $07
	rlca                                             ; $5f8b: $07
	rlca                                             ; $5f8c: $07
	rlca                                             ; $5f8d: $07
	ld   b, $06                                      ; $5f8e: $06 $06
	ld   b, $04                                      ; $5f90: $06 $04
	inc  b                                           ; $5f92: $04
	inc  b                                           ; $5f93: $04
	inc  b                                           ; $5f94: $04
	inc  b                                           ; $5f95: $04
	ld   b, $06                                      ; $5f96: $06 $06
	dec  b                                           ; $5f98: $05
	dec  b                                           ; $5f99: $05
	rlca                                             ; $5f9a: $07
	rlca                                             ; $5f9b: $07
	rlca                                             ; $5f9c: $07
	rlca                                             ; $5f9d: $07
	rlca                                             ; $5f9e: $07
	rlca                                             ; $5f9f: $07
	rlca                                             ; $5fa0: $07
	rlca                                             ; $5fa1: $07
	ld   [bc], a                                     ; $5fa2: $02
	ld   [bc], a                                     ; $5fa3: $02
	ld   [bc], a                                     ; $5fa4: $02
	inc  b                                           ; $5fa5: $04
	inc  b                                           ; $5fa6: $04
	inc  b                                           ; $5fa7: $04
	inc  b                                           ; $5fa8: $04
	inc  b                                           ; $5fa9: $04
	ld   b, $06                                      ; $5faa: $06 $06
	dec  b                                           ; $5fac: $05
	dec  b                                           ; $5fad: $05
	rlca                                             ; $5fae: $07
	rlca                                             ; $5faf: $07
	rlca                                             ; $5fb0: $07
	rlca                                             ; $5fb1: $07
	rlca                                             ; $5fb2: $07
	rlca                                             ; $5fb3: $07
	rlca                                             ; $5fb4: $07
	rlca                                             ; $5fb5: $07
	ld   [bc], a                                     ; $5fb6: $02
	ld   [bc], a                                     ; $5fb7: $02
	ld   [bc], a                                     ; $5fb8: $02
	ld   [bc], a                                     ; $5fb9: $02
	inc  b                                           ; $5fba: $04
	inc  b                                           ; $5fbb: $04
	inc  b                                           ; $5fbc: $04
	inc  b                                           ; $5fbd: $04
	ld   b, $06                                      ; $5fbe: $06 $06
	dec  b                                           ; $5fc0: $05
	dec  b                                           ; $5fc1: $05
	rlca                                             ; $5fc2: $07
	rlca                                             ; $5fc3: $07
	rlca                                             ; $5fc4: $07
	rlca                                             ; $5fc5: $07
	rlca                                             ; $5fc6: $07
	rlca                                             ; $5fc7: $07
	rlca                                             ; $5fc8: $07
	rlca                                             ; $5fc9: $07
	nop                                              ; $5fca: $00
	nop                                              ; $5fcb: $00
	nop                                              ; $5fcc: $00
	nop                                              ; $5fcd: $00
	inc  b                                           ; $5fce: $04
	inc  b                                           ; $5fcf: $04
	inc  b                                           ; $5fd0: $04
	inc  b                                           ; $5fd1: $04
	ld   b, $06                                      ; $5fd2: $06 $06
	dec  b                                           ; $5fd4: $05
	dec  b                                           ; $5fd5: $05
	rlca                                             ; $5fd6: $07
	rlca                                             ; $5fd7: $07
	rlca                                             ; $5fd8: $07
	rlca                                             ; $5fd9: $07
	rlca                                             ; $5fda: $07
	rlca                                             ; $5fdb: $07
	rlca                                             ; $5fdc: $07
	rlca                                             ; $5fdd: $07
	nop                                              ; $5fde: $00
	nop                                              ; $5fdf: $00
	nop                                              ; $5fe0: $00
	nop                                              ; $5fe1: $00
	nop                                              ; $5fe2: $00
	inc  b                                           ; $5fe3: $04
	inc  b                                           ; $5fe4: $04
	inc  b                                           ; $5fe5: $04
	inc  bc                                          ; $5fe6: $03
	ld   b, $05                                      ; $5fe7: $06 $05
	dec  b                                           ; $5fe9: $05
	rlca                                             ; $5fea: $07
	rlca                                             ; $5feb: $07
	rlca                                             ; $5fec: $07
	rlca                                             ; $5fed: $07
	rlca                                             ; $5fee: $07
	rlca                                             ; $5fef: $07
	rlca                                             ; $5ff0: $07
	rlca                                             ; $5ff1: $07
	nop                                              ; $5ff2: $00
	nop                                              ; $5ff3: $00
	nop                                              ; $5ff4: $00
	ld   bc, $0401                                   ; $5ff5: $01 $01 $04
	inc  b                                           ; $5ff8: $04
	inc  b                                           ; $5ff9: $04
	inc  bc                                          ; $5ffa: $03
	inc  bc                                          ; $5ffb: $03
	dec  b                                           ; $5ffc: $05
	dec  b                                           ; $5ffd: $05
	rlca                                             ; $5ffe: $07
	rlca                                             ; $5fff: $07
	rlca                                             ; $6000: $07
	rlca                                             ; $6001: $07
	rlca                                             ; $6002: $07
	rlca                                             ; $6003: $07
	rlca                                             ; $6004: $07
	rlca                                             ; $6005: $07
	nop                                              ; $6006: $00
	nop                                              ; $6007: $00
	ld   bc, $0403                                   ; $6008: $01 $03 $04
	inc  b                                           ; $600b: $04
	inc  b                                           ; $600c: $04
	inc  bc                                          ; $600d: $03
	inc  bc                                          ; $600e: $03
	inc  bc                                          ; $600f: $03
	inc  bc                                          ; $6010: $03
	dec  b                                           ; $6011: $05
	rlca                                             ; $6012: $07
	rlca                                             ; $6013: $07
	rlca                                             ; $6014: $07
	rlca                                             ; $6015: $07
	rlca                                             ; $6016: $07
	rlca                                             ; $6017: $07
	rlca                                             ; $6018: $07
	rlca                                             ; $6019: $07
	nop                                              ; $601a: $00
	ld   bc, $0303                                   ; $601b: $01 $03 $03
	inc  b                                           ; $601e: $04
	inc  b                                           ; $601f: $04
	inc  bc                                          ; $6020: $03
	inc  bc                                          ; $6021: $03
	inc  bc                                          ; $6022: $03
	inc  bc                                          ; $6023: $03
	inc  bc                                          ; $6024: $03
	dec  b                                           ; $6025: $05
	rlca                                             ; $6026: $07
	rlca                                             ; $6027: $07
	rlca                                             ; $6028: $07
	rlca                                             ; $6029: $07
	rlca                                             ; $602a: $07
	rlca                                             ; $602b: $07
	rlca                                             ; $602c: $07
	rlca                                             ; $602d: $07
	nop                                              ; $602e: $00
	ld   bc, $0303                                   ; $602f: $01 $03 $03
	inc  bc                                          ; $6032: $03
	inc  bc                                          ; $6033: $03
	inc  bc                                          ; $6034: $03
	inc  bc                                          ; $6035: $03
	inc  bc                                          ; $6036: $03
	inc  bc                                          ; $6037: $03
	dec  b                                           ; $6038: $05
	dec  b                                           ; $6039: $05
	rlca                                             ; $603a: $07
	rlca                                             ; $603b: $07
	rlca                                             ; $603c: $07
	rlca                                             ; $603d: $07
	rlca                                             ; $603e: $07
	rlca                                             ; $603f: $07
	rlca                                             ; $6040: $07
	rlca                                             ; $6041: $07
	nop                                              ; $6042: $00
	ld   bc, $0403                                   ; $6043: $01 $03 $04
	inc  bc                                          ; $6046: $03
	inc  bc                                          ; $6047: $03
	inc  bc                                          ; $6048: $03
	inc  bc                                          ; $6049: $03
	inc  bc                                          ; $604a: $03
	inc  bc                                          ; $604b: $03
	dec  b                                           ; $604c: $05
	dec  b                                           ; $604d: $05
	rlca                                             ; $604e: $07
	rlca                                             ; $604f: $07
	rlca                                             ; $6050: $07
	rlca                                             ; $6051: $07
	rlca                                             ; $6052: $07
	rlca                                             ; $6053: $07
	rlca                                             ; $6054: $07
	rlca                                             ; $6055: $07
	nop                                              ; $6056: $00
	inc  bc                                          ; $6057: $03
	inc  bc                                          ; $6058: $03
	inc  b                                           ; $6059: $04
	inc  b                                           ; $605a: $04
	inc  bc                                          ; $605b: $03
	inc  bc                                          ; $605c: $03
	inc  bc                                          ; $605d: $03
	inc  bc                                          ; $605e: $03
	ld   b, $05                                      ; $605f: $06 $05
	dec  b                                           ; $6061: $05
	rlca                                             ; $6062: $07
	rlca                                             ; $6063: $07
	rlca                                             ; $6064: $07
	rlca                                             ; $6065: $07
	rlca                                             ; $6066: $07
	rlca                                             ; $6067: $07
	rlca                                             ; $6068: $07
	rlca                                             ; $6069: $07
	ld   [bc], a                                     ; $606a: $02
	inc  bc                                          ; $606b: $03
	inc  bc                                          ; $606c: $03
	inc  b                                           ; $606d: $04
	inc  b                                           ; $606e: $04
	inc  b                                           ; $606f: $04
	inc  bc                                          ; $6070: $03
	inc  bc                                          ; $6071: $03
	inc  bc                                          ; $6072: $03
	ld   b, $05                                      ; $6073: $06 $05
	dec  b                                           ; $6075: $05
	rlca                                             ; $6076: $07
	rlca                                             ; $6077: $07
	rlca                                             ; $6078: $07
	rlca                                             ; $6079: $07
	rlca                                             ; $607a: $07
	rlca                                             ; $607b: $07
	rlca                                             ; $607c: $07
	rlca                                             ; $607d: $07
	ld   [bc], a                                     ; $607e: $02
	inc  bc                                          ; $607f: $03
	inc  bc                                          ; $6080: $03
	inc  bc                                          ; $6081: $03
	inc  bc                                          ; $6082: $03
	inc  b                                           ; $6083: $04
	inc  bc                                          ; $6084: $03
	inc  bc                                          ; $6085: $03
	ld   b, $06                                      ; $6086: $06 $06
	dec  b                                           ; $6088: $05
	dec  b                                           ; $6089: $05
	rlca                                             ; $608a: $07
	rlca                                             ; $608b: $07
	rlca                                             ; $608c: $07
	rlca                                             ; $608d: $07
	rlca                                             ; $608e: $07
	rlca                                             ; $608f: $07
	rlca                                             ; $6090: $07
	rlca                                             ; $6091: $07
	nop                                              ; $6092: $00
	ld   bc, $0301                                   ; $6093: $01 $01 $03
	inc  bc                                          ; $6096: $03
	inc  bc                                          ; $6097: $03
	inc  bc                                          ; $6098: $03
	inc  bc                                          ; $6099: $03
	ld   b, $06                                      ; $609a: $06 $06
	dec  b                                           ; $609c: $05
	dec  b                                           ; $609d: $05
	rlca                                             ; $609e: $07
	rlca                                             ; $609f: $07
	rlca                                             ; $60a0: $07
	rlca                                             ; $60a1: $07
	rlca                                             ; $60a2: $07
	rlca                                             ; $60a3: $07
	rlca                                             ; $60a4: $07
	ld   b, a                                        ; $60a5: $47
	rlca                                             ; $60a6: $07
	rlca                                             ; $60a7: $07
	rlca                                             ; $60a8: $07
	rlca                                             ; $60a9: $07
	rlca                                             ; $60aa: $07
	rlca                                             ; $60ab: $07
	rlca                                             ; $60ac: $07
	rlca                                             ; $60ad: $07
	rlca                                             ; $60ae: $07
	rlca                                             ; $60af: $07
	rlca                                             ; $60b0: $07
	rlca                                             ; $60b1: $07
	rlca                                             ; $60b2: $07
	rlca                                             ; $60b3: $07
	rlca                                             ; $60b4: $07
	rlca                                             ; $60b5: $07
	add  b                                           ; $60b6: $80
	add  b                                           ; $60b7: $80
	add  b                                           ; $60b8: $80
	add  c                                           ; $60b9: $81
	add  d                                           ; $60ba: $82
	add  d                                           ; $60bb: $82
	add  d                                           ; $60bc: $82
	add  d                                           ; $60bd: $82
	add  d                                           ; $60be: $82
	add  d                                           ; $60bf: $82
	add  d                                           ; $60c0: $82
	add  d                                           ; $60c1: $82
	add  d                                           ; $60c2: $82
	add  d                                           ; $60c3: $82
	add  d                                           ; $60c4: $82
	add  d                                           ; $60c5: $82
	add  c                                           ; $60c6: $81
	add  b                                           ; $60c7: $80
	add  b                                           ; $60c8: $80
	add  b                                           ; $60c9: $80
	add  b                                           ; $60ca: $80
	add  b                                           ; $60cb: $80
	add  b                                           ; $60cc: $80
	add  e                                           ; $60cd: $83
	add  h                                           ; $60ce: $84
	add  h                                           ; $60cf: $84
	add  h                                           ; $60d0: $84
	add  l                                           ; $60d1: $85
	add  [hl]                                        ; $60d2: $86
	add  a                                           ; $60d3: $87
	adc  b                                           ; $60d4: $88
	adc  c                                           ; $60d5: $89
	add  h                                           ; $60d6: $84
	add  h                                           ; $60d7: $84
	adc  d                                           ; $60d8: $8a
	adc  e                                           ; $60d9: $8b
	adc  h                                           ; $60da: $8c
	add  b                                           ; $60db: $80
	add  b                                           ; $60dc: $80
	add  b                                           ; $60dd: $80
	add  b                                           ; $60de: $80
	add  b                                           ; $60df: $80
	add  b                                           ; $60e0: $80
	add  e                                           ; $60e1: $83
	adc  l                                           ; $60e2: $8d
	adc  l                                           ; $60e3: $8d
	adc  [hl]                                        ; $60e4: $8e
	adc  a                                           ; $60e5: $8f
	sub  b                                           ; $60e6: $90
	sub  c                                           ; $60e7: $91
	sub  d                                           ; $60e8: $92
	sub  e                                           ; $60e9: $93
	sub  h                                           ; $60ea: $94
	sub  l                                           ; $60eb: $95
	sub  [hl]                                        ; $60ec: $96
	sub  a                                           ; $60ed: $97
	adc  h                                           ; $60ee: $8c
	add  b                                           ; $60ef: $80
	add  b                                           ; $60f0: $80
	add  b                                           ; $60f1: $80
	add  b                                           ; $60f2: $80
	add  b                                           ; $60f3: $80
	add  b                                           ; $60f4: $80
	add  e                                           ; $60f5: $83
	sbc  b                                           ; $60f6: $98
	sbc  c                                           ; $60f7: $99
	sbc  d                                           ; $60f8: $9a
	sbc  e                                           ; $60f9: $9b
	sbc  h                                           ; $60fa: $9c
	sbc  l                                           ; $60fb: $9d
	sbc  [hl]                                        ; $60fc: $9e
	sbc  a                                           ; $60fd: $9f
	and  b                                           ; $60fe: $a0
	and  c                                           ; $60ff: $a1
	and  d                                           ; $6100: $a2
	and  e                                           ; $6101: $a3
	adc  h                                           ; $6102: $8c
	add  b                                           ; $6103: $80
	add  b                                           ; $6104: $80
	add  b                                           ; $6105: $80
	add  b                                           ; $6106: $80
	add  b                                           ; $6107: $80
	add  b                                           ; $6108: $80
	add  e                                           ; $6109: $83
	and  h                                           ; $610a: $a4
	and  h                                           ; $610b: $a4
	and  l                                           ; $610c: $a5
	and  [hl]                                        ; $610d: $a6
	and  a                                           ; $610e: $a7
	xor  b                                           ; $610f: $a8
	xor  c                                           ; $6110: $a9
	xor  d                                           ; $6111: $aa
	xor  e                                           ; $6112: $ab
	xor  h                                           ; $6113: $ac
	and  d                                           ; $6114: $a2
	xor  l                                           ; $6115: $ad
	adc  h                                           ; $6116: $8c
	add  b                                           ; $6117: $80
	add  b                                           ; $6118: $80
	add  b                                           ; $6119: $80
	add  b                                           ; $611a: $80
	add  b                                           ; $611b: $80
	add  b                                           ; $611c: $80
	add  e                                           ; $611d: $83
	xor  [hl]                                        ; $611e: $ae
	xor  a                                           ; $611f: $af
	or   b                                           ; $6120: $b0
	or   c                                           ; $6121: $b1
	or   d                                           ; $6122: $b2
	or   e                                           ; $6123: $b3
	or   h                                           ; $6124: $b4
	or   l                                           ; $6125: $b5
	or   [hl]                                        ; $6126: $b6
	or   a                                           ; $6127: $b7
	and  d                                           ; $6128: $a2
	cp   b                                           ; $6129: $b8
	adc  h                                           ; $612a: $8c
	add  b                                           ; $612b: $80
	add  b                                           ; $612c: $80
	add  b                                           ; $612d: $80
	add  b                                           ; $612e: $80
	add  b                                           ; $612f: $80
	add  b                                           ; $6130: $80
	add  e                                           ; $6131: $83
	cp   c                                           ; $6132: $b9
	cp   c                                           ; $6133: $b9
	cp   d                                           ; $6134: $ba
	cp   e                                           ; $6135: $bb
	cp   h                                           ; $6136: $bc
	cp   l                                           ; $6137: $bd
	cp   [hl]                                        ; $6138: $be
	cp   a                                           ; $6139: $bf
	ret  nz                                          ; $613a: $c0

	pop  bc                                          ; $613b: $c1
	jp   nz, $8cc3                                   ; $613c: $c2 $c3 $8c

	add  b                                           ; $613f: $80
	add  b                                           ; $6140: $80
	add  b                                           ; $6141: $80
	add  b                                           ; $6142: $80
	add  b                                           ; $6143: $80
	add  b                                           ; $6144: $80
	add  e                                           ; $6145: $83
	add  b                                           ; $6146: $80
	add  b                                           ; $6147: $80
	add  b                                           ; $6148: $80
	call nz, $c6c5                                   ; $6149: $c4 $c5 $c6
	rst  ToBoot                                         ; $614c: $c7
	ret  z                                           ; $614d: $c8

	ret                                              ; $614e: $c9


	jp   z, $cccb                                    ; $614f: $ca $cb $cc

	adc  h                                           ; $6152: $8c
	add  b                                           ; $6153: $80
	add  b                                           ; $6154: $80
	add  b                                           ; $6155: $80
	add  b                                           ; $6156: $80
	add  b                                           ; $6157: $80
	add  b                                           ; $6158: $80
	add  e                                           ; $6159: $83
	add  b                                           ; $615a: $80
	add  b                                           ; $615b: $80
	add  b                                           ; $615c: $80
	call $cfce                                       ; $615d: $cd $ce $cf
	ret  nc                                          ; $6160: $d0

	pop  de                                          ; $6161: $d1
	jp   nc, $d3cc                                   ; $6162: $d2 $cc $d3

	call z, $808c                                    ; $6165: $cc $8c $80
	add  b                                           ; $6168: $80
	add  b                                           ; $6169: $80
	add  b                                           ; $616a: $80
	add  b                                           ; $616b: $80
	add  b                                           ; $616c: $80
	add  e                                           ; $616d: $83
	add  b                                           ; $616e: $80
	add  b                                           ; $616f: $80
	call nc, $d6d5                                   ; $6170: $d4 $d5 $d6
	rst  $10                                         ; $6173: $d7
	ret  c                                           ; $6174: $d8

	reti                                             ; $6175: $d9


	jp   c, $dcdb                                    ; $6176: $da $db $dc

	db   $dd                                         ; $6179: $dd
	adc  h                                           ; $617a: $8c
	add  b                                           ; $617b: $80
	add  b                                           ; $617c: $80
	add  b                                           ; $617d: $80
	add  b                                           ; $617e: $80
	add  b                                           ; $617f: $80
	add  b                                           ; $6180: $80
	add  e                                           ; $6181: $83
	sbc  $df                                         ; $6182: $de $df
	ldh  [$e1], a                                    ; $6184: $e0 $e1
	ldh  [c], a                                      ; $6186: $e2
	db   $e3                                         ; $6187: $e3
	db   $e4                                         ; $6188: $e4
	push hl                                          ; $6189: $e5
	and  $e7                                         ; $618a: $e6 $e7
	call z, $8ce8                                    ; $618c: $cc $e8 $8c
	add  b                                           ; $618f: $80
	add  b                                           ; $6190: $80
	add  b                                           ; $6191: $80
	add  b                                           ; $6192: $80
	add  b                                           ; $6193: $80
	add  b                                           ; $6194: $80
	add  e                                           ; $6195: $83
	jp   hl                                          ; $6196: $e9


	ld   [$eceb], a                                  ; $6197: $ea $eb $ec
	db   $ed                                         ; $619a: $ed
	xor  $ef                                         ; $619b: $ee $ef
	ldh  a, [$f1]                                    ; $619d: $f0 $f1
	ldh  a, [c]                                      ; $619f: $f2
	di                                               ; $61a0: $f3
	db   $f4                                         ; $61a1: $f4
	adc  h                                           ; $61a2: $8c
	add  b                                           ; $61a3: $80
	add  b                                           ; $61a4: $80
	add  b                                           ; $61a5: $80
	add  b                                           ; $61a6: $80
	add  b                                           ; $61a7: $80
	add  b                                           ; $61a8: $80
	add  e                                           ; $61a9: $83
	push af                                          ; $61aa: $f5
	or   $f7                                         ; $61ab: $f6 $f7
	ld   hl, sp-$07                                  ; $61ad: $f8 $f9
	ld   a, [$fcfb]                                  ; $61af: $fa $fb $fc
	db   $fd                                         ; $61b2: $fd
	cp   $ff                                         ; $61b3: $fe $ff
	nop                                              ; $61b5: $00
	adc  h                                           ; $61b6: $8c
	add  b                                           ; $61b7: $80
	add  b                                           ; $61b8: $80
	add  b                                           ; $61b9: $80
	add  b                                           ; $61ba: $80
	add  b                                           ; $61bb: $80
	add  b                                           ; $61bc: $80
	add  e                                           ; $61bd: $83
	ld   bc, $0302                                   ; $61be: $01 $02 $03
	inc  b                                           ; $61c1: $04
	add  h                                           ; $61c2: $84
	dec  b                                           ; $61c3: $05
	ld   b, $07                                      ; $61c4: $06 $07
	ld   [$0a09], sp                                 ; $61c6: $08 $09 $0a
	dec  bc                                          ; $61c9: $0b
	adc  h                                           ; $61ca: $8c
	add  b                                           ; $61cb: $80
	add  b                                           ; $61cc: $80
	add  b                                           ; $61cd: $80
	add  b                                           ; $61ce: $80
	add  b                                           ; $61cf: $80
	add  b                                           ; $61d0: $80
	add  e                                           ; $61d1: $83
	inc  c                                           ; $61d2: $0c
	dec  c                                           ; $61d3: $0d
	ld   c, $0f                                      ; $61d4: $0e $0f
	db   $10                                         ; $61d6: $10
	add  h                                           ; $61d7: $84
	ld   de, $1312                                   ; $61d8: $11 $12 $13
	inc  d                                           ; $61db: $14
	dec  d                                           ; $61dc: $15
	ld   d, $8c                                      ; $61dd: $16 $8c
	add  b                                           ; $61df: $80
	add  b                                           ; $61e0: $80
	add  b                                           ; $61e1: $80
	add  b                                           ; $61e2: $80
	add  b                                           ; $61e3: $80
	add  b                                           ; $61e4: $80
	add  e                                           ; $61e5: $83
	rla                                              ; $61e6: $17
	jr   jr_0a0_6202                                 ; $61e7: $18 $19

	ld   a, [de]                                     ; $61e9: $1a
	dec  de                                          ; $61ea: $1b
	inc  e                                           ; $61eb: $1c
	dec  e                                           ; $61ec: $1d
	ld   e, $1f                                      ; $61ed: $1e $1f
	jr   nz, jr_0a0_6212                             ; $61ef: $20 $21

	ld   [hl+], a                                    ; $61f1: $22
	adc  h                                           ; $61f2: $8c
	add  b                                           ; $61f3: $80
	add  b                                           ; $61f4: $80
	add  b                                           ; $61f5: $80
	add  b                                           ; $61f6: $80
	add  b                                           ; $61f7: $80
	add  b                                           ; $61f8: $80
	add  e                                           ; $61f9: $83
	cp   c                                           ; $61fa: $b9
	inc  hl                                          ; $61fb: $23
	inc  h                                           ; $61fc: $24
	dec  h                                           ; $61fd: $25
	ld   h, $27                                      ; $61fe: $26 $27
	jr   z, jr_0a0_622b                              ; $6200: $28 $29

jr_0a0_6202:
	ld   a, [hl+]                                    ; $6202: $2a
	dec  hl                                          ; $6203: $2b
	inc  l                                           ; $6204: $2c
	dec  l                                           ; $6205: $2d
	adc  h                                           ; $6206: $8c
	add  b                                           ; $6207: $80
	add  b                                           ; $6208: $80
	add  b                                           ; $6209: $80
	add  b                                           ; $620a: $80
	add  b                                           ; $620b: $80
	add  b                                           ; $620c: $80
	add  c                                           ; $620d: $81
	ld   l, $2e                                      ; $620e: $2e $2e
	ld   l, $2e                                      ; $6210: $2e $2e

jr_0a0_6212:
	ld   l, $2e                                      ; $6212: $2e $2e
	ld   l, $2e                                      ; $6214: $2e $2e
	ld   l, $2e                                      ; $6216: $2e $2e
	ld   l, $2e                                      ; $6218: $2e $2e
	cpl                                              ; $621a: $2f
	add  b                                           ; $621b: $80
	add  b                                           ; $621c: $80
	add  b                                           ; $621d: $80
	rlca                                             ; $621e: $07
	rlca                                             ; $621f: $07
	rlca                                             ; $6220: $07
	rlca                                             ; $6221: $07
	rlca                                             ; $6222: $07
	rlca                                             ; $6223: $07
	rlca                                             ; $6224: $07
	rlca                                             ; $6225: $07
	rlca                                             ; $6226: $07
	rlca                                             ; $6227: $07
	rlca                                             ; $6228: $07
	rlca                                             ; $6229: $07
	rlca                                             ; $622a: $07

jr_0a0_622b:
	rlca                                             ; $622b: $07
	rlca                                             ; $622c: $07
	rlca                                             ; $622d: $07
	daa                                              ; $622e: $27
	rlca                                             ; $622f: $07
	rlca                                             ; $6230: $07
	rlca                                             ; $6231: $07
	rlca                                             ; $6232: $07
	rlca                                             ; $6233: $07
	rlca                                             ; $6234: $07
	rlca                                             ; $6235: $07
	inc  b                                           ; $6236: $04
	inc  b                                           ; $6237: $04
	inc  b                                           ; $6238: $04
	inc  b                                           ; $6239: $04
	inc  b                                           ; $623a: $04
	inc  bc                                          ; $623b: $03
	inc  bc                                          ; $623c: $03
	inc  bc                                          ; $623d: $03
	inc  bc                                          ; $623e: $03
	inc  b                                           ; $623f: $04
	inc  b                                           ; $6240: $04
	inc  b                                           ; $6241: $04
	rlca                                             ; $6242: $07
	rlca                                             ; $6243: $07
	rlca                                             ; $6244: $07
	rlca                                             ; $6245: $07
	rlca                                             ; $6246: $07
	rlca                                             ; $6247: $07
	rlca                                             ; $6248: $07
	rlca                                             ; $6249: $07
	inc  b                                           ; $624a: $04
	inc  b                                           ; $624b: $04
	inc  b                                           ; $624c: $04
	inc  b                                           ; $624d: $04
	inc  b                                           ; $624e: $04
	inc  bc                                          ; $624f: $03
	inc  bc                                          ; $6250: $03
	inc  bc                                          ; $6251: $03
	inc  bc                                          ; $6252: $03
	inc  bc                                          ; $6253: $03
	inc  b                                           ; $6254: $04
	inc  b                                           ; $6255: $04
	rlca                                             ; $6256: $07
	rlca                                             ; $6257: $07
	rlca                                             ; $6258: $07
	rlca                                             ; $6259: $07
	rlca                                             ; $625a: $07
	rlca                                             ; $625b: $07
	rlca                                             ; $625c: $07
	rlca                                             ; $625d: $07
	inc  b                                           ; $625e: $04
	inc  b                                           ; $625f: $04
	inc  b                                           ; $6260: $04
	inc  bc                                          ; $6261: $03
	inc  bc                                          ; $6262: $03
	inc  bc                                          ; $6263: $03
	inc  bc                                          ; $6264: $03
	inc  bc                                          ; $6265: $03
	inc  bc                                          ; $6266: $03
	inc  bc                                          ; $6267: $03
	inc  b                                           ; $6268: $04
	inc  b                                           ; $6269: $04
	rlca                                             ; $626a: $07
	rlca                                             ; $626b: $07
	rlca                                             ; $626c: $07
	rlca                                             ; $626d: $07
	rlca                                             ; $626e: $07
	rlca                                             ; $626f: $07
	rlca                                             ; $6270: $07
	rlca                                             ; $6271: $07
	inc  b                                           ; $6272: $04
	inc  b                                           ; $6273: $04
	inc  b                                           ; $6274: $04
	inc  bc                                          ; $6275: $03
	inc  bc                                          ; $6276: $03
	nop                                              ; $6277: $00
	nop                                              ; $6278: $00
	nop                                              ; $6279: $00
	inc  bc                                          ; $627a: $03
	inc  bc                                          ; $627b: $03
	inc  bc                                          ; $627c: $03
	inc  b                                           ; $627d: $04
	rlca                                             ; $627e: $07
	rlca                                             ; $627f: $07
	rlca                                             ; $6280: $07
	rlca                                             ; $6281: $07
	rlca                                             ; $6282: $07
	rlca                                             ; $6283: $07
	rlca                                             ; $6284: $07
	rlca                                             ; $6285: $07
	inc  b                                           ; $6286: $04
	inc  b                                           ; $6287: $04
	inc  b                                           ; $6288: $04
	inc  b                                           ; $6289: $04
	inc  bc                                          ; $628a: $03
	nop                                              ; $628b: $00
	nop                                              ; $628c: $00
	nop                                              ; $628d: $00
	nop                                              ; $628e: $00
	inc  bc                                          ; $628f: $03
	inc  bc                                          ; $6290: $03
	inc  b                                           ; $6291: $04
	rlca                                             ; $6292: $07
	rlca                                             ; $6293: $07
	rlca                                             ; $6294: $07
	rlca                                             ; $6295: $07
	rlca                                             ; $6296: $07
	rlca                                             ; $6297: $07
	rlca                                             ; $6298: $07
	rlca                                             ; $6299: $07
	inc  b                                           ; $629a: $04
	inc  b                                           ; $629b: $04
	inc  b                                           ; $629c: $04
	inc  b                                           ; $629d: $04
	inc  bc                                          ; $629e: $03
	nop                                              ; $629f: $00
	nop                                              ; $62a0: $00
	nop                                              ; $62a1: $00
	nop                                              ; $62a2: $00
	inc  bc                                          ; $62a3: $03
	inc  bc                                          ; $62a4: $03
	inc  bc                                          ; $62a5: $03
	rlca                                             ; $62a6: $07
	rlca                                             ; $62a7: $07
	rlca                                             ; $62a8: $07
	rlca                                             ; $62a9: $07
	rlca                                             ; $62aa: $07
	rlca                                             ; $62ab: $07
	rlca                                             ; $62ac: $07
	rlca                                             ; $62ad: $07
	inc  b                                           ; $62ae: $04
	inc  b                                           ; $62af: $04
	inc  b                                           ; $62b0: $04
	inc  bc                                          ; $62b1: $03
	inc  bc                                          ; $62b2: $03
	nop                                              ; $62b3: $00
	nop                                              ; $62b4: $00
	nop                                              ; $62b5: $00
	nop                                              ; $62b6: $00
	inc  bc                                          ; $62b7: $03
	inc  bc                                          ; $62b8: $03
	inc  bc                                          ; $62b9: $03
	rlca                                             ; $62ba: $07
	rlca                                             ; $62bb: $07
	rlca                                             ; $62bc: $07
	rlca                                             ; $62bd: $07
	rlca                                             ; $62be: $07
	rlca                                             ; $62bf: $07
	rlca                                             ; $62c0: $07
	rlca                                             ; $62c1: $07
	inc  b                                           ; $62c2: $04
	inc  b                                           ; $62c3: $04
	inc  b                                           ; $62c4: $04
	inc  bc                                          ; $62c5: $03
	inc  bc                                          ; $62c6: $03
	nop                                              ; $62c7: $00
	ld   [bc], a                                     ; $62c8: $02
	nop                                              ; $62c9: $00
	nop                                              ; $62ca: $00
	inc  bc                                          ; $62cb: $03
	inc  bc                                          ; $62cc: $03
	inc  bc                                          ; $62cd: $03
	rlca                                             ; $62ce: $07
	rlca                                             ; $62cf: $07
	rlca                                             ; $62d0: $07
	rlca                                             ; $62d1: $07
	rlca                                             ; $62d2: $07
	rlca                                             ; $62d3: $07
	rlca                                             ; $62d4: $07
	rlca                                             ; $62d5: $07
	inc  b                                           ; $62d6: $04
	inc  b                                           ; $62d7: $04
	inc  b                                           ; $62d8: $04
	inc  b                                           ; $62d9: $04
	inc  bc                                          ; $62da: $03
	ld   [bc], a                                     ; $62db: $02
	ld   [bc], a                                     ; $62dc: $02
	ld   b, $00                                      ; $62dd: $06 $00
	inc  bc                                          ; $62df: $03
	inc  bc                                          ; $62e0: $03
	inc  bc                                          ; $62e1: $03
	rlca                                             ; $62e2: $07
	rlca                                             ; $62e3: $07
	rlca                                             ; $62e4: $07
	rlca                                             ; $62e5: $07
	rlca                                             ; $62e6: $07
	rlca                                             ; $62e7: $07
	rlca                                             ; $62e8: $07
	rlca                                             ; $62e9: $07
	inc  b                                           ; $62ea: $04
	inc  b                                           ; $62eb: $04
	inc  b                                           ; $62ec: $04
	inc  b                                           ; $62ed: $04
	nop                                              ; $62ee: $00
	ld   [bc], a                                     ; $62ef: $02
	nop                                              ; $62f0: $00
	ld   b, $00                                      ; $62f1: $06 $00
	ld   bc, $0404                                   ; $62f3: $01 $04 $04
	rlca                                             ; $62f6: $07
	rlca                                             ; $62f7: $07
	rlca                                             ; $62f8: $07
	rlca                                             ; $62f9: $07
	rlca                                             ; $62fa: $07
	rlca                                             ; $62fb: $07
	rlca                                             ; $62fc: $07
	rlca                                             ; $62fd: $07
	inc  b                                           ; $62fe: $04
	inc  b                                           ; $62ff: $04
	nop                                              ; $6300: $00
	nop                                              ; $6301: $00
	nop                                              ; $6302: $00
	ld   b, $06                                      ; $6303: $06 $06
	nop                                              ; $6305: $00
	nop                                              ; $6306: $00
	ld   bc, $0404                                   ; $6307: $01 $04 $04
	rlca                                             ; $630a: $07
	rlca                                             ; $630b: $07
	rlca                                             ; $630c: $07
	rlca                                             ; $630d: $07
	rlca                                             ; $630e: $07
	rlca                                             ; $630f: $07
	rlca                                             ; $6310: $07
	rlca                                             ; $6311: $07
	dec  b                                           ; $6312: $05
	nop                                              ; $6313: $00
	inc  b                                           ; $6314: $04
	inc  b                                           ; $6315: $04
	nop                                              ; $6316: $00
	ld   [bc], a                                     ; $6317: $02
	ld   [bc], a                                     ; $6318: $02
	ld   [bc], a                                     ; $6319: $02
	ld   b, $02                                      ; $631a: $06 $02
	ld   b, $04                                      ; $631c: $06 $04
	rlca                                             ; $631e: $07
	rlca                                             ; $631f: $07
	rlca                                             ; $6320: $07
	rlca                                             ; $6321: $07
	rlca                                             ; $6322: $07
	rlca                                             ; $6323: $07
	rlca                                             ; $6324: $07
	rlca                                             ; $6325: $07
	nop                                              ; $6326: $00
	inc  b                                           ; $6327: $04
	inc  b                                           ; $6328: $04
	inc  b                                           ; $6329: $04
	dec  b                                           ; $632a: $05
	ld   [bc], a                                     ; $632b: $02
	ld   [bc], a                                     ; $632c: $02
	ld   [bc], a                                     ; $632d: $02
	ld   [bc], a                                     ; $632e: $02
	ld   [bc], a                                     ; $632f: $02
	ld   b, $04                                      ; $6330: $06 $04
	rlca                                             ; $6332: $07
	rlca                                             ; $6333: $07
	rlca                                             ; $6334: $07
	rlca                                             ; $6335: $07
	rlca                                             ; $6336: $07
	rlca                                             ; $6337: $07
	rlca                                             ; $6338: $07
	rlca                                             ; $6339: $07
	nop                                              ; $633a: $00
	dec  b                                           ; $633b: $05
	dec  b                                           ; $633c: $05
	dec  b                                           ; $633d: $05
	dec  b                                           ; $633e: $05
	ld   [bc], a                                     ; $633f: $02
	ld   [bc], a                                     ; $6340: $02
	ld   [bc], a                                     ; $6341: $02
	ld   [bc], a                                     ; $6342: $02
	ld   [bc], a                                     ; $6343: $02
	dec  b                                           ; $6344: $05
	dec  b                                           ; $6345: $05
	rlca                                             ; $6346: $07
	rlca                                             ; $6347: $07
	rlca                                             ; $6348: $07
	rlca                                             ; $6349: $07
	rlca                                             ; $634a: $07
	rlca                                             ; $634b: $07
	rlca                                             ; $634c: $07
	rlca                                             ; $634d: $07
	ld   bc, $0500                                   ; $634e: $01 $00 $05
	dec  b                                           ; $6351: $05
	dec  b                                           ; $6352: $05
	ld   [bc], a                                     ; $6353: $02
	ld   [bc], a                                     ; $6354: $02
	ld   [bc], a                                     ; $6355: $02
	ld   [bc], a                                     ; $6356: $02
	dec  b                                           ; $6357: $05
	dec  b                                           ; $6358: $05
	dec  b                                           ; $6359: $05
	rlca                                             ; $635a: $07
	rlca                                             ; $635b: $07
	rlca                                             ; $635c: $07
	rlca                                             ; $635d: $07
	rlca                                             ; $635e: $07
	rlca                                             ; $635f: $07
	rlca                                             ; $6360: $07
	rlca                                             ; $6361: $07
	ld   bc, $0001                                   ; $6362: $01 $01 $00
	ld   bc, $0201                                   ; $6365: $01 $01 $02
	ld   [bc], a                                     ; $6368: $02
	ld   [bc], a                                     ; $6369: $02
	ld   [bc], a                                     ; $636a: $02
	dec  b                                           ; $636b: $05
	dec  b                                           ; $636c: $05
	dec  b                                           ; $636d: $05
	rlca                                             ; $636e: $07
	rlca                                             ; $636f: $07
	rlca                                             ; $6370: $07
	rlca                                             ; $6371: $07
	rlca                                             ; $6372: $07
	rlca                                             ; $6373: $07
	rlca                                             ; $6374: $07
	ld   b, a                                        ; $6375: $47
	rlca                                             ; $6376: $07
	rlca                                             ; $6377: $07
	rlca                                             ; $6378: $07
	rlca                                             ; $6379: $07
	rlca                                             ; $637a: $07
	rlca                                             ; $637b: $07
	rlca                                             ; $637c: $07
	rlca                                             ; $637d: $07
	rlca                                             ; $637e: $07
	rlca                                             ; $637f: $07
	rlca                                             ; $6380: $07
	rlca                                             ; $6381: $07
	rlca                                             ; $6382: $07
	rlca                                             ; $6383: $07
	rlca                                             ; $6384: $07
	rlca                                             ; $6385: $07
	ld   b, l                                        ; $6386: $45
	ld   b, l                                        ; $6387: $45
	ld   b, l                                        ; $6388: $45
	ld   b, b                                        ; $6389: $40
	ld   b, c                                        ; $638a: $41
	ld   b, c                                        ; $638b: $41
	ld   b, c                                        ; $638c: $41
	ld   b, c                                        ; $638d: $41
	ld   b, c                                        ; $638e: $41
	ld   b, c                                        ; $638f: $41
	ld   b, c                                        ; $6390: $41
	ld   b, c                                        ; $6391: $41
	ld   b, c                                        ; $6392: $41
	ld   b, c                                        ; $6393: $41
	ld   b, c                                        ; $6394: $41
	ld   b, c                                        ; $6395: $41
	ld   b, b                                        ; $6396: $40
	ld   b, l                                        ; $6397: $45
	ld   b, l                                        ; $6398: $45
	ld   b, l                                        ; $6399: $45
	ld   b, l                                        ; $639a: $45
	ld   b, l                                        ; $639b: $45
	ld   b, l                                        ; $639c: $45
	ld   b, [hl]                                     ; $639d: $46
	add  b                                           ; $639e: $80
	add  c                                           ; $639f: $81
	add  d                                           ; $63a0: $82
	add  e                                           ; $63a1: $83
	add  h                                           ; $63a2: $84
	add  l                                           ; $63a3: $85
	add  [hl]                                        ; $63a4: $86
	add  a                                           ; $63a5: $87
	adc  b                                           ; $63a6: $88
	adc  c                                           ; $63a7: $89
	adc  d                                           ; $63a8: $8a
	adc  e                                           ; $63a9: $8b
	ld   b, d                                        ; $63aa: $42
	ld   b, l                                        ; $63ab: $45
	ld   b, l                                        ; $63ac: $45
	ld   b, l                                        ; $63ad: $45
	ld   b, l                                        ; $63ae: $45
	ld   b, l                                        ; $63af: $45
	ld   b, l                                        ; $63b0: $45
	ld   b, [hl]                                     ; $63b1: $46
	sub  b                                           ; $63b2: $90
	sub  c                                           ; $63b3: $91
	sub  d                                           ; $63b4: $92
	sub  e                                           ; $63b5: $93
	sub  h                                           ; $63b6: $94
	sub  l                                           ; $63b7: $95
	sub  [hl]                                        ; $63b8: $96
	sub  a                                           ; $63b9: $97
	sbc  b                                           ; $63ba: $98
	sbc  c                                           ; $63bb: $99
	sbc  d                                           ; $63bc: $9a
	sbc  e                                           ; $63bd: $9b
	ld   b, d                                        ; $63be: $42
	ld   b, l                                        ; $63bf: $45
	ld   b, l                                        ; $63c0: $45
	ld   b, l                                        ; $63c1: $45
	ld   b, l                                        ; $63c2: $45
	ld   b, l                                        ; $63c3: $45
	ld   b, l                                        ; $63c4: $45
	ld   b, [hl]                                     ; $63c5: $46
	and  b                                           ; $63c6: $a0
	and  c                                           ; $63c7: $a1
	and  d                                           ; $63c8: $a2
	and  e                                           ; $63c9: $a3
	and  h                                           ; $63ca: $a4
	and  l                                           ; $63cb: $a5
	and  [hl]                                        ; $63cc: $a6
	and  a                                           ; $63cd: $a7
	xor  b                                           ; $63ce: $a8
	xor  c                                           ; $63cf: $a9
	xor  d                                           ; $63d0: $aa
	xor  e                                           ; $63d1: $ab
	ld   b, d                                        ; $63d2: $42
	ld   b, l                                        ; $63d3: $45
	ld   b, l                                        ; $63d4: $45
	ld   b, l                                        ; $63d5: $45
	ld   b, l                                        ; $63d6: $45
	ld   b, l                                        ; $63d7: $45
	ld   b, l                                        ; $63d8: $45
	ld   b, [hl]                                     ; $63d9: $46
	or   b                                           ; $63da: $b0
	or   c                                           ; $63db: $b1
	or   d                                           ; $63dc: $b2
	or   e                                           ; $63dd: $b3
	or   h                                           ; $63de: $b4
	or   l                                           ; $63df: $b5
	or   [hl]                                        ; $63e0: $b6
	or   a                                           ; $63e1: $b7
	cp   b                                           ; $63e2: $b8
	cp   c                                           ; $63e3: $b9
	cp   d                                           ; $63e4: $ba
	cp   e                                           ; $63e5: $bb
	ld   b, d                                        ; $63e6: $42
	ld   b, l                                        ; $63e7: $45
	ld   b, l                                        ; $63e8: $45
	ld   b, l                                        ; $63e9: $45
	ld   b, l                                        ; $63ea: $45
	ld   b, l                                        ; $63eb: $45
	ld   b, l                                        ; $63ec: $45
	ld   b, [hl]                                     ; $63ed: $46
	ret  nz                                          ; $63ee: $c0

	pop  bc                                          ; $63ef: $c1
	jp   nz, $c4c3                                   ; $63f0: $c2 $c3 $c4

	push bc                                          ; $63f3: $c5
	add  $c7                                         ; $63f4: $c6 $c7
	ret  z                                           ; $63f6: $c8

	ret                                              ; $63f7: $c9


	jp   z, Jump_0a0_42cb                            ; $63f8: $ca $cb $42

	ld   b, l                                        ; $63fb: $45
	ld   b, l                                        ; $63fc: $45
	ld   b, l                                        ; $63fd: $45
	ld   b, l                                        ; $63fe: $45
	ld   b, l                                        ; $63ff: $45
	ld   b, l                                        ; $6400: $45
	ld   b, [hl]                                     ; $6401: $46
	ret  nc                                          ; $6402: $d0

	pop  de                                          ; $6403: $d1
	jp   nc, $d4d3                                   ; $6404: $d2 $d3 $d4

	push de                                          ; $6407: $d5
	sub  $d7                                         ; $6408: $d6 $d7
	ret  c                                           ; $640a: $d8

	reti                                             ; $640b: $d9


	jp   c, Jump_0a0_42db                            ; $640c: $da $db $42

	ld   b, l                                        ; $640f: $45
	ld   b, l                                        ; $6410: $45
	ld   b, l                                        ; $6411: $45
	ld   b, l                                        ; $6412: $45
	ld   b, l                                        ; $6413: $45
	ld   b, l                                        ; $6414: $45
	ld   b, [hl]                                     ; $6415: $46
	ldh  [$e1], a                                    ; $6416: $e0 $e1
	ldh  [c], a                                      ; $6418: $e2
	db   $e3                                         ; $6419: $e3
	db   $e4                                         ; $641a: $e4
	push hl                                          ; $641b: $e5
	and  $e7                                         ; $641c: $e6 $e7
	add  sp, -$17                                    ; $641e: $e8 $e9
	ld   [$42eb], a                                  ; $6420: $ea $eb $42
	ld   b, l                                        ; $6423: $45
	ld   b, l                                        ; $6424: $45
	ld   b, l                                        ; $6425: $45
	ld   b, l                                        ; $6426: $45
	ld   b, l                                        ; $6427: $45
	ld   b, l                                        ; $6428: $45
	ld   b, [hl]                                     ; $6429: $46
	ldh  a, [$f1]                                    ; $642a: $f0 $f1
	ldh  a, [c]                                      ; $642c: $f2
	di                                               ; $642d: $f3
	db   $f4                                         ; $642e: $f4
	push af                                          ; $642f: $f5
	or   $f7                                         ; $6430: $f6 $f7
	ld   hl, sp-$07                                  ; $6432: $f8 $f9
	ld   a, [$42fb]                                  ; $6434: $fa $fb $42
	ld   b, l                                        ; $6437: $45
	ld   b, l                                        ; $6438: $45
	ld   b, l                                        ; $6439: $45
	ld   b, l                                        ; $643a: $45
	ld   b, l                                        ; $643b: $45
	ld   b, l                                        ; $643c: $45
	ld   b, [hl]                                     ; $643d: $46
	adc  h                                           ; $643e: $8c
	adc  l                                           ; $643f: $8d
	adc  [hl]                                        ; $6440: $8e
	adc  a                                           ; $6441: $8f
	call z, $cecd                                    ; $6442: $cc $cd $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6445: $cf
	inc  c                                           ; $6446: $0c
	dec  c                                           ; $6447: $0d
	ld   c, $0f                                      ; $6448: $0e $0f
	ld   b, d                                        ; $644a: $42
	ld   b, l                                        ; $644b: $45
	ld   b, l                                        ; $644c: $45
	ld   b, l                                        ; $644d: $45
	ld   b, l                                        ; $644e: $45
	ld   b, l                                        ; $644f: $45
	ld   b, l                                        ; $6450: $45
	ld   b, [hl]                                     ; $6451: $46
	sbc  h                                           ; $6452: $9c
	sbc  l                                           ; $6453: $9d
	sbc  [hl]                                        ; $6454: $9e
	sbc  a                                           ; $6455: $9f
	call c, $dedd                                    ; $6456: $dc $dd $de
	rst  JumpTable                                         ; $6459: $df
	inc  e                                           ; $645a: $1c
	dec  e                                           ; $645b: $1d
	ld   e, $1f                                      ; $645c: $1e $1f
	ld   b, d                                        ; $645e: $42
	ld   b, l                                        ; $645f: $45
	ld   b, l                                        ; $6460: $45
	ld   b, l                                        ; $6461: $45
	ld   b, l                                        ; $6462: $45
	ld   b, l                                        ; $6463: $45
	ld   b, l                                        ; $6464: $45
	ld   b, [hl]                                     ; $6465: $46
	xor  h                                           ; $6466: $ac
	xor  l                                           ; $6467: $ad
	xor  [hl]                                        ; $6468: $ae
	xor  a                                           ; $6469: $af
	db   $ec                                         ; $646a: $ec
	db   $ed                                         ; $646b: $ed
	xor  $ef                                         ; $646c: $ee $ef
	inc  l                                           ; $646e: $2c
	dec  l                                           ; $646f: $2d
	ld   l, $2f                                      ; $6470: $2e $2f
	ld   b, d                                        ; $6472: $42
	ld   b, l                                        ; $6473: $45
	ld   b, l                                        ; $6474: $45
	ld   b, l                                        ; $6475: $45
	ld   b, l                                        ; $6476: $45
	ld   b, l                                        ; $6477: $45
	ld   b, l                                        ; $6478: $45
	ld   b, [hl]                                     ; $6479: $46
	cp   h                                           ; $647a: $bc
	cp   l                                           ; $647b: $bd
	cp   [hl]                                        ; $647c: $be
	cp   a                                           ; $647d: $bf
	db   $fc                                         ; $647e: $fc
	db   $fd                                         ; $647f: $fd
	cp   $ff                                         ; $6480: $fe $ff
	inc  a                                           ; $6482: $3c
	dec  a                                           ; $6483: $3d
	ld   a, $3f                                      ; $6484: $3e $3f
	ld   b, d                                        ; $6486: $42
	ld   b, l                                        ; $6487: $45
	ld   b, l                                        ; $6488: $45
	ld   b, l                                        ; $6489: $45
	ld   b, l                                        ; $648a: $45
	ld   b, l                                        ; $648b: $45
	ld   b, l                                        ; $648c: $45
	ld   b, [hl]                                     ; $648d: $46
	nop                                              ; $648e: $00
	ld   bc, $0302                                   ; $648f: $01 $02 $03
	inc  b                                           ; $6492: $04
	dec  b                                           ; $6493: $05
	ld   b, $07                                      ; $6494: $06 $07
	ld   [$0a09], sp                                 ; $6496: $08 $09 $0a
	dec  bc                                          ; $6499: $0b
	ld   b, d                                        ; $649a: $42
	ld   b, l                                        ; $649b: $45
	ld   b, l                                        ; $649c: $45
	ld   b, l                                        ; $649d: $45
	ld   b, l                                        ; $649e: $45
	ld   b, l                                        ; $649f: $45
	ld   b, l                                        ; $64a0: $45
	ld   b, [hl]                                     ; $64a1: $46
	db   $10                                         ; $64a2: $10
	ld   de, $1312                                   ; $64a3: $11 $12 $13
	inc  d                                           ; $64a6: $14
	dec  d                                           ; $64a7: $15
	ld   d, $17                                      ; $64a8: $16 $17
	jr   jr_0a0_64c5                                 ; $64aa: $18 $19

	ld   a, [de]                                     ; $64ac: $1a
	dec  de                                          ; $64ad: $1b
	ld   b, d                                        ; $64ae: $42
	ld   b, l                                        ; $64af: $45
	ld   b, l                                        ; $64b0: $45
	ld   b, l                                        ; $64b1: $45
	ld   b, l                                        ; $64b2: $45
	ld   b, l                                        ; $64b3: $45
	ld   b, l                                        ; $64b4: $45
	ld   b, [hl]                                     ; $64b5: $46
	jr   nz, jr_0a0_64d9                             ; $64b6: $20 $21

	ld   [hl+], a                                    ; $64b8: $22
	inc  hl                                          ; $64b9: $23
	inc  h                                           ; $64ba: $24
	dec  h                                           ; $64bb: $25
	ld   h, $27                                      ; $64bc: $26 $27
	jr   z, jr_0a0_64e9                              ; $64be: $28 $29

	ld   a, [hl+]                                    ; $64c0: $2a
	dec  hl                                          ; $64c1: $2b
	ld   b, d                                        ; $64c2: $42
	ld   b, l                                        ; $64c3: $45
	ld   b, l                                        ; $64c4: $45

jr_0a0_64c5:
	ld   b, l                                        ; $64c5: $45
	ld   b, l                                        ; $64c6: $45
	ld   b, l                                        ; $64c7: $45
	ld   b, l                                        ; $64c8: $45
	ld   b, [hl]                                     ; $64c9: $46
	jr   nc, jr_0a0_64fd                             ; $64ca: $30 $31

	ld   [hl-], a                                    ; $64cc: $32
	inc  sp                                          ; $64cd: $33
	inc  [hl]                                        ; $64ce: $34
	dec  [hl]                                        ; $64cf: $35
	ld   [hl], $37                                   ; $64d0: $36 $37
	jr   c, @+$3b                                    ; $64d2: $38 $39

	ld   a, [hl-]                                    ; $64d4: $3a
	dec  sp                                          ; $64d5: $3b
	ld   b, d                                        ; $64d6: $42
	ld   b, l                                        ; $64d7: $45
	ld   b, l                                        ; $64d8: $45

jr_0a0_64d9:
	ld   b, l                                        ; $64d9: $45
	ld   b, l                                        ; $64da: $45
	ld   b, l                                        ; $64db: $45
	ld   b, l                                        ; $64dc: $45
	ld   b, b                                        ; $64dd: $40
	ld   b, e                                        ; $64de: $43
	ld   b, e                                        ; $64df: $43
	ld   b, e                                        ; $64e0: $43
	ld   b, e                                        ; $64e1: $43
	ld   b, e                                        ; $64e2: $43
	ld   b, e                                        ; $64e3: $43
	ld   b, e                                        ; $64e4: $43
	ld   b, e                                        ; $64e5: $43
	ld   b, e                                        ; $64e6: $43
	ld   b, e                                        ; $64e7: $43
	ld   b, e                                        ; $64e8: $43

jr_0a0_64e9:
	ld   b, e                                        ; $64e9: $43
	ld   b, h                                        ; $64ea: $44
	ld   b, l                                        ; $64eb: $45
	ld   b, l                                        ; $64ec: $45
	ld   b, l                                        ; $64ed: $45
	rlca                                             ; $64ee: $07
	rlca                                             ; $64ef: $07
	rlca                                             ; $64f0: $07
	rlca                                             ; $64f1: $07
	rlca                                             ; $64f2: $07
	rlca                                             ; $64f3: $07
	rlca                                             ; $64f4: $07
	rlca                                             ; $64f5: $07
	rlca                                             ; $64f6: $07
	rlca                                             ; $64f7: $07
	rlca                                             ; $64f8: $07
	rlca                                             ; $64f9: $07
	rlca                                             ; $64fa: $07
	rlca                                             ; $64fb: $07
	rlca                                             ; $64fc: $07

jr_0a0_64fd:
	rlca                                             ; $64fd: $07
	daa                                              ; $64fe: $27
	rlca                                             ; $64ff: $07
	rlca                                             ; $6500: $07
	rlca                                             ; $6501: $07
	rlca                                             ; $6502: $07
	rlca                                             ; $6503: $07
	rlca                                             ; $6504: $07
	rlca                                             ; $6505: $07
	ld   b, $02                                      ; $6506: $06 $02
	ld   b, $06                                      ; $6508: $06 $06
	ld   b, $06                                      ; $650a: $06 $06
	ld   b, $06                                      ; $650c: $06 $06
	ld   b, $06                                      ; $650e: $06 $06
	ld   b, $06                                      ; $6510: $06 $06
	rlca                                             ; $6512: $07
	rlca                                             ; $6513: $07
	rlca                                             ; $6514: $07
	rlca                                             ; $6515: $07
	rlca                                             ; $6516: $07
	rlca                                             ; $6517: $07
	rlca                                             ; $6518: $07
	rlca                                             ; $6519: $07
	ld   [bc], a                                     ; $651a: $02
	inc  bc                                          ; $651b: $03
	inc  bc                                          ; $651c: $03
	ld   b, $06                                      ; $651d: $06 $06
	ld   b, $06                                      ; $651f: $06 $06
	ld   b, $06                                      ; $6521: $06 $06
	ld   b, $06                                      ; $6523: $06 $06
	ld   b, $07                                      ; $6525: $06 $07
	rlca                                             ; $6527: $07
	rlca                                             ; $6528: $07
	rlca                                             ; $6529: $07
	rlca                                             ; $652a: $07
	rlca                                             ; $652b: $07
	rlca                                             ; $652c: $07
	rlca                                             ; $652d: $07
	ld   [bc], a                                     ; $652e: $02
	inc  bc                                          ; $652f: $03
	inc  bc                                          ; $6530: $03
	inc  bc                                          ; $6531: $03
	ld   b, $06                                      ; $6532: $06 $06
	ld   b, $06                                      ; $6534: $06 $06
	ld   b, $06                                      ; $6536: $06 $06
	ld   b, $06                                      ; $6538: $06 $06
	rlca                                             ; $653a: $07
	rlca                                             ; $653b: $07
	rlca                                             ; $653c: $07
	rlca                                             ; $653d: $07
	rlca                                             ; $653e: $07
	rlca                                             ; $653f: $07
	rlca                                             ; $6540: $07
	rlca                                             ; $6541: $07
	ld   [bc], a                                     ; $6542: $02
	ld   b, $02                                      ; $6543: $06 $02
	nop                                              ; $6545: $00
	ld   b, $06                                      ; $6546: $06 $06
	ld   b, $06                                      ; $6548: $06 $06
	ld   b, $06                                      ; $654a: $06 $06
	ld   b, $06                                      ; $654c: $06 $06
	rlca                                             ; $654e: $07
	rlca                                             ; $654f: $07
	rlca                                             ; $6550: $07
	rlca                                             ; $6551: $07
	rlca                                             ; $6552: $07
	rlca                                             ; $6553: $07
	rlca                                             ; $6554: $07
	rlca                                             ; $6555: $07
	ld   [bc], a                                     ; $6556: $02
	ld   b, $02                                      ; $6557: $06 $02
	ld   [bc], a                                     ; $6559: $02
	ld   [bc], a                                     ; $655a: $02
	ld   b, $06                                      ; $655b: $06 $06
	ld   b, $06                                      ; $655d: $06 $06
	dec  b                                           ; $655f: $05
	dec  b                                           ; $6560: $05
	dec  b                                           ; $6561: $05
	rlca                                             ; $6562: $07
	rlca                                             ; $6563: $07
	rlca                                             ; $6564: $07
	rlca                                             ; $6565: $07
	rlca                                             ; $6566: $07
	rlca                                             ; $6567: $07
	rlca                                             ; $6568: $07
	rlca                                             ; $6569: $07
	ld   [bc], a                                     ; $656a: $02
	ld   b, $02                                      ; $656b: $06 $02
	ld   [bc], a                                     ; $656d: $02
	ld   [bc], a                                     ; $656e: $02
	ld   [bc], a                                     ; $656f: $02
	ld   b, $06                                      ; $6570: $06 $06
	ld   b, $03                                      ; $6572: $06 $03
	dec  b                                           ; $6574: $05
	dec  b                                           ; $6575: $05
	rlca                                             ; $6576: $07
	rlca                                             ; $6577: $07
	rlca                                             ; $6578: $07
	rlca                                             ; $6579: $07
	rlca                                             ; $657a: $07
	rlca                                             ; $657b: $07
	rlca                                             ; $657c: $07
	rlca                                             ; $657d: $07
	ld   [bc], a                                     ; $657e: $02
	ld   b, $06                                      ; $657f: $06 $06
	ld   [bc], a                                     ; $6581: $02
	ld   [bc], a                                     ; $6582: $02
	ld   [bc], a                                     ; $6583: $02
	ld   [bc], a                                     ; $6584: $02
	inc  bc                                          ; $6585: $03
	inc  bc                                          ; $6586: $03
	inc  bc                                          ; $6587: $03
	dec  b                                           ; $6588: $05
	dec  b                                           ; $6589: $05
	rlca                                             ; $658a: $07
	rlca                                             ; $658b: $07
	rlca                                             ; $658c: $07
	rlca                                             ; $658d: $07
	rlca                                             ; $658e: $07
	rlca                                             ; $658f: $07
	rlca                                             ; $6590: $07
	rlca                                             ; $6591: $07
	ld   [bc], a                                     ; $6592: $02
	ld   [bc], a                                     ; $6593: $02
	ld   b, $06                                      ; $6594: $06 $06
	ld   [bc], a                                     ; $6596: $02
	ld   [bc], a                                     ; $6597: $02
	ld   [bc], a                                     ; $6598: $02
	inc  bc                                          ; $6599: $03
	inc  bc                                          ; $659a: $03
	inc  b                                           ; $659b: $04
	dec  b                                           ; $659c: $05
	dec  b                                           ; $659d: $05
	rlca                                             ; $659e: $07
	rlca                                             ; $659f: $07
	rlca                                             ; $65a0: $07
	rlca                                             ; $65a1: $07
	rlca                                             ; $65a2: $07
	rlca                                             ; $65a3: $07
	rlca                                             ; $65a4: $07
	rlca                                             ; $65a5: $07
	ld   [bc], a                                     ; $65a6: $02
	ld   [bc], a                                     ; $65a7: $02
	ld   [bc], a                                     ; $65a8: $02
	ld   [bc], a                                     ; $65a9: $02
	ld   [bc], a                                     ; $65aa: $02
	ld   [bc], a                                     ; $65ab: $02
	ld   [bc], a                                     ; $65ac: $02
	ld   [bc], a                                     ; $65ad: $02
	inc  b                                           ; $65ae: $04
	inc  b                                           ; $65af: $04
	dec  b                                           ; $65b0: $05
	dec  b                                           ; $65b1: $05
	rlca                                             ; $65b2: $07
	rlca                                             ; $65b3: $07
	rlca                                             ; $65b4: $07
	rlca                                             ; $65b5: $07
	rlca                                             ; $65b6: $07
	rlca                                             ; $65b7: $07
	rlca                                             ; $65b8: $07
	rlca                                             ; $65b9: $07
	ld   [bc], a                                     ; $65ba: $02
	ld   [bc], a                                     ; $65bb: $02
	ld   [bc], a                                     ; $65bc: $02
	ld   [bc], a                                     ; $65bd: $02
	ld   [bc], a                                     ; $65be: $02
	ld   [bc], a                                     ; $65bf: $02
	ld   [bc], a                                     ; $65c0: $02
	ld   [bc], a                                     ; $65c1: $02
	dec  b                                           ; $65c2: $05
	dec  b                                           ; $65c3: $05
	dec  b                                           ; $65c4: $05
	dec  b                                           ; $65c5: $05
	rlca                                             ; $65c6: $07
	rlca                                             ; $65c7: $07
	rlca                                             ; $65c8: $07
	rlca                                             ; $65c9: $07
	rlca                                             ; $65ca: $07
	rlca                                             ; $65cb: $07
	rlca                                             ; $65cc: $07
	rlca                                             ; $65cd: $07
	ld   [bc], a                                     ; $65ce: $02
	ld   [bc], a                                     ; $65cf: $02
	ld   bc, $0202                                   ; $65d0: $01 $02 $02
	ld   [bc], a                                     ; $65d3: $02
	ld   [bc], a                                     ; $65d4: $02
	ld   [bc], a                                     ; $65d5: $02
	ld   [bc], a                                     ; $65d6: $02
	ld   [bc], a                                     ; $65d7: $02
	ld   [bc], a                                     ; $65d8: $02
	ld   [bc], a                                     ; $65d9: $02
	rlca                                             ; $65da: $07
	rlca                                             ; $65db: $07
	rlca                                             ; $65dc: $07
	rlca                                             ; $65dd: $07
	rlca                                             ; $65de: $07
	rlca                                             ; $65df: $07
	rlca                                             ; $65e0: $07
	rlca                                             ; $65e1: $07
	ld   [bc], a                                     ; $65e2: $02
	ld   [bc], a                                     ; $65e3: $02
	ld   bc, $0202                                   ; $65e4: $01 $02 $02
	ld   [bc], a                                     ; $65e7: $02
	ld   [bc], a                                     ; $65e8: $02
	ld   [bc], a                                     ; $65e9: $02
	ld   [bc], a                                     ; $65ea: $02
	ld   [bc], a                                     ; $65eb: $02
	ld   [bc], a                                     ; $65ec: $02
	ld   [bc], a                                     ; $65ed: $02
	rlca                                             ; $65ee: $07
	rlca                                             ; $65ef: $07
	rlca                                             ; $65f0: $07
	rlca                                             ; $65f1: $07
	rlca                                             ; $65f2: $07
	rlca                                             ; $65f3: $07
	rlca                                             ; $65f4: $07
	rlca                                             ; $65f5: $07
	ld   [bc], a                                     ; $65f6: $02
	ld   bc, $0101                                   ; $65f7: $01 $01 $01
	ld   [bc], a                                     ; $65fa: $02
	ld   [bc], a                                     ; $65fb: $02
	ld   b, d                                        ; $65fc: $42
	ld   [bc], a                                     ; $65fd: $02
	ld   [bc], a                                     ; $65fe: $02
	ld   [bc], a                                     ; $65ff: $02
	ld   [bc], a                                     ; $6600: $02
	ld   [bc], a                                     ; $6601: $02
	rlca                                             ; $6602: $07
	rlca                                             ; $6603: $07
	rlca                                             ; $6604: $07
	rlca                                             ; $6605: $07
	rlca                                             ; $6606: $07
	rlca                                             ; $6607: $07
	rlca                                             ; $6608: $07
	rlca                                             ; $6609: $07
	ld   [bc], a                                     ; $660a: $02
	ld   bc, $0101                                   ; $660b: $01 $01 $01
	ld   bc, $0202                                   ; $660e: $01 $02 $02
	ld   [bc], a                                     ; $6611: $02
	ld   [bc], a                                     ; $6612: $02
	ld   [bc], a                                     ; $6613: $02
	ld   [bc], a                                     ; $6614: $02
	ld   [bc], a                                     ; $6615: $02
	rlca                                             ; $6616: $07
	rlca                                             ; $6617: $07
	rlca                                             ; $6618: $07
	rlca                                             ; $6619: $07
	rlca                                             ; $661a: $07
	rlca                                             ; $661b: $07
	rlca                                             ; $661c: $07
	rlca                                             ; $661d: $07
	ld   [bc], a                                     ; $661e: $02
	ld   bc, $0101                                   ; $661f: $01 $01 $01
	ld   bc, $0202                                   ; $6622: $01 $02 $02
	ld   [bc], a                                     ; $6625: $02
	ld   h, d                                        ; $6626: $62
	ld   [bc], a                                     ; $6627: $02
	ld   [bc], a                                     ; $6628: $02
	ld   [bc], a                                     ; $6629: $02
	rlca                                             ; $662a: $07
	rlca                                             ; $662b: $07
	rlca                                             ; $662c: $07
	rlca                                             ; $662d: $07
	rlca                                             ; $662e: $07
	rlca                                             ; $662f: $07
	rlca                                             ; $6630: $07
	rlca                                             ; $6631: $07
	ld   [bc], a                                     ; $6632: $02
	ld   bc, $0101                                   ; $6633: $01 $01 $01
	ld   [bc], a                                     ; $6636: $02
	ld   [bc], a                                     ; $6637: $02
	ld   [bc], a                                     ; $6638: $02
	ld   [bc], a                                     ; $6639: $02
	ld   [bc], a                                     ; $663a: $02
	ld   [bc], a                                     ; $663b: $02
	ld   [bc], a                                     ; $663c: $02
	ld   [bc], a                                     ; $663d: $02
	rlca                                             ; $663e: $07
	rlca                                             ; $663f: $07
	rlca                                             ; $6640: $07
	rlca                                             ; $6641: $07
	rlca                                             ; $6642: $07
	rlca                                             ; $6643: $07
	rlca                                             ; $6644: $07
	ld   b, a                                        ; $6645: $47
	rlca                                             ; $6646: $07
	rlca                                             ; $6647: $07
	rlca                                             ; $6648: $07
	rlca                                             ; $6649: $07
	rlca                                             ; $664a: $07
	rlca                                             ; $664b: $07
	rlca                                             ; $664c: $07
	rlca                                             ; $664d: $07
	rlca                                             ; $664e: $07
	rlca                                             ; $664f: $07
	rlca                                             ; $6650: $07
	rlca                                             ; $6651: $07
	rlca                                             ; $6652: $07
	rlca                                             ; $6653: $07
	rlca                                             ; $6654: $07
	rlca                                             ; $6655: $07
	add  h                                           ; $6656: $84
	add  h                                           ; $6657: $84
	add  h                                           ; $6658: $84
	ld   [de], a                                     ; $6659: $12
	dec  c                                           ; $665a: $0d
	dec  c                                           ; $665b: $0d
	dec  c                                           ; $665c: $0d
	dec  c                                           ; $665d: $0d
	dec  c                                           ; $665e: $0d
	dec  c                                           ; $665f: $0d
	dec  c                                           ; $6660: $0d
	dec  c                                           ; $6661: $0d
	dec  c                                           ; $6662: $0d
	dec  c                                           ; $6663: $0d
	dec  c                                           ; $6664: $0d
	dec  c                                           ; $6665: $0d
	ld   [de], a                                     ; $6666: $12
	add  h                                           ; $6667: $84
	add  h                                           ; $6668: $84
	add  h                                           ; $6669: $84
	add  h                                           ; $666a: $84
	add  h                                           ; $666b: $84
	add  h                                           ; $666c: $84
	db   $10                                         ; $666d: $10
	add  c                                           ; $666e: $81
	add  c                                           ; $666f: $81
	add  d                                           ; $6670: $82
	add  e                                           ; $6671: $83
	add  h                                           ; $6672: $84
	add  h                                           ; $6673: $84
	add  h                                           ; $6674: $84
	add  h                                           ; $6675: $84
	add  h                                           ; $6676: $84
	add  h                                           ; $6677: $84
	add  h                                           ; $6678: $84
	add  l                                           ; $6679: $85
	ld   c, $84                                      ; $667a: $0e $84
	add  h                                           ; $667c: $84
	add  h                                           ; $667d: $84
	add  h                                           ; $667e: $84
	add  h                                           ; $667f: $84
	add  h                                           ; $6680: $84
	db   $10                                         ; $6681: $10
	add  c                                           ; $6682: $81
	add  a                                           ; $6683: $87
	adc  b                                           ; $6684: $88
	adc  c                                           ; $6685: $89
	add  h                                           ; $6686: $84
	add  h                                           ; $6687: $84
	add  h                                           ; $6688: $84
	add  h                                           ; $6689: $84
	add  h                                           ; $668a: $84
	add  h                                           ; $668b: $84
	add  h                                           ; $668c: $84
	adc  d                                           ; $668d: $8a
	ld   c, $84                                      ; $668e: $0e $84
	add  h                                           ; $6690: $84
	add  h                                           ; $6691: $84
	add  h                                           ; $6692: $84
	add  h                                           ; $6693: $84
	add  h                                           ; $6694: $84
	db   $10                                         ; $6695: $10
	add  c                                           ; $6696: $81
	adc  h                                           ; $6697: $8c
	adc  l                                           ; $6698: $8d
	adc  [hl]                                        ; $6699: $8e
	adc  a                                           ; $669a: $8f
	add  h                                           ; $669b: $84
	add  h                                           ; $669c: $84
	add  h                                           ; $669d: $84
	add  h                                           ; $669e: $84
	add  h                                           ; $669f: $84
	add  h                                           ; $66a0: $84
	add  h                                           ; $66a1: $84
	ld   c, $84                                      ; $66a2: $0e $84
	add  h                                           ; $66a4: $84
	add  h                                           ; $66a5: $84
	add  h                                           ; $66a6: $84
	add  h                                           ; $66a7: $84
	add  h                                           ; $66a8: $84
	db   $10                                         ; $66a9: $10
	add  c                                           ; $66aa: $81
	sub  b                                           ; $66ab: $90
	sub  c                                           ; $66ac: $91
	sub  d                                           ; $66ad: $92
	sub  e                                           ; $66ae: $93
	sub  h                                           ; $66af: $94
	add  h                                           ; $66b0: $84
	add  h                                           ; $66b1: $84
	add  h                                           ; $66b2: $84
	add  h                                           ; $66b3: $84
	add  h                                           ; $66b4: $84
	add  h                                           ; $66b5: $84
	ld   c, $84                                      ; $66b6: $0e $84
	add  h                                           ; $66b8: $84
	add  h                                           ; $66b9: $84
	add  h                                           ; $66ba: $84
	add  h                                           ; $66bb: $84
	add  h                                           ; $66bc: $84
	db   $10                                         ; $66bd: $10
	add  c                                           ; $66be: $81
	sub  [hl]                                        ; $66bf: $96
	sub  a                                           ; $66c0: $97
	sbc  b                                           ; $66c1: $98
	sbc  c                                           ; $66c2: $99
	sbc  d                                           ; $66c3: $9a
	sbc  e                                           ; $66c4: $9b
	add  h                                           ; $66c5: $84
	sbc  h                                           ; $66c6: $9c
	sbc  l                                           ; $66c7: $9d
	sbc  [hl]                                        ; $66c8: $9e
	sbc  [hl]                                        ; $66c9: $9e
	ld   c, $84                                      ; $66ca: $0e $84
	add  h                                           ; $66cc: $84
	add  h                                           ; $66cd: $84
	add  h                                           ; $66ce: $84
	add  h                                           ; $66cf: $84
	add  h                                           ; $66d0: $84
	db   $10                                         ; $66d1: $10
	add  c                                           ; $66d2: $81
	and  b                                           ; $66d3: $a0
	and  c                                           ; $66d4: $a1
	and  d                                           ; $66d5: $a2
	and  e                                           ; $66d6: $a3
	and  h                                           ; $66d7: $a4
	and  l                                           ; $66d8: $a5
	and  [hl]                                        ; $66d9: $a6
	and  a                                           ; $66da: $a7
	xor  b                                           ; $66db: $a8
	xor  c                                           ; $66dc: $a9
	sbc  [hl]                                        ; $66dd: $9e
	ld   c, $84                                      ; $66de: $0e $84
	add  h                                           ; $66e0: $84
	add  h                                           ; $66e1: $84
	add  h                                           ; $66e2: $84
	add  h                                           ; $66e3: $84
	add  h                                           ; $66e4: $84
	db   $10                                         ; $66e5: $10
	xor  e                                           ; $66e6: $ab
	xor  h                                           ; $66e7: $ac
	xor  l                                           ; $66e8: $ad
	xor  [hl]                                        ; $66e9: $ae
	xor  a                                           ; $66ea: $af
	or   b                                           ; $66eb: $b0
	or   c                                           ; $66ec: $b1
	or   d                                           ; $66ed: $b2
	or   e                                           ; $66ee: $b3
	or   h                                           ; $66ef: $b4
	or   l                                           ; $66f0: $b5
	or   [hl]                                        ; $66f1: $b6
	ld   c, $84                                      ; $66f2: $0e $84
	add  h                                           ; $66f4: $84
	add  h                                           ; $66f5: $84
	add  h                                           ; $66f6: $84
	add  h                                           ; $66f7: $84
	add  h                                           ; $66f8: $84
	db   $10                                         ; $66f9: $10
	cp   b                                           ; $66fa: $b8
	cp   c                                           ; $66fb: $b9
	cp   d                                           ; $66fc: $ba
	cp   e                                           ; $66fd: $bb
	cp   h                                           ; $66fe: $bc
	cp   l                                           ; $66ff: $bd
	cp   [hl]                                        ; $6700: $be
	cp   a                                           ; $6701: $bf
	ret  nz                                          ; $6702: $c0

	pop  bc                                          ; $6703: $c1
	jp   nz, $0ec3                                   ; $6704: $c2 $c3 $0e

	add  h                                           ; $6707: $84
	add  h                                           ; $6708: $84
	add  h                                           ; $6709: $84
	add  h                                           ; $670a: $84
	add  h                                           ; $670b: $84
	add  h                                           ; $670c: $84
	db   $10                                         ; $670d: $10
	call nz, $c6c5                                   ; $670e: $c4 $c5 $c6
	rst  ToBoot                                         ; $6711: $c7
	ret  z                                           ; $6712: $c8

	ret                                              ; $6713: $c9


	ret                                              ; $6714: $c9


	jp   z, $cccb                                    ; $6715: $ca $cb $cc

	call $0ece                                       ; $6718: $cd $ce $0e
	add  h                                           ; $671b: $84
	add  h                                           ; $671c: $84
	add  h                                           ; $671d: $84
	add  h                                           ; $671e: $84
	add  h                                           ; $671f: $84
	add  h                                           ; $6720: $84
	db   $10                                         ; $6721: $10
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6722: $cf
	ret  nc                                          ; $6723: $d0

	pop  de                                          ; $6724: $d1
	jp   nc, $c9d3                                   ; $6725: $d2 $d3 $c9

	ret                                              ; $6728: $c9


	ret                                              ; $6729: $c9


	call nc, $d6d5                                   ; $672a: $d4 $d5 $d6
	ret                                              ; $672d: $c9


	ld   c, $84                                      ; $672e: $0e $84
	add  h                                           ; $6730: $84
	add  h                                           ; $6731: $84
	add  h                                           ; $6732: $84
	add  h                                           ; $6733: $84
	add  h                                           ; $6734: $84
	db   $10                                         ; $6735: $10
	rst  $10                                         ; $6736: $d7
	ret  c                                           ; $6737: $d8

	reti                                             ; $6738: $d9


	jp   c, $c9db                                    ; $6739: $da $db $c9

	ret                                              ; $673c: $c9


	call c, $81dd                                    ; $673d: $dc $dd $81
	add  c                                           ; $6740: $81
	add  c                                           ; $6741: $81
	ld   c, $84                                      ; $6742: $0e $84
	add  h                                           ; $6744: $84
	add  h                                           ; $6745: $84
	add  h                                           ; $6746: $84
	add  h                                           ; $6747: $84
	add  h                                           ; $6748: $84
	db   $10                                         ; $6749: $10
	sbc  $df                                         ; $674a: $de $df
	ldh  [$e1], a                                    ; $674c: $e0 $e1
	ldh  [c], a                                      ; $674e: $e2
	db   $e3                                         ; $674f: $e3
	db   $e4                                         ; $6750: $e4
	push hl                                          ; $6751: $e5
	and  $e7                                         ; $6752: $e6 $e7
	add  c                                           ; $6754: $81
	add  sp, $0e                                     ; $6755: $e8 $0e
	add  h                                           ; $6757: $84
	add  h                                           ; $6758: $84
	add  h                                           ; $6759: $84
	add  h                                           ; $675a: $84
	add  h                                           ; $675b: $84
	add  h                                           ; $675c: $84
	db   $10                                         ; $675d: $10
	add  c                                           ; $675e: $81
	jp   hl                                          ; $675f: $e9


	ld   [$eceb], a                                  ; $6760: $ea $eb $ec
	db   $ed                                         ; $6763: $ed
	xor  a                                           ; $6764: $af
	xor  $ef                                         ; $6765: $ee $ef
	ldh  a, [$f1]                                    ; $6767: $f0 $f1
	ldh  a, [c]                                      ; $6769: $f2
	ld   c, $84                                      ; $676a: $0e $84
	add  h                                           ; $676c: $84
	add  h                                           ; $676d: $84
	add  h                                           ; $676e: $84
	add  h                                           ; $676f: $84
	add  h                                           ; $6770: $84
	db   $10                                         ; $6771: $10
	add  c                                           ; $6772: $81
	di                                               ; $6773: $f3
	db   $f4                                         ; $6774: $f4
	push af                                          ; $6775: $f5
	or   $f7                                         ; $6776: $f6 $f7
	ld   hl, sp-$07                                  ; $6778: $f8 $f9
	ld   a, [$fcfb]                                  ; $677a: $fa $fb $fc
	db   $fd                                         ; $677d: $fd
	ld   c, $84                                      ; $677e: $0e $84
	add  h                                           ; $6780: $84
	add  h                                           ; $6781: $84
	add  h                                           ; $6782: $84
	add  h                                           ; $6783: $84
	add  h                                           ; $6784: $84
	db   $10                                         ; $6785: $10
	add  c                                           ; $6786: $81
	cp   $ff                                         ; $6787: $fe $ff
	nop                                              ; $6789: $00
	ld   bc, $0302                                   ; $678a: $01 $02 $03
	inc  b                                           ; $678d: $04
	push bc                                          ; $678e: $c5
	dec  b                                           ; $678f: $05
	ld   b, $07                                      ; $6790: $06 $07
	ld   c, $84                                      ; $6792: $0e $84
	add  h                                           ; $6794: $84
	add  h                                           ; $6795: $84
	add  h                                           ; $6796: $84
	add  h                                           ; $6797: $84
	add  h                                           ; $6798: $84
	db   $10                                         ; $6799: $10
	add  c                                           ; $679a: $81
	ld   [$0a09], sp                                 ; $679b: $08 $09 $0a
	dec  bc                                          ; $679e: $0b
	inc  c                                           ; $679f: $0c
	sbc  a                                           ; $67a0: $9f
	xor  d                                           ; $67a1: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67a2: $cf
	add  [hl]                                        ; $67a3: $86
	adc  e                                           ; $67a4: $8b
	sub  l                                           ; $67a5: $95
	ld   c, $84                                      ; $67a6: $0e $84
	add  h                                           ; $67a8: $84
	add  h                                           ; $67a9: $84
	add  h                                           ; $67aa: $84
	add  h                                           ; $67ab: $84
	add  h                                           ; $67ac: $84
	ld   [de], a                                     ; $67ad: $12
	rrca                                             ; $67ae: $0f
	rrca                                             ; $67af: $0f
	rrca                                             ; $67b0: $0f
	rrca                                             ; $67b1: $0f
	rrca                                             ; $67b2: $0f
	rrca                                             ; $67b3: $0f
	rrca                                             ; $67b4: $0f
	rrca                                             ; $67b5: $0f
	rrca                                             ; $67b6: $0f
	rrca                                             ; $67b7: $0f
	rrca                                             ; $67b8: $0f
	rrca                                             ; $67b9: $0f
	ld   de, $8484                                   ; $67ba: $11 $84 $84
	add  h                                           ; $67bd: $84
	inc  c                                           ; $67be: $0c
	inc  c                                           ; $67bf: $0c
	inc  c                                           ; $67c0: $0c
	inc  c                                           ; $67c1: $0c
	inc  c                                           ; $67c2: $0c
	inc  c                                           ; $67c3: $0c
	inc  c                                           ; $67c4: $0c
	inc  c                                           ; $67c5: $0c
	inc  c                                           ; $67c6: $0c
	inc  c                                           ; $67c7: $0c
	inc  c                                           ; $67c8: $0c
	inc  c                                           ; $67c9: $0c
	inc  c                                           ; $67ca: $0c
	inc  c                                           ; $67cb: $0c
	inc  c                                           ; $67cc: $0c
	inc  c                                           ; $67cd: $0c
	inc  c                                           ; $67ce: $0c
	inc  c                                           ; $67cf: $0c
	inc  c                                           ; $67d0: $0c
	inc  c                                           ; $67d1: $0c
	ld   a, [bc]                                     ; $67d2: $0a
	ld   [bc], a                                     ; $67d3: $02
	ld   [bc], a                                     ; $67d4: $02
	ld   [bc], a                                     ; $67d5: $02
	ld   [bc], a                                     ; $67d6: $02
	ld   [bc], a                                     ; $67d7: $02
	ld   [bc], a                                     ; $67d8: $02
	ld   [bc], a                                     ; $67d9: $02
	ld   [bc], a                                     ; $67da: $02
	ld   [bc], a                                     ; $67db: $02
	ld   [bc], a                                     ; $67dc: $02
	ld   bc, $0000                                   ; $67dd: $01 $00 $00
	nop                                              ; $67e0: $00
	nop                                              ; $67e1: $00
	nop                                              ; $67e2: $00
	nop                                              ; $67e3: $00
	nop                                              ; $67e4: $00
	ld   [$020a], sp                                 ; $67e5: $08 $0a $02
	ld   [bc], a                                     ; $67e8: $02
	ld   [bc], a                                     ; $67e9: $02
	ld   [bc], a                                     ; $67ea: $02
	ld   [bc], a                                     ; $67eb: $02
	ld   [bc], a                                     ; $67ec: $02
	ld   [bc], a                                     ; $67ed: $02
	ld   bc, $0201                                   ; $67ee: $01 $01 $02
	ld   bc, $0000                                   ; $67f1: $01 $00 $00
	nop                                              ; $67f4: $00
	nop                                              ; $67f5: $00
	nop                                              ; $67f6: $00
	nop                                              ; $67f7: $00
	nop                                              ; $67f8: $00
	ld   [$0109], sp                                 ; $67f9: $08 $09 $01
	ld   [bc], a                                     ; $67fc: $02
	ld   [bc], a                                     ; $67fd: $02
	ld   [bc], a                                     ; $67fe: $02
	ld   [bc], a                                     ; $67ff: $02
	ld   [bc], a                                     ; $6800: $02
	ld   [bc], a                                     ; $6801: $02
	ld   bc, $0001                                   ; $6802: $01 $01 $00
	nop                                              ; $6805: $00
	nop                                              ; $6806: $00
	nop                                              ; $6807: $00
	nop                                              ; $6808: $00
	nop                                              ; $6809: $00
	nop                                              ; $680a: $00
	nop                                              ; $680b: $00
	nop                                              ; $680c: $00
	ld   [$0109], sp                                 ; $680d: $08 $09 $01
	ld   bc, $0102                                   ; $6810: $01 $02 $01
	ld   bc, $0101                                   ; $6813: $01 $01 $01
	nop                                              ; $6816: $00
	nop                                              ; $6817: $00
	nop                                              ; $6818: $00
	nop                                              ; $6819: $00
	nop                                              ; $681a: $00
	nop                                              ; $681b: $00
	nop                                              ; $681c: $00
	nop                                              ; $681d: $00
	nop                                              ; $681e: $00
	ld   [$0808], sp                                 ; $681f: $08 $08 $08
	add  hl, bc                                      ; $6822: $09
	ld   [TurnOnLCD], sp                                 ; $6823: $08 $09 $09
	add  hl, bc                                      ; $6826: $09
	ld   [$0808], sp                                 ; $6827: $08 $08 $08
	ld   [$0808], sp                                 ; $682a: $08 $08 $08
	ld   [$0808], sp                                 ; $682d: $08 $08 $08
	ld   [$0808], sp                                 ; $6830: $08 $08 $08
	ld   [$0808], sp                                 ; $6833: $08 $08 $08
	ld   [$0808], sp                                 ; $6836: $08 $08 $08
	ld   [$0808], sp                                 ; $6839: $08 $08 $08
	ld   [$0808], sp                                 ; $683c: $08 $08 $08
	ld   [$0808], sp                                 ; $683f: $08 $08 $08
	ld   [$0808], sp                                 ; $6842: $08 $08 $08
	ld   [$0808], sp                                 ; $6845: $08 $08 $08
	ld   [$0808], sp                                 ; $6848: $08 $08 $08
	ld   [$0808], sp                                 ; $684b: $08 $08 $08
	ld   [$0808], sp                                 ; $684e: $08 $08 $08
	ld   [$0808], sp                                 ; $6851: $08 $08 $08
	ld   [$0808], sp                                 ; $6854: $08 $08 $08
	ld   [$0808], sp                                 ; $6857: $08 $08 $08
	ld   [$0808], sp                                 ; $685a: $08 $08 $08
	ld   [$0808], sp                                 ; $685d: $08 $08 $08
	ld   [$0808], sp                                 ; $6860: $08 $08 $08
	ld   [$0808], sp                                 ; $6863: $08 $08 $08
	ld   [$0808], sp                                 ; $6866: $08 $08 $08
	ld   [$0808], sp                                 ; $6869: $08 $08 $08
	ld   [$0808], sp                                 ; $686c: $08 $08 $08
	ld   [$0808], sp                                 ; $686f: $08 $08 $08
	ld   [$0808], sp                                 ; $6872: $08 $08 $08
	ld   [$0808], sp                                 ; $6875: $08 $08 $08
	ld   [$0808], sp                                 ; $6878: $08 $08 $08
	ld   [$0808], sp                                 ; $687b: $08 $08 $08
	ld   [$0808], sp                                 ; $687e: $08 $08 $08
	ld   [$0808], sp                                 ; $6881: $08 $08 $08
	ld   [$0808], sp                                 ; $6884: $08 $08 $08
	ld   [$0808], sp                                 ; $6887: $08 $08 $08
	ld   [$0808], sp                                 ; $688a: $08 $08 $08
	ld   [$0808], sp                                 ; $688d: $08 $08 $08
	ld   [$0008], sp                                 ; $6890: $08 $08 $00
	ld   [$0808], sp                                 ; $6893: $08 $08 $08
	ld   [$0808], sp                                 ; $6896: $08 $08 $08
	ld   [$0808], sp                                 ; $6899: $08 $08 $08
	ld   [$0808], sp                                 ; $689c: $08 $08 $08
	ld   [rRAMG], sp                                 ; $689f: $08 $00 $00
	nop                                              ; $68a2: $00
	nop                                              ; $68a3: $00
	nop                                              ; $68a4: $00
	nop                                              ; $68a5: $00
	nop                                              ; $68a6: $00
	nop                                              ; $68a7: $00
	nop                                              ; $68a8: $00
	nop                                              ; $68a9: $00
	nop                                              ; $68aa: $00
	nop                                              ; $68ab: $00
	nop                                              ; $68ac: $00
	ld   [$0008], sp                                 ; $68ad: $08 $08 $00
	nop                                              ; $68b0: $00
	nop                                              ; $68b1: $00
	nop                                              ; $68b2: $00
	nop                                              ; $68b3: $00
	nop                                              ; $68b4: $00
	nop                                              ; $68b5: $00
	nop                                              ; $68b6: $00
	nop                                              ; $68b7: $00
	nop                                              ; $68b8: $00
	nop                                              ; $68b9: $00
	nop                                              ; $68ba: $00
	nop                                              ; $68bb: $00
	nop                                              ; $68bc: $00
	nop                                              ; $68bd: $00
	nop                                              ; $68be: $00
	nop                                              ; $68bf: $00
	nop                                              ; $68c0: $00
	ld   [$0008], sp                                 ; $68c1: $08 $08 $00
	nop                                              ; $68c4: $00
	nop                                              ; $68c5: $00
	nop                                              ; $68c6: $00
	nop                                              ; $68c7: $00
	nop                                              ; $68c8: $00
	nop                                              ; $68c9: $00
	nop                                              ; $68ca: $00
	nop                                              ; $68cb: $00
	nop                                              ; $68cc: $00
	nop                                              ; $68cd: $00
	nop                                              ; $68ce: $00
	nop                                              ; $68cf: $00
	nop                                              ; $68d0: $00
	nop                                              ; $68d1: $00
	nop                                              ; $68d2: $00
	nop                                              ; $68d3: $00
	nop                                              ; $68d4: $00
	nop                                              ; $68d5: $00
	ld   [rRAMG], sp                                 ; $68d6: $08 $00 $00
	nop                                              ; $68d9: $00
	nop                                              ; $68da: $00
	nop                                              ; $68db: $00
	nop                                              ; $68dc: $00
	nop                                              ; $68dd: $00
	nop                                              ; $68de: $00
	nop                                              ; $68df: $00
	nop                                              ; $68e0: $00
	nop                                              ; $68e1: $00
	nop                                              ; $68e2: $00
	nop                                              ; $68e3: $00
	nop                                              ; $68e4: $00
	nop                                              ; $68e5: $00
	nop                                              ; $68e6: $00
	nop                                              ; $68e7: $00
	nop                                              ; $68e8: $00
	ld   [$0008], sp                                 ; $68e9: $08 $08 $00
	nop                                              ; $68ec: $00
	nop                                              ; $68ed: $00
	nop                                              ; $68ee: $00
	nop                                              ; $68ef: $00
	nop                                              ; $68f0: $00
	nop                                              ; $68f1: $00
	nop                                              ; $68f2: $00
	nop                                              ; $68f3: $00
	nop                                              ; $68f4: $00
	nop                                              ; $68f5: $00
	nop                                              ; $68f6: $00
	nop                                              ; $68f7: $00
	nop                                              ; $68f8: $00
	nop                                              ; $68f9: $00
	nop                                              ; $68fa: $00
	nop                                              ; $68fb: $00
	nop                                              ; $68fc: $00
	ld   [$0008], sp                                 ; $68fd: $08 $08 $00
	nop                                              ; $6900: $00
	nop                                              ; $6901: $00
	nop                                              ; $6902: $00
	nop                                              ; $6903: $00
	nop                                              ; $6904: $00
	nop                                              ; $6905: $00
	nop                                              ; $6906: $00
	nop                                              ; $6907: $00
	nop                                              ; $6908: $00
	nop                                              ; $6909: $00
	nop                                              ; $690a: $00
	nop                                              ; $690b: $00
	nop                                              ; $690c: $00
	nop                                              ; $690d: $00
	nop                                              ; $690e: $00
	nop                                              ; $690f: $00
	nop                                              ; $6910: $00
	ld   [$0c0c], sp                                 ; $6911: $08 $0c $0c
	inc  c                                           ; $6914: $0c
	inc  c                                           ; $6915: $0c
	inc  c                                           ; $6916: $0c
	inc  c                                           ; $6917: $0c
	inc  c                                           ; $6918: $0c
	inc  c                                           ; $6919: $0c
	inc  c                                           ; $691a: $0c
	inc  c                                           ; $691b: $0c
	inc  c                                           ; $691c: $0c
	inc  c                                           ; $691d: $0c
	inc  c                                           ; $691e: $0c
	inc  c                                           ; $691f: $0c
	inc  c                                           ; $6920: $0c
	inc  c                                           ; $6921: $0c
	inc  c                                           ; $6922: $0c
	inc  c                                           ; $6923: $0c
	inc  c                                           ; $6924: $0c
	inc  c                                           ; $6925: $0c
	sbc  a                                           ; $6926: $9f
	sbc  a                                           ; $6927: $9f
	sbc  a                                           ; $6928: $9f
	sbc  a                                           ; $6929: $9f
	sbc  a                                           ; $692a: $9f
	sbc  a                                           ; $692b: $9f
	sbc  a                                           ; $692c: $9f
	sbc  a                                           ; $692d: $9f
	sbc  a                                           ; $692e: $9f
	sbc  a                                           ; $692f: $9f
	sbc  a                                           ; $6930: $9f
	sbc  a                                           ; $6931: $9f
	sbc  a                                           ; $6932: $9f
	sbc  a                                           ; $6933: $9f
	sbc  a                                           ; $6934: $9f
	sbc  a                                           ; $6935: $9f
	sbc  a                                           ; $6936: $9f
	sbc  a                                           ; $6937: $9f
	sbc  a                                           ; $6938: $9f
	sbc  a                                           ; $6939: $9f
	add  b                                           ; $693a: $80
	ld   a, [hl+]                                    ; $693b: $2a
	ld   a, [hl+]                                    ; $693c: $2a
	ld   a, [hl-]                                    ; $693d: $3a
	dec  sp                                          ; $693e: $3b
	inc  a                                           ; $693f: $3c
	dec  a                                           ; $6940: $3d
	ld   a, [hl+]                                    ; $6941: $2a
	ld   a, [hl+]                                    ; $6942: $2a
	ld   a, [hl+]                                    ; $6943: $2a
	ld   a, $3f                                      ; $6944: $3e $3f
	ld   b, b                                        ; $6946: $40
	ld   b, c                                        ; $6947: $41
	ld   b, d                                        ; $6948: $42
	ld   b, e                                        ; $6949: $43
	ld   b, h                                        ; $694a: $44
	ld   b, l                                        ; $694b: $45
	ld   b, [hl]                                     ; $694c: $46
	sub  b                                           ; $694d: $90
	add  c                                           ; $694e: $81
	ld   c, c                                        ; $694f: $49
	ld   c, d                                        ; $6950: $4a
	ld   c, e                                        ; $6951: $4b
	ld   c, h                                        ; $6952: $4c
	ld   c, l                                        ; $6953: $4d
	ld   c, [hl]                                     ; $6954: $4e
	ld   c, a                                        ; $6955: $4f
	ld   d, b                                        ; $6956: $50
	ld   d, c                                        ; $6957: $51
	ld   d, d                                        ; $6958: $52
	ld   d, e                                        ; $6959: $53
	ld   d, h                                        ; $695a: $54
	ld   d, l                                        ; $695b: $55
	ld   d, [hl]                                     ; $695c: $56
	ld   d, a                                        ; $695d: $57
	ld   e, b                                        ; $695e: $58
	ld   e, c                                        ; $695f: $59
	ld   e, d                                        ; $6960: $5a
	sub  c                                           ; $6961: $91
	add  d                                           ; $6962: $82
	ld   e, l                                        ; $6963: $5d
	ld   e, [hl]                                     ; $6964: $5e
	ld   e, a                                        ; $6965: $5f
	ld   h, b                                        ; $6966: $60
	ld   h, c                                        ; $6967: $61
	ld   h, d                                        ; $6968: $62
	ld   h, e                                        ; $6969: $63
	ld   h, h                                        ; $696a: $64
	ld   h, l                                        ; $696b: $65
	ld   h, [hl]                                     ; $696c: $66
	ld   h, a                                        ; $696d: $67
	ld   l, b                                        ; $696e: $68
	ld   l, c                                        ; $696f: $69
	ld   l, d                                        ; $6970: $6a
	ld   l, e                                        ; $6971: $6b
	ld   l, h                                        ; $6972: $6c
	ld   l, l                                        ; $6973: $6d
	ld   l, [hl]                                     ; $6974: $6e
	sub  d                                           ; $6975: $92
	add  e                                           ; $6976: $83
	ld   [hl], c                                     ; $6977: $71
	ld   [hl], d                                     ; $6978: $72
	ld   a, [hl+]                                    ; $6979: $2a
	ld   [hl], e                                     ; $697a: $73
	ld   [hl], h                                     ; $697b: $74
	ld   [hl], l                                     ; $697c: $75
	halt                                             ; $697d: $76
	ld   [hl], a                                     ; $697e: $77
	ld   a, b                                        ; $697f: $78
	ld   a, c                                        ; $6980: $79
	ld   a, d                                        ; $6981: $7a
	ld   a, e                                        ; $6982: $7b
	ld   a, h                                        ; $6983: $7c
	ld   a, l                                        ; $6984: $7d
	ld   a, [hl]                                     ; $6985: $7e
	ld   a, a                                        ; $6986: $7f
	nop                                              ; $6987: $00
	ld   bc, $8493                                   ; $6988: $01 $93 $84
	inc  b                                           ; $698b: $04
	dec  b                                           ; $698c: $05
	ld   b, $07                                      ; $698d: $06 $07
	ld   [$0a09], sp                                 ; $698f: $08 $09 $0a
	dec  bc                                          ; $6992: $0b
	inc  c                                           ; $6993: $0c
	dec  c                                           ; $6994: $0d
	ld   c, $0f                                      ; $6995: $0e $0f
	db   $10                                         ; $6997: $10
	ld   de, $1312                                   ; $6998: $11 $12 $13
	inc  d                                           ; $699b: $14
	dec  d                                           ; $699c: $15
	sub  h                                           ; $699d: $94
	add  l                                           ; $699e: $85
	jr   jr_0a0_69ba                                 ; $699f: $18 $19

	ld   a, [de]                                     ; $69a1: $1a
	dec  de                                          ; $69a2: $1b
	inc  e                                           ; $69a3: $1c
	dec  e                                           ; $69a4: $1d
	ld   e, $1f                                      ; $69a5: $1e $1f
	jr   nz, jr_0a0_69ca                             ; $69a7: $20 $21

	ld   [hl+], a                                    ; $69a9: $22
	inc  hl                                          ; $69aa: $23
	inc  h                                           ; $69ab: $24
	dec  h                                           ; $69ac: $25
	ld   h, $27                                      ; $69ad: $26 $27
	jr   z, jr_0a0_69da                              ; $69af: $28 $29

	sub  l                                           ; $69b1: $95
	add  [hl]                                        ; $69b2: $86
	inc  l                                           ; $69b3: $2c
	dec  l                                           ; $69b4: $2d
	ld   l, $2f                                      ; $69b5: $2e $2f
	jr   nc, jr_0a0_69ea                             ; $69b7: $30 $31

	ld   [hl-], a                                    ; $69b9: $32

jr_0a0_69ba:
	inc  sp                                          ; $69ba: $33
	inc  [hl]                                        ; $69bb: $34
	dec  [hl]                                        ; $69bc: $35
	ld   [hl], $37                                   ; $69bd: $36 $37
	jr   c, jr_0a0_69fa                              ; $69bf: $38 $39

	ld   a, [hl-]                                    ; $69c1: $3a
	dec  sp                                          ; $69c2: $3b
	inc  a                                           ; $69c3: $3c
	dec  a                                           ; $69c4: $3d
	sub  [hl]                                        ; $69c5: $96
	add  a                                           ; $69c6: $87
	ld   b, b                                        ; $69c7: $40
	ld   b, c                                        ; $69c8: $41
	ld   b, d                                        ; $69c9: $42

jr_0a0_69ca:
	ld   b, e                                        ; $69ca: $43
	ld   b, h                                        ; $69cb: $44
	ld   b, l                                        ; $69cc: $45
	ld   b, [hl]                                     ; $69cd: $46
	ld   b, a                                        ; $69ce: $47
	ld   c, b                                        ; $69cf: $48
	ld   c, c                                        ; $69d0: $49
	ld   c, d                                        ; $69d1: $4a
	ld   c, e                                        ; $69d2: $4b
	ld   c, h                                        ; $69d3: $4c
	ld   c, l                                        ; $69d4: $4d
	ld   c, [hl]                                     ; $69d5: $4e
	ld   c, a                                        ; $69d6: $4f
	ld   d, b                                        ; $69d7: $50
	ld   d, c                                        ; $69d8: $51
	sub  a                                           ; $69d9: $97

jr_0a0_69da:
	adc  b                                           ; $69da: $88
	ld   d, h                                        ; $69db: $54
	ld   d, l                                        ; $69dc: $55
	ld   d, [hl]                                     ; $69dd: $56
	ld   d, a                                        ; $69de: $57
	ld   e, b                                        ; $69df: $58
	ld   e, c                                        ; $69e0: $59
	ld   e, d                                        ; $69e1: $5a
	ld   e, e                                        ; $69e2: $5b
	ld   e, h                                        ; $69e3: $5c
	ld   e, l                                        ; $69e4: $5d
	ld   e, [hl]                                     ; $69e5: $5e
	ld   e, a                                        ; $69e6: $5f
	ld   h, b                                        ; $69e7: $60
	ld   h, c                                        ; $69e8: $61
	ld   h, d                                        ; $69e9: $62

jr_0a0_69ea:
	ld   h, e                                        ; $69ea: $63
	ld   h, h                                        ; $69eb: $64
	ld   h, l                                        ; $69ec: $65
	sbc  b                                           ; $69ed: $98
	adc  c                                           ; $69ee: $89
	ld   l, b                                        ; $69ef: $68
	ld   l, c                                        ; $69f0: $69
	ld   l, d                                        ; $69f1: $6a
	ld   l, e                                        ; $69f2: $6b
	ld   l, h                                        ; $69f3: $6c
	ld   l, l                                        ; $69f4: $6d
	ld   l, [hl]                                     ; $69f5: $6e
	ld   l, a                                        ; $69f6: $6f
	ld   [hl], b                                     ; $69f7: $70
	ld   [hl], c                                     ; $69f8: $71
	ld   [hl], d                                     ; $69f9: $72

jr_0a0_69fa:
	ld   a, [hl+]                                    ; $69fa: $2a
	ld   [hl], e                                     ; $69fb: $73
	ld   [hl], h                                     ; $69fc: $74
	ld   [hl], l                                     ; $69fd: $75
	halt                                             ; $69fe: $76
	ld   [hl], a                                     ; $69ff: $77
	ld   a, b                                        ; $6a00: $78
	sbc  c                                           ; $6a01: $99
	adc  d                                           ; $6a02: $8a
	ld   a, e                                        ; $6a03: $7b
	ld   a, h                                        ; $6a04: $7c
	ld   a, l                                        ; $6a05: $7d
	ld   a, [hl]                                     ; $6a06: $7e
	ld   a, a                                        ; $6a07: $7f
	add  b                                           ; $6a08: $80
	add  c                                           ; $6a09: $81
	add  d                                           ; $6a0a: $82
	add  e                                           ; $6a0b: $83
	add  h                                           ; $6a0c: $84
	add  l                                           ; $6a0d: $85
	add  [hl]                                        ; $6a0e: $86
	add  a                                           ; $6a0f: $87
	adc  b                                           ; $6a10: $88
	adc  c                                           ; $6a11: $89
	adc  d                                           ; $6a12: $8a
	adc  e                                           ; $6a13: $8b
	adc  h                                           ; $6a14: $8c
	sbc  d                                           ; $6a15: $9a
	adc  e                                           ; $6a16: $8b
	adc  a                                           ; $6a17: $8f
	sub  b                                           ; $6a18: $90
	sub  c                                           ; $6a19: $91
	sub  d                                           ; $6a1a: $92
	sub  e                                           ; $6a1b: $93
	sub  h                                           ; $6a1c: $94
	sub  l                                           ; $6a1d: $95
	sub  [hl]                                        ; $6a1e: $96
	sub  a                                           ; $6a1f: $97
	sbc  b                                           ; $6a20: $98
	sbc  c                                           ; $6a21: $99
	sbc  d                                           ; $6a22: $9a
	sbc  e                                           ; $6a23: $9b
	sbc  h                                           ; $6a24: $9c
	sbc  l                                           ; $6a25: $9d
	sbc  [hl]                                        ; $6a26: $9e
	sbc  a                                           ; $6a27: $9f
	and  b                                           ; $6a28: $a0
	sbc  e                                           ; $6a29: $9b
	adc  h                                           ; $6a2a: $8c
	and  e                                           ; $6a2b: $a3
	and  h                                           ; $6a2c: $a4
	and  l                                           ; $6a2d: $a5
	and  [hl]                                        ; $6a2e: $a6
	and  a                                           ; $6a2f: $a7
	xor  b                                           ; $6a30: $a8
	xor  c                                           ; $6a31: $a9
	xor  d                                           ; $6a32: $aa
	xor  e                                           ; $6a33: $ab
	xor  h                                           ; $6a34: $ac
	xor  l                                           ; $6a35: $ad
	xor  [hl]                                        ; $6a36: $ae
	xor  a                                           ; $6a37: $af
	or   b                                           ; $6a38: $b0
	adc  c                                           ; $6a39: $89
	adc  d                                           ; $6a3a: $8a
	adc  e                                           ; $6a3b: $8b
	or   c                                           ; $6a3c: $b1
	adc  d                                           ; $6a3d: $8a
	adc  l                                           ; $6a3e: $8d
	or   e                                           ; $6a3f: $b3
	or   h                                           ; $6a40: $b4
	or   l                                           ; $6a41: $b5
	or   [hl]                                        ; $6a42: $b6
	or   a                                           ; $6a43: $b7
	cp   b                                           ; $6a44: $b8
	cp   c                                           ; $6a45: $b9
	cp   d                                           ; $6a46: $ba
	cp   e                                           ; $6a47: $bb
	cp   h                                           ; $6a48: $bc
	cp   l                                           ; $6a49: $bd
	cp   [hl]                                        ; $6a4a: $be
	cp   a                                           ; $6a4b: $bf
	ret  nz                                          ; $6a4c: $c0

	pop  bc                                          ; $6a4d: $c1
	jp   nz, $c4c3                                   ; $6a4e: $c2 $c3 $c4

	sbc  h                                           ; $6a51: $9c
	adc  [hl]                                        ; $6a52: $8e
	rst  ToBoot                                         ; $6a53: $c7
	ret  z                                           ; $6a54: $c8

	ret                                              ; $6a55: $c9


	jp   z, $cccb                                    ; $6a56: $ca $cb $cc

	call $cfce                                       ; $6a59: $cd $ce $cf
	ret  nc                                          ; $6a5c: $d0

	pop  de                                          ; $6a5d: $d1
	jp   nc, $d4d3                                   ; $6a5e: $d2 $d3 $d4

	adc  c                                           ; $6a61: $89
	adc  d                                           ; $6a62: $8a
	push de                                          ; $6a63: $d5
	sub  $9d                                         ; $6a64: $d6 $9d
	adc  a                                           ; $6a66: $8f
	reti                                             ; $6a67: $d9


	jp   c, $dcdb                                    ; $6a68: $da $db $dc

	db   $dd                                         ; $6a6b: $dd
	sbc  $df                                         ; $6a6c: $de $df
	ldh  [$e1], a                                    ; $6a6e: $e0 $e1
	ldh  [c], a                                      ; $6a70: $e2
	db   $e3                                         ; $6a71: $e3
	db   $e4                                         ; $6a72: $e4
	push hl                                          ; $6a73: $e5
	and  $e7                                         ; $6a74: $e6 $e7
	add  sp, -$17                                    ; $6a76: $e8 $e9
	ld   [$9f9e], a                                  ; $6a78: $ea $9e $9f
	sbc  a                                           ; $6a7b: $9f
	sbc  a                                           ; $6a7c: $9f
	sbc  a                                           ; $6a7d: $9f
	sbc  a                                           ; $6a7e: $9f
	sbc  a                                           ; $6a7f: $9f
	sbc  a                                           ; $6a80: $9f
	sbc  a                                           ; $6a81: $9f
	sbc  a                                           ; $6a82: $9f
	sbc  a                                           ; $6a83: $9f
	sbc  a                                           ; $6a84: $9f
	sbc  a                                           ; $6a85: $9f
	sbc  a                                           ; $6a86: $9f
	sbc  a                                           ; $6a87: $9f
	sbc  a                                           ; $6a88: $9f
	sbc  a                                           ; $6a89: $9f
	sbc  a                                           ; $6a8a: $9f
	sbc  a                                           ; $6a8b: $9f
	sbc  a                                           ; $6a8c: $9f
	sbc  a                                           ; $6a8d: $9f
	rrca                                             ; $6a8e: $0f
	rlca                                             ; $6a8f: $07
	rlca                                             ; $6a90: $07
	rlca                                             ; $6a91: $07
	rlca                                             ; $6a92: $07
	rlca                                             ; $6a93: $07
	rlca                                             ; $6a94: $07
	rlca                                             ; $6a95: $07
	rlca                                             ; $6a96: $07
	rlca                                             ; $6a97: $07
	rlca                                             ; $6a98: $07
	ld   b, $05                                      ; $6a99: $06 $05
	dec  b                                           ; $6a9b: $05
	ld   b, $05                                      ; $6a9c: $06 $05
	dec  b                                           ; $6a9e: $05
	dec  b                                           ; $6a9f: $05
	dec  b                                           ; $6aa0: $05
	dec  c                                           ; $6aa1: $0d
	rrca                                             ; $6aa2: $0f
	rlca                                             ; $6aa3: $07
	rlca                                             ; $6aa4: $07
	rlca                                             ; $6aa5: $07
	rlca                                             ; $6aa6: $07
	rlca                                             ; $6aa7: $07
	rlca                                             ; $6aa8: $07
	rlca                                             ; $6aa9: $07
	rlca                                             ; $6aaa: $07
	rlca                                             ; $6aab: $07
	rlca                                             ; $6aac: $07
	ld   b, $05                                      ; $6aad: $06 $05
	dec  b                                           ; $6aaf: $05
	dec  b                                           ; $6ab0: $05
	dec  b                                           ; $6ab1: $05
	dec  b                                           ; $6ab2: $05
	dec  b                                           ; $6ab3: $05
	dec  b                                           ; $6ab4: $05
	dec  c                                           ; $6ab5: $0d
	rrca                                             ; $6ab6: $0f
	rlca                                             ; $6ab7: $07
	rlca                                             ; $6ab8: $07
	rlca                                             ; $6ab9: $07
	rlca                                             ; $6aba: $07
	rlca                                             ; $6abb: $07
	rlca                                             ; $6abc: $07
	rlca                                             ; $6abd: $07
	ld   b, $06                                      ; $6abe: $06 $06
	rlca                                             ; $6ac0: $07
	ld   b, $05                                      ; $6ac1: $06 $05
	dec  b                                           ; $6ac3: $05
	dec  b                                           ; $6ac4: $05
	dec  b                                           ; $6ac5: $05
	dec  b                                           ; $6ac6: $05
	dec  b                                           ; $6ac7: $05
	dec  b                                           ; $6ac8: $05
	dec  c                                           ; $6ac9: $0d
	ld   c, $06                                      ; $6aca: $0e $06
	rlca                                             ; $6acc: $07
	rlca                                             ; $6acd: $07
	rlca                                             ; $6ace: $07
	rlca                                             ; $6acf: $07
	rlca                                             ; $6ad0: $07
	rlca                                             ; $6ad1: $07
	ld   b, $06                                      ; $6ad2: $06 $06
	dec  b                                           ; $6ad4: $05
	dec  b                                           ; $6ad5: $05
	dec  b                                           ; $6ad6: $05
	dec  b                                           ; $6ad7: $05
	dec  b                                           ; $6ad8: $05
	dec  b                                           ; $6ad9: $05
	dec  b                                           ; $6ada: $05
	dec  b                                           ; $6adb: $05
	dec  b                                           ; $6adc: $05
	dec  c                                           ; $6add: $0d
	ld   c, $06                                      ; $6ade: $0e $06
	ld   b, $07                                      ; $6ae0: $06 $07
	ld   b, $06                                      ; $6ae2: $06 $06
	ld   b, $06                                      ; $6ae4: $06 $06
	dec  b                                           ; $6ae6: $05
	dec  b                                           ; $6ae7: $05
	dec  b                                           ; $6ae8: $05
	dec  b                                           ; $6ae9: $05
	dec  b                                           ; $6aea: $05
	dec  b                                           ; $6aeb: $05
	dec  b                                           ; $6aec: $05
	dec  b                                           ; $6aed: $05
	dec  b                                           ; $6aee: $05
	dec  c                                           ; $6aef: $0d
	dec  c                                           ; $6af0: $0d
	dec  c                                           ; $6af1: $0d
	ld   c, $0d                                      ; $6af2: $0e $0d
	ld   c, $0e                                      ; $6af4: $0e $0e
	ld   c, $0d                                      ; $6af6: $0e $0d
	dec  c                                           ; $6af8: $0d
	dec  c                                           ; $6af9: $0d
	dec  c                                           ; $6afa: $0d
	dec  c                                           ; $6afb: $0d
	dec  c                                           ; $6afc: $0d
	dec  c                                           ; $6afd: $0d
	dec  c                                           ; $6afe: $0d
	dec  c                                           ; $6aff: $0d
	dec  c                                           ; $6b00: $0d
	dec  c                                           ; $6b01: $0d
	dec  c                                           ; $6b02: $0d
	dec  c                                           ; $6b03: $0d
	dec  c                                           ; $6b04: $0d
	dec  c                                           ; $6b05: $0d
	dec  c                                           ; $6b06: $0d
	dec  c                                           ; $6b07: $0d
	dec  c                                           ; $6b08: $0d
	dec  c                                           ; $6b09: $0d
	dec  c                                           ; $6b0a: $0d
	dec  c                                           ; $6b0b: $0d
	dec  c                                           ; $6b0c: $0d
	dec  c                                           ; $6b0d: $0d
	dec  c                                           ; $6b0e: $0d
	dec  c                                           ; $6b0f: $0d
	dec  c                                           ; $6b10: $0d
	dec  c                                           ; $6b11: $0d
	dec  c                                           ; $6b12: $0d
	dec  c                                           ; $6b13: $0d
	dec  c                                           ; $6b14: $0d
	dec  c                                           ; $6b15: $0d
	dec  c                                           ; $6b16: $0d
	dec  c                                           ; $6b17: $0d
	dec  c                                           ; $6b18: $0d
	dec  c                                           ; $6b19: $0d
	dec  c                                           ; $6b1a: $0d

Jump_0a0_6b1b:
	dec  c                                           ; $6b1b: $0d
	dec  c                                           ; $6b1c: $0d
	dec  c                                           ; $6b1d: $0d
	dec  c                                           ; $6b1e: $0d
	dec  c                                           ; $6b1f: $0d
	dec  c                                           ; $6b20: $0d
	dec  c                                           ; $6b21: $0d
	dec  c                                           ; $6b22: $0d
	dec  c                                           ; $6b23: $0d
	dec  c                                           ; $6b24: $0d
	dec  c                                           ; $6b25: $0d
	dec  c                                           ; $6b26: $0d
	dec  c                                           ; $6b27: $0d
	dec  c                                           ; $6b28: $0d
	dec  c                                           ; $6b29: $0d
	dec  c                                           ; $6b2a: $0d
	dec  c                                           ; $6b2b: $0d
	dec  c                                           ; $6b2c: $0d
	dec  c                                           ; $6b2d: $0d
	dec  c                                           ; $6b2e: $0d
	dec  c                                           ; $6b2f: $0d
	dec  c                                           ; $6b30: $0d
	dec  c                                           ; $6b31: $0d
	dec  c                                           ; $6b32: $0d
	dec  c                                           ; $6b33: $0d
	dec  c                                           ; $6b34: $0d
	dec  c                                           ; $6b35: $0d
	dec  c                                           ; $6b36: $0d
	dec  c                                           ; $6b37: $0d
	dec  c                                           ; $6b38: $0d
	dec  c                                           ; $6b39: $0d
	dec  c                                           ; $6b3a: $0d
	dec  c                                           ; $6b3b: $0d
	dec  c                                           ; $6b3c: $0d
	dec  c                                           ; $6b3d: $0d
	dec  c                                           ; $6b3e: $0d
	dec  c                                           ; $6b3f: $0d
	dec  c                                           ; $6b40: $0d
	dec  c                                           ; $6b41: $0d
	dec  c                                           ; $6b42: $0d
	dec  c                                           ; $6b43: $0d
	dec  c                                           ; $6b44: $0d
	dec  c                                           ; $6b45: $0d
	dec  c                                           ; $6b46: $0d
	dec  c                                           ; $6b47: $0d
	dec  c                                           ; $6b48: $0d
	dec  c                                           ; $6b49: $0d
	dec  c                                           ; $6b4a: $0d
	dec  c                                           ; $6b4b: $0d
	dec  c                                           ; $6b4c: $0d
	dec  c                                           ; $6b4d: $0d
	dec  c                                           ; $6b4e: $0d
	dec  c                                           ; $6b4f: $0d
	dec  c                                           ; $6b50: $0d
	dec  c                                           ; $6b51: $0d
	dec  c                                           ; $6b52: $0d
	dec  c                                           ; $6b53: $0d
	dec  c                                           ; $6b54: $0d
	dec  c                                           ; $6b55: $0d
	dec  c                                           ; $6b56: $0d
	dec  c                                           ; $6b57: $0d
	dec  c                                           ; $6b58: $0d
	dec  c                                           ; $6b59: $0d
	dec  c                                           ; $6b5a: $0d
	dec  c                                           ; $6b5b: $0d
	dec  c                                           ; $6b5c: $0d
	dec  c                                           ; $6b5d: $0d
	dec  c                                           ; $6b5e: $0d
	dec  c                                           ; $6b5f: $0d
	dec  c                                           ; $6b60: $0d
	dec  c                                           ; $6b61: $0d
	dec  b                                           ; $6b62: $05
	dec  c                                           ; $6b63: $0d
	dec  c                                           ; $6b64: $0d
	dec  c                                           ; $6b65: $0d
	dec  c                                           ; $6b66: $0d
	dec  c                                           ; $6b67: $0d
	dec  c                                           ; $6b68: $0d
	dec  c                                           ; $6b69: $0d
	dec  c                                           ; $6b6a: $0d
	dec  c                                           ; $6b6b: $0d
	dec  c                                           ; $6b6c: $0d
	dec  c                                           ; $6b6d: $0d
	dec  c                                           ; $6b6e: $0d
	dec  c                                           ; $6b6f: $0d
	dec  b                                           ; $6b70: $05
	dec  b                                           ; $6b71: $05
	dec  b                                           ; $6b72: $05
	dec  b                                           ; $6b73: $05
	dec  b                                           ; $6b74: $05
	dec  b                                           ; $6b75: $05
	dec  b                                           ; $6b76: $05
	dec  b                                           ; $6b77: $05
	dec  b                                           ; $6b78: $05
	dec  b                                           ; $6b79: $05
	dec  b                                           ; $6b7a: $05
	dec  b                                           ; $6b7b: $05
	dec  b                                           ; $6b7c: $05
	dec  c                                           ; $6b7d: $0d
	dec  c                                           ; $6b7e: $0d
	dec  b                                           ; $6b7f: $05
	dec  b                                           ; $6b80: $05
	dec  b                                           ; $6b81: $05
	dec  b                                           ; $6b82: $05
	dec  b                                           ; $6b83: $05
	dec  b                                           ; $6b84: $05
	dec  b                                           ; $6b85: $05
	dec  b                                           ; $6b86: $05
	dec  b                                           ; $6b87: $05
	dec  b                                           ; $6b88: $05
	dec  b                                           ; $6b89: $05
	dec  b                                           ; $6b8a: $05
	dec  b                                           ; $6b8b: $05
	dec  b                                           ; $6b8c: $05
	dec  b                                           ; $6b8d: $05
	dec  b                                           ; $6b8e: $05
	dec  b                                           ; $6b8f: $05
	dec  b                                           ; $6b90: $05
	dec  c                                           ; $6b91: $0d
	dec  c                                           ; $6b92: $0d
	dec  b                                           ; $6b93: $05
	dec  b                                           ; $6b94: $05
	dec  b                                           ; $6b95: $05
	dec  b                                           ; $6b96: $05
	dec  b                                           ; $6b97: $05
	dec  b                                           ; $6b98: $05
	dec  b                                           ; $6b99: $05
	dec  b                                           ; $6b9a: $05
	dec  b                                           ; $6b9b: $05
	dec  b                                           ; $6b9c: $05
	dec  b                                           ; $6b9d: $05
	dec  b                                           ; $6b9e: $05
	dec  b                                           ; $6b9f: $05
	dec  b                                           ; $6ba0: $05
	dec  b                                           ; $6ba1: $05
	dec  b                                           ; $6ba2: $05
	dec  b                                           ; $6ba3: $05
	dec  b                                           ; $6ba4: $05
	dec  b                                           ; $6ba5: $05
	dec  c                                           ; $6ba6: $0d
	dec  b                                           ; $6ba7: $05
	dec  b                                           ; $6ba8: $05
	dec  b                                           ; $6ba9: $05
	dec  b                                           ; $6baa: $05
	dec  b                                           ; $6bab: $05
	dec  b                                           ; $6bac: $05
	dec  b                                           ; $6bad: $05
	dec  b                                           ; $6bae: $05
	dec  b                                           ; $6baf: $05
	dec  b                                           ; $6bb0: $05
	dec  b                                           ; $6bb1: $05
	dec  b                                           ; $6bb2: $05
	dec  b                                           ; $6bb3: $05
	dec  b                                           ; $6bb4: $05
	dec  b                                           ; $6bb5: $05
	dec  b                                           ; $6bb6: $05
	dec  b                                           ; $6bb7: $05
	dec  b                                           ; $6bb8: $05
	dec  c                                           ; $6bb9: $0d
	dec  c                                           ; $6bba: $0d
	dec  b                                           ; $6bbb: $05
	dec  b                                           ; $6bbc: $05
	dec  b                                           ; $6bbd: $05
	dec  b                                           ; $6bbe: $05
	dec  b                                           ; $6bbf: $05
	dec  b                                           ; $6bc0: $05
	dec  b                                           ; $6bc1: $05
	dec  b                                           ; $6bc2: $05
	dec  b                                           ; $6bc3: $05
	dec  b                                           ; $6bc4: $05
	dec  b                                           ; $6bc5: $05
	dec  b                                           ; $6bc6: $05
	dec  b                                           ; $6bc7: $05
	dec  b                                           ; $6bc8: $05
	dec  b                                           ; $6bc9: $05
	dec  b                                           ; $6bca: $05
	dec  b                                           ; $6bcb: $05
	dec  b                                           ; $6bcc: $05
	dec  c                                           ; $6bcd: $0d
	dec  c                                           ; $6bce: $0d
	dec  b                                           ; $6bcf: $05
	dec  b                                           ; $6bd0: $05
	dec  b                                           ; $6bd1: $05
	dec  b                                           ; $6bd2: $05
	dec  b                                           ; $6bd3: $05
	dec  b                                           ; $6bd4: $05
	dec  b                                           ; $6bd5: $05
	dec  b                                           ; $6bd6: $05
	dec  b                                           ; $6bd7: $05
	dec  b                                           ; $6bd8: $05
	dec  b                                           ; $6bd9: $05
	dec  b                                           ; $6bda: $05
	dec  b                                           ; $6bdb: $05
	dec  b                                           ; $6bdc: $05
	dec  b                                           ; $6bdd: $05
	dec  b                                           ; $6bde: $05
	dec  b                                           ; $6bdf: $05
	dec  b                                           ; $6be0: $05
	dec  c                                           ; $6be1: $0d
	dec  c                                           ; $6be2: $0d
	dec  b                                           ; $6be3: $05
	dec  b                                           ; $6be4: $05
	dec  b                                           ; $6be5: $05
	dec  b                                           ; $6be6: $05
	dec  b                                           ; $6be7: $05
	dec  b                                           ; $6be8: $05
	dec  b                                           ; $6be9: $05
	dec  b                                           ; $6bea: $05
	dec  b                                           ; $6beb: $05
	dec  b                                           ; $6bec: $05
	dec  b                                           ; $6bed: $05
	dec  b                                           ; $6bee: $05
	dec  b                                           ; $6bef: $05
	dec  b                                           ; $6bf0: $05
	dec  b                                           ; $6bf1: $05
	dec  b                                           ; $6bf2: $05
	dec  b                                           ; $6bf3: $05
	dec  b                                           ; $6bf4: $05
	dec  c                                           ; $6bf5: $0d
	and  b                                           ; $6bf6: $a0
	jr   z, jr_0a0_6c22                              ; $6bf7: $28 $29

	ld   a, [hl+]                                    ; $6bf9: $2a
	ld   a, [hl+]                                    ; $6bfa: $2a
	ld   a, [hl+]                                    ; $6bfb: $2a
	dec  hl                                          ; $6bfc: $2b
	inc  l                                           ; $6bfd: $2c
	dec  l                                           ; $6bfe: $2d
	ld   l, $2f                                      ; $6bff: $2e $2f
	jr   nc, jr_0a0_6c34                             ; $6c01: $30 $31

	ld   [hl-], a                                    ; $6c03: $32
	inc  sp                                          ; $6c04: $33
	inc  [hl]                                        ; $6c05: $34
	dec  [hl]                                        ; $6c06: $35
	ld   [hl], $37                                   ; $6c07: $36 $37
	and  c                                           ; $6c09: $a1
	add  b                                           ; $6c0a: $80
	ld   a, [hl+]                                    ; $6c0b: $2a
	ld   a, [hl+]                                    ; $6c0c: $2a
	ld   a, [hl-]                                    ; $6c0d: $3a
	dec  sp                                          ; $6c0e: $3b
	inc  a                                           ; $6c0f: $3c
	dec  a                                           ; $6c10: $3d
	ld   a, [hl+]                                    ; $6c11: $2a
	ld   a, [hl+]                                    ; $6c12: $2a
	ld   a, [hl+]                                    ; $6c13: $2a
	ld   a, $3f                                      ; $6c14: $3e $3f
	ld   b, b                                        ; $6c16: $40
	ld   b, c                                        ; $6c17: $41
	ld   b, d                                        ; $6c18: $42
	ld   b, e                                        ; $6c19: $43
	ld   b, h                                        ; $6c1a: $44
	ld   b, l                                        ; $6c1b: $45
	ld   b, [hl]                                     ; $6c1c: $46
	sub  b                                           ; $6c1d: $90
	add  c                                           ; $6c1e: $81
	ld   c, c                                        ; $6c1f: $49
	ld   c, d                                        ; $6c20: $4a
	ld   c, e                                        ; $6c21: $4b

jr_0a0_6c22:
	ld   c, h                                        ; $6c22: $4c
	ld   c, l                                        ; $6c23: $4d
	ld   c, [hl]                                     ; $6c24: $4e
	ld   c, a                                        ; $6c25: $4f
	ld   d, b                                        ; $6c26: $50
	ld   d, c                                        ; $6c27: $51
	ld   d, d                                        ; $6c28: $52
	ld   d, e                                        ; $6c29: $53
	ld   d, h                                        ; $6c2a: $54
	ld   d, l                                        ; $6c2b: $55
	ld   d, [hl]                                     ; $6c2c: $56
	ld   d, a                                        ; $6c2d: $57
	ld   e, b                                        ; $6c2e: $58
	ld   e, c                                        ; $6c2f: $59
	ld   e, d                                        ; $6c30: $5a
	sub  c                                           ; $6c31: $91
	add  d                                           ; $6c32: $82
	ld   e, l                                        ; $6c33: $5d

jr_0a0_6c34:
	ld   e, [hl]                                     ; $6c34: $5e
	ld   e, a                                        ; $6c35: $5f
	ld   h, b                                        ; $6c36: $60
	ld   h, c                                        ; $6c37: $61
	ld   h, d                                        ; $6c38: $62
	ld   h, e                                        ; $6c39: $63
	ld   h, h                                        ; $6c3a: $64
	ld   h, l                                        ; $6c3b: $65
	ld   h, [hl]                                     ; $6c3c: $66
	ld   h, a                                        ; $6c3d: $67
	ld   l, b                                        ; $6c3e: $68
	ld   l, c                                        ; $6c3f: $69
	ld   l, d                                        ; $6c40: $6a
	ld   l, e                                        ; $6c41: $6b
	ld   l, h                                        ; $6c42: $6c
	ld   l, l                                        ; $6c43: $6d
	ld   l, [hl]                                     ; $6c44: $6e
	sub  d                                           ; $6c45: $92
	add  e                                           ; $6c46: $83
	ld   [hl], c                                     ; $6c47: $71
	ld   [hl], d                                     ; $6c48: $72
	ld   a, [hl+]                                    ; $6c49: $2a
	ld   [hl], e                                     ; $6c4a: $73
	ld   [hl], h                                     ; $6c4b: $74
	ld   [hl], l                                     ; $6c4c: $75
	halt                                             ; $6c4d: $76
	ld   [hl], a                                     ; $6c4e: $77
	ld   a, b                                        ; $6c4f: $78
	ld   a, c                                        ; $6c50: $79
	ld   a, d                                        ; $6c51: $7a
	ld   a, e                                        ; $6c52: $7b
	ld   a, h                                        ; $6c53: $7c
	ld   a, l                                        ; $6c54: $7d
	ld   a, [hl]                                     ; $6c55: $7e
	ld   a, a                                        ; $6c56: $7f
	nop                                              ; $6c57: $00
	ld   bc, $8493                                   ; $6c58: $01 $93 $84
	inc  b                                           ; $6c5b: $04
	dec  b                                           ; $6c5c: $05
	ld   b, $07                                      ; $6c5d: $06 $07
	ld   [$0a09], sp                                 ; $6c5f: $08 $09 $0a
	dec  bc                                          ; $6c62: $0b
	inc  c                                           ; $6c63: $0c
	dec  c                                           ; $6c64: $0d
	ld   c, $0f                                      ; $6c65: $0e $0f
	db   $10                                         ; $6c67: $10
	ld   de, $1312                                   ; $6c68: $11 $12 $13
	inc  d                                           ; $6c6b: $14
	dec  d                                           ; $6c6c: $15
	sub  h                                           ; $6c6d: $94
	add  l                                           ; $6c6e: $85
	jr   jr_0a0_6c8a                                 ; $6c6f: $18 $19

	ld   a, [de]                                     ; $6c71: $1a
	dec  de                                          ; $6c72: $1b
	inc  e                                           ; $6c73: $1c
	dec  e                                           ; $6c74: $1d
	ld   e, $1f                                      ; $6c75: $1e $1f
	jr   nz, jr_0a0_6c9a                             ; $6c77: $20 $21

	ld   [hl+], a                                    ; $6c79: $22
	inc  hl                                          ; $6c7a: $23
	inc  h                                           ; $6c7b: $24
	dec  h                                           ; $6c7c: $25
	ld   h, $27                                      ; $6c7d: $26 $27
	jr   z, jr_0a0_6caa                              ; $6c7f: $28 $29

	sub  l                                           ; $6c81: $95
	add  [hl]                                        ; $6c82: $86
	inc  l                                           ; $6c83: $2c
	dec  l                                           ; $6c84: $2d
	ld   l, $2f                                      ; $6c85: $2e $2f
	jr   nc, jr_0a0_6cba                             ; $6c87: $30 $31

	ld   [hl-], a                                    ; $6c89: $32

jr_0a0_6c8a:
	inc  sp                                          ; $6c8a: $33
	inc  [hl]                                        ; $6c8b: $34
	dec  [hl]                                        ; $6c8c: $35
	ld   [hl], $37                                   ; $6c8d: $36 $37
	jr   c, jr_0a0_6cca                              ; $6c8f: $38 $39

	ld   a, [hl-]                                    ; $6c91: $3a
	dec  sp                                          ; $6c92: $3b
	inc  a                                           ; $6c93: $3c
	dec  a                                           ; $6c94: $3d
	sub  [hl]                                        ; $6c95: $96
	add  a                                           ; $6c96: $87
	ld   b, b                                        ; $6c97: $40
	ld   b, c                                        ; $6c98: $41
	ld   b, d                                        ; $6c99: $42

jr_0a0_6c9a:
	ld   b, e                                        ; $6c9a: $43
	ld   b, h                                        ; $6c9b: $44
	ld   b, l                                        ; $6c9c: $45
	ld   b, [hl]                                     ; $6c9d: $46
	ld   b, a                                        ; $6c9e: $47
	ld   c, b                                        ; $6c9f: $48
	ld   c, c                                        ; $6ca0: $49
	ld   c, d                                        ; $6ca1: $4a
	ld   c, e                                        ; $6ca2: $4b
	ld   c, h                                        ; $6ca3: $4c
	ld   c, l                                        ; $6ca4: $4d
	ld   c, [hl]                                     ; $6ca5: $4e
	ld   c, a                                        ; $6ca6: $4f
	ld   d, b                                        ; $6ca7: $50
	ld   d, c                                        ; $6ca8: $51
	sub  a                                           ; $6ca9: $97

jr_0a0_6caa:
	adc  b                                           ; $6caa: $88
	ld   d, h                                        ; $6cab: $54
	ld   d, l                                        ; $6cac: $55
	ld   d, [hl]                                     ; $6cad: $56
	ld   d, a                                        ; $6cae: $57
	ld   e, b                                        ; $6caf: $58
	ld   e, c                                        ; $6cb0: $59
	ld   e, d                                        ; $6cb1: $5a
	ld   e, e                                        ; $6cb2: $5b
	ld   e, h                                        ; $6cb3: $5c
	ld   e, l                                        ; $6cb4: $5d
	ld   e, [hl]                                     ; $6cb5: $5e
	ld   e, a                                        ; $6cb6: $5f
	ld   h, b                                        ; $6cb7: $60
	ld   h, c                                        ; $6cb8: $61
	ld   h, d                                        ; $6cb9: $62

jr_0a0_6cba:
	ld   h, e                                        ; $6cba: $63
	ld   h, h                                        ; $6cbb: $64
	ld   h, l                                        ; $6cbc: $65
	sbc  b                                           ; $6cbd: $98
	adc  c                                           ; $6cbe: $89
	ld   l, b                                        ; $6cbf: $68
	ld   l, c                                        ; $6cc0: $69
	ld   l, d                                        ; $6cc1: $6a
	ld   l, e                                        ; $6cc2: $6b
	ld   l, h                                        ; $6cc3: $6c
	ld   l, l                                        ; $6cc4: $6d
	ld   l, [hl]                                     ; $6cc5: $6e
	ld   l, a                                        ; $6cc6: $6f
	ld   [hl], b                                     ; $6cc7: $70
	ld   [hl], c                                     ; $6cc8: $71
	ld   [hl], d                                     ; $6cc9: $72

jr_0a0_6cca:
	ld   a, [hl+]                                    ; $6cca: $2a
	ld   [hl], e                                     ; $6ccb: $73
	ld   [hl], h                                     ; $6ccc: $74
	ld   [hl], l                                     ; $6ccd: $75
	halt                                             ; $6cce: $76
	ld   [hl], a                                     ; $6ccf: $77
	ld   a, b                                        ; $6cd0: $78
	sbc  c                                           ; $6cd1: $99
	adc  d                                           ; $6cd2: $8a
	ld   a, e                                        ; $6cd3: $7b
	ld   a, h                                        ; $6cd4: $7c
	ld   a, l                                        ; $6cd5: $7d
	ld   a, [hl]                                     ; $6cd6: $7e
	ld   a, a                                        ; $6cd7: $7f
	add  b                                           ; $6cd8: $80
	add  c                                           ; $6cd9: $81
	add  d                                           ; $6cda: $82
	add  e                                           ; $6cdb: $83
	add  h                                           ; $6cdc: $84
	add  l                                           ; $6cdd: $85
	add  [hl]                                        ; $6cde: $86
	add  a                                           ; $6cdf: $87
	adc  b                                           ; $6ce0: $88
	adc  c                                           ; $6ce1: $89
	adc  d                                           ; $6ce2: $8a
	adc  e                                           ; $6ce3: $8b
	adc  h                                           ; $6ce4: $8c
	sbc  d                                           ; $6ce5: $9a
	adc  e                                           ; $6ce6: $8b
	adc  a                                           ; $6ce7: $8f
	sub  b                                           ; $6ce8: $90
	sub  c                                           ; $6ce9: $91
	sub  d                                           ; $6cea: $92
	sub  e                                           ; $6ceb: $93
	sub  h                                           ; $6cec: $94
	sub  l                                           ; $6ced: $95
	sub  [hl]                                        ; $6cee: $96
	sub  a                                           ; $6cef: $97
	sbc  b                                           ; $6cf0: $98
	sbc  c                                           ; $6cf1: $99
	sbc  d                                           ; $6cf2: $9a
	sbc  e                                           ; $6cf3: $9b
	sbc  h                                           ; $6cf4: $9c
	sbc  l                                           ; $6cf5: $9d
	sbc  [hl]                                        ; $6cf6: $9e
	sbc  a                                           ; $6cf7: $9f
	and  b                                           ; $6cf8: $a0
	sbc  e                                           ; $6cf9: $9b
	adc  h                                           ; $6cfa: $8c
	and  e                                           ; $6cfb: $a3
	and  h                                           ; $6cfc: $a4
	and  l                                           ; $6cfd: $a5
	and  [hl]                                        ; $6cfe: $a6
	and  a                                           ; $6cff: $a7
	xor  b                                           ; $6d00: $a8
	xor  c                                           ; $6d01: $a9
	xor  d                                           ; $6d02: $aa
	xor  e                                           ; $6d03: $ab
	xor  h                                           ; $6d04: $ac
	xor  l                                           ; $6d05: $ad
	xor  [hl]                                        ; $6d06: $ae
	xor  a                                           ; $6d07: $af
	or   b                                           ; $6d08: $b0
	adc  c                                           ; $6d09: $89
	adc  d                                           ; $6d0a: $8a
	adc  e                                           ; $6d0b: $8b
	or   c                                           ; $6d0c: $b1
	adc  d                                           ; $6d0d: $8a
	adc  l                                           ; $6d0e: $8d
	or   e                                           ; $6d0f: $b3
	or   h                                           ; $6d10: $b4
	or   l                                           ; $6d11: $b5
	or   [hl]                                        ; $6d12: $b6
	or   a                                           ; $6d13: $b7
	cp   b                                           ; $6d14: $b8
	cp   c                                           ; $6d15: $b9
	cp   d                                           ; $6d16: $ba
	cp   e                                           ; $6d17: $bb
	cp   h                                           ; $6d18: $bc
	cp   l                                           ; $6d19: $bd
	cp   [hl]                                        ; $6d1a: $be
	cp   a                                           ; $6d1b: $bf
	ret  nz                                          ; $6d1c: $c0

	pop  bc                                          ; $6d1d: $c1
	jp   nz, $c4c3                                   ; $6d1e: $c2 $c3 $c4

	sbc  h                                           ; $6d21: $9c
	adc  [hl]                                        ; $6d22: $8e
	rst  ToBoot                                         ; $6d23: $c7
	ret  z                                           ; $6d24: $c8

	ret                                              ; $6d25: $c9


	jp   z, $cccb                                    ; $6d26: $ca $cb $cc

	call $cfce                                       ; $6d29: $cd $ce $cf
	ret  nc                                          ; $6d2c: $d0

	pop  de                                          ; $6d2d: $d1

jr_0a0_6d2e:
	jp   nc, $d4d3                                   ; $6d2e: $d2 $d3 $d4

	adc  c                                           ; $6d31: $89
	adc  d                                           ; $6d32: $8a
	push de                                          ; $6d33: $d5
	sub  $9d                                         ; $6d34: $d6 $9d
	adc  a                                           ; $6d36: $8f
	reti                                             ; $6d37: $d9


	jp   c, $dcdb                                    ; $6d38: $da $db $dc

	db   $dd                                         ; $6d3b: $dd
	sbc  $df                                         ; $6d3c: $de $df
	ldh  [$e1], a                                    ; $6d3e: $e0 $e1
	ldh  [c], a                                      ; $6d40: $e2
	db   $e3                                         ; $6d41: $e3
	db   $e4                                         ; $6d42: $e4
	push hl                                          ; $6d43: $e5
	and  $e7                                         ; $6d44: $e6 $e7
	add  sp, -$17                                    ; $6d46: $e8 $e9
	ld   [$a29e], a                                  ; $6d48: $ea $9e $a2
	db   $ed                                         ; $6d4b: $ed
	xor  $ef                                         ; $6d4c: $ee $ef
	ldh  a, [$f1]                                    ; $6d4e: $f0 $f1
	ldh  a, [c]                                      ; $6d50: $f2
	di                                               ; $6d51: $f3
	db   $f4                                         ; $6d52: $f4
	push af                                          ; $6d53: $f5
	or   $f7                                         ; $6d54: $f6 $f7
	ld   hl, sp-$07                                  ; $6d56: $f8 $f9
	ld   a, [$fcfb]                                  ; $6d58: $fa $fb $fc
	db   $fd                                         ; $6d5b: $fd
	cp   $a3                                         ; $6d5c: $fe $a3
	sub  b                                           ; $6d5e: $90
	nop                                              ; $6d5f: $00
	ld   a, [bc]                                     ; $6d60: $0a
	jr   jr_0a0_6d63                                 ; $6d61: $18 $00

jr_0a0_6d63:
	inc  h                                           ; $6d63: $24
	jr   jr_0a0_6dc4                                 ; $6d64: $18 $5e

	inc  a                                           ; $6d66: $3c
	inc  [hl]                                        ; $6d67: $34
	inc  a                                           ; $6d68: $3c
	cp   h                                           ; $6d69: $bc
	ld   a, h                                        ; $6d6a: $7c
	ld   l, a                                        ; $6d6b: $6f
	add  b                                           ; $6d6c: $80
	ld   a, d                                        ; $6d6d: $7a
	ld   [$6b6a], sp                                 ; $6d6e: $08 $6a $6b
	ld   h, c                                        ; $6d71: $61
	ld   [hl], c                                     ; $6d72: $71
	ld   [hl], b                                     ; $6d73: $70
	ld   h, b                                        ; $6d74: $60
	ld   h, c                                        ; $6d75: $61
	ld   sp, hl                                      ; $6d76: $f9
	dec  sp                                          ; $6d77: $3b
	add  b                                           ; $6d78: $80
	ccf                                              ; $6d79: $3f
	ld   [$1f7f], sp                                 ; $6d7a: $08 $7f $1f
	dec  a                                           ; $6d7d: $3d
	rrca                                             ; $6d7e: $0f
	ld   e, $03                                      ; $6d7f: $1e $03
	rrca                                             ; $6d81: $0f
	nop                                              ; $6d82: $00
	inc  bc                                          ; $6d83: $03
	add  a                                           ; $6d84: $87
	nop                                              ; $6d85: $00
	add  b                                           ; $6d86: $80
	inc  b                                           ; $6d87: $04
	add  b                                           ; $6d88: $80
	inc  d                                           ; $6d89: $14
	add  b                                           ; $6d8a: $80
	ld   e, $03                                      ; $6d8b: $1e $03
	dec  bc                                          ; $6d8d: $0b
	rrca                                             ; $6d8e: $0f
	ld   a, [de]                                     ; $6d8f: $1a
	ld   e, $80                                      ; $6d90: $1e $80
	inc  b                                           ; $6d92: $04
	adc  b                                           ; $6d93: $88
	nop                                              ; $6d94: $00
	ld   [$002a], sp                                 ; $6d95: $08 $2a $00
	ld   a, a                                        ; $6d98: $7f
	nop                                              ; $6d99: $00
	ld   e, a                                        ; $6d9a: $5f
	nop                                              ; $6d9b: $00
	rrca                                             ; $6d9c: $0f
	nop                                              ; $6d9d: $00
	dec  b                                           ; $6d9e: $05
	sub  l                                           ; $6d9f: $95
	nop                                              ; $6da0: $00
	ld   bc, $0102                                   ; $6da1: $01 $02 $01
	add  b                                           ; $6da4: $80
	nop                                              ; $6da5: $00
	jr   jr_0a0_6d2e                                 ; $6da6: $18 $86

	inc  bc                                          ; $6da8: $03
	jp   $fd83                                       ; $6da9: $c3 $83 $fd


	rst  ToBoot                                         ; $6dac: $c7
	ld   sp, hl                                      ; $6dad: $f9
	ei                                               ; $6dae: $fb
	push af                                          ; $6daf: $f5
	db   $fd                                         ; $6db0: $fd
	ld   sp, hl                                      ; $6db1: $f9
	db   $fd                                         ; $6db2: $fd
	db   $ed                                         ; $6db3: $ed
	rst  $28                                         ; $6db4: $ef
	rst  $38                                         ; $6db5: $ff
	rst  $30                                         ; $6db6: $f7
	ld   [hl], a                                     ; $6db7: $77
	rst  $30                                         ; $6db8: $f7
	and  a                                           ; $6db9: $a7
	ld   hl, $00cd                                   ; $6dba: $21 $cd $00
	inc  l                                           ; $6dbd: $2c
	nop                                              ; $6dbe: $00
	rra                                              ; $6dbf: $1f
	add  a                                           ; $6dc0: $87
	nop                                              ; $6dc1: $00
	jr   z, jr_0a0_6dc5                              ; $6dc2: $28 $01

jr_0a0_6dc4:
	nop                                              ; $6dc4: $00

jr_0a0_6dc5:
	ld   [bc], a                                     ; $6dc5: $02
	ld   bc, $0205                                   ; $6dc6: $01 $05 $02
	dec  bc                                          ; $6dc9: $0b
	dec  b                                           ; $6dca: $05
	rla                                              ; $6dcb: $17
	dec  bc                                          ; $6dcc: $0b
	cpl                                              ; $6dcd: $2f
	rla                                              ; $6dce: $17
	ld   e, a                                        ; $6dcf: $5f
	cpl                                              ; $6dd0: $2f
	xor  a                                           ; $6dd1: $af
	ld   l, a                                        ; $6dd2: $6f
	and  $36                                         ; $6dd3: $e6 $36
	ld   [hl], d                                     ; $6dd5: $72
	ld   a, [de]                                     ; $6dd6: $1a
	add  hl, sp                                      ; $6dd7: $39
	ld   [$001e], sp                                 ; $6dd8: $08 $1e $00
	ld   [$4100], sp                                 ; $6ddb: $08 $00 $41
	nop                                              ; $6dde: $00
	db   $eb                                         ; $6ddf: $eb
	nop                                              ; $6de0: $00
	rst  $38                                         ; $6de1: $ff
	nop                                              ; $6de2: $00
	rst  $38                                         ; $6de3: $ff
	nop                                              ; $6de4: $00
	cp   a                                           ; $6de5: $bf
	nop                                              ; $6de6: $00
	dec  d                                           ; $6de7: $15
	nop                                              ; $6de8: $00
	ld   bc, $0100                                   ; $6de9: $01 $00 $01
	adc  a                                           ; $6dec: $8f
	nop                                              ; $6ded: $00
	nop                                              ; $6dee: $00
	ld   bc, $0087                                   ; $6def: $01 $87 $00
	ld   [bc], a                                     ; $6df2: $02
	ld   b, $00                                      ; $6df3: $06 $00
	ld   [bc], a                                     ; $6df5: $02
	add  c                                           ; $6df6: $81
	nop                                              ; $6df7: $00
	dec  b                                           ; $6df8: $05
	ld   [bc], a                                     ; $6df9: $02
	nop                                              ; $6dfa: $00
	ld   b, $00                                      ; $6dfb: $06 $00
	inc  bc                                          ; $6dfd: $03
	ld   bc, $0080                                   ; $6dfe: $01 $80 $00
	ld   [de], a                                     ; $6e01: $12
	add  [hl]                                        ; $6e02: $86
	inc  bc                                          ; $6e03: $03
	jp   $fd83                                       ; $6e04: $c3 $83 $fd


jr_0a0_6e07:
	rst  ToBoot                                         ; $6e07: $c7
	ld   sp, hl                                      ; $6e08: $f9
	ei                                               ; $6e09: $fb
	cp   $00                                         ; $6e0a: $fe $00
	ld   [bc], a                                     ; $6e0c: $02
	nop                                              ; $6e0d: $00
	ld   b, $00                                      ; $6e0e: $06 $00
	ld   c, $00                                      ; $6e10: $0e $00
	ld   e, $00                                      ; $6e12: $1e $00
	inc  a                                           ; $6e14: $3c
	add  b                                           ; $6e15: $80
	nop                                              ; $6e16: $00
	ld   bc, $7a02                                   ; $6e17: $01 $02 $7a
	add  b                                           ; $6e1a: $80
	ld   [bc], a                                     ; $6e1b: $02
	add  e                                           ; $6e1c: $83
	nop                                              ; $6e1d: $00
	nop                                              ; $6e1e: $00
	ld   d, b                                        ; $6e1f: $50
	sub  h                                           ; $6e20: $94
	nop                                              ; $6e21: $00
	add  b                                           ; $6e22: $80
	inc  c                                           ; $6e23: $0c
	sbc  c                                           ; $6e24: $99
	nop                                              ; $6e25: $00
	rlca                                             ; $6e26: $07
	rra                                              ; $6e27: $1f
	nop                                              ; $6e28: $00
	ccf                                              ; $6e29: $3f
	rra                                              ; $6e2a: $1f

jr_0a0_6e2b:
	ld   a, a                                        ; $6e2b: $7f
	ccf                                              ; $6e2c: $3f
	rst  $38                                         ; $6e2d: $ff
	ld   a, a                                        ; $6e2e: $7f
	add  b                                           ; $6e2f: $80
	ld   e, a                                        ; $6e30: $5f
	add  b                                           ; $6e31: $80
	ld   b, b                                        ; $6e32: $40
	inc  bc                                          ; $6e33: $03
	ld   e, a                                        ; $6e34: $5f
	ld   b, b                                        ; $6e35: $40
	ld   e, a                                        ; $6e36: $5f
	ld   b, b                                        ; $6e37: $40
	add  b                                           ; $6e38: $80
	sbc  a                                           ; $6e39: $9f
	inc  b                                           ; $6e3a: $04
	ld   e, a                                        ; $6e3b: $5f
	ld   b, b                                        ; $6e3c: $40
	pop  de                                          ; $6e3d: $d1
	ret  nz                                          ; $6e3e: $c0

	pop  af                                          ; $6e3f: $f1
	adc  c                                           ; $6e40: $89
	nop                                              ; $6e41: $00
	ld   a, [bc]                                     ; $6e42: $0a
	add  a                                           ; $6e43: $87
	nop                                              ; $6e44: $00
	ld   a, e                                        ; $6e45: $7b
	add  e                                           ; $6e46: $83
	sbc  h                                           ; $6e47: $9c
	ret  nz                                          ; $6e48: $c0

	rst  ToBoot                                         ; $6e49: $c7
	ld   b, b                                        ; $6e4a: $40
	ld   c, h                                        ; $6e4b: $4c
	ld   b, b                                        ; $6e4c: $40
	ld   c, b                                        ; $6e4d: $48
	add  c                                           ; $6e4e: $81
	ld   b, b                                        ; $6e4f: $40
	ld   b, $50                                      ; $6e50: $06 $50
	jr   nz, @+$2e                                   ; $6e52: $20 $2c

	nop                                              ; $6e54: $00
	add  e                                           ; $6e55: $83
	add  b                                           ; $6e56: $80
	ld   a, $81                                      ; $6e57: $3e $81
	nop                                              ; $6e59: $00
	ld   b, $22                                      ; $6e5a: $06 $22
	nop                                              ; $6e5c: $00
	jr   nz, jr_0a0_6e60                             ; $6e5d: $20 $01

	dec  b                                           ; $6e5f: $05

jr_0a0_6e60:
	ld   [bc], a                                     ; $6e60: $02
	ld   c, d                                        ; $6e61: $4a
	add  b                                           ; $6e62: $80
	ld   [bc], a                                     ; $6e63: $02
	dec  c                                           ; $6e64: $0d
	ld   b, $16                                      ; $6e65: $06 $16
	inc  b                                           ; $6e67: $04
	inc  h                                           ; $6e68: $24
	inc  c                                           ; $6e69: $0c
	ld   c, [hl]                                     ; $6e6a: $4e
	jr   @-$66                                       ; $6e6b: $18 $98

	jr   c, jr_0a0_6e2b                              ; $6e6d: $38 $bc

	ld   [hl], b                                     ; $6e6f: $70
	ld   a, b                                        ; $6e70: $78
	ldh  [$e3], a                                    ; $6e71: $e0 $e3
	add  c                                           ; $6e73: $81
	ret  nz                                          ; $6e74: $c0

	inc  bc                                          ; $6e75: $03
	pop  hl                                          ; $6e76: $e1
	add  b                                           ; $6e77: $80
	ld   d, e                                        ; $6e78: $53
	nop                                              ; $6e79: $00
	add  d                                           ; $6e7a: $82
	ld   [bc], a                                     ; $6e7b: $02
	add  b                                           ; $6e7c: $80
	ld   b, $80                                      ; $6e7d: $06 $80
	ld   c, $84                                      ; $6e7f: $0e $84
	dec  c                                           ; $6e81: $0d
	add  d                                           ; $6e82: $82
	inc  c                                           ; $6e83: $0c
	adc  d                                           ; $6e84: $8a
	jr   jr_0a0_6e07                                 ; $6e85: $18 $80

	inc  e                                           ; $6e87: $1c
	add  b                                           ; $6e88: $80
	inc  c                                           ; $6e89: $0c
	add  b                                           ; $6e8a: $80
	ld   [bc], a                                     ; $6e8b: $02
	inc  b                                           ; $6e8c: $04
	ld   a, [bc]                                     ; $6e8d: $0a
	ld   [$0004], sp                                 ; $6e8e: $08 $04 $00
	ld   b, $93                                      ; $6e91: $06 $93
	nop                                              ; $6e93: $00
	ld   [hl+], a                                    ; $6e94: $22
	db   $d3                                         ; $6e95: $d3
	nop                                              ; $6e96: $00
	ld   b, b                                        ; $6e97: $40
	nop                                              ; $6e98: $00
	ld   [hl], $00                                   ; $6e99: $36 $00
	add  c                                           ; $6e9b: $81
	nop                                              ; $6e9c: $00
	ld   bc, $0100                                   ; $6e9d: $01 $00 $01
	nop                                              ; $6ea0: $00

jr_0a0_6ea1:
	ld   bc, $0300                                   ; $6ea1: $01 $00 $03
	nop                                              ; $6ea4: $00
	ld   b, l                                        ; $6ea5: $45
	nop                                              ; $6ea6: $00
	ret  nc                                          ; $6ea7: $d0

	nop                                              ; $6ea8: $00
	xor  $00                                         ; $6ea9: $ee $00
	add  sp, $00                                     ; $6eab: $e8 $00
	db   $ec                                         ; $6ead: $ec
	nop                                              ; $6eae: $00
	or   $00                                         ; $6eaf: $f6 $00
	ld   a, [$5f00]                                  ; $6eb1: $fa $00 $5f
	nop                                              ; $6eb4: $00
	ld   l, d                                        ; $6eb5: $6a
	add  b                                           ; $6eb6: $80
	sub  b                                           ; $6eb7: $90
	add  c                                           ; $6eb8: $81
	and  b                                           ; $6eb9: $a0
	rlca                                             ; $6eba: $07
	jr   nz, jr_0a0_6efd                             ; $6ebb: $20 $40

jr_0a0_6ebd:
	ld   e, h                                        ; $6ebd: $5c
	adc  h                                           ; $6ebe: $8c
	jp   nz, $d142                                   ; $6ebf: $c2 $42 $d1

	pop  bc                                          ; $6ec2: $c1
	add  b                                           ; $6ec3: $80
	add  b                                           ; $6ec4: $80
	nop                                              ; $6ec5: $00
	nop                                              ; $6ec6: $00
	add  b                                           ; $6ec7: $80
	ld   h, b                                        ; $6ec8: $60
	add  e                                           ; $6ec9: $83
	ldh  [rP1], a                                    ; $6eca: $e0 $00
	ldh  a, [$82]                                    ; $6ecc: $f0 $82
	ret  nz                                          ; $6ece: $c0

	add  b                                           ; $6ecf: $80
	ld   b, b                                        ; $6ed0: $40
	dec  de                                          ; $6ed1: $1b
	add  b                                           ; $6ed2: $80
	and  b                                           ; $6ed3: $a0
	nop                                              ; $6ed4: $00
	jr   nc, jr_0a0_6f17                             ; $6ed5: $30 $40

	call z, $b2b0                                    ; $6ed7: $cc $b0 $b2
	cp   h                                           ; $6eda: $bc
	ld   a, l                                        ; $6edb: $7d
	sbc  $fe                                         ; $6edc: $de $fe
	rst  $28                                         ; $6ede: $ef
	xor  e                                           ; $6edf: $ab
	rst  $28                                         ; $6ee0: $ef
	reti                                             ; $6ee1: $d9


	rst  $38                                         ; $6ee2: $ff
	ld   l, $ff                                      ; $6ee3: $2e $ff
	dec  h                                           ; $6ee5: $25
	rra                                              ; $6ee6: $1f
	db   $e3                                         ; $6ee7: $e3
	ld   b, $19                                      ; $6ee8: $06 $19
	inc  bc                                          ; $6eea: $03
	inc  b                                           ; $6eeb: $04
	ld   bc, $8102                                   ; $6eec: $01 $02 $81
	nop                                              ; $6eef: $00
	nop                                              ; $6ef0: $00
	ld   bc, $0081                                   ; $6ef1: $01 $81 $00
	add  hl, bc                                      ; $6ef4: $09
	add  b                                           ; $6ef5: $80
	nop                                              ; $6ef6: $00
	ld   b, b                                        ; $6ef7: $40
	add  b                                           ; $6ef8: $80
	and  b                                           ; $6ef9: $a0
	ret  nz                                          ; $6efa: $c0

	ld   d, b                                        ; $6efb: $50
	ld   h, b                                        ; $6efc: $60

jr_0a0_6efd:
	jr   z, jr_0a0_6f2f                              ; $6efd: $28 $30

	add  b                                           ; $6eff: $80
	db   $10                                         ; $6f00: $10
	inc  c                                           ; $6f01: $0c
	inc  d                                           ; $6f02: $14
	jr   c, jr_0a0_6ebd                              ; $6f03: $38 $b8

	ld   hl, sp+$68                                  ; $6f05: $f8 $68
	ld   hl, sp-$10                                  ; $6f07: $f8 $f0
	ld   hl, sp+$54                                  ; $6f09: $f8 $54
	ld   [hl], b                                     ; $6f0b: $70
	ld   b, b                                        ; $6f0c: $40
	ld   [hl], b                                     ; $6f0d: $70
	and  b                                           ; $6f0e: $a0
	add  c                                           ; $6f0f: $81
	jr   nc, jr_0a0_6f14                             ; $6f10: $30 $02

jr_0a0_6f12:
	ld   c, b                                        ; $6f12: $48
	nop                                              ; $6f13: $00

jr_0a0_6f14:
	jr   nc, jr_0a0_6ea1                             ; $6f14: $30 $8b

	nop                                              ; $6f16: $00

jr_0a0_6f17:
	add  b                                           ; $6f17: $80
	ld   b, b                                        ; $6f18: $40
	add  b                                           ; $6f19: $80
	ld   h, b                                        ; $6f1a: $60
	inc  bc                                          ; $6f1b: $03
	ret  nc                                          ; $6f1c: $d0

	ldh  a, [rLCDC]                                  ; $6f1d: $f0 $40
	ld   h, b                                        ; $6f1f: $60

Jump_0a0_6f20:
	adc  b                                           ; $6f20: $88
	nop                                              ; $6f21: $00
	add  d                                           ; $6f22: $82
	add  b                                           ; $6f23: $80
	add  d                                           ; $6f24: $82
	ld   b, b                                        ; $6f25: $40
	ld   [bc], a                                     ; $6f26: $02
	ld   h, b                                        ; $6f27: $60
	nop                                              ; $6f28: $00
	ldh  a, [$81]                                    ; $6f29: $f0 $81
	ld   h, b                                        ; $6f2b: $60
	ld   [bc], a                                     ; $6f2c: $02
	stop                                             ; $6f2d: $10 $00

jr_0a0_6f2f:
	ldh  [$95], a                                    ; $6f2f: $e0 $95
	nop                                              ; $6f31: $00
	add  b                                           ; $6f32: $80
	ld   [$0480], sp                                 ; $6f33: $08 $80 $04
	add  h                                           ; $6f36: $84
	nop                                              ; $6f37: $00
	add  [hl]                                        ; $6f38: $86
	add  b                                           ; $6f39: $80
	add  b                                           ; $6f3a: $80
	nop                                              ; $6f3b: $00
	nop                                              ; $6f3c: $00
	add  b                                           ; $6f3d: $80
	add  c                                           ; $6f3e: $81
	nop                                              ; $6f3f: $00
	nop                                              ; $6f40: $00
	ld   b, b                                        ; $6f41: $40
	add  e                                           ; $6f42: $83
	add  b                                           ; $6f43: $80
	dec  d                                           ; $6f44: $15
	and  b                                           ; $6f45: $a0
	ret  nz                                          ; $6f46: $c0

	ret  nc                                          ; $6f47: $d0

	ld   h, b                                        ; $6f48: $60
	ld   l, b                                        ; $6f49: $68
	ld   [hl], b                                     ; $6f4a: $70
	ld   a, h                                        ; $6f4b: $7c
	jr   nc, jr_0a0_6fcc                             ; $6f4c: $30 $7e

	ld   e, b                                        ; $6f4e: $58
	dec  a                                           ; $6f4f: $3d
	ld   l, $1e                                      ; $6f50: $2e $1e
	rla                                              ; $6f52: $17
	rrca                                             ; $6f53: $0f
	dec  bc                                          ; $6f54: $0b
	add  a                                           ; $6f55: $87
	dec  b                                           ; $6f56: $05
	daa                                              ; $6f57: $27
	ld   b, $1a                                      ; $6f58: $06 $1a
	ld   [bc], a                                     ; $6f5a: $02
	add  b                                           ; $6f5b: $80
	inc  bc                                          ; $6f5c: $03
	ld   [bc], a                                     ; $6f5d: $02
	add  e                                           ; $6f5e: $83
	inc  bc                                          ; $6f5f: $03
	add  l                                           ; $6f60: $85
	add  c                                           ; $6f61: $81
	ld   bc, $c11a                                   ; $6f62: $01 $1a $c1
	ld   bc, $0129                                   ; $6f65: $01 $29 $01
	cp   $00                                         ; $6f68: $fe $00
	cp   $00                                         ; $6f6a: $fe $00
	cp   $00                                         ; $6f6c: $fe $00
	rst  $38                                         ; $6f6e: $ff
	nop                                              ; $6f6f: $00
	rst  $38                                         ; $6f70: $ff
	nop                                              ; $6f71: $00
	rst  $38                                         ; $6f72: $ff
	nop                                              ; $6f73: $00
	rst  $38                                         ; $6f74: $ff
	nop                                              ; $6f75: $00
	db   $fd                                         ; $6f76: $fd
	nop                                              ; $6f77: $00
	ld   hl, sp+$00                                  ; $6f78: $f8 $00
	ldh  a, [rP1]                                    ; $6f7a: $f0 $00
	ldh  [rP1], a                                    ; $6f7c: $e0 $00
	ret  nz                                          ; $6f7e: $c0

	add  c                                           ; $6f7f: $81
	nop                                              ; $6f80: $00
	ld   [bc], a                                     ; $6f81: $02
	ld   b, b                                        ; $6f82: $40
	add  b                                           ; $6f83: $80
	and  b                                           ; $6f84: $a0
	add  c                                           ; $6f85: $81
	ret  nz                                          ; $6f86: $c0

	nop                                              ; $6f87: $00
	ret  nc                                          ; $6f88: $d0

	add  b                                           ; $6f89: $80
	ldh  [$80], a                                    ; $6f8a: $e0 $80
	ld   h, b                                        ; $6f8c: $60
	nop                                              ; $6f8d: $00
	jr   nz, jr_0a0_6f12                             ; $6f8e: $20 $82

	and  b                                           ; $6f90: $a0
	ld   e, $b1                                      ; $6f91: $1e $b1
	add  b                                           ; $6f93: $80
	ld   c, e                                        ; $6f94: $4b
	nop                                              ; $6f95: $00
	rst  $38                                         ; $6f96: $ff
	nop                                              ; $6f97: $00
	rst  $38                                         ; $6f98: $ff
	nop                                              ; $6f99: $00
	rst  $38                                         ; $6f9a: $ff
	nop                                              ; $6f9b: $00
	rst  $38                                         ; $6f9c: $ff
	nop                                              ; $6f9d: $00
	cp   $00                                         ; $6f9e: $fe $00
	ld   d, h                                        ; $6fa0: $54
	nop                                              ; $6fa1: $00
	add  b                                           ; $6fa2: $80
	nop                                              ; $6fa3: $00
	ret  nz                                          ; $6fa4: $c0

	nop                                              ; $6fa5: $00
	ret  nz                                          ; $6fa6: $c0

	nop                                              ; $6fa7: $00
	ret  nz                                          ; $6fa8: $c0

	nop                                              ; $6fa9: $00
	ldh  [rP1], a                                    ; $6faa: $e0 $00
	ldh  a, [rP1]                                    ; $6fac: $f0 $00
	ret  nc                                          ; $6fae: $d0

	nop                                              ; $6faf: $00
	add  b                                           ; $6fb0: $80
	adc  l                                           ; $6fb1: $8d
	nop                                              ; $6fb2: $00
	nop                                              ; $6fb3: $00
	rst  $38                                         ; $6fb4: $ff
	add  b                                           ; $6fb5: $80
	ld   a, a                                        ; $6fb6: $7f
	add  b                                           ; $6fb7: $80
	ld   e, a                                        ; $6fb8: $5f
	nop                                              ; $6fb9: $00
	ld   b, b                                        ; $6fba: $40
	add  b                                           ; $6fbb: $80
	ld   e, a                                        ; $6fbc: $5f
	add  c                                           ; $6fbd: $81
	ld   b, b                                        ; $6fbe: $40
	ld   [$809f], sp                                 ; $6fbf: $08 $9f $80
	ld   b, b                                        ; $6fc2: $40
	ld   d, c                                        ; $6fc3: $51
	ret  nz                                          ; $6fc4: $c0

	ld   [de], a                                     ; $6fc5: $12
	inc  e                                           ; $6fc6: $1c
	sbc  e                                           ; $6fc7: $9b
	dec  de                                          ; $6fc8: $1b
	add  b                                           ; $6fc9: $80
	rla                                              ; $6fca: $17
	add  d                                           ; $6fcb: $82

jr_0a0_6fcc:
	rra                                              ; $6fcc: $1f
	rrca                                             ; $6fcd: $0f
	ld   l, a                                        ; $6fce: $6f
	rrca                                             ; $6fcf: $0f
	inc  hl                                          ; $6fd0: $23
	inc  bc                                          ; $6fd1: $03
	add  b                                           ; $6fd2: $80
	nop                                              ; $6fd3: $00
	or   c                                           ; $6fd4: $b1
	nop                                              ; $6fd5: $00
	ld   c, $00                                      ; $6fd6: $0e $00
	ld   bc, $3800                                   ; $6fd8: $01 $00 $38
	nop                                              ; $6fdb: $00
	add  [hl]                                        ; $6fdc: $86
	add  b                                           ; $6fdd: $80
	add  b                                           ; $6fde: $80
	cp   l                                           ; $6fdf: $bd
	add  b                                           ; $6fe0: $80
	inc  c                                           ; $6fe1: $0c
	dec  c                                           ; $6fe2: $0d
	ld   bc, $8200                                   ; $6fe3: $01 $00 $82
	add  b                                           ; $6fe6: $80
	db   $e3                                         ; $6fe7: $e3
	ldh  [$e1], a                                    ; $6fe8: $e0 $e1
	rst  $20                                         ; $6fea: $e7
	push bc                                          ; $6feb: $c5
	rst  $10                                         ; $6fec: $d7
	db   $d3                                         ; $6fed: $d3
	rst  $10                                         ; $6fee: $d7
	sbc  d                                           ; $6fef: $9a
	cp   d                                           ; $6ff0: $ba
	add  b                                           ; $6ff1: $80
	cp   e                                           ; $6ff2: $bb
	add  d                                           ; $6ff3: $82
	cp   l                                           ; $6ff4: $bd
	add  c                                           ; $6ff5: $81
	ld   a, $17                                      ; $6ff6: $3e $17
	ld   a, [hl]                                     ; $6ff8: $7e
	ld   a, h                                        ; $6ff9: $7c
	ld   e, h                                        ; $6ffa: $5c
	ld   e, l                                        ; $6ffb: $5d
	inc  a                                           ; $6ffc: $3c
	dec  hl                                          ; $6ffd: $2b
	jr   c, @+$32                                    ; $6ffe: $38 $30

	ld   [hl], b                                     ; $7000: $70
	ld   d, h                                        ; $7001: $54
	ld   [hl], b                                     ; $7002: $70
	ld   h, d                                        ; $7003: $62
	jr   nz, jr_0a0_704e                             ; $7004: $20 $48

	ld   b, b                                        ; $7006: $40
	ld   d, $00                                      ; $7007: $16 $00
	and  b                                           ; $7009: $a0
	add  b                                           ; $700a: $80
	ld   c, h                                        ; $700b: $4c
	nop                                              ; $700c: $00
	sbc  b                                           ; $700d: $98
	nop                                              ; $700e: $00
	inc  hl                                          ; $700f: $23
	add  c                                           ; $7010: $81
	nop                                              ; $7011: $00
	nop                                              ; $7012: $00
	ld   [hl-], a                                    ; $7013: $32
	rst  $38                                         ; $7014: $ff
	nop                                              ; $7015: $00
	rst  $38                                         ; $7016: $ff
	nop                                              ; $7017: $00
	rst  $38                                         ; $7018: $ff
	nop                                              ; $7019: $00
	rst  $38                                         ; $701a: $ff
	nop                                              ; $701b: $00
	rst  $38                                         ; $701c: $ff
	nop                                              ; $701d: $00
	rst  $38                                         ; $701e: $ff
	nop                                              ; $701f: $00
	rst  $38                                         ; $7020: $ff
	nop                                              ; $7021: $00
	rst  $38                                         ; $7022: $ff
	nop                                              ; $7023: $00
	push af                                          ; $7024: $f5
	nop                                              ; $7025: $00
	sub  $00                                         ; $7026: $d6 $00
	nop                                              ; $7028: $00
	nop                                              ; $7029: $00
	add  l                                           ; $702a: $85
	rst  $38                                         ; $702b: $ff
	add  b                                           ; $702c: $80
	ld   sp, hl                                      ; $702d: $f9
	add  b                                           ; $702e: $80
	cp   $82                                         ; $702f: $fe $82
	rst  $38                                         ; $7031: $ff
	add  b                                           ; $7032: $80
	db   $fc                                         ; $7033: $fc
	add  c                                           ; $7034: $81
	rst  $38                                         ; $7035: $ff
	add  b                                           ; $7036: $80
	cp   $80                                         ; $7037: $fe $80
	rst  $38                                         ; $7039: $ff
	ld   [$72f2], sp                                 ; $703a: $08 $f2 $72
	ld   a, c                                        ; $703d: $79
	sbc  c                                           ; $703e: $99
	sbc  [hl]                                        ; $703f: $9e
	and  $86                                         ; $7040: $e6 $86
	xor  h                                           ; $7042: $ac
	call $de80                                       ; $7043: $cd $80 $de
	add  c                                           ; $7046: $81
	db   $fc                                         ; $7047: $fc
	nop                                              ; $7048: $00
	ld   a, h                                        ; $7049: $7c
	add  b                                           ; $704a: $80
	ld   a, b                                        ; $704b: $78
	nop                                              ; $704c: $00
	ld   a, h                                        ; $704d: $7c

jr_0a0_704e:
	add  d                                           ; $704e: $82
	db   $fd                                         ; $704f: $fd
	ld   [bc], a                                     ; $7050: $02
	cp   l                                           ; $7051: $bd
	sbc  [hl]                                        ; $7052: $9e
	rst  JumpTable                                         ; $7053: $df
	add  b                                           ; $7054: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7055: $cf
	dec  e                                           ; $7056: $1d
	rst  $20                                         ; $7057: $e7
	and  $60                                         ; $7058: $e6 $60
	ld   l, b                                        ; $705a: $68
	xor  l                                           ; $705b: $ad
	jr   z, @+$5c                                    ; $705c: $28 $5a

	ld   de, $1617                                   ; $705e: $11 $17 $16

jr_0a0_7061:
	daa                                              ; $7061: $27
	nop                                              ; $7062: $00
	ld   a, [de]                                     ; $7063: $1a
	set  1, l                                        ; $7064: $cb $cd
	sub  l                                           ; $7066: $95
	sub  [hl]                                        ; $7067: $96
	sbc  [hl]                                        ; $7068: $9e
	sbc  e                                           ; $7069: $9b
	dec  bc                                          ; $706a: $0b
	dec  c                                           ; $706b: $0d
	dec  a                                           ; $706c: $3d
	cp   [hl]                                        ; $706d: $be
	ld   a, $7f                                      ; $706e: $3e $7f
	ccf                                              ; $7070: $3f

jr_0a0_7071:
	sbc  a                                           ; $7071: $9f
	rra                                              ; $7072: $1f
	ld   e, a                                        ; $7073: $5f
	rst  JumpTable                                         ; $7074: $df
	add  b                                           ; $7075: $80
	xor  $80                                         ; $7076: $ee $80
	rst  $30                                         ; $7078: $f7
	add  b                                           ; $7079: $80
	ld   [hl], e                                     ; $707a: $73
	add  b                                           ; $707b: $80
	ld   a, c                                        ; $707c: $79
	add  b                                           ; $707d: $80
	cp   h                                           ; $707e: $bc
	add  b                                           ; $707f: $80
	inc  e                                           ; $7080: $1c
	add  b                                           ; $7081: $80
	adc  [hl]                                        ; $7082: $8e
	nop                                              ; $7083: $00
	db   $f4                                         ; $7084: $f4
	add  b                                           ; $7085: $80
	and  l                                           ; $7086: $a5
	nop                                              ; $7087: $00
	dec  d                                           ; $7088: $15
	add  b                                           ; $7089: $80
	inc  d                                           ; $708a: $14
	nop                                              ; $708b: $00
	dec  c                                           ; $708c: $0d
	add  b                                           ; $708d: $80
	ld   c, h                                        ; $708e: $4c
	add  b                                           ; $708f: $80
	call $ed83                                       ; $7090: $cd $83 $ed
	ld   b, $e2                                      ; $7093: $06 $e2
	inc  b                                           ; $7095: $04
	ld   [hl], h                                     ; $7096: $74
	ld   b, h                                        ; $7097: $44
	db   $e4                                         ; $7098: $e4
	inc  b                                           ; $7099: $04
	ret  z                                           ; $709a: $c8

	add  a                                           ; $709b: $87
	nop                                              ; $709c: $00
	ld   [$0718], sp                                 ; $709d: $08 $18 $07
	inc  de                                          ; $70a0: $13
	inc  bc                                          ; $70a1: $03
	add  hl, bc                                      ; $70a2: $09
	dec  b                                           ; $70a3: $05
	nop                                              ; $70a4: $00
	ld   [bc], a                                     ; $70a5: $02
	nop                                              ; $70a6: $00
	add  c                                           ; $70a7: $81
	ld   bc, $0082                                   ; $70a8: $01 $82 $00
	dec  b                                           ; $70ab: $05
	ld   a, b                                        ; $70ac: $78
	add  a                                           ; $70ad: $87
	jp   $d1d3                                       ; $70ae: $c3 $d3 $d1


	ret                                              ; $70b1: $c9


	add  b                                           ; $70b2: $80
	add  sp, $03                                     ; $70b3: $e8 $03
	ld   a, b                                        ; $70b5: $78
	ld   [hl], b                                     ; $70b6: $70
	jr   c, jr_0a0_7071                              ; $70b7: $38 $b8

	add  b                                           ; $70b9: $80
	adc  b                                           ; $70ba: $88
	add  b                                           ; $70bb: $80
	dec  h                                           ; $70bc: $25
	nop                                              ; $70bd: $00
	ld   a, a                                        ; $70be: $7f
	add  e                                           ; $70bf: $83
	nop                                              ; $70c0: $00
	add  b                                           ; $70c1: $80
	add  b                                           ; $70c2: $80
	add  b                                           ; $70c3: $80
	adc  b                                           ; $70c4: $88
	ld   b, $c8                                      ; $70c5: $06 $c8
	ret  nz                                          ; $70c7: $c0

	adc  $4a                                         ; $70c8: $ce $4a
	db   $ec                                         ; $70ca: $ec
	and  b                                           ; $70cb: $a0
	ret  nz                                          ; $70cc: $c0

	adc  l                                           ; $70cd: $8d
	nop                                              ; $70ce: $00
	ld   bc, $023d                                   ; $70cf: $01 $3d $02
	add  b                                           ; $70d2: $80
	ld   [$0400], sp                                 ; $70d3: $08 $00 $04
	add  c                                           ; $70d6: $81
	inc  d                                           ; $70d7: $14
	ld   bc, $1a10                                   ; $70d8: $01 $10 $1a
	add  b                                           ; $70db: $80
	jr   jr_0a0_70df                                 ; $70dc: $18 $01

	ld   e, c                                        ; $70de: $59

jr_0a0_70df:
	jr   c, jr_0a0_7061                              ; $70df: $38 $80

	jr   nc, @+$05                                   ; $70e1: $30 $03

	ld   d, e                                        ; $70e3: $53
	rst  $28                                         ; $70e4: $ef
	jr   c, jr_0a0_7126                              ; $70e5: $38 $3f

	add  b                                           ; $70e7: $80
	ret  nz                                          ; $70e8: $c0

	add  b                                           ; $70e9: $80
	db   $fc                                         ; $70ea: $fc
	add  b                                           ; $70eb: $80
	rst  $38                                         ; $70ec: $ff
	ld   a, [bc]                                     ; $70ed: $0a
	ld   a, b                                        ; $70ee: $78
	ld   a, a                                        ; $70ef: $7f
	rlca                                             ; $70f0: $07
	nop                                              ; $70f1: $00
	cp   h                                           ; $70f2: $bc
	dec  a                                           ; $70f3: $3d
	adc  l                                           ; $70f4: $8d
	ldh  [$f0], a                                    ; $70f5: $e0 $f0
	nop                                              ; $70f7: $00
	db   $10                                         ; $70f8: $10
	add  c                                           ; $70f9: $81
	nop                                              ; $70fa: $00
	ld   [$0004], sp                                 ; $70fb: $08 $04 $00
	ld   a, [bc]                                     ; $70fe: $0a
	nop                                              ; $70ff: $00
	inc  c                                           ; $7100: $0c
	nop                                              ; $7101: $00
	ld   [$01f8], sp                                 ; $7102: $08 $f8 $01
	add  c                                           ; $7105: $81
	nop                                              ; $7106: $00
	inc  b                                           ; $7107: $04
	ld   bc, $4200                                   ; $7108: $01 $00 $42
	pop  bc                                          ; $710b: $c1
	ld   a, l                                        ; $710c: $7d
	add  b                                           ; $710d: $80
	add  hl, de                                      ; $710e: $19
	add  b                                           ; $710f: $80
	inc  bc                                          ; $7110: $03
	add  b                                           ; $7111: $80
	ld   d, e                                        ; $7112: $53
	ld   [bc], a                                     ; $7113: $02
	pop  de                                          ; $7114: $d1
	sbc  $70                                         ; $7115: $de $70
	add  b                                           ; $7117: $80
	ld   h, b                                        ; $7118: $60
	nop                                              ; $7119: $00
	ld   h, h                                        ; $711a: $64
	add  c                                           ; $711b: $81
	db   $e4                                         ; $711c: $e4
	ld   [$c4c5], sp                                 ; $711d: $08 $c5 $c4
	add  $c5                                         ; $7120: $c6 $c5
	add  l                                           ; $7122: $85
	add  e                                           ; $7123: $83
	dec  bc                                          ; $7124: $0b
	rlca                                             ; $7125: $07

jr_0a0_7126:
	scf                                              ; $7126: $37
	add  b                                           ; $7127: $80
	inc  bc                                          ; $7128: $03
	dec  c                                           ; $7129: $0d
	rrca                                             ; $712a: $0f
	ld   c, a                                        ; $712b: $4f
	ccf                                              ; $712c: $3f
	cp   [hl]                                        ; $712d: $be
	ld   a, a                                        ; $712e: $7f
	ld   a, l                                        ; $712f: $7d
	rst  $38                                         ; $7130: $ff
	ld   a, [$f5fe]                                  ; $7131: $fa $fe $f5
	db   $fd                                         ; $7134: $fd
	ld   [$9ffa], a                                  ; $7135: $ea $fa $9f
	add  c                                           ; $7138: $81
	nop                                              ; $7139: $00
	ld   [bc], a                                     ; $713a: $02
	ld   a, h                                        ; $713b: $7c
	nop                                              ; $713c: $00
	inc  bc                                          ; $713d: $03
	add  b                                           ; $713e: $80
	jr   c, @+$04                                    ; $713f: $38 $02

	scf                                              ; $7141: $37
	jr   nc, jr_0a0_71bc                             ; $7142: $30 $78

	add  c                                           ; $7144: $81
	ld   a, h                                        ; $7145: $7c
	ld   [$08fc], sp                                 ; $7146: $08 $fc $08
	nop                                              ; $7149: $00
	jr   nc, jr_0a0_714c                             ; $714a: $30 $00

jr_0a0_714c:
	ldh  a, [$30]                                    ; $714c: $f0 $30
	ld   a, h                                        ; $714e: $7c
	ld   a, b                                        ; $714f: $78
	add  b                                           ; $7150: $80
	jr   c, jr_0a0_7159                              ; $7151: $38 $06

	ld   [$4048], sp                                 ; $7153: $08 $48 $40
	ld   h, b                                        ; $7156: $60
	ld   h, e                                        ; $7157: $63
	ld   a, b                                        ; $7158: $78

jr_0a0_7159:
	ld   a, [hl]                                     ; $7159: $7e
	add  c                                           ; $715a: $81
	ld   hl, sp+$00                                  ; $715b: $f8 $00
	ld   sp, hl                                      ; $715d: $f9
	add  c                                           ; $715e: $81
	ld   hl, sp-$7c                                  ; $715f: $f8 $84
	db   $fc                                         ; $7161: $fc
	nop                                              ; $7162: $00
	rst  $38                                         ; $7163: $ff
	add  b                                           ; $7164: $80
	nop                                              ; $7165: $00
	add  b                                           ; $7166: $80
	and  c                                           ; $7167: $a1
	add  b                                           ; $7168: $80
	and  b                                           ; $7169: $a0
	add  b                                           ; $716a: $80
	ld   b, b                                        ; $716b: $40
	add  b                                           ; $716c: $80
	ld   b, d                                        ; $716d: $42
	add  b                                           ; $716e: $80
	add  a                                           ; $716f: $87
	add  b                                           ; $7170: $80
	add  c                                           ; $7171: $81
	dec  b                                           ; $7172: $05
	add  [hl]                                        ; $7173: $86
	sub  [hl]                                        ; $7174: $96
	sub  a                                           ; $7175: $97
	ldh  a, [$80]                                    ; $7176: $f0 $80
	sbc  b                                           ; $7178: $98
	add  c                                           ; $7179: $81
	add  b                                           ; $717a: $80
	db   $10                                         ; $717b: $10
	jr   nc, jr_0a0_717e                             ; $717c: $30 $00

jr_0a0_717e:
	ld   bc, $6000                                   ; $717e: $01 $00 $60
	nop                                              ; $7181: $00
	inc  bc                                          ; $7182: $03
	nop                                              ; $7183: $00
	ret  nz                                          ; $7184: $c0

	nop                                              ; $7185: $00
	ld   e, c                                        ; $7186: $59
	push hl                                          ; $7187: $e5
	reti                                             ; $7188: $d9


	db   $db                                         ; $7189: $db
	rst  $20                                         ; $718a: $e7
	or   a                                           ; $718b: $b7
	sub  e                                           ; $718c: $93
	add  b                                           ; $718d: $80
	ld   [hl], a                                     ; $718e: $77
	add  d                                           ; $718f: $82
	rst  $28                                         ; $7190: $ef
	sub  c                                           ; $7191: $91
	rst  $38                                         ; $7192: $ff
	nop                                              ; $7193: $00
	ld   hl, sp-$7f                                  ; $7194: $f8 $81
	rst  $38                                         ; $7196: $ff
	inc  c                                           ; $7197: $0c
	rst  $30                                         ; $7198: $f7
	rst  $38                                         ; $7199: $ff
	xor  $fe                                         ; $719a: $ee $fe
	call c, $f9fd                                    ; $719c: $dc $fd $f9
	ei                                               ; $719f: $fb
	di                                               ; $71a0: $f3
	rst  $30                                         ; $71a1: $f7
	and  a                                           ; $71a2: $a7
	xor  $0e                                         ; $71a3: $ee $0e
	add  b                                           ; $71a5: $80
	sbc  [hl]                                        ; $71a6: $9e
	ld   bc, $3fbf                                   ; $71a7: $01 $bf $3f
	add  b                                           ; $71aa: $80
	ld   a, l                                        ; $71ab: $7d
	add  d                                           ; $71ac: $82
	ei                                               ; $71ad: $fb
	add  c                                           ; $71ae: $81
	rst  $30                                         ; $71af: $f7
	ld   [bc], a                                     ; $71b0: $02
	or   $f7                                         ; $71b1: $f6 $f7
	or   $82                                         ; $71b3: $f6 $82
	ld   a, a                                        ; $71b5: $7f
	add  c                                           ; $71b6: $81
	cp   a                                           ; $71b7: $bf
	nop                                              ; $71b8: $00
	ccf                                              ; $71b9: $3f
	add  l                                           ; $71ba: $85
	cp   a                                           ; $71bb: $bf

jr_0a0_71bc:
	nop                                              ; $71bc: $00
	ccf                                              ; $71bd: $3f
	adc  l                                           ; $71be: $8d
	rst  $38                                         ; $71bf: $ff
	ld   bc, $93eb                                   ; $71c0: $01 $eb $93
	add  c                                           ; $71c3: $81
	or   e                                           ; $71c4: $b3
	nop                                              ; $71c5: $00
	or   d                                           ; $71c6: $b2
	add  d                                           ; $71c7: $82
	or   b                                           ; $71c8: $b0
	nop                                              ; $71c9: $00
	xor  b                                           ; $71ca: $a8
	add  c                                           ; $71cb: $81
	and  b                                           ; $71cc: $a0
	ld   [bc], a                                     ; $71cd: $02
	and  c                                           ; $71ce: $a1
	and  b                                           ; $71cf: $a0
	adc  a                                           ; $71d0: $8f
	add  d                                           ; $71d1: $82
	ld   a, e                                        ; $71d2: $7b
	adc  b                                           ; $71d3: $88
	ei                                               ; $71d4: $fb
	add  b                                           ; $71d5: $80
	ld   a, e                                        ; $71d6: $7b
	add  e                                           ; $71d7: $83
	rst  $38                                         ; $71d8: $ff
	nop                                              ; $71d9: $00
	cp   $81                                         ; $71da: $fe $81
	rst  $38                                         ; $71dc: $ff
	nop                                              ; $71dd: $00
	db   $fc                                         ; $71de: $fc
	add  c                                           ; $71df: $81
	cp   $02                                         ; $71e0: $fe $02
	ld   a, [$f8fe]                                  ; $71e2: $fa $fe $f8
	adc  b                                           ; $71e5: $88
	ld   a, a                                        ; $71e6: $7f
	add  e                                           ; $71e7: $83
	rst  $38                                         ; $71e8: $ff
	inc  d                                           ; $71e9: $14
	cp   a                                           ; $71ea: $bf
	db   $dd                                         ; $71eb: $dd
	sbc  c                                           ; $71ec: $99
	cp   l                                           ; $71ed: $bd
	or   c                                           ; $71ee: $b1
	cp   e                                           ; $71ef: $bb
	xor  e                                           ; $71f0: $ab
	ld   a, e                                        ; $71f1: $7b
	ld   d, d                                        ; $71f2: $52
	rst  $30                                         ; $71f3: $f7
	or   l                                           ; $71f4: $b5
	rst  $30                                         ; $71f5: $f7
	ld   h, e                                        ; $71f6: $63
	rst  $28                                         ; $71f7: $ef
	rst  ToBoot                                         ; $71f8: $c7
	rst  $28                                         ; $71f9: $ef
	ld   hl, $afef                                   ; $71fa: $21 $ef $af
	rst  $28                                         ; $71fd: $ef
	ld   l, l                                        ; $71fe: $6d
	add  d                                           ; $71ff: $82
	rst  $28                                         ; $7200: $ef
	add  c                                           ; $7201: $81
	rst  $38                                         ; $7202: $ff
	dec  c                                           ; $7203: $0d
	db   $fd                                         ; $7204: $fd
	rst  $38                                         ; $7205: $ff
	rst  JumpTable                                         ; $7206: $df
	rst  $38                                         ; $7207: $ff
	sbc  $df                                         ; $7208: $de $df
	rst  ToBoot                                         ; $720a: $c7
	rst  JumpTable                                         ; $720b: $df
	db   $db                                         ; $720c: $db
	rst  JumpTable                                         ; $720d: $df
	db   $dd                                         ; $720e: $dd
	rst  JumpTable                                         ; $720f: $df
	xor  [hl]                                        ; $7210: $ae
	xor  a                                           ; $7211: $af
	add  d                                           ; $7212: $82
	or   a                                           ; $7213: $b7
	add  b                                           ; $7214: $80
	rst  $10                                         ; $7215: $d7
	nop                                              ; $7216: $00
	nop                                              ; $7217: $00
	add  l                                           ; $7218: $85
	rst  $38                                         ; $7219: $ff
	inc  b                                           ; $721a: $04
	ld   a, a                                        ; $721b: $7f
	rst  $38                                         ; $721c: $ff
	sbc  a                                           ; $721d: $9f
	rst  $38                                         ; $721e: $ff
	rst  $20                                         ; $721f: $e7
	add  c                                           ; $7220: $81
	rst  $38                                         ; $7221: $ff
	ld   bc, $a028                                   ; $7222: $01 $28 $a0
	add  b                                           ; $7225: $80
	and  c                                           ; $7226: $a1
	dec  b                                           ; $7227: $05
	sub  e                                           ; $7228: $93
	add  e                                           ; $7229: $83
	rst  ToBoot                                         ; $722a: $c7
	ld   b, [hl]                                     ; $722b: $46
	ld   b, a                                        ; $722c: $47
	ld   b, h                                        ; $722d: $44
	add  b                                           ; $722e: $80
	ld   c, h                                        ; $722f: $4c
	inc  b                                           ; $7230: $04
	ld   c, [hl]                                     ; $7231: $4e
	ld   c, b                                        ; $7232: $48
	ld   a, b                                        ; $7233: $78
	ld   l, b                                        ; $7234: $68
	dec  bc                                          ; $7235: $0b
	adc  l                                           ; $7236: $8d
	ld   a, e                                        ; $7237: $7b
	nop                                              ; $7238: $00
	ld   a, h                                        ; $7239: $7c
	add  a                                           ; $723a: $87
	rst  $38                                         ; $723b: $ff
	ld   [bc], a                                     ; $723c: $02
	ld   sp, hl                                      ; $723d: $f9
	rst  $38                                         ; $723e: $ff
	cp   $82                                         ; $723f: $fe $82
	rst  $38                                         ; $7241: $ff
	ld   de, $ff7f                                   ; $7242: $11 $7f $ff
	cp   a                                           ; $7245: $bf
	rst  $38                                         ; $7246: $ff
	rst  JumpTable                                         ; $7247: $df
	rst  $38                                         ; $7248: $ff
	rst  $28                                         ; $7249: $ef
	rst  $38                                         ; $724a: $ff
	rst  $30                                         ; $724b: $f7
	rst  $38                                         ; $724c: $ff
	ei                                               ; $724d: $fb
	rst  $38                                         ; $724e: $ff
	db   $fd                                         ; $724f: $fd
	ccf                                              ; $7250: $3f
	cp   $8f                                         ; $7251: $fe $8f
	rst  $28                                         ; $7253: $ef
	xor  a                                           ; $7254: $af
	add  l                                           ; $7255: $85
	rst  $28                                         ; $7256: $ef
	inc  bc                                          ; $7257: $03
	sbc  a                                           ; $7258: $9f
	rst  $38                                         ; $7259: $ff
	ld   a, h                                        ; $725a: $7c
	db   $fc                                         ; $725b: $fc
	add  b                                           ; $725c: $80
	ld   hl, sp-$7e                                  ; $725d: $f8 $82
	db   $db                                         ; $725f: $db
	add  d                                           ; $7260: $82
	rst  JumpTable                                         ; $7261: $df
	add  d                                           ; $7262: $82
	rst  $28                                         ; $7263: $ef
	add  b                                           ; $7264: $80
	ld   a, a                                        ; $7265: $7f
	add  b                                           ; $7266: $80
	nop                                              ; $7267: $00
	add  b                                           ; $7268: $80
	ldh  a, [$88]                                    ; $7269: $f0 $88
	cp   $80                                         ; $726b: $fe $80
	ld   b, b                                        ; $726d: $40
	add  c                                           ; $726e: $81
	nop                                              ; $726f: $00
	add  d                                           ; $7270: $82
	ld   a, e                                        ; $7271: $7b
	add  [hl]                                        ; $7272: $86
	ei                                               ; $7273: $fb
	add  d                                           ; $7274: $82
	rst  $30                                         ; $7275: $f7
	adc  l                                           ; $7276: $8d
	rst  $38                                         ; $7277: $ff
	inc  bc                                          ; $7278: $03
	ldh  [rIE], a                                    ; $7279: $e0 $ff
	rst  $28                                         ; $727b: $ef
	rst  $38                                         ; $727c: $ff
	add  b                                           ; $727d: $80
	ei                                               ; $727e: $fb
	ld   [bc], a                                     ; $727f: $02
	pop  af                                          ; $7280: $f1
	db   $fd                                         ; $7281: $fd
	db   $fc                                         ; $7282: $fc
	add  b                                           ; $7283: $80
	cp   $83                                         ; $7284: $fe $83
	rst  $38                                         ; $7286: $ff
	ld   bc, $748b                                   ; $7287: $01 $8b $74
	add  b                                           ; $728a: $80
	xor  $80                                         ; $728b: $ee $80
	sbc  $82                                         ; $728d: $de $82
	rst  $38                                         ; $728f: $ff
	add  b                                           ; $7290: $80
	ld   a, a                                        ; $7291: $7f
	inc  b                                           ; $7292: $04
	ccf                                              ; $7293: $3f
	cp   a                                           ; $7294: $bf
	sbc  a                                           ; $7295: $9f
	rst  JumpTable                                         ; $7296: $df
	ret  nz                                          ; $7297: $c0

	add  b                                           ; $7298: $80
	add  c                                           ; $7299: $81
	add  b                                           ; $729a: $80
	pop  bc                                          ; $729b: $c1
	add  b                                           ; $729c: $80
	pop  hl                                          ; $729d: $e1
	ld   bc, $7071                                   ; $729e: $01 $71 $70
	add  b                                           ; $72a1: $80
	cp   c                                           ; $72a2: $b9
	add  b                                           ; $72a3: $80
	ld   e, l                                        ; $72a4: $5d
	add  b                                           ; $72a5: $80
	ld   l, l                                        ; $72a6: $6d
	ld   bc, $3435                                   ; $72a7: $01 $35 $34
	add  l                                           ; $72aa: $85
	rst  $30                                         ; $72ab: $f7
	inc  b                                           ; $72ac: $04
	ld   [hl], a                                     ; $72ad: $77
	rst  $28                                         ; $72ae: $ef
	add  a                                           ; $72af: $87
	rst  $28                                         ; $72b0: $ef
	add  sp, -$7f                                    ; $72b1: $e8 $81
	rst  $28                                         ; $72b3: $ef
	inc  c                                           ; $72b4: $0c
	ld   bc, $fdff                                   ; $72b5: $01 $ff $fd
	rst  $38                                         ; $72b8: $ff
	ei                                               ; $72b9: $fb
	rst  $38                                         ; $72ba: $ff
	rst  $30                                         ; $72bb: $f7
	rst  $38                                         ; $72bc: $ff
	rst  $28                                         ; $72bd: $ef
	rst  $38                                         ; $72be: $ff
	sbc  a                                           ; $72bf: $9f
	rst  $38                                         ; $72c0: $ff
	ld   a, a                                        ; $72c1: $7f
	add  c                                           ; $72c2: $81
	rst  $38                                         ; $72c3: $ff
	inc  bc                                          ; $72c4: $03
	cp   $ff                                         ; $72c5: $fe $ff
	and  $e7                                         ; $72c7: $e6 $e7
	add  b                                           ; $72c9: $80
	rst  JumpTable                                         ; $72ca: $df
	add  [hl]                                        ; $72cb: $86
	cp   a                                           ; $72cc: $bf
	add  b                                           ; $72cd: $80
	ld   a, a                                        ; $72ce: $7f
	inc  bc                                          ; $72cf: $03
	rlca                                             ; $72d0: $07
	rst  $20                                         ; $72d1: $e7
	add  hl, de                                      ; $72d2: $19
	ld   sp, hl                                      ; $72d3: $f9
	add  b                                           ; $72d4: $80
	cp   $89                                         ; $72d5: $fe $89
	rst  $38                                         ; $72d7: $ff
	rst  $38                                         ; $72d8: $ff
	nop                                              ; $72d9: $00
	rst  $38                                         ; $72da: $ff
	nop                                              ; $72db: $00
	rst  $38                                         ; $72dc: $ff
	nop                                              ; $72dd: $00
	rst  $38                                         ; $72de: $ff
	nop                                              ; $72df: $00
	rst  $38                                         ; $72e0: $ff
	nop                                              ; $72e1: $00
	rst  $38                                         ; $72e2: $ff
	nop                                              ; $72e3: $00
	rst  $38                                         ; $72e4: $ff
	nop                                              ; $72e5: $00
	rst  $38                                         ; $72e6: $ff
	nop                                              ; $72e7: $00
	rst  $38                                         ; $72e8: $ff
	nop                                              ; $72e9: $00
	and  h                                           ; $72ea: $a4
	nop                                              ; $72eb: $00
	pop  de                                          ; $72ec: $d1
	nop                                              ; $72ed: $00
	ld   b, $1f                                      ; $72ee: $06 $1f
	rrca                                             ; $72f0: $0f
	cpl                                              ; $72f1: $2f
	rra                                              ; $72f2: $1f
	inc  bc                                          ; $72f3: $03
	rra                                              ; $72f4: $1f
	inc  bc                                          ; $72f5: $03
	add  b                                           ; $72f6: $80
	rrca                                             ; $72f7: $0f
	add  hl, bc                                      ; $72f8: $09
	ld   e, $5f                                      ; $72f9: $1e $5f
	dec  a                                           ; $72fb: $3d
	or   a                                           ; $72fc: $b7
	ld   a, e                                        ; $72fd: $7b
	ld   h, a                                        ; $72fe: $67
	ld   [hl], a                                     ; $72ff: $77
	ld   e, a                                        ; $7300: $5f
	ldh  [hScriptOpcodeParams], a                                    ; $7301: $e0 $a0
	add  b                                           ; $7303: $80
	ldh  [rP1], a                                    ; $7304: $e0 $00
	ret  nz                                          ; $7306: $c0

	add  c                                           ; $7307: $81
	ld   b, b                                        ; $7308: $40
	add  l                                           ; $7309: $85
	nop                                              ; $730a: $00
	nop                                              ; $730b: $00
	ld   bc, $0083                                   ; $730c: $01 $83 $00
	nop                                              ; $730f: $00
	ld   bc, $0085                                   ; $7310: $01 $85 $00
	inc  d                                           ; $7313: $14
	ld   bc, $0600                                   ; $7314: $01 $00 $06
	ld   bc, $0709                                   ; $7317: $01 $09 $07
	rla                                              ; $731a: $17
	rrca                                             ; $731b: $0f
	cpl                                              ; $731c: $2f
	rra                                              ; $731d: $1f
	ld   c, a                                        ; $731e: $4f
	ld   a, $8f                                      ; $731f: $3e $8f
	ld   a, l                                        ; $7321: $7d
	rst  JumpTable                                         ; $7322: $df
	dec  sp                                          ; $7323: $3b
	cp   a                                           ; $7324: $bf
	ld   [hl], a                                     ; $7325: $77
	adc  [hl]                                        ; $7326: $8e
	nop                                              ; $7327: $00
	ld   bc, $0081                                   ; $7328: $01 $81 $00
	inc  b                                           ; $732b: $04
	ld   bc, $0200                                   ; $732c: $01 $00 $02
	nop                                              ; $732f: $00
	inc  b                                           ; $7330: $04
	add  c                                           ; $7331: $81
	inc  bc                                          ; $7332: $03
	nop                                              ; $7333: $00
	dec  bc                                          ; $7334: $0b
	add  d                                           ; $7335: $82
	dec  b                                           ; $7336: $05
	add  c                                           ; $7337: $81
	ld   b, $04                                      ; $7338: $06 $04
	inc  bc                                          ; $733a: $03
	rlca                                             ; $733b: $07
	inc  bc                                          ; $733c: $03
	dec  b                                           ; $733d: $05
	inc  b                                           ; $733e: $04
	add  b                                           ; $733f: $80
	ld   b, $80                                      ; $7340: $06 $80
	inc  bc                                          ; $7342: $03
	inc  bc                                          ; $7343: $03
	rlca                                             ; $7344: $07
	ld   d, $0f                                      ; $7345: $16 $0f
	ld   c, $81                                      ; $7347: $0e $81
	rrca                                             ; $7349: $0f
	nop                                              ; $734a: $00
	cpl                                              ; $734b: $2f
	add  e                                           ; $734c: $83
	rra                                              ; $734d: $1f
	nop                                              ; $734e: $00
	ld   e, a                                        ; $734f: $5f
	add  e                                           ; $7350: $83
	ccf                                              ; $7351: $3f
	ld   [bc], a                                     ; $7352: $02
	cp   a                                           ; $7353: $bf
	ld   a, a                                        ; $7354: $7f
	ld   a, [hl]                                     ; $7355: $7e
	add  d                                           ; $7356: $82
	ld   a, a                                        ; $7357: $7f
	add  c                                           ; $7358: $81
	rst  $38                                         ; $7359: $ff
	nop                                              ; $735a: $00
	db   $fd                                         ; $735b: $fd
	add  c                                           ; $735c: $81
	rst  $38                                         ; $735d: $ff
	nop                                              ; $735e: $00
	ld   [bc], a                                     ; $735f: $02
	add  c                                           ; $7360: $81
	nop                                              ; $7361: $00
	nop                                              ; $7362: $00
	ld   [bc], a                                     ; $7363: $02
	add  e                                           ; $7364: $83
	ld   bc, $0500                                   ; $7365: $01 $00 $05
	add  e                                           ; $7368: $83
	inc  bc                                          ; $7369: $03
	nop                                              ; $736a: $00
	dec  bc                                          ; $736b: $0b
	add  e                                           ; $736c: $83
	rlca                                             ; $736d: $07
	rla                                              ; $736e: $17
	inc  bc                                          ; $736f: $03
	rlca                                             ; $7370: $07
	add  hl, bc                                      ; $7371: $09
	inc  bc                                          ; $7372: $03
	ld   [bc], a                                     ; $7373: $02
	inc  bc                                          ; $7374: $03
	dec  b                                           ; $7375: $05
	ld   bc, $0002                                   ; $7376: $01 $02 $00
	ld   hl, $40c0                                   ; $7379: $21 $c0 $40
	ret  nz                                          ; $737c: $c0

	and  b                                           ; $737d: $a0
	add  b                                           ; $737e: $80
	and  b                                           ; $737f: $a0
	ret  nz                                          ; $7380: $c0

	ldh  a, [$e0]                                    ; $7381: $f0 $e0
	ld   a, b                                        ; $7383: $78
	ldh  a, [$30]                                    ; $7384: $f0 $30
	ld   [hl], b                                     ; $7386: $70
	add  b                                           ; $7387: $80
	jr   nc, jr_0a0_738e                             ; $7388: $30 $04

	db   $10                                         ; $738a: $10
	ret  nc                                          ; $738b: $d0

	ret  z                                           ; $738c: $c8

	ret  nz                                          ; $738d: $c0

jr_0a0_738e:
	ldh  [$81], a                                    ; $738e: $e0 $81
	ld   h, b                                        ; $7390: $60
	nop                                              ; $7391: $00
	ld   hl, sp-$7f                                  ; $7392: $f8 $81
	or   b                                           ; $7394: $b0
	ld   d, $d4                                      ; $7395: $16 $d4
	ret  nc                                          ; $7397: $d0

	jp   c, $fed8                                    ; $7398: $da $d8 $fe

	nop                                              ; $739b: $00
	add  b                                           ; $739c: $80
	nop                                              ; $739d: $00
	ld   b, b                                        ; $739e: $40
	add  b                                           ; $739f: $80
	and  b                                           ; $73a0: $a0
	ret  nz                                          ; $73a1: $c0

	ld   b, b                                        ; $73a2: $40
	ret  nz                                          ; $73a3: $c0

	ret  nc                                          ; $73a4: $d0

	ldh  [rAUD4LEN], a                               ; $73a5: $e0 $20
	ld   h, b                                        ; $73a7: $60
	or   b                                           ; $73a8: $b0
	add  b                                           ; $73a9: $80
	ld   h, b                                        ; $73aa: $60

jr_0a0_73ab:
	nop                                              ; $73ab: $00
	add  b                                           ; $73ac: $80
	add  c                                           ; $73ad: $81
	nop                                              ; $73ae: $00
	nop                                              ; $73af: $00
	add  b                                           ; $73b0: $80
	add  c                                           ; $73b1: $81
	nop                                              ; $73b2: $00
	nop                                              ; $73b3: $00
	add  b                                           ; $73b4: $80
	add  c                                           ; $73b5: $81
	nop                                              ; $73b6: $00
	ld   [$0080], sp                                 ; $73b7: $08 $80 $00
	ld   bc, $3d7e                                   ; $73ba: $01 $7e $3d

jr_0a0_73bd:
	inc  a                                           ; $73bd: $3c
	ld   d, d                                        ; $73be: $52
	ld   d, b                                        ; $73bf: $50
	ld   c, h                                        ; $73c0: $4c
	adc  l                                           ; $73c1: $8d
	ld   b, b                                        ; $73c2: $40
	ld   bc, $6068                                   ; $73c3: $01 $68 $60
	add  b                                           ; $73c6: $80
	jr   nz, jr_0a0_73d5                             ; $73c7: $20 $0c

	nop                                              ; $73c9: $00
	ret  nz                                          ; $73ca: $c0

	add  $f8                                         ; $73cb: $c6 $f8
	ld   sp, hl                                      ; $73cd: $f9
	cp   $81                                         ; $73ce: $fe $81
	nop                                              ; $73d0: $00
	ld   b, b                                        ; $73d1: $40
	add  b                                           ; $73d2: $80
	and  b                                           ; $73d3: $a0
	ret  nz                                          ; $73d4: $c0

jr_0a0_73d5:
	ret  nc                                          ; $73d5: $d0

	add  c                                           ; $73d6: $81
	ldh  [rP1], a                                    ; $73d7: $e0 $00
	add  sp, -$7f                                    ; $73d9: $e8 $81
	ldh  a, [rP1]                                    ; $73db: $f0 $00
	db   $f4                                         ; $73dd: $f4
	add  d                                           ; $73de: $82
	ldh  a, [$82]                                    ; $73df: $f0 $82
	add  sp, -$80                                    ; $73e1: $e8 $80
	ret  c                                           ; $73e3: $d8

	add  b                                           ; $73e4: $80
	cp   b                                           ; $73e5: $b8
	ld   bc, $7a78                                   ; $73e6: $01 $78 $7a
	add  b                                           ; $73e9: $80
	ret  z                                           ; $73ea: $c8

	ld   bc, $cef0                                   ; $73eb: $01 $f0 $ce
	add  c                                           ; $73ee: $81
	nop                                              ; $73ef: $00
	nop                                              ; $73f0: $00
	add  b                                           ; $73f1: $80
	add  c                                           ; $73f2: $81
	jr   nz, jr_0a0_73f5                             ; $73f3: $20 $00

jr_0a0_73f5:
	ld   h, b                                        ; $73f5: $60
	add  d                                           ; $73f6: $82
	or   b                                           ; $73f7: $b0
	add  b                                           ; $73f8: $80
	ret  nc                                          ; $73f9: $d0

	ld   [bc], a                                     ; $73fa: $02
	ret  c                                           ; $73fb: $d8

	jp   c, $8602                                    ; $73fc: $da $02 $86

	inc  bc                                          ; $73ff: $03
	add  b                                           ; $7400: $80
	rlca                                             ; $7401: $07
	add  b                                           ; $7402: $80
	rrca                                             ; $7403: $0f
	add  b                                           ; $7404: $80
	rla                                              ; $7405: $17
	db   $10                                         ; $7406: $10
	jr   jr_0a0_7424                                 ; $7407: $18 $1b

	rrca                                             ; $7409: $0f
	inc  e                                           ; $740a: $1c
	ld   d, $1e                                      ; $740b: $16 $1e
	dec  hl                                          ; $740d: $2b
	scf                                              ; $740e: $37
	dec  a                                           ; $740f: $3d
	add  hl, sp                                      ; $7410: $39
	inc  e                                           ; $7411: $1c
	ld   a, h                                        ; $7412: $7c
	ld   l, [hl]                                     ; $7413: $6e
	ld   a, [hl]                                     ; $7414: $7e
	halt                                             ; $7415: $76
	ld   a, a                                        ; $7416: $7f
	ld   a, c                                        ; $7417: $79
	add  b                                           ; $7418: $80
	ld   a, [hl]                                     ; $7419: $7e
	add  b                                           ; $741a: $80
	inc  a                                           ; $741b: $3c
	add  b                                           ; $741c: $80
	db   $10                                         ; $741d: $10
	adc  b                                           ; $741e: $88
	nop                                              ; $741f: $00
	add  b                                           ; $7420: $80
	ldh  [$80], a                                    ; $7421: $e0 $80
	ld   h, b                                        ; $7423: $60

jr_0a0_7424:
	add  h                                           ; $7424: $84
	ld   [hl], b                                     ; $7425: $70
	add  h                                           ; $7426: $84
	jr   nc, jr_0a0_73ab                             ; $7427: $30 $82

	db   $10                                         ; $7429: $10
	add  d                                           ; $742a: $82
	ld   [$0086], sp                                 ; $742b: $08 $86 $00
	add  b                                           ; $742e: $80
	inc  b                                           ; $742f: $04
	add  b                                           ; $7430: $80
	ld   b, $88                                      ; $7431: $06 $88
	ld   c, $86                                      ; $7433: $0e $86
	inc  c                                           ; $7435: $0c
	add  [hl]                                        ; $7436: $86
	ld   [rRAMG], sp                                 ; $7437: $08 $00 $00
	add  b                                           ; $743a: $80
	jr   z, jr_0a0_73bd                              ; $743b: $28 $80

	ld   a, h                                        ; $743d: $7c
	add  b                                           ; $743e: $80
	cp   $11                                         ; $743f: $fe $11
	add  $ee                                         ; $7441: $c6 $ee
	add  $fe                                         ; $7443: $c6 $fe
	add  $f6                                         ; $7445: $c6 $f6
	add  $fe                                         ; $7447: $c6 $fe
	adc  $d6                                         ; $7449: $ce $d6
	adc  $fe                                         ; $744b: $ce $fe
	and  $de                                         ; $744d: $e6 $de
	and  $fe                                         ; $744f: $e6 $fe
	xor  $fe                                         ; $7451: $ee $fe
	sub  d                                           ; $7453: $92
	nop                                              ; $7454: $00
	add  [hl]                                        ; $7455: $86
	db   $10                                         ; $7456: $10
	add  b                                           ; $7457: $80
	jr   nc, @-$7e                                   ; $7458: $30 $80

	jr   c, @-$7e                                    ; $745a: $38 $80

	ld   a, $80                                      ; $745c: $3e $80
	ld   e, $80                                      ; $745e: $1e $80
	rra                                              ; $7460: $1f
	add  b                                           ; $7461: $80
	rrca                                             ; $7462: $0f
	adc  a                                           ; $7463: $8f
	nop                                              ; $7464: $00
	add  b                                           ; $7465: $80
	dec  sp                                          ; $7466: $3b
	add  b                                           ; $7467: $80
	cp   $80                                         ; $7468: $fe $80
	db   $fc                                         ; $746a: $fc
	add  b                                           ; $746b: $80
	ldh  a, [$99]                                    ; $746c: $f0 $99
	nop                                              ; $746e: $00
	nop                                              ; $746f: $00
	rlca                                             ; $7470: $07
	add  b                                           ; $7471: $80
	nop                                              ; $7472: $00
	add  l                                           ; $7473: $85
	ld   bc, $0600                                   ; $7474: $01 $00 $06
	sub  e                                           ; $7477: $93
	nop                                              ; $7478: $00
	adc  b                                           ; $7479: $88
	rst  $38                                         ; $747a: $ff
	sub  b                                           ; $747b: $90
	nop                                              ; $747c: $00
	add  b                                           ; $747d: $80
	ldh  a, [$80]                                    ; $747e: $f0 $80
	ret  nz                                          ; $7480: $c0

	add  b                                           ; $7481: $80
	add  b                                           ; $7482: $80
	sbc  b                                           ; $7483: $98
	nop                                              ; $7484: $00
	add  b                                           ; $7485: $80
	ccf                                              ; $7486: $3f
	add  b                                           ; $7487: $80
	rrca                                             ; $7488: $0f
	add  b                                           ; $7489: $80
	rlca                                             ; $748a: $07
	add  b                                           ; $748b: $80
	inc  bc                                          ; $748c: $03
	add  b                                           ; $748d: $80
	ld   bc, $0084                                   ; $748e: $01 $84 $00
	inc  b                                           ; $7491: $04
	ldh  [$ef], a                                    ; $7492: $e0 $ef
	ld   l, a                                        ; $7494: $6f
	ld   [hl], c                                     ; $7495: $71
	ld   de, $009a                                   ; $7496: $11 $9a $00
	add  b                                           ; $7499: $80
	ret  nz                                          ; $749a: $c0

	add  d                                           ; $749b: $82
	and  b                                           ; $749c: $a0
	add  b                                           ; $749d: $80
	ld   [hl], b                                     ; $749e: $70
	add  b                                           ; $749f: $80
	ld   a, b                                        ; $74a0: $78
	add  b                                           ; $74a1: $80
	jr   nc, jr_0a0_7424                             ; $74a2: $30 $80

	db   $10                                         ; $74a4: $10
	adc  a                                           ; $74a5: $8f
	nop                                              ; $74a6: $00
	ld   [bc], a                                     ; $74a7: $02
	jr   jr_0a0_74aa                                 ; $74a8: $18 $00

jr_0a0_74aa:
	ld   bc, $0081                                   ; $74aa: $01 $81 $00
	inc  bc                                          ; $74ad: $03
	ld   b, b                                        ; $74ae: $40
	nop                                              ; $74af: $00
	inc  c                                           ; $74b0: $0c
	ld   [$0080], sp                                 ; $74b1: $08 $80 $00
	add  b                                           ; $74b4: $80
	ld   [$e200], sp                                 ; $74b5: $08 $00 $e2
	add  b                                           ; $74b8: $80
	ld   b, b                                        ; $74b9: $40
	add  hl, bc                                      ; $74ba: $09
	ld   c, b                                        ; $74bb: $48
	adc  b                                           ; $74bc: $88
	sub  c                                           ; $74bd: $91
	pop  de                                          ; $74be: $d1
	pop  af                                          ; $74bf: $f1
	or   l                                           ; $74c0: $b5
	push af                                          ; $74c1: $f5
	pop  af                                          ; $74c2: $f1
	pop  hl                                          ; $74c3: $e1
	ld   h, c                                        ; $74c4: $61
	add  c                                           ; $74c5: $81
	ld   a, a                                        ; $74c6: $7f
	ld   b, $3f                                      ; $74c7: $06 $3f
	ld   a, a                                        ; $74c9: $7f
	ld   h, d                                        ; $74ca: $62
	nop                                              ; $74cb: $00
	jr   nc, jr_0a0_74ce                             ; $74cc: $30 $00

jr_0a0_74ce:
	inc  bc                                          ; $74ce: $03
	add  e                                           ; $74cf: $83
	nop                                              ; $74d0: $00
	inc  bc                                          ; $74d1: $03
	ld   h, h                                        ; $74d2: $64
	nop                                              ; $74d3: $00
	ld   e, e                                        ; $74d4: $5b
	ld   d, c                                        ; $74d5: $51
	add  b                                           ; $74d6: $80
	add  h                                           ; $74d7: $84
	inc  bc                                          ; $74d8: $03
	inc  bc                                          ; $74d9: $03
	ld   b, e                                        ; $74da: $43
	ld   b, c                                        ; $74db: $41
	adc  c                                           ; $74dc: $89
	add  b                                           ; $74dd: $80
	adc  a                                           ; $74de: $8f
	add  b                                           ; $74df: $80
	xor  a                                           ; $74e0: $af
	inc  b                                           ; $74e1: $04
	adc  a                                           ; $74e2: $8f
	add  a                                           ; $74e3: $87
	adc  [hl]                                        ; $74e4: $8e
	cp   $f6                                         ; $74e5: $fe $f6
	add  c                                           ; $74e7: $81
	cp   $02                                         ; $74e8: $fe $02
	rra                                              ; $74ea: $1f
	nop                                              ; $74eb: $00
	ld   bc, $0081                                   ; $74ec: $01 $81 $00
	inc  bc                                          ; $74ef: $03
	ld   b, b                                        ; $74f0: $40
	nop                                              ; $74f1: $00
	inc  c                                           ; $74f2: $0c
	ld   [$0080], sp                                 ; $74f3: $08 $80 $00
	add  b                                           ; $74f6: $80
	ld   [$ef0b], sp                                 ; $74f7: $08 $0b $ef
	ld   c, l                                        ; $74fa: $4d
	ld   [hl], l                                     ; $74fb: $75
	ld   a, l                                        ; $74fc: $7d
	adc  b                                           ; $74fd: $88
	add  b                                           ; $74fe: $80
	ret  nz                                          ; $74ff: $c0

	reti                                             ; $7500: $d9


	sbc  l                                           ; $7501: $9d
	push af                                          ; $7502: $f5
	pop  af                                          ; $7503: $f1
	rst  $38                                         ; $7504: $ff
	add  d                                           ; $7505: $82
	ld   a, a                                        ; $7506: $7f
	ld   b, $3f                                      ; $7507: $06 $3f
	ld   a, a                                        ; $7509: $7f
	ld   h, d                                        ; $750a: $62
	nop                                              ; $750b: $00
	jr   nc, jr_0a0_750e                             ; $750c: $30 $00

jr_0a0_750e:
	inc  bc                                          ; $750e: $03
	add  e                                           ; $750f: $83
	nop                                              ; $7510: $00
	inc  bc                                          ; $7511: $03
	ld   h, h                                        ; $7512: $64
	nop                                              ; $7513: $00
	ld   e, e                                        ; $7514: $5b
	ld   d, c                                        ; $7515: $51
	add  b                                           ; $7516: $80
	call nc, $bf0c                                   ; $7517: $d4 $0c $bf
	rst  $38                                         ; $751a: $ff
	ld   b, c                                        ; $751b: $41
	ld   bc, $cb03                                   ; $751c: $01 $03 $cb
	rst  $28                                         ; $751f: $ef
	xor  a                                           ; $7520: $af
	adc  a                                           ; $7521: $8f
	rst  $38                                         ; $7522: $ff
	or   $fe                                         ; $7523: $f6 $fe
	or   $81                                         ; $7525: $f6 $81
	cp   $02                                         ; $7527: $fe $02
	rra                                              ; $7529: $1f
	nop                                              ; $752a: $00
	ld   bc, $0081                                   ; $752b: $01 $81 $00
	inc  bc                                          ; $752e: $03
	ld   b, b                                        ; $752f: $40
	nop                                              ; $7530: $00
	inc  c                                           ; $7531: $0c
	ld   [$0080], sp                                 ; $7532: $08 $80 $00
	add  b                                           ; $7535: $80
	ld   [$ef05], sp                                 ; $7536: $08 $05 $ef
	ld   c, l                                        ; $7539: $4d
	ld   [hl], l                                     ; $753a: $75
	ld   a, l                                        ; $753b: $7d
	db   $eb                                         ; $753c: $eb
	rst  $38                                         ; $753d: $ff
	add  b                                           ; $753e: $80
	sbc  h                                           ; $753f: $9c
	inc  bc                                          ; $7540: $03
	sbc  l                                           ; $7541: $9d
	pop  bc                                          ; $7542: $c1
	ret  nz                                          ; $7543: $c0

	rst  $38                                         ; $7544: $ff
	add  d                                           ; $7545: $82
	ld   a, a                                        ; $7546: $7f
	ld   b, $3f                                      ; $7547: $06 $3f
	ld   a, a                                        ; $7549: $7f
	ld   h, d                                        ; $754a: $62
	nop                                              ; $754b: $00
	jr   nc, jr_0a0_754e                             ; $754c: $30 $00

jr_0a0_754e:
	inc  bc                                          ; $754e: $03
	add  e                                           ; $754f: $83
	nop                                              ; $7550: $00
	inc  bc                                          ; $7551: $03
	ld   h, h                                        ; $7552: $64
	nop                                              ; $7553: $00
	ld   e, e                                        ; $7554: $5b
	ld   d, c                                        ; $7555: $51
	add  b                                           ; $7556: $80
	call nc, $bf08                                   ; $7557: $d4 $08 $bf
	rst  $38                                         ; $755a: $ff
	ld   c, a                                        ; $755b: $4f
	rst  $38                                         ; $755c: $ff
	ld   sp, hl                                      ; $755d: $f9
	add  hl, sp                                      ; $755e: $39
	or   d                                           ; $755f: $b2
	add  d                                           ; $7560: $82
	ld   c, $81                                      ; $7561: $0e $81
	cp   $00                                         ; $7563: $fe $00
	or   $81                                         ; $7565: $f6 $81
	cp   $00                                         ; $7567: $fe $00
	rlca                                             ; $7569: $07
	adc  l                                           ; $756a: $8d
	nop                                              ; $756b: $00
	ld   a, [bc]                                     ; $756c: $0a
	rst  $30                                         ; $756d: $f7
	rst  $28                                         ; $756e: $ef
	rst  $20                                         ; $756f: $e7
	rst  $38                                         ; $7570: $ff
	or   a                                           ; $7571: $b7
	ei                                               ; $7572: $fb
	or   e                                           ; $7573: $b3
	rst  $38                                         ; $7574: $ff
	rst  $20                                         ; $7575: $e7
	rst  $38                                         ; $7576: $ff
	rst  $20                                         ; $7577: $e7
	add  b                                           ; $7578: $80
	rst  $38                                         ; $7579: $ff
	inc  bc                                          ; $757a: $03
	cp   $ff                                         ; $757b: $fe $ff
	add  hl, sp                                      ; $757d: $39
	rst  ToBoot                                         ; $757e: $c7
	adc  l                                           ; $757f: $8d
	nop                                              ; $7580: $00
	db   $10                                         ; $7581: $10
	rst  $30                                         ; $7582: $f7
	rst  $28                                         ; $7583: $ef
	rst  $20                                         ; $7584: $e7
	rst  $38                                         ; $7585: $ff
	rst  $20                                         ; $7586: $e7
	sbc  e                                           ; $7587: $9b
	sub  e                                           ; $7588: $93
	rst  $10                                         ; $7589: $d7
	rst  ToBoot                                         ; $758a: $c7
	rst  $38                                         ; $758b: $ff
	rst  $28                                         ; $758c: $ef
	rst  $38                                         ; $758d: $ff
	rst  $28                                         ; $758e: $ef
	cp   $ff                                         ; $758f: $fe $ff
	add  hl, sp                                      ; $7591: $39
	rst  ToBoot                                         ; $7592: $c7
	adc  b                                           ; $7593: $88
	nop                                              ; $7594: $00
	add  b                                           ; $7595: $80
	ld   bc, $0380                                   ; $7596: $01 $80 $03
	add  b                                           ; $7599: $80
	rlca                                             ; $759a: $07
	rst  $38                                         ; $759b: $ff
	nop                                              ; $759c: $00
	rst  $38                                         ; $759d: $ff
	nop                                              ; $759e: $00
	rst  $38                                         ; $759f: $ff
	nop                                              ; $75a0: $00
	rst  $38                                         ; $75a1: $ff
	nop                                              ; $75a2: $00
	rst  $38                                         ; $75a3: $ff
	nop                                              ; $75a4: $00
	rst  $38                                         ; $75a5: $ff
	nop                                              ; $75a6: $00
	rst  $38                                         ; $75a7: $ff
	nop                                              ; $75a8: $00
	rst  $38                                         ; $75a9: $ff
	nop                                              ; $75aa: $00
	and  l                                           ; $75ab: $a5
	nop                                              ; $75ac: $00
	rst  $20                                         ; $75ad: $e7
	nop                                              ; $75ae: $00
	adc  b                                           ; $75af: $88
	rst  $38                                         ; $75b0: $ff
	ld   b, $ef                                      ; $75b1: $06 $ef
	rst  $38                                         ; $75b3: $ff
	ld   b, l                                        ; $75b4: $45
	rst  $38                                         ; $75b5: $ff
	ld   hl, $74ff                                   ; $75b6: $21 $ff $74
	add  b                                           ; $75b9: $80
	ld   c, $80                                      ; $75ba: $0e $80
	nop                                              ; $75bc: $00
	dec  bc                                          ; $75bd: $0b
	ld   bc, $7f13                                   ; $75be: $01 $13 $7f
	sub  [hl]                                        ; $75c1: $96
	rst  $38                                         ; $75c2: $ff
	ei                                               ; $75c3: $fb
	rst  $38                                         ; $75c4: $ff
	push de                                          ; $75c5: $d5
	rst  $38                                         ; $75c6: $ff
	add  b                                           ; $75c7: $80
	rst  $38                                         ; $75c8: $ff
	ld   d, l                                        ; $75c9: $55
	add  h                                           ; $75ca: $84
	rst  $38                                         ; $75cb: $ff
	add  b                                           ; $75cc: $80
	db   $fc                                         ; $75cd: $fc
	add  b                                           ; $75ce: $80
	ret  nz                                          ; $75cf: $c0

	sub  b                                           ; $75d0: $90
	rst  $38                                         ; $75d1: $ff
	add  b                                           ; $75d2: $80
	inc  bc                                          ; $75d3: $03
	add  c                                           ; $75d4: $81
	nop                                              ; $75d5: $00
	ld   a, [bc]                                     ; $75d6: $0a
	inc  bc                                          ; $75d7: $03
	ld   [bc], a                                     ; $75d8: $02
	ld   b, $3d                                      ; $75d9: $06 $3d
	dec  [hl]                                        ; $75db: $35
	push af                                          ; $75dc: $f5

jr_0a0_75dd:
	push hl                                          ; $75dd: $e5
	db   $eb                                         ; $75de: $eb
	set  5, e                                        ; $75df: $cb $eb
	xor  e                                           ; $75e1: $ab
	add  c                                           ; $75e2: $81
	db   $db                                         ; $75e3: $db
	nop                                              ; $75e4: $00
	ld   e, e                                        ; $75e5: $5b
	add  b                                           ; $75e6: $80
	db   $db                                         ; $75e7: $db
	add  b                                           ; $75e8: $80
	ret  c                                           ; $75e9: $d8

	add  b                                           ; $75ea: $80
	ret  nc                                          ; $75eb: $d0

	add  b                                           ; $75ec: $80
	add  b                                           ; $75ed: $80
	add  b                                           ; $75ee: $80
	nop                                              ; $75ef: $00
	add  b                                           ; $75f0: $80
	ld   bc, $0707                                   ; $75f1: $01 $07 $07
	ld   bc, $051f                                   ; $75f4: $01 $1f $05
	ld   a, [hl]                                     ; $75f7: $7e
	ld   [de], a                                     ; $75f8: $12
	pop  af                                          ; $75f9: $f1
	add  c                                           ; $75fa: $81
	add  b                                           ; $75fb: $80
	ld   e, $07                                      ; $75fc: $1e $07
	ld   h, c                                        ; $75fe: $61
	ld   l, c                                        ; $75ff: $69
	db   $10                                         ; $7600: $10
	dec  de                                          ; $7601: $1b
	add  e                                           ; $7602: $83
	or   [hl]                                        ; $7603: $b6
	ccf                                              ; $7604: $3f
	dec  b                                           ; $7605: $05
	add  b                                           ; $7606: $80
	scf                                              ; $7607: $37
	db   $10                                         ; $7608: $10
	or   [hl]                                        ; $7609: $b6
	cp   d                                           ; $760a: $ba
	or   b                                           ; $760b: $b0
	or   c                                           ; $760c: $b1
	add  c                                           ; $760d: $81
	add  [hl]                                        ; $760e: $86
	rlca                                             ; $760f: $07
	ld   sp, $c636                                   ; $7610: $31 $36 $c6
	ldh  a, [$30]                                    ; $7613: $f0 $30
	ret  nz                                          ; $7615: $c0

	jp   $3603                                       ; $7616: $c3 $03 $36


	ccf                                              ; $7619: $3f
	add  b                                           ; $761a: $80
	cp   a                                           ; $761b: $bf
	ld   a, [bc]                                     ; $761c: $0a
	adc  l                                           ; $761d: $8d
	cp   a                                           ; $761e: $bf
	inc  sp                                          ; $761f: $33
	or   a                                           ; $7620: $b7
	add  c                                           ; $7621: $81
	or   a                                           ; $7622: $b7
	ld   [hl], c                                     ; $7623: $71
	rst  $30                                         ; $7624: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7625: $cf
	ld   hl, sp+$38                                  ; $7626: $f8 $38
	add  b                                           ; $7628: $80
	pop  bc                                          ; $7629: $c1
	add  b                                           ; $762a: $80
	rrca                                             ; $762b: $0f
	add  b                                           ; $762c: $80
	ld   a, [hl]                                     ; $762d: $7e
	dec  bc                                          ; $762e: $0b
	ldh  a, [$f5]                                    ; $762f: $f0 $f5
	add  l                                           ; $7631: $85
	xor  b                                           ; $7632: $a8
	dec  l                                           ; $7633: $2d
	ld   b, [hl]                                     ; $7634: $46
	ld   l, h                                        ; $7635: $6c
	inc  de                                          ; $7636: $13
	ld   b, b                                        ; $7637: $40
	cp   h                                           ; $7638: $bc
	inc  bc                                          ; $7639: $03
	jp   $3f80                                       ; $763a: $c3 $80 $3f


	add  b                                           ; $763d: $80
	cp   $80                                         ; $763e: $fe $80
	ret  nz                                          ; $7640: $c0

	add  b                                           ; $7641: $80
	nop                                              ; $7642: $00
	add  b                                           ; $7643: $80
	rlca                                             ; $7644: $07
	add  b                                           ; $7645: $80
	ld   a, [hl]                                     ; $7646: $7e
	add  b                                           ; $7647: $80
	ldh  [$85], a                                    ; $7648: $e0 $85
	nop                                              ; $764a: $00
	add  b                                           ; $764b: $80
	add  b                                           ; $764c: $80
	add  d                                           ; $764d: $82
	nop                                              ; $764e: $00
	add  b                                           ; $764f: $80
	dec  sp                                          ; $7650: $3b
	ld   a, [bc]                                     ; $7651: $0a
	rst  $20                                         ; $7652: $e7
	rst  $38                                         ; $7653: $ff
	or   [hl]                                        ; $7654: $b6
	or   a                                           ; $7655: $b7
	or   h                                           ; $7656: $b4
	scf                                              ; $7657: $37
	ld   [hl], $37                                   ; $7658: $36 $37
	dec  sp                                          ; $765a: $3b
	jr   nz, jr_0a0_75dd                             ; $765b: $20 $80

	add  d                                           ; $765d: $82
	nop                                              ; $765e: $00
	db   $10                                         ; $765f: $10
	rra                                              ; $7660: $1f
	xor  b                                           ; $7661: $a8
	cp   a                                           ; $7662: $bf
	ld   c, a                                        ; $7663: $4f
	rst  $38                                         ; $7664: $ff
	ld   hl, sp-$01                                  ; $7665: $f8 $ff
	rlca                                             ; $7667: $07
	or   a                                           ; $7668: $b7
	or   h                                           ; $7669: $b4
	or   a                                           ; $766a: $b7
	cp   e                                           ; $766b: $bb
	cp   a                                           ; $766c: $bf
	ld   c, a                                        ; $766d: $4f
	rst  $38                                         ; $766e: $ff
	ld   hl, sp-$01                                  ; $766f: $f8 $ff
	add  d                                           ; $7671: $82
	rst  $30                                         ; $7672: $f7
	ld   [bc], a                                     ; $7673: $02
	inc  b                                           ; $7674: $04
	or   a                                           ; $7675: $b7
	cp   e                                           ; $7676: $bb
	add  c                                           ; $7677: $81
	cp   a                                           ; $7678: $bf
	inc  b                                           ; $7679: $04
	ld   c, a                                        ; $767a: $4f
	rst  $38                                         ; $767b: $ff
	or   $f7                                         ; $767c: $f6 $f7
	pop  af                                          ; $767e: $f1
	add  e                                           ; $767f: $83
	rst  $30                                         ; $7680: $f7
	rlca                                             ; $7681: $07
	nop                                              ; $7682: $00
	ld   b, b                                        ; $7683: $40
	db   $fc                                         ; $7684: $fc
	rst  $38                                         ; $7685: $ff
	jp   $2cff                                       ; $7686: $c3 $ff $2c


	db   $ec                                         ; $7689: $ec
	add  b                                           ; $768a: $80
	nop                                              ; $768b: $00
	add  b                                           ; $768c: $80
	ld   bc, $aa80                                   ; $768d: $01 $80 $aa
	add  hl, bc                                      ; $7690: $09
	db   $10                                         ; $7691: $10
	rra                                              ; $7692: $1f
	inc  l                                           ; $7693: $2c
	inc  a                                           ; $7694: $3c
	inc  e                                           ; $7695: $1c
	inc  a                                           ; $7696: $3c
	inc  b                                           ; $7697: $04
	inc  a                                           ; $7698: $3c
	nop                                              ; $7699: $00
	rlca                                             ; $769a: $07
	add  b                                           ; $769b: $80
	nop                                              ; $769c: $00
	add  b                                           ; $769d: $80
	ld   b, b                                        ; $769e: $40
	add  b                                           ; $769f: $80
	xor  b                                           ; $76a0: $a8
	add  b                                           ; $76a1: $80
	ld   b, l                                        ; $76a2: $45
	add  b                                           ; $76a3: $80
	adc  [hl]                                        ; $76a4: $8e
	add  b                                           ; $76a5: $80
	inc  d                                           ; $76a6: $14
	add  b                                           ; $76a7: $80
	and  b                                           ; $76a8: $a0
	add  b                                           ; $76a9: $80
	rlca                                             ; $76aa: $07
	ld   [bc], a                                     ; $76ab: $02
	ld   a, b                                        ; $76ac: $78
	ld   a, a                                        ; $76ad: $7f
	rst  $30                                         ; $76ae: $f7
	add  c                                           ; $76af: $81
	rst  $38                                         ; $76b0: $ff
	inc  b                                           ; $76b1: $04
	rst  $28                                         ; $76b2: $ef
	rst  $38                                         ; $76b3: $ff
	rst  JumpTable                                         ; $76b4: $df
	rst  $38                                         ; $76b5: $ff

jr_0a0_76b6:
	ccf                                              ; $76b6: $3f
	add  e                                           ; $76b7: $83
	rst  $38                                         ; $76b8: $ff
	ld   bc, $c03f                                   ; $76b9: $01 $3f $c0
	add  h                                           ; $76bc: $84
	nop                                              ; $76bd: $00
	add  b                                           ; $76be: $80
	inc  l                                           ; $76bf: $2c
	rrca                                             ; $76c0: $0f
	xor  h                                           ; $76c1: $ac
	xor  a                                           ; $76c2: $af
	add  hl, sp                                      ; $76c3: $39
	ei                                               ; $76c4: $fb
	ld   c, $ff                                      ; $76c5: $0e $ff
	ld   b, h                                        ; $76c7: $44
	ld   [hl], h                                     ; $76c8: $74
	or   a                                           ; $76c9: $b7
	cp   a                                           ; $76ca: $bf
	inc  a                                           ; $76cb: $3c
	inc  [hl]                                        ; $76cc: $34
	scf                                              ; $76cd: $37
	ccf                                              ; $76ce: $3f
	ld   l, $36                                      ; $76cf: $2e $36
	add  b                                           ; $76d1: $80
	ld   [hl], a                                     ; $76d2: $77
	ld   a, [bc]                                     ; $76d3: $0a
	db   $dd                                         ; $76d4: $dd
	db   $ed                                         ; $76d5: $ed
	cp   [hl]                                        ; $76d6: $be
	rst  JumpTable                                         ; $76d7: $df
	ld   a, b                                        ; $76d8: $78
	dec  sp                                          ; $76d9: $3b
	jp   hl                                          ; $76da: $e9


	rst  $28                                         ; $76db: $ef
	and  l                                           ; $76dc: $a5
	cp   c                                           ; $76dd: $b9
	add  hl, de                                      ; $76de: $19
	add  b                                           ; $76df: $80
	pop  hl                                          ; $76e0: $e1
	ld   bc, $0001                                   ; $76e1: $01 $01 $00
	add  b                                           ; $76e4: $80
	rrca                                             ; $76e5: $0f
	db   $10                                         ; $76e6: $10
	ld   a, b                                        ; $76e7: $78
	ld   a, c                                        ; $76e8: $79
	rst  ToBoot                                         ; $76e9: $c7
	pop  bc                                          ; $76ea: $c1
	ccf                                              ; $76eb: $3f
	dec  b                                           ; $76ec: $05
	rst  $38                                         ; $76ed: $ff
	cp   a                                           ; $76ee: $bf
	ld   a, a                                        ; $76ef: $7f
	ld   c, a                                        ; $76f0: $4f
	rst  $28                                         ; $76f1: $ef
	add  a                                           ; $76f2: $87
	rst  $20                                         ; $76f3: $e7
	sub  e                                           ; $76f4: $93
	db   $d3                                         ; $76f5: $d3
	dec  hl                                          ; $76f6: $2b
	xor  e                                           ; $76f7: $ab
	add  b                                           ; $76f8: $80
	ld   d, e                                        ; $76f9: $53
	ld   a, [bc]                                     ; $76fa: $0a
	dec  hl                                          ; $76fb: $2b
	db   $eb                                         ; $76fc: $eb
	add  a                                           ; $76fd: $87
	or   a                                           ; $76fe: $b7
	rst  $20                                         ; $76ff: $e7
	rst  $30                                         ; $7700: $f7
	db   $ed                                         ; $7701: $ed
	ld   l, a                                        ; $7702: $6f
	ldh  a, [$9f]                                    ; $7703: $f0 $9f
	rrca                                             ; $7705: $0f
	add  b                                           ; $7706: $80
	ldh  a, [$80]                                    ; $7707: $f0 $80
	rrca                                             ; $7709: $0f
	add  b                                           ; $770a: $80
	ld   hl, sp-$7e                                  ; $770b: $f8 $82
	nop                                              ; $770d: $00
	add  b                                           ; $770e: $80
	inc  bc                                          ; $770f: $03
	add  b                                           ; $7710: $80
	db   $fc                                         ; $7711: $fc
	add  l                                           ; $7712: $85
	nop                                              ; $7713: $00
	inc  bc                                          ; $7714: $03
	ccf                                              ; $7715: $3f
	nop                                              ; $7716: $00
	rst  $38                                         ; $7717: $ff
	ccf                                              ; $7718: $3f
	add  c                                           ; $7719: $81
	rst  $38                                         ; $771a: $ff
	add  b                                           ; $771b: $80
	ldh  a, [$95]                                    ; $771c: $f0 $95
	nop                                              ; $771e: $00
	add  b                                           ; $771f: $80
	ld   a, [bc]                                     ; $7720: $0a
	add  b                                           ; $7721: $80
	ld   [bc], a                                     ; $7722: $02
	add  b                                           ; $7723: $80
	nop                                              ; $7724: $00
	add  b                                           ; $7725: $80
	dec  b                                           ; $7726: $05
	add  b                                           ; $7727: $80
	xor  d                                           ; $7728: $aa
	add  b                                           ; $7729: $80
	ld   b, b                                        ; $772a: $40
	adc  b                                           ; $772b: $88
	nop                                              ; $772c: $00
	add  b                                           ; $772d: $80
	dec  d                                           ; $772e: $15
	add  b                                           ; $772f: $80
	jr   nz, jr_0a0_76b6                             ; $7730: $20 $84

	nop                                              ; $7732: $00
	add  b                                           ; $7733: $80
	ld   h, b                                        ; $7734: $60
	add  d                                           ; $7735: $82
	nop                                              ; $7736: $00
	add  b                                           ; $7737: $80
	ld   b, b                                        ; $7738: $40
	adc  b                                           ; $7739: $88

jr_0a0_773a:
	nop                                              ; $773a: $00
	add  b                                           ; $773b: $80
	ld   b, b                                        ; $773c: $40
	add  b                                           ; $773d: $80
	ld   [hl+], a                                    ; $773e: $22
	add  b                                           ; $773f: $80
	ld   [bc], a                                     ; $7740: $02
	add  b                                           ; $7741: $80
	nop                                              ; $7742: $00

jr_0a0_7743:
	add  b                                           ; $7743: $80
	ld   d, l                                        ; $7744: $55
	add  b                                           ; $7745: $80
	cp   $82                                         ; $7746: $fe $82
	nop                                              ; $7748: $00
	ld   [bc], a                                     ; $7749: $02
	and  [hl]                                        ; $774a: $a6
	rst  $38                                         ; $774b: $ff
	ld   e, c                                        ; $774c: $59
	add  b                                           ; $774d: $80
	rst  $38                                         ; $774e: $ff
	adc  [hl]                                        ; $774f: $8e
	nop                                              ; $7750: $00
	add  e                                           ; $7751: $83
	rst  $38                                         ; $7752: $ff
	ld   [bc], a                                     ; $7753: $02
	ld   c, $0f                                      ; $7754: $0e $0f
	ld   bc, $0082                                   ; $7756: $01 $82 $00
	inc  d                                           ; $7759: $14
	ldh  a, [$f1]                                    ; $775a: $f0 $f1
	rst  $38                                         ; $775c: $ff
	ld   l, b                                        ; $775d: $68
	ld   a, c                                        ; $775e: $79
	ld   sp, $d579                                   ; $775f: $31 $79 $d5
	db   $fd                                         ; $7762: $fd
	ld   e, c                                        ; $7763: $59
	ld   sp, hl                                      ; $7764: $f9
	ld   a, c                                        ; $7765: $79
	ld   sp, hl                                      ; $7766: $f9
	ldh  [c], a                                      ; $7767: $e2
	di                                               ; $7768: $f3

jr_0a0_7769:
	and  a                                           ; $7769: $a7
	rst  $20                                         ; $776a: $e7
	adc  l                                           ; $776b: $8d
	adc  a                                           ; $776c: $8f
	ld   d, c                                        ; $776d: $51
	ld   d, d                                        ; $776e: $52
	add  [hl]                                        ; $776f: $86
	ld   a, [$0215]                                  ; $7770: $fa $15 $02
	rst  $38                                         ; $7773: $ff
	ld   [bc], a                                     ; $7774: $02
	rst  $38                                         ; $7775: $ff
	nop                                              ; $7776: $00
	rst  $38                                         ; $7777: $ff
	nop                                              ; $7778: $00
	rst  $38                                         ; $7779: $ff
	nop                                              ; $777a: $00
	rst  $38                                         ; $777b: $ff
	nop                                              ; $777c: $00
	rst  $38                                         ; $777d: $ff
	nop                                              ; $777e: $00
	rst  $38                                         ; $777f: $ff
	nop                                              ; $7780: $00
	rst  $38                                         ; $7781: $ff
	nop                                              ; $7782: $00
	rst  $38                                         ; $7783: $ff
	nop                                              ; $7784: $00
	rst  $38                                         ; $7785: $ff
	nop                                              ; $7786: $00
	rst  $38                                         ; $7787: $ff
	rst  $38                                         ; $7788: $ff
	nop                                              ; $7789: $00
	cp   [hl]                                        ; $778a: $be
	nop                                              ; $778b: $00
	add  b                                           ; $778c: $80
	ldh  a, [$80]                                    ; $778d: $f0 $80
	cp   $92                                         ; $778f: $fe $92
	nop                                              ; $7791: $00
	add  b                                           ; $7792: $80
	rst  $38                                         ; $7793: $ff
	add  b                                           ; $7794: $80
	db   $ec                                         ; $7795: $ec
	add  d                                           ; $7796: $82
	nop                                              ; $7797: $00
	add  b                                           ; $7798: $80
	inc  bc                                          ; $7799: $03
	add  b                                           ; $779a: $80
	ccf                                              ; $779b: $3f
	sub  h                                           ; $779c: $94
	nop                                              ; $779d: $00
	add  b                                           ; $779e: $80
	ld   [bc], a                                     ; $779f: $02
	add  b                                           ; $77a0: $80
	inc  a                                           ; $77a1: $3c
	add  b                                           ; $77a2: $80
	ret  nz                                          ; $77a3: $c0

	adc  d                                           ; $77a4: $8a
	nop                                              ; $77a5: $00
	add  b                                           ; $77a6: $80
	rst  $30                                         ; $77a7: $f7
	add  c                                           ; $77a8: $81
	nop                                              ; $77a9: $00
	add  b                                           ; $77aa: $80
	jr   nz, jr_0a0_773a                             ; $77ab: $20 $8d

	nop                                              ; $77ad: $00
	add  b                                           ; $77ae: $80
	add  b                                           ; $77af: $80
	adc  [hl]                                        ; $77b0: $8e
	nop                                              ; $77b1: $00
	add  b                                           ; $77b2: $80
	inc  bc                                          ; $77b3: $03
	add  b                                           ; $77b4: $80
	rst  $38                                         ; $77b5: $ff
	add  b                                           ; $77b6: $80
	ld   hl, sp-$7f                                  ; $77b7: $f8 $81
	nop                                              ; $77b9: $00
	ld   [bc], a                                     ; $77ba: $02
	jr   nz, jr_0a0_77bd                             ; $77bb: $20 $00

jr_0a0_77bd:
	jr   nz, jr_0a0_7743                             ; $77bd: $20 $84

	nop                                              ; $77bf: $00
	add  b                                           ; $77c0: $80
	ld   c, $82                                      ; $77c1: $0e $82
	nop                                              ; $77c3: $00
	add  b                                           ; $77c4: $80
	ld   [bc], a                                     ; $77c5: $02
	add  b                                           ; $77c6: $80
	ld   bc, $0080                                   ; $77c7: $01 $80 $00
	add  b                                           ; $77ca: $80
	ld   b, b                                        ; $77cb: $40
	add  b                                           ; $77cc: $80
	call c, $9e80                                    ; $77cd: $dc $80 $9e
	add  b                                           ; $77d0: $80
	rra                                              ; $77d1: $1f
	add  b                                           ; $77d2: $80
	rlca                                             ; $77d3: $07
	sbc  [hl]                                        ; $77d4: $9e
	nop                                              ; $77d5: $00
	add  b                                           ; $77d6: $80
	ld   bc, $0083                                   ; $77d7: $01 $83 $00
	add  b                                           ; $77da: $80

jr_0a0_77db:
	ld   bc, $0095                                   ; $77db: $01 $95 $00
	add  b                                           ; $77de: $80
	inc  bc                                          ; $77df: $03
	add  [hl]                                        ; $77e0: $86
	nop                                              ; $77e1: $00
	add  b                                           ; $77e2: $80
	jr   nc, jr_0a0_7769                             ; $77e3: $30 $84

	nop                                              ; $77e5: $00
	add  b                                           ; $77e6: $80
	add  b                                           ; $77e7: $80
	add  b                                           ; $77e8: $80
	add  c                                           ; $77e9: $81
	add  b                                           ; $77ea: $80
	rrca                                             ; $77eb: $0f
	add  d                                           ; $77ec: $82
	nop                                              ; $77ed: $00
	add  d                                           ; $77ee: $82
	ldh  a, [$80]                                    ; $77ef: $f0 $80
	ld   a, [hl]                                     ; $77f1: $7e
	sub  e                                           ; $77f2: $93
	nop                                              ; $77f3: $00
	add  b                                           ; $77f4: $80
	ld   bc, $0085                                   ; $77f5: $01 $85 $00

Jump_0a0_77f8:
	add  b                                           ; $77f8: $80
	ldh  a, [$80]                                    ; $77f9: $f0 $80
	rra                                              ; $77fb: $1f
	adc  d                                           ; $77fc: $8a
	nop                                              ; $77fd: $00
	add  b                                           ; $77fe: $80
	ret  nz                                          ; $77ff: $c0

	add  b                                           ; $7800: $80
	ld   a, [hl]                                     ; $7801: $7e
	add  d                                           ; $7802: $82
	rst  $38                                         ; $7803: $ff
	sbc  c                                           ; $7804: $99
	nop                                              ; $7805: $00
	add  b                                           ; $7806: $80
	ld   [bc], a                                     ; $7807: $02
	sbc  e                                           ; $7808: $9b
	nop                                              ; $7809: $00
	add  b                                           ; $780a: $80
	ld   b, b                                        ; $780b: $40
	add  b                                           ; $780c: $80
	ldh  [$80], a                                    ; $780d: $e0 $80
	ret  nz                                          ; $780f: $c0

	add  b                                           ; $7810: $80
	rst  $38                                         ; $7811: $ff
	add  b                                           ; $7812: $80
	inc  a                                           ; $7813: $3c
	adc  e                                           ; $7814: $8b
	nop                                              ; $7815: $00
	ld   [bc], a                                     ; $7816: $02
	stop                                             ; $7817: $10 $00
	db   $10                                         ; $7819: $10
	add  d                                           ; $781a: $82
	nop                                              ; $781b: $00
	add  d                                           ; $781c: $82
	inc  bc                                          ; $781d: $03
	sbc  h                                           ; $781e: $9c
	nop                                              ; $781f: $00
	add  b                                           ; $7820: $80
	ret  nz                                          ; $7821: $c0

	add  b                                           ; $7822: $80
	ld   h, b                                        ; $7823: $60
	add  b                                           ; $7824: $80
	ld   a, $80                                      ; $7825: $3e $80
	rst  $38                                         ; $7827: $ff
	add  b                                           ; $7828: $80
	ld   c, $90                                      ; $7829: $0e $90
	nop                                              ; $782b: $00
	add  b                                           ; $782c: $80
	ld   c, a                                        ; $782d: $4f
	add  b                                           ; $782e: $80
	rst  $38                                         ; $782f: $ff
	add  b                                           ; $7830: $80
	sbc  h                                           ; $7831: $9c
	and  h                                           ; $7832: $a4
	nop                                              ; $7833: $00
	add  b                                           ; $7834: $80
	db   $fc                                         ; $7835: $fc
	add  b                                           ; $7836: $80
	ldh  [$80], a                                    ; $7837: $e0 $80
	ld   e, $8a                                      ; $7839: $1e $8a
	nop                                              ; $783b: $00
	add  b                                           ; $783c: $80
	ld   bc, $c780                                   ; $783d: $01 $80 $c7
	add  b                                           ; $7840: $80
	rst  $38                                         ; $7841: $ff
	add  b                                           ; $7842: $80
	ld   a, [hl]                                     ; $7843: $7e
	add  l                                           ; $7844: $85
	nop                                              ; $7845: $00
	ld   [bc], a                                     ; $7846: $02
	ld   [bc], a                                     ; $7847: $02
	nop                                              ; $7848: $00
	ld   [bc], a                                     ; $7849: $02
	adc  h                                           ; $784a: $8c
	nop                                              ; $784b: $00
	add  b                                           ; $784c: $80
	ret  nz                                          ; $784d: $c0

	add  b                                           ; $784e: $80
	nop                                              ; $784f: $00
	add  b                                           ; $7850: $80
	rst  $38                                         ; $7851: $ff
	add  e                                           ; $7852: $83
	nop                                              ; $7853: $00
	add  b                                           ; $7854: $80
	db   $10                                         ; $7855: $10
	sub  c                                           ; $7856: $91
	nop                                              ; $7857: $00
	add  b                                           ; $7858: $80
	jr   jr_0a0_77db                                 ; $7859: $18 $80

	ret  nz                                          ; $785b: $c0

	adc  l                                           ; $785c: $8d
	nop                                              ; $785d: $00
	add  b                                           ; $785e: $80
	ld   [bc], a                                     ; $785f: $02
	rst  $38                                         ; $7860: $ff
	nop                                              ; $7861: $00
	rst  $38                                         ; $7862: $ff
	nop                                              ; $7863: $00
	rst  $38                                         ; $7864: $ff
	nop                                              ; $7865: $00
	rst  $38                                         ; $7866: $ff
	nop                                              ; $7867: $00
	rst  $38                                         ; $7868: $ff
	nop                                              ; $7869: $00
	sbc  e                                           ; $786a: $9b
	nop                                              ; $786b: $00
	pop  bc                                          ; $786c: $c1
	nop                                              ; $786d: $00
	adc  d                                           ; $786e: $8a
	nop                                              ; $786f: $00
	inc  b                                           ; $7870: $04
	inc  b                                           ; $7871: $04
	nop                                              ; $7872: $00
	ld   [bc], a                                     ; $7873: $02
	nop                                              ; $7874: $00
	inc  b                                           ; $7875: $04
	add  b                                           ; $7876: $80
	dec  b                                           ; $7877: $05
	dec  c                                           ; $7878: $0d
	ld   bc, $6202                                   ; $7879: $01 $02 $62
	ld   b, d                                        ; $787c: $42
	jr   jr_0a0_7889                                 ; $787d: $18 $0a

	inc  c                                           ; $787f: $0c
	ld   h, $06                                      ; $7880: $26 $06
	rla                                              ; $7882: $17
	ld   b, a                                        ; $7883: $47
	inc  bc                                          ; $7884: $03
	inc  hl                                          ; $7885: $23
	ld   l, a                                        ; $7886: $6f
	add  d                                           ; $7887: $82
	nop                                              ; $7888: $00

jr_0a0_7889:
	nop                                              ; $7889: $00
	ld   [bc], a                                     ; $788a: $02
	add  c                                           ; $788b: $81
	nop                                              ; $788c: $00
	inc  bc                                          ; $788d: $03
	dec  b                                           ; $788e: $05
	ld   b, c                                        ; $788f: $41
	ld   bc, $8060                                   ; $7890: $01 $60 $80
	ld   b, b                                        ; $7893: $40
	ld   b, $10                                      ; $7894: $06 $10
	nop                                              ; $7896: $00
	ld   [$8202], sp                                 ; $7897: $08 $02 $82
	and  d                                           ; $789a: $a2
	ldh  [c], a                                      ; $789b: $e2
	add  b                                           ; $789c: $80
	or   $80                                         ; $789d: $f6 $80
	ld   [hl], a                                     ; $789f: $77
	add  d                                           ; $78a0: $82
	ld   a, a                                        ; $78a1: $7f

jr_0a0_78a2:
	add  c                                           ; $78a2: $81
	rst  $38                                         ; $78a3: $ff
	add  [hl]                                        ; $78a4: $86
	nop                                              ; $78a5: $00
	ld   b, $44                                      ; $78a6: $06 $44
	ld   b, b                                        ; $78a8: $40
	ld   c, b                                        ; $78a9: $48
	nop                                              ; $78aa: $00
	sub  c                                           ; $78ab: $91
	add  l                                           ; $78ac: $85
	and  a                                           ; $78ad: $a7
	add  d                                           ; $78ae: $82
	ld   [bc], a                                     ; $78af: $02
	add  b                                           ; $78b0: $80
	add  h                                           ; $78b1: $84
	add  b                                           ; $78b2: $80
	ret  z                                           ; $78b3: $c8

	add  b                                           ; $78b4: $80
	reti                                             ; $78b5: $d9


	add  b                                           ; $78b6: $80
	db   $d3                                         ; $78b7: $d3
	add  c                                           ; $78b8: $81
	rst  $38                                         ; $78b9: $ff
	add  b                                           ; $78ba: $80
	halt                                             ; $78bb: $76
	adc  b                                           ; $78bc: $88
	nop                                              ; $78bd: $00
	ld   b, $82                                      ; $78be: $06 $82
	sub  b                                           ; $78c0: $90
	add  h                                           ; $78c1: $84
	ld   [hl+], a                                    ; $78c2: $22
	ld   a, [bc]                                     ; $78c3: $0a
	ld   d, b                                        ; $78c4: $50
	ld   de, $0084                                   ; $78c5: $11 $84 $00
	add  b                                           ; $78c8: $80
	db   $10                                         ; $78c9: $10
	add  b                                           ; $78ca: $80
	ld   [hl], c                                     ; $78cb: $71
	add  b                                           ; $78cc: $80
	ei                                               ; $78cd: $fb
	add  b                                           ; $78ce: $80
	sbc  $00                                         ; $78cf: $de $00
	rst  $38                                         ; $78d1: $ff
	adc  e                                           ; $78d2: $8b
	nop                                              ; $78d3: $00
	nop                                              ; $78d4: $00
	add  b                                           ; $78d5: $80
	add  b                                           ; $78d6: $80
	nop                                              ; $78d7: $00
	ld   a, [bc]                                     ; $78d8: $0a
	ld   [bc], a                                     ; $78d9: $02
	db   $10                                         ; $78da: $10
	inc  h                                           ; $78db: $24
	ld   b, d                                        ; $78dc: $42
	ld   a, [bc]                                     ; $78dd: $0a
	ld   [de], a                                     ; $78de: $12
	db   $10                                         ; $78df: $10
	add  c                                           ; $78e0: $81
	add  b                                           ; $78e1: $80
	ld   b, $04                                      ; $78e2: $06 $04
	add  b                                           ; $78e4: $80
	ld   [$0980], sp                                 ; $78e5: $08 $80 $09
	ld   [bc], a                                     ; $78e8: $02
	sub  c                                           ; $78e9: $91
	ld   de, $8201                                   ; $78ea: $11 $01 $82
	nop                                              ; $78ed: $00
	add  c                                           ; $78ee: $81
	ld   bc, $0305                                   ; $78ef: $01 $05 $03
	ld   [bc], a                                     ; $78f2: $02
	inc  b                                           ; $78f3: $04
	dec  b                                           ; $78f4: $05
	add  hl, bc                                      ; $78f5: $09
	ld   [$1280], sp                                 ; $78f6: $08 $80 $12
	add  d                                           ; $78f9: $82
	inc  b                                           ; $78fa: $04
	add  b                                           ; $78fb: $80
	ld   [$0081], sp                                 ; $78fc: $08 $81 $00
	nop                                              ; $78ff: $00
	ld   b, b                                        ; $7900: $40
	add  h                                           ; $7901: $84
	ld   b, d                                        ; $7902: $42
	add  b                                           ; $7903: $80
	ld   b, b                                        ; $7904: $40
	ld   b, $43                                      ; $7905: $06 $43
	ld   c, [hl]                                     ; $7907: $4e
	ld   c, h                                        ; $7908: $4c
	ld   b, [hl]                                     ; $7909: $46
	ld   c, [hl]                                     ; $790a: $4e
	ld   e, d                                        ; $790b: $5a
	ld   d, d                                        ; $790c: $52
	add  c                                           ; $790d: $81
	ld   l, d                                        ; $790e: $6a
	ld   a, [bc]                                     ; $790f: $0a
	ld   l, e                                        ; $7910: $6b
	ld   [hl], h                                     ; $7911: $74
	halt                                             ; $7912: $76
	ld   c, b                                        ; $7913: $48
	ld   b, b                                        ; $7914: $40
	ld   a, b                                        ; $7915: $78
	ld   [hl], h                                     ; $7916: $74
	ld   h, b                                        ; $7917: $60
	ld   l, b                                        ; $7918: $68
	nop                                              ; $7919: $00
	jr   nc, jr_0a0_78a2                             ; $791a: $30 $86

	nop                                              ; $791c: $00
	add  c                                           ; $791d: $81
	add  b                                           ; $791e: $80
	inc  bc                                          ; $791f: $03
	and  b                                           ; $7920: $a0
	add  b                                           ; $7921: $80
	sub  b                                           ; $7922: $90
	add  b                                           ; $7923: $80
	add  b                                           ; $7924: $80
	and  b                                           ; $7925: $a0
	add  b                                           ; $7926: $80
	ld   h, b                                        ; $7927: $60
	nop                                              ; $7928: $00
	ld   hl, sp-$7f                                  ; $7929: $f8 $81
	ldh  a, [rTIMA]                                  ; $792b: $f0 $05
	db   $fc                                         ; $792d: $fc
	ld   hl, sp-$06                                  ; $792e: $f8 $fa
	ld   hl, sp-$0d                                  ; $7930: $f8 $f3
	ldh  a, [c]                                      ; $7932: $f2
	add  b                                           ; $7933: $80
	rst  $20                                         ; $7934: $e7
	ld   [$c787], sp                                 ; $7935: $08 $87 $c7
	ld   d, b                                        ; $7938: $50
	sub  a                                           ; $7939: $97
	xor  a                                           ; $793a: $af
	cpl                                              ; $793b: $2f
	rla                                              ; $793c: $17
	ld   e, a                                        ; $793d: $5f
	or   b                                           ; $793e: $b0
	add  e                                           ; $793f: $83
	nop                                              ; $7940: $00
	inc  d                                           ; $7941: $14

jr_0a0_7942:
	add  b                                           ; $7942: $80
	nop                                              ; $7943: $00
	ldh  a, [$80]                                    ; $7944: $f0 $80
	adc  h                                           ; $7946: $8c
	and  b                                           ; $7947: $a0
	ld   [hl+], a                                    ; $7948: $22
	inc  [hl]                                        ; $7949: $34
	dec  a                                           ; $794a: $3d
	ld   l, [hl]                                     ; $794b: $6e
	ld   e, b                                        ; $794c: $58
	ld   a, a                                        ; $794d: $7f
	ld   a, $ff                                      ; $794e: $3e $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7950: $cf
	rst  $38                                         ; $7951: $ff
	add  hl, sp                                      ; $7952: $39
	rst  $38                                         ; $7953: $ff
	ld   [hl], a                                     ; $7954: $77
	rst  $38                                         ; $7955: $ff
	cp   $83                                         ; $7956: $fe $83
	rst  $38                                         ; $7958: $ff
	adc  h                                           ; $7959: $8c
	nop                                              ; $795a: $00
	dec  bc                                          ; $795b: $0b
	add  b                                           ; $795c: $80
	nop                                              ; $795d: $00
	ld   h, b                                        ; $795e: $60
	add  b                                           ; $795f: $80
	jr   jr_0a0_7942                                 ; $7960: $18 $e0

	add  [hl]                                        ; $7962: $86
	ld   hl, sp-$1f                                  ; $7963: $f8 $e1
	cp   $fa                                         ; $7965: $fe $fa
	db   $fc                                         ; $7967: $fc
	add  b                                           ; $7968: $80
	db   $fd                                         ; $7969: $fd
	inc  b                                           ; $796a: $04
	dec  hl                                          ; $796b: $2b
	ei                                               ; $796c: $fb
	db   $d3                                         ; $796d: $d3
	ei                                               ; $796e: $fb
	rlca                                             ; $796f: $07
	add  e                                           ; $7970: $83
	nop                                              ; $7971: $00
	ld   [$0080], sp                                 ; $7972: $08 $80 $00
	ld   h, b                                        ; $7975: $60
	nop                                              ; $7976: $00
	inc  e                                           ; $7977: $1c
	ldh  [$e6], a                                    ; $7978: $e0 $e6
	db   $fc                                         ; $797a: $fc
	ei                                               ; $797b: $fb
	add  e                                           ; $797c: $83
	cp   $82                                         ; $797d: $fe $82
	rst  $38                                         ; $797f: $ff
	nop                                              ; $7980: $00
	ei                                               ; $7981: $fb
	add  l                                           ; $7982: $85
	rst  $38                                         ; $7983: $ff
	nop                                              ; $7984: $00
	rlca                                             ; $7985: $07
	sub  c                                           ; $7986: $91
	nop                                              ; $7987: $00
	nop                                              ; $7988: $00
	add  b                                           ; $7989: $80
	add  e                                           ; $798a: $83
	nop                                              ; $798b: $00
	nop                                              ; $798c: $00
	ret  nz                                          ; $798d: $c0

	add  e                                           ; $798e: $83
	add  b                                           ; $798f: $80
	inc  bc                                          ; $7990: $03
	call nz, $0503                                   ; $7991: $c4 $03 $05
	ld   bc, $0082                                   ; $7994: $01 $82 $00
	nop                                              ; $7997: $00
	inc  b                                           ; $7998: $04
	add  c                                           ; $7999: $81
	ld   bc, $0d01                                   ; $799a: $01 $01 $0d
	inc  b                                           ; $799d: $04
	add  b                                           ; $799e: $80
	ld   b, $05                                      ; $799f: $06 $05
	ld   e, $0e                                      ; $79a1: $1e $0e
	cpl                                              ; $79a3: $2f
	rrca                                             ; $79a4: $0f
	rst  JumpTable                                         ; $79a5: $df
	rra                                              ; $79a6: $1f
	add  b                                           ; $79a7: $80
	ld   e, a                                        ; $79a8: $5f
	add  h                                           ; $79a9: $84
	rst  JumpTable                                         ; $79aa: $df
	add  b                                           ; $79ab: $80
	sbc  $00                                         ; $79ac: $de $00
	rst  $38                                         ; $79ae: $ff

jr_0a0_79af:
	add  c                                           ; $79af: $81
	nop                                              ; $79b0: $00
	ld   c, $01                                      ; $79b1: $0e $01
	nop                                              ; $79b3: $00
	ld   b, $00                                      ; $79b4: $06 $00
	jr   c, jr_0a0_79ba                              ; $79b6: $38 $02

	ldh  a, [c]                                      ; $79b8: $f2
	ld   a, [hl-]                                    ; $79b9: $3a

jr_0a0_79ba:
	ei                                               ; $79ba: $fb
	push af                                          ; $79bb: $f5
	or   l                                           ; $79bc: $b5
	push af                                          ; $79bd: $f5
	ld   [hl], l                                     ; $79be: $75
	push af                                          ; $79bf: $f5
	push de                                          ; $79c0: $d5
	add  c                                           ; $79c1: $81
	push af                                          ; $79c2: $f5
	ld   [bc], a                                     ; $79c3: $02
	push hl                                          ; $79c4: $e5
	push af                                          ; $79c5: $f5
	db   $f4                                         ; $79c6: $f4
	add  h                                           ; $79c7: $84
	or   $01                                         ; $79c8: $f6 $01
	cp   $01                                         ; $79ca: $fe $01
	add  a                                           ; $79cc: $87
	nop                                              ; $79cd: $00
	ld   c, $01                                      ; $79ce: $0e $01
	nop                                              ; $79d0: $00
	rrca                                             ; $79d1: $0f
	ld   bc, $0f3f                                   ; $79d2: $01 $3f $0f
	rst  JumpTable                                         ; $79d5: $df
	rra                                              ; $79d6: $1f
	ret  c                                           ; $79d7: $d8

	rst  JumpTable                                         ; $79d8: $df
	rst  $10                                         ; $79d9: $d7
	rst  JumpTable                                         ; $79da: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79db: $cf
	rst  JumpTable                                         ; $79dc: $df
	sbc  a                                           ; $79dd: $9f
	add  l                                           ; $79de: $85
	cp   a                                           ; $79df: $bf
	ld   b, $c0                                      ; $79e0: $06 $c0
	nop                                              ; $79e2: $00
	ld   bc, $0200                                   ; $79e3: $01 $00 $02
	ld   bc, $8105                                   ; $79e6: $01 $05 $81
	inc  bc                                          ; $79e9: $03
	nop                                              ; $79ea: $00
	dec  bc                                          ; $79eb: $0b
	add  e                                           ; $79ec: $83
	rlca                                             ; $79ed: $07
	nop                                              ; $79ee: $00
	rla                                              ; $79ef: $17
	add  c                                           ; $79f0: $81
	rrca                                             ; $79f1: $0f
	nop                                              ; $79f2: $00
	cpl                                              ; $79f3: $2f
	add  e                                           ; $79f4: $83
	rra                                              ; $79f5: $1f
	nop                                              ; $79f6: $00
	ld   a, a                                        ; $79f7: $7f
	add  b                                           ; $79f8: $80
	ccf                                              ; $79f9: $3f
	add  c                                           ; $79fa: $81
	cpl                                              ; $79fb: $2f
	nop                                              ; $79fc: $00
	ld   [hl], b                                     ; $79fd: $70
	sub  c                                           ; $79fe: $91
	nop                                              ; $79ff: $00
	add  b                                           ; $7a00: $80
	add  b                                           ; $7a01: $80
	add  hl, bc                                      ; $7a02: $09
	ret  nz                                          ; $7a03: $c0

	ld   b, b                                        ; $7a04: $40
	ld   h, b                                        ; $7a05: $60
	and  b                                           ; $7a06: $a0
	ld   a, c                                        ; $7a07: $79
	add  hl, bc                                      ; $7a08: $09
	cpl                                              ; $7a09: $2f
	stop                                             ; $7a0a: $10 $00
	rrca                                             ; $7a0c: $0f
	adc  d                                           ; $7a0d: $8a
	inc  bc                                          ; $7a0e: $03
	add  c                                           ; $7a0f: $81
	rlca                                             ; $7a10: $07
	ld   bc, $0e06                                   ; $7a11: $01 $06 $0e
	add  b                                           ; $7a14: $80
	inc  c                                           ; $7a15: $0c
	dec  c                                           ; $7a16: $0d
	add  hl, bc                                      ; $7a17: $09
	add  hl, de                                      ; $7a18: $19
	inc  de                                          ; $7a19: $13
	inc  sp                                          ; $7a1a: $33
	daa                                              ; $7a1b: $27
	ld   h, e                                        ; $7a1c: $63
	ld   c, e                                        ; $7a1d: $4b
	jp   $8792                                       ; $7a1e: $c3 $92 $87


	ld   h, h                                        ; $7a21: $64
	ld   c, [hl]                                     ; $7a22: $4e
	ret  nz                                          ; $7a23: $c0

	inc  c                                           ; $7a24: $0c
	rst  $38                                         ; $7a25: $ff
	nop                                              ; $7a26: $00
	rst  $38                                         ; $7a27: $ff
	nop                                              ; $7a28: $00
	rst  $38                                         ; $7a29: $ff
	nop                                              ; $7a2a: $00
	ret  nz                                          ; $7a2b: $c0

	nop                                              ; $7a2c: $00
	jr   nz, jr_0a0_79af                             ; $7a2d: $20 $80

	nop                                              ; $7a2f: $00
	ret  nz                                          ; $7a30: $c0

	nop                                              ; $7a31: $00
	ld   [hl], b                                     ; $7a32: $70
	nop                                              ; $7a33: $00
	ccf                                              ; $7a34: $3f
	nop                                              ; $7a35: $00
	rrca                                             ; $7a36: $0f
	nop                                              ; $7a37: $00
	inc  bc                                          ; $7a38: $03
	nop                                              ; $7a39: $00
	dec  b                                           ; $7a3a: $05
	nop                                              ; $7a3b: $00
	ld   a, [bc]                                     ; $7a3c: $0a
	nop                                              ; $7a3d: $00
	inc  d                                           ; $7a3e: $14
	nop                                              ; $7a3f: $00
	jr   z, jr_0a0_7a42                              ; $7a40: $28 $00

jr_0a0_7a42:
	ld   d, c                                        ; $7a42: $51
	nop                                              ; $7a43: $00
	db   $e3                                         ; $7a44: $e3
	ld   bc, $038f                                   ; $7a45: $01 $8f $03
	adc  a                                           ; $7a48: $8f
	nop                                              ; $7a49: $00
	ret  nz                                          ; $7a4a: $c0

	add  b                                           ; $7a4b: $80
	db   $e3                                         ; $7a4c: $e3
	ld   b, b                                        ; $7a4d: $40
	rra                                              ; $7a4e: $1f
	add  b                                           ; $7a4f: $80
	nop                                              ; $7a50: $00
	ld   bc, $38ba                                   ; $7a51: $01 $ba $38
	add  d                                           ; $7a54: $82
	ld   a, h                                        ; $7a55: $7c
	dec  b                                           ; $7a56: $05
	ld   a, c                                        ; $7a57: $79
	or   a                                           ; $7a58: $b7
	inc  bc                                          ; $7a59: $03
	di                                               ; $7a5a: $f3
	rlca                                             ; $7a5b: $07
	rst  ToBoot                                         ; $7a5c: $c7
	add  d                                           ; $7a5d: $82
	rlca                                             ; $7a5e: $07
	add  d                                           ; $7a5f: $82
	rrca                                             ; $7a60: $0f
	add  b                                           ; $7a61: $80
	inc  c                                           ; $7a62: $0c
	add  hl, bc                                      ; $7a63: $09
	nop                                              ; $7a64: $00
	ld   hl, $3102                                   ; $7a65: $21 $02 $31
	ld   bc, $0307                                   ; $7a68: $01 $07 $03
	rrca                                             ; $7a6b: $0f
	inc  bc                                          ; $7a6c: $03
	dec  de                                          ; $7a6d: $1b
	add  b                                           ; $7a6e: $80
	inc  bc                                          ; $7a6f: $03
	add  e                                           ; $7a70: $83
	ld   bc, $fe0a                                   ; $7a71: $01 $0a $fe
	ld   c, b                                        ; $7a74: $48
	ld   c, e                                        ; $7a75: $4b
	inc  hl                                          ; $7a76: $23
	add  e                                           ; $7a77: $83
	add  d                                           ; $7a78: $82
	add  [hl]                                        ; $7a79: $86
	sub  l                                           ; $7a7a: $95
	ld   d, $54                                      ; $7a7b: $16 $54
	scf                                              ; $7a7d: $37
	add  b                                           ; $7a7e: $80
	ld   [hl], $80                                   ; $7a7f: $36 $80
	inc  [hl]                                        ; $7a81: $34
	dec  bc                                          ; $7a82: $0b
	scf                                              ; $7a83: $37
	adc  [hl]                                        ; $7a84: $8e
	nop                                              ; $7a85: $00
	add  e                                           ; $7a86: $83
	nop                                              ; $7a87: $00
	add  $80                                         ; $7a88: $c6 $80
	inc  c                                           ; $7a8a: $0c
	nop                                              ; $7a8b: $00
	ld   hl, sp-$80                                  ; $7a8c: $f8 $80
	or   b                                           ; $7a8e: $b0
	add  b                                           ; $7a8f: $80
	inc  e                                           ; $7a90: $1c
	add  b                                           ; $7a91: $80
	ld   hl, sp+$0f                                  ; $7a92: $f8 $0f
	ldh  a, [$d1]                                    ; $7a94: $f0 $d1
	nop                                              ; $7a96: $00
	jr   nz, jr_0a0_7a99                             ; $7a97: $20 $00

jr_0a0_7a99:
	ld   [bc], a                                     ; $7a99: $02
	ld   bc, $0305                                   ; $7a9a: $01 $05 $03
	ld   a, [bc]                                     ; $7a9d: $0a
	ld   b, $17                                      ; $7a9e: $06 $17
	rrca                                             ; $7aa0: $0f
	cpl                                              ; $7aa1: $2f
	rra                                              ; $7aa2: $1f
	ld   e, a                                        ; $7aa3: $5f
	add  b                                           ; $7aa4: $80
	scf                                              ; $7aa5: $37
	add  b                                           ; $7aa6: $80
	ccf                                              ; $7aa7: $3f
	add  b                                           ; $7aa8: $80
	ld   a, $80                                      ; $7aa9: $3e $80
	inc  a                                           ; $7aab: $3c
	add  b                                           ; $7aac: $80
	add  hl, sp                                      ; $7aad: $39
	add  b                                           ; $7aae: $80
	ld   sp, $0000                                   ; $7aaf: $31 $00 $00
	add  b                                           ; $7ab2: $80
	inc  hl                                          ; $7ab3: $23
	add  b                                           ; $7ab4: $80
	cpl                                              ; $7ab5: $2f
	nop                                              ; $7ab6: $00
	add  b                                           ; $7ab7: $80
	add  h                                           ; $7ab8: $84
	rst  $38                                         ; $7ab9: $ff
	inc  b                                           ; $7aba: $04
	db   $fc                                         ; $7abb: $fc
	db   $fd                                         ; $7abc: $fd
	add  c                                           ; $7abd: $81
	rst  $38                                         ; $7abe: $ff
	ld   a, a                                        ; $7abf: $7f
	add  d                                           ; $7ac0: $82
	rst  $38                                         ; $7ac1: $ff
	nop                                              ; $7ac2: $00
	ld   a, [hl]                                     ; $7ac3: $7e
	add  e                                           ; $7ac4: $83
	nop                                              ; $7ac5: $00
	ld   [bc], a                                     ; $7ac6: $02
	ld   [bc], a                                     ; $7ac7: $02
	ld   bc, $81c1                                   ; $7ac8: $01 $c1 $81
	add  c                                           ; $7acb: $81
	nop                                              ; $7acc: $00
	add  l                                           ; $7acd: $85
	add  c                                           ; $7ace: $81
	add  e                                           ; $7acf: $83
	ld   bc, $b47c                                   ; $7ad0: $01 $7c $b4
	add  l                                           ; $7ad3: $85
	db   $f4                                         ; $7ad4: $f4
	add  l                                           ; $7ad5: $85
	db   $e4                                         ; $7ad6: $e4
	add  hl, bc                                      ; $7ad7: $09
	inc  e                                           ; $7ad8: $1c
	nop                                              ; $7ad9: $00
	ld   bc, $0200                                   ; $7ada: $01 $00 $02
	ld   bc, $0005                                   ; $7add: $01 $05 $00
	ld   a, [bc]                                     ; $7ae0: $0a
	ld   [bc], a                                     ; $7ae1: $02
	add  b                                           ; $7ae2: $80
	ld   b, $04                                      ; $7ae3: $06 $04
	inc  e                                           ; $7ae5: $1c
	inc  c                                           ; $7ae6: $0c
	dec  a                                           ; $7ae7: $3d
	dec  e                                           ; $7ae8: $1d
	ret  nz                                          ; $7ae9: $c0

	add  b                                           ; $7aea: $80
	ld   h, a                                        ; $7aeb: $67
	add  b                                           ; $7aec: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7aed: $cf
	add  b                                           ; $7aee: $80
	sbc  a                                           ; $7aef: $9f
	add  b                                           ; $7af0: $80
	rra                                              ; $7af1: $1f
	inc  b                                           ; $7af2: $04
	ld   e, $7e                                      ; $7af3: $1e $7e
	ld   h, d                                        ; $7af5: $62
	cp   $fc                                         ; $7af6: $fe $fc
	add  b                                           ; $7af8: $80
	cp   $00                                         ; $7af9: $fe $00
	nop                                              ; $7afb: $00
	add  d                                           ; $7afc: $82
	rst  $38                                         ; $7afd: $ff
	add  d                                           ; $7afe: $82
	ld   a, a                                        ; $7aff: $7f
	add  d                                           ; $7b00: $82
	ld   [hl], a                                     ; $7b01: $77
	add  b                                           ; $7b02: $80
	daa                                              ; $7b03: $27
	ld   bc, $0007                                   ; $7b04: $01 $07 $00
	add  c                                           ; $7b07: $81
	ldh  a, [rP1]                                    ; $7b08: $f0 $00
	ld   hl, sp-$7f                                  ; $7b0a: $f8 $81
	ldh  [rP1], a                                    ; $7b0c: $e0 $00
	ldh  a, [$81]                                    ; $7b0e: $f0 $81
	ret  nz                                          ; $7b10: $c0

	nop                                              ; $7b11: $00
	ldh  [$81], a                                    ; $7b12: $e0 $81
	add  b                                           ; $7b14: $80
	nop                                              ; $7b15: $00
	ld   b, b                                        ; $7b16: $40
	rst  $38                                         ; $7b17: $ff
	nop                                              ; $7b18: $00
	rst  $38                                         ; $7b19: $ff
	nop                                              ; $7b1a: $00
	rst  $38                                         ; $7b1b: $ff
	nop                                              ; $7b1c: $00
	rst  $38                                         ; $7b1d: $ff

jr_0a0_7b1e:
	nop                                              ; $7b1e: $00
	rst  $38                                         ; $7b1f: $ff
	nop                                              ; $7b20: $00
	ld   hl, sp+$00                                  ; $7b21: $f8 $00
	and  $00                                         ; $7b23: $e6 $00
	ld   [$0007], sp                                 ; $7b25: $08 $07 $00
	jr   jr_0a0_7b2a                                 ; $7b28: $18 $00

jr_0a0_7b2a:
	stop                                             ; $7b2a: $10 $00
	stop                                             ; $7b2c: $10 $00
	jr   nz, @-$7e                                   ; $7b2e: $20 $80

	nop                                              ; $7b30: $00
	add  b                                           ; $7b31: $80
	jr   jr_0a0_7b34                                 ; $7b32: $18 $00

jr_0a0_7b34:
	nop                                              ; $7b34: $00
	add  d                                           ; $7b35: $82

jr_0a0_7b36:
	inc  b                                           ; $7b36: $04
	add  b                                           ; $7b37: $80
	nop                                              ; $7b38: $00

jr_0a0_7b39:
	inc  bc                                          ; $7b39: $03
	add  hl, hl                                      ; $7b3a: $29
	dec  c                                           ; $7b3b: $0d
	ld   hl, $8005                                   ; $7b3c: $21 $05 $80
	inc  de                                          ; $7b3f: $13
	ld   a, [bc]                                     ; $7b40: $0a
	jr   nz, jr_0a0_7b43                             ; $7b41: $20 $00

jr_0a0_7b43:
	db   $10                                         ; $7b43: $10
	ld   bc, $0009                                   ; $7b44: $01 $09 $00
	cp   a                                           ; $7b47: $bf
	nop                                              ; $7b48: $00
	ld   b, h                                        ; $7b49: $44
	nop                                              ; $7b4a: $00
	ld   [bc], a                                     ; $7b4b: $02
	add  b                                           ; $7b4c: $80
	nop                                              ; $7b4d: $00
	ld   bc, $1110                                   ; $7b4e: $01 $10 $11
	add  b                                           ; $7b51: $80
	db   $10                                         ; $7b52: $10
	add  b                                           ; $7b53: $80
	ldh  [rP1], a                                    ; $7b54: $e0 $00
	nop                                              ; $7b56: $00
	add  b                                           ; $7b57: $80
	sub  b                                           ; $7b58: $90
	add  b                                           ; $7b59: $80
	sbc  c                                           ; $7b5a: $99
	add  b                                           ; $7b5b: $80
	add  a                                           ; $7b5c: $87
	dec  b                                           ; $7b5d: $05
	adc  l                                           ; $7b5e: $8d
	db   $ec                                         ; $7b5f: $ec
	ld   [$b4c8], a                                  ; $7b60: $ea $c8 $b4
	ldh  a, [$80]                                    ; $7b63: $f0 $80
	nop                                              ; $7b65: $00
	nop                                              ; $7b66: $00
	inc  b                                           ; $7b67: $04
	add  b                                           ; $7b68: $80
	jr   c, jr_0a0_7b6d                              ; $7b69: $38 $02

	jr   @-$1c                                       ; $7b6b: $18 $e2

jr_0a0_7b6d:
	ld   bc, $0080                                   ; $7b6d: $01 $80 $00
	nop                                              ; $7b70: $00
	inc  c                                           ; $7b71: $0c
	add  e                                           ; $7b72: $83
	dec  b                                           ; $7b73: $05
	nop                                              ; $7b74: $00
	ld   c, $80                                      ; $7b75: $0e $80
	nop                                              ; $7b77: $00
	add  b                                           ; $7b78: $80
	or   a                                           ; $7b79: $b7
	add  b                                           ; $7b7a: $80
	ld   l, h                                        ; $7b7b: $6c
	add  b                                           ; $7b7c: $80
	jp   c, $0081                                    ; $7b7d: $da $81 $00

	ld   b, $ff                                      ; $7b80: $06 $ff
	nop                                              ; $7b82: $00
	add  d                                           ; $7b83: $82
	jr   jr_0a0_7b1e                                 ; $7b84: $18 $98

	nop                                              ; $7b86: $00
	db   $fc                                         ; $7b87: $fc
	add  c                                           ; $7b88: $81
	nop                                              ; $7b89: $00
	nop                                              ; $7b8a: $00
	db   $fd                                         ; $7b8b: $fd
	add  b                                           ; $7b8c: $80
	ld   a, b                                        ; $7b8d: $78
	add  b                                           ; $7b8e: $80
	ld   [hl], b                                     ; $7b8f: $70
	nop                                              ; $7b90: $00
	nop                                              ; $7b91: $00
	add  d                                           ; $7b92: $82
	ld   a, b                                        ; $7b93: $78
	add  b                                           ; $7b94: $80
	nop                                              ; $7b95: $00
	ld   bc, $0004                                   ; $7b96: $01 $04 $00
	add  b                                           ; $7b99: $80
	add  b                                           ; $7b9a: $80
	add  b                                           ; $7b9b: $80
	ret  nz                                          ; $7b9c: $c0

	nop                                              ; $7b9d: $00
	ldh  [$81], a                                    ; $7b9e: $e0 $81
	nop                                              ; $7ba0: $00
	ld   [bc], a                                     ; $7ba1: $02

jr_0a0_7ba2:
	ldh  [rP1], a                                    ; $7ba2: $e0 $00
	call nz, $1880                                   ; $7ba4: $c4 $80 $18
	dec  bc                                          ; $7ba7: $0b
	nop                                              ; $7ba8: $00
	inc  e                                           ; $7ba9: $1c
	nop                                              ; $7baa: $00
	ret  nz                                          ; $7bab: $c0

	nop                                              ; $7bac: $00
	ldh  [rP1], a                                    ; $7bad: $e0 $00
	rrca                                             ; $7baf: $0f
	nop                                              ; $7bb0: $00
	jr   nc, jr_0a0_7bb3                             ; $7bb1: $30 $00

jr_0a0_7bb3:
	jr   nz, jr_0a0_7b36                             ; $7bb3: $20 $81

	nop                                              ; $7bb5: $00
	nop                                              ; $7bb6: $00
	jr   nz, jr_0a0_7b39                             ; $7bb7: $20 $80

	nop                                              ; $7bb9: $00

jr_0a0_7bba:
	add  b                                           ; $7bba: $80
	jr   jr_0a0_7bbd                                 ; $7bbb: $18 $00

jr_0a0_7bbd:
	nop                                              ; $7bbd: $00
	add  d                                           ; $7bbe: $82
	inc  b                                           ; $7bbf: $04
	add  b                                           ; $7bc0: $80
	nop                                              ; $7bc1: $00
	db   $10                                         ; $7bc2: $10
	add  hl, hl                                      ; $7bc3: $29
	dec  c                                           ; $7bc4: $0d
	ld   hl, $4305                                   ; $7bc5: $21 $05 $43
	inc  sp                                          ; $7bc8: $33
	or   b                                           ; $7bc9: $b0
	nop                                              ; $7bca: $00
	ld   h, b                                        ; $7bcb: $60
	ld   h, c                                        ; $7bcc: $61
	cp   $00                                         ; $7bcd: $fe $00
	ld   a, b                                        ; $7bcf: $78
	nop                                              ; $7bd0: $00
	add  h                                           ; $7bd1: $84
	nop                                              ; $7bd2: $00
	ld   [bc], a                                     ; $7bd3: $02
	add  b                                           ; $7bd4: $80
	nop                                              ; $7bd5: $00
	ld   bc, $1110                                   ; $7bd6: $01 $10 $11
	add  b                                           ; $7bd9: $80
	db   $10                                         ; $7bda: $10
	add  b                                           ; $7bdb: $80
	ldh  [rP1], a                                    ; $7bdc: $e0 $00
	nop                                              ; $7bde: $00
	add  b                                           ; $7bdf: $80
	sub  b                                           ; $7be0: $90
	add  b                                           ; $7be1: $80
	sbc  c                                           ; $7be2: $99
	add  b                                           ; $7be3: $80
	add  a                                           ; $7be4: $87
	dec  b                                           ; $7be5: $05
	adc  l                                           ; $7be6: $8d
	db   $ec                                         ; $7be7: $ec
	ld   [$b4c8], a                                  ; $7be8: $ea $c8 $b4
	ldh  a, [$80]                                    ; $7beb: $f0 $80
	nop                                              ; $7bed: $00
	inc  b                                           ; $7bee: $04
	inc  b                                           ; $7bef: $04
	sbc  b                                           ; $7bf0: $98
	adc  e                                           ; $7bf1: $8b
	ld   bc, $81e1                                   ; $7bf2: $01 $e1 $81
	ld   bc, $0582                                   ; $7bf5: $01 $82 $05
	ld   [bc], a                                     ; $7bf8: $02
	rrca                                             ; $7bf9: $0f
	ld   bc, $8000                                   ; $7bfa: $01 $00 $80
	or   a                                           ; $7bfd: $b7
	add  b                                           ; $7bfe: $80
	ld   l, h                                        ; $7bff: $6c
	add  b                                           ; $7c00: $80
	jp   c, $0081                                    ; $7c01: $da $81 $00

	ld   b, $ff                                      ; $7c04: $06 $ff
	nop                                              ; $7c06: $00
	add  d                                           ; $7c07: $82
	jr   jr_0a0_7ba2                                 ; $7c08: $18 $98

	nop                                              ; $7c0a: $00
	db   $fc                                         ; $7c0b: $fc
	add  c                                           ; $7c0c: $81
	nop                                              ; $7c0d: $00
	nop                                              ; $7c0e: $00
	rst  $38                                         ; $7c0f: $ff
	add  b                                           ; $7c10: $80
	sbc  h                                           ; $7c11: $9c
	ld   b, $0c                                      ; $7c12: $06 $0c
	ld   c, h                                        ; $7c14: $4c
	ld   e, h                                        ; $7c15: $5c
	ld   e, $18                                      ; $7c16: $1e $18
	jr   c, jr_0a0_7bba                              ; $7c18: $38 $a0

	add  b                                           ; $7c1a: $80
	cp   b                                           ; $7c1b: $b8
	ld   b, $80                                      ; $7c1c: $06 $80
	nop                                              ; $7c1e: $00
	add  h                                           ; $7c1f: $84
	add  b                                           ; $7c20: $80
	call nz, $e0c0                                   ; $7c21: $c4 $c0 $e0
	add  c                                           ; $7c24: $81
	nop                                              ; $7c25: $00
	ld   [bc], a                                     ; $7c26: $02
	db   $e4                                         ; $7c27: $e4
	nop                                              ; $7c28: $00
	call nz, $1880                                   ; $7c29: $c4 $80 $18

jr_0a0_7c2c:
	dec  b                                           ; $7c2c: $05

jr_0a0_7c2d:
	nop                                              ; $7c2d: $00
	inc  e                                           ; $7c2e: $1c
	nop                                              ; $7c2f: $00
	ret  nz                                          ; $7c30: $c0

	nop                                              ; $7c31: $00
	ldh  [$81], a                                    ; $7c32: $e0 $81
	nop                                              ; $7c34: $00
	inc  b                                           ; $7c35: $04
	rrca                                             ; $7c36: $0f
	nop                                              ; $7c37: $00
	ld   [hl], b                                     ; $7c38: $70
	nop                                              ; $7c39: $00
	ld   b, b                                        ; $7c3a: $40
	add  b                                           ; $7c3b: $80
	nop                                              ; $7c3c: $00
	ld   bc, $5010                                   ; $7c3d: $01 $10 $50
	add  b                                           ; $7c40: $80
	db   $10                                         ; $7c41: $10
	add  b                                           ; $7c42: $80
	inc  c                                           ; $7c43: $0c
	nop                                              ; $7c44: $00
	nop                                              ; $7c45: $00
	add  c                                           ; $7c46: $81
	inc  b                                           ; $7c47: $04
	nop                                              ; $7c48: $00
	add  h                                           ; $7c49: $84
	add  b                                           ; $7c4a: $80
	ret  nz                                          ; $7c4b: $c0

	ld   [$1dd1], sp                                 ; $7c4c: $08 $d1 $1d
	dec  h                                           ; $7c4f: $25
	add  hl, bc                                      ; $7c50: $09
	daa                                              ; $7c51: $27
	rlca                                             ; $7c52: $07
	ld   b, b                                        ; $7c53: $40
	jr   nc, jr_0a0_7ca5                             ; $7c54: $30 $4f

	add  c                                           ; $7c56: $81
	nop                                              ; $7c57: $00
	inc  b                                           ; $7c58: $04
	ld   [hl], b                                     ; $7c59: $70
	nop                                              ; $7c5a: $00
	adc  b                                           ; $7c5b: $88
	nop                                              ; $7c5c: $00
	inc  b                                           ; $7c5d: $04
	add  b                                           ; $7c5e: $80
	nop                                              ; $7c5f: $00
	ld   bc, $0a08                                   ; $7c60: $01 $08 $0a
	add  b                                           ; $7c63: $80
	ld   [$7080], sp                                 ; $7c64: $08 $80 $70
	nop                                              ; $7c67: $00
	nop                                              ; $7c68: $00
	add  b                                           ; $7c69: $80
	add  b                                           ; $7c6a: $80
	ld   bc, $9190                                   ; $7c6b: $01 $90 $91
	add  b                                           ; $7c6e: $80
	add  e                                           ; $7c6f: $83
	inc  bc                                          ; $7c70: $03
	adc  e                                           ; $7c71: $8b
	ret  c                                           ; $7c72: $d8

	call nz, $8090                                   ; $7c73: $c4 $90 $80
	ldh  [$80], a                                    ; $7c76: $e0 $80
	nop                                              ; $7c78: $00
	nop                                              ; $7c79: $00
	rlca                                             ; $7c7a: $07
	add  d                                           ; $7c7b: $82
	ld   h, c                                        ; $7c7c: $61
	nop                                              ; $7c7d: $00
	ld   bc, $6180                                   ; $7c7e: $01 $80 $61
	inc  b                                           ; $7c81: $04
	adc  l                                           ; $7c82: $8d
	dec  c                                           ; $7c83: $0d
	ld   l, l                                        ; $7c84: $6d
	call $80de                                       ; $7c85: $cd $de $80
	or   a                                           ; $7c88: $b7
	add  b                                           ; $7c89: $80
	ld   l, h                                        ; $7c8a: $6c
	add  b                                           ; $7c8b: $80
	jp   c, $0081                                    ; $7c8c: $da $81 $00

	ld   b, $ff                                      ; $7c8f: $06 $ff
	nop                                              ; $7c91: $00
	add  d                                           ; $7c92: $82
	jr   jr_0a0_7c2d                                 ; $7c93: $18 $98

	nop                                              ; $7c95: $00
	db   $fc                                         ; $7c96: $fc
	add  c                                           ; $7c97: $81
	nop                                              ; $7c98: $00
	ld   [bc], a                                     ; $7c99: $02
	db   $fd                                         ; $7c9a: $fd
	adc  b                                           ; $7c9b: $88
	adc  d                                           ; $7c9c: $8a
	add  d                                           ; $7c9d: $82
	adc  h                                           ; $7c9e: $8c
	dec  bc                                          ; $7c9f: $0b
	add  h                                           ; $7ca0: $84
	xor  h                                           ; $7ca1: $ac
	xor  b                                           ; $7ca2: $a8
	xor  d                                           ; $7ca3: $aa
	xor  b                                           ; $7ca4: $a8

jr_0a0_7ca5:
	and  b                                           ; $7ca5: $a0
	jr   nz, jr_0a0_7c2c                             ; $7ca6: $20 $84

	add  b                                           ; $7ca8: $80
	call nz, $e0c0                                   ; $7ca9: $c4 $c0 $e0
	add  c                                           ; $7cac: $81
	nop                                              ; $7cad: $00
	ld   [bc], a                                     ; $7cae: $02
	db   $e4                                         ; $7caf: $e4

jr_0a0_7cb0:
	nop                                              ; $7cb0: $00

jr_0a0_7cb1:
	call nz, $1880                                   ; $7cb1: $c4 $80 $18
	dec  b                                           ; $7cb4: $05
	nop                                              ; $7cb5: $00
	inc  e                                           ; $7cb6: $1c
	nop                                              ; $7cb7: $00
	ret  nz                                          ; $7cb8: $c0

	nop                                              ; $7cb9: $00
	ldh  [$83], a                                    ; $7cba: $e0 $83
	nop                                              ; $7cbc: $00
	inc  b                                           ; $7cbd: $04
	rrca                                             ; $7cbe: $0f
	nop                                              ; $7cbf: $00
	ld   [hl], b                                     ; $7cc0: $70
	nop                                              ; $7cc1: $00
	ld   b, b                                        ; $7cc2: $40
	add  b                                           ; $7cc3: $80
	nop                                              ; $7cc4: $00
	ld   bc, $5010                                   ; $7cc5: $01 $10 $50
	add  b                                           ; $7cc8: $80
	db   $10                                         ; $7cc9: $10
	add  b                                           ; $7cca: $80
	inc  c                                           ; $7ccb: $0c
	nop                                              ; $7ccc: $00
	nop                                              ; $7ccd: $00
	add  c                                           ; $7cce: $81
	inc  b                                           ; $7ccf: $04
	nop                                              ; $7cd0: $00
	add  h                                           ; $7cd1: $84
	add  b                                           ; $7cd2: $80
	call nz, $d303                                   ; $7cd3: $c4 $03 $d3
	inc  de                                          ; $7cd6: $13
	dec  l                                           ; $7cd7: $2d
	dec  c                                           ; $7cd8: $0d
	add  b                                           ; $7cd9: $80
	rlca                                             ; $7cda: $07
	nop                                              ; $7cdb: $00
	rra                                              ; $7cdc: $1f
	add  e                                           ; $7cdd: $83
	nop                                              ; $7cde: $00
	inc  b                                           ; $7cdf: $04
	ld   [hl], b                                     ; $7ce0: $70
	nop                                              ; $7ce1: $00
	adc  b                                           ; $7ce2: $88
	nop                                              ; $7ce3: $00
	inc  b                                           ; $7ce4: $04
	add  b                                           ; $7ce5: $80
	nop                                              ; $7ce6: $00
	ld   bc, $0a08                                   ; $7ce7: $01 $08 $0a
	add  b                                           ; $7cea: $80
	ld   [$7080], sp                                 ; $7ceb: $08 $80 $70
	nop                                              ; $7cee: $00
	nop                                              ; $7cef: $00
	add  b                                           ; $7cf0: $80

jr_0a0_7cf1:
	add  b                                           ; $7cf1: $80
	ld   bc, $9190                                   ; $7cf2: $01 $90 $91
	add  b                                           ; $7cf5: $80
	sub  e                                           ; $7cf6: $93
	inc  bc                                          ; $7cf7: $03
	set  1, b                                        ; $7cf8: $cb $c8
	or   h                                           ; $7cfa: $b4
	or   b                                           ; $7cfb: $b0
	add  b                                           ; $7cfc: $80
	ldh  [rSC], a                                    ; $7cfd: $e0 $02
	rst  ToBoot                                         ; $7cff: $c7
	db   $10                                         ; $7d00: $10
	ld   d, b                                        ; $7d01: $50
	add  c                                           ; $7d02: $81
	ld   sp, $3581                                   ; $7d03: $31 $81 $35
	dec  b                                           ; $7d06: $05
	dec  b                                           ; $7d07: $05
	ld   [hl], $30                                   ; $7d08: $36 $30
	nop                                              ; $7d0a: $00
	add  a                                           ; $7d0b: $87
	rst  $38                                         ; $7d0c: $ff
	add  b                                           ; $7d0d: $80
	ld   l, h                                        ; $7d0e: $6c
	add  b                                           ; $7d0f: $80
	jp   c, $0081                                    ; $7d10: $da $81 $00

	ld   b, $ff                                      ; $7d13: $06 $ff
	nop                                              ; $7d15: $00
	add  d                                           ; $7d16: $82
	jr   jr_0a0_7cb1                                 ; $7d17: $18 $98

	nop                                              ; $7d19: $00
	db   $fc                                         ; $7d1a: $fc
	add  c                                           ; $7d1b: $81
	nop                                              ; $7d1c: $00
	ld   [bc], a                                     ; $7d1d: $02
	db   $fd                                         ; $7d1e: $fd
	ld   [$820a], sp                                 ; $7d1f: $08 $0a $82
	adc  h                                           ; $7d22: $8c
	dec  bc                                          ; $7d23: $0b
	add  h                                           ; $7d24: $84
	xor  h                                           ; $7d25: $ac
	xor  b                                           ; $7d26: $a8
	xor  d                                           ; $7d27: $aa
	xor  b                                           ; $7d28: $a8
	and  b                                           ; $7d29: $a0
	jr   nz, jr_0a0_7cb0                             ; $7d2a: $20 $84

	add  b                                           ; $7d2c: $80
	call nz, $e0c0                                   ; $7d2d: $c4 $c0 $e0
	add  c                                           ; $7d30: $81
	nop                                              ; $7d31: $00
	ld   [bc], a                                     ; $7d32: $02
	db   $e4                                         ; $7d33: $e4
	nop                                              ; $7d34: $00
	call nz, $1880                                   ; $7d35: $c4 $80 $18
	dec  b                                           ; $7d38: $05
	nop                                              ; $7d39: $00
	inc  e                                           ; $7d3a: $1c
	nop                                              ; $7d3b: $00
	ret  nz                                          ; $7d3c: $c0

	nop                                              ; $7d3d: $00
	ldh  [$8c], a                                    ; $7d3e: $e0 $8c
	nop                                              ; $7d40: $00
	add  b                                           ; $7d41: $80
	ld   bc, $0280                                   ; $7d42: $01 $80 $02
	add  c                                           ; $7d45: $81
	nop                                              ; $7d46: $00
	ld   [bc], a                                     ; $7d47: $02
	rrca                                             ; $7d48: $0f
	nop                                              ; $7d49: $00
	ld   b, $83                                      ; $7d4a: $06 $83
	nop                                              ; $7d4c: $00
	ld   [bc], a                                     ; $7d4d: $02
	ld   b, $00                                      ; $7d4e: $06 $00
	rrca                                             ; $7d50: $0f
	adc  b                                           ; $7d51: $88
	nop                                              ; $7d52: $00
	add  b                                           ; $7d53: $80
	rlca                                             ; $7d54: $07
	add  b                                           ; $7d55: $80
	ld   a, [bc]                                     ; $7d56: $0a
	add  b                                           ; $7d57: $80
	inc  d                                           ; $7d58: $14
	add  b                                           ; $7d59: $80
	add  hl, hl                                      ; $7d5a: $29
	add  d                                           ; $7d5b: $82
	ld   a, a                                        ; $7d5c: $7f
	add  b                                           ; $7d5d: $80
	nop                                              ; $7d5e: $00
	ld   bc, $0434                                   ; $7d5f: $01 $34 $04
	add  c                                           ; $7d62: $81
	nop                                              ; $7d63: $00
	nop                                              ; $7d64: $00
	jr   nc, jr_0a0_7cf1                             ; $7d65: $30 $8a

	nop                                              ; $7d67: $00
	add  b                                           ; $7d68: $80
	ld   hl, sp+$03                                  ; $7d69: $f8 $03
	ld   b, b                                        ; $7d6b: $40
	ld   c, b                                        ; $7d6c: $48
	sub  b                                           ; $7d6d: $90
	sbc  b                                           ; $7d6e: $98
	add  b                                           ; $7d6f: $80
	jr   z, @-$7c                                    ; $7d70: $28 $82

	rst  $38                                         ; $7d72: $ff
	add  b                                           ; $7d73: $80
	nop                                              ; $7d74: $00
	ld   bc, $1016                                   ; $7d75: $01 $16 $10
	add  c                                           ; $7d78: $81
	nop                                              ; $7d79: $00
	nop                                              ; $7d7a: $00
	ld   b, $85                                      ; $7d7b: $06 $85
	nop                                              ; $7d7d: $00
	inc  b                                           ; $7d7e: $04
	rrca                                             ; $7d7f: $0f
	nop                                              ; $7d80: $00
	ld   [hl], b                                     ; $7d81: $70
	nop                                              ; $7d82: $00
	ld   b, b                                        ; $7d83: $40
	add  b                                           ; $7d84: $80
	nop                                              ; $7d85: $00
	ld   bc, $5010                                   ; $7d86: $01 $10 $50
	add  b                                           ; $7d89: $80
	db   $10                                         ; $7d8a: $10
	add  b                                           ; $7d8b: $80
	inc  c                                           ; $7d8c: $0c
	nop                                              ; $7d8d: $00
	nop                                              ; $7d8e: $00
	add  c                                           ; $7d8f: $81
	inc  b                                           ; $7d90: $04
	nop                                              ; $7d91: $00
	add  h                                           ; $7d92: $84
	add  b                                           ; $7d93: $80
	ret  nz                                          ; $7d94: $c0

	inc  bc                                          ; $7d95: $03
	pop  de                                          ; $7d96: $d1
	dec  e                                           ; $7d97: $1d
	dec  h                                           ; $7d98: $25
	add  hl, bc                                      ; $7d99: $09
	add  b                                           ; $7d9a: $80
	rlca                                             ; $7d9b: $07
	nop                                              ; $7d9c: $00
	rra                                              ; $7d9d: $1f
	add  e                                           ; $7d9e: $83
	nop                                              ; $7d9f: $00
	inc  b                                           ; $7da0: $04
	ld   [hl], b                                     ; $7da1: $70
	nop                                              ; $7da2: $00
	adc  b                                           ; $7da3: $88
	nop                                              ; $7da4: $00
	inc  b                                           ; $7da5: $04
	add  b                                           ; $7da6: $80
	nop                                              ; $7da7: $00
	ld   bc, $0a08                                   ; $7da8: $01 $08 $0a
	add  b                                           ; $7dab: $80
	ld   [$7080], sp                                 ; $7dac: $08 $80 $70
	nop                                              ; $7daf: $00
	nop                                              ; $7db0: $00
	add  b                                           ; $7db1: $80
	add  b                                           ; $7db2: $80
	ld   bc, $9190                                   ; $7db3: $01 $90 $91
	add  b                                           ; $7db6: $80
	add  e                                           ; $7db7: $83
	inc  bc                                          ; $7db8: $03
	adc  e                                           ; $7db9: $8b
	ret  c                                           ; $7dba: $d8

	call nz, $8090                                   ; $7dbb: $c4 $90 $80
	ldh  [rP1], a                                    ; $7dbe: $e0 $00
	ld   hl, sp-$01                                  ; $7dc0: $f8 $ff
	nop                                              ; $7dc2: $00
	rst  $38                                         ; $7dc3: $ff
	nop                                              ; $7dc4: $00
	rst  $38                                         ; $7dc5: $ff
	nop                                              ; $7dc6: $00
	rst  $38                                         ; $7dc7: $ff
	nop                                              ; $7dc8: $00
	rst  $38                                         ; $7dc9: $ff
	nop                                              ; $7dca: $00
	rst  $38                                         ; $7dcb: $ff
	nop                                              ; $7dcc: $00
	rst  $38                                         ; $7dcd: $ff
	nop                                              ; $7dce: $00
	rst  $38                                         ; $7dcf: $ff
	nop                                              ; $7dd0: $00
	rst  $38                                         ; $7dd1: $ff
	nop                                              ; $7dd2: $00
	rst  $38                                         ; $7dd3: $ff
	nop                                              ; $7dd4: $00
	db   $d3                                         ; $7dd5: $d3
	nop                                              ; $7dd6: $00
	ld   a, d                                        ; $7dd7: $7a
	nop                                              ; $7dd8: $00
	inc  c                                           ; $7dd9: $0c
	rrca                                             ; $7dda: $0f
	nop                                              ; $7ddb: $00
	ld   [$1800], sp                                 ; $7ddc: $08 $00 $18
	nop                                              ; $7ddf: $00
	jr   nz, jr_0a0_7dea                             ; $7de0: $20 $08

	ld   c, b                                        ; $7de2: $48
	rlca                                             ; $7de3: $07
	ld   b, a                                        ; $7de4: $47
	nop                                              ; $7de5: $00
	ld   b, d                                        ; $7de6: $42
	add  c                                           ; $7de7: $81
	ld   [bc], a                                     ; $7de8: $02
	add  b                                           ; $7de9: $80

jr_0a0_7dea:
	ld   [de], a                                     ; $7dea: $12
	add  b                                           ; $7deb: $80
	db   $10                                         ; $7dec: $10
	ld   [bc], a                                     ; $7ded: $02
	ld   d, b                                        ; $7dee: $50
	ld   [de], a                                     ; $7def: $12
	inc  de                                          ; $7df0: $13
	add  b                                           ; $7df1: $80
	dec  de                                          ; $7df2: $1b
	rrca                                             ; $7df3: $0f
	inc  de                                          ; $7df4: $13
	dec  l                                           ; $7df5: $2d
	rrca                                             ; $7df6: $0f
	rla                                              ; $7df7: $17
	rlca                                             ; $7df8: $07
	ld   [$0700], sp                                 ; $7df9: $08 $00 $07
	nop                                              ; $7dfc: $00
	ldh  a, [rP1]                                    ; $7dfd: $f0 $00
	ld   [$0400], sp                                 ; $7dff: $08 $00 $04
	nop                                              ; $7e02: $00
	ld   [bc], a                                     ; $7e03: $02
	add  b                                           ; $7e04: $80
	ld   [$3001], sp                                 ; $7e05: $08 $01 $30
	ld   sp, $0081                                   ; $7e08: $31 $81 $00
	add  d                                           ; $7e0b: $82
	add  b                                           ; $7e0c: $80
	ld   bc, $8081                                   ; $7e0d: $01 $81 $80
	add  b                                           ; $7e10: $80
	and  b                                           ; $7e11: $a0
	ld   d, $e2                                      ; $7e12: $16 $e2
	ldh  [$c4], a                                    ; $7e14: $e0 $c4
	ret  nz                                          ; $7e16: $c0

	ret  z                                           ; $7e17: $c8

	ret  nz                                          ; $7e18: $c0

	stop                                             ; $7e19: $10 $00
	ldh  [rP1], a                                    ; $7e1b: $e0 $00
	rrca                                             ; $7e1d: $0f
	nop                                              ; $7e1e: $00
	ld   [$1800], sp                                 ; $7e1f: $08 $00 $18
	nop                                              ; $7e22: $00
	jr   nz, jr_0a0_7e2d                             ; $7e23: $20 $08

	ld   c, b                                        ; $7e25: $48
	rlca                                             ; $7e26: $07
	ld   b, a                                        ; $7e27: $47
	nop                                              ; $7e28: $00
	ld   b, d                                        ; $7e29: $42
	add  c                                           ; $7e2a: $81
	ld   [bc], a                                     ; $7e2b: $02
	add  b                                           ; $7e2c: $80

jr_0a0_7e2d:
	ld   [de], a                                     ; $7e2d: $12
	add  b                                           ; $7e2e: $80
	db   $10                                         ; $7e2f: $10
	ld   [bc], a                                     ; $7e30: $02
	ld   d, b                                        ; $7e31: $50
	ld   [de], a                                     ; $7e32: $12
	inc  de                                          ; $7e33: $13
	add  b                                           ; $7e34: $80
	dec  de                                          ; $7e35: $1b
	dec  b                                           ; $7e36: $05
	inc  de                                          ; $7e37: $13
	dec  l                                           ; $7e38: $2d
	rrca                                             ; $7e39: $0f
	rla                                              ; $7e3a: $17
	rlca                                             ; $7e3b: $07
	rrca                                             ; $7e3c: $0f
	add  c                                           ; $7e3d: $81
	nop                                              ; $7e3e: $00
	ld   b, $f0                                      ; $7e3f: $06 $f0
	nop                                              ; $7e41: $00
	ld   [$0400], sp                                 ; $7e42: $08 $00 $04
	nop                                              ; $7e45: $00
	ld   [bc], a                                     ; $7e46: $02
	add  b                                           ; $7e47: $80
	ld   [$3001], sp                                 ; $7e48: $08 $01 $30
	ld   sp, $0081                                   ; $7e4b: $31 $81 $00
	add  d                                           ; $7e4e: $82
	add  b                                           ; $7e4f: $80
	ld   bc, $8081                                   ; $7e50: $01 $81 $80
	add  b                                           ; $7e53: $80
	and  b                                           ; $7e54: $a0
	inc  d                                           ; $7e55: $14
	ldh  [c], a                                      ; $7e56: $e2
	ldh  [$c4], a                                    ; $7e57: $e0 $c4
	ret  nz                                          ; $7e59: $c0

	ret  z                                           ; $7e5a: $c8

	ret  nz                                          ; $7e5b: $c0

	ldh  a, [rP1]                                    ; $7e5c: $f0 $00
	rrca                                             ; $7e5e: $0f
	nop                                              ; $7e5f: $00
	ld   [$1800], sp                                 ; $7e60: $08 $00 $18
	nop                                              ; $7e63: $00
	jr   nz, jr_0a0_7e6e                             ; $7e64: $20 $08

	ld   c, b                                        ; $7e66: $48
	rlca                                             ; $7e67: $07
	ld   b, a                                        ; $7e68: $47
	nop                                              ; $7e69: $00
	ld   b, d                                        ; $7e6a: $42
	add  c                                           ; $7e6b: $81
	ld   [bc], a                                     ; $7e6c: $02
	add  b                                           ; $7e6d: $80

jr_0a0_7e6e:
	ld   [de], a                                     ; $7e6e: $12
	add  b                                           ; $7e6f: $80
	db   $10                                         ; $7e70: $10

jr_0a0_7e71:
	ld   a, [bc]                                     ; $7e71: $0a
	ld   d, b                                        ; $7e72: $50
	ld   [de], a                                     ; $7e73: $12
	inc  de                                          ; $7e74: $13
	dec  de                                          ; $7e75: $1b
	db   $db                                         ; $7e76: $db
	inc  de                                          ; $7e77: $13
	dec  c                                           ; $7e78: $0d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e79: $cf
	rst  ToBoot                                         ; $7e7a: $c7
	rst  $30                                         ; $7e7b: $f7
	rrca                                             ; $7e7c: $0f
	add  c                                           ; $7e7d: $81
	nop                                              ; $7e7e: $00
	ld   b, $f0                                      ; $7e7f: $06 $f0
	nop                                              ; $7e81: $00
	ld   [$0400], sp                                 ; $7e82: $08 $00 $04
	nop                                              ; $7e85: $00
	ld   [bc], a                                     ; $7e86: $02
	add  b                                           ; $7e87: $80
	ld   [$3001], sp                                 ; $7e88: $08 $01 $30
	ld   sp, $0081                                   ; $7e8b: $31 $81 $00
	add  d                                           ; $7e8e: $82
	add  b                                           ; $7e8f: $80
	ld   bc, $8081                                   ; $7e90: $01 $81 $80
	add  b                                           ; $7e93: $80
	and  b                                           ; $7e94: $a0
	ld   b, $e2                                      ; $7e95: $06 $e2
	ldh  [$c4], a                                    ; $7e97: $e0 $c4
	ret  nz                                          ; $7e99: $c0

	ret  z                                           ; $7e9a: $c8

	ret  nz                                          ; $7e9b: $c0

	ldh  a, [$85]                                    ; $7e9c: $f0 $85
	nop                                              ; $7e9e: $00
	inc  b                                           ; $7e9f: $04
	ld   e, $00                                      ; $7ea0: $1e $00
	add  hl, de                                      ; $7ea2: $19
	nop                                              ; $7ea3: $00
	rlca                                             ; $7ea4: $07
	sub  c                                           ; $7ea5: $91
	nop                                              ; $7ea6: $00
	inc  b                                           ; $7ea7: $04
	cp   h                                           ; $7ea8: $bc
	nop                                              ; $7ea9: $00
	ld   [bc], a                                     ; $7eaa: $02
	jr   jr_0a0_7f05                                 ; $7eab: $18 $58

	add  l                                           ; $7ead: $85
	jr   c, @+$0a                                    ; $7eae: $38 $08

	add  hl, sp                                      ; $7eb0: $39
	jr   c, @+$3e                                    ; $7eb1: $38 $3c

jr_0a0_7eb3:
	inc  b                                           ; $7eb3: $04
	ld   sp, $b030                                   ; $7eb4: $31 $30 $b0
	jr   nc, jr_0a0_7ebb                             ; $7eb7: $30 $02

	add  l                                           ; $7eb9: $85
	nop                                              ; $7eba: $00

jr_0a0_7ebb:
	inc  b                                           ; $7ebb: $04
	ret  nz                                          ; $7ebc: $c0

	ld   a, b                                        ; $7ebd: $78
	jr   c, jr_0a0_7ec0                              ; $7ebe: $38 $00

jr_0a0_7ec0:
	db   $fc                                         ; $7ec0: $fc
	adc  e                                           ; $7ec1: $8b
	nop                                              ; $7ec2: $00
	ld   b, $e0                                      ; $7ec3: $06 $e0
	nop                                              ; $7ec5: $00
	call c, $3b00                                    ; $7ec6: $dc $00 $3b
	nop                                              ; $7ec9: $00
	rlca                                             ; $7eca: $07
	adc  c                                           ; $7ecb: $89
	nop                                              ; $7ecc: $00
	ld   [bc], a                                     ; $7ecd: $02
	rlca                                             ; $7ece: $07
	nop                                              ; $7ecf: $00
	ld   [$0280], sp                                 ; $7ed0: $08 $80 $02
	ld   bc, $1200                                   ; $7ed3: $01 $00 $12
	add  c                                           ; $7ed6: $81
	ld   a, [bc]                                     ; $7ed7: $0a
	inc  b                                           ; $7ed8: $04
	ld   [$1c0c], sp                                 ; $7ed9: $08 $0c $1c
	ld   b, $0e                                      ; $7edc: $06 $0e
	add  b                                           ; $7ede: $80
	ld   [bc], a                                     ; $7edf: $02
	dec  c                                           ; $7ee0: $0d
	nop                                              ; $7ee1: $00
	ld   [$1000], sp                                 ; $7ee2: $08 $00 $10
	nop                                              ; $7ee5: $00
	jr   nz, jr_0a0_7ee8                             ; $7ee6: $20 $00

jr_0a0_7ee8:
	ld   bc, $4200                                   ; $7ee8: $01 $00 $42
	nop                                              ; $7eeb: $00
	ret  nz                                          ; $7eec: $c0

	ld   a, b                                        ; $7eed: $78
	jr   c, jr_0a0_7e71                              ; $7eee: $38 $81

	nop                                              ; $7ef0: $00
	ld   [bc], a                                     ; $7ef1: $02
	ld   [bc], a                                     ; $7ef2: $02
	inc  l                                           ; $7ef3: $2c
	xor  l                                           ; $7ef4: $ad
	add  b                                           ; $7ef5: $80
	ld   b, $0a                                      ; $7ef6: $06 $0a
	inc  bc                                          ; $7ef8: $03
	inc  sp                                          ; $7ef9: $33
	scf                                              ; $7efa: $37
	daa                                              ; $7efb: $27
	inc  hl                                          ; $7efc: $23
	adc  e                                           ; $7efd: $8b
	ld   a, [bc]                                     ; $7efe: $0a
	jp   c, $43d8                                    ; $7eff: $da $d8 $43

	ld   b, b                                        ; $7f02: $40
	add  d                                           ; $7f03: $82
	nop                                              ; $7f04: $00

jr_0a0_7f05:
	ld   a, [bc]                                     ; $7f05: $0a
	jp   nz, Boot                                    ; $7f06: $c2 $00 $01

	nop                                              ; $7f09: $00
	jr   nz, jr_0a0_7f0c                             ; $7f0a: $20 $00

jr_0a0_7f0c:
	jr   nc, jr_0a0_7f2c                             ; $7f0c: $30 $1e

	ld   c, $00                                      ; $7f0e: $0e $00
	ccf                                              ; $7f10: $3f
	add  c                                           ; $7f11: $81
	nop                                              ; $7f12: $00
	ld   [$0006], sp                                 ; $7f13: $08 $06 $00
	sbc  d                                           ; $7f16: $9a
	nop                                              ; $7f17: $00
	ld   l, h                                        ; $7f18: $6c
	nop                                              ; $7f19: $00
	jr   nc, jr_0a0_7f1c                             ; $7f1a: $30 $00

jr_0a0_7f1c:
	ret  nz                                          ; $7f1c: $c0

	sbc  a                                           ; $7f1d: $9f
	nop                                              ; $7f1e: $00
	nop                                              ; $7f1f: $00
	ld   bc, $0081                                   ; $7f20: $01 $81 $00
	ld   [bc], a                                     ; $7f23: $02
	ld   c, $00                                      ; $7f24: $0e $00
	rrca                                             ; $7f26: $0f
	adc  c                                           ; $7f27: $89
	nop                                              ; $7f28: $00
	rlca                                             ; $7f29: $07
	rrca                                             ; $7f2a: $0f
	nop                                              ; $7f2b: $00

jr_0a0_7f2c:
	db   $10                                         ; $7f2c: $10
	inc  b                                           ; $7f2d: $04
	dec  h                                           ; $7f2e: $25
	db   $10                                         ; $7f2f: $10
	ld   d, b                                        ; $7f30: $50
	jr   nc, jr_0a0_7eb3                             ; $7f31: $30 $80

	inc  [hl]                                        ; $7f33: $34
	ld   c, $b4                                      ; $7f34: $0e $b4
	ld   [hl], h                                     ; $7f36: $74
	ld   [hl], l                                     ; $7f37: $75
	dec  [hl]                                        ; $7f38: $35
	pop  af                                          ; $7f39: $f1
	rst  JumpTable                                         ; $7f3a: $df
	dec  de                                          ; $7f3b: $1b
	dec  b                                           ; $7f3c: $05
	ld   hl, $c000                                   ; $7f3d: $21 $00 $c0
	nop                                              ; $7f40: $00
	ld   hl, $4200                                   ; $7f41: $21 $00 $42
	add  c                                           ; $7f44: $81
	nop                                              ; $7f45: $00
	inc  d                                           ; $7f46: $14
	ret  nz                                          ; $7f47: $c0

	ld   a, b                                        ; $7f48: $78
	jr   c, jr_0a0_7f4b                              ; $7f49: $38 $00

jr_0a0_7f4b:
	inc  b                                           ; $7f4b: $04
	nop                                              ; $7f4c: $00
	inc  b                                           ; $7f4d: $04
	ld   e, b                                        ; $7f4e: $58
	ld   e, d                                        ; $7f4f: $5a
	inc  c                                           ; $7f50: $0c
	dec  c                                           ; $7f51: $0d
	ld   b, $66                                      ; $7f52: $06 $66
	ld   l, [hl]                                     ; $7f54: $6e
	ld   c, [hl]                                     ; $7f55: $4e
	ld   b, [hl]                                     ; $7f56: $46
	ld   d, $14                                      ; $7f57: $16 $14
	dec  [hl]                                        ; $7f59: $35
	or   b                                           ; $7f5a: $b0

jr_0a0_7f5b:
	add  [hl]                                        ; $7f5b: $86
	add  c                                           ; $7f5c: $81
	nop                                              ; $7f5d: $00
	inc  c                                           ; $7f5e: $0c
	inc  b                                           ; $7f5f: $04
	nop                                              ; $7f60: $00
	add  d                                           ; $7f61: $82
	nop                                              ; $7f62: $00
	ld   b, c                                        ; $7f63: $41
	nop                                              ; $7f64: $00
	jr   nz, jr_0a0_7f67                             ; $7f65: $20 $00

jr_0a0_7f67:
	jr   nc, @+$20                                   ; $7f67: $30 $1e

	ld   c, $00                                      ; $7f69: $0e $00
	ccf                                              ; $7f6b: $3f
	add  c                                           ; $7f6c: $81
	nop                                              ; $7f6d: $00
	ld   [$000c], sp                                 ; $7f6e: $08 $0c $00
	inc  [hl]                                        ; $7f71: $34
	nop                                              ; $7f72: $00
	ret  c                                           ; $7f73: $d8

	nop                                              ; $7f74: $00
	ld   h, b                                        ; $7f75: $60
	nop                                              ; $7f76: $00
	add  b                                           ; $7f77: $80
	and  l                                           ; $7f78: $a5
	nop                                              ; $7f79: $00
	add  b                                           ; $7f7a: $80
	inc  bc                                          ; $7f7b: $03
	sbc  h                                           ; $7f7c: $9c
	nop                                              ; $7f7d: $00
	add  b                                           ; $7f7e: $80
	ldh  a, [$80]                                    ; $7f7f: $f0 $80
	rrca                                             ; $7f81: $0f
	sbc  h                                           ; $7f82: $9c
	nop                                              ; $7f83: $00
	add  b                                           ; $7f84: $80
	ret  nz                                          ; $7f85: $c0

	ld   bc, $3c3f                                   ; $7f86: $01 $3f $3c
	add  b                                           ; $7f89: $80
	ld   bc, $0080                                   ; $7f8a: $01 $80 $00
	dec  bc                                          ; $7f8d: $0b
	ld   [bc], a                                     ; $7f8e: $02
	nop                                              ; $7f8f: $00
	ld   a, $1c                                      ; $7f90: $3e $1c
	dec  a                                           ; $7f92: $3d
	inc  c                                           ; $7f93: $0c
	inc  e                                           ; $7f94: $1c
	inc  b                                           ; $7f95: $04
	inc  c                                           ; $7f96: $0c
	nop                                              ; $7f97: $00
	inc  b                                           ; $7f98: $04
	nop                                              ; $7f99: $00
	add  c                                           ; $7f9a: $81
	ld   bc, $0000                                   ; $7f9b: $01 $00 $00
	add  b                                           ; $7f9e: $80
	ld   bc, $0082                                   ; $7f9f: $01 $82 $00
	ld   [bc], a                                     ; $7fa2: $02
	inc  b                                           ; $7fa3: $04
	nop                                              ; $7fa4: $00
	ld   [$0083], sp                                 ; $7fa5: $08 $83 $00
	ld   b, $18                                      ; $7fa8: $06 $18
	rrca                                             ; $7faa: $0f
	rlca                                             ; $7fab: $07
	nop                                              ; $7fac: $00
	rst  $20                                         ; $7fad: $e7
	nop                                              ; $7fae: $00
	inc  b                                           ; $7faf: $04
	add  b                                           ; $7fb0: $80
	jr   nc, @-$7c                                   ; $7fb1: $30 $82

	jr   c, jr_0a0_7fbd                              ; $7fb3: $38 $08

	ld   a, b                                        ; $7fb5: $78
	ld   a, d                                        ; $7fb6: $7a
	ld   a, b                                        ; $7fb7: $78
	db   $fc                                         ; $7fb8: $fc
	or   h                                           ; $7fb9: $b4
	or   c                                           ; $7fba: $b1
	and  b                                           ; $7fbb: $a0
	inc  l                                           ; $7fbc: $2c

jr_0a0_7fbd:
	inc  c                                           ; $7fbd: $0c
	add  d                                           ; $7fbe: $82
	nop                                              ; $7fbf: $00
	ld   a, [bc]                                     ; $7fc0: $0a
	jr   nc, jr_0a0_7fc3                             ; $7fc1: $30 $00

jr_0a0_7fc3:
	ld   c, b                                        ; $7fc3: $48
	nop                                              ; $7fc4: $00
	inc  b                                           ; $7fc5: $04
	nop                                              ; $7fc6: $00
	ld   b, $03                                      ; $7fc7: $06 $03
	ld   bc, $8700                                   ; $7fc9: $01 $00 $87
	adc  e                                           ; $7fcc: $8b
	nop                                              ; $7fcd: $00
	ld   a, [bc]                                     ; $7fce: $0a
	add  b                                           ; $7fcf: $80
	nop                                              ; $7fd0: $00
	ld   [hl], b                                     ; $7fd1: $70
	nop                                              ; $7fd2: $00
	call z, $ba00                                    ; $7fd3: $cc $00 $ba
	nop                                              ; $7fd6: $00
	ld   b, [hl]                                     ; $7fd7: $46
	nop                                              ; $7fd8: $00
	jr   nz, jr_0a0_7f5b                             ; $7fd9: $20 $80

	nop                                              ; $7fdb: $00
	dec  b                                           ; $7fdc: $05
	ret  nz                                          ; $7fdd: $c0

	ldh  [$80], a                                    ; $7fde: $e0 $80
	ret  nz                                          ; $7fe0: $c0

	nop                                              ; $7fe1: $00
	add  d                                           ; $7fe2: $82
	adc  l                                           ; $7fe3: $8d
	nop                                              ; $7fe4: $00
	nop                                              ; $7fe5: $00
	ld   [bc], a                                     ; $7fe6: $02
	rst  $38                                         ; $7fe7: $ff
	nop                                              ; $7fe8: $00
	rst  $38                                         ; $7fe9: $ff
	nop                                              ; $7fea: $00
	rst  $38                                         ; $7feb: $ff
	nop                                              ; $7fec: $00
	rst  $38                                         ; $7fed: $ff
	nop                                              ; $7fee: $00
	rst  $38                                         ; $7fef: $ff
	nop                                              ; $7ff0: $00
	rst  $38                                         ; $7ff1: $ff
	nop                                              ; $7ff2: $00
	rst  $38                                         ; $7ff3: $ff
	nop                                              ; $7ff4: $00
	rst  $38                                         ; $7ff5: $ff
	nop                                              ; $7ff6: $00
	rst  $38                                         ; $7ff7: $ff
	nop                                              ; $7ff8: $00
	rst  $38                                         ; $7ff9: $ff
	nop                                              ; $7ffa: $00
	and  e                                           ; $7ffb: $a3
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
