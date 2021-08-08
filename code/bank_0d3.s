; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0d3", ROMX[$4000], BANK[$d3]

	xor  e                                           ; $4000: $ab
	adc  $ed                                         ; $4001: $ce $ed
	res  3, b                                        ; $4003: $cb $98
	ld   h, l                                        ; $4005: $65
	ld   b, e                                        ; $4006: $43
	inc  hl                                          ; $4007: $23
	ld   b, l                                        ; $4008: $45
	ld   a, b                                        ; $4009: $78
	sbc  e                                           ; $400a: $9b
	call z, $bbcd                                    ; $400b: $cc $cd $bb
	xor  b                                           ; $400e: $a8
	ld   [hl], l                                     ; $400f: $75
	ld   b, h                                        ; $4010: $44
	ld   b, h                                        ; $4011: $44
	ld   b, l                                        ; $4012: $45
	ld   h, a                                        ; $4013: $67
	sbc  d                                           ; $4014: $9a
	xor  e                                           ; $4015: $ab
	cp   h                                           ; $4016: $bc
	cp   h                                           ; $4017: $bc
	xor  d                                           ; $4018: $aa
	adc  b                                           ; $4019: $88
	halt                                             ; $401a: $76
	ld   d, h                                        ; $401b: $54
	ld   b, l                                        ; $401c: $45
	ld   b, [hl]                                     ; $401d: $46
	add  [hl]                                        ; $401e: $86
	sbc  d                                           ; $401f: $9a
	xor  e                                           ; $4020: $ab
	cp   h                                           ; $4021: $bc
	call $97c8                                       ; $4022: $cd $c8 $97
	ld   h, [hl]                                     ; $4025: $66
	scf                                              ; $4026: $37
	ld   h, a                                        ; $4027: $67
	halt                                             ; $4028: $76
	sbc  e                                           ; $4029: $9b
	set  5, e                                        ; $402a: $cb $eb
	ret                                              ; $402c: $c9


	adc  h                                           ; $402d: $8c
	sub  e                                           ; $402e: $93
	ld   d, h                                        ; $402f: $54
	ld   h, $27                                      ; $4030: $26 $27
	jp   c, $7986                                    ; $4032: $da $86 $79

	ld   h, a                                        ; $4035: $67
	db   $dd                                         ; $4036: $dd
	add  c                                           ; $4037: $81
	ld   b, [hl]                                     ; $4038: $46
	ld   b, l                                        ; $4039: $45
	ld   e, e                                        ; $403a: $5b
	sub  d                                           ; $403b: $92
	ld   a, e                                        ; $403c: $7b
	ld   [hl], l                                     ; $403d: $75
	sbc  a                                           ; $403e: $9f
	sub  a                                           ; $403f: $97
	ld   a, b                                        ; $4040: $78
	ld   [hl], a                                     ; $4041: $77
	db   $fd                                         ; $4042: $fd
	and  a                                           ; $4043: $a7
	ld   de, $1a11                                   ; $4044: $11 $11 $1a
	ret                                              ; $4047: $c9


	ld   b, [hl]                                     ; $4048: $46
	rst  $28                                         ; $4049: $ef
	rst  $38                                         ; $404a: $ff
	rst  $38                                         ; $404b: $ff
	ld   de, $1411                                   ; $404c: $11 $11 $14
	pop  bc                                          ; $404f: $c1
	inc  de                                          ; $4050: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4051: $cf
	rst  $38                                         ; $4052: $ff
	rst  $38                                         ; $4053: $ff
	sub  c                                           ; $4054: $91
	ld   de, $1111                                   ; $4055: $11 $11 $11
	ld   de, $ff8f                                   ; $4058: $11 $8f $ff
	rst  $38                                         ; $405b: $ff
	db   $fc                                         ; $405c: $fc
	ld   de, $1111                                   ; $405d: $11 $11 $11
	ld   de, $ff2f                                   ; $4060: $11 $2f $ff
	rst  $38                                         ; $4063: $ff
	rst  $38                                         ; $4064: $ff
	ld   [hl], c                                     ; $4065: $71
	ld   de, $1111                                   ; $4066: $11 $11 $11
	rra                                              ; $4069: $1f
	rst  $38                                         ; $406a: $ff
	rst  $38                                         ; $406b: $ff
	rst  $38                                         ; $406c: $ff
	ld   sp, $1111                                   ; $406d: $31 $11 $11
	ld   de, $ff1f                                   ; $4070: $11 $1f $ff
	rst  $38                                         ; $4073: $ff
	rst  $38                                         ; $4074: $ff
	ld   de, $1101                                   ; $4075: $11 $01 $11
	ld   de, $ff4f                                   ; $4078: $11 $4f $ff
	rst  $38                                         ; $407b: $ff
	ei                                               ; $407c: $fb
	ld   de, $1111                                   ; $407d: $11 $11 $11
	ld   de, $ffff                                   ; $4080: $11 $ff $ff
	rst  $38                                         ; $4083: $ff
	pop  af                                          ; $4084: $f1
	ld   de, $1111                                   ; $4085: $11 $11 $11
	ld   de, $ffff                                   ; $4088: $11 $ff $ff
	rst  $38                                         ; $408b: $ff
	pop  de                                          ; $408c: $d1
	ld   de, $1111                                   ; $408d: $11 $11 $11
	dec  de                                          ; $4090: $1b
	rst  $38                                         ; $4091: $ff
	rst  $38                                         ; $4092: $ff
	rst  $38                                         ; $4093: $ff
	ld   de, $1111                                   ; $4094: $11 $11 $11
	ld   de, $ff1f                                   ; $4097: $11 $1f $ff
	rst  $38                                         ; $409a: $ff
	rst  $38                                         ; $409b: $ff
	ld   de, $1111                                   ; $409c: $11 $11 $11
	ld   de, $ff5f                                   ; $409f: $11 $5f $ff
	rst  $38                                         ; $40a2: $ff
	push af                                          ; $40a3: $f5
	ld   de, $1111                                   ; $40a4: $11 $11 $11
	ld   de, $ffff                                   ; $40a7: $11 $ff $ff
	rst  $38                                         ; $40aa: $ff
	pop  af                                          ; $40ab: $f1
	ld   de, $1111                                   ; $40ac: $11 $11 $11
	dec  e                                           ; $40af: $1d
	rst  $38                                         ; $40b0: $ff
	rst  $38                                         ; $40b1: $ff
	rst  $38                                         ; $40b2: $ff
	ld   b, c                                        ; $40b3: $41
	ld   de, $1111                                   ; $40b4: $11 $11 $11
	rra                                              ; $40b7: $1f
	rst  $38                                         ; $40b8: $ff
	rst  $38                                         ; $40b9: $ff
	rst  $38                                         ; $40ba: $ff
	ld   de, $1111                                   ; $40bb: $11 $11 $11
	ld   de, $ffff                                   ; $40be: $11 $ff $ff
	rst  $38                                         ; $40c1: $ff
	pop  af                                          ; $40c2: $f1
	inc  de                                          ; $40c3: $13
	ld   de, $1111                                   ; $40c4: $11 $11 $11
	rst  $38                                         ; $40c7: $ff
	rst  $38                                         ; $40c8: $ff
	rst  $38                                         ; $40c9: $ff
	pop  bc                                          ; $40ca: $c1
	ld   de, $1111                                   ; $40cb: $11 $11 $11
	rra                                              ; $40ce: $1f
	rst  $38                                         ; $40cf: $ff
	rst  $38                                         ; $40d0: $ff
	rst  $38                                         ; $40d1: $ff
	ld   de, $1111                                   ; $40d2: $11 $11 $11
	ld   de, $ff1f                                   ; $40d5: $11 $1f $ff
	rst  $38                                         ; $40d8: $ff
	ld   sp, hl                                      ; $40d9: $f9
	inc  d                                           ; $40da: $14
	ld   de, $1111                                   ; $40db: $11 $11 $11
	rst  $38                                         ; $40de: $ff
	rst  $38                                         ; $40df: $ff
	rst  $38                                         ; $40e0: $ff
	pop  af                                          ; $40e1: $f1
	ld   hl, $1111                                   ; $40e2: $21 $11 $11
	inc  de                                          ; $40e5: $13
	rst  $38                                         ; $40e6: $ff
	rst  $38                                         ; $40e7: $ff
	rst  $38                                         ; $40e8: $ff
	sub  l                                           ; $40e9: $95
	ld   hl, $1111                                   ; $40ea: $21 $11 $11
	rra                                              ; $40ed: $1f
	rst  $38                                         ; $40ee: $ff
	rst  $38                                         ; $40ef: $ff
	rst  $38                                         ; $40f0: $ff
	ld   c, l                                        ; $40f1: $4d
	ld   de, $1111                                   ; $40f2: $11 $11 $11
	rst  $38                                         ; $40f5: $ff
	rst  $38                                         ; $40f6: $ff
	rst  $38                                         ; $40f7: $ff
	ld   a, [$11c1]                                  ; $40f8: $fa $c1 $11
	ld   de, rAUD1LEN                                   ; $40fb: $11 $11 $ff
	rst  $38                                         ; $40fe: $ff
	rst  $38                                         ; $40ff: $ff
	ld   a, [$1181]                                  ; $4100: $fa $81 $11
	ld   de, $ff1f                                   ; $4103: $11 $1f $ff
	rst  $38                                         ; $4106: $ff
	rst  $38                                         ; $4107: $ff
	call $1111                                       ; $4108: $cd $11 $11
	ld   de, $ff6f                                   ; $410b: $11 $6f $ff
	rst  $38                                         ; $410e: $ff
	rst  $38                                         ; $410f: $ff
	add  $11                                         ; $4110: $c6 $11
	ld   de, rAUD1LEN                                   ; $4112: $11 $11 $ff
	rst  $38                                         ; $4115: $ff
	rst  $38                                         ; $4116: $ff
	rst  $38                                         ; $4117: $ff
	sub  c                                           ; $4118: $91
	ld   de, $1d11                                   ; $4119: $11 $11 $1d
	rst  $38                                         ; $411c: $ff
	rst  $38                                         ; $411d: $ff
	rst  $38                                         ; $411e: $ff
	rst  $38                                         ; $411f: $ff
	ld   h, c                                        ; $4120: $61
	ld   de, $1f11                                   ; $4121: $11 $11 $1f
	rst  $38                                         ; $4124: $ff
	rst  $38                                         ; $4125: $ff
	rst  $38                                         ; $4126: $ff
	rst  $38                                         ; $4127: $ff
	ld   de, $1111                                   ; $4128: $11 $11 $11
	adc  a                                           ; $412b: $8f
	rst  $38                                         ; $412c: $ff
	rst  $38                                         ; $412d: $ff
	rst  $38                                         ; $412e: $ff
	ld   hl, sp+$11                                  ; $412f: $f8 $11
	ld   de, $ef11                                   ; $4131: $11 $11 $ef
	rst  $38                                         ; $4134: $ff
	rst  $38                                         ; $4135: $ff
	rst  $38                                         ; $4136: $ff
	ld   h, c                                        ; $4137: $61
	ld   de, $1211                                   ; $4138: $11 $11 $12
	rst  $38                                         ; $413b: $ff
	rst  $38                                         ; $413c: $ff
	rst  $38                                         ; $413d: $ff
	rst  $38                                         ; $413e: $ff
	pop  de                                          ; $413f: $d1
	ld   de, $1f11                                   ; $4140: $11 $11 $1f
	rst  $38                                         ; $4143: $ff
	rst  $38                                         ; $4144: $ff
	rst  $38                                         ; $4145: $ff
	rst  $38                                         ; $4146: $ff
	ld   [hl], c                                     ; $4147: $71
	ld   de, $1f11                                   ; $4148: $11 $11 $1f
	rst  $38                                         ; $414b: $ff
	rst  $38                                         ; $414c: $ff
	rst  $38                                         ; $414d: $ff
	rst  $38                                         ; $414e: $ff
	ld   de, $1111                                   ; $414f: $11 $11 $11
	rst  $38                                         ; $4152: $ff
	rst  $38                                         ; $4153: $ff
	rst  $38                                         ; $4154: $ff
	rst  $38                                         ; $4155: $ff
	rst  $30                                         ; $4156: $f7
	ld   de, $1111                                   ; $4157: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $415a: $cf
	rst  $38                                         ; $415b: $ff
	rst  $38                                         ; $415c: $ff
	rst  $38                                         ; $415d: $ff
	ei                                               ; $415e: $fb
	ld   de, $1111                                   ; $415f: $11 $11 $11
	rst  JumpTable                                         ; $4162: $df
	rst  $38                                         ; $4163: $ff
	rst  $38                                         ; $4164: $ff
	rst  $38                                         ; $4165: $ff
	cp   $11                                         ; $4166: $fe $11
	ld   de, $4f11                                   ; $4168: $11 $11 $4f
	rst  $38                                         ; $416b: $ff
	rst  $38                                         ; $416c: $ff
	ld   hl, sp-$01                                  ; $416d: $f8 $ff
	ld   de, $1111                                   ; $416f: $11 $11 $11
	dec  e                                           ; $4172: $1d
	rst  $38                                         ; $4173: $ff
	rst  $38                                         ; $4174: $ff
	cp   $bf                                         ; $4175: $fe $bf
	ld   [hl], c                                     ; $4177: $71
	ld   de, $1411                                   ; $4178: $11 $11 $14
	rst  $38                                         ; $417b: $ff
	rst  $38                                         ; $417c: $ff
	rst  $38                                         ; $417d: $ff
	rst  $28                                         ; $417e: $ef
	ld   h, c                                        ; $417f: $61
	ld   de, $1111                                   ; $4180: $11 $11 $11
	rst  JumpTable                                         ; $4183: $df
	rst  $38                                         ; $4184: $ff
	rst  $38                                         ; $4185: $ff
	db   $fd                                         ; $4186: $fd
	ld   l, d                                        ; $4187: $6a
	ld   de, $1111                                   ; $4188: $11 $11 $11
	cpl                                              ; $418b: $2f
	rst  $38                                         ; $418c: $ff
	rst  $38                                         ; $418d: $ff
	rst  $30                                         ; $418e: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $418f: $cf
	ld   de, $1111                                   ; $4190: $11 $11 $11
	add  hl, de                                      ; $4193: $19
	rst  $38                                         ; $4194: $ff
	rst  $38                                         ; $4195: $ff
	rst  $38                                         ; $4196: $ff
	ld   c, c                                        ; $4197: $49
	and  l                                           ; $4198: $a5
	ld   de, $1111                                   ; $4199: $11 $11 $11
	ld   l, a                                        ; $419c: $6f
	rst  $38                                         ; $419d: $ff
	rst  $38                                         ; $419e: $ff
	di                                               ; $419f: $f3
	xor  [hl]                                        ; $41a0: $ae
	ld   sp, $1111                                   ; $41a1: $31 $11 $11
	ld   de, $ffff                                   ; $41a4: $11 $ff $ff
	rst  $38                                         ; $41a7: $ff
	ld   c, [hl]                                     ; $41a8: $4e
	call nc, $1122                                   ; $41a9: $d4 $22 $11
	ld   de, $ff1c                                   ; $41ac: $11 $1c $ff
	rst  $38                                         ; $41af: $ff
	rst  $38                                         ; $41b0: $ff
	ld   a, a                                        ; $41b1: $7f
	ldh  [c], a                                      ; $41b2: $e2
	ld   de, $1111                                   ; $41b3: $11 $11 $11
	adc  $ff                                         ; $41b6: $ce $ff
	rst  $38                                         ; $41b8: $ff
	ld   a, a                                        ; $41b9: $7f
	rst  $38                                         ; $41ba: $ff
	and  c                                           ; $41bb: $a1
	ld   de, $1311                                   ; $41bc: $11 $11 $13
	rst  $38                                         ; $41bf: $ff
	rst  $38                                         ; $41c0: $ff
	rst  $38                                         ; $41c1: $ff
	rst  $28                                         ; $41c2: $ef
	ld   hl, sp+$61                                  ; $41c3: $f8 $61
	ld   de, $1b11                                   ; $41c5: $11 $11 $1b
	rst  $38                                         ; $41c8: $ff
	rst  $38                                         ; $41c9: $ff
	cp   $ff                                         ; $41ca: $fe $ff
	push af                                          ; $41cc: $f5
	ld   de, $1111                                   ; $41cd: $11 $11 $11
	cp   a                                           ; $41d0: $bf
	rst  $38                                         ; $41d1: $ff
	rst  $38                                         ; $41d2: $ff
	db   $fd                                         ; $41d3: $fd
	rst  $38                                         ; $41d4: $ff
	ld   b, d                                        ; $41d5: $42
	ld   de, $1111                                   ; $41d6: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41d9: $cf
	rst  $38                                         ; $41da: $ff
	rst  $38                                         ; $41db: $ff
	rst  $38                                         ; $41dc: $ff
	ld   sp, hl                                      ; $41dd: $f9
	ld   b, c                                        ; $41de: $41
	ld   de, $1d11                                   ; $41df: $11 $11 $1d
	rst  $38                                         ; $41e2: $ff
	rst  $38                                         ; $41e3: $ff
	rst  $38                                         ; $41e4: $ff
	adc  a                                           ; $41e5: $8f
	jp   hl                                          ; $41e6: $e9


	ld   hl, $1111                                   ; $41e7: $21 $11 $11
	ld   c, [hl]                                     ; $41ea: $4e
	rst  $38                                         ; $41eb: $ff
	rst  $38                                         ; $41ec: $ff
	ld   sp, hl                                      ; $41ed: $f9
	adc  h                                           ; $41ee: $8c
	pop  de                                          ; $41ef: $d1
	ld   de, $1211                                   ; $41f0: $11 $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41f3: $cf
	rst  $38                                         ; $41f4: $ff
	rst  $38                                         ; $41f5: $ff
	call c, $86ea                                    ; $41f6: $dc $ea $86
	ld   de, $1911                                   ; $41f9: $11 $11 $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41fc: $cf
	rst  $38                                         ; $41fd: $ff
	jp   hl                                          ; $41fe: $e9


	cp   h                                           ; $41ff: $bc
	adc  d                                           ; $4200: $8a
	and  e                                           ; $4201: $a3
	ld   de, $2f11                                   ; $4202: $11 $11 $2f
	rst  JumpTable                                         ; $4205: $df
	rst  $38                                         ; $4206: $ff
	add  $f9                                         ; $4207: $c6 $f9
	ld   l, l                                        ; $4209: $6d
	ld   [hl], c                                     ; $420a: $71
	ld   de, $8e11                                   ; $420b: $11 $11 $8e
	rst  $28                                         ; $420e: $ef
	rst  $38                                         ; $420f: $ff
	or   l                                           ; $4210: $b5
	sbc  a                                           ; $4211: $9f
	rst  ToBoot                                         ; $4212: $c7
	ld   b, [hl]                                     ; $4213: $46
	ld   de, $7c11                                   ; $4214: $11 $11 $7c
	cp   a                                           ; $4217: $bf
	db   $fc                                         ; $4218: $fc
	sub  l                                           ; $4219: $95
	res  1, e                                        ; $421a: $cb $8b
	sub  a                                           ; $421c: $97
	ld   de, $3a21                                   ; $421d: $11 $21 $3a
	cp   a                                           ; $4220: $bf
	rst  $30                                         ; $4221: $f7
	adc  h                                           ; $4222: $8c
	ld   [hl], l                                     ; $4223: $75
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4224: $cf
	sub  e                                           ; $4225: $93
	sub  h                                           ; $4226: $94
	ld   sp, $bc3a                                   ; $4227: $31 $3a $bc
	ld   l, d                                        ; $422a: $6a
	and  a                                           ; $422b: $a7
	ld   b, h                                        ; $422c: $44
	db   $fd                                         ; $422d: $fd
	cp   l                                           ; $422e: $bd
	sbc  b                                           ; $422f: $98
	ld   b, [hl]                                     ; $4230: $46
	ld   sp, $47d9                                   ; $4231: $31 $d9 $47
	cp   b                                           ; $4234: $b8
	inc  h                                           ; $4235: $24
	xor  [hl]                                        ; $4236: $ae
	sbc  d                                           ; $4237: $9a
	rst  $38                                         ; $4238: $ff
	ld   [hl+], a                                    ; $4239: $22
	xor  c                                           ; $423a: $a9
	ld   hl, $74cb                                   ; $423b: $21 $cb $74
	sbc  b                                           ; $423e: $98
	ld   [hl], $5d                                   ; $423f: $36 $5d
	call c, $d8ba                                    ; $4241: $dc $ba $d8
	ld   b, a                                        ; $4244: $47
	and  a                                           ; $4245: $a7
	ld   d, h                                        ; $4246: $54
	add  [hl]                                        ; $4247: $86
	ld   b, h                                        ; $4248: $44
	ld   h, l                                        ; $4249: $65
	dec  sp                                          ; $424a: $3b
	res  5, [hl]                                     ; $424b: $cb $ae
	db   $e4                                         ; $424d: $e4
	rst  $28                                         ; $424e: $ef
	ld   h, [hl]                                     ; $424f: $66
	adc  c                                           ; $4250: $89
	ld   d, a                                        ; $4251: $57
	ld   h, l                                        ; $4252: $65
	ld   d, d                                        ; $4253: $52
	scf                                              ; $4254: $37
	ld   h, l                                        ; $4255: $65
	xor  l                                           ; $4256: $ad
	rst  $30                                         ; $4257: $f7
	jp   c, $8d9d                                    ; $4258: $da $9d $8d

	ld   d, l                                        ; $425b: $55
	and  h                                           ; $425c: $a4
	ld   h, $c4                                      ; $425d: $26 $c4
	ld   d, $73                                      ; $425f: $16 $73
	ld   e, c                                        ; $4261: $59
	cp   l                                           ; $4262: $bd
	sub  a                                           ; $4263: $97
	ld   a, [$bc8a]                                  ; $4264: $fa $8a $bc
	ld   l, b                                        ; $4267: $68
	halt                                             ; $4268: $76
	ld   d, e                                        ; $4269: $53
	ld   d, [hl]                                     ; $426a: $56
	inc  hl                                          ; $426b: $23
	ld   d, [hl]                                     ; $426c: $56
	ld   d, [hl]                                     ; $426d: $56
	ret  z                                           ; $426e: $c8

	adc  a                                           ; $426f: $8f
	ret  z                                           ; $4270: $c8

	jp   z, $aca9                                    ; $4271: $ca $a9 $ac

	ld   d, a                                        ; $4274: $57
	ld   h, l                                        ; $4275: $65
	ld   [hl-], a                                    ; $4276: $32
	ld   h, l                                        ; $4277: $65
	ld   d, a                                        ; $4278: $57
	ld   e, c                                        ; $4279: $59
	add  h                                           ; $427a: $84
	xor  d                                           ; $427b: $aa
	jp   z, $99ae                                    ; $427c: $ca $ae $99

	xor  c                                           ; $427f: $a9
	add  l                                           ; $4280: $85
	add  [hl]                                        ; $4281: $86
	ld   d, [hl]                                     ; $4282: $56
	ld   h, a                                        ; $4283: $67
	ld   b, a                                        ; $4284: $47
	add  l                                           ; $4285: $85
	adc  b                                           ; $4286: $88
	ld   l, d                                        ; $4287: $6a
	and  l                                           ; $4288: $a5
	adc  d                                           ; $4289: $8a
	xor  b                                           ; $428a: $a8
	sbc  e                                           ; $428b: $9b
	ld   l, d                                        ; $428c: $6a
	ld   [hl], l                                     ; $428d: $75
	xor  c                                           ; $428e: $a9
	ld   [hl], a                                     ; $428f: $77
	sbc  b                                           ; $4290: $98
	ld   b, a                                        ; $4291: $47
	ld   h, [hl]                                     ; $4292: $66
	halt                                             ; $4293: $76
	ld   [hl], a                                     ; $4294: $77
	adc  d                                           ; $4295: $8a
	ld   [hl], a                                     ; $4296: $77
	xor  c                                           ; $4297: $a9
	xor  b                                           ; $4298: $a8
	sbc  d                                           ; $4299: $9a
	sub  [hl]                                        ; $429a: $96
	add  a                                           ; $429b: $87
	ld   h, [hl]                                     ; $429c: $66
	ld   a, b                                        ; $429d: $78
	scf                                              ; $429e: $37
	or   a                                           ; $429f: $b7
	ld   a, e                                        ; $42a0: $7b
	and  [hl]                                        ; $42a1: $a6
	ld   h, [hl]                                     ; $42a2: $66
	reti                                             ; $42a3: $d9


	ld   e, c                                        ; $42a4: $59
	ld   [hl], a                                     ; $42a5: $77
	ld   d, l                                        ; $42a6: $55
	cp   c                                           ; $42a7: $b9
	ld   a, c                                        ; $42a8: $79
	xor  d                                           ; $42a9: $aa
	ld   [hl], a                                     ; $42aa: $77
	sbc  b                                           ; $42ab: $98
	ld   [hl], a                                     ; $42ac: $77
	halt                                             ; $42ad: $76
	ld   a, b                                        ; $42ae: $78
	ld   h, [hl]                                     ; $42af: $66
	adc  d                                           ; $42b0: $8a
	ld   a, b                                        ; $42b1: $78
	sbc  d                                           ; $42b2: $9a
	and  [hl]                                        ; $42b3: $a6
	adc  b                                           ; $42b4: $88
	adc  d                                           ; $42b5: $8a
	ld   h, [hl]                                     ; $42b6: $66
	ld   [hl], a                                     ; $42b7: $77
	ld   [hl], l                                     ; $42b8: $75
	sbc  e                                           ; $42b9: $9b
	adc  c                                           ; $42ba: $89
	adc  c                                           ; $42bb: $89
	and  a                                           ; $42bc: $a7
	ld   [hl], a                                     ; $42bd: $77
	ld   [hl], a                                     ; $42be: $77
	ld   l, c                                        ; $42bf: $69
	ld   a, b                                        ; $42c0: $78
	ld   [hl], a                                     ; $42c1: $77
	cp   c                                           ; $42c2: $b9
	sbc  c                                           ; $42c3: $99
	ld   a, b                                        ; $42c4: $78
	add  l                                           ; $42c5: $85
	sbc  b                                           ; $42c6: $98
	ld   a, b                                        ; $42c7: $78

Call_0d3_42c8:
	ld   [hl], a                                     ; $42c8: $77
	ld   a, b                                        ; $42c9: $78
	adc  b                                           ; $42ca: $88
	sbc  b                                           ; $42cb: $98
	xor  c                                           ; $42cc: $a9
	ld   a, b                                        ; $42cd: $78
	ld   [hl], a                                     ; $42ce: $77
	ld   [hl], a                                     ; $42cf: $77
	adc  b                                           ; $42d0: $88
	sbc  b                                           ; $42d1: $98
	ld   a, c                                        ; $42d2: $79
	ld   [hl], a                                     ; $42d3: $77
	sbc  b                                           ; $42d4: $98
	cp   c                                           ; $42d5: $b9
	ld   a, b                                        ; $42d6: $78
	ld   a, c                                        ; $42d7: $79
	ld   [hl], a                                     ; $42d8: $77
	xor  c                                           ; $42d9: $a9
	adc  b                                           ; $42da: $88
	ld   a, c                                        ; $42db: $79
	xor  c                                           ; $42dc: $a9
	adc  b                                           ; $42dd: $88
	xor  c                                           ; $42de: $a9
	adc  b                                           ; $42df: $88
	add  a                                           ; $42e0: $87
	ld   [hl], a                                     ; $42e1: $77
	ld   a, c                                        ; $42e2: $79
	sub  a                                           ; $42e3: $97
	ld   [hl], a                                     ; $42e4: $77
	adc  h                                           ; $42e5: $8c
	sub  a                                           ; $42e6: $97
	and  a                                           ; $42e7: $a7
	halt                                             ; $42e8: $76
	adc  e                                           ; $42e9: $8b
	ld   [hl], a                                     ; $42ea: $77
	adc  c                                           ; $42eb: $89
	adc  b                                           ; $42ec: $88
	add  a                                           ; $42ed: $87
	sbc  e                                           ; $42ee: $9b
	add  a                                           ; $42ef: $87
	sbc  b                                           ; $42f0: $98
	halt                                             ; $42f1: $76
	adc  e                                           ; $42f2: $8b
	halt                                             ; $42f3: $76
	adc  c                                           ; $42f4: $89
	or   [hl]                                        ; $42f5: $b6
	adc  d                                           ; $42f6: $8a
	ld   l, c                                        ; $42f7: $69
	xor  b                                           ; $42f8: $a8
	add  a                                           ; $42f9: $87
	add  a                                           ; $42fa: $87
	adc  c                                           ; $42fb: $89
	ld   a, b                                        ; $42fc: $78
	add  a                                           ; $42fd: $87
	ld   a, h                                        ; $42fe: $7c
	and  h                                           ; $42ff: $a4
	adc  e                                           ; $4300: $8b
	sub  [hl]                                        ; $4301: $96
	adc  c                                           ; $4302: $89
	ld   l, b                                        ; $4303: $68
	adc  c                                           ; $4304: $89
	adc  b                                           ; $4305: $88
	add  a                                           ; $4306: $87
	ld   a, b                                        ; $4307: $78
	sbc  b                                           ; $4308: $98
	ld   a, b                                        ; $4309: $78
	ld   [hl], a                                     ; $430a: $77
	adc  b                                           ; $430b: $88
	sub  a                                           ; $430c: $97
	adc  b                                           ; $430d: $88
	sbc  b                                           ; $430e: $98
	ld   a, c                                        ; $430f: $79
	adc  c                                           ; $4310: $89
	add  a                                           ; $4311: $87
	sbc  b                                           ; $4312: $98
	and  a                                           ; $4313: $a7
	ld   l, b                                        ; $4314: $68
	ld   a, b                                        ; $4315: $78
	ld   a, d                                        ; $4316: $7a
	and  [hl]                                        ; $4317: $a6
	sbc  b                                           ; $4318: $98
	add  a                                           ; $4319: $87
	sbc  d                                           ; $431a: $9a
	add  a                                           ; $431b: $87
	ld   a, c                                        ; $431c: $79
	ld   [hl], a                                     ; $431d: $77
	adc  b                                           ; $431e: $88
	add  a                                           ; $431f: $87
	xor  c                                           ; $4320: $a9
	ld   a, c                                        ; $4321: $79
	add  a                                           ; $4322: $87
	ld   l, b                                        ; $4323: $68
	cp   b                                           ; $4324: $b8
	adc  b                                           ; $4325: $88
	ld   [hl], a                                     ; $4326: $77
	ld   l, c                                        ; $4327: $69
	adc  b                                           ; $4328: $88
	adc  c                                           ; $4329: $89
	add  a                                           ; $432a: $87
	sbc  b                                           ; $432b: $98
	sub  a                                           ; $432c: $97
	adc  b                                           ; $432d: $88
	adc  c                                           ; $432e: $89
	ld   h, a                                        ; $432f: $67
	xor  b                                           ; $4330: $a8
	adc  b                                           ; $4331: $88
	adc  c                                           ; $4332: $89
	ld   l, b                                        ; $4333: $68
	xor  b                                           ; $4334: $a8
	adc  b                                           ; $4335: $88
	ld   a, c                                        ; $4336: $79
	add  [hl]                                        ; $4337: $86
	sub  a                                           ; $4338: $97
	sbc  c                                           ; $4339: $99
	ld   a, d                                        ; $433a: $7a
	add  a                                           ; $433b: $87
	add  [hl]                                        ; $433c: $86
	adc  d                                           ; $433d: $8a
	sub  a                                           ; $433e: $97
	ld   l, c                                        ; $433f: $69
	add  a                                           ; $4340: $87
	ld   a, d                                        ; $4341: $7a
	and  a                                           ; $4342: $a7
	ld   a, b                                        ; $4343: $78
	xor  c                                           ; $4344: $a9
	ld   a, b                                        ; $4345: $78
	add  [hl]                                        ; $4346: $86
	sbc  b                                           ; $4347: $98
	adc  d                                           ; $4348: $8a
	ld   a, c                                        ; $4349: $79
	halt                                             ; $434a: $76
	ld   [hl], a                                     ; $434b: $77
	adc  b                                           ; $434c: $88
	xor  c                                           ; $434d: $a9
	adc  b                                           ; $434e: $88
	ld   d, a                                        ; $434f: $57
	sbc  b                                           ; $4350: $98
	sbc  c                                           ; $4351: $99
	adc  b                                           ; $4352: $88
	ld   [hl], a                                     ; $4353: $77
	adc  c                                           ; $4354: $89
	and  [hl]                                        ; $4355: $a6
	ld   e, c                                        ; $4356: $59
	sub  a                                           ; $4357: $97
	ld   [hl], a                                     ; $4358: $77
	adc  b                                           ; $4359: $88
	ld   [hl], a                                     ; $435a: $77
	ld   a, d                                        ; $435b: $7a
	add  a                                           ; $435c: $87
	sub  a                                           ; $435d: $97
	ld   a, c                                        ; $435e: $79
	ld   a, c                                        ; $435f: $79
	sbc  b                                           ; $4360: $98
	add  a                                           ; $4361: $87
	ld   a, b                                        ; $4362: $78
	sbc  b                                           ; $4363: $98
	ld   [hl], a                                     ; $4364: $77
	ld   a, d                                        ; $4365: $7a
	ld   [hl], a                                     ; $4366: $77
	or   a                                           ; $4367: $b7
	adc  c                                           ; $4368: $89
	ld   a, c                                        ; $4369: $79
	ld   [hl], a                                     ; $436a: $77
	ld   a, b                                        ; $436b: $78
	sbc  c                                           ; $436c: $99
	ld   [hl], l                                     ; $436d: $75
	cp   d                                           ; $436e: $ba
	adc  b                                           ; $436f: $88
	ld   a, d                                        ; $4370: $7a
	ld   a, b                                        ; $4371: $78
	xor  b                                           ; $4372: $a8
	ld   [hl], a                                     ; $4373: $77
	adc  b                                           ; $4374: $88
	ld   l, b                                        ; $4375: $68
	sbc  d                                           ; $4376: $9a
	ld   d, [hl]                                     ; $4377: $56
	db   $db                                         ; $4378: $db
	ld   h, a                                        ; $4379: $67
	ld   a, b                                        ; $437a: $78
	ld   [hl], a                                     ; $437b: $77
	sub  [hl]                                        ; $437c: $96
	ld   a, e                                        ; $437d: $7b
	ld   [hl], l                                     ; $437e: $75
	cp   d                                           ; $437f: $ba
	ld   [hl], a                                     ; $4380: $77
	or   [hl]                                        ; $4381: $b6
	ld   e, d                                        ; $4382: $5a
	adc  b                                           ; $4383: $88
	ld   h, a                                        ; $4384: $67
	and  [hl]                                        ; $4385: $a6
	ld   l, e                                        ; $4386: $6b
	add  [hl]                                        ; $4387: $86
	xor  c                                           ; $4388: $a9
	add  a                                           ; $4389: $87
	sbc  b                                           ; $438a: $98
	ld   e, c                                        ; $438b: $59
	cp   c                                           ; $438c: $b9
	ld   a, b                                        ; $438d: $78
	halt                                             ; $438e: $76
	adc  e                                           ; $438f: $8b
	and  a                                           ; $4390: $a7
	add  a                                           ; $4391: $87
	ld   l, c                                        ; $4392: $69
	adc  d                                           ; $4393: $8a
	sbc  b                                           ; $4394: $98
	add  a                                           ; $4395: $87
	add  [hl]                                        ; $4396: $86
	ld   a, e                                        ; $4397: $7b
	and  [hl]                                        ; $4398: $a6
	sub  a                                           ; $4399: $97
	ld   [hl], a                                     ; $439a: $77
	cp   b                                           ; $439b: $b8
	ld   l, a                                        ; $439c: $6f
	ld   h, [hl]                                     ; $439d: $66
	sub  [hl]                                        ; $439e: $96
	add  a                                           ; $439f: $87
	and  a                                           ; $43a0: $a7
	ld   a, c                                        ; $43a1: $79
	ld   h, a                                        ; $43a2: $67
	xor  b                                           ; $43a3: $a8
	adc  c                                           ; $43a4: $89
	and  [hl]                                        ; $43a5: $a6
	ld   a, e                                        ; $43a6: $7b
	sbc  c                                           ; $43a7: $99
	ld   h, a                                        ; $43a8: $67
	add  [hl]                                        ; $43a9: $86
	sub  a                                           ; $43aa: $97
	adc  c                                           ; $43ab: $89
	sub  a                                           ; $43ac: $97
	ld   a, b                                        ; $43ad: $78
	ld   a, c                                        ; $43ae: $79
	xor  c                                           ; $43af: $a9
	adc  c                                           ; $43b0: $89
	add  a                                           ; $43b1: $87
	ld   a, c                                        ; $43b2: $79
	sbc  b                                           ; $43b3: $98
	sub  h                                           ; $43b4: $94
	ld   a, e                                        ; $43b5: $7b
	sbc  c                                           ; $43b6: $99
	ld   c, b                                        ; $43b7: $48
	sub  h                                           ; $43b8: $94
	ld   l, e                                        ; $43b9: $6b
	sub  a                                           ; $43ba: $97
	xor  c                                           ; $43bb: $a9
	sub  a                                           ; $43bc: $97
	ld   l, d                                        ; $43bd: $6a
	ld   d, a                                        ; $43be: $57
	or   a                                           ; $43bf: $b7
	ld   a, b                                        ; $43c0: $78
	ld   e, c                                        ; $43c1: $59
	sbc  b                                           ; $43c2: $98
	ld   a, b                                        ; $43c3: $78
	or   a                                           ; $43c4: $b7
	halt                                             ; $43c5: $76
	xor  d                                           ; $43c6: $aa
	ld   e, c                                        ; $43c7: $59
	adc  b                                           ; $43c8: $88
	sbc  c                                           ; $43c9: $99
	ld   h, l                                        ; $43ca: $65
	sbc  e                                           ; $43cb: $9b
	halt                                             ; $43cc: $76
	sub  [hl]                                        ; $43cd: $96
	rst  ToBoot                                         ; $43ce: $c7
	ld   l, d                                        ; $43cf: $6a
	ld   e, d                                        ; $43d0: $5a
	add  a                                           ; $43d1: $87
	sub  a                                           ; $43d2: $97
	xor  b                                           ; $43d3: $a8
	ld   c, c                                        ; $43d4: $49
	ld   e, d                                        ; $43d5: $5a
	sub  $96                                         ; $43d6: $d6 $96
	sbc  d                                           ; $43d8: $9a
	ld   l, b                                        ; $43d9: $68
	and  l                                           ; $43da: $a5
	ld   l, l                                        ; $43db: $6d
	sub  [hl]                                        ; $43dc: $96
	adc  b                                           ; $43dd: $88
	ld   l, d                                        ; $43de: $6a
	adc  d                                           ; $43df: $8a
	and  [hl]                                        ; $43e0: $a6
	add  a                                           ; $43e1: $87
	sbc  c                                           ; $43e2: $99
	sub  [hl]                                        ; $43e3: $96
	ld   h, a                                        ; $43e4: $67
	ld   l, d                                        ; $43e5: $6a
	sbc  b                                           ; $43e6: $98
	add  a                                           ; $43e7: $87
	ld   [hl], a                                     ; $43e8: $77
	sub  a                                           ; $43e9: $97
	ld   a, c                                        ; $43ea: $79
	add  a                                           ; $43eb: $87
	ld   l, b                                        ; $43ec: $68
	or   a                                           ; $43ed: $b7
	sbc  c                                           ; $43ee: $99
	ld   c, c                                        ; $43ef: $49
	ld   b, [hl]                                     ; $43f0: $46
	jp   z, $b8a6                                    ; $43f1: $ca $a6 $b8

	ld   d, a                                        ; $43f4: $57
	ld   e, e                                        ; $43f5: $5b
	ld   [hl], h                                     ; $43f6: $74
	sbc  c                                           ; $43f7: $99
	or   l                                           ; $43f8: $b5
	ld   l, d                                        ; $43f9: $6a
	ld   e, c                                        ; $43fa: $59
	xor  b                                           ; $43fb: $a8
	ld   a, d                                        ; $43fc: $7a
	rst  $10                                         ; $43fd: $d7
	sub  a                                           ; $43fe: $97
	sub  l                                           ; $43ff: $95
	ld   l, d                                        ; $4400: $6a
	ld   [hl], a                                     ; $4401: $77
	ld   d, l                                        ; $4402: $55
	inc  [hl]                                        ; $4403: $34
	ld   c, d                                        ; $4404: $4a
	xor  c                                           ; $4405: $a9
	xor  $aa                                         ; $4406: $ee $aa
	ei                                               ; $4408: $fb
	ld   a, b                                        ; $4409: $78
	add  hl, de                                      ; $440a: $19
	ld   d, c                                        ; $440b: $51
	ld   h, e                                        ; $440c: $63
	ld   d, c                                        ; $440d: $51
	ld   d, $ba                                      ; $440e: $16 $ba
	halt                                             ; $4410: $76
	ld   e, a                                        ; $4411: $5f
	cp   $ff                                         ; $4412: $fe $ff
	db   $fd                                         ; $4414: $fd
	ld   de, $a11f                                   ; $4415: $11 $1f $a1
	ld   de, $7527                                   ; $4418: $11 $27 $75
	xor  a                                           ; $441b: $af
	rst  $38                                         ; $441c: $ff
	rst  $38                                         ; $441d: $ff
	cp   $21                                         ; $441e: $fe $21
	ld   a, [de]                                     ; $4420: $1a
	pop  de                                          ; $4421: $d1
	ld   de, $a618                                   ; $4422: $11 $18 $a6
	and  [hl]                                        ; $4425: $a6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4426: $cf
	rst  JumpTable                                         ; $4427: $df
	rst  $38                                         ; $4428: $ff
	and  c                                           ; $4429: $a1
	ld   de, $14fc                                   ; $442a: $11 $fc $14
	rra                                              ; $442d: $1f
	db   $f4                                         ; $442e: $f4
	ld   l, d                                        ; $442f: $6a
	rst  JumpTable                                         ; $4430: $df
	sbc  d                                           ; $4431: $9a
	rst  $38                                         ; $4432: $ff
	ld   de, $f111                                   ; $4433: $11 $11 $f1
	ld   c, b                                        ; $4436: $48
	rst  $38                                         ; $4437: $ff
	di                                               ; $4438: $f3
	cp   a                                           ; $4439: $bf
	rst  $38                                         ; $443a: $ff
	rra                                              ; $443b: $1f
	pop  af                                          ; $443c: $f1
	ld   de, $251f                                   ; $443d: $11 $1f $25
	cp   a                                           ; $4440: $bf
	rst  $38                                         ; $4441: $ff
	ld   l, e                                        ; $4442: $6b
	rst  $38                                         ; $4443: $ff
	and  e                                           ; $4444: $a3
	db   $fd                                         ; $4445: $fd
	ld   de, $4117                                   ; $4446: $11 $17 $41
	ld   c, h                                        ; $4449: $4c
	rst  $38                                         ; $444a: $ff
	rst  $38                                         ; $444b: $ff
	rst  $38                                         ; $444c: $ff
	pop  af                                          ; $444d: $f1
	xor  a                                           ; $444e: $af
	ld   de, $1111                                   ; $444f: $11 $11 $11
	ld   de, $ffff                                   ; $4452: $11 $ff $ff
	rst  $38                                         ; $4455: $ff
	db   $f4                                         ; $4456: $f4
	adc  e                                           ; $4457: $8b
	ld   de, $1111                                   ; $4458: $11 $11 $11
	ld   de, $ffff                                   ; $445b: $11 $ff $ff
	rst  $38                                         ; $445e: $ff
	or   $fb                                         ; $445f: $f6 $fb
	ld   de, $1111                                   ; $4461: $11 $11 $11
	dec  d                                           ; $4464: $15
	rst  $38                                         ; $4465: $ff
	rst  $38                                         ; $4466: $ff
	rst  $38                                         ; $4467: $ff
	ldh  a, [c]                                      ; $4468: $f2
	db   $fc                                         ; $4469: $fc
	ld   de, $1111                                   ; $446a: $11 $11 $11
	add  hl, de                                      ; $446d: $19
	rst  $38                                         ; $446e: $ff
	rst  $38                                         ; $446f: $ff
	rst  $38                                         ; $4470: $ff
	push af                                          ; $4471: $f5
	rst  $30                                         ; $4472: $f7
	ld   de, $1111                                   ; $4473: $11 $11 $11
	ld   e, $ff                                      ; $4476: $1e $ff
	rst  $38                                         ; $4478: $ff
	rst  $38                                         ; $4479: $ff
	db   $fc                                         ; $447a: $fc
	db   $f4                                         ; $447b: $f4
	ld   de, $1111                                   ; $447c: $11 $11 $11
	rra                                              ; $447f: $1f
	rst  $38                                         ; $4480: $ff
	rst  $38                                         ; $4481: $ff
	rst  $38                                         ; $4482: $ff
	rst  $38                                         ; $4483: $ff
	ldh  a, [c]                                      ; $4484: $f2
	ld   de, $1111                                   ; $4485: $11 $11 $11
	rra                                              ; $4488: $1f
	rst  $38                                         ; $4489: $ff
	rst  $38                                         ; $448a: $ff
	rst  $38                                         ; $448b: $ff
	rst  $38                                         ; $448c: $ff
	pop  af                                          ; $448d: $f1
	ld   de, $1111                                   ; $448e: $11 $11 $11
	rra                                              ; $4491: $1f
	rst  $38                                         ; $4492: $ff
	rst  $38                                         ; $4493: $ff
	rst  $38                                         ; $4494: $ff
	rst  $28                                         ; $4495: $ef
	pop  hl                                          ; $4496: $e1
	ld   de, $1111                                   ; $4497: $11 $11 $11
	rra                                              ; $449a: $1f
	rst  $38                                         ; $449b: $ff
	rst  $38                                         ; $449c: $ff
	rst  $38                                         ; $449d: $ff
	rst  $38                                         ; $449e: $ff
	pop  bc                                          ; $449f: $c1
	ld   de, $1111                                   ; $44a0: $11 $11 $11
	rra                                              ; $44a3: $1f
	rst  $38                                         ; $44a4: $ff
	rst  $38                                         ; $44a5: $ff
	rst  $38                                         ; $44a6: $ff
	rst  $38                                         ; $44a7: $ff
	pop  bc                                          ; $44a8: $c1
	ld   de, $1111                                   ; $44a9: $11 $11 $11
	rra                                              ; $44ac: $1f
	rst  $38                                         ; $44ad: $ff
	rst  $38                                         ; $44ae: $ff
	rst  $38                                         ; $44af: $ff
	rst  $38                                         ; $44b0: $ff
	pop  hl                                          ; $44b1: $e1
	ld   de, $1111                                   ; $44b2: $11 $11 $11
	rra                                              ; $44b5: $1f
	rst  $38                                         ; $44b6: $ff
	rst  $38                                         ; $44b7: $ff
	rst  $38                                         ; $44b8: $ff
	rst  $38                                         ; $44b9: $ff
	pop  de                                          ; $44ba: $d1
	ld   de, $1111                                   ; $44bb: $11 $11 $11
	rra                                              ; $44be: $1f
	rst  $38                                         ; $44bf: $ff
	rst  $38                                         ; $44c0: $ff
	rst  $38                                         ; $44c1: $ff
	rst  $38                                         ; $44c2: $ff
	pop  af                                          ; $44c3: $f1
	ld   de, $1111                                   ; $44c4: $11 $11 $11
	dec  de                                          ; $44c7: $1b
	rst  $38                                         ; $44c8: $ff
	rst  $38                                         ; $44c9: $ff
	rst  $38                                         ; $44ca: $ff
	rst  $38                                         ; $44cb: $ff
	pop  af                                          ; $44cc: $f1
	ld   de, $1111                                   ; $44cd: $11 $11 $11
	ld   de, $ffff                                   ; $44d0: $11 $ff $ff
	rst  $38                                         ; $44d3: $ff
	rst  $38                                         ; $44d4: $ff
	ei                                               ; $44d5: $fb
	ld   de, $1111                                   ; $44d6: $11 $11 $11
	ld   de, $ff9f                                   ; $44d9: $11 $9f $ff
	rst  $38                                         ; $44dc: $ff
	rst  $38                                         ; $44dd: $ff
	rst  $38                                         ; $44de: $ff
	ld   hl, $1111                                   ; $44df: $21 $11 $11
	ld   de, $ff1f                                   ; $44e2: $11 $1f $ff
	rst  $38                                         ; $44e5: $ff
	rst  $38                                         ; $44e6: $ff
	rst  $38                                         ; $44e7: $ff
	pop  af                                          ; $44e8: $f1
	ld   de, $1111                                   ; $44e9: $11 $11 $11
	ld   de, $ffff                                   ; $44ec: $11 $ff $ff
	rst  $38                                         ; $44ef: $ff
	rst  $38                                         ; $44f0: $ff
	ld   hl, sp+$11                                  ; $44f1: $f8 $11
	ld   de, $1111                                   ; $44f3: $11 $11 $11
	rra                                              ; $44f6: $1f
	rst  $38                                         ; $44f7: $ff
	rst  $38                                         ; $44f8: $ff
	rst  $38                                         ; $44f9: $ff
	rst  $38                                         ; $44fa: $ff
	ld   d, c                                        ; $44fb: $51
	ld   de, $1111                                   ; $44fc: $11 $11 $11
	ld   de, $ffff                                   ; $44ff: $11 $ff $ff
	rst  $38                                         ; $4502: $ff
	cp   $f8                                         ; $4503: $fe $f8
	ld   de, $1111                                   ; $4505: $11 $11 $11
	inc  de                                          ; $4508: $13
	rra                                              ; $4509: $1f
	rst  $38                                         ; $450a: $ff
	rst  $38                                         ; $450b: $ff
	rst  $38                                         ; $450c: $ff
	ei                                               ; $450d: $fb
	or   c                                           ; $450e: $b1
	ld   de, $1111                                   ; $450f: $11 $11 $11
	inc  d                                           ; $4512: $14
	rst  $38                                         ; $4513: $ff
	rst  $38                                         ; $4514: $ff
	rst  $38                                         ; $4515: $ff
	rst  $38                                         ; $4516: $ff
	ld   c, a                                        ; $4517: $4f
	ld   de, $1111                                   ; $4518: $11 $11 $11
	ld   de, $ff75                                   ; $451b: $11 $75 $ff
	rst  $38                                         ; $451e: $ff
	rst  $38                                         ; $451f: $ff
	ld   sp, hl                                      ; $4520: $f9
	sbc  e                                           ; $4521: $9b
	ld   de, $1111                                   ; $4522: $11 $11 $11
	ld   de, $ffae                                   ; $4525: $11 $ae $ff
	rst  $38                                         ; $4528: $ff
	rst  $38                                         ; $4529: $ff
	push af                                          ; $452a: $f5
	ld   a, b                                        ; $452b: $78
	ld   de, $1111                                   ; $452c: $11 $11 $11
	ld   de, $ffef                                   ; $452f: $11 $ef $ff
	rst  $38                                         ; $4532: $ff
	rst  $38                                         ; $4533: $ff
	rst  $30                                         ; $4534: $f7
	ld   a, [de]                                     ; $4535: $1a
	ld   de, $1111                                   ; $4536: $11 $11 $11
	ld   de, $ff8f                                   ; $4539: $11 $8f $ff
	rst  $38                                         ; $453c: $ff
	rst  $38                                         ; $453d: $ff
	cp   $15                                         ; $453e: $fe $15
	ld   de, $1111                                   ; $4540: $11 $11 $11
	ld   de, $ff1d                                   ; $4543: $11 $1d $ff
	rst  $38                                         ; $4546: $ff
	rst  $38                                         ; $4547: $ff
	rst  $38                                         ; $4548: $ff
	and  c                                           ; $4549: $a1
	ld   hl, $1111                                   ; $454a: $21 $11 $11
	ld   de, $af18                                   ; $454d: $11 $18 $af
	rst  $38                                         ; $4550: $ff
	rst  $38                                         ; $4551: $ff
	rst  $38                                         ; $4552: $ff
	rst  $38                                         ; $4553: $ff
	ld   d, c                                        ; $4554: $51
	ld   [hl], c                                     ; $4555: $71
	ld   sp, $1111                                   ; $4556: $31 $11 $11
	rla                                              ; $4559: $17
	cp   a                                           ; $455a: $bf
	rst  JumpTable                                         ; $455b: $df
	rst  $38                                         ; $455c: $ff
	rst  $38                                         ; $455d: $ff
	rst  JumpTable                                         ; $455e: $df
	ret  z                                           ; $455f: $c8

	cp   d                                           ; $4560: $ba
	and  [hl]                                        ; $4561: $a6
	ld   de, $1111                                   ; $4562: $11 $11 $11
	ld   [de], a                                     ; $4565: $12
	or   a                                           ; $4566: $b7
	rst  JumpTable                                         ; $4567: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4568: $cf
	db   $ec                                         ; $4569: $ec
	rst  $38                                         ; $456a: $ff
	rst  $38                                         ; $456b: $ff
	rst  $38                                         ; $456c: $ff
	ei                                               ; $456d: $fb
	ld   h, c                                        ; $456e: $61
	ld   de, $1111                                   ; $456f: $11 $11 $11
	ld   [hl], c                                     ; $4572: $71
	rst  $38                                         ; $4573: $ff
	rst  $38                                         ; $4574: $ff
	rst  $38                                         ; $4575: $ff
	rst  $38                                         ; $4576: $ff
	cp   a                                           ; $4577: $bf
	rst  JumpTable                                         ; $4578: $df
	db   $d3                                         ; $4579: $d3
	ld   h, c                                        ; $457a: $61
	ld   de, $1111                                   ; $457b: $11 $11 $11
	sub  e                                           ; $457e: $93
	rst  JumpTable                                         ; $457f: $df
	rst  $38                                         ; $4580: $ff
	rst  $38                                         ; $4581: $ff
	rst  $38                                         ; $4582: $ff
	ld   a, c                                        ; $4583: $79
	sbc  l                                           ; $4584: $9d
	call c, $c1df                                    ; $4585: $dc $df $c1
	ld   de, $5114                                   ; $4588: $11 $14 $51
	ld   d, c                                        ; $458b: $51
	rst  $38                                         ; $458c: $ff
	sbc  a                                           ; $458d: $9f
	rst  $38                                         ; $458e: $ff
	cp   $8f                                         ; $458f: $fe $8f
	ld   a, b                                        ; $4591: $78
	add  h                                           ; $4592: $84
	xor  $75                                         ; $4593: $ee $75
	ld   de, $1411                                   ; $4595: $11 $11 $14
	ld   [hl], a                                     ; $4598: $77
	db   $ec                                         ; $4599: $ec
	cp   [hl]                                        ; $459a: $be
	rst  $38                                         ; $459b: $ff
	db   $fd                                         ; $459c: $fd
	jp   z, Jump_0d3_6878                            ; $459d: $ca $78 $68

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45a0: $cf
	rst  $38                                         ; $45a1: $ff
	and  c                                           ; $45a2: $a1
	ld   de, $4118                                   ; $45a3: $11 $18 $41
	ld   [hl], c                                     ; $45a6: $71
	rst  $38                                         ; $45a7: $ff
	sbc  a                                           ; $45a8: $9f
	rst  $38                                         ; $45a9: $ff
	db   $fc                                         ; $45aa: $fc
	ld   a, h                                        ; $45ab: $7c
	inc  h                                           ; $45ac: $24
	ld   de, $ff7e                                   ; $45ad: $11 $7e $ff
	push af                                          ; $45b0: $f5
	ld   sp, $9115                                   ; $45b1: $31 $15 $91
	ld   d, c                                        ; $45b4: $51
	ld   a, $6b                                      ; $45b5: $3e $6b
	cp   $ff                                         ; $45b7: $fe $ff
	sbc  [hl]                                        ; $45b9: $9e
	sub  [hl]                                        ; $45ba: $96
	ld   [hl], c                                     ; $45bb: $71
	ld   l, d                                        ; $45bc: $6a
	cp   a                                           ; $45bd: $bf
	cp   $b1                                         ; $45be: $fe $b1
	ld   de, $1117                                   ; $45c0: $11 $17 $11
	ld   de, $afab                                   ; $45c3: $11 $ab $af
	rst  $38                                         ; $45c6: $ff
	rst  $38                                         ; $45c7: $ff
	db   $ed                                         ; $45c8: $ed
	ld   d, e                                        ; $45c9: $53
	ld   de, $4a44                                   ; $45ca: $11 $44 $4a
	rst  $38                                         ; $45cd: $ff
	cp   $a7                                         ; $45ce: $fe $a7
	ld   de, $1414                                   ; $45d0: $11 $14 $14
	ld   [de], a                                     ; $45d3: $12
	ld   a, [$ffff]                                  ; $45d4: $fa $ff $ff
	ld   sp, hl                                      ; $45d7: $f9
	push bc                                          ; $45d8: $c5
	ld   [de], a                                     ; $45d9: $12
	ld   de, $6c43                                   ; $45da: $11 $43 $6c
	xor  a                                           ; $45dd: $af
	rst  $38                                         ; $45de: $ff
	cp   $c6                                         ; $45df: $fe $c6
	ld   de, $1211                                   ; $45e1: $11 $11 $12
	jr   @+$01                                       ; $45e4: $18 $ff

	rst  $38                                         ; $45e6: $ff
	rst  $38                                         ; $45e7: $ff
	ld   hl, sp-$6e                                  ; $45e8: $f8 $92
	ld   hl, $1311                                   ; $45ea: $21 $11 $13
	cp   [hl]                                        ; $45ed: $be
	rst  $38                                         ; $45ee: $ff
	rst  $38                                         ; $45ef: $ff
	db   $fc                                         ; $45f0: $fc
	or   [hl]                                        ; $45f1: $b6
	ld   bc, $1111                                   ; $45f2: $01 $11 $11
	add  hl, hl                                      ; $45f5: $29
	rst  $38                                         ; $45f6: $ff
	rst  $38                                         ; $45f7: $ff
	rst  $38                                         ; $45f8: $ff
	cp   c                                           ; $45f9: $b9
	ld   d, h                                        ; $45fa: $54
	ld   b, c                                        ; $45fb: $41
	ld   de, $3811                                   ; $45fc: $11 $11 $38
	rst  $38                                         ; $45ff: $ff
	rst  $38                                         ; $4600: $ff
	cp   $95                                         ; $4601: $fe $95
	ld   b, d                                        ; $4603: $42
	inc  sp                                          ; $4604: $33
	inc  hl                                          ; $4605: $23
	inc  hl                                          ; $4606: $23
	ld   l, b                                        ; $4607: $68
	call $ddef                                       ; $4608: $cd $ef $dd
	jp   z, Jump_0d3_5598                            ; $460b: $ca $98 $55

	ld   b, e                                        ; $460e: $43
	ld   b, e                                        ; $460f: $43
	ld   b, [hl]                                     ; $4610: $46
	ld   a, c                                        ; $4611: $79
	call z, $dbdd                                    ; $4612: $cc $dd $db
	xor  b                                           ; $4615: $a8
	halt                                             ; $4616: $76
	ld   b, l                                        ; $4617: $45
	ld   b, h                                        ; $4618: $44
	ld   b, e                                        ; $4619: $43
	ld   b, a                                        ; $461a: $47
	xor  h                                           ; $461b: $ac
	sbc  $ee                                         ; $461c: $de $ee
	jp   z, $5496                                    ; $461e: $ca $96 $54

	ld   b, h                                        ; $4621: $44
	ld   [hl-], a                                    ; $4622: $32
	inc  sp                                          ; $4623: $33
	ld   e, b                                        ; $4624: $58
	xor  h                                           ; $4625: $ac
	call c, $a9cc                                    ; $4626: $dc $cc $a9
	ld   h, l                                        ; $4629: $65
	ld   d, h                                        ; $462a: $54
	ld   b, l                                        ; $462b: $45
	ld   d, [hl]                                     ; $462c: $56
	adc  c                                           ; $462d: $89
	cp   h                                           ; $462e: $bc
	db   $dd                                         ; $462f: $dd
	jp   z, Jump_0d3_6598                            ; $4630: $ca $98 $65

	ld   b, h                                        ; $4633: $44
	ld   b, h                                        ; $4634: $44
	ld   h, a                                        ; $4635: $67
	adc  d                                           ; $4636: $8a
	xor  e                                           ; $4637: $ab
	xor  d                                           ; $4638: $aa
	cp   d                                           ; $4639: $ba
	sbc  b                                           ; $463a: $98
	ld   [hl], a                                     ; $463b: $77
	ld   h, [hl]                                     ; $463c: $66
	ld   h, a                                        ; $463d: $67
	ld   [hl], a                                     ; $463e: $77
	adc  b                                           ; $463f: $88
	sbc  c                                           ; $4640: $99
	sbc  c                                           ; $4641: $99
	sbc  c                                           ; $4642: $99
	adc  b                                           ; $4643: $88
	add  a                                           ; $4644: $87
	ld   [hl], a                                     ; $4645: $77
	ld   h, [hl]                                     ; $4646: $66
	ld   h, a                                        ; $4647: $67
	ld   a, b                                        ; $4648: $78
	sbc  c                                           ; $4649: $99
	xor  c                                           ; $464a: $a9
	xor  d                                           ; $464b: $aa
	sbc  c                                           ; $464c: $99
	add  a                                           ; $464d: $87
	ld   [hl], a                                     ; $464e: $77
	ld   h, a                                        ; $464f: $67
	ld   [hl], a                                     ; $4650: $77
	ld   [hl], a                                     ; $4651: $77
	adc  b                                           ; $4652: $88
	adc  c                                           ; $4653: $89
	sbc  c                                           ; $4654: $99
	adc  b                                           ; $4655: $88
	adc  b                                           ; $4656: $88
	ld   [hl], a                                     ; $4657: $77
	ld   [hl], a                                     ; $4658: $77
	ld   a, b                                        ; $4659: $78
	adc  c                                           ; $465a: $89
	sbc  b                                           ; $465b: $98
	sbc  b                                           ; $465c: $98
	adc  c                                           ; $465d: $89
	adc  b                                           ; $465e: $88
	ld   [hl], a                                     ; $465f: $77
	ld   [hl], a                                     ; $4660: $77
	ld   [hl], a                                     ; $4661: $77
	ld   [hl], a                                     ; $4662: $77
	ld   a, b                                        ; $4663: $78
	adc  b                                           ; $4664: $88
	adc  b                                           ; $4665: $88
	sbc  b                                           ; $4666: $98
	adc  c                                           ; $4667: $89
	add  a                                           ; $4668: $87
	ld   [hl], a                                     ; $4669: $77
	ld   [hl], a                                     ; $466a: $77
	ld   a, b                                        ; $466b: $78
	adc  b                                           ; $466c: $88
	sbc  c                                           ; $466d: $99
	sbc  c                                           ; $466e: $99
	sbc  c                                           ; $466f: $99
	adc  b                                           ; $4670: $88
	adc  b                                           ; $4671: $88
	adc  b                                           ; $4672: $88
	adc  b                                           ; $4673: $88
	adc  b                                           ; $4674: $88
	adc  c                                           ; $4675: $89
	sbc  c                                           ; $4676: $99
	sbc  c                                           ; $4677: $99
	adc  b                                           ; $4678: $88
	adc  b                                           ; $4679: $88
	adc  b                                           ; $467a: $88
	ld   a, b                                        ; $467b: $78
	adc  b                                           ; $467c: $88
	sbc  c                                           ; $467d: $99
	adc  b                                           ; $467e: $88
	sbc  b                                           ; $467f: $98
	adc  b                                           ; $4680: $88
	ld   a, b                                        ; $4681: $78
	ld   [hl], a                                     ; $4682: $77
	adc  b                                           ; $4683: $88
	adc  c                                           ; $4684: $89
	sbc  b                                           ; $4685: $98
	adc  b                                           ; $4686: $88
	sbc  c                                           ; $4687: $99
	adc  b                                           ; $4688: $88
	ld   [hl], a                                     ; $4689: $77
	ld   [hl], a                                     ; $468a: $77
	ld   a, b                                        ; $468b: $78
	adc  b                                           ; $468c: $88
	adc  b                                           ; $468d: $88
	adc  b                                           ; $468e: $88
	adc  b                                           ; $468f: $88
	adc  b                                           ; $4690: $88
	adc  b                                           ; $4691: $88
	adc  b                                           ; $4692: $88
	adc  b                                           ; $4693: $88
	adc  b                                           ; $4694: $88
	adc  b                                           ; $4695: $88
	adc  b                                           ; $4696: $88
	adc  b                                           ; $4697: $88
	ld   a, b                                        ; $4698: $78
	adc  b                                           ; $4699: $88
	adc  b                                           ; $469a: $88
	sbc  c                                           ; $469b: $99
	sbc  b                                           ; $469c: $98
	adc  b                                           ; $469d: $88
	adc  b                                           ; $469e: $88
	adc  b                                           ; $469f: $88
	adc  b                                           ; $46a0: $88
	ld   [hl], a                                     ; $46a1: $77
	adc  b                                           ; $46a2: $88
	adc  b                                           ; $46a3: $88
	adc  b                                           ; $46a4: $88
	adc  b                                           ; $46a5: $88
	adc  b                                           ; $46a6: $88
	adc  b                                           ; $46a7: $88
	adc  c                                           ; $46a8: $89
	sbc  b                                           ; $46a9: $98
	sbc  c                                           ; $46aa: $99
	sbc  c                                           ; $46ab: $99
	sbc  c                                           ; $46ac: $99
	sbc  c                                           ; $46ad: $99
	sbc  b                                           ; $46ae: $98
	adc  c                                           ; $46af: $89
	adc  b                                           ; $46b0: $88
	add  a                                           ; $46b1: $87
	ld   [hl], a                                     ; $46b2: $77
	adc  b                                           ; $46b3: $88
	ld   [hl], a                                     ; $46b4: $77
	ld   [hl], a                                     ; $46b5: $77
	adc  b                                           ; $46b6: $88
	adc  b                                           ; $46b7: $88
	adc  b                                           ; $46b8: $88
	ld   a, b                                        ; $46b9: $78
	adc  b                                           ; $46ba: $88
	sbc  b                                           ; $46bb: $98
	xor  d                                           ; $46bc: $aa
	xor  d                                           ; $46bd: $aa
	xor  c                                           ; $46be: $a9
	xor  d                                           ; $46bf: $aa
	sbc  b                                           ; $46c0: $98
	ld   [hl], a                                     ; $46c1: $77
	halt                                             ; $46c2: $76
	halt                                             ; $46c3: $76
	ld   [hl], a                                     ; $46c4: $77
	ld   [hl], a                                     ; $46c5: $77
	ld   [hl], a                                     ; $46c6: $77
	ld   [hl], a                                     ; $46c7: $77
	ld   [hl], a                                     ; $46c8: $77
	ld   [hl], a                                     ; $46c9: $77
	adc  b                                           ; $46ca: $88
	sbc  d                                           ; $46cb: $9a
	xor  c                                           ; $46cc: $a9
	xor  e                                           ; $46cd: $ab
	cp   h                                           ; $46ce: $bc
	xor  d                                           ; $46cf: $aa
	sub  a                                           ; $46d0: $97
	ld   [hl], a                                     ; $46d1: $77
	ld   h, [hl]                                     ; $46d2: $66
	ld   h, a                                        ; $46d3: $67
	halt                                             ; $46d4: $76
	ld   h, [hl]                                     ; $46d5: $66
	ld   h, a                                        ; $46d6: $67
	ld   [hl], a                                     ; $46d7: $77
	add  a                                           ; $46d8: $87
	ld   [hl], a                                     ; $46d9: $77
	adc  b                                           ; $46da: $88
	sbc  c                                           ; $46db: $99
	xor  e                                           ; $46dc: $ab
	cp   h                                           ; $46dd: $bc
	xor  d                                           ; $46de: $aa
	sub  a                                           ; $46df: $97
	ld   [hl], a                                     ; $46e0: $77
	ld   [hl], a                                     ; $46e1: $77
	ld   [hl], a                                     ; $46e2: $77
	ld   [hl], a                                     ; $46e3: $77
	ld   h, [hl]                                     ; $46e4: $66
	ld   h, [hl]                                     ; $46e5: $66
	ld   h, a                                        ; $46e6: $67
	ld   a, b                                        ; $46e7: $78
	add  a                                           ; $46e8: $87
	adc  b                                           ; $46e9: $88
	sbc  d                                           ; $46ea: $9a
	sbc  e                                           ; $46eb: $9b
	call z, $87b9                                    ; $46ec: $cc $b9 $87
	ld   h, [hl]                                     ; $46ef: $66
	ld   [hl], a                                     ; $46f0: $77
	ld   [hl], a                                     ; $46f1: $77
	ld   [hl], a                                     ; $46f2: $77
	halt                                             ; $46f3: $76
	ld   h, [hl]                                     ; $46f4: $66
	ld   h, [hl]                                     ; $46f5: $66
	ld   [hl], a                                     ; $46f6: $77
	adc  b                                           ; $46f7: $88
	ld   a, b                                        ; $46f8: $78
	xor  d                                           ; $46f9: $aa
	call z, $a8cd                                    ; $46fa: $cc $cd $a8
	add  a                                           ; $46fd: $87
	ld   h, a                                        ; $46fe: $67
	ld   h, a                                        ; $46ff: $67
	halt                                             ; $4700: $76
	halt                                             ; $4701: $76
	ld   h, a                                        ; $4702: $67
	ld   d, [hl]                                     ; $4703: $56
	ld   [hl], a                                     ; $4704: $77
	ld   [hl], a                                     ; $4705: $77
	ld   a, b                                        ; $4706: $78
	adc  e                                           ; $4707: $8b
	sbc  d                                           ; $4708: $9a
	call z, Call_0d3_77d9                            ; $4709: $cc $d9 $77
	ld   [hl], l                                     ; $470c: $75
	ld   [hl], a                                     ; $470d: $77
	add  a                                           ; $470e: $87
	ld   c, b                                        ; $470f: $48
	ld   h, [hl]                                     ; $4710: $66
	ld   d, h                                        ; $4711: $54
	ld   [hl], a                                     ; $4712: $77
	adc  c                                           ; $4713: $89
	ld   a, c                                        ; $4714: $79
	sbc  d                                           ; $4715: $9a
	cp   e                                           ; $4716: $bb
	cp   h                                           ; $4717: $bc
	jp   z, Jump_0d3_5786                            ; $4718: $ca $86 $57

	ld   h, a                                        ; $471b: $67
	ld   [hl], l                                     ; $471c: $75
	ld   h, [hl]                                     ; $471d: $66
	ld   h, [hl]                                     ; $471e: $66
	ld   d, l                                        ; $471f: $55
	ld   h, [hl]                                     ; $4720: $66
	adc  c                                           ; $4721: $89
	adc  d                                           ; $4722: $8a
	cp   d                                           ; $4723: $ba
	call $96ca                                       ; $4724: $cd $ca $96
	ld   d, a                                        ; $4727: $57
	ld   l, b                                        ; $4728: $68
	ld   h, [hl]                                     ; $4729: $66
	ld   [hl], h                                     ; $472a: $74
	halt                                             ; $472b: $76
	ld   h, a                                        ; $472c: $67
	ld   d, l                                        ; $472d: $55
	adc  c                                           ; $472e: $89
	sbc  d                                           ; $472f: $9a
	xor  h                                           ; $4730: $ac
	cp   e                                           ; $4731: $bb
	db   $eb                                         ; $4732: $eb
	halt                                             ; $4733: $76
	ld   d, [hl]                                     ; $4734: $56
	ld   [hl], a                                     ; $4735: $77
	add  a                                           ; $4736: $87
	ld   h, [hl]                                     ; $4737: $66
	ld   h, [hl]                                     ; $4738: $66
	ld   h, [hl]                                     ; $4739: $66
	ld   d, [hl]                                     ; $473a: $56
	ld   l, b                                        ; $473b: $68
	sbc  d                                           ; $473c: $9a
	db   $ed                                         ; $473d: $ed
	jp   z, $8697                                    ; $473e: $ca $97 $86

	sbc  d                                           ; $4741: $9a
	ld   h, a                                        ; $4742: $67
	add  [hl]                                        ; $4743: $86
	ld   h, l                                        ; $4744: $65
	ld   b, [hl]                                     ; $4745: $46
	ld   d, a                                        ; $4746: $57
	adc  b                                           ; $4747: $88
	adc  c                                           ; $4748: $89
	sbc  e                                           ; $4749: $9b
	call Call_0d3_77d9                               ; $474a: $cd $d9 $77
	ld   d, [hl]                                     ; $474d: $56
	add  a                                           ; $474e: $87
	ld   [hl], a                                     ; $474f: $77
	ld   d, a                                        ; $4750: $57
	halt                                             ; $4751: $76
	ld   h, l                                        ; $4752: $65
	ld   h, a                                        ; $4753: $67
	adc  c                                           ; $4754: $89
	xor  e                                           ; $4755: $ab
	ret                                              ; $4756: $c9


	sbc  d                                           ; $4757: $9a
	adc  b                                           ; $4758: $88
	sbc  c                                           ; $4759: $99
	ld   [hl], a                                     ; $475a: $77
	ld   h, a                                        ; $475b: $67
	add  [hl]                                        ; $475c: $86
	ld   h, l                                        ; $475d: $65
	ld   d, a                                        ; $475e: $57
	sbc  b                                           ; $475f: $98
	adc  b                                           ; $4760: $88
	ld   a, d                                        ; $4761: $7a
	xor  l                                           ; $4762: $ad
	ret                                              ; $4763: $c9


	and  [hl]                                        ; $4764: $a6
	ld   e, b                                        ; $4765: $58
	ld   [hl], a                                     ; $4766: $77
	ld   h, [hl]                                     ; $4767: $66
	sbc  c                                           ; $4768: $99
	ld   h, a                                        ; $4769: $67
	ld   h, l                                        ; $476a: $65
	halt                                             ; $476b: $76
	ld   a, d                                        ; $476c: $7a
	xor  e                                           ; $476d: $ab
	xor  d                                           ; $476e: $aa
	cp   d                                           ; $476f: $ba
	adc  c                                           ; $4770: $89
	and  a                                           ; $4771: $a7
	ld   h, a                                        ; $4772: $67
	ld   a, b                                        ; $4773: $78
	halt                                             ; $4774: $76
	ld   d, [hl]                                     ; $4775: $56
	ld   d, [hl]                                     ; $4776: $56
	ld   a, b                                        ; $4777: $78
	sub  a                                           ; $4778: $97
	set  1, e                                        ; $4779: $cb $cb
	sub  a                                           ; $477b: $97
	add  a                                           ; $477c: $87
	ld   a, c                                        ; $477d: $79
	adc  b                                           ; $477e: $88
	ld   h, a                                        ; $477f: $67
	add  [hl]                                        ; $4780: $86
	ld   h, [hl]                                     ; $4781: $66
	ld   [hl], a                                     ; $4782: $77
	ld   a, b                                        ; $4783: $78
	xor  d                                           ; $4784: $aa
	xor  c                                           ; $4785: $a9

Jump_0d3_4786:
	ld   a, c                                        ; $4786: $79
	xor  b                                           ; $4787: $a8
	add  a                                           ; $4788: $87
	sub  a                                           ; $4789: $97
	ld   e, c                                        ; $478a: $59
	adc  c                                           ; $478b: $89
	ld   h, h                                        ; $478c: $64
	ld   h, [hl]                                     ; $478d: $66
	ld   l, c                                        ; $478e: $69
	adc  c                                           ; $478f: $89
	cp   e                                           ; $4790: $bb
	or   a                                           ; $4791: $b7
	halt                                             ; $4792: $76
	ld   l, c                                        ; $4793: $69
	sbc  e                                           ; $4794: $9b
	add  [hl]                                        ; $4795: $86
	ld   a, b                                        ; $4796: $78
	add  [hl]                                        ; $4797: $86
	ld   h, a                                        ; $4798: $67
	ld   a, c                                        ; $4799: $79
	sub  a                                           ; $479a: $97
	sbc  c                                           ; $479b: $99
	xor  e                                           ; $479c: $ab
	ret  z                                           ; $479d: $c8

	halt                                             ; $479e: $76
	ld   d, a                                        ; $479f: $57
	adc  b                                           ; $47a0: $88
	sub  a                                           ; $47a1: $97
	ld   [hl], a                                     ; $47a2: $77
	ld   c, b                                        ; $47a3: $48
	ld   h, [hl]                                     ; $47a4: $66
	ld   a, c                                        ; $47a5: $79
	sbc  $b8                                         ; $47a6: $de $b8
	add  h                                           ; $47a8: $84
	ld   d, a                                        ; $47a9: $57
	sbc  d                                           ; $47aa: $9a
	ld   [hl], a                                     ; $47ab: $77
	sbc  b                                           ; $47ac: $98
	ld   [hl], a                                     ; $47ad: $77
	ld   l, b                                        ; $47ae: $68
	ld   h, [hl]                                     ; $47af: $66
	adc  d                                           ; $47b0: $8a
	xor  d                                           ; $47b1: $aa
	xor  d                                           ; $47b2: $aa
	halt                                             ; $47b3: $76
	ld   l, b                                        ; $47b4: $68
	sub  [hl]                                        ; $47b5: $96
	adc  d                                           ; $47b6: $8a
	sub  a                                           ; $47b7: $97
	ld   a, b                                        ; $47b8: $78
	ld   [hl], a                                     ; $47b9: $77
	ld   d, [hl]                                     ; $47ba: $56
	ld   a, c                                        ; $47bb: $79
	sbc  c                                           ; $47bc: $99
	jp   z, Jump_0d3_4786                            ; $47bd: $ca $86 $47

	ld   [hl], l                                     ; $47c0: $75
	sbc  b                                           ; $47c1: $98
	sbc  c                                           ; $47c2: $99
	adc  b                                           ; $47c3: $88
	sbc  e                                           ; $47c4: $9b
	ld   h, [hl]                                     ; $47c5: $66
	add  a                                           ; $47c6: $87
	sbc  d                                           ; $47c7: $9a
	xor  c                                           ; $47c8: $a9
	ld   [hl], a                                     ; $47c9: $77
	halt                                             ; $47ca: $76
	ld   d, a                                        ; $47cb: $57
	ld   d, a                                        ; $47cc: $57
	sbc  c                                           ; $47cd: $99
	xor  b                                           ; $47ce: $a8
	adc  d                                           ; $47cf: $8a
	xor  d                                           ; $47d0: $aa
	ld   [hl], l                                     ; $47d1: $75
	ld   h, l                                        ; $47d2: $65
	ld   l, e                                        ; $47d3: $6b
	add  a                                           ; $47d4: $87
	ld   [hl], a                                     ; $47d5: $77
	xor  d                                           ; $47d6: $aa
	sbc  b                                           ; $47d7: $98
	ld   h, l                                        ; $47d8: $65
	sbc  c                                           ; $47d9: $99
	cp   h                                           ; $47da: $bc
	and  a                                           ; $47db: $a7
	ld   [hl], l                                     ; $47dc: $75
	ld   d, [hl]                                     ; $47dd: $56
	ld   b, a                                        ; $47de: $47
	adc  c                                           ; $47df: $89
	xor  b                                           ; $47e0: $a8
	sbc  h                                           ; $47e1: $9c
	or   a                                           ; $47e2: $b7
	ld   d, h                                        ; $47e3: $54
	ld   [hl], a                                     ; $47e4: $77
	sbc  d                                           ; $47e5: $9a
	and  a                                           ; $47e6: $a7
	ld   d, a                                        ; $47e7: $57
	adc  c                                           ; $47e8: $89
	ld   h, l                                        ; $47e9: $65
	ld   e, b                                        ; $47ea: $58
	xor  e                                           ; $47eb: $ab
	res  2, l                                        ; $47ec: $cb $95
	ld   d, l                                        ; $47ee: $55
	ld   h, a                                        ; $47ef: $67
	ld   a, d                                        ; $47f0: $7a
	sbc  c                                           ; $47f1: $99
	xor  c                                           ; $47f2: $a9
	halt                                             ; $47f3: $76
	ld   b, [hl]                                     ; $47f4: $46
	ld   a, b                                        ; $47f5: $78
	cp   h                                           ; $47f6: $bc
	ld   [$4565], a                                  ; $47f7: $ea $65 $45
	halt                                             ; $47fa: $76
	ld   a, c                                        ; $47fb: $79
	sbc  c                                           ; $47fc: $99
	adc  d                                           ; $47fd: $8a
	and  a                                           ; $47fe: $a7
	add  [hl]                                        ; $47ff: $86
	ld   a, b                                        ; $4800: $78
	ld   a, c                                        ; $4801: $79
	sbc  c                                           ; $4802: $99
	add  a                                           ; $4803: $87
	adc  b                                           ; $4804: $88
	ld   a, c                                        ; $4805: $79
	add  a                                           ; $4806: $87
	add  a                                           ; $4807: $87
	adc  d                                           ; $4808: $8a
	xor  e                                           ; $4809: $ab
	add  a                                           ; $480a: $87
	ld   h, [hl]                                     ; $480b: $66
	ld   h, [hl]                                     ; $480c: $66
	ld   a, c                                        ; $480d: $79
	adc  b                                           ; $480e: $88
	cp   e                                           ; $480f: $bb
	xor  b                                           ; $4810: $a8

Jump_0d3_4811:
	ld   d, l                                        ; $4811: $55
	ld   h, a                                        ; $4812: $67
	sbc  c                                           ; $4813: $99
	cp   e                                           ; $4814: $bb
	sub  a                                           ; $4815: $97
	ld   d, [hl]                                     ; $4816: $56
	ld   h, [hl]                                     ; $4817: $66
	adc  c                                           ; $4818: $89
	sbc  b                                           ; $4819: $98
	adc  d                                           ; $481a: $8a
	sbc  b                                           ; $481b: $98
	ld   h, a                                        ; $481c: $67
	ld   a, b                                        ; $481d: $78
	sbc  d                                           ; $481e: $9a
	sub  a                                           ; $481f: $97
	ld   [hl], a                                     ; $4820: $77
	ld   h, a                                        ; $4821: $67
	sub  a                                           ; $4822: $97
	ld   a, b                                        ; $4823: $78
	adc  c                                           ; $4824: $89
	sbc  c                                           ; $4825: $99
	xor  b                                           ; $4826: $a8
	adc  b                                           ; $4827: $88
	ld   a, b                                        ; $4828: $78
	adc  b                                           ; $4829: $88
	add  a                                           ; $482a: $87
	ld   a, b                                        ; $482b: $78
	adc  b                                           ; $482c: $88
	sbc  c                                           ; $482d: $99
	sbc  c                                           ; $482e: $99
	sbc  b                                           ; $482f: $98
	ld   a, c                                        ; $4830: $79
	ld   [hl], a                                     ; $4831: $77
	ld   a, b                                        ; $4832: $78
	ld   a, b                                        ; $4833: $78
	ld   a, b                                        ; $4834: $78
	sbc  b                                           ; $4835: $98
	add  a                                           ; $4836: $87
	sbc  b                                           ; $4837: $98
	sbc  c                                           ; $4838: $99
	sbc  b                                           ; $4839: $98
	ld   [hl], a                                     ; $483a: $77
	adc  c                                           ; $483b: $89
	ld   a, b                                        ; $483c: $78
	add  a                                           ; $483d: $87
	sub  a                                           ; $483e: $97
	sbc  b                                           ; $483f: $98
	sub  a                                           ; $4840: $97
	ld   a, b                                        ; $4841: $78
	sbc  b                                           ; $4842: $98
	adc  c                                           ; $4843: $89
	adc  b                                           ; $4844: $88
	ld   a, c                                        ; $4845: $79
	sub  [hl]                                        ; $4846: $96
	ld   a, b                                        ; $4847: $78
	sbc  b                                           ; $4848: $98
	add  a                                           ; $4849: $87
	add  a                                           ; $484a: $87
	sbc  b                                           ; $484b: $98
	adc  b                                           ; $484c: $88
	ld   a, b                                        ; $484d: $78
	adc  b                                           ; $484e: $88
	sbc  b                                           ; $484f: $98
	ld   a, b                                        ; $4850: $78
	add  a                                           ; $4851: $87
	ld   [hl], a                                     ; $4852: $77
	sbc  c                                           ; $4853: $99
	adc  c                                           ; $4854: $89
	ld   [hl], a                                     ; $4855: $77
	sbc  b                                           ; $4856: $98
	sbc  b                                           ; $4857: $98
	ld   a, c                                        ; $4858: $79
	ld   [hl], a                                     ; $4859: $77
	halt                                             ; $485a: $76
	adc  c                                           ; $485b: $89
	adc  b                                           ; $485c: $88
	adc  b                                           ; $485d: $88
	sbc  b                                           ; $485e: $98
	adc  b                                           ; $485f: $88
	halt                                             ; $4860: $76
	adc  c                                           ; $4861: $89
	adc  b                                           ; $4862: $88
	ld   h, a                                        ; $4863: $67
	adc  b                                           ; $4864: $88
	sbc  b                                           ; $4865: $98
	ld   a, c                                        ; $4866: $79
	sbc  c                                           ; $4867: $99
	sub  a                                           ; $4868: $97
	add  a                                           ; $4869: $87
	ld   a, c                                        ; $486a: $79
	sub  a                                           ; $486b: $97
	adc  b                                           ; $486c: $88
	ld   a, c                                        ; $486d: $79
	sub  a                                           ; $486e: $97
	sbc  b                                           ; $486f: $98
	adc  b                                           ; $4870: $88
	adc  b                                           ; $4871: $88
	sbc  b                                           ; $4872: $98
	ld   [hl], a                                     ; $4873: $77
	adc  b                                           ; $4874: $88
	adc  b                                           ; $4875: $88
	adc  b                                           ; $4876: $88
	ld   a, b                                        ; $4877: $78
	add  a                                           ; $4878: $87
	ld   [hl], a                                     ; $4879: $77
	ld   a, b                                        ; $487a: $78
	sbc  b                                           ; $487b: $98
	sbc  b                                           ; $487c: $98
	sbc  c                                           ; $487d: $99
	adc  b                                           ; $487e: $88
	sbc  b                                           ; $487f: $98
	ld   [hl], a                                     ; $4880: $77
	ld   [hl], a                                     ; $4881: $77
	adc  c                                           ; $4882: $89
	adc  c                                           ; $4883: $89
	adc  b                                           ; $4884: $88
	sbc  b                                           ; $4885: $98
	sub  a                                           ; $4886: $97
	ld   a, c                                        ; $4887: $79
	adc  b                                           ; $4888: $88
	add  a                                           ; $4889: $87
	ld   [hl], a                                     ; $488a: $77
	sbc  c                                           ; $488b: $99
	add  a                                           ; $488c: $87
	ld   a, c                                        ; $488d: $79
	sbc  c                                           ; $488e: $99
	add  a                                           ; $488f: $87
	ld   [hl], a                                     ; $4890: $77
	adc  b                                           ; $4891: $88
	ld   [hl], a                                     ; $4892: $77
	adc  b                                           ; $4893: $88
	sbc  b                                           ; $4894: $98
	ld   [hl], a                                     ; $4895: $77
	sbc  b                                           ; $4896: $98
	adc  b                                           ; $4897: $88
	ld   [hl], a                                     ; $4898: $77
	adc  c                                           ; $4899: $89
	sbc  c                                           ; $489a: $99
	add  a                                           ; $489b: $87
	adc  b                                           ; $489c: $88
	add  a                                           ; $489d: $87
	ld   a, b                                        ; $489e: $78
	sbc  b                                           ; $489f: $98
	adc  b                                           ; $48a0: $88
	add  a                                           ; $48a1: $87
	ld   a, b                                        ; $48a2: $78
	adc  c                                           ; $48a3: $89
	sbc  b                                           ; $48a4: $98
	adc  c                                           ; $48a5: $89
	ld   [hl], a                                     ; $48a6: $77
	adc  b                                           ; $48a7: $88
	sbc  b                                           ; $48a8: $98
	adc  b                                           ; $48a9: $88
	ld   a, b                                        ; $48aa: $78
	sbc  b                                           ; $48ab: $98
	add  a                                           ; $48ac: $87
	adc  c                                           ; $48ad: $89
	adc  c                                           ; $48ae: $89
	adc  b                                           ; $48af: $88
	adc  b                                           ; $48b0: $88
	ld   a, b                                        ; $48b1: $78
	add  a                                           ; $48b2: $87
	adc  b                                           ; $48b3: $88
	sbc  b                                           ; $48b4: $98
	adc  b                                           ; $48b5: $88
	sbc  b                                           ; $48b6: $98
	adc  c                                           ; $48b7: $89
	adc  b                                           ; $48b8: $88
	adc  c                                           ; $48b9: $89
	sbc  b                                           ; $48ba: $98
	ld   [hl], a                                     ; $48bb: $77
	adc  b                                           ; $48bc: $88
	adc  b                                           ; $48bd: $88
	ld   [hl], a                                     ; $48be: $77
	adc  c                                           ; $48bf: $89
	sbc  b                                           ; $48c0: $98
	adc  b                                           ; $48c1: $88
	adc  b                                           ; $48c2: $88
	adc  b                                           ; $48c3: $88
	adc  b                                           ; $48c4: $88
	sbc  b                                           ; $48c5: $98
	ld   [hl], a                                     ; $48c6: $77
	adc  c                                           ; $48c7: $89
	adc  b                                           ; $48c8: $88
	add  a                                           ; $48c9: $87
	adc  c                                           ; $48ca: $89
	adc  c                                           ; $48cb: $89
	ld   [hl], a                                     ; $48cc: $77
	adc  b                                           ; $48cd: $88
	sbc  b                                           ; $48ce: $98
	adc  b                                           ; $48cf: $88
	ld   a, b                                        ; $48d0: $78
	ld   a, b                                        ; $48d1: $78
	sbc  b                                           ; $48d2: $98
	sbc  b                                           ; $48d3: $98
	adc  b                                           ; $48d4: $88
	adc  c                                           ; $48d5: $89
	sbc  b                                           ; $48d6: $98
	adc  b                                           ; $48d7: $88
	adc  b                                           ; $48d8: $88
	adc  b                                           ; $48d9: $88
	ld   [hl], a                                     ; $48da: $77
	sbc  c                                           ; $48db: $99
	adc  b                                           ; $48dc: $88
	ld   a, b                                        ; $48dd: $78
	adc  c                                           ; $48de: $89
	add  a                                           ; $48df: $87
	ld   a, b                                        ; $48e0: $78
	adc  b                                           ; $48e1: $88
	sbc  b                                           ; $48e2: $98
	adc  b                                           ; $48e3: $88
	adc  b                                           ; $48e4: $88
	adc  b                                           ; $48e5: $88
	adc  b                                           ; $48e6: $88
	sbc  b                                           ; $48e7: $98
	adc  b                                           ; $48e8: $88
	adc  b                                           ; $48e9: $88
	adc  b                                           ; $48ea: $88
	adc  b                                           ; $48eb: $88
	adc  b                                           ; $48ec: $88
	sbc  b                                           ; $48ed: $98
	ld   a, b                                        ; $48ee: $78
	adc  b                                           ; $48ef: $88
	sbc  b                                           ; $48f0: $98
	adc  b                                           ; $48f1: $88
	adc  c                                           ; $48f2: $89
	adc  b                                           ; $48f3: $88
	add  a                                           ; $48f4: $87
	sbc  c                                           ; $48f5: $99
	sbc  c                                           ; $48f6: $99
	add  a                                           ; $48f7: $87
	ld   a, b                                        ; $48f8: $78
	sbc  b                                           ; $48f9: $98
	add  a                                           ; $48fa: $87
	ld   a, b                                        ; $48fb: $78
	adc  b                                           ; $48fc: $88
	adc  b                                           ; $48fd: $88
	ld   a, b                                        ; $48fe: $78
	sbc  b                                           ; $48ff: $98
	adc  b                                           ; $4900: $88
	adc  b                                           ; $4901: $88
	adc  c                                           ; $4902: $89
	adc  b                                           ; $4903: $88
	adc  b                                           ; $4904: $88
	ld   a, b                                        ; $4905: $78
	adc  b                                           ; $4906: $88
	adc  b                                           ; $4907: $88
	adc  b                                           ; $4908: $88
	adc  b                                           ; $4909: $88
	adc  b                                           ; $490a: $88
	sbc  b                                           ; $490b: $98
	add  a                                           ; $490c: $87
	ld   a, b                                        ; $490d: $78
	sbc  b                                           ; $490e: $98
	ld   [hl], a                                     ; $490f: $77
	ld   a, b                                        ; $4910: $78
	adc  b                                           ; $4911: $88
	sub  a                                           ; $4912: $97
	ld   a, b                                        ; $4913: $78
	adc  b                                           ; $4914: $88
	sbc  b                                           ; $4915: $98
	adc  b                                           ; $4916: $88
	adc  c                                           ; $4917: $89
	sbc  b                                           ; $4918: $98
	ld   [hl], a                                     ; $4919: $77
	adc  b                                           ; $491a: $88
	sbc  c                                           ; $491b: $99
	adc  b                                           ; $491c: $88
	ld   a, b                                        ; $491d: $78
	adc  c                                           ; $491e: $89
	adc  b                                           ; $491f: $88
	adc  b                                           ; $4920: $88
	adc  b                                           ; $4921: $88
	sbc  b                                           ; $4922: $98
	adc  b                                           ; $4923: $88
	adc  b                                           ; $4924: $88
	adc  b                                           ; $4925: $88
	adc  b                                           ; $4926: $88
	add  a                                           ; $4927: $87
	adc  b                                           ; $4928: $88
	sbc  c                                           ; $4929: $99
	adc  b                                           ; $492a: $88
	adc  b                                           ; $492b: $88
	sbc  b                                           ; $492c: $98
	adc  b                                           ; $492d: $88
	adc  b                                           ; $492e: $88
	adc  c                                           ; $492f: $89
	adc  b                                           ; $4930: $88
	adc  b                                           ; $4931: $88
	adc  b                                           ; $4932: $88
	adc  b                                           ; $4933: $88
	adc  b                                           ; $4934: $88
	adc  b                                           ; $4935: $88
	adc  b                                           ; $4936: $88
	adc  b                                           ; $4937: $88
	adc  b                                           ; $4938: $88
	adc  b                                           ; $4939: $88
	adc  b                                           ; $493a: $88
	adc  b                                           ; $493b: $88
	adc  b                                           ; $493c: $88
	adc  b                                           ; $493d: $88
	adc  b                                           ; $493e: $88
	adc  b                                           ; $493f: $88
	adc  b                                           ; $4940: $88
	adc  b                                           ; $4941: $88
	adc  b                                           ; $4942: $88
	adc  b                                           ; $4943: $88
	adc  b                                           ; $4944: $88
	adc  b                                           ; $4945: $88
	adc  b                                           ; $4946: $88
	adc  b                                           ; $4947: $88
	adc  b                                           ; $4948: $88
	adc  b                                           ; $4949: $88
	adc  b                                           ; $494a: $88
	adc  b                                           ; $494b: $88
	adc  b                                           ; $494c: $88
	adc  b                                           ; $494d: $88
	adc  b                                           ; $494e: $88
	adc  b                                           ; $494f: $88
	adc  b                                           ; $4950: $88
	adc  b                                           ; $4951: $88
	adc  b                                           ; $4952: $88
	adc  b                                           ; $4953: $88
	adc  b                                           ; $4954: $88
	adc  b                                           ; $4955: $88
	adc  b                                           ; $4956: $88
	adc  b                                           ; $4957: $88
	adc  b                                           ; $4958: $88
	adc  b                                           ; $4959: $88
	adc  b                                           ; $495a: $88
	adc  b                                           ; $495b: $88
	adc  b                                           ; $495c: $88
	adc  b                                           ; $495d: $88
	adc  b                                           ; $495e: $88
	adc  b                                           ; $495f: $88
	adc  b                                           ; $4960: $88
	adc  b                                           ; $4961: $88
	adc  b                                           ; $4962: $88
	adc  b                                           ; $4963: $88
	adc  b                                           ; $4964: $88
	adc  b                                           ; $4965: $88
	adc  b                                           ; $4966: $88
	adc  b                                           ; $4967: $88
	adc  b                                           ; $4968: $88
	adc  b                                           ; $4969: $88
	adc  b                                           ; $496a: $88
	adc  b                                           ; $496b: $88
	adc  b                                           ; $496c: $88
	adc  b                                           ; $496d: $88
	adc  b                                           ; $496e: $88
	adc  b                                           ; $496f: $88
	adc  b                                           ; $4970: $88
	adc  b                                           ; $4971: $88
	adc  b                                           ; $4972: $88
	adc  b                                           ; $4973: $88
	adc  b                                           ; $4974: $88
	adc  b                                           ; $4975: $88
	adc  b                                           ; $4976: $88
	adc  b                                           ; $4977: $88
	adc  b                                           ; $4978: $88
	adc  b                                           ; $4979: $88
	adc  b                                           ; $497a: $88
	adc  b                                           ; $497b: $88
	adc  b                                           ; $497c: $88
	adc  b                                           ; $497d: $88
	adc  b                                           ; $497e: $88
	adc  b                                           ; $497f: $88
	adc  b                                           ; $4980: $88
	adc  b                                           ; $4981: $88
	adc  b                                           ; $4982: $88
	adc  b                                           ; $4983: $88
	adc  b                                           ; $4984: $88
	adc  b                                           ; $4985: $88
	adc  b                                           ; $4986: $88
	adc  b                                           ; $4987: $88
	adc  b                                           ; $4988: $88
	adc  b                                           ; $4989: $88
	adc  b                                           ; $498a: $88
	adc  b                                           ; $498b: $88
	adc  b                                           ; $498c: $88
	adc  b                                           ; $498d: $88
	adc  b                                           ; $498e: $88
	adc  b                                           ; $498f: $88
	adc  b                                           ; $4990: $88
	adc  b                                           ; $4991: $88
	adc  b                                           ; $4992: $88
	adc  b                                           ; $4993: $88
	adc  b                                           ; $4994: $88
	adc  b                                           ; $4995: $88
	adc  b                                           ; $4996: $88
	adc  b                                           ; $4997: $88
	adc  b                                           ; $4998: $88

Call_0d3_4999:
	adc  b                                           ; $4999: $88
	adc  b                                           ; $499a: $88
	adc  b                                           ; $499b: $88
	adc  b                                           ; $499c: $88
	adc  b                                           ; $499d: $88
	adc  b                                           ; $499e: $88
	adc  b                                           ; $499f: $88
	adc  b                                           ; $49a0: $88
	adc  b                                           ; $49a1: $88
	adc  b                                           ; $49a2: $88
	adc  b                                           ; $49a3: $88
	adc  b                                           ; $49a4: $88
	adc  b                                           ; $49a5: $88
	adc  b                                           ; $49a6: $88
	adc  b                                           ; $49a7: $88
	adc  b                                           ; $49a8: $88
	adc  b                                           ; $49a9: $88
	adc  b                                           ; $49aa: $88
	adc  b                                           ; $49ab: $88
	adc  b                                           ; $49ac: $88
	adc  b                                           ; $49ad: $88
	adc  b                                           ; $49ae: $88
	adc  b                                           ; $49af: $88
	adc  b                                           ; $49b0: $88
	adc  b                                           ; $49b1: $88
	adc  b                                           ; $49b2: $88
	adc  b                                           ; $49b3: $88
	adc  b                                           ; $49b4: $88
	adc  b                                           ; $49b5: $88
	adc  b                                           ; $49b6: $88
	adc  b                                           ; $49b7: $88
	adc  b                                           ; $49b8: $88
	adc  b                                           ; $49b9: $88
	adc  b                                           ; $49ba: $88
	adc  b                                           ; $49bb: $88
	adc  b                                           ; $49bc: $88
	adc  b                                           ; $49bd: $88
	adc  b                                           ; $49be: $88
	adc  b                                           ; $49bf: $88
	adc  b                                           ; $49c0: $88
	adc  b                                           ; $49c1: $88
	adc  b                                           ; $49c2: $88
	adc  b                                           ; $49c3: $88
	adc  b                                           ; $49c4: $88
	adc  b                                           ; $49c5: $88
	adc  b                                           ; $49c6: $88
	adc  b                                           ; $49c7: $88
	adc  b                                           ; $49c8: $88
	adc  b                                           ; $49c9: $88
	adc  b                                           ; $49ca: $88
	adc  b                                           ; $49cb: $88
	adc  b                                           ; $49cc: $88
	adc  b                                           ; $49cd: $88
	adc  b                                           ; $49ce: $88
	adc  b                                           ; $49cf: $88
	adc  b                                           ; $49d0: $88
	adc  b                                           ; $49d1: $88
	adc  b                                           ; $49d2: $88
	adc  b                                           ; $49d3: $88
	adc  b                                           ; $49d4: $88
	adc  b                                           ; $49d5: $88
	adc  b                                           ; $49d6: $88
	adc  b                                           ; $49d7: $88
	adc  b                                           ; $49d8: $88
	adc  b                                           ; $49d9: $88
	adc  b                                           ; $49da: $88
	adc  b                                           ; $49db: $88
	adc  b                                           ; $49dc: $88
	adc  b                                           ; $49dd: $88
	adc  b                                           ; $49de: $88
	adc  b                                           ; $49df: $88
	adc  b                                           ; $49e0: $88
	adc  b                                           ; $49e1: $88
	adc  b                                           ; $49e2: $88
	adc  b                                           ; $49e3: $88
	adc  b                                           ; $49e4: $88
	adc  b                                           ; $49e5: $88
	adc  b                                           ; $49e6: $88
	adc  b                                           ; $49e7: $88
	adc  b                                           ; $49e8: $88
	adc  b                                           ; $49e9: $88
	adc  b                                           ; $49ea: $88
	adc  b                                           ; $49eb: $88
	adc  b                                           ; $49ec: $88
	adc  b                                           ; $49ed: $88
	adc  b                                           ; $49ee: $88
	adc  b                                           ; $49ef: $88
	adc  b                                           ; $49f0: $88
	adc  b                                           ; $49f1: $88
	adc  b                                           ; $49f2: $88
	adc  b                                           ; $49f3: $88
	adc  b                                           ; $49f4: $88
	adc  b                                           ; $49f5: $88
	adc  b                                           ; $49f6: $88
	adc  b                                           ; $49f7: $88
	adc  b                                           ; $49f8: $88
	adc  b                                           ; $49f9: $88
	adc  b                                           ; $49fa: $88
	adc  b                                           ; $49fb: $88
	adc  b                                           ; $49fc: $88
	adc  b                                           ; $49fd: $88
	adc  b                                           ; $49fe: $88
	adc  b                                           ; $49ff: $88
	adc  b                                           ; $4a00: $88
	adc  b                                           ; $4a01: $88
	adc  b                                           ; $4a02: $88
	adc  b                                           ; $4a03: $88
	adc  b                                           ; $4a04: $88
	adc  b                                           ; $4a05: $88
	adc  b                                           ; $4a06: $88
	adc  b                                           ; $4a07: $88
	adc  b                                           ; $4a08: $88
	adc  b                                           ; $4a09: $88
	adc  b                                           ; $4a0a: $88
	adc  b                                           ; $4a0b: $88
	adc  b                                           ; $4a0c: $88
	adc  b                                           ; $4a0d: $88
	adc  b                                           ; $4a0e: $88
	adc  b                                           ; $4a0f: $88
	adc  b                                           ; $4a10: $88
	adc  b                                           ; $4a11: $88
	adc  b                                           ; $4a12: $88
	adc  b                                           ; $4a13: $88
	adc  b                                           ; $4a14: $88
	adc  b                                           ; $4a15: $88
	adc  b                                           ; $4a16: $88
	adc  b                                           ; $4a17: $88
	adc  b                                           ; $4a18: $88
	adc  b                                           ; $4a19: $88
	adc  b                                           ; $4a1a: $88
	adc  b                                           ; $4a1b: $88
	adc  b                                           ; $4a1c: $88
	adc  b                                           ; $4a1d: $88
	adc  b                                           ; $4a1e: $88
	adc  b                                           ; $4a1f: $88
	adc  b                                           ; $4a20: $88
	adc  b                                           ; $4a21: $88
	adc  b                                           ; $4a22: $88
	adc  b                                           ; $4a23: $88
	adc  b                                           ; $4a24: $88
	adc  b                                           ; $4a25: $88
	adc  b                                           ; $4a26: $88
	adc  b                                           ; $4a27: $88
	adc  b                                           ; $4a28: $88
	adc  b                                           ; $4a29: $88
	adc  b                                           ; $4a2a: $88
	adc  b                                           ; $4a2b: $88
	adc  b                                           ; $4a2c: $88
	adc  b                                           ; $4a2d: $88
	adc  b                                           ; $4a2e: $88
	adc  b                                           ; $4a2f: $88
	adc  b                                           ; $4a30: $88
	adc  b                                           ; $4a31: $88
	adc  b                                           ; $4a32: $88
	adc  b                                           ; $4a33: $88
	adc  b                                           ; $4a34: $88
	adc  b                                           ; $4a35: $88
	adc  b                                           ; $4a36: $88
	adc  b                                           ; $4a37: $88
	adc  b                                           ; $4a38: $88
	adc  b                                           ; $4a39: $88
	adc  b                                           ; $4a3a: $88
	adc  b                                           ; $4a3b: $88
	adc  b                                           ; $4a3c: $88
	adc  b                                           ; $4a3d: $88
	adc  b                                           ; $4a3e: $88
	adc  b                                           ; $4a3f: $88
	adc  b                                           ; $4a40: $88
	adc  b                                           ; $4a41: $88
	adc  b                                           ; $4a42: $88
	adc  b                                           ; $4a43: $88
	adc  b                                           ; $4a44: $88
	adc  b                                           ; $4a45: $88
	adc  b                                           ; $4a46: $88
	adc  b                                           ; $4a47: $88
	adc  b                                           ; $4a48: $88
	adc  b                                           ; $4a49: $88
	adc  b                                           ; $4a4a: $88
	adc  b                                           ; $4a4b: $88
	adc  b                                           ; $4a4c: $88
	adc  b                                           ; $4a4d: $88
	adc  b                                           ; $4a4e: $88
	adc  b                                           ; $4a4f: $88
	adc  b                                           ; $4a50: $88
	adc  b                                           ; $4a51: $88
	adc  b                                           ; $4a52: $88
	adc  b                                           ; $4a53: $88
	adc  b                                           ; $4a54: $88
	adc  b                                           ; $4a55: $88
	adc  b                                           ; $4a56: $88
	adc  b                                           ; $4a57: $88
	adc  b                                           ; $4a58: $88
	adc  b                                           ; $4a59: $88
	adc  b                                           ; $4a5a: $88
	adc  b                                           ; $4a5b: $88
	adc  b                                           ; $4a5c: $88
	adc  b                                           ; $4a5d: $88
	adc  b                                           ; $4a5e: $88
	adc  b                                           ; $4a5f: $88
	adc  b                                           ; $4a60: $88
	adc  b                                           ; $4a61: $88
	adc  b                                           ; $4a62: $88
	adc  b                                           ; $4a63: $88
	adc  b                                           ; $4a64: $88
	adc  b                                           ; $4a65: $88
	adc  b                                           ; $4a66: $88
	adc  b                                           ; $4a67: $88
	adc  b                                           ; $4a68: $88
	adc  b                                           ; $4a69: $88
	adc  b                                           ; $4a6a: $88
	adc  b                                           ; $4a6b: $88
	adc  b                                           ; $4a6c: $88
	adc  b                                           ; $4a6d: $88
	adc  b                                           ; $4a6e: $88
	adc  b                                           ; $4a6f: $88
	adc  b                                           ; $4a70: $88
	adc  b                                           ; $4a71: $88
	adc  b                                           ; $4a72: $88
	adc  b                                           ; $4a73: $88
	adc  b                                           ; $4a74: $88
	adc  b                                           ; $4a75: $88
	adc  b                                           ; $4a76: $88
	adc  b                                           ; $4a77: $88
	adc  b                                           ; $4a78: $88
	adc  b                                           ; $4a79: $88
	adc  b                                           ; $4a7a: $88
	adc  b                                           ; $4a7b: $88
	adc  b                                           ; $4a7c: $88
	adc  b                                           ; $4a7d: $88
	adc  b                                           ; $4a7e: $88
	adc  b                                           ; $4a7f: $88
	adc  b                                           ; $4a80: $88
	adc  b                                           ; $4a81: $88
	adc  b                                           ; $4a82: $88
	adc  b                                           ; $4a83: $88
	adc  b                                           ; $4a84: $88
	adc  b                                           ; $4a85: $88
	adc  b                                           ; $4a86: $88
	adc  b                                           ; $4a87: $88
	adc  b                                           ; $4a88: $88
	adc  b                                           ; $4a89: $88
	adc  b                                           ; $4a8a: $88
	adc  b                                           ; $4a8b: $88
	adc  b                                           ; $4a8c: $88
	adc  b                                           ; $4a8d: $88
	adc  b                                           ; $4a8e: $88
	adc  b                                           ; $4a8f: $88
	adc  b                                           ; $4a90: $88
	adc  b                                           ; $4a91: $88
	adc  b                                           ; $4a92: $88
	adc  b                                           ; $4a93: $88
	adc  b                                           ; $4a94: $88
	adc  b                                           ; $4a95: $88
	adc  b                                           ; $4a96: $88
	adc  b                                           ; $4a97: $88
	adc  b                                           ; $4a98: $88
	adc  b                                           ; $4a99: $88
	adc  b                                           ; $4a9a: $88
	adc  b                                           ; $4a9b: $88
	adc  b                                           ; $4a9c: $88
	adc  b                                           ; $4a9d: $88
	adc  b                                           ; $4a9e: $88
	adc  b                                           ; $4a9f: $88
	adc  b                                           ; $4aa0: $88
	adc  b                                           ; $4aa1: $88
	adc  b                                           ; $4aa2: $88
	adc  b                                           ; $4aa3: $88
	adc  b                                           ; $4aa4: $88
	adc  b                                           ; $4aa5: $88
	adc  b                                           ; $4aa6: $88
	adc  b                                           ; $4aa7: $88
	adc  b                                           ; $4aa8: $88
	adc  b                                           ; $4aa9: $88
	adc  b                                           ; $4aaa: $88
	adc  b                                           ; $4aab: $88
	adc  b                                           ; $4aac: $88
	adc  b                                           ; $4aad: $88
	adc  b                                           ; $4aae: $88
	adc  b                                           ; $4aaf: $88
	adc  b                                           ; $4ab0: $88
	adc  b                                           ; $4ab1: $88
	adc  b                                           ; $4ab2: $88
	adc  b                                           ; $4ab3: $88
	adc  b                                           ; $4ab4: $88
	adc  b                                           ; $4ab5: $88
	adc  b                                           ; $4ab6: $88
	adc  b                                           ; $4ab7: $88
	adc  b                                           ; $4ab8: $88
	adc  b                                           ; $4ab9: $88
	adc  b                                           ; $4aba: $88
	adc  b                                           ; $4abb: $88
	adc  b                                           ; $4abc: $88
	adc  b                                           ; $4abd: $88
	adc  b                                           ; $4abe: $88
	adc  b                                           ; $4abf: $88
	adc  b                                           ; $4ac0: $88
	adc  b                                           ; $4ac1: $88
	adc  b                                           ; $4ac2: $88
	adc  b                                           ; $4ac3: $88
	adc  b                                           ; $4ac4: $88
	adc  b                                           ; $4ac5: $88
	adc  b                                           ; $4ac6: $88
	adc  b                                           ; $4ac7: $88
	adc  b                                           ; $4ac8: $88
	adc  b                                           ; $4ac9: $88
	adc  b                                           ; $4aca: $88
	adc  b                                           ; $4acb: $88
	adc  b                                           ; $4acc: $88
	adc  b                                           ; $4acd: $88
	adc  b                                           ; $4ace: $88
	adc  b                                           ; $4acf: $88
	adc  b                                           ; $4ad0: $88
	adc  b                                           ; $4ad1: $88
	adc  b                                           ; $4ad2: $88
	adc  b                                           ; $4ad3: $88
	adc  b                                           ; $4ad4: $88
	adc  b                                           ; $4ad5: $88
	adc  b                                           ; $4ad6: $88
	adc  b                                           ; $4ad7: $88
	adc  b                                           ; $4ad8: $88
	adc  b                                           ; $4ad9: $88
	adc  b                                           ; $4ada: $88
	adc  b                                           ; $4adb: $88
	adc  b                                           ; $4adc: $88
	adc  b                                           ; $4add: $88
	adc  b                                           ; $4ade: $88
	adc  b                                           ; $4adf: $88
	adc  b                                           ; $4ae0: $88
	adc  b                                           ; $4ae1: $88
	adc  b                                           ; $4ae2: $88
	adc  b                                           ; $4ae3: $88
	adc  b                                           ; $4ae4: $88
	adc  b                                           ; $4ae5: $88
	adc  b                                           ; $4ae6: $88
	adc  b                                           ; $4ae7: $88
	adc  b                                           ; $4ae8: $88
	adc  b                                           ; $4ae9: $88
	adc  b                                           ; $4aea: $88
	adc  b                                           ; $4aeb: $88
	adc  b                                           ; $4aec: $88
	adc  b                                           ; $4aed: $88
	adc  b                                           ; $4aee: $88
	adc  b                                           ; $4aef: $88
	adc  b                                           ; $4af0: $88
	adc  b                                           ; $4af1: $88
	adc  b                                           ; $4af2: $88
	adc  b                                           ; $4af3: $88
	adc  b                                           ; $4af4: $88
	adc  b                                           ; $4af5: $88
	adc  b                                           ; $4af6: $88
	adc  b                                           ; $4af7: $88
	adc  b                                           ; $4af8: $88
	adc  b                                           ; $4af9: $88
	adc  b                                           ; $4afa: $88
	adc  b                                           ; $4afb: $88
	adc  b                                           ; $4afc: $88
	adc  b                                           ; $4afd: $88
	adc  b                                           ; $4afe: $88
	adc  b                                           ; $4aff: $88
	adc  b                                           ; $4b00: $88
	adc  b                                           ; $4b01: $88
	adc  b                                           ; $4b02: $88
	adc  b                                           ; $4b03: $88
	adc  b                                           ; $4b04: $88
	adc  b                                           ; $4b05: $88
	adc  b                                           ; $4b06: $88
	adc  b                                           ; $4b07: $88
	adc  b                                           ; $4b08: $88
	adc  b                                           ; $4b09: $88
	adc  b                                           ; $4b0a: $88
	adc  b                                           ; $4b0b: $88
	adc  b                                           ; $4b0c: $88
	adc  b                                           ; $4b0d: $88
	adc  b                                           ; $4b0e: $88
	adc  b                                           ; $4b0f: $88
	adc  b                                           ; $4b10: $88
	adc  b                                           ; $4b11: $88
	adc  b                                           ; $4b12: $88
	adc  b                                           ; $4b13: $88
	adc  b                                           ; $4b14: $88
	adc  b                                           ; $4b15: $88
	adc  b                                           ; $4b16: $88
	adc  b                                           ; $4b17: $88
	adc  b                                           ; $4b18: $88
	adc  b                                           ; $4b19: $88
	adc  b                                           ; $4b1a: $88
	adc  b                                           ; $4b1b: $88
	adc  b                                           ; $4b1c: $88
	adc  b                                           ; $4b1d: $88
	adc  b                                           ; $4b1e: $88
	adc  b                                           ; $4b1f: $88
	adc  b                                           ; $4b20: $88
	adc  b                                           ; $4b21: $88
	adc  b                                           ; $4b22: $88
	adc  b                                           ; $4b23: $88
	adc  b                                           ; $4b24: $88
	adc  b                                           ; $4b25: $88
	adc  b                                           ; $4b26: $88
	adc  b                                           ; $4b27: $88
	adc  b                                           ; $4b28: $88
	adc  b                                           ; $4b29: $88
	adc  b                                           ; $4b2a: $88
	adc  b                                           ; $4b2b: $88
	adc  b                                           ; $4b2c: $88
	adc  b                                           ; $4b2d: $88
	adc  b                                           ; $4b2e: $88
	adc  b                                           ; $4b2f: $88
	adc  b                                           ; $4b30: $88
	adc  b                                           ; $4b31: $88
	adc  b                                           ; $4b32: $88
	adc  b                                           ; $4b33: $88
	adc  b                                           ; $4b34: $88
	adc  b                                           ; $4b35: $88
	adc  b                                           ; $4b36: $88
	adc  b                                           ; $4b37: $88
	adc  b                                           ; $4b38: $88
	adc  b                                           ; $4b39: $88
	adc  b                                           ; $4b3a: $88
	adc  b                                           ; $4b3b: $88
	adc  b                                           ; $4b3c: $88
	adc  b                                           ; $4b3d: $88
	adc  b                                           ; $4b3e: $88
	adc  b                                           ; $4b3f: $88
	adc  b                                           ; $4b40: $88
	adc  b                                           ; $4b41: $88
	adc  b                                           ; $4b42: $88
	adc  b                                           ; $4b43: $88
	adc  b                                           ; $4b44: $88
	adc  b                                           ; $4b45: $88
	adc  b                                           ; $4b46: $88
	adc  b                                           ; $4b47: $88
	adc  b                                           ; $4b48: $88
	adc  b                                           ; $4b49: $88
	adc  b                                           ; $4b4a: $88
	adc  b                                           ; $4b4b: $88
	adc  b                                           ; $4b4c: $88
	adc  b                                           ; $4b4d: $88
	adc  b                                           ; $4b4e: $88
	adc  b                                           ; $4b4f: $88
	adc  b                                           ; $4b50: $88
	adc  b                                           ; $4b51: $88
	adc  b                                           ; $4b52: $88
	adc  b                                           ; $4b53: $88
	adc  b                                           ; $4b54: $88
	adc  b                                           ; $4b55: $88
	adc  b                                           ; $4b56: $88
	adc  b                                           ; $4b57: $88
	adc  b                                           ; $4b58: $88
	adc  b                                           ; $4b59: $88
	adc  b                                           ; $4b5a: $88
	adc  b                                           ; $4b5b: $88
	adc  b                                           ; $4b5c: $88
	adc  b                                           ; $4b5d: $88
	adc  b                                           ; $4b5e: $88
	adc  b                                           ; $4b5f: $88
	adc  b                                           ; $4b60: $88
	adc  b                                           ; $4b61: $88
	adc  b                                           ; $4b62: $88
	adc  b                                           ; $4b63: $88
	adc  b                                           ; $4b64: $88
	adc  b                                           ; $4b65: $88
	adc  b                                           ; $4b66: $88
	adc  b                                           ; $4b67: $88
	adc  b                                           ; $4b68: $88
	adc  b                                           ; $4b69: $88
	adc  b                                           ; $4b6a: $88
	adc  b                                           ; $4b6b: $88
	adc  b                                           ; $4b6c: $88
	adc  b                                           ; $4b6d: $88
	adc  b                                           ; $4b6e: $88
	adc  b                                           ; $4b6f: $88
	adc  b                                           ; $4b70: $88
	adc  b                                           ; $4b71: $88
	adc  b                                           ; $4b72: $88
	adc  b                                           ; $4b73: $88
	adc  b                                           ; $4b74: $88
	adc  b                                           ; $4b75: $88
	adc  b                                           ; $4b76: $88
	adc  b                                           ; $4b77: $88
	adc  b                                           ; $4b78: $88
	adc  b                                           ; $4b79: $88

Call_0d3_4b7a:
	adc  b                                           ; $4b7a: $88
	adc  b                                           ; $4b7b: $88
	adc  b                                           ; $4b7c: $88
	adc  b                                           ; $4b7d: $88
	adc  b                                           ; $4b7e: $88
	adc  b                                           ; $4b7f: $88
	adc  b                                           ; $4b80: $88
	adc  b                                           ; $4b81: $88
	adc  b                                           ; $4b82: $88
	adc  b                                           ; $4b83: $88
	adc  b                                           ; $4b84: $88
	adc  b                                           ; $4b85: $88
	adc  b                                           ; $4b86: $88
	adc  b                                           ; $4b87: $88
	adc  b                                           ; $4b88: $88
	adc  b                                           ; $4b89: $88
	adc  b                                           ; $4b8a: $88
	adc  b                                           ; $4b8b: $88
	adc  b                                           ; $4b8c: $88
	adc  b                                           ; $4b8d: $88
	adc  b                                           ; $4b8e: $88
	adc  b                                           ; $4b8f: $88
	adc  b                                           ; $4b90: $88
	adc  b                                           ; $4b91: $88
	adc  b                                           ; $4b92: $88
	adc  b                                           ; $4b93: $88
	adc  b                                           ; $4b94: $88
	adc  b                                           ; $4b95: $88
	adc  b                                           ; $4b96: $88
	adc  b                                           ; $4b97: $88
	adc  b                                           ; $4b98: $88
	adc  b                                           ; $4b99: $88
	adc  b                                           ; $4b9a: $88
	adc  b                                           ; $4b9b: $88
	adc  b                                           ; $4b9c: $88
	adc  c                                           ; $4b9d: $89
	sbc  b                                           ; $4b9e: $98
	sbc  b                                           ; $4b9f: $98
	adc  b                                           ; $4ba0: $88
	adc  b                                           ; $4ba1: $88
	adc  b                                           ; $4ba2: $88
	adc  b                                           ; $4ba3: $88
	add  a                                           ; $4ba4: $87
	ld   [hl], a                                     ; $4ba5: $77
	ld   [hl], a                                     ; $4ba6: $77
	adc  b                                           ; $4ba7: $88
	adc  b                                           ; $4ba8: $88
	adc  b                                           ; $4ba9: $88
	sbc  c                                           ; $4baa: $99
	sbc  b                                           ; $4bab: $98
	sbc  c                                           ; $4bac: $99
	adc  b                                           ; $4bad: $88
	adc  b                                           ; $4bae: $88
	adc  b                                           ; $4baf: $88
	add  a                                           ; $4bb0: $87
	ld   [hl], a                                     ; $4bb1: $77
	ld   [hl], a                                     ; $4bb2: $77
	ld   [hl], a                                     ; $4bb3: $77
	ld   a, b                                        ; $4bb4: $78
	adc  b                                           ; $4bb5: $88
	sbc  c                                           ; $4bb6: $99
	sbc  c                                           ; $4bb7: $99
	adc  b                                           ; $4bb8: $88
	adc  c                                           ; $4bb9: $89
	sbc  c                                           ; $4bba: $99
	adc  b                                           ; $4bbb: $88
	ld   [hl], a                                     ; $4bbc: $77
	ld   [hl], a                                     ; $4bbd: $77
	ld   [hl], a                                     ; $4bbe: $77
	ld   [hl], a                                     ; $4bbf: $77
	ld   [hl], a                                     ; $4bc0: $77
	ld   a, b                                        ; $4bc1: $78
	adc  c                                           ; $4bc2: $89
	adc  c                                           ; $4bc3: $89
	sbc  c                                           ; $4bc4: $99
	sbc  c                                           ; $4bc5: $99
	sbc  c                                           ; $4bc6: $99
	adc  b                                           ; $4bc7: $88
	add  a                                           ; $4bc8: $87
	ld   [hl], a                                     ; $4bc9: $77
	ld   h, [hl]                                     ; $4bca: $66
	ld   h, [hl]                                     ; $4bcb: $66
	ld   h, [hl]                                     ; $4bcc: $66
	ld   [hl], a                                     ; $4bcd: $77
	adc  c                                           ; $4bce: $89
	sbc  d                                           ; $4bcf: $9a
	xor  e                                           ; $4bd0: $ab
	cp   e                                           ; $4bd1: $bb
	cp   d                                           ; $4bd2: $ba
	sbc  c                                           ; $4bd3: $99
	adc  b                                           ; $4bd4: $88
	ld   h, [hl]                                     ; $4bd5: $66
	ld   d, h                                        ; $4bd6: $54
	inc  [hl]                                        ; $4bd7: $34
	ld   b, l                                        ; $4bd8: $45
	ld   h, [hl]                                     ; $4bd9: $66
	ld   h, a                                        ; $4bda: $67
	sbc  e                                           ; $4bdb: $9b
	call $dcde                                       ; $4bdc: $cd $de $dc
	jp   z, Jump_0d3_6597                            ; $4bdf: $ca $97 $65

	ld   b, e                                        ; $4be2: $43
	ld   hl, $2511                                   ; $4be3: $21 $11 $25
	ld   a, d                                        ; $4be6: $7a
	cp   h                                           ; $4be7: $bc
	rst  JumpTable                                         ; $4be8: $df
	rst  $38                                         ; $4be9: $ff
	cp   $cb                                         ; $4bea: $fe $cb
	xor  d                                           ; $4bec: $aa
	add  l                                           ; $4bed: $85
	ld   sp, $1111                                   ; $4bee: $31 $11 $11
	inc  [hl]                                        ; $4bf1: $34
	ld   l, b                                        ; $4bf2: $68
	xor  h                                           ; $4bf3: $ac
	rst  $28                                         ; $4bf4: $ef
	rst  $38                                         ; $4bf5: $ff
	db   $ed                                         ; $4bf6: $ed
	db   $db                                         ; $4bf7: $db
	xor  d                                           ; $4bf8: $aa
	ld   [hl], l                                     ; $4bf9: $75
	ld   hl, $1111                                   ; $4bfa: $21 $11 $11
	inc  h                                           ; $4bfd: $24
	ld   l, c                                        ; $4bfe: $69
	cp   l                                           ; $4bff: $bd
	rst  $28                                         ; $4c00: $ef
	rst  $38                                         ; $4c01: $ff
	cp   $dc                                         ; $4c02: $fe $dc
	xor  d                                           ; $4c04: $aa
	ld   h, h                                        ; $4c05: $64
	ld   de, $1111                                   ; $4c06: $11 $11 $11
	dec  [hl]                                        ; $4c09: $35
	adc  d                                           ; $4c0a: $8a
	cp   [hl]                                        ; $4c0b: $be
	rst  $38                                         ; $4c0c: $ff
	rst  $38                                         ; $4c0d: $ff
	cp   $cc                                         ; $4c0e: $fe $cc
	cp   b                                           ; $4c10: $b8
	ld   d, d                                        ; $4c11: $52
	ld   de, $1211                                   ; $4c12: $11 $11 $12
	ld   b, a                                        ; $4c15: $47
	xor  d                                           ; $4c16: $aa
	rst  $28                                         ; $4c17: $ef
	rst  $38                                         ; $4c18: $ff
	rst  $38                                         ; $4c19: $ff
	db   $ed                                         ; $4c1a: $ed
	cp   e                                           ; $4c1b: $bb
	sub  [hl]                                        ; $4c1c: $96
	ld   hl, $1111                                   ; $4c1d: $21 $11 $11
	inc  de                                          ; $4c20: $13
	ld   l, c                                        ; $4c21: $69
	xor  l                                           ; $4c22: $ad
	rst  $38                                         ; $4c23: $ff
	rst  $38                                         ; $4c24: $ff
	rst  $38                                         ; $4c25: $ff
	call Call_0d3_62ca                               ; $4c26: $cd $ca $62
	ld   de, $1111                                   ; $4c29: $11 $11 $11
	ld   [hl], $9b                                   ; $4c2c: $36 $9b
	rst  JumpTable                                         ; $4c2e: $df
	rst  $38                                         ; $4c2f: $ff
	rst  $38                                         ; $4c30: $ff
	db   $ec                                         ; $4c31: $ec
	call z, $11a6                                    ; $4c32: $cc $a6 $11
	ld   de, $1311                                   ; $4c35: $11 $11 $13
	ld   l, c                                        ; $4c38: $69
	xor  l                                           ; $4c39: $ad
	rst  $38                                         ; $4c3a: $ff
	rst  $38                                         ; $4c3b: $ff
	cp   $ed                                         ; $4c3c: $fe $ed
	jp   c, $1151                                    ; $4c3e: $da $51 $11

	ld   de, $4612                                   ; $4c41: $11 $12 $46
	adc  d                                           ; $4c44: $8a
	rst  JumpTable                                         ; $4c45: $df
	rst  $38                                         ; $4c46: $ff
	rst  $38                                         ; $4c47: $ff
	sbc  $ec                                         ; $4c48: $de $ec
	sub  h                                           ; $4c4a: $94
	ld   de, $1111                                   ; $4c4b: $11 $11 $11
	dec  [hl]                                        ; $4c4e: $35
	ld   a, c                                        ; $4c4f: $79
	cp   [hl]                                        ; $4c50: $be
	rst  $38                                         ; $4c51: $ff
	rst  $38                                         ; $4c52: $ff
	db   $fd                                         ; $4c53: $fd
	xor  $c7                                         ; $4c54: $ee $c7
	ld   de, $1111                                   ; $4c56: $11 $11 $11
	inc  h                                           ; $4c59: $24
	ld   h, a                                        ; $4c5a: $67
	sbc  h                                           ; $4c5b: $9c
	rst  $38                                         ; $4c5c: $ff
	rst  $38                                         ; $4c5d: $ff
	xor  $ef                                         ; $4c5e: $ee $ef
	ld   [$1141], a                                  ; $4c60: $ea $41 $11
	ld   de, $5713                                   ; $4c63: $11 $13 $57
	adc  e                                           ; $4c66: $8b
	rst  $28                                         ; $4c67: $ef
	rst  $38                                         ; $4c68: $ff
	cp   $ef                                         ; $4c69: $fe $ef
	db   $fc                                         ; $4c6b: $fc
	ld   d, c                                        ; $4c6c: $51
	ld   de, $1311                                   ; $4c6d: $11 $11 $13
	ld   b, [hl]                                     ; $4c70: $46
	ld   a, d                                        ; $4c71: $7a
	rst  JumpTable                                         ; $4c72: $df
	rst  $38                                         ; $4c73: $ff
	cp   $ef                                         ; $4c74: $fe $ef
	db   $fc                                         ; $4c76: $fc
	ld   [hl], c                                     ; $4c77: $71
	ld   de, $1311                                   ; $4c78: $11 $11 $13
	ld   d, [hl]                                     ; $4c7b: $56
	ld   l, b                                        ; $4c7c: $68
	rst  JumpTable                                         ; $4c7d: $df
	rst  $38                                         ; $4c7e: $ff
	db   $fd                                         ; $4c7f: $fd
	rst  JumpTable                                         ; $4c80: $df
	db   $fd                                         ; $4c81: $fd
	ld   [hl], c                                     ; $4c82: $71
	ld   de, $1411                                   ; $4c83: $11 $11 $14
	ld   d, l                                        ; $4c86: $55
	ld   l, b                                        ; $4c87: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c88: $cf
	rst  $38                                         ; $4c89: $ff
	db   $ec                                         ; $4c8a: $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c8b: $cf
	cp   $81                                         ; $4c8c: $fe $81
	ld   de, $1411                                   ; $4c8e: $11 $11 $14
	ld   d, [hl]                                     ; $4c91: $56
	ld   h, a                                        ; $4c92: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c93: $cf
	rst  $38                                         ; $4c94: $ff
	db   $db                                         ; $4c95: $db
	rst  JumpTable                                         ; $4c96: $df
	cp   $81                                         ; $4c97: $fe $81
	ld   de, $2511                                   ; $4c99: $11 $11 $25
	ld   d, [hl]                                     ; $4c9c: $56
	ld   e, b                                        ; $4c9d: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c9e: $cf
	rst  $38                                         ; $4c9f: $ff
	db   $ec                                         ; $4ca0: $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ca1: $cf
	db   $fd                                         ; $4ca2: $fd
	ld   [hl], c                                     ; $4ca3: $71
	ld   de, $3511                                   ; $4ca4: $11 $11 $35
	ld   h, l                                        ; $4ca7: $65
	ld   e, c                                        ; $4ca8: $59
	rst  JumpTable                                         ; $4ca9: $df
	rst  $38                                         ; $4caa: $ff
	set  1, a                                        ; $4cab: $cb $cf
	db   $fc                                         ; $4cad: $fc
	ld   h, c                                        ; $4cae: $61
	ld   de, $3511                                   ; $4caf: $11 $11 $35
	ld   d, l                                        ; $4cb2: $55
	ld   l, c                                        ; $4cb3: $69
	rst  $28                                         ; $4cb4: $ef
	rst  $38                                         ; $4cb5: $ff
	db   $db                                         ; $4cb6: $db
	rst  $28                                         ; $4cb7: $ef
	db   $fc                                         ; $4cb8: $fc
	ld   d, c                                        ; $4cb9: $51
	ld   de, $4611                                   ; $4cba: $11 $11 $46
	ld   h, l                                        ; $4cbd: $65
	ld   l, d                                        ; $4cbe: $6a
	rst  $38                                         ; $4cbf: $ff
	rst  $38                                         ; $4cc0: $ff
	set  5, a                                        ; $4cc1: $cb $ef
	ei                                               ; $4cc3: $fb
	ld   sp, $1211                                   ; $4cc4: $31 $11 $12
	ld   d, l                                        ; $4cc7: $55
	ld   d, l                                        ; $4cc8: $55
	ld   l, h                                        ; $4cc9: $6c
	rst  $38                                         ; $4cca: $ff
	cp   $bb                                         ; $4ccb: $fe $bb
	rst  $38                                         ; $4ccd: $ff
	ld   hl, sp+$11                                  ; $4cce: $f8 $11
	ld   de, $5513                                   ; $4cd0: $11 $13 $55
	ld   h, l                                        ; $4cd3: $65
	adc  l                                           ; $4cd4: $8d
	rst  $38                                         ; $4cd5: $ff
	db   $fc                                         ; $4cd6: $fc
	cp   h                                           ; $4cd7: $bc
	rst  $38                                         ; $4cd8: $ff
	and  $11                                         ; $4cd9: $e6 $11
	ld   de, $5504                                   ; $4cdb: $11 $04 $55
	ld   d, l                                        ; $4cde: $55
	sbc  [hl]                                        ; $4cdf: $9e
	rst  $38                                         ; $4ce0: $ff
	db   $fc                                         ; $4ce1: $fc
	cp   [hl]                                        ; $4ce2: $be
	rst  $38                                         ; $4ce3: $ff
	push bc                                          ; $4ce4: $c5
	ld   de, $2711                                   ; $4ce5: $11 $11 $27
	cp   h                                           ; $4ce8: $bc
	sbc  $ff                                         ; $4ce9: $de $ff
	ld   sp, hl                                      ; $4ceb: $f9
	ld   de, $1611                                   ; $4cec: $11 $11 $16
	ld   h, e                                        ; $4cef: $63
	ld   b, l                                        ; $4cf0: $45
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cf1: $cf
	rst  $38                                         ; $4cf2: $ff
	rst  $38                                         ; $4cf3: $ff
	rst  $38                                         ; $4cf4: $ff
	add  sp, $11                                     ; $4cf5: $e8 $11
	ld   de, $9f11                                   ; $4cf7: $11 $11 $9f
	rst  $38                                         ; $4cfa: $ff
	rst  $38                                         ; $4cfb: $ff
	rst  $38                                         ; $4cfc: $ff
	rst  $38                                         ; $4cfd: $ff
	rst  $38                                         ; $4cfe: $ff
	rst  $38                                         ; $4cff: $ff
	ld   h, c                                        ; $4d00: $61
	ld   de, $1f11                                   ; $4d01: $11 $11 $1f
	rst  $38                                         ; $4d04: $ff
	rst  $38                                         ; $4d05: $ff
	cp   e                                           ; $4d06: $bb
	rst  $28                                         ; $4d07: $ef
	rst  $38                                         ; $4d08: $ff
	rst  $38                                         ; $4d09: $ff
	push af                                          ; $4d0a: $f5
	ld   de, $1111                                   ; $4d0b: $11 $11 $11
	rst  $38                                         ; $4d0e: $ff
	rst  $38                                         ; $4d0f: $ff
	or   $7c                                         ; $4d10: $f6 $7c
	rst  $38                                         ; $4d12: $ff
	rst  $38                                         ; $4d13: $ff
	ei                                               ; $4d14: $fb
	ld   b, c                                        ; $4d15: $41
	ld   de, $1f11                                   ; $4d16: $11 $11 $1f
	rst  $38                                         ; $4d19: $ff
	cp   $32                                         ; $4d1a: $fe $32
	sbc  a                                           ; $4d1c: $9f
	rst  $38                                         ; $4d1d: $ff
	ld   a, [$1181]                                  ; $4d1e: $fa $81 $11
	ld   de, rAUD1LEN                                   ; $4d21: $11 $11 $ff
	rst  $38                                         ; $4d24: $ff
	db   $f4                                         ; $4d25: $f4
	dec  d                                           ; $4d26: $15
	rst  $38                                         ; $4d27: $ff
	rst  $38                                         ; $4d28: $ff
	ret  z                                           ; $4d29: $c8

	ld   de, $1111                                   ; $4d2a: $11 $11 $11
	add  hl, de                                      ; $4d2d: $19
	rst  $38                                         ; $4d2e: $ff
	rst  $38                                         ; $4d2f: $ff
	ld   h, c                                        ; $4d30: $61
	cpl                                              ; $4d31: $2f
	rst  $38                                         ; $4d32: $ff
	db   $fc                                         ; $4d33: $fc
	ld   h, e                                        ; $4d34: $63
	ld   de, $1111                                   ; $4d35: $11 $11 $11
	rra                                              ; $4d38: $1f
	rst  $38                                         ; $4d39: $ff
	ld   a, [$df11]                                  ; $4d3a: $fa $11 $df
	rst  $38                                         ; $4d3d: $ff
	ld   hl, sp+$41                                  ; $4d3e: $f8 $41
	ld   de, $1111                                   ; $4d40: $11 $11 $11
	rst  $38                                         ; $4d43: $ff
	rst  $38                                         ; $4d44: $ff
	or   c                                           ; $4d45: $b1
	ld   d, $ff                                      ; $4d46: $16 $ff
	rst  $38                                         ; $4d48: $ff
	ld   b, c                                        ; $4d49: $41
	ld   de, $1131                                   ; $4d4a: $11 $31 $11
	jr   @+$01                                       ; $4d4d: $18 $ff

	cp   $11                                         ; $4d4f: $fe $11
	rra                                              ; $4d51: $1f
	rst  $38                                         ; $4d52: $ff
	di                                               ; $4d53: $f3
	ld   de, $1129                                   ; $4d54: $11 $29 $11
	ld   de, $ff1f                                   ; $4d57: $11 $1f $ff
	push af                                          ; $4d5a: $f5
	ld   de, $ffff                                   ; $4d5b: $11 $ff $ff
	pop  bc                                          ; $4d5e: $c1
	ld   de, $1162                                   ; $4d5f: $11 $62 $11
	ld   de, $ff7f                                   ; $4d62: $11 $7f $ff
	pop  hl                                          ; $4d65: $e1
	ld   [de], a                                     ; $4d66: $12
	rst  $38                                         ; $4d67: $ff
	rst  $38                                         ; $4d68: $ff
	ld   sp, $8113                                   ; $4d69: $31 $13 $81
	ld   de, rAUD1LEN                                   ; $4d6c: $11 $11 $ff
	rst  $38                                         ; $4d6f: $ff
	ld   de, $ff1f                                   ; $4d70: $11 $1f $ff
	db   $fc                                         ; $4d73: $fc

jr_0d3_4d74:
	ld   de, $3148                                   ; $4d74: $11 $48 $31
	ld   de, $ff1d                                   ; $4d77: $11 $1d $ff
	or   $11                                         ; $4d7a: $f6 $11
	ld   a, a                                        ; $4d7c: $7f
	rst  $38                                         ; $4d7d: $ff
	pop  hl                                          ; $4d7e: $e1
	dec  d                                           ; $4d7f: $15
	adc  h                                           ; $4d80: $8c
	ld   de, $1f11                                   ; $4d81: $11 $11 $1f
	rst  $38                                         ; $4d84: $ff
	pop  af                                          ; $4d85: $f1
	ld   de, $ffff                                   ; $4d86: $11 $ff $ff
	ld   d, c                                        ; $4d89: $51
	jr   c, jr_0d3_4d74                              ; $4d8a: $38 $e8

	ld   de, $6f11                                   ; $4d8c: $11 $11 $6f
	rst  $38                                         ; $4d8f: $ff
	and  c                                           ; $4d90: $a1
	add  hl, de                                      ; $4d91: $19
	rst  $38                                         ; $4d92: $ff
	db   $f4                                         ; $4d93: $f4
	inc  [hl]                                        ; $4d94: $34
	rst  $38                                         ; $4d95: $ff
	pop  de                                          ; $4d96: $d1
	ld   de, $df11                                   ; $4d97: $11 $11 $df
	rst  $38                                         ; $4d9a: $ff
	ld   d, c                                        ; $4d9b: $51
	inc  e                                           ; $4d9c: $1c
	rst  $38                                         ; $4d9d: $ff
	push af                                          ; $4d9e: $f5
	ld   e, l                                        ; $4d9f: $5d
	rst  $38                                         ; $4da0: $ff
	and  c                                           ; $4da1: $a1
	ld   de, rAUD1LEN                                   ; $4da2: $11 $11 $ff
	rst  $38                                         ; $4da5: $ff
	ld   hl, $ff1f                                   ; $4da6: $21 $1f $ff
	and  h                                           ; $4da9: $a4
	ld   l, $ff                                      ; $4daa: $2e $ff
	sub  c                                           ; $4dac: $91
	ld   de, rAUD1LEN                                   ; $4dad: $11 $11 $ff
	rst  $38                                         ; $4db0: $ff
	ld   de, $ff1f                                   ; $4db1: $11 $1f $ff
	ld   d, d                                        ; $4db4: $52
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4db5: $cf
	rst  $38                                         ; $4db6: $ff
	ld   de, $1111                                   ; $4db7: $11 $11 $11
	rst  $38                                         ; $4dba: $ff
	rst  $38                                         ; $4dbb: $ff
	ld   de, $ff4f                                   ; $4dbc: $11 $4f $ff
	inc  d                                           ; $4dbf: $14
	rst  $38                                         ; $4dc0: $ff
	ld   a, [$1111]                                  ; $4dc1: $fa $11 $11
	ld   de, $ffff                                   ; $4dc4: $11 $ff $ff
	ld   de, $fc7f                                   ; $4dc7: $11 $7f $fc
	ld   d, $ff                                      ; $4dca: $16 $ff
	push af                                          ; $4dcc: $f5
	ld   de, $1111                                   ; $4dcd: $11 $11 $11
	rst  $38                                         ; $4dd0: $ff
	rst  $38                                         ; $4dd1: $ff
	ld   de, $f84f                                   ; $4dd2: $11 $4f $f8
	rla                                              ; $4dd5: $17
	rst  $38                                         ; $4dd6: $ff
	or   $11                                         ; $4dd7: $f6 $11
	ld   de, rAUD1LEN                                   ; $4dd9: $11 $11 $ff
	ei                                               ; $4ddc: $fb
	ld   de, $f18f                                   ; $4ddd: $11 $8f $f1
	ld   d, $ff                                      ; $4de0: $16 $ff
	di                                               ; $4de2: $f3
	ld   de, $1111                                   ; $4de3: $11 $11 $11
	rst  $38                                         ; $4de6: $ff
	rst  $38                                         ; $4de7: $ff
	ld   de, $f61f                                   ; $4de8: $11 $1f $f6
	ld   e, c                                        ; $4deb: $59
	rst  $38                                         ; $4dec: $ff
	di                                               ; $4ded: $f3
	ld   de, $1111                                   ; $4dee: $11 $11 $11
	rst  $38                                         ; $4df1: $ff
	rst  $38                                         ; $4df2: $ff
	ld   de, $f56f                                   ; $4df3: $11 $6f $f5
	ld   d, $ff                                      ; $4df6: $16 $ff
	ldh  a, [c]                                      ; $4df8: $f2
	ld   de, $1111                                   ; $4df9: $11 $11 $11
	rst  $38                                         ; $4dfc: $ff
	rst  $38                                         ; $4dfd: $ff
	ld   de, $f76f                                   ; $4dfe: $11 $6f $f7
	ld   de, $f7ff                                   ; $4e01: $11 $ff $f7
	ld   de, $1111                                   ; $4e04: $11 $11 $11
	adc  a                                           ; $4e07: $8f
	rst  $38                                         ; $4e08: $ff
	add  c                                           ; $4e09: $81
	rra                                              ; $4e0a: $1f
	or   $32                                         ; $4e0b: $f6 $32
	rst  $38                                         ; $4e0d: $ff
	db   $fc                                         ; $4e0e: $fc
	ld   de, $1111                                   ; $4e0f: $11 $11 $11
	rra                                              ; $4e12: $1f
	rst  $38                                         ; $4e13: $ff
	pop  hl                                          ; $4e14: $e1
	rra                                              ; $4e15: $1f
	rst  $38                                         ; $4e16: $ff
	ld   h, c                                        ; $4e17: $61
	rst  $38                                         ; $4e18: $ff
	cp   $11                                         ; $4e19: $fe $11
	ld   de, $1f11                                   ; $4e1b: $11 $11 $1f
	rst  $38                                         ; $4e1e: $ff
	pop  af                                          ; $4e1f: $f1
	inc  e                                           ; $4e20: $1c
	rst  $38                                         ; $4e21: $ff
	ld   b, c                                        ; $4e22: $41
	rst  JumpTable                                         ; $4e23: $df
	rst  $38                                         ; $4e24: $ff
	ld   de, $1111                                   ; $4e25: $11 $11 $11
	rra                                              ; $4e28: $1f
	rst  $38                                         ; $4e29: $ff
	pop  af                                          ; $4e2a: $f1
	ld   a, [de]                                     ; $4e2b: $1a
	db   $fd                                         ; $4e2c: $fd
	ld   d, c                                        ; $4e2d: $51
	xor  a                                           ; $4e2e: $af
	db   $fd                                         ; $4e2f: $fd
	ld   sp, $1111                                   ; $4e30: $31 $11 $11
	rra                                              ; $4e33: $1f
	rst  $38                                         ; $4e34: $ff
	pop  af                                          ; $4e35: $f1
	jr   @+$01                                       ; $4e36: $18 $ff

	ld   de, $feef                                   ; $4e38: $11 $ef $fe
	ld   de, $1111                                   ; $4e3b: $11 $11 $11
	ld   e, $ff                                      ; $4e3e: $1e $ff
	ldh  a, [c]                                      ; $4e40: $f2
	inc  d                                           ; $4e41: $14
	rst  $38                                         ; $4e42: $ff
	ld   hl, $fe9f                                   ; $4e43: $21 $9f $fe
	ld   sp, $1111                                   ; $4e46: $31 $11 $11
	ld   de, $fdff                                   ; $4e49: $11 $ff $fd
	ld   de, $53ff                                   ; $4e4c: $11 $ff $53
	ld   l, a                                        ; $4e4f: $6f
	db   $fc                                         ; $4e50: $fc
	or   c                                           ; $4e51: $b1
	ld   de, $1111                                   ; $4e52: $11 $11 $11
	rst  $38                                         ; $4e55: $ff
	rst  $38                                         ; $4e56: $ff
	ld   de, $71ff                                   ; $4e57: $11 $ff $71
	ld   c, a                                        ; $4e5a: $4f
	rst  $38                                         ; $4e5b: $ff
	jp   nz, $1111                                   ; $4e5c: $c2 $11 $11

	ld   de, $ffff                                   ; $4e5f: $11 $ff $ff
	ld   de, $a89f                                   ; $4e62: $11 $9f $a8
	rra                                              ; $4e65: $1f
	rst  $38                                         ; $4e66: $ff
	push bc                                          ; $4e67: $c5
	ld   hl, $1111                                   ; $4e68: $21 $11 $11
	rst  $38                                         ; $4e6b: $ff
	rst  $38                                         ; $4e6c: $ff
	ld   de, $d1bf                                   ; $4e6d: $11 $bf $d1
	rra                                              ; $4e70: $1f
	rst  $38                                         ; $4e71: $ff
	pop  de                                          ; $4e72: $d1
	ld   de, $1111                                   ; $4e73: $11 $11 $11
	rst  $38                                         ; $4e76: $ff
	rst  $38                                         ; $4e77: $ff
	ld   b, c                                        ; $4e78: $41
	ld   c, a                                        ; $4e79: $4f
	or   l                                           ; $4e7a: $b5
	ld   e, a                                        ; $4e7b: $5f
	rst  $38                                         ; $4e7c: $ff
	xor  c                                           ; $4e7d: $a9
	ld   [de], a                                     ; $4e7e: $12
	ld   de, $7f11                                   ; $4e7f: $11 $11 $7f
	rst  $38                                         ; $4e82: $ff
	ld   d, c                                        ; $4e83: $51
	ccf                                              ; $4e84: $3f
	pop  af                                          ; $4e85: $f1
	dec  de                                          ; $4e86: $1b
	rst  $38                                         ; $4e87: $ff
	or   [hl]                                        ; $4e88: $b6
	ld   de, $1111                                   ; $4e89: $11 $11 $11
	cpl                                              ; $4e8c: $2f
	rst  $38                                         ; $4e8d: $ff
	ld   de, $f11f                                   ; $4e8e: $11 $1f $f1
	dec  de                                          ; $4e91: $1b
	rst  $38                                         ; $4e92: $ff
	call nc, $1111                                   ; $4e93: $d4 $11 $11
	ld   de, $ff1f                                   ; $4e96: $11 $1f $ff
	pop  de                                          ; $4e99: $d1
	inc  a                                           ; $4e9a: $3c
	pop  af                                          ; $4e9b: $f1
	dec  e                                           ; $4e9c: $1d
	rst  $38                                         ; $4e9d: $ff
	push af                                          ; $4e9e: $f5
	ld   d, c                                        ; $4e9f: $51
	ld   de, $1f11                                   ; $4ea0: $11 $11 $1f
	rst  $38                                         ; $4ea3: $ff
	pop  af                                          ; $4ea4: $f1
	ld   [de], a                                     ; $4ea5: $12
	db   $f4                                         ; $4ea6: $f4
	ld   l, [hl]                                     ; $4ea7: $6e
	rst  $38                                         ; $4ea8: $ff
	add  sp, -$4f                                    ; $4ea9: $e8 $b1
	ld   de, $1f11                                   ; $4eab: $11 $11 $1f
	rst  $38                                         ; $4eae: $ff
	di                                               ; $4eaf: $f3
	dec  e                                           ; $4eb0: $1d
	di                                               ; $4eb1: $f3
	ld   d, $ff                                      ; $4eb2: $16 $ff
	or   $71                                         ; $4eb4: $f6 $71
	ld   de, $1711                                   ; $4eb6: $11 $11 $17
	rst  $38                                         ; $4eb9: $ff
	ld   sp, hl                                      ; $4eba: $f9
	ld   de, $1a5a                                   ; $4ebb: $11 $5a $1a
	rst  $38                                         ; $4ebe: $ff
	rst  $30                                         ; $4ebf: $f7
	ld   [hl], d                                     ; $4ec0: $72
	ld   de, $1111                                   ; $4ec1: $11 $11 $11
	rst  $38                                         ; $4ec4: $ff
	rst  $38                                         ; $4ec5: $ff
	ld   [de], a                                     ; $4ec6: $12
	dec  sp                                          ; $4ec7: $3b
	inc  de                                          ; $4ec8: $13
	rst  $38                                         ; $4ec9: $ff
	db   $fc                                         ; $4eca: $fc
	ld   h, l                                        ; $4ecb: $65
	ld   de, $1111                                   ; $4ecc: $11 $11 $11
	rst  $38                                         ; $4ecf: $ff
	rst  $38                                         ; $4ed0: $ff
	ld   de, $119c                                   ; $4ed1: $11 $9c $11
	rst  $38                                         ; $4ed4: $ff
	rst  $38                                         ; $4ed5: $ff
	ld   a, e                                        ; $4ed6: $7b
	ld   b, c                                        ; $4ed7: $41
	ld   de, rAUD1LEN                                   ; $4ed8: $11 $11 $ff
	rst  $38                                         ; $4edb: $ff
	pop  hl                                          ; $4edc: $e1
	daa                                              ; $4edd: $27
	ld   hl, $ff6f                                   ; $4ede: $21 $6f $ff
	ret  c                                           ; $4ee1: $d8

	ld   de, $1111                                   ; $4ee2: $11 $11 $11
	sbc  a                                           ; $4ee5: $9f
	rst  $38                                         ; $4ee6: $ff
	pop  af                                          ; $4ee7: $f1
	ld   a, [de]                                     ; $4ee8: $1a
	ld   sp, $ffef                                   ; $4ee9: $31 $ef $ff
	ld   a, [hl-]                                    ; $4eec: $3a
	ld   de, $1111                                   ; $4eed: $11 $11 $11
	ccf                                              ; $4ef0: $3f
	rst  $38                                         ; $4ef1: $ff
	pop  af                                          ; $4ef2: $f1
	dec  de                                          ; $4ef3: $1b
	ld   hl, $ff7f                                   ; $4ef4: $21 $7f $ff
	ld   a, a                                        ; $4ef7: $7f
	ld   d, c                                        ; $4ef8: $51
	ld   de, $4f11                                   ; $4ef9: $11 $11 $4f
	rst  $38                                         ; $4efc: $ff
	pop  af                                          ; $4efd: $f1
	inc  d                                           ; $4efe: $14
	ld   de, $ff5f                                   ; $4eff: $11 $5f $ff
	rl   c                                           ; $4f02: $cb $11
	ld   de, $6f11                                   ; $4f04: $11 $11 $6f
	rst  $38                                         ; $4f07: $ff
	push af                                          ; $4f08: $f5
	inc  h                                           ; $4f09: $24
	ld   d, c                                        ; $4f0a: $51
	xor  a                                           ; $4f0b: $af
	rst  $38                                         ; $4f0c: $ff
	ld   a, l                                        ; $4f0d: $7d
	ld   h, c                                        ; $4f0e: $61
	ld   de, $1f11                                   ; $4f0f: $11 $11 $1f
	rst  $38                                         ; $4f12: $ff
	rst  $30                                         ; $4f13: $f7
	ld   sp, $6f11                                   ; $4f14: $31 $11 $6f
	rst  $38                                         ; $4f17: $ff
	rst  $28                                         ; $4f18: $ef
	ld   sp, $1111                                   ; $4f19: $31 $11 $11
	sbc  a                                           ; $4f1c: $9f
	rst  $38                                         ; $4f1d: $ff
	ei                                               ; $4f1e: $fb
	ld   b, c                                        ; $4f1f: $41
	ld   de, $ff7f                                   ; $4f20: $11 $7f $ff
	rst  $38                                         ; $4f23: $ff
	ld   sp, $1111                                   ; $4f24: $31 $11 $11
	ld   e, a                                        ; $4f27: $5f
	rst  $38                                         ; $4f28: $ff
	db   $fd                                         ; $4f29: $fd
	ld   de, $7f11                                   ; $4f2a: $11 $11 $7f
	rst  $38                                         ; $4f2d: $ff
	rst  $28                                         ; $4f2e: $ef
	ld   de, $1111                                   ; $4f2f: $11 $11 $11
	rst  $38                                         ; $4f32: $ff
	rst  $38                                         ; $4f33: $ff
	ld   sp, hl                                      ; $4f34: $f9
	ld   sp, $bf11                                   ; $4f35: $31 $11 $bf
	rst  $38                                         ; $4f38: $ff
	rst  $38                                         ; $4f39: $ff
	ld   de, $1111                                   ; $4f3a: $11 $11 $11
	rst  $38                                         ; $4f3d: $ff
	rst  $38                                         ; $4f3e: $ff
	di                                               ; $4f3f: $f3
	ld   de, $7f11                                   ; $4f40: $11 $11 $7f
	rst  $38                                         ; $4f43: $ff
	ei                                               ; $4f44: $fb
	ld   de, $1511                                   ; $4f45: $11 $11 $15
	rst  $38                                         ; $4f48: $ff
	rst  $38                                         ; $4f49: $ff
	rst  $30                                         ; $4f4a: $f7
	ld   de, rAUD1LEN                                   ; $4f4b: $11 $11 $ff
	rst  $38                                         ; $4f4e: $ff
	ldh  a, [c]                                      ; $4f4f: $f2
	ld   de, $1f11                                   ; $4f50: $11 $11 $1f
	rst  $38                                         ; $4f53: $ff
	rst  $38                                         ; $4f54: $ff
	ld   hl, sp+$11                                  ; $4f55: $f8 $11
	ld   d, $ff                                      ; $4f57: $16 $ff
	rst  $38                                         ; $4f59: $ff
	pop  af                                          ; $4f5a: $f1
	ld   de, $1f11                                   ; $4f5b: $11 $11 $1f
	rst  $38                                         ; $4f5e: $ff
	rst  $38                                         ; $4f5f: $ff
	push af                                          ; $4f60: $f5
	ld   de, $ff19                                   ; $4f61: $11 $19 $ff
	rst  $38                                         ; $4f64: $ff
	ld   h, c                                        ; $4f65: $61
	ld   de, rAUD1LEN                                   ; $4f66: $11 $11 $ff
	rst  $38                                         ; $4f69: $ff
	rst  $38                                         ; $4f6a: $ff
	pop  af                                          ; $4f6b: $f1
	ld   de, $ff1f                                   ; $4f6c: $11 $1f $ff
	rst  $38                                         ; $4f6f: $ff
	ld   de, $1111                                   ; $4f70: $11 $11 $11
	rst  $38                                         ; $4f73: $ff
	rst  $38                                         ; $4f74: $ff
	rst  $38                                         ; $4f75: $ff
	ld   b, c                                        ; $4f76: $41
	ld   de, $ffaf                                   ; $4f77: $11 $af $ff
	push af                                          ; $4f7a: $f5
	ld   de, $1f11                                   ; $4f7b: $11 $11 $1f
	rst  $38                                         ; $4f7e: $ff
	rst  $38                                         ; $4f7f: $ff
	db   $fd                                         ; $4f80: $fd
	ld   de, rAUD1LEN                                   ; $4f81: $11 $11 $ff

jr_0d3_4f84:
	rst  $38                                         ; $4f84: $ff
	pop  de                                          ; $4f85: $d1
	ld   de, $9f11                                   ; $4f86: $11 $11 $9f
	rst  $38                                         ; $4f89: $ff
	rst  $38                                         ; $4f8a: $ff
	push af                                          ; $4f8b: $f5
	ld   de, $ff1c                                   ; $4f8c: $11 $1c $ff
	rst  $38                                         ; $4f8f: $ff
	ld   de, $1111                                   ; $4f90: $11 $11 $11
	rst  $38                                         ; $4f93: $ff
	rst  $38                                         ; $4f94: $ff
	rst  $38                                         ; $4f95: $ff
	ld   [hl], c                                     ; $4f96: $71
	ld   de, $ff5f                                   ; $4f97: $11 $5f $ff
	di                                               ; $4f9a: $f3
	ld   de, $1f11                                   ; $4f9b: $11 $11 $1f
	rst  $38                                         ; $4f9e: $ff
	rst  $38                                         ; $4f9f: $ff
	rst  $38                                         ; $4fa0: $ff
	ld   h, c                                        ; $4fa1: $61
	ld   [de], a                                     ; $4fa2: $12
	rst  $38                                         ; $4fa3: $ff
	rst  $38                                         ; $4fa4: $ff
	or   c                                           ; $4fa5: $b1
	ld   de, $fb11                                   ; $4fa6: $11 $11 $fb
	rst  $38                                         ; $4fa9: $ff
	rst  $38                                         ; $4faa: $ff
	ld   sp, hl                                      ; $4fab: $f9
	ld   de, $ff1f                                   ; $4fac: $11 $1f $ff
	rst  $38                                         ; $4faf: $ff
	ld   de, $1f11                                   ; $4fb0: $11 $11 $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fb3: $cf
	rst  $38                                         ; $4fb4: $ff
	rst  $38                                         ; $4fb5: $ff
	pop  af                                          ; $4fb6: $f1
	ld   de, $cfff                                   ; $4fb7: $11 $ff $cf
	pop  af                                          ; $4fba: $f1
	ld   de, $f711                                   ; $4fbb: $11 $11 $f7
	rst  $38                                         ; $4fbe: $ff
	rst  $38                                         ; $4fbf: $ff
	rst  $38                                         ; $4fc0: $ff
	ld   de, $fb1f                                   ; $4fc1: $11 $1f $fb
	rst  $38                                         ; $4fc4: $ff
	ld   de, $1e11                                   ; $4fc5: $11 $11 $1e
	rra                                              ; $4fc8: $1f
	rst  $38                                         ; $4fc9: $ff
	rst  $38                                         ; $4fca: $ff
	pop  af                                          ; $4fcb: $f1
	ld   de, $cff7                                   ; $4fcc: $11 $f7 $cf
	pop  bc                                          ; $4fcf: $c1
	ld   de, $b117                                   ; $4fd0: $11 $17 $b1
	rst  $38                                         ; $4fd3: $ff
	rst  $38                                         ; $4fd4: $ff
	rst  $38                                         ; $4fd5: $ff
	ld   de, $1e5f                                   ; $4fd6: $11 $5f $1e
	ld   hl, sp+$11                                  ; $4fd9: $f8 $11
	ld   de, $1fc7                                   ; $4fdb: $11 $c7 $1f
	rst  $38                                         ; $4fde: $ff
	rst  $38                                         ; $4fdf: $ff
	pop  af                                          ; $4fe0: $f1
	jr   jr_0d3_4f84                                 ; $4fe1: $18 $a1

	rst  $38                                         ; $4fe3: $ff
	ld   de, $1f11                                   ; $4fe4: $11 $11 $1f
	ld   e, $ff                                      ; $4fe7: $1e $ff
	rst  $38                                         ; $4fe9: $ff
	rst  $38                                         ; $4fea: $ff
	ld   de, $1fe7                                   ; $4feb: $11 $e7 $1f
	pop  bc                                          ; $4fee: $c1
	ld   de, $7114                                   ; $4fef: $11 $14 $71
	rst  $38                                         ; $4ff2: $ff
	rst  $38                                         ; $4ff3: $ff
	rst  $38                                         ; $4ff4: $ff
	and  c                                           ; $4ff5: $a1
	ld   e, a                                        ; $4ff6: $5f
	ld   d, $f2                                      ; $4ff7: $16 $f2
	ld   de, $b111                                   ; $4ff9: $11 $11 $b1
	sbc  a                                           ; $4ffc: $9f
	rst  $38                                         ; $4ffd: $ff
	rst  $38                                         ; $4ffe: $ff
	pop  af                                          ; $4fff: $f1
	ld   l, a                                        ; $5000: $6f
	ld   b, c                                        ; $5001: $41
	rst  $38                                         ; $5002: $ff
	ld   de, $1611                                   ; $5003: $11 $11 $16
	rra                                              ; $5006: $1f
	rst  $38                                         ; $5007: $ff
	rst  $38                                         ; $5008: $ff
	ld   sp, hl                                      ; $5009: $f9
	dec  hl                                          ; $500a: $2b
	pop  af                                          ; $500b: $f1
	ld   l, a                                        ; $500c: $6f
	ld   b, c                                        ; $500d: $41
	ld   de, $111b                                   ; $500e: $11 $1b $11
	rst  $38                                         ; $5011: $ff
	rst  $38                                         ; $5012: $ff
	rst  $38                                         ; $5013: $ff
	ld   c, c                                        ; $5014: $49
	or   $1f                                         ; $5015: $f6 $1f
	or   c                                           ; $5017: $b1
	ld   de, $8111                                   ; $5018: $11 $11 $81
	rst  $38                                         ; $501b: $ff
	rst  $38                                         ; $501c: $ff
	rst  $38                                         ; $501d: $ff
	call nc, $1ade                                   ; $501e: $d4 $de $1a
	pop  af                                          ; $5021: $f1
	ld   de, $a111                                   ; $5022: $11 $11 $a1
	rra                                              ; $5025: $1f
	rst  $38                                         ; $5026: $ff
	rst  $38                                         ; $5027: $ff
	db   $fc                                         ; $5028: $fc
	xor  [hl]                                        ; $5029: $ae
	ld   d, e                                        ; $502a: $53
	push af                                          ; $502b: $f5
	ld   de, $1111                                   ; $502c: $11 $11 $11
	rra                                              ; $502f: $1f
	rst  $38                                         ; $5030: $ff
	rst  $38                                         ; $5031: $ff
	cp   $cf                                         ; $5032: $fe $cf
	sub  c                                           ; $5034: $91
	db   $fc                                         ; $5035: $fc
	ld   de, $1911                                   ; $5036: $11 $11 $19
	inc  d                                           ; $5039: $14
	rst  $38                                         ; $503a: $ff
	rst  $38                                         ; $503b: $ff
	rst  $38                                         ; $503c: $ff
	sbc  a                                           ; $503d: $9f
	pop  af                                          ; $503e: $f1
	xor  a                                           ; $503f: $af
	ld   de, $1111                                   ; $5040: $11 $11 $11
	ld   de, $ffff                                   ; $5043: $11 $ff $ff
	rst  $38                                         ; $5046: $ff
	rst  $38                                         ; $5047: $ff
	rst  $30                                         ; $5048: $f7
	rra                                              ; $5049: $1f
	add  c                                           ; $504a: $81
	ld   de, $2111                                   ; $504b: $11 $11 $21
	sbc  a                                           ; $504e: $9f
	rst  $38                                         ; $504f: $ff
	rst  $38                                         ; $5050: $ff
	rst  $38                                         ; $5051: $ff
	rst  $38                                         ; $5052: $ff
	dec  e                                           ; $5053: $1d
	pop  af                                          ; $5054: $f1
	ld   de, $5111                                   ; $5055: $11 $11 $51
	rra                                              ; $5058: $1f
	cp   $ff                                         ; $5059: $fe $ff
	rst  $38                                         ; $505b: $ff
	rst  $38                                         ; $505c: $ff
	ld   d, $f1                                      ; $505d: $16 $f1
	ld   de, $1111                                   ; $505f: $11 $11 $11
	add  hl, de                                      ; $5062: $19
	ei                                               ; $5063: $fb
	rst  $38                                         ; $5064: $ff
	rst  $38                                         ; $5065: $ff
	rst  $38                                         ; $5066: $ff
	pop  af                                          ; $5067: $f1
	cp   $11                                         ; $5068: $fe $11
	ld   de, $1112                                   ; $506a: $11 $12 $11
	ld   hl, sp-$21                                  ; $506d: $f8 $df
	rst  $38                                         ; $506f: $ff
	rst  $38                                         ; $5070: $ff
	pop  af                                          ; $5071: $f1
	rst  $38                                         ; $5072: $ff
	ld   de, $1111                                   ; $5073: $11 $11 $11
	ld   de, $6fff                                   ; $5076: $11 $ff $6f
	rst  $38                                         ; $5079: $ff
	rst  $38                                         ; $507a: $ff
	ei                                               ; $507b: $fb
	sbc  a                                           ; $507c: $9f
	ld   b, c                                        ; $507d: $41
	ld   d, c                                        ; $507e: $51
	ld   de, $1f11                                   ; $507f: $11 $11 $1f
	ld   c, a                                        ; $5082: $4f
	rst  $38                                         ; $5083: $ff
	rst  $38                                         ; $5084: $ff
	rst  $38                                         ; $5085: $ff
	adc  a                                           ; $5086: $8f
	pop  af                                          ; $5087: $f1
	ld   sp, $1111                                   ; $5088: $31 $11 $11
	rra                                              ; $508b: $1f
	ld   h, c                                        ; $508c: $61
	rst  $38                                         ; $508d: $ff
	rst  $38                                         ; $508e: $ff
	rst  $38                                         ; $508f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5090: $cf
	or   $17                                         ; $5091: $f6 $17
	ld   de, $1111                                   ; $5093: $11 $11 $11
	pop  af                                          ; $5096: $f1
	ld   a, a                                        ; $5097: $7f
	rst  $38                                         ; $5098: $ff
	rst  $38                                         ; $5099: $ff
	cp   $ff                                         ; $509a: $fe $ff
	jr   jr_0d3_50af                                 ; $509c: $18 $11

	ld   de, $2611                                   ; $509e: $11 $11 $26
	add  hl, de                                      ; $50a1: $19
	rst  $38                                         ; $50a2: $ff
	rst  $38                                         ; $50a3: $ff
	rst  $38                                         ; $50a4: $ff
	rst  $38                                         ; $50a5: $ff
	or   $91                                         ; $50a6: $f6 $91
	ld   de, $1311                                   ; $50a8: $11 $11 $13
	ld   de, $ff7f                                   ; $50ab: $11 $7f $ff
	rst  $38                                         ; $50ae: $ff

jr_0d3_50af:
	rst  $38                                         ; $50af: $ff
	rst  $38                                         ; $50b0: $ff
	rst  $10                                         ; $50b1: $d7
	ld   de, $1111                                   ; $50b2: $11 $11 $11
	ld   b, c                                        ; $50b5: $41
	jr   @+$01                                       ; $50b6: $18 $ff

	rst  $38                                         ; $50b8: $ff
	rst  $38                                         ; $50b9: $ff
	rst  $38                                         ; $50ba: $ff
	cp   $c1                                         ; $50bb: $fe $c1
	ld   de, $1411                                   ; $50bd: $11 $11 $14
	ld   de, $ff1f                                   ; $50c0: $11 $1f $ff
	rst  $38                                         ; $50c3: $ff
	rst  $38                                         ; $50c4: $ff
	rst  $38                                         ; $50c5: $ff
	rst  $38                                         ; $50c6: $ff
	ld   hl, $1111                                   ; $50c7: $21 $11 $11
	ld   de, $ef11                                   ; $50ca: $11 $11 $ef
	sbc  a                                           ; $50cd: $9f
	rst  $38                                         ; $50ce: $ff
	rst  $38                                         ; $50cf: $ff
	rst  $38                                         ; $50d0: $ff
	ld   a, [$1111]                                  ; $50d1: $fa $11 $11
	ld   de, $1111                                   ; $50d4: $11 $11 $11
	jp   hl                                          ; $50d7: $e9


	rst  JumpTable                                         ; $50d8: $df
	rst  $38                                         ; $50d9: $ff
	rst  $38                                         ; $50da: $ff
	rst  $38                                         ; $50db: $ff
	sub  $11                                         ; $50dc: $d6 $11
	add  c                                           ; $50de: $81
	ld   de, $1211                                   ; $50df: $11 $11 $12
	cp   b                                           ; $50e2: $b8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50e3: $cf
	rst  $38                                         ; $50e4: $ff
	rst  $38                                         ; $50e5: $ff
	ei                                               ; $50e6: $fb
	sbc  b                                           ; $50e7: $98
	adc  l                                           ; $50e8: $8d
	ld   a, [$4115]                                  ; $50e9: $fa $15 $41
	ld   [de], a                                     ; $50ec: $12
	ld   d, c                                        ; $50ed: $51
	dec  h                                           ; $50ee: $25
	halt                                             ; $50ef: $76
	sbc  h                                           ; $50f0: $9c
	rst  JumpTable                                         ; $50f1: $df
	rst  $38                                         ; $50f2: $ff
	rst  $38                                         ; $50f3: $ff
	rst  $38                                         ; $50f4: $ff
	cp   e                                           ; $50f5: $bb
	sub  l                                           ; $50f6: $95
	ld   hl, $1111                                   ; $50f7: $21 $11 $11
	ld   [de], a                                     ; $50fa: $12
	ld   l, c                                        ; $50fb: $69
	cp   [hl]                                        ; $50fc: $be
	rst  $38                                         ; $50fd: $ff
	rst  $38                                         ; $50fe: $ff
	rst  $38                                         ; $50ff: $ff
	db   $fd                                         ; $5100: $fd
	xor  b                                           ; $5101: $a8
	ld   d, c                                        ; $5102: $51
	ld   de, $1111                                   ; $5103: $11 $11 $11
	scf                                              ; $5106: $37
	sbc  d                                           ; $5107: $9a
	rst  $28                                         ; $5108: $ef
	rst  $38                                         ; $5109: $ff
	rst  $38                                         ; $510a: $ff
	rst  $38                                         ; $510b: $ff
	ret                                              ; $510c: $c9


	ld   h, e                                        ; $510d: $63
	ld   de, $1111                                   ; $510e: $11 $11 $11
	dec  h                                           ; $5111: $25
	adc  c                                           ; $5112: $89
	call $ffff                                       ; $5113: $cd $ff $ff
	rst  $38                                         ; $5116: $ff
	db   $fd                                         ; $5117: $fd
	sub  a                                           ; $5118: $97
	ld   b, c                                        ; $5119: $41
	ld   de, $1211                                   ; $511a: $11 $11 $12
	ld   h, a                                        ; $511d: $67
	sbc  e                                           ; $511e: $9b
	call $efed                                       ; $511f: $cd $ed $ef
	rst  $38                                         ; $5122: $ff
	jp   z, $3175                                    ; $5123: $ca $75 $31

	ld   de, $1411                                   ; $5126: $11 $11 $14
	adc  d                                           ; $5129: $8a
	sbc  $ff                                         ; $512a: $de $ff
	ei                                               ; $512c: $fb
	xor  l                                           ; $512d: $ad
	db   $fd                                         ; $512e: $fd
	xor  c                                           ; $512f: $a9
	ld   d, c                                        ; $5130: $51
	ld   de, $0211                                   ; $5131: $11 $11 $02
	ld   b, a                                        ; $5134: $47
	adc  c                                           ; $5135: $89
	rst  JumpTable                                         ; $5136: $df
	xor  $ee                                         ; $5137: $ee $ee
	xor  $d9                                         ; $5139: $ee $d9
	sub  a                                           ; $513b: $97
	ld   b, c                                        ; $513c: $41
	ld   de, $1411                                   ; $513d: $11 $11 $14
	ld   a, d                                        ; $5140: $7a
	xor  e                                           ; $5141: $ab
	call z, $ffff                                    ; $5142: $cc $ff $ff
	cp   $a9                                         ; $5145: $fe $a9
	add  e                                           ; $5147: $83
	ld   bc, $1111                                   ; $5148: $01 $11 $11
	scf                                              ; $514b: $37
	xor  d                                           ; $514c: $aa
	cp   [hl]                                        ; $514d: $be
	db   $dd                                         ; $514e: $dd
	db   $dd                                         ; $514f: $dd
	db   $dd                                         ; $5150: $dd
	db   $eb                                         ; $5151: $eb
	add  a                                           ; $5152: $87
	ld   b, c                                        ; $5153: $41
	ld   bc, $1311                                   ; $5154: $01 $11 $13
	ld   l, b                                        ; $5157: $68
	xor  l                                           ; $5158: $ad
	rst  $38                                         ; $5159: $ff
	rst  $38                                         ; $515a: $ff
	db   $ec                                         ; $515b: $ec
	xor  l                                           ; $515c: $ad
	rst  ToBoot                                         ; $515d: $c7
	add  [hl]                                        ; $515e: $86
	ld   hl, $1111                                   ; $515f: $21 $11 $11
	ld   c, b                                        ; $5162: $48
	sbc  c                                           ; $5163: $99
	cp   [hl]                                        ; $5164: $be
	call z, $bcdb                                    ; $5165: $cc $db $bc
	ld   a, [$5389]                                  ; $5168: $fa $89 $53
	ld   de, $2311                                   ; $516b: $11 $11 $23
	sbc  e                                           ; $516e: $9b
	sbc  $ff                                         ; $516f: $de $ff
	ei                                               ; $5171: $fb
	cp   d                                           ; $5172: $ba
	xor  l                                           ; $5173: $ad
	ld   [hl], l                                     ; $5174: $75
	add  d                                           ; $5175: $82
	ld   de, $1311                                   ; $5176: $11 $11 $13
	adc  d                                           ; $5179: $8a
	xor  [hl]                                        ; $517a: $ae
	cp   $ef                                         ; $517b: $fe $ef
	ret  z                                           ; $517d: $c8

	xor  a                                           ; $517e: $af
	and  c                                           ; $517f: $a1
	add  a                                           ; $5180: $87
	ld   de, $1221                                   ; $5181: $11 $21 $12
	cp   e                                           ; $5184: $bb
	xor  a                                           ; $5185: $af
	rst  $38                                         ; $5186: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5187: $cf
	push bc                                          ; $5188: $c5
	xor  a                                           ; $5189: $af
	sub  c                                           ; $518a: $91
	ld   [hl], a                                     ; $518b: $77
	ld   de, $1111                                   ; $518c: $11 $11 $11
	jp   z, $ff9f                                    ; $518f: $ca $9f $ff

	rst  $38                                         ; $5192: $ff
	and  $6e                                         ; $5193: $e6 $6e
	pop  bc                                          ; $5195: $c1
	ld   c, c                                        ; $5196: $49
	ld   de, $1211                                   ; $5197: $11 $11 $12
	db   $eb                                         ; $519a: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $519b: $cf
	rst  $38                                         ; $519c: $ff
	rst  $38                                         ; $519d: $ff
	jp   nc, $816f                                   ; $519e: $d2 $6f $81

	jr   c, jr_0d3_51b4                              ; $51a1: $38 $11

	ld   de, $fb15                                   ; $51a3: $11 $15 $fb
	rst  JumpTable                                         ; $51a6: $df
	rst  $38                                         ; $51a7: $ff
	rst  $38                                         ; $51a8: $ff
	pop  bc                                          ; $51a9: $c1
	xor  a                                           ; $51aa: $af
	ld   de, $1172                                   ; $51ab: $11 $72 $11
	ld   sp, $fb1d                                   ; $51ae: $31 $1d $fb
	rst  $38                                         ; $51b1: $ff
	rst  $38                                         ; $51b2: $ff
	rst  $38                                         ; $51b3: $ff

jr_0d3_51b4:
	ld   h, d                                        ; $51b4: $62
	call Call_0d3_7111                               ; $51b5: $cd $11 $71
	ld   de, $1f11                                   ; $51b8: $11 $11 $1f
	rst  JumpTable                                         ; $51bb: $df
	rst  $38                                         ; $51bc: $ff
	rst  $38                                         ; $51bd: $ff
	rst  $38                                         ; $51be: $ff
	ld   l, b                                        ; $51bf: $68
	di                                               ; $51c0: $f3
	ld   de, $1111                                   ; $51c1: $11 $11 $11
	ld   de, $cfbf                                   ; $51c4: $11 $bf $cf
	rst  $38                                         ; $51c7: $ff
	rst  $38                                         ; $51c8: $ff
	db   $fc                                         ; $51c9: $fc
	sbc  e                                           ; $51ca: $9b
	or   c                                           ; $51cb: $b1
	inc  de                                          ; $51cc: $13
	ld   de, $1111                                   ; $51cd: $11 $11 $11
	reti                                             ; $51d0: $d9


	rst  $38                                         ; $51d1: $ff
	rst  $38                                         ; $51d2: $ff
	rst  $38                                         ; $51d3: $ff
	cp   $ec                                         ; $51d4: $fe $ec
	ld   d, c                                        ; $51d6: $51
	ld   de, $1111                                   ; $51d7: $11 $11 $11
	ld   d, $aa                                      ; $51da: $16 $aa
	rst  $38                                         ; $51dc: $ff
	rst  $38                                         ; $51dd: $ff
	rst  $38                                         ; $51de: $ff
	rst  $38                                         ; $51df: $ff
	call c, $1141                                    ; $51e0: $dc $41 $11
	ld   de, $1611                                   ; $51e3: $11 $11 $16
	adc  [hl]                                        ; $51e6: $8e
	rst  $38                                         ; $51e7: $ff
	rst  $38                                         ; $51e8: $ff
	rst  $38                                         ; $51e9: $ff
	rst  $38                                         ; $51ea: $ff
	jp   z, $0111                                    ; $51eb: $ca $11 $01

	ld   de, $2911                                   ; $51ee: $11 $11 $29
	sbc  a                                           ; $51f1: $9f
	rst  $38                                         ; $51f2: $ff
	rst  $38                                         ; $51f3: $ff
	rst  $38                                         ; $51f4: $ff
	db   $fd                                         ; $51f5: $fd
	or   [hl]                                        ; $51f6: $b6
	ld   de, $1111                                   ; $51f7: $11 $11 $11
	ld   de, $bf7b                                   ; $51fa: $11 $7b $bf
	rst  $38                                         ; $51fd: $ff
	rst  $38                                         ; $51fe: $ff
	rst  $38                                         ; $51ff: $ff
	ld   a, [$11c1]                                  ; $5200: $fa $c1 $11
	ld   de, $1111                                   ; $5203: $11 $11 $11
	sbc  d                                           ; $5206: $9a
	rst  $38                                         ; $5207: $ff
	rst  $38                                         ; $5208: $ff
	rst  $38                                         ; $5209: $ff
	rst  $38                                         ; $520a: $ff
	add  sp, -$6f                                    ; $520b: $e8 $91
	ld   de, $1111                                   ; $520d: $11 $11 $11
	dec  d                                           ; $5210: $15
	xor  h                                           ; $5211: $ac
	rst  $38                                         ; $5212: $ff
	rst  $38                                         ; $5213: $ff

Jump_0d3_5214:
	rst  $38                                         ; $5214: $ff
	rst  $38                                         ; $5215: $ff
	adc  e                                           ; $5216: $8b
	ld   de, $1111                                   ; $5217: $11 $11 $11
	ld   de, $cf1a                                   ; $521a: $11 $1a $cf
	rst  $38                                         ; $521d: $ff
	rst  $38                                         ; $521e: $ff
	rst  $38                                         ; $521f: $ff
	ei                                               ; $5220: $fb
	ld   l, h                                        ; $5221: $6c
	ld   de, $1111                                   ; $5222: $11 $11 $11
	ld   de, $bf4e                                   ; $5225: $11 $4e $bf
	rst  $38                                         ; $5228: $ff
	rst  $38                                         ; $5229: $ff
	rst  $38                                         ; $522a: $ff
	rst  $30                                         ; $522b: $f7
	and  c                                           ; $522c: $a1
	ld   [de], a                                     ; $522d: $12
	ld   de, $1111                                   ; $522e: $11 $11 $11
	cp   l                                           ; $5231: $bd
	rst  $38                                         ; $5232: $ff
	rst  $38                                         ; $5233: $ff
	rst  $38                                         ; $5234: $ff
	rst  $38                                         ; $5235: $ff
	and  h                                           ; $5236: $a4
	and  c                                           ; $5237: $a1
	ld   de, $1111                                   ; $5238: $11 $11 $11
	inc  de                                          ; $523b: $13
	call c, $ffff                                    ; $523c: $dc $ff $ff
	rst  $38                                         ; $523f: $ff
	db   $fd                                         ; $5240: $fd
	ld   l, d                                        ; $5241: $6a
	ld   b, c                                        ; $5242: $41
	ld   sp, $1111                                   ; $5243: $31 $11 $11
	rla                                              ; $5246: $17
	call c, $ffff                                    ; $5247: $dc $ff $ff
	rst  $38                                         ; $524a: $ff
	cp   $8d                                         ; $524b: $fe $8d
	ld   de, $1131                                   ; $524d: $11 $31 $11
	ld   de, $9f18                                   ; $5250: $11 $18 $9f
	rst  $38                                         ; $5253: $ff
	rst  $38                                         ; $5254: $ff
	rst  $38                                         ; $5255: $ff
	db   $fd                                         ; $5256: $fd
	cp   d                                           ; $5257: $ba
	ld   de, $1111                                   ; $5258: $11 $11 $11
	ld   de, $9f17                                   ; $525b: $11 $17 $9f
	rst  $38                                         ; $525e: $ff
	rst  $38                                         ; $525f: $ff
	rst  $38                                         ; $5260: $ff
	ei                                               ; $5261: $fb
	add  sp, $11                                     ; $5262: $e8 $11
	ld   de, $1111                                   ; $5264: $11 $11 $11
	add  hl, sp                                      ; $5267: $39
	sbc  a                                           ; $5268: $9f
	rst  $38                                         ; $5269: $ff
	rst  $38                                         ; $526a: $ff
	rst  $38                                         ; $526b: $ff
	rst  $30                                         ; $526c: $f7
	pop  hl                                          ; $526d: $e1
	dec  d                                           ; $526e: $15
	ld   de, $1111                                   ; $526f: $11 $11 $11
	xor  d                                           ; $5272: $aa
	rst  $38                                         ; $5273: $ff
	rst  $38                                         ; $5274: $ff
	rst  $38                                         ; $5275: $ff
	cp   $a7                                         ; $5276: $fe $a7
	or   c                                           ; $5278: $b1
	ld   de, $1111                                   ; $5279: $11 $11 $11
	inc  d                                           ; $527c: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $527d: $cf
	rst  $38                                         ; $527e: $ff
	rst  $38                                         ; $527f: $ff
	rst  $38                                         ; $5280: $ff
	jp   hl                                          ; $5281: $e9


	scf                                              ; $5282: $37
	ld   de, $1141                                   ; $5283: $11 $41 $11
	ld   de, $ef1e                                   ; $5286: $11 $1e $ef
	rst  $38                                         ; $5289: $ff
	rst  $38                                         ; $528a: $ff
	rst  $38                                         ; $528b: $ff
	sub  h                                           ; $528c: $94
	jr   c, jr_0d3_52a0                              ; $528d: $38 $11

	ld   sp, $1111                                   ; $528f: $31 $11 $11
	sbc  a                                           ; $5292: $9f
	rst  $28                                         ; $5293: $ef
	rst  $38                                         ; $5294: $ff
	rst  $38                                         ; $5295: $ff
	ld   a, [$7185]                                  ; $5296: $fa $85 $71
	inc  de                                          ; $5299: $13
	ld   de, $1211                                   ; $529a: $11 $11 $12
	cp   $ff                                         ; $529d: $fe $ff
	rst  $38                                         ; $529f: $ff

jr_0d3_52a0:
	rst  $38                                         ; $52a0: $ff
	ld   hl, sp+$43                                  ; $52a1: $f8 $43
	ld   h, c                                        ; $52a3: $61
	inc  d                                           ; $52a4: $14
	ld   de, $1a11                                   ; $52a5: $11 $11 $1a
	cp   $ff                                         ; $52a8: $fe $ff
	rst  $38                                         ; $52aa: $ff
	rst  $38                                         ; $52ab: $ff
	and  e                                           ; $52ac: $a3
	ld   d, $11                                      ; $52ad: $16 $11
	ld   b, c                                        ; $52af: $41
	ld   de, $1f21                                   ; $52b0: $11 $21 $1f
	rst  $38                                         ; $52b3: $ff
	rst  $38                                         ; $52b4: $ff
	rst  $38                                         ; $52b5: $ff
	rst  $38                                         ; $52b6: $ff
	ld   de, $1161                                   ; $52b7: $11 $61 $11
	ld   hl, $1111                                   ; $52ba: $21 $11 $11
	rst  $28                                         ; $52bd: $ef
	rst  $38                                         ; $52be: $ff
	rst  $38                                         ; $52bf: $ff
	rst  $38                                         ; $52c0: $ff
	db   $f4                                         ; $52c1: $f4
	ld   de, $1771                                   ; $52c2: $11 $71 $17
	ld   de, $1517                                   ; $52c5: $11 $17 $15
	rst  $38                                         ; $52c8: $ff
	rst  $38                                         ; $52c9: $ff
	rst  $38                                         ; $52ca: $ff
	rst  $38                                         ; $52cb: $ff
	pop  de                                          ; $52cc: $d1
	rla                                              ; $52cd: $17
	ld   de, $1114                                   ; $52ce: $11 $14 $11
	ld   e, e                                        ; $52d1: $5b
	cpl                                              ; $52d2: $2f
	rst  $38                                         ; $52d3: $ff
	rst  $38                                         ; $52d4: $ff
	rst  $38                                         ; $52d5: $ff
	db   $fd                                         ; $52d6: $fd
	ld   b, c                                        ; $52d7: $41
	inc  d                                           ; $52d8: $14
	ld   de, $1121                                   ; $52d9: $11 $21 $11
	cp   h                                           ; $52dc: $bc
	rst  JumpTable                                         ; $52dd: $df
	rst  $38                                         ; $52de: $ff
	rst  $38                                         ; $52df: $ff
	rst  $38                                         ; $52e0: $ff
	sub  c                                           ; $52e1: $91
	ld   de, $1111                                   ; $52e2: $11 $11 $11
	ld   de, $ff19                                   ; $52e5: $11 $19 $ff
	rst  $38                                         ; $52e8: $ff
	rst  $38                                         ; $52e9: $ff
	rst  $38                                         ; $52ea: $ff
	db   $fc                                         ; $52eb: $fc
	ld   de, $1111                                   ; $52ec: $11 $11 $11
	ld   [de], a                                     ; $52ef: $12
	ld   de, $ff5f                                   ; $52f0: $11 $5f $ff
	rst  $38                                         ; $52f3: $ff
	rst  $38                                         ; $52f4: $ff
	rst  $38                                         ; $52f5: $ff
	pop  af                                          ; $52f6: $f1
	ld   de, $1111                                   ; $52f7: $11 $11 $11
	ld   [de], a                                     ; $52fa: $12
	dec  d                                           ; $52fb: $15
	xor  a                                           ; $52fc: $af
	rst  $38                                         ; $52fd: $ff
	rst  $38                                         ; $52fe: $ff
	rst  $38                                         ; $52ff: $ff
	db   $fc                                         ; $5300: $fc
	ld   sp, $1111                                   ; $5301: $31 $11 $11
	inc  hl                                          ; $5304: $23
	ld   [hl-], a                                    ; $5305: $32
	ld   e, c                                        ; $5306: $59
	rst  JumpTable                                         ; $5307: $df
	rst  $38                                         ; $5308: $ff
	rst  $38                                         ; $5309: $ff
	rst  $38                                         ; $530a: $ff
	push de                                          ; $530b: $d5
	ld   de, $1511                                   ; $530c: $11 $11 $15
	ld   h, [hl]                                     ; $530f: $66
	ld   b, h                                        ; $5310: $44
	ld   d, [hl]                                     ; $5311: $56
	xor  a                                           ; $5312: $af
	rst  $38                                         ; $5313: $ff
	xor  $cd                                         ; $5314: $ee $cd
	and  [hl]                                        ; $5316: $a6
	ld   b, e                                        ; $5317: $43
	ld   d, l                                        ; $5318: $55
	ld   a, b                                        ; $5319: $78
	ld   h, l                                        ; $531a: $65
	ld   [hl-], a                                    ; $531b: $32
	inc  de                                          ; $531c: $13
	adc  e                                           ; $531d: $8b
	db   $ed                                         ; $531e: $ed
	call c, $b9dd                                    ; $531f: $dc $dd $b9
	ld   a, b                                        ; $5322: $78
	adc  c                                           ; $5323: $89
	sub  a                                           ; $5324: $97
	ld   b, d                                        ; $5325: $42
	ld   de, $7913                                   ; $5326: $11 $13 $79
	cp   l                                           ; $5329: $bd
	sbc  $ef                                         ; $532a: $de $ef
	db   $ec                                         ; $532c: $ec
	xor  d                                           ; $532d: $aa
	sbc  d                                           ; $532e: $9a
	and  [hl]                                        ; $532f: $a6
	ld   sp, $1211                                   ; $5330: $31 $11 $12
	ld   a, d                                        ; $5333: $7a
	cp   l                                           ; $5334: $bd
	xor  $ff                                         ; $5335: $ee $ff
	db   $ec                                         ; $5337: $ec
	xor  e                                           ; $5338: $ab
	cp   e                                           ; $5339: $bb
	add  h                                           ; $533a: $84
	ld   de, $1411                                   ; $533b: $11 $11 $14
	ld   a, c                                        ; $533e: $79
	call $ffff                                       ; $533f: $cd $ff $ff
	db   $eb                                         ; $5342: $eb
	cp   e                                           ; $5343: $bb
	cp   d                                           ; $5344: $ba
	ld   h, d                                        ; $5345: $62
	ld   de, $1411                                   ; $5346: $11 $11 $14
	ld   a, d                                        ; $5349: $7a
	adc  $ff                                         ; $534a: $ce $ff
	rst  $38                                         ; $534c: $ff
	jp   c, $a9bb                                    ; $534d: $da $bb $a9

	ld   b, c                                        ; $5350: $41
	ld   de, $1411                                   ; $5351: $11 $11 $14
	adc  d                                           ; $5354: $8a
	adc  $ff                                         ; $5355: $ce $ff
	rst  $38                                         ; $5357: $ff
	jp   c, $a8ba                                    ; $5358: $da $ba $a8

	ld   b, c                                        ; $535b: $41
	ld   de, $2511                                   ; $535c: $11 $11 $25
	sbc  e                                           ; $535f: $9b
	cp   [hl]                                        ; $5360: $be
	rst  $38                                         ; $5361: $ff
	rst  $38                                         ; $5362: $ff
	jp   z, $97ba                                    ; $5363: $ca $ba $97

	ld   b, c                                        ; $5366: $41
	ld   de, $2511                                   ; $5367: $11 $11 $25
	sbc  d                                           ; $536a: $9a
	adc  $ff                                         ; $536b: $ce $ff
	rst  $38                                         ; $536d: $ff
	jp   z, $a7ab                                    ; $536e: $ca $ab $a7

	ld   sp, $1111                                   ; $5371: $31 $11 $11
	ld   [hl], $aa                                   ; $5374: $36 $aa
	call $ffff                                       ; $5376: $cd $ff $ff
	cp   d                                           ; $5379: $ba
	xor  d                                           ; $537a: $aa
	sub  a                                           ; $537b: $97
	ld   sp, $1111                                   ; $537c: $31 $11 $11
	scf                                              ; $537f: $37
	sbc  e                                           ; $5380: $9b
	adc  $ff                                         ; $5381: $ce $ff
	rst  $38                                         ; $5383: $ff
	cp   d                                           ; $5384: $ba
	xor  d                                           ; $5385: $aa
	and  a                                           ; $5386: $a7
	ld   sp, $1111                                   ; $5387: $31 $11 $11
	ld   c, b                                        ; $538a: $48
	xor  d                                           ; $538b: $aa
	adc  $ff                                         ; $538c: $ce $ff
	rst  $38                                         ; $538e: $ff
	cp   d                                           ; $538f: $ba
	xor  e                                           ; $5390: $ab
	sub  [hl]                                        ; $5391: $96
	ld   hl, $1111                                   ; $5392: $21 $11 $11
	ld   c, c                                        ; $5395: $49
	xor  e                                           ; $5396: $ab
	adc  $ff                                         ; $5397: $ce $ff
	cp   $ba                                         ; $5399: $fe $ba
	xor  e                                           ; $539b: $ab
	sub  l                                           ; $539c: $95
	ld   de, $1211                                   ; $539d: $11 $11 $12
	ld   e, c                                        ; $53a0: $59
	cp   e                                           ; $53a1: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53a2: $cf
	rst  $38                                         ; $53a3: $ff
	cp   $99                                         ; $53a4: $fe $99
	sbc  d                                           ; $53a6: $9a
	sub  h                                           ; $53a7: $94
	ld   de, $1311                                   ; $53a8: $11 $11 $13
	ld   a, d                                        ; $53ab: $7a
	cp   e                                           ; $53ac: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53ad: $cf
	rst  $38                                         ; $53ae: $ff
	db   $fd                                         ; $53af: $fd
	sbc  d                                           ; $53b0: $9a
	sbc  d                                           ; $53b1: $9a
	add  h                                           ; $53b2: $84
	ld   de, $1411                                   ; $53b3: $11 $11 $14
	adc  d                                           ; $53b6: $8a
	cp   d                                           ; $53b7: $ba
	rst  JumpTable                                         ; $53b8: $df
	rst  $38                                         ; $53b9: $ff
	db   $fc                                         ; $53ba: $fc
	sbc  d                                           ; $53bb: $9a
	sbc  d                                           ; $53bc: $9a
	ld   [hl], e                                     ; $53bd: $73
	ld   de, $0511                                   ; $53be: $11 $11 $05
	sbc  d                                           ; $53c1: $9a
	xor  d                                           ; $53c2: $aa
	rst  JumpTable                                         ; $53c3: $df
	rst  $38                                         ; $53c4: $ff
	ei                                               ; $53c5: $fb
	adc  d                                           ; $53c6: $8a
	xor  d                                           ; $53c7: $aa
	ld   h, d                                        ; $53c8: $62
	ld   de, $1611                                   ; $53c9: $11 $11 $16
	xor  d                                           ; $53cc: $aa
	sbc  h                                           ; $53cd: $9c
	rst  $28                                         ; $53ce: $ef
	rst  $38                                         ; $53cf: $ff
	ld   a, [$baaa]                                  ; $53d0: $fa $aa $ba
	ld   d, c                                        ; $53d3: $51
	ld   de, $3711                                   ; $53d4: $11 $11 $37
	sbc  d                                           ; $53d7: $9a
	xor  e                                           ; $53d8: $ab
	rst  $38                                         ; $53d9: $ff
	rst  $38                                         ; $53da: $ff
	ret  c                                           ; $53db: $d8

	sbc  d                                           ; $53dc: $9a
	xor  c                                           ; $53dd: $a9
	ld   b, c                                        ; $53de: $41
	ld   de, $4811                                   ; $53df: $11 $11 $48
	sbc  c                                           ; $53e2: $99
	sbc  h                                           ; $53e3: $9c
	rst  $38                                         ; $53e4: $ff
	rst  $38                                         ; $53e5: $ff
	ret                                              ; $53e6: $c9


	xor  e                                           ; $53e7: $ab
	ret  z                                           ; $53e8: $c8

	ld   hl, $1111                                   ; $53e9: $21 $11 $11
	ld   e, c                                        ; $53ec: $59
	adc  b                                           ; $53ed: $88
	sbc  [hl]                                        ; $53ee: $9e
	rst  $38                                         ; $53ef: $ff
	rst  $38                                         ; $53f0: $ff
	cp   c                                           ; $53f1: $b9
	xor  e                                           ; $53f2: $ab
	cp   b                                           ; $53f3: $b8
	ld   hl, $1111                                   ; $53f4: $21 $11 $11
	ld   l, c                                        ; $53f7: $69
	sbc  b                                           ; $53f8: $98
	cp   a                                           ; $53f9: $bf
	rst  $38                                         ; $53fa: $ff
	rst  $38                                         ; $53fb: $ff
	xor  c                                           ; $53fc: $a9
	cp   h                                           ; $53fd: $bc
	or   a                                           ; $53fe: $b7
	ld   de, $1311                                   ; $53ff: $11 $11 $13
	ld   a, c                                        ; $5402: $79
	ld   a, b                                        ; $5403: $78
	xor  a                                           ; $5404: $af
	rst  $38                                         ; $5405: $ff
	cp   $98                                         ; $5406: $fe $98
	cp   l                                           ; $5408: $bd
	add  $11                                         ; $5409: $c6 $11
	ld   de, $7814                                   ; $540b: $11 $14 $78
	adc  d                                           ; $540e: $8a
	rst  $38                                         ; $540f: $ff
	rst  $38                                         ; $5410: $ff

Call_0d3_5411:
	pop  af                                          ; $5411: $f1
	ld   de, $ff16                                   ; $5412: $11 $16 $ff
	ld   h, c                                        ; $5415: $61
	ld   d, $ff                                      ; $5416: $16 $ff
	rst  $38                                         ; $5418: $ff
	sub  [hl]                                        ; $5419: $96
	cp   a                                           ; $541a: $bf
	push af                                          ; $541b: $f5
	ld   de, $cf11                                   ; $541c: $11 $11 $cf
	rst  $38                                         ; $541f: $ff
	ld   h, c                                        ; $5420: $61
	sbc  a                                           ; $5421: $9f
	rst  $38                                         ; $5422: $ff
	add  d                                           ; $5423: $82
	ld   e, a                                        ; $5424: $5f
	rst  $38                                         ; $5425: $ff
	ld   de, $1f11                                   ; $5426: $11 $11 $1f
	rst  $38                                         ; $5429: $ff
	pop  af                                          ; $542a: $f1
	dec  e                                           ; $542b: $1d
	rst  $38                                         ; $542c: $ff
	pop  af                                          ; $542d: $f1
	dec  d                                           ; $542e: $15
	rst  $38                                         ; $542f: $ff
	or   c                                           ; $5430: $b1
	ld   de, rAUD1LEN                                   ; $5431: $11 $11 $ff
	rst  $38                                         ; $5434: $ff
	ld   de, $f7af                                   ; $5435: $11 $af $f7
	inc  d                                           ; $5438: $14
	cp   a                                           ; $5439: $bf
	ld   hl, sp+$11                                  ; $543a: $f8 $11
	ld   de, $ff1f                                   ; $543c: $11 $1f $ff
	db   $f4                                         ; $543f: $f4
	rla                                              ; $5440: $17
	rst  $38                                         ; $5441: $ff
	ld   b, c                                        ; $5442: $41
	adc  a                                           ; $5443: $8f
	rst  $38                                         ; $5444: $ff
	ld   sp, $1111                                   ; $5445: $31 $11 $11
	rst  $38                                         ; $5448: $ff
	rst  $38                                         ; $5449: $ff
	ld   sp, $f94b                                   ; $544a: $31 $4b $f9
	ld   c, l                                        ; $544d: $4d
	rst  $38                                         ; $544e: $ff
	pop  af                                          ; $544f: $f1
	ld   de, $1f11                                   ; $5450: $11 $11 $1f
	rst  $38                                         ; $5453: $ff
	pop  af                                          ; $5454: $f1
	inc  de                                          ; $5455: $13
	rst  $38                                         ; $5456: $ff
	ld   [hl], e                                     ; $5457: $73
	xor  a                                           ; $5458: $af
	rst  $38                                         ; $5459: $ff
	ld   de, $1111                                   ; $545a: $11 $11 $11
	rst  $38                                         ; $545d: $ff
	rst  $38                                         ; $545e: $ff
	ld   de, $f71b                                   ; $545f: $11 $1b $f7
	sbc  l                                           ; $5462: $9d
	rst  $38                                         ; $5463: $ff
	pop  af                                          ; $5464: $f1
	ld   de, $1f11                                   ; $5465: $11 $11 $1f
	rst  $38                                         ; $5468: $ff
	pop  af                                          ; $5469: $f1
	ld   de, $daef                                   ; $546a: $11 $ef $da
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $546d: $cf
	db   $fc                                         ; $546e: $fc
	ld   de, $1111                                   ; $546f: $11 $11 $11
	rst  $38                                         ; $5472: $ff
	rst  $38                                         ; $5473: $ff
	ld   [hl], c                                     ; $5474: $71
	add  hl, de                                      ; $5475: $19
	rst  $38                                         ; $5476: $ff
	jp   z, $c3ce                                    ; $5477: $ca $ce $c3

	ld   de, $1f11                                   ; $547a: $11 $11 $1f
	rst  $38                                         ; $547d: $ff
	db   $f4                                         ; $547e: $f4
	ld   de, $fd9f                                   ; $547f: $11 $9f $fd
	sbc  e                                           ; $5482: $9b
	cp   $41                                         ; $5483: $fe $41
	ld   de, rAUD1LEN                                   ; $5485: $11 $11 $ff
	rst  $38                                         ; $5488: $ff
	ld   h, c                                        ; $5489: $61
	ld   d, $ff                                      ; $548a: $16 $ff
	db   $fd                                         ; $548c: $fd
	sbc  $93                                         ; $548d: $de $93
	ld   de, $1f11                                   ; $548f: $11 $11 $1f
	rst  $38                                         ; $5492: $ff
	ld   sp, hl                                      ; $5493: $f9
	ld   de, $fdaf                                   ; $5494: $11 $af $fd
	ld   l, c                                        ; $5497: $69
	cp   $61                                         ; $5498: $fe $61
	ld   de, $df11                                   ; $549a: $11 $11 $df
	rst  $38                                         ; $549d: $ff
	pop  bc                                          ; $549e: $c1
	dec  d                                           ; $549f: $15
	rst  $38                                         ; $54a0: $ff
	rst  $30                                         ; $54a1: $f7
	ld   a, e                                        ; $54a2: $7b
	ret                                              ; $54a3: $c9


	ld   de, $1a11                                   ; $54a4: $11 $11 $1a

Jump_0d3_54a7:
	rst  $38                                         ; $54a7: $ff
	rst  $38                                         ; $54a8: $ff
	ld   de, $ff4f                                   ; $54a9: $11 $4f $ff
	ld   h, [hl]                                     ; $54ac: $66
	xor  e                                           ; $54ad: $ab
	and  d                                           ; $54ae: $a2
	ld   de, $1f11                                   ; $54af: $11 $11 $1f
	rst  $38                                         ; $54b2: $ff
	pop  af                                          ; $54b3: $f1
	ld   de, $fcff                                   ; $54b4: $11 $ff $fc
	ld   a, [hl]                                     ; $54b7: $7e
	sub  [hl]                                        ; $54b8: $96
	ld   sp, $1111                                   ; $54b9: $31 $11 $11
	rst  $38                                         ; $54bc: $ff
	rst  $38                                         ; $54bd: $ff
	ld   d, c                                        ; $54be: $51
	rra                                              ; $54bf: $1f
	rst  $38                                         ; $54c0: $ff
	cp   c                                           ; $54c1: $b9
	ei                                               ; $54c2: $fb
	add  c                                           ; $54c3: $81
	ld   de, $1f11                                   ; $54c4: $11 $11 $1f
	rst  $38                                         ; $54c7: $ff
	push af                                          ; $54c8: $f5
	ld   de, $f9ff                                   ; $54c9: $11 $ff $f9
	ld   l, h                                        ; $54cc: $6c
	adc  e                                           ; $54cd: $8b
	ld   b, c                                        ; $54ce: $41
	ld   de, rAUD1LEN                                   ; $54cf: $11 $11 $ff
	rst  $38                                         ; $54d2: $ff
	pop  hl                                          ; $54d3: $e1
	ld   e, $af                                      ; $54d4: $1e $af
	db   $db                                         ; $54d6: $db
	ld   a, [$1161]                                  ; $54d7: $fa $61 $11
	ld   de, $ff1f                                   ; $54da: $11 $1f $ff
	rst  $38                                         ; $54dd: $ff
	ld   de, $fdd7                                   ; $54de: $11 $d7 $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54e1: $cf
	halt                                             ; $54e2: $76
	ld   de, $1111                                   ; $54e3: $11 $11 $11
	rst  $38                                         ; $54e6: $ff
	rst  $38                                         ; $54e7: $ff
	pop  af                                          ; $54e8: $f1
	add  hl, sp                                      ; $54e9: $39
	ld   e, d                                        ; $54ea: $5a
	xor  a                                           ; $54eb: $af
	db   $fd                                         ; $54ec: $fd
	ld   d, c                                        ; $54ed: $51
	ld   de, $1f11                                   ; $54ee: $11 $11 $1f
	rst  $38                                         ; $54f1: $ff
	rst  $38                                         ; $54f2: $ff
	dec  [hl]                                        ; $54f3: $35
	adc  b                                           ; $54f4: $88
	ld   h, l                                        ; $54f5: $65
	rst  $38                                         ; $54f6: $ff
	ld   a, [$1111]                                  ; $54f7: $fa $11 $11
	ld   de, $ffef                                   ; $54fa: $11 $ef $ff
	ld   a, [$12b7]                                  ; $54fd: $fa $b7 $12
	ld   l, a                                        ; $5500: $6f
	rst  $38                                         ; $5501: $ff
	pop  bc                                          ; $5502: $c1
	ld   de, $1c11                                   ; $5503: $11 $11 $1c
	rst  $38                                         ; $5506: $ff
	rst  $38                                         ; $5507: $ff
	xor  l                                           ; $5508: $ad
	sub  d                                           ; $5509: $92
	dec  d                                           ; $550a: $15
	rst  $38                                         ; $550b: $ff
	ld   hl, sp+$11                                  ; $550c: $f8 $11
	ld   de, $cf11                                   ; $550e: $11 $11 $cf
	rst  $38                                         ; $5511: $ff
	rst  $38                                         ; $5512: $ff
	or   $11                                         ; $5513: $f6 $11
	cp   a                                           ; $5515: $bf
	rst  $38                                         ; $5516: $ff
	ld   d, c                                        ; $5517: $51
	ld   de, $1f11                                   ; $5518: $11 $11 $1f
	rst  $38                                         ; $551b: $ff
	rst  $38                                         ; $551c: $ff
	rst  $38                                         ; $551d: $ff
	ld   sp, $ff18                                   ; $551e: $31 $18 $ff
	db   $f4                                         ; $5521: $f4
	ld   de, $1111                                   ; $5522: $11 $11 $11
	rst  $38                                         ; $5525: $ff
	rst  $38                                         ; $5526: $ff
	rst  $38                                         ; $5527: $ff
	pop  af                                          ; $5528: $f1
	ld   de, $ffef                                   ; $5529: $11 $ef $ff
	ld   de, $1111                                   ; $552c: $11 $11 $11
	ccf                                              ; $552f: $3f
	rst  $38                                         ; $5530: $ff
	rst  $38                                         ; $5531: $ff
	ei                                               ; $5532: $fb
	ld   de, $ff1f                                   ; $5533: $11 $1f $ff
	pop  af                                          ; $5536: $f1
	ld   de, $1911                                   ; $5537: $11 $11 $19
	rst  $38                                         ; $553a: $ff
	rst  $38                                         ; $553b: $ff
	rst  $38                                         ; $553c: $ff
	ld   de, rAUD1LEN                                   ; $553d: $11 $11 $ff
	db   $fc                                         ; $5540: $fc
	ld   de, $1111                                   ; $5541: $11 $11 $11
	rst  $38                                         ; $5544: $ff
	rst  $38                                         ; $5545: $ff
	rst  $38                                         ; $5546: $ff
	pop  af                                          ; $5547: $f1
	ld   de, $ffff                                   ; $5548: $11 $ff $ff
	ld   de, $1111                                   ; $554b: $11 $11 $11
	cpl                                              ; $554e: $2f
	rst  $38                                         ; $554f: $ff
	rst  $38                                         ; $5550: $ff
	ldh  a, [c]                                      ; $5551: $f2
	ld   de, $ff4f                                   ; $5552: $11 $4f $ff
	or   c                                           ; $5555: $b1
	ld   de, $1f11                                   ; $5556: $11 $11 $1f
	rst  $38                                         ; $5559: $ff
	rst  $38                                         ; $555a: $ff
	rst  $38                                         ; $555b: $ff
	ld   de, $ff1d                                   ; $555c: $11 $1d $ff
	pop  af                                          ; $555f: $f1
	ld   de, $1111                                   ; $5560: $11 $11 $11
	rst  $38                                         ; $5563: $ff
	rst  $38                                         ; $5564: $ff
	rst  $38                                         ; $5565: $ff
	ld   de, $ff16                                   ; $5566: $11 $16 $ff
	db   $ec                                         ; $5569: $ec
	ld   de, $1311                                   ; $556a: $11 $11 $13
	rst  $38                                         ; $556d: $ff
	rst  $38                                         ; $556e: $ff
	rst  $38                                         ; $556f: $ff
	ld   d, c                                        ; $5570: $51
	ld   de, $dfff                                   ; $5571: $11 $ff $df
	ld   h, c                                        ; $5574: $61
	ld   de, $fd16                                   ; $5575: $11 $16 $fd
	rst  $38                                         ; $5578: $ff
	rst  $38                                         ; $5579: $ff
	ld   d, c                                        ; $557a: $51
	ld   de, $ff8c                                   ; $557b: $11 $8c $ff
	ld   h, c                                        ; $557e: $61
	ld   de, rAUD1LEN                                   ; $557f: $11 $11 $ff
	rst  $38                                         ; $5582: $ff
	rst  $38                                         ; $5583: $ff
	pop  af                                          ; $5584: $f1
	ld   de, $ff42                                   ; $5585: $11 $42 $ff
	pop  bc                                          ; $5588: $c1
	ld   de, $6e11                                   ; $5589: $11 $11 $6e
	rst  $38                                         ; $558c: $ff
	rst  $38                                         ; $558d: $ff
	pop  bc                                          ; $558e: $c1
	ld   de, $ff1a                                   ; $558f: $11 $1a $ff
	pop  bc                                          ; $5592: $c1
	ld   de, $af11                                   ; $5593: $11 $11 $af
	rst  $38                                         ; $5596: $ff
	rst  $38                                         ; $5597: $ff

Jump_0d3_5598:
	jp   nc, Jump_0d3_4811                           ; $5598: $d2 $11 $48

	rst  $38                                         ; $559b: $ff
	add  c                                           ; $559c: $81
	ld   de, $af11                                   ; $559d: $11 $11 $af
	rst  $38                                         ; $55a0: $ff
	rst  $38                                         ; $55a1: $ff
	pop  af                                          ; $55a2: $f1
	ld   de, $fd6f                                   ; $55a3: $11 $6f $fd
	ld   d, c                                        ; $55a6: $51
	ld   de, rAUD1LEN                                   ; $55a7: $11 $11 $ff
	rst  $38                                         ; $55aa: $ff
	rst  $38                                         ; $55ab: $ff
	sub  c                                           ; $55ac: $91
	ld   de, $ff23                                   ; $55ad: $11 $23 $ff
	ld   [hl], c                                     ; $55b0: $71
	ld   de, $6f11                                   ; $55b1: $11 $11 $6f
	rst  $38                                         ; $55b4: $ff
	rst  $38                                         ; $55b5: $ff
	or   c                                           ; $55b6: $b1
	ld   de, $ff18                                   ; $55b7: $11 $18 $ff
	ld   h, c                                        ; $55ba: $61
	ld   de, $9f11                                   ; $55bb: $11 $11 $9f
	rst  $38                                         ; $55be: $ff
	rst  $38                                         ; $55bf: $ff
	add  [hl]                                        ; $55c0: $86
	ld   de, $ff16                                   ; $55c1: $11 $16 $ff
	ld   de, $1111                                   ; $55c4: $11 $11 $11
	ld   a, a                                        ; $55c7: $7f
	rst  $38                                         ; $55c8: $ff
	rst  $38                                         ; $55c9: $ff
	db   $f4                                         ; $55ca: $f4
	ld   de, $f81a                                   ; $55cb: $11 $1a $f8
	ld   de, $1111                                   ; $55ce: $11 $11 $11
	rst  $38                                         ; $55d1: $ff
	rst  $38                                         ; $55d2: $ff
	rst  $38                                         ; $55d3: $ff
	pop  bc                                          ; $55d4: $c1
	ld   de, $8649                                   ; $55d5: $11 $49 $86
	ld   de, $1411                                   ; $55d8: $11 $11 $14
	rst  JumpTable                                         ; $55db: $df
	rst  $38                                         ; $55dc: $ff
	rst  $38                                         ; $55dd: $ff
	ld   b, c                                        ; $55de: $41
	ld   de, $735b                                   ; $55df: $11 $5b $73
	ld   de, $1411                                   ; $55e2: $11 $11 $14
	rst  $38                                         ; $55e5: $ff
	rst  $38                                         ; $55e6: $ff
	rst  $38                                         ; $55e7: $ff
	ld   b, c                                        ; $55e8: $41
	ld   de, $1267                                   ; $55e9: $11 $67 $12
	ld   de, $1411                                   ; $55ec: $11 $11 $14
	rst  $38                                         ; $55ef: $ff
	rst  $38                                         ; $55f0: $ff
	rst  $38                                         ; $55f1: $ff
	ld   de, $3561                                   ; $55f2: $11 $61 $35
	ld   de, $1111                                   ; $55f5: $11 $11 $11
	inc  e                                           ; $55f8: $1c
	rst  $38                                         ; $55f9: $ff
	rst  $38                                         ; $55fa: $ff
	ei                                               ; $55fb: $fb
	ld   sp, $1411                                   ; $55fc: $31 $11 $14
	ld   b, c                                        ; $55ff: $41
	ld   de, $1f11                                   ; $5600: $11 $11 $1f
	rst  $38                                         ; $5603: $ff
	rst  $38                                         ; $5604: $ff
	ei                                               ; $5605: $fb
	dec  h                                           ; $5606: $25
	ld   de, $1135                                   ; $5607: $11 $35 $11
	ld   de, $1f11                                   ; $560a: $11 $11 $1f
	rst  $38                                         ; $560d: $ff
	rst  $38                                         ; $560e: $ff
	ld   sp, hl                                      ; $560f: $f9
	jp   $8113                                       ; $5610: $c3 $13 $81


	ld   de, $1111                                   ; $5613: $11 $11 $11
	db   $db                                         ; $5616: $db
	rst  $38                                         ; $5617: $ff
	rst  $38                                         ; $5618: $ff
	rst  $38                                         ; $5619: $ff
	and  c                                           ; $561a: $a1
	ld   d, $11                                      ; $561b: $16 $11
	ld   de, $1111                                   ; $561d: $11 $11 $11
	adc  a                                           ; $5620: $8f
	rst  $38                                         ; $5621: $ff
	rst  $38                                         ; $5622: $ff
	ld   a, [$5211]                                  ; $5623: $fa $11 $52
	ld   [de], a                                     ; $5626: $12
	ld   de, $1311                                   ; $5627: $11 $11 $13
	sbc  a                                           ; $562a: $9f
	rst  $38                                         ; $562b: $ff
	rst  $38                                         ; $562c: $ff
	xor  c                                           ; $562d: $a9
	inc  de                                          ; $562e: $13
	ld   de, $11a1                                   ; $562f: $11 $a1 $11
	ld   de, $df11                                   ; $5632: $11 $11 $df
	rst  $38                                         ; $5635: $ff
	rst  $38                                         ; $5636: $ff
	jp   hl                                          ; $5637: $e9


	jp   Jump_0d3_5214                               ; $5638: $c3 $14 $52


	ld   de, $1311                                   ; $563b: $11 $11 $13
	xor  l                                           ; $563e: $ad
	rst  $38                                         ; $563f: $ff
	rst  $38                                         ; $5640: $ff
	cp   b                                           ; $5641: $b8
	pop  af                                          ; $5642: $f1
	inc  h                                           ; $5643: $24
	ld   d, [hl]                                     ; $5644: $56
	inc  de                                          ; $5645: $13
	ld   b, c                                        ; $5646: $41
	inc  de                                          ; $5647: $13
	ld   a, e                                        ; $5648: $7b
	cp   a                                           ; $5649: $bf
	rst  $38                                         ; $564a: $ff
	ld   sp, hl                                      ; $564b: $f9
	xor  [hl]                                        ; $564c: $ae
	ld   de, $3177                                   ; $564d: $11 $77 $31
	ld   h, [hl]                                     ; $5650: $66
	ld   de, $ac3a                                   ; $5651: $11 $3a $ac
	rst  $38                                         ; $5654: $ff
	ld   sp, hl                                      ; $5655: $f9
	jp   hl                                          ; $5656: $e9


	add  l                                           ; $5657: $85
	jr   @-$77                                       ; $5658: $18 $87

	inc  h                                           ; $565a: $24
	add  d                                           ; $565b: $82
	ld   [hl+], a                                    ; $565c: $22
	adc  l                                           ; $565d: $8d
	ld   a, [hl]                                     ; $565e: $7e
	db   $fd                                         ; $565f: $fd
	adc  d                                           ; $5660: $8a
	rst  ToBoot                                         ; $5661: $c7
	ld   b, l                                        ; $5662: $45
	sbc  [hl]                                        ; $5663: $9e
	ld   b, c                                        ; $5664: $41
	xor  e                                           ; $5665: $ab
	ld   b, e                                        ; $5666: $43
	ld   l, b                                        ; $5667: $68
	adc  b                                           ; $5668: $88
	cp   d                                           ; $5669: $ba
	call $9964                                       ; $566a: $cd $64 $99
	sbc  b                                           ; $566d: $98
	rst  JumpTable                                         ; $566e: $df
	ld   [hl], e                                     ; $566f: $73
	ld   e, b                                        ; $5670: $58
	ld   h, e                                        ; $5671: $63
	xor  b                                           ; $5672: $a8
	sbc  d                                           ; $5673: $9a
	ld   d, a                                        ; $5674: $57
	sub  l                                           ; $5675: $95
	halt                                             ; $5676: $76
	sbc  l                                           ; $5677: $9d
	db   $dd                                         ; $5678: $dd
	adc  d                                           ; $5679: $8a
	halt                                             ; $567a: $76
	ld   a, c                                        ; $567b: $79
	ld   a, c                                        ; $567c: $79
	sub  l                                           ; $567d: $95
	add  [hl]                                        ; $567e: $86
	halt                                             ; $567f: $76
	ld   e, d                                        ; $5680: $5a
	sub  [hl]                                        ; $5681: $96
	cp   c                                           ; $5682: $b9
	xor  d                                           ; $5683: $aa
	adc  l                                           ; $5684: $8d
	sub  [hl]                                        ; $5685: $96
	adc  c                                           ; $5686: $89
	ld   [hl], a                                     ; $5687: $77
	ld   a, h                                        ; $5688: $7c
	ld   [hl], d                                     ; $5689: $72
	adc  b                                           ; $568a: $88
	or   a                                           ; $568b: $b7
	ld   e, d                                        ; $568c: $5a
	or   l                                           ; $568d: $b5
	ld   a, e                                        ; $568e: $7b
	adc  c                                           ; $568f: $89
	sbc  h                                           ; $5690: $9c
	ld   e, d                                        ; $5691: $5a
	and  [hl]                                        ; $5692: $a6
	sub  [hl]                                        ; $5693: $96
	sbc  c                                           ; $5694: $99
	sub  a                                           ; $5695: $97
	di                                               ; $5696: $f3
	ld   c, d                                        ; $5697: $4a
	ld   c, e                                        ; $5698: $4b
	add  hl, sp                                      ; $5699: $39
	sub  $7a                                         ; $569a: $d6 $7a
	jp   c, $c945                                    ; $569c: $da $45 $c9

	ld   a, d                                        ; $569f: $7a
	sbc  [hl]                                        ; $56a0: $9e
	ld   d, h                                        ; $56a1: $54
	push bc                                          ; $56a2: $c5
	ld   e, b                                        ; $56a3: $58
	ld   e, c                                        ; $56a4: $59
	ld   h, l                                        ; $56a5: $65
	db   $e4                                         ; $56a6: $e4
	sbc  e                                           ; $56a7: $9b
	ld   e, h                                        ; $56a8: $5c
	ld   e, d                                        ; $56a9: $5a
	and  [hl]                                        ; $56aa: $a6
	push bc                                          ; $56ab: $c5
	sbc  l                                           ; $56ac: $9d
	ld   h, h                                        ; $56ad: $64
	and  h                                           ; $56ae: $a4
	sub  [hl]                                        ; $56af: $96
	ld   a, [hl]                                     ; $56b0: $7e
	dec  hl                                          ; $56b1: $2b
	ld   [hl], l                                     ; $56b2: $75
	cp   b                                           ; $56b3: $b8
	and  [hl]                                        ; $56b4: $a6
	sbc  h                                           ; $56b5: $9c
	ld   d, l                                        ; $56b6: $55
	sbc  b                                           ; $56b7: $98
	sub  [hl]                                        ; $56b8: $96
	sbc  b                                           ; $56b9: $98
	ld   [hl], a                                     ; $56ba: $77
	add  [hl]                                        ; $56bb: $86
	ld   [hl], a                                     ; $56bc: $77
	adc  d                                           ; $56bd: $8a
	sbc  d                                           ; $56be: $9a
	ld   a, c                                        ; $56bf: $79
	ld   l, b                                        ; $56c0: $68
	ld   e, e                                        ; $56c1: $5b
	sub  a                                           ; $56c2: $97
	sub  a                                           ; $56c3: $97
	or   l                                           ; $56c4: $b5
	add  a                                           ; $56c5: $87
	sub  a                                           ; $56c6: $97
	sub  a                                           ; $56c7: $97
	sub  a                                           ; $56c8: $97
	ld   e, d                                        ; $56c9: $5a
	ld   a, d                                        ; $56ca: $7a
	ld   b, a                                        ; $56cb: $47
	sbc  b                                           ; $56cc: $98
	adc  c                                           ; $56cd: $89
	ld   a, b                                        ; $56ce: $78
	ld   h, l                                        ; $56cf: $65
	jp   nz, Jump_0d3_57ba                           ; $56d0: $c2 $ba $57

	xor  b                                           ; $56d3: $a8
	ld   [hl], a                                     ; $56d4: $77
	ld   l, l                                        ; $56d5: $6d
	ld   e, d                                        ; $56d6: $5a
	sub  a                                           ; $56d7: $97
	call nz, Call_0d3_5b87                           ; $56d8: $c4 $87 $5b
	ld   [hl], a                                     ; $56db: $77
	xor  c                                           ; $56dc: $a9
	add  [hl]                                        ; $56dd: $86
	ld   h, a                                        ; $56de: $67
	add  a                                           ; $56df: $87
	cp   c                                           ; $56e0: $b9
	ld   a, e                                        ; $56e1: $7b
	ld   [hl], a                                     ; $56e2: $77
	adc  b                                           ; $56e3: $88
	sub  a                                           ; $56e4: $97
	sbc  e                                           ; $56e5: $9b
	ld   c, c                                        ; $56e6: $49
	ld   [hl], a                                     ; $56e7: $77
	add  [hl]                                        ; $56e8: $86
	sbc  c                                           ; $56e9: $99
	ld   a, d                                        ; $56ea: $7a
	add  a                                           ; $56eb: $87
	or   [hl]                                        ; $56ec: $b6
	sbc  b                                           ; $56ed: $98
	ld   a, c                                        ; $56ee: $79
	sbc  b                                           ; $56ef: $98
	sbc  b                                           ; $56f0: $98
	ld   [hl], l                                     ; $56f1: $75
	ld   a, b                                        ; $56f2: $78
	ld   a, b                                        ; $56f3: $78
	adc  c                                           ; $56f4: $89
	adc  c                                           ; $56f5: $89
	ld   e, b                                        ; $56f6: $58
	and  [hl]                                        ; $56f7: $a6
	ld   l, h                                        ; $56f8: $6c
	ld   [hl], a                                     ; $56f9: $77
	sub  l                                           ; $56fa: $95
	or   [hl]                                        ; $56fb: $b6
	ld   l, d                                        ; $56fc: $6a
	adc  b                                           ; $56fd: $88
	add  a                                           ; $56fe: $87
	adc  b                                           ; $56ff: $88
	ld   l, b                                        ; $5700: $68
	sbc  c                                           ; $5701: $99
	ld   a, c                                        ; $5702: $79
	ld   l, d                                        ; $5703: $6a
	ld   l, b                                        ; $5704: $68
	and  l                                           ; $5705: $a5
	and  a                                           ; $5706: $a7
	adc  d                                           ; $5707: $8a
	ld   a, c                                        ; $5708: $79
	sbc  b                                           ; $5709: $98
	and  h                                           ; $570a: $a4
	or   [hl]                                        ; $570b: $b6
	ld   l, c                                        ; $570c: $69
	adc  c                                           ; $570d: $89
	ld   c, e                                        ; $570e: $4b
	ld   h, a                                        ; $570f: $67
	xor  b                                           ; $5710: $a8
	sbc  c                                           ; $5711: $99
	ld   a, c                                        ; $5712: $79
	sub  [hl]                                        ; $5713: $96
	and  [hl]                                        ; $5714: $a6
	adc  c                                           ; $5715: $89
	halt                                             ; $5716: $76
	or   l                                           ; $5717: $b5
	sbc  e                                           ; $5718: $9b
	ld   e, d                                        ; $5719: $5a
	ld   [hl], a                                     ; $571a: $77
	sub  [hl]                                        ; $571b: $96
	adc  d                                           ; $571c: $8a
	ld   a, c                                        ; $571d: $79
	add  [hl]                                        ; $571e: $86
	call nz, Call_0d3_4b7a                           ; $571f: $c4 $7a $4b
	add  [hl]                                        ; $5722: $86
	sub  a                                           ; $5723: $97
	ld   a, d                                        ; $5724: $7a
	add  a                                           ; $5725: $87
	adc  c                                           ; $5726: $89
	ld   a, b                                        ; $5727: $78
	or   l                                           ; $5728: $b5
	sub  [hl]                                        ; $5729: $96
	ld   a, d                                        ; $572a: $7a
	ld   h, a                                        ; $572b: $67
	and  [hl]                                        ; $572c: $a6
	sbc  c                                           ; $572d: $99
	ld   c, h                                        ; $572e: $4c
	ld   c, d                                        ; $572f: $4a
	or   l                                           ; $5730: $b5
	adc  d                                           ; $5731: $8a
	add  [hl]                                        ; $5732: $86
	and  h                                           ; $5733: $a4
	or   [hl]                                        ; $5734: $b6
	ld   a, b                                        ; $5735: $78
	ld   a, e                                        ; $5736: $7b
	ld   e, b                                        ; $5737: $58
	adc  b                                           ; $5738: $88
	ld   a, c                                        ; $5739: $79
	ld   a, d                                        ; $573a: $7a
	ld   l, c                                        ; $573b: $69
	add  l                                           ; $573c: $85
	and  a                                           ; $573d: $a7
	ld   a, c                                        ; $573e: $79
	add  [hl]                                        ; $573f: $86
	or   [hl]                                        ; $5740: $b6
	and  [hl]                                        ; $5741: $a6
	sub  a                                           ; $5742: $97
	sbc  b                                           ; $5743: $98
	ld   a, d                                        ; $5744: $7a
	ld   l, d                                        ; $5745: $6a
	ld   c, e                                        ; $5746: $4b
	ld   c, h                                        ; $5747: $4c
	ld   e, b                                        ; $5748: $58
	jp   $87e4                                       ; $5749: $c3 $e4 $87


	ld   a, b                                        ; $574c: $78
	sbc  b                                           ; $574d: $98
	adc  b                                           ; $574e: $88
	add  a                                           ; $574f: $87
	ld   a, d                                        ; $5750: $7a
	ld   c, e                                        ; $5751: $4b
	sub  [hl]                                        ; $5752: $96
	sub  [hl]                                        ; $5753: $96
	xor  b                                           ; $5754: $a8
	ld   l, e                                        ; $5755: $6b
	ld   a, b                                        ; $5756: $78
	ld   a, c                                        ; $5757: $79
	halt                                             ; $5758: $76
	add  a                                           ; $5759: $87
	push de                                          ; $575a: $d5
	ld   a, e                                        ; $575b: $7b
	ld   d, a                                        ; $575c: $57
	and  [hl]                                        ; $575d: $a6
	sub  a                                           ; $575e: $97
	sbc  c                                           ; $575f: $99
	ld   e, d                                        ; $5760: $5a
	ld   l, c                                        ; $5761: $69
	sub  l                                           ; $5762: $95
	or   l                                           ; $5763: $b5
	and  a                                           ; $5764: $a7
	ld   a, d                                        ; $5765: $7a
	ld   e, c                                        ; $5766: $59
	sbc  d                                           ; $5767: $9a
	ld   l, b                                        ; $5768: $68
	ld   a, c                                        ; $5769: $79
	ld   [hl], a                                     ; $576a: $77
	xor  b                                           ; $576b: $a8
	ld   a, c                                        ; $576c: $79
	sub  h                                           ; $576d: $94
	db   $d3                                         ; $576e: $d3
	xor  b                                           ; $576f: $a8
	ld   l, c                                        ; $5770: $69
	ld   e, e                                        ; $5771: $5b
	ld   c, e                                        ; $5772: $4b
	add  l                                           ; $5773: $85
	or   [hl]                                        ; $5774: $b6
	or   [hl]                                        ; $5775: $b6
	ld   a, e                                        ; $5776: $7b
	ld   e, d                                        ; $5777: $5a
	ld   [hl], a                                     ; $5778: $77
	sub  a                                           ; $5779: $97
	sub  a                                           ; $577a: $97
	and  [hl]                                        ; $577b: $a6
	sub  a                                           ; $577c: $97
	sbc  c                                           ; $577d: $99
	adc  c                                           ; $577e: $89
	ld   l, d                                        ; $577f: $6a
	ld   l, d                                        ; $5780: $6a
	ld   a, b                                        ; $5781: $78
	ld   l, c                                        ; $5782: $69
	ld   [hl], a                                     ; $5783: $77
	and  [hl]                                        ; $5784: $a6
	sub  l                                           ; $5785: $95

Jump_0d3_5786:
	sub  [hl]                                        ; $5786: $96
	sbc  c                                           ; $5787: $99
	sbc  b                                           ; $5788: $98
	ld   a, c                                        ; $5789: $79
	ld   a, c                                        ; $578a: $79
	ld   l, d                                        ; $578b: $6a
	ld   [hl], a                                     ; $578c: $77
	ld   a, c                                        ; $578d: $79
	adc  c                                           ; $578e: $89
	ld   l, b                                        ; $578f: $68
	add  [hl]                                        ; $5790: $86
	and  e                                           ; $5791: $a3
	push de                                          ; $5792: $d5
	sbc  b                                           ; $5793: $98
	ld   l, h                                        ; $5794: $6c
	ld   c, d                                        ; $5795: $4a
	ld   a, b                                        ; $5796: $78
	ld   a, c                                        ; $5797: $79
	adc  b                                           ; $5798: $88
	ld   a, b                                        ; $5799: $78
	sub  a                                           ; $579a: $97
	adc  c                                           ; $579b: $89
	sub  h                                           ; $579c: $94
	or   a                                           ; $579d: $b7
	ld   a, d                                        ; $579e: $7a
	ld   a, b                                        ; $579f: $78
	ld   a, b                                        ; $57a0: $78
	ld   a, c                                        ; $57a1: $79
	ld   l, d                                        ; $57a2: $6a
	ld   [hl], a                                     ; $57a3: $77
	sub  a                                           ; $57a4: $97
	sub  [hl]                                        ; $57a5: $96
	sbc  c                                           ; $57a6: $99
	ld   l, d                                        ; $57a7: $6a
	sbc  b                                           ; $57a8: $98
	ld   [hl], a                                     ; $57a9: $77
	and  [hl]                                        ; $57aa: $a6
	adc  c                                           ; $57ab: $89
	ld   a, d                                        ; $57ac: $7a
	ld   a, b                                        ; $57ad: $78
	sub  [hl]                                        ; $57ae: $96
	ld   a, c                                        ; $57af: $79
	ld   [hl], a                                     ; $57b0: $77
	adc  b                                           ; $57b1: $88
	sub  a                                           ; $57b2: $97
	adc  b                                           ; $57b3: $88
	ld   a, b                                        ; $57b4: $78
	ld   l, c                                        ; $57b5: $69
	ld   a, b                                        ; $57b6: $78
	sub  a                                           ; $57b7: $97
	and  a                                           ; $57b8: $a7
	adc  b                                           ; $57b9: $88

Jump_0d3_57ba:
	add  a                                           ; $57ba: $87
	ld   a, b                                        ; $57bb: $78
	add  a                                           ; $57bc: $87
	adc  b                                           ; $57bd: $88
	ld   a, b                                        ; $57be: $78
	ld   a, b                                        ; $57bf: $78
	sub  a                                           ; $57c0: $97
	adc  b                                           ; $57c1: $88
	adc  c                                           ; $57c2: $89
	adc  c                                           ; $57c3: $89
	sub  [hl]                                        ; $57c4: $96
	xor  c                                           ; $57c5: $a9
	ld   e, c                                        ; $57c6: $59
	adc  b                                           ; $57c7: $88
	sub  [hl]                                        ; $57c8: $96
	and  a                                           ; $57c9: $a7
	ld   a, c                                        ; $57ca: $79
	ld   l, d                                        ; $57cb: $6a
	add  a                                           ; $57cc: $87
	and  a                                           ; $57cd: $a7
	adc  b                                           ; $57ce: $88
	adc  c                                           ; $57cf: $89
	ld   a, b                                        ; $57d0: $78
	adc  b                                           ; $57d1: $88
	sbc  b                                           ; $57d2: $98
	adc  b                                           ; $57d3: $88
	sbc  c                                           ; $57d4: $99
	adc  b                                           ; $57d5: $88
	adc  b                                           ; $57d6: $88
	adc  b                                           ; $57d7: $88
	add  a                                           ; $57d8: $87
	adc  b                                           ; $57d9: $88
	adc  b                                           ; $57da: $88
	adc  c                                           ; $57db: $89
	adc  c                                           ; $57dc: $89
	adc  c                                           ; $57dd: $89
	adc  b                                           ; $57de: $88
	adc  b                                           ; $57df: $88
	sbc  b                                           ; $57e0: $98
	adc  b                                           ; $57e1: $88
	adc  b                                           ; $57e2: $88
	adc  b                                           ; $57e3: $88
	adc  c                                           ; $57e4: $89
	adc  b                                           ; $57e5: $88
	sbc  b                                           ; $57e6: $98
	adc  c                                           ; $57e7: $89
	adc  b                                           ; $57e8: $88
	adc  b                                           ; $57e9: $88
	adc  b                                           ; $57ea: $88
	sbc  b                                           ; $57eb: $98
	adc  b                                           ; $57ec: $88
	sbc  b                                           ; $57ed: $98
	adc  b                                           ; $57ee: $88
	ld   a, c                                        ; $57ef: $79
	adc  b                                           ; $57f0: $88
	adc  b                                           ; $57f1: $88
	adc  b                                           ; $57f2: $88
	adc  c                                           ; $57f3: $89
	adc  b                                           ; $57f4: $88
	adc  b                                           ; $57f5: $88
	sbc  b                                           ; $57f6: $98
	sbc  c                                           ; $57f7: $99
	adc  b                                           ; $57f8: $88
	adc  b                                           ; $57f9: $88
	adc  b                                           ; $57fa: $88
	adc  b                                           ; $57fb: $88
	adc  b                                           ; $57fc: $88
	adc  b                                           ; $57fd: $88
	adc  b                                           ; $57fe: $88
	adc  b                                           ; $57ff: $88
	adc  b                                           ; $5800: $88
	adc  b                                           ; $5801: $88
	sbc  b                                           ; $5802: $98
	adc  b                                           ; $5803: $88
	adc  c                                           ; $5804: $89
	adc  b                                           ; $5805: $88
	add  a                                           ; $5806: $87
	adc  b                                           ; $5807: $88
	adc  c                                           ; $5808: $89
	adc  c                                           ; $5809: $89
	adc  b                                           ; $580a: $88
	adc  b                                           ; $580b: $88
	adc  b                                           ; $580c: $88
	add  a                                           ; $580d: $87
	sbc  b                                           ; $580e: $98
	sbc  c                                           ; $580f: $99
	adc  b                                           ; $5810: $88
	adc  b                                           ; $5811: $88
	sbc  b                                           ; $5812: $98
	adc  c                                           ; $5813: $89
	ld   a, c                                        ; $5814: $79
	adc  b                                           ; $5815: $88
	sbc  b                                           ; $5816: $98
	sbc  b                                           ; $5817: $98
	adc  b                                           ; $5818: $88
	adc  b                                           ; $5819: $88
	sbc  b                                           ; $581a: $98
	adc  b                                           ; $581b: $88
	adc  b                                           ; $581c: $88
	adc  c                                           ; $581d: $89
	adc  b                                           ; $581e: $88
	sbc  b                                           ; $581f: $98
	adc  b                                           ; $5820: $88
	adc  c                                           ; $5821: $89
	adc  b                                           ; $5822: $88
	adc  b                                           ; $5823: $88
	sbc  b                                           ; $5824: $98
	adc  b                                           ; $5825: $88
	adc  b                                           ; $5826: $88
	adc  b                                           ; $5827: $88
	adc  b                                           ; $5828: $88
	adc  b                                           ; $5829: $88
	adc  b                                           ; $582a: $88
	adc  b                                           ; $582b: $88
	adc  b                                           ; $582c: $88
	adc  b                                           ; $582d: $88
	adc  b                                           ; $582e: $88
	adc  b                                           ; $582f: $88
	adc  b                                           ; $5830: $88
	adc  b                                           ; $5831: $88
	adc  b                                           ; $5832: $88
	adc  b                                           ; $5833: $88
	adc  b                                           ; $5834: $88
	adc  b                                           ; $5835: $88
	adc  b                                           ; $5836: $88
	adc  b                                           ; $5837: $88
	adc  b                                           ; $5838: $88
	adc  b                                           ; $5839: $88
	adc  b                                           ; $583a: $88
	adc  b                                           ; $583b: $88
	adc  b                                           ; $583c: $88
	adc  b                                           ; $583d: $88
	adc  b                                           ; $583e: $88
	adc  b                                           ; $583f: $88
	adc  b                                           ; $5840: $88
	adc  b                                           ; $5841: $88
	adc  b                                           ; $5842: $88
	adc  b                                           ; $5843: $88
	adc  b                                           ; $5844: $88
	adc  b                                           ; $5845: $88
	adc  b                                           ; $5846: $88
	adc  b                                           ; $5847: $88
	adc  b                                           ; $5848: $88
	adc  b                                           ; $5849: $88
	adc  b                                           ; $584a: $88
	adc  b                                           ; $584b: $88
	adc  b                                           ; $584c: $88
	adc  b                                           ; $584d: $88
	adc  b                                           ; $584e: $88
	adc  b                                           ; $584f: $88
	adc  b                                           ; $5850: $88
	adc  b                                           ; $5851: $88
	adc  b                                           ; $5852: $88
	adc  b                                           ; $5853: $88
	adc  b                                           ; $5854: $88
	adc  b                                           ; $5855: $88
	adc  b                                           ; $5856: $88
	adc  b                                           ; $5857: $88
	adc  b                                           ; $5858: $88
	adc  b                                           ; $5859: $88
	adc  b                                           ; $585a: $88
	adc  b                                           ; $585b: $88
	adc  b                                           ; $585c: $88
	adc  b                                           ; $585d: $88
	adc  b                                           ; $585e: $88
	adc  b                                           ; $585f: $88
	adc  b                                           ; $5860: $88
	adc  b                                           ; $5861: $88
	adc  b                                           ; $5862: $88
	adc  b                                           ; $5863: $88

Jump_0d3_5864:
	adc  b                                           ; $5864: $88
	adc  b                                           ; $5865: $88
	adc  b                                           ; $5866: $88
	adc  b                                           ; $5867: $88
	adc  b                                           ; $5868: $88
	adc  b                                           ; $5869: $88
	adc  b                                           ; $586a: $88
	adc  b                                           ; $586b: $88
	adc  b                                           ; $586c: $88
	adc  b                                           ; $586d: $88
	adc  b                                           ; $586e: $88
	adc  b                                           ; $586f: $88
	adc  b                                           ; $5870: $88
	adc  b                                           ; $5871: $88
	adc  b                                           ; $5872: $88
	adc  b                                           ; $5873: $88
	adc  b                                           ; $5874: $88
	adc  b                                           ; $5875: $88
	adc  b                                           ; $5876: $88
	adc  b                                           ; $5877: $88
	adc  b                                           ; $5878: $88
	adc  b                                           ; $5879: $88
	adc  b                                           ; $587a: $88
	adc  b                                           ; $587b: $88
	adc  b                                           ; $587c: $88
	adc  b                                           ; $587d: $88
	adc  b                                           ; $587e: $88
	adc  b                                           ; $587f: $88
	adc  b                                           ; $5880: $88
	adc  b                                           ; $5881: $88
	adc  b                                           ; $5882: $88
	adc  b                                           ; $5883: $88
	adc  b                                           ; $5884: $88
	adc  b                                           ; $5885: $88
	adc  b                                           ; $5886: $88
	adc  b                                           ; $5887: $88
	adc  b                                           ; $5888: $88
	adc  b                                           ; $5889: $88
	adc  b                                           ; $588a: $88
	adc  b                                           ; $588b: $88
	adc  b                                           ; $588c: $88
	adc  b                                           ; $588d: $88
	adc  b                                           ; $588e: $88
	adc  b                                           ; $588f: $88
	adc  b                                           ; $5890: $88
	adc  b                                           ; $5891: $88
	adc  b                                           ; $5892: $88
	adc  b                                           ; $5893: $88
	adc  b                                           ; $5894: $88
	adc  b                                           ; $5895: $88
	adc  b                                           ; $5896: $88
	adc  b                                           ; $5897: $88
	adc  b                                           ; $5898: $88
	adc  b                                           ; $5899: $88
	adc  b                                           ; $589a: $88
	adc  b                                           ; $589b: $88
	adc  b                                           ; $589c: $88
	adc  b                                           ; $589d: $88
	adc  b                                           ; $589e: $88
	adc  b                                           ; $589f: $88
	adc  b                                           ; $58a0: $88
	adc  b                                           ; $58a1: $88
	adc  b                                           ; $58a2: $88
	adc  b                                           ; $58a3: $88
	adc  b                                           ; $58a4: $88
	adc  b                                           ; $58a5: $88
	adc  b                                           ; $58a6: $88
	adc  b                                           ; $58a7: $88
	adc  b                                           ; $58a8: $88
	adc  b                                           ; $58a9: $88
	adc  b                                           ; $58aa: $88
	adc  b                                           ; $58ab: $88
	adc  b                                           ; $58ac: $88
	adc  b                                           ; $58ad: $88
	adc  b                                           ; $58ae: $88
	adc  b                                           ; $58af: $88
	adc  b                                           ; $58b0: $88
	adc  b                                           ; $58b1: $88
	adc  b                                           ; $58b2: $88
	adc  b                                           ; $58b3: $88
	adc  b                                           ; $58b4: $88
	adc  b                                           ; $58b5: $88
	adc  b                                           ; $58b6: $88
	adc  b                                           ; $58b7: $88
	adc  b                                           ; $58b8: $88
	adc  b                                           ; $58b9: $88
	adc  b                                           ; $58ba: $88
	adc  b                                           ; $58bb: $88
	adc  b                                           ; $58bc: $88
	adc  b                                           ; $58bd: $88
	adc  b                                           ; $58be: $88
	adc  b                                           ; $58bf: $88
	adc  b                                           ; $58c0: $88
	adc  b                                           ; $58c1: $88
	adc  b                                           ; $58c2: $88
	adc  b                                           ; $58c3: $88
	adc  b                                           ; $58c4: $88
	adc  b                                           ; $58c5: $88
	adc  b                                           ; $58c6: $88
	adc  b                                           ; $58c7: $88
	adc  b                                           ; $58c8: $88
	adc  b                                           ; $58c9: $88
	adc  b                                           ; $58ca: $88
	adc  b                                           ; $58cb: $88
	adc  b                                           ; $58cc: $88
	adc  b                                           ; $58cd: $88
	adc  b                                           ; $58ce: $88
	adc  b                                           ; $58cf: $88
	adc  b                                           ; $58d0: $88
	adc  b                                           ; $58d1: $88
	adc  b                                           ; $58d2: $88
	adc  b                                           ; $58d3: $88
	adc  b                                           ; $58d4: $88
	adc  b                                           ; $58d5: $88
	adc  b                                           ; $58d6: $88
	adc  b                                           ; $58d7: $88
	adc  b                                           ; $58d8: $88
	adc  b                                           ; $58d9: $88
	adc  b                                           ; $58da: $88
	adc  b                                           ; $58db: $88
	adc  b                                           ; $58dc: $88
	adc  b                                           ; $58dd: $88
	adc  b                                           ; $58de: $88
	adc  b                                           ; $58df: $88
	adc  b                                           ; $58e0: $88
	adc  b                                           ; $58e1: $88
	adc  b                                           ; $58e2: $88
	adc  b                                           ; $58e3: $88
	adc  b                                           ; $58e4: $88
	adc  b                                           ; $58e5: $88
	adc  b                                           ; $58e6: $88
	adc  b                                           ; $58e7: $88
	adc  b                                           ; $58e8: $88
	adc  b                                           ; $58e9: $88
	adc  b                                           ; $58ea: $88
	adc  b                                           ; $58eb: $88
	adc  b                                           ; $58ec: $88
	adc  b                                           ; $58ed: $88
	adc  b                                           ; $58ee: $88
	adc  b                                           ; $58ef: $88
	adc  b                                           ; $58f0: $88
	adc  b                                           ; $58f1: $88
	adc  b                                           ; $58f2: $88
	adc  b                                           ; $58f3: $88
	adc  b                                           ; $58f4: $88
	adc  b                                           ; $58f5: $88
	adc  b                                           ; $58f6: $88
	adc  b                                           ; $58f7: $88
	adc  b                                           ; $58f8: $88
	adc  b                                           ; $58f9: $88
	adc  b                                           ; $58fa: $88
	adc  b                                           ; $58fb: $88
	adc  b                                           ; $58fc: $88
	adc  b                                           ; $58fd: $88
	adc  b                                           ; $58fe: $88
	adc  b                                           ; $58ff: $88
	adc  b                                           ; $5900: $88
	adc  b                                           ; $5901: $88
	adc  b                                           ; $5902: $88
	adc  b                                           ; $5903: $88
	adc  b                                           ; $5904: $88
	adc  b                                           ; $5905: $88
	adc  b                                           ; $5906: $88
	adc  b                                           ; $5907: $88
	adc  b                                           ; $5908: $88
	adc  b                                           ; $5909: $88
	adc  b                                           ; $590a: $88
	adc  b                                           ; $590b: $88
	adc  b                                           ; $590c: $88
	adc  b                                           ; $590d: $88
	adc  b                                           ; $590e: $88
	adc  b                                           ; $590f: $88
	adc  b                                           ; $5910: $88
	adc  b                                           ; $5911: $88
	adc  b                                           ; $5912: $88
	adc  b                                           ; $5913: $88
	adc  b                                           ; $5914: $88
	adc  b                                           ; $5915: $88
	adc  b                                           ; $5916: $88
	adc  b                                           ; $5917: $88
	adc  b                                           ; $5918: $88
	adc  b                                           ; $5919: $88
	adc  b                                           ; $591a: $88
	adc  b                                           ; $591b: $88
	adc  b                                           ; $591c: $88
	adc  b                                           ; $591d: $88
	adc  b                                           ; $591e: $88
	adc  b                                           ; $591f: $88
	adc  b                                           ; $5920: $88
	adc  b                                           ; $5921: $88
	adc  b                                           ; $5922: $88
	adc  b                                           ; $5923: $88
	adc  b                                           ; $5924: $88
	adc  b                                           ; $5925: $88
	adc  b                                           ; $5926: $88
	adc  b                                           ; $5927: $88
	adc  b                                           ; $5928: $88
	adc  b                                           ; $5929: $88
	adc  b                                           ; $592a: $88
	adc  b                                           ; $592b: $88
	adc  b                                           ; $592c: $88
	adc  b                                           ; $592d: $88
	adc  b                                           ; $592e: $88
	adc  b                                           ; $592f: $88
	adc  b                                           ; $5930: $88
	adc  c                                           ; $5931: $89
	adc  b                                           ; $5932: $88
	xor  d                                           ; $5933: $aa
	xor  d                                           ; $5934: $aa
	ld   a, c                                        ; $5935: $79
	cp   c                                           ; $5936: $b9
	sbc  d                                           ; $5937: $9a
	cp   b                                           ; $5938: $b8
	ld   [hl], a                                     ; $5939: $77
	ld   l, b                                        ; $593a: $68
	ld   h, a                                        ; $593b: $67
	sbc  b                                           ; $593c: $98
	ld   h, [hl]                                     ; $593d: $66
	ld   a, b                                        ; $593e: $78
	halt                                             ; $593f: $76
	add  a                                           ; $5940: $87
	ld   [hl], a                                     ; $5941: $77
	adc  c                                           ; $5942: $89
	ld   a, c                                        ; $5943: $79
	xor  b                                           ; $5944: $a8
	ld   h, [hl]                                     ; $5945: $66
	xor  d                                           ; $5946: $aa
	adc  c                                           ; $5947: $89
	halt                                             ; $5948: $76
	add  a                                           ; $5949: $87
	adc  b                                           ; $594a: $88
	ld   [hl], l                                     ; $594b: $75
	dec  [hl]                                        ; $594c: $35
	sbc  c                                           ; $594d: $99
	sub  a                                           ; $594e: $97
	adc  d                                           ; $594f: $8a
	ld   h, [hl]                                     ; $5950: $66
	sbc  c                                           ; $5951: $99
	add  l                                           ; $5952: $85
	ld   a, b                                        ; $5953: $78
	ld   [hl], a                                     ; $5954: $77
	ld   d, l                                        ; $5955: $55
	dec  [hl]                                        ; $5956: $35
	sbc  b                                           ; $5957: $98
	adc  b                                           ; $5958: $88
	sbc  d                                           ; $5959: $9a
	halt                                             ; $595a: $76
	adc  c                                           ; $595b: $89
	add  l                                           ; $595c: $85
	ld   e, d                                        ; $595d: $5a
	ld   [hl], l                                     ; $595e: $75
	ld   e, b                                        ; $595f: $58
	sbc  b                                           ; $5960: $98
	sbc  d                                           ; $5961: $9a
	db   $db                                         ; $5962: $db
	sub  a                                           ; $5963: $97
	ld   [hl], a                                     ; $5964: $77
	ld   h, l                                        ; $5965: $65
	inc  sp                                          ; $5966: $33
	ld   d, h                                        ; $5967: $54
	ld   b, l                                        ; $5968: $45
	ld   l, d                                        ; $5969: $6a
	ld   h, l                                        ; $596a: $65
	ld   a, d                                        ; $596b: $7a
	rst  $38                                         ; $596c: $ff
	rst  $38                                         ; $596d: $ff
	rst  $38                                         ; $596e: $ff
	or   a                                           ; $596f: $b7
	ld   hl, $1111                                   ; $5970: $21 $11 $11
	ld   de, $9f21                                   ; $5973: $11 $21 $9f
	rst  $38                                         ; $5976: $ff
	rst  $38                                         ; $5977: $ff
	ldh  a, [c]                                      ; $5978: $f2
	add  hl, bc                                      ; $5979: $09
	add  hl, de                                      ; $597a: $19
	rst  ToBoot                                         ; $597b: $c7
	ld   hl, $1b11                                   ; $597c: $21 $11 $1b
	rst  $38                                         ; $597f: $ff
	rst  $38                                         ; $5980: $ff
	rst  $38                                         ; $5981: $ff
	pop  bc                                          ; $5982: $c1
	ld   de, $efa4                                   ; $5983: $11 $a4 $ef
	pop  hl                                          ; $5986: $e1
	ld   de, $cf11                                   ; $5987: $11 $11 $cf
	rst  $38                                         ; $598a: $ff
	rst  $38                                         ; $598b: $ff
	rst  $38                                         ; $598c: $ff
	ld   de, $6b11                                   ; $598d: $11 $11 $6b
	rst  $38                                         ; $5990: $ff
	ld   b, c                                        ; $5991: $41
	ld   de, rAUD1LEN                                   ; $5992: $11 $11 $ff
	rst  $38                                         ; $5995: $ff
	rst  $38                                         ; $5996: $ff
	pop  af                                          ; $5997: $f1
	ld   de, $df15                                   ; $5998: $11 $15 $df
	ld   hl, sp+$11                                  ; $599b: $f8 $11
	ld   de, $ff1f                                   ; $599d: $11 $1f $ff
	rst  $38                                         ; $59a0: $ff
	rst  $38                                         ; $59a1: $ff
	ld   de, $5f11                                   ; $59a2: $11 $11 $5f
	rst  $38                                         ; $59a5: $ff
	ld   de, $1711                                   ; $59a6: $11 $11 $17
	rst  $38                                         ; $59a9: $ff
	rst  $38                                         ; $59aa: $ff
	rst  $38                                         ; $59ab: $ff
	and  c                                           ; $59ac: $a1
	ld   de, $ff1b                                   ; $59ad: $11 $1b $ff
	pop  af                                          ; $59b0: $f1
	ld   de, rAUD1LEN                                   ; $59b1: $11 $11 $ff
	rst  $38                                         ; $59b4: $ff
	rst  $38                                         ; $59b5: $ff
	pop  af                                          ; $59b6: $f1
	ld   de, $ff1d                                   ; $59b7: $11 $1d $ff
	di                                               ; $59ba: $f3
	ld   de, $5f11                                   ; $59bb: $11 $11 $5f
	rst  $38                                         ; $59be: $ff
	rst  $38                                         ; $59bf: $ff
	pop  af                                          ; $59c0: $f1
	ld   de, $ff17                                   ; $59c1: $11 $17 $ff
	db   $fc                                         ; $59c4: $fc
	ld   de, $1f11                                   ; $59c5: $11 $11 $1f
	rst  $38                                         ; $59c8: $ff
	rst  $38                                         ; $59c9: $ff
	ld   hl, sp+$11                                  ; $59ca: $f8 $11
	ld   de, $ffff                                   ; $59cc: $11 $ff $ff
	ld   de, $1f11                                   ; $59cf: $11 $11 $1f
	rst  $38                                         ; $59d2: $ff
	rst  $38                                         ; $59d3: $ff
	rst  $38                                         ; $59d4: $ff
	ld   de, rAUD1LEN                                   ; $59d5: $11 $11 $ff
	rst  $38                                         ; $59d8: $ff
	ld   de, $1111                                   ; $59d9: $11 $11 $11
	rst  $38                                         ; $59dc: $ff
	rst  $38                                         ; $59dd: $ff
	rst  $38                                         ; $59de: $ff
	ld   de, rAUD1LEN                                   ; $59df: $11 $11 $ff
	rst  $38                                         ; $59e2: $ff
	ld   de, $1111                                   ; $59e3: $11 $11 $11
	rst  $38                                         ; $59e6: $ff
	rst  $38                                         ; $59e7: $ff
	rst  $38                                         ; $59e8: $ff
	ld   hl, rAUD1LEN                                   ; $59e9: $21 $11 $ff
	rst  $38                                         ; $59ec: $ff
	ld   de, $1111                                   ; $59ed: $11 $11 $11
	xor  a                                           ; $59f0: $af
	rst  $38                                         ; $59f1: $ff
	rst  $38                                         ; $59f2: $ff
	pop  af                                          ; $59f3: $f1
	ld   de, $ff1f                                   ; $59f4: $11 $1f $ff
	pop  af                                          ; $59f7: $f1
	ld   de, $1f11                                   ; $59f8: $11 $11 $1f
	rst  $38                                         ; $59fb: $ff
	rst  $38                                         ; $59fc: $ff
	or   $11                                         ; $59fd: $f6 $11
	rra                                              ; $59ff: $1f
	rst  $38                                         ; $5a00: $ff
	push af                                          ; $5a01: $f5
	ld   de, $1c11                                   ; $5a02: $11 $11 $1c
	rst  $38                                         ; $5a05: $ff
	rst  $38                                         ; $5a06: $ff
	rst  $38                                         ; $5a07: $ff
	ld   de, rAUD1LEN                                   ; $5a08: $11 $11 $ff
	rst  $38                                         ; $5a0b: $ff
	ld   de, $1111                                   ; $5a0c: $11 $11 $11
	rst  $38                                         ; $5a0f: $ff
	rst  $38                                         ; $5a10: $ff
	rst  $38                                         ; $5a11: $ff
	ld   [hl], c                                     ; $5a12: $71
	ld   de, $ffff                                   ; $5a13: $11 $ff $ff
	ld   hl, $1111                                   ; $5a16: $21 $11 $11
	ld   a, a                                        ; $5a19: $7f
	rst  $38                                         ; $5a1a: $ff
	rst  $38                                         ; $5a1b: $ff
	pop  af                                          ; $5a1c: $f1
	ld   de, $ff1f                                   ; $5a1d: $11 $1f $ff
	pop  af                                          ; $5a20: $f1
	ld   de, $1111                                   ; $5a21: $11 $11 $11
	rst  $38                                         ; $5a24: $ff
	rst  $38                                         ; $5a25: $ff
	rst  $38                                         ; $5a26: $ff
	ld   de, rAUD1LEN                                   ; $5a27: $11 $11 $ff
	rst  $38                                         ; $5a2a: $ff
	ld   de, $1111                                   ; $5a2b: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a2e: $cf
	rst  $38                                         ; $5a2f: $ff
	rst  $38                                         ; $5a30: $ff
	pop  af                                          ; $5a31: $f1
	ld   de, $ff1f                                   ; $5a32: $11 $1f $ff
	add  c                                           ; $5a35: $81
	ld   de, $1411                                   ; $5a36: $11 $11 $14
	rst  $38                                         ; $5a39: $ff
	rst  $38                                         ; $5a3a: $ff
	rst  $38                                         ; $5a3b: $ff
	ld   de, rAUD1LEN                                   ; $5a3c: $11 $11 $ff
	rst  $38                                         ; $5a3f: $ff
	ld   de, $1111                                   ; $5a40: $11 $11 $11
	ld   l, a                                        ; $5a43: $6f
	rst  $38                                         ; $5a44: $ff
	rst  $38                                         ; $5a45: $ff
	ld   de, $bf11                                   ; $5a46: $11 $11 $bf
	rst  $38                                         ; $5a49: $ff
	or   c                                           ; $5a4a: $b1
	ld   de, $1112                                   ; $5a4b: $11 $12 $11
	rst  $38                                         ; $5a4e: $ff
	rst  $38                                         ; $5a4f: $ff
	rst  $38                                         ; $5a50: $ff
	ld   de, rAUD1LEN                                   ; $5a51: $11 $11 $ff
	cp   $11                                         ; $5a54: $fe $11
	ld   de, $1f11                                   ; $5a56: $11 $11 $1f
	rst  $38                                         ; $5a59: $ff
	rst  $38                                         ; $5a5a: $ff
	db   $f4                                         ; $5a5b: $f4
	ld   de, $ff1f                                   ; $5a5c: $11 $1f $ff
	pop  af                                          ; $5a5f: $f1
	ld   de, $6a11                                   ; $5a60: $11 $11 $6a
	rst  $38                                         ; $5a63: $ff
	rst  $38                                         ; $5a64: $ff
	rst  $38                                         ; $5a65: $ff
	and  c                                           ; $5a66: $a1
	ld   de, $ffff                                   ; $5a67: $11 $ff $ff
	ld   de, $1211                                   ; $5a6a: $11 $11 $12
	ld   de, $ffff                                   ; $5a6d: $11 $ff $ff
	cp   $11                                         ; $5a70: $fe $11
	add  hl, de                                      ; $5a72: $19
	rst  $38                                         ; $5a73: $ff
	ei                                               ; $5a74: $fb
	ld   de, $1111                                   ; $5a75: $11 $11 $11
	rra                                              ; $5a78: $1f
	rst  $38                                         ; $5a79: $ff
	rst  $38                                         ; $5a7a: $ff
	pop  af                                          ; $5a7b: $f1
	ld   de, $ff1f                                   ; $5a7c: $11 $1f $ff
	pop  af                                          ; $5a7f: $f1
	ld   de, $1411                                   ; $5a80: $11 $11 $14
	rst  $38                                         ; $5a83: $ff
	rst  $38                                         ; $5a84: $ff
	rst  $38                                         ; $5a85: $ff
	ld   de, rAUD1LEN                                   ; $5a86: $11 $11 $ff
	rst  $38                                         ; $5a89: $ff
	ld   de, $1111                                   ; $5a8a: $11 $11 $11
	ld   de, $ff6f                                   ; $5a8d: $11 $6f $ff
	rst  $38                                         ; $5a90: $ff
	ld   de, rAUD1LEN                                   ; $5a91: $11 $11 $ff
	rst  $38                                         ; $5a94: $ff
	ld   [hl], c                                     ; $5a95: $71
	ld   de, $1a11                                   ; $5a96: $11 $11 $1a
	rst  $38                                         ; $5a99: $ff
	rst  $38                                         ; $5a9a: $ff
	rst  $38                                         ; $5a9b: $ff
	ld   de, $ff15                                   ; $5a9c: $11 $15 $ff
	or   $11                                         ; $5a9f: $f6 $11
	ld   de, $1111                                   ; $5aa1: $11 $11 $11
	rst  $38                                         ; $5aa4: $ff
	rst  $38                                         ; $5aa5: $ff
	db   $f4                                         ; $5aa6: $f4
	ld   de, $ff1f                                   ; $5aa7: $11 $1f $ff
	ld   hl, sp+$11                                  ; $5aaa: $f8 $11
	ld   de, $1a11                                   ; $5aac: $11 $11 $1a
	rst  $38                                         ; $5aaf: $ff
	rst  $38                                         ; $5ab0: $ff
	pop  af                                          ; $5ab1: $f1
	ld   de, $ff1f                                   ; $5ab2: $11 $1f $ff
	db   $f4                                         ; $5ab5: $f4
	ld   de, $1111                                   ; $5ab6: $11 $11 $11
	ld   e, $ff                                      ; $5ab9: $1e $ff
	rst  $38                                         ; $5abb: $ff
	pop  bc                                          ; $5abc: $c1
	ld   de, $ff5f                                   ; $5abd: $11 $5f $ff
	or   d                                           ; $5ac0: $b2
	ld   de, $1121                                   ; $5ac1: $11 $21 $11
	rra                                              ; $5ac4: $1f
	rst  $38                                         ; $5ac5: $ff
	rst  $38                                         ; $5ac6: $ff
	ld   [hl], d                                     ; $5ac7: $72
	ld   de, $ff2f                                   ; $5ac8: $11 $2f $ff
	rst  $30                                         ; $5acb: $f7
	ld   de, $1111                                   ; $5acc: $11 $11 $11
	ld   e, $ff                                      ; $5acf: $1e $ff
	rst  $38                                         ; $5ad1: $ff
	or   $11                                         ; $5ad2: $f6 $11
	rra                                              ; $5ad4: $1f
	rst  $38                                         ; $5ad5: $ff
	db   $fd                                         ; $5ad6: $fd
	ld   b, c                                        ; $5ad7: $41
	ld   de, $6e15                                   ; $5ad8: $11 $15 $6e
	rst  $38                                         ; $5adb: $ff
	rst  $38                                         ; $5adc: $ff
	db   $fd                                         ; $5add: $fd
	ld   de, $ff1d                                   ; $5ade: $11 $1d $ff
	rst  $38                                         ; $5ae1: $ff
	ld   hl, $1311                                   ; $5ae2: $21 $11 $13
	inc  de                                          ; $5ae5: $13
	rst  $38                                         ; $5ae6: $ff
	rst  $38                                         ; $5ae7: $ff
	rst  $38                                         ; $5ae8: $ff
	ld   de, rAUD1LEN                                   ; $5ae9: $11 $11 $ff
	rst  $38                                         ; $5aec: $ff
	ld   de, $4f11                                   ; $5aed: $11 $11 $4f
	ld   a, [hl-]                                    ; $5af0: $3a
	ld   [$ffff], a                                  ; $5af1: $ea $ff $ff
	ld   de, rAUD1LEN                                   ; $5af4: $11 $11 $ff
	rst  $38                                         ; $5af7: $ff
	ld   de, $8611                                   ; $5af8: $11 $11 $86
	ld   de, $ff17                                   ; $5afb: $11 $17 $ff
	rst  $38                                         ; $5afe: $ff
	ld   b, c                                        ; $5aff: $41
	ld   de, $ff9f                                   ; $5b00: $11 $9f $ff
	push af                                          ; $5b03: $f5
	ld   de, $1111                                   ; $5b04: $11 $11 $11
	ld   de, $ffbd                                   ; $5b07: $11 $bd $ff
	rst  $38                                         ; $5b0a: $ff
	ld   d, c                                        ; $5b0b: $51
	inc  d                                           ; $5b0c: $14
	rst  $38                                         ; $5b0d: $ff
	rst  $38                                         ; $5b0e: $ff
	or   c                                           ; $5b0f: $b1
	ld   de, $6911                                   ; $5b10: $11 $11 $69
	rl   h                                           ; $5b13: $cb $14
	rst  $38                                         ; $5b15: $ff
	db   $fd                                         ; $5b16: $fd
	ld   de, $ff5f                                   ; $5b17: $11 $5f $ff
	cp   $42                                         ; $5b1a: $fe $42
	ld   de, $1911                                   ; $5b1c: $11 $11 $19
	ld   sp, hl                                      ; $5b1f: $f9
	adc  a                                           ; $5b20: $8f
	rst  $38                                         ; $5b21: $ff

Jump_0d3_5b22:
	pop  af                                          ; $5b22: $f1
	ld   de, $ffff                                   ; $5b23: $11 $ff $ff
	or   $11                                         ; $5b26: $f6 $11
	ld   de, $11a6                                   ; $5b28: $11 $a6 $11
	jr   @+$01                                       ; $5b2b: $18 $ff

	rst  $38                                         ; $5b2d: $ff
	pop  af                                          ; $5b2e: $f1
	ld   [de], a                                     ; $5b2f: $12
	rst  $28                                         ; $5b30: $ef
	rst  $38                                         ; $5b31: $ff
	or   $11                                         ; $5b32: $f6 $11
	ld   de, $1165                                   ; $5b34: $11 $65 $11
	inc  de                                          ; $5b37: $13
	rst  $38                                         ; $5b38: $ff
	rst  $38                                         ; $5b39: $ff
	ld   de, rAUD1LOW                                   ; $5b3a: $11 $13 $ff
	rst  $38                                         ; $5b3d: $ff
	pop  bc                                          ; $5b3e: $c1
	ld   de, $4911                                   ; $5b3f: $11 $11 $49
	ld   b, c                                        ; $5b42: $41
	ld   de, $ff3f                                   ; $5b43: $11 $3f $ff
	push af                                          ; $5b46: $f5
	ld   de, $ff1f                                   ; $5b47: $11 $1f $ff
	db   $fc                                         ; $5b4a: $fc
	sub  c                                           ; $5b4b: $91
	ld   de, $8811                                   ; $5b4c: $11 $11 $88
	and  c                                           ; $5b4f: $a1
	ld   de, $ffff                                   ; $5b50: $11 $ff $ff
	ld   d, c                                        ; $5b53: $51
	rla                                              ; $5b54: $17
	rst  $38                                         ; $5b55: $ff
	rst  $38                                         ; $5b56: $ff
	sub  c                                           ; $5b57: $91
	ld   de, $1311                                   ; $5b58: $11 $11 $13
	ld   de, $bf11                                   ; $5b5b: $11 $11 $bf
	rst  $38                                         ; $5b5e: $ff
	rst  $30                                         ; $5b5f: $f7
	ld   b, c                                        ; $5b60: $41
	inc  a                                           ; $5b61: $3c
	rst  $38                                         ; $5b62: $ff
	db   $fd                                         ; $5b63: $fd
	ld   de, $1c11                                   ; $5b64: $11 $11 $1c
	ld   b, h                                        ; $5b67: $44
	ld   hl, $ff16                                   ; $5b68: $21 $16 $ff
	rst  $38                                         ; $5b6b: $ff
	pop  af                                          ; $5b6c: $f1
	ld   de, $ffef                                   ; $5b6d: $11 $ef $ff
	pop  af                                          ; $5b70: $f1
	ld   de, $6f12                                   ; $5b71: $11 $12 $6f
	and  c                                           ; $5b74: $a1
	ld   de, $ff1f                                   ; $5b75: $11 $1f $ff
	rst  $38                                         ; $5b78: $ff
	ld   de, $ff19                                   ; $5b79: $11 $19 $ff
	rst  $38                                         ; $5b7c: $ff
	ld   [hl], c                                     ; $5b7d: $71
	inc  de                                          ; $5b7e: $13
	ld   b, h                                        ; $5b7f: $44
	ld   d, c                                        ; $5b80: $51
	inc  d                                           ; $5b81: $14
	ld   de, rAUD1HIGH                                   ; $5b82: $11 $14 $ff
	rst  $38                                         ; $5b85: $ff
	ld   h, c                                        ; $5b86: $61

Call_0d3_5b87:
	ld   de, $ffff                                   ; $5b87: $11 $ff $ff
	ld   h, c                                        ; $5b8a: $61
	ld   de, $c94c                                   ; $5b8b: $11 $4c $c9
	ld   d, c                                        ; $5b8e: $51
	ld   de, $ff19                                   ; $5b8f: $11 $19 $ff
	rst  $38                                         ; $5b92: $ff
	or   c                                           ; $5b93: $b1
	ld   de, $ffff                                   ; $5b94: $11 $ff $ff
	push de                                          ; $5b97: $d5
	ld   de, $db17                                   ; $5b98: $11 $17 $db
	ld   de, $1111                                   ; $5b9b: $11 $11 $11
	rst  $38                                         ; $5b9e: $ff

jr_0d3_5b9f:
	rst  $38                                         ; $5b9f: $ff
	ld   b, c                                        ; $5ba0: $41
	ld   de, $ffff                                   ; $5ba1: $11 $ff $ff
	rst  $30                                         ; $5ba4: $f7
	ld   de, $6f11                                   ; $5ba5: $11 $11 $6f
	add  d                                           ; $5ba8: $82
	ld   de, $4f11                                   ; $5ba9: $11 $11 $4f
	rst  $38                                         ; $5bac: $ff
	ld   h, c                                        ; $5bad: $61
	ld   d, $ff                                      ; $5bae: $16 $ff
	rst  $38                                         ; $5bb0: $ff
	rst  $38                                         ; $5bb1: $ff
	add  c                                           ; $5bb2: $81
	ld   de, $a7ad                                   ; $5bb3: $11 $ad $a7
	ld   de, $1311                                   ; $5bb6: $11 $11 $13
	rst  $38                                         ; $5bb9: $ff
	rst  $38                                         ; $5bba: $ff
	pop  hl                                          ; $5bbb: $e1
	rra                                              ; $5bbc: $1f
	rst  $38                                         ; $5bbd: $ff
	ld   sp, hl                                      ; $5bbe: $f9
	ld   e, a                                        ; $5bbf: $5f
	ld   a, e                                        ; $5bc0: $7b
	ld   d, c                                        ; $5bc1: $51
	add  $14                                         ; $5bc2: $c6 $14
	inc  d                                           ; $5bc4: $14
	ld   de, $af11                                   ; $5bc5: $11 $11 $af
	rst  $38                                         ; $5bc8: $ff
	ld   h, c                                        ; $5bc9: $61
	rra                                              ; $5bca: $1f
	rst  $38                                         ; $5bcb: $ff
	db   $fc                                         ; $5bcc: $fc
	pop  de                                          ; $5bcd: $d1
	jr   jr_0d3_5b9f                                 ; $5bce: $18 $cf

	ei                                               ; $5bd0: $fb
	ld   de, $1111                                   ; $5bd1: $11 $11 $11
	inc  d                                           ; $5bd4: $14
	rst  $38                                         ; $5bd5: $ff
	rst  $38                                         ; $5bd6: $ff
	ld   de, $ff9f                                   ; $5bd7: $11 $9f $ff
	db   $fd                                         ; $5bda: $fd
	ld   h, h                                        ; $5bdb: $64
	dec  d                                           ; $5bdc: $15
	sbc  h                                           ; $5bdd: $9c
	push de                                          ; $5bde: $d5
	ld   b, h                                        ; $5bdf: $44
	ld   de, $1112                                   ; $5be0: $11 $12 $11
	ld   a, a                                        ; $5be3: $7f
	rst  $38                                         ; $5be4: $ff
	pop  bc                                          ; $5be5: $c1
	ld   c, e                                        ; $5be6: $4b
	sbc  a                                           ; $5be7: $9f
	cp   $f1                                         ; $5be8: $fe $f1
	ld   d, l                                        ; $5bea: $55
	ccf                                              ; $5beb: $3f
	db   $db                                         ; $5bec: $db
	ld   [hl], c                                     ; $5bed: $71
	ld   de, $611a                                   ; $5bee: $11 $1a $61
	ld   h, c                                        ; $5bf1: $61
	ld   a, a                                        ; $5bf2: $7f
	db   $eb                                         ; $5bf3: $eb
	add  d                                           ; $5bf4: $82
	rst  $38                                         ; $5bf5: $ff
	rst  $38                                         ; $5bf6: $ff
	ld   [hl], c                                     ; $5bf7: $71
	sbc  [hl]                                        ; $5bf8: $9e
	rst  $38                                         ; $5bf9: $ff
	ld   d, c                                        ; $5bfa: $51
	inc  d                                           ; $5bfb: $14
	ld   a, e                                        ; $5bfc: $7b
	ld   sp, $1811                                   ; $5bfd: $31 $11 $18
	rst  $28                                         ; $5c00: $ef
	ret  c                                           ; $5c01: $d8

	sbc  l                                           ; $5c02: $9d
	ld   d, e                                        ; $5c03: $53
	rst  $38                                         ; $5c04: $ff
	rst  $38                                         ; $5c05: $ff
	xor  [hl]                                        ; $5c06: $ae
	ld   h, [hl]                                     ; $5c07: $66
	xor  c                                           ; $5c08: $a9
	sub  a                                           ; $5c09: $97
	ld   b, l                                        ; $5c0a: $45
	ld   d, c                                        ; $5c0b: $51
	ld   de, $dd3b                                   ; $5c0c: $11 $3b $dd
	ld   b, c                                        ; $5c0f: $41
	ld   d, a                                        ; $5c10: $57
	cp   a                                           ; $5c11: $bf
	rst  $38                                         ; $5c12: $ff
	or   $58                                         ; $5c13: $f6 $58
	rst  JumpTable                                         ; $5c15: $df
	sub  $57                                         ; $5c16: $d6 $57
	ld   b, c                                        ; $5c18: $41
	rla                                              ; $5c19: $17
	jp   c, $1121                                    ; $5c1a: $da $21 $11

	adc  a                                           ; $5c1d: $8f
	db   $ed                                         ; $5c1e: $ed
	ld   [hl], l                                     ; $5c1f: $75
	db   $fc                                         ; $5c20: $fc
	ld   [hl], l                                     ; $5c21: $75
	ld   c, a                                        ; $5c22: $4f
	cp   $ba                                         ; $5c23: $fe $ba
	ei                                               ; $5c25: $fb
	ld   [hl-], a                                    ; $5c26: $32
	ld   c, b                                        ; $5c27: $48
	xor  c                                           ; $5c28: $a9
	ld   hl, $3811                                   ; $5c29: $21 $11 $38
	sbc  l                                           ; $5c2c: $9d
	call $9d85                                       ; $5c2d: $cd $85 $9d
	reti                                             ; $5c30: $d9


	adc  [hl]                                        ; $5c31: $8e
	cp   $52                                         ; $5c32: $fe $52
	dec  e                                           ; $5c34: $1d
	db   $fc                                         ; $5c35: $fc
	sub  d                                           ; $5c36: $92
	inc  de                                          ; $5c37: $13
	inc  d                                           ; $5c38: $14
	ld   sp, $6784                                   ; $5c39: $31 $84 $67
	inc  e                                           ; $5c3c: $1c
	rst  $38                                         ; $5c3d: $ff
	ld   d, c                                        ; $5c3e: $51
	ld   a, e                                        ; $5c3f: $7b
	rst  $38                                         ; $5c40: $ff
	cp   h                                           ; $5c41: $bc
	and  h                                           ; $5c42: $a4
	ld   h, l                                        ; $5c43: $65
	xor  h                                           ; $5c44: $ac
	add  e                                           ; $5c45: $83
	ld   [hl], $65                                   ; $5c46: $36 $65
	ld   d, c                                        ; $5c48: $51
	ld   [de], a                                     ; $5c49: $12
	ld   a, e                                        ; $5c4a: $7b
	rst  $38                                         ; $5c4b: $ff
	call z, rAUD1LOW                                    ; $5c4c: $cc $13 $ff
	db   $fc                                         ; $5c4f: $fc
	sub  a                                           ; $5c50: $97
	ld   h, l                                        ; $5c51: $65
	ld   a, d                                        ; $5c52: $7a
	ld   h, [hl]                                     ; $5c53: $66
	ld   [hl], a                                     ; $5c54: $77
	ld   a, c                                        ; $5c55: $79
	ld   h, c                                        ; $5c56: $61
	ld   de, $ff4c                                   ; $5c57: $11 $4c $ff
	ld   de, $ea8b                                   ; $5c5a: $11 $8b $ea
	rst  $38                                         ; $5c5d: $ff
	xor  h                                           ; $5c5e: $ac
	add  [hl]                                        ; $5c5f: $86
	or   l                                           ; $5c60: $b5
	ld   a, [hl-]                                    ; $5c61: $3a
	xor  l                                           ; $5c62: $ad
	or   l                                           ; $5c63: $b5
	ld   d, c                                        ; $5c64: $51
	inc  d                                           ; $5c65: $14
	ld   a, d                                        ; $5c66: $7a
	ld   b, c                                        ; $5c67: $41
	ld   e, [hl]                                     ; $5c68: $5e
	or   $4b                                         ; $5c69: $f6 $4b
	cp   [hl]                                        ; $5c6b: $be
	ret                                              ; $5c6c: $c9


	res  7, h                                        ; $5c6d: $cb $bc
	ld   h, h                                        ; $5c6f: $64
	ld   h, a                                        ; $5c70: $67
	sbc  d                                           ; $5c71: $9a
	adc  c                                           ; $5c72: $89
	and  l                                           ; $5c73: $a5
	ld   de, $bb18                                   ; $5c74: $11 $18 $bb
	sub  d                                           ; $5c77: $92
	ld   e, c                                        ; $5c78: $59
	cp   e                                           ; $5c79: $bb
	sbc  h                                           ; $5c7a: $9c
	xor  d                                           ; $5c7b: $aa
	db   $fc                                         ; $5c7c: $fc
	ld   h, c                                        ; $5c7d: $61
	ld   e, e                                        ; $5c7e: $5b
	db   $dd                                         ; $5c7f: $dd
	add  $11                                         ; $5c80: $c6 $11
	ld   [hl], $be                                   ; $5c82: $36 $be
	push bc                                          ; $5c84: $c5
	ld   [de], a                                     ; $5c85: $12
	ld   d, [hl]                                     ; $5c86: $56
	sbc  h                                           ; $5c87: $9c
	db   $eb                                         ; $5c88: $eb
	ld   l, b                                        ; $5c89: $68
	rst  ToBoot                                         ; $5c8a: $c7
	halt                                             ; $5c8b: $76
	sbc  a                                           ; $5c8c: $9f
	cp   c                                           ; $5c8d: $b9
	add  a                                           ; $5c8e: $87
	sbc  b                                           ; $5c8f: $98
	ld   h, a                                        ; $5c90: $67
	sbc  c                                           ; $5c91: $99
	sub  [hl]                                        ; $5c92: $96
	ld   h, e                                        ; $5c93: $63
	dec  h                                           ; $5c94: $25
	cp   h                                           ; $5c95: $bc
	ld   [hl], h                                     ; $5c96: $74
	ld   h, $9c                                      ; $5c97: $26 $9c
	jp   z, $9979                                    ; $5c99: $ca $79 $99

	adc  b                                           ; $5c9c: $88
	xor  c                                           ; $5c9d: $a9
	cp   b                                           ; $5c9e: $b8
	ld   a, b                                        ; $5c9f: $78
	xor  d                                           ; $5ca0: $aa
	adc  b                                           ; $5ca1: $88
	xor  b                                           ; $5ca2: $a8
	ld   h, h                                        ; $5ca3: $64
	scf                                              ; $5ca4: $37
	sbc  d                                           ; $5ca5: $9a
	add  l                                           ; $5ca6: $85
	ld   b, e                                        ; $5ca7: $43
	adc  e                                           ; $5ca8: $8b
	cp   h                                           ; $5ca9: $bc
	ld   [hl], h                                     ; $5caa: $74
	ld   l, b                                        ; $5cab: $68
	db   $fc                                         ; $5cac: $fc
	adc  c                                           ; $5cad: $89
	ld   l, b                                        ; $5cae: $68
	sub  a                                           ; $5caf: $97
	ld   a, b                                        ; $5cb0: $78
	sbc  l                                           ; $5cb1: $9d
	or   a                                           ; $5cb2: $b7
	add  [hl]                                        ; $5cb3: $86
	ld   [hl], l                                     ; $5cb4: $75
	ld   d, h                                        ; $5cb5: $54
	ld   e, c                                        ; $5cb6: $59
	cp   e                                           ; $5cb7: $bb
	ld   h, h                                        ; $5cb8: $64
	ld   b, [hl]                                     ; $5cb9: $46
	cp   h                                           ; $5cba: $bc
	db   $db                                         ; $5cbb: $db
	ret  z                                           ; $5cbc: $c8

	ld   d, d                                        ; $5cbd: $52
	ld   c, e                                        ; $5cbe: $4b
	db   $ec                                         ; $5cbf: $ec
	sub  [hl]                                        ; $5cc0: $96
	ld   h, a                                        ; $5cc1: $67
	adc  c                                           ; $5cc2: $89
	sub  a                                           ; $5cc3: $97
	ld   a, b                                        ; $5cc4: $78
	ld   h, l                                        ; $5cc5: $65
	ld   b, e                                        ; $5cc6: $43
	adc  c                                           ; $5cc7: $89
	sbc  e                                           ; $5cc8: $9b
	adc  d                                           ; $5cc9: $8a
	sub  [hl]                                        ; $5cca: $96
	adc  c                                           ; $5ccb: $89
	cp   d                                           ; $5ccc: $ba
	add  a                                           ; $5ccd: $87
	ld   a, c                                        ; $5cce: $79
	adc  c                                           ; $5ccf: $89
	sub  a                                           ; $5cd0: $97
	ld   h, [hl]                                     ; $5cd1: $66
	sbc  h                                           ; $5cd2: $9c
	or   a                                           ; $5cd3: $b7
	ld   h, h                                        ; $5cd4: $64
	ld   [hl], $79                                   ; $5cd5: $36 $79
	adc  b                                           ; $5cd7: $88
	add  a                                           ; $5cd8: $87
	ld   a, b                                        ; $5cd9: $78
	sbc  d                                           ; $5cda: $9a
	ld   [hl], a                                     ; $5cdb: $77
	ld   e, b                                        ; $5cdc: $58
	cp   d                                           ; $5cdd: $ba
	and  [hl]                                        ; $5cde: $a6
	ld   h, [hl]                                     ; $5cdf: $66
	adc  d                                           ; $5ce0: $8a
	xor  h                                           ; $5ce1: $ac
	and  a                                           ; $5ce2: $a7
	ld   b, h                                        ; $5ce3: $44
	adc  c                                           ; $5ce4: $89
	sbc  c                                           ; $5ce5: $99
	ld   h, [hl]                                     ; $5ce6: $66
	ld   h, l                                        ; $5ce7: $65
	ld   a, c                                        ; $5ce8: $79
	sbc  e                                           ; $5ce9: $9b
	sub  [hl]                                        ; $5cea: $96
	ld   d, l                                        ; $5ceb: $55
	adc  d                                           ; $5cec: $8a
	xor  b                                           ; $5ced: $a8
	add  a                                           ; $5cee: $87
	add  a                                           ; $5cef: $87
	adc  c                                           ; $5cf0: $89
	xor  c                                           ; $5cf1: $a9
	halt                                             ; $5cf2: $76
	ld   a, c                                        ; $5cf3: $79
	add  a                                           ; $5cf4: $87
	ld   h, [hl]                                     ; $5cf5: $66
	adc  c                                           ; $5cf6: $89
	sbc  b                                           ; $5cf7: $98
	ld   [hl], a                                     ; $5cf8: $77
	ld   [hl], a                                     ; $5cf9: $77
	sbc  b                                           ; $5cfa: $98
	adc  b                                           ; $5cfb: $88
	adc  b                                           ; $5cfc: $88
	ld   h, [hl]                                     ; $5cfd: $66
	ld   [hl], a                                     ; $5cfe: $77
	adc  b                                           ; $5cff: $88
	sbc  d                                           ; $5d00: $9a
	sub  a                                           ; $5d01: $97
	halt                                             ; $5d02: $76
	ld   a, d                                        ; $5d03: $7a
	sbc  d                                           ; $5d04: $9a
	sub  a                                           ; $5d05: $97
	ld   h, l                                        ; $5d06: $65
	ld   l, b                                        ; $5d07: $68
	adc  c                                           ; $5d08: $89
	adc  c                                           ; $5d09: $89
	sbc  b                                           ; $5d0a: $98
	halt                                             ; $5d0b: $76
	ld   [hl], a                                     ; $5d0c: $77
	adc  d                                           ; $5d0d: $8a
	sbc  b                                           ; $5d0e: $98
	ld   [hl], a                                     ; $5d0f: $77
	ld   [hl], a                                     ; $5d10: $77
	adc  c                                           ; $5d11: $89
	adc  c                                           ; $5d12: $89
	add  a                                           ; $5d13: $87
	ld   h, [hl]                                     ; $5d14: $66
	adc  c                                           ; $5d15: $89
	xor  c                                           ; $5d16: $a9
	sbc  b                                           ; $5d17: $98
	halt                                             ; $5d18: $76
	ld   h, a                                        ; $5d19: $67
	sbc  c                                           ; $5d1a: $99
	sbc  b                                           ; $5d1b: $98
	ld   [hl], a                                     ; $5d1c: $77
	ld   a, b                                        ; $5d1d: $78
	sbc  b                                           ; $5d1e: $98
	sbc  c                                           ; $5d1f: $99
	xor  b                                           ; $5d20: $a8
	ld   h, l                                        ; $5d21: $65
	ld   a, d                                        ; $5d22: $7a
	xor  c                                           ; $5d23: $a9
	halt                                             ; $5d24: $76
	ld   h, a                                        ; $5d25: $67
	sbc  c                                           ; $5d26: $99
	sbc  c                                           ; $5d27: $99
	sbc  b                                           ; $5d28: $98
	ld   h, a                                        ; $5d29: $67
	adc  b                                           ; $5d2a: $88
	xor  b                                           ; $5d2b: $a8
	ld   [hl], a                                     ; $5d2c: $77
	ld   a, d                                        ; $5d2d: $7a
	sbc  b                                           ; $5d2e: $98
	halt                                             ; $5d2f: $76
	ld   a, b                                        ; $5d30: $78
	sbc  d                                           ; $5d31: $9a
	sbc  b                                           ; $5d32: $98
	ld   [hl], a                                     ; $5d33: $77
	adc  b                                           ; $5d34: $88
	sbc  c                                           ; $5d35: $99
	sbc  c                                           ; $5d36: $99
	ld   [hl], a                                     ; $5d37: $77
	ld   a, b                                        ; $5d38: $78
	sbc  b                                           ; $5d39: $98
	ld   a, b                                        ; $5d3a: $78
	ld   a, b                                        ; $5d3b: $78
	sbc  b                                           ; $5d3c: $98
	sbc  b                                           ; $5d3d: $98
	ld   a, b                                        ; $5d3e: $78
	ld   [hl], a                                     ; $5d3f: $77
	adc  b                                           ; $5d40: $88
	sbc  b                                           ; $5d41: $98
	add  a                                           ; $5d42: $87
	adc  b                                           ; $5d43: $88
	adc  c                                           ; $5d44: $89
	adc  b                                           ; $5d45: $88
	adc  b                                           ; $5d46: $88
	adc  b                                           ; $5d47: $88
	add  a                                           ; $5d48: $87
	ld   [hl], a                                     ; $5d49: $77
	adc  b                                           ; $5d4a: $88
	sbc  b                                           ; $5d4b: $98
	sbc  b                                           ; $5d4c: $98
	add  a                                           ; $5d4d: $87
	sbc  b                                           ; $5d4e: $98
	sbc  b                                           ; $5d4f: $98
	ld   [hl], a                                     ; $5d50: $77
	adc  b                                           ; $5d51: $88
	sbc  b                                           ; $5d52: $98
	adc  b                                           ; $5d53: $88
	adc  c                                           ; $5d54: $89
	sbc  b                                           ; $5d55: $98
	add  a                                           ; $5d56: $87
	ld   a, b                                        ; $5d57: $78
	adc  b                                           ; $5d58: $88
	sbc  b                                           ; $5d59: $98
	sbc  b                                           ; $5d5a: $98
	ld   [hl], a                                     ; $5d5b: $77
	adc  c                                           ; $5d5c: $89
	sbc  c                                           ; $5d5d: $99
	adc  b                                           ; $5d5e: $88
	adc  b                                           ; $5d5f: $88
	adc  b                                           ; $5d60: $88
	adc  c                                           ; $5d61: $89
	adc  c                                           ; $5d62: $89
	add  a                                           ; $5d63: $87
	ld   a, b                                        ; $5d64: $78
	sbc  c                                           ; $5d65: $99
	sbc  b                                           ; $5d66: $98
	sbc  c                                           ; $5d67: $99
	adc  b                                           ; $5d68: $88
	adc  b                                           ; $5d69: $88
	adc  b                                           ; $5d6a: $88
	adc  c                                           ; $5d6b: $89
	adc  b                                           ; $5d6c: $88
	adc  b                                           ; $5d6d: $88
	adc  c                                           ; $5d6e: $89
	adc  c                                           ; $5d6f: $89
	adc  b                                           ; $5d70: $88
	adc  b                                           ; $5d71: $88
	adc  c                                           ; $5d72: $89
	adc  b                                           ; $5d73: $88
	adc  b                                           ; $5d74: $88
	adc  b                                           ; $5d75: $88
	adc  b                                           ; $5d76: $88
	adc  b                                           ; $5d77: $88
	adc  b                                           ; $5d78: $88
	adc  b                                           ; $5d79: $88
	adc  b                                           ; $5d7a: $88
	adc  b                                           ; $5d7b: $88
	adc  b                                           ; $5d7c: $88
	adc  b                                           ; $5d7d: $88
	adc  b                                           ; $5d7e: $88
	adc  b                                           ; $5d7f: $88
	adc  b                                           ; $5d80: $88
	adc  b                                           ; $5d81: $88
	adc  b                                           ; $5d82: $88
	adc  b                                           ; $5d83: $88
	adc  b                                           ; $5d84: $88
	adc  b                                           ; $5d85: $88
	adc  b                                           ; $5d86: $88
	adc  b                                           ; $5d87: $88
	adc  b                                           ; $5d88: $88
	adc  b                                           ; $5d89: $88
	adc  b                                           ; $5d8a: $88
	add  c                                           ; $5d8b: $81
	ld   de, $1111                                   ; $5d8c: $11 $11 $11
	ld   de, $1111                                   ; $5d8f: $11 $11 $11
	ld   de, $1111                                   ; $5d92: $11 $11 $11
	ld   de, $1111                                   ; $5d95: $11 $11 $11
	ld   de, $1111                                   ; $5d98: $11 $11 $11
	ld   de, $1111                                   ; $5d9b: $11 $11 $11
	ld   de, $1111                                   ; $5d9e: $11 $11 $11
	ld   de, $1111                                   ; $5da1: $11 $11 $11
	ld   de, $1111                                   ; $5da4: $11 $11 $11
	ld   de, $1111                                   ; $5da7: $11 $11 $11
	ld   de, $1111                                   ; $5daa: $11 $11 $11
	ld   de, $1111                                   ; $5dad: $11 $11 $11
	ld   de, $1111                                   ; $5db0: $11 $11 $11
	ld   de, $1111                                   ; $5db3: $11 $11 $11
	ld   de, $1111                                   ; $5db6: $11 $11 $11
	ld   de, $4800                                   ; $5db9: $11 $00 $48
	ld   de, $1111                                   ; $5dbc: $11 $11 $11
	ld   de, $1111                                   ; $5dbf: $11 $11 $11
	ld   de, $1111                                   ; $5dc2: $11 $11 $11
	ld   de, $5413                                   ; $5dc5: $11 $13 $54
	ld   d, h                                        ; $5dc8: $54
	ld   d, h                                        ; $5dc9: $54
	ld   b, c                                        ; $5dca: $41
	rra                                              ; $5dcb: $1f
	rst  $38                                         ; $5dcc: $ff
	pop  af                                          ; $5dcd: $f1
	ld   de, $1411                                   ; $5dce: $11 $11 $14
	ld   hl, $1c11                                   ; $5dd1: $21 $11 $1c
	pop  de                                          ; $5dd4: $d1
	db   $fc                                         ; $5dd5: $fc
	pop  de                                          ; $5dd6: $d1
	pop  hl                                          ; $5dd7: $e1
	ld   de, $1111                                   ; $5dd8: $11 $11 $11
	ld   de, $1111                                   ; $5ddb: $11 $11 $11
	ld   de, $1111                                   ; $5dde: $11 $11 $11
	ld   de, $1111                                   ; $5de1: $11 $11 $11
	ld   de, $5411                                   ; $5de4: $11 $11 $54
	ld   b, h                                        ; $5de7: $44
	inc  h                                           ; $5de8: $24
	ld   de, $5454                                   ; $5de9: $11 $54 $54
	ld   h, a                                        ; $5dec: $67
	ld   [hl], d                                     ; $5ded: $72
	ld   de, $1111                                   ; $5dee: $11 $11 $11
	ld   de, $1112                                   ; $5df1: $11 $12 $11
	ld   [de], a                                     ; $5df4: $12
	ld   de, $1111                                   ; $5df5: $11 $11 $11
	ld   h, [hl]                                     ; $5df8: $66
	halt                                             ; $5df9: $76
	db   $f4                                         ; $5dfa: $f4
	ld   de, $8888                                   ; $5dfb: $11 $88 $88
	adc  b                                           ; $5dfe: $88
	adc  b                                           ; $5dff: $88
	adc  b                                           ; $5e00: $88
	adc  b                                           ; $5e01: $88
	adc  b                                           ; $5e02: $88
	adc  b                                           ; $5e03: $88
	adc  b                                           ; $5e04: $88
	adc  b                                           ; $5e05: $88
	adc  b                                           ; $5e06: $88
	adc  b                                           ; $5e07: $88
	adc  b                                           ; $5e08: $88
	adc  b                                           ; $5e09: $88
	adc  b                                           ; $5e0a: $88
	adc  b                                           ; $5e0b: $88
	adc  b                                           ; $5e0c: $88
	adc  b                                           ; $5e0d: $88
	adc  b                                           ; $5e0e: $88
	adc  b                                           ; $5e0f: $88
	adc  b                                           ; $5e10: $88
	adc  b                                           ; $5e11: $88
	adc  b                                           ; $5e12: $88
	adc  b                                           ; $5e13: $88
	adc  b                                           ; $5e14: $88
	adc  b                                           ; $5e15: $88
	adc  b                                           ; $5e16: $88
	adc  b                                           ; $5e17: $88
	adc  b                                           ; $5e18: $88
	adc  b                                           ; $5e19: $88
	adc  b                                           ; $5e1a: $88
	adc  b                                           ; $5e1b: $88
	add  a                                           ; $5e1c: $87
	adc  b                                           ; $5e1d: $88
	adc  c                                           ; $5e1e: $89
	add  a                                           ; $5e1f: $87
	add  a                                           ; $5e20: $87
	adc  b                                           ; $5e21: $88
	adc  b                                           ; $5e22: $88
	ld   a, b                                        ; $5e23: $78
	adc  b                                           ; $5e24: $88
	adc  b                                           ; $5e25: $88
	adc  b                                           ; $5e26: $88
	adc  b                                           ; $5e27: $88
	adc  b                                           ; $5e28: $88
	adc  b                                           ; $5e29: $88
	adc  b                                           ; $5e2a: $88
	adc  b                                           ; $5e2b: $88
	adc  b                                           ; $5e2c: $88
	adc  b                                           ; $5e2d: $88
	adc  b                                           ; $5e2e: $88
	adc  b                                           ; $5e2f: $88
	adc  b                                           ; $5e30: $88
	adc  b                                           ; $5e31: $88
	adc  b                                           ; $5e32: $88
	adc  b                                           ; $5e33: $88
	adc  b                                           ; $5e34: $88
	adc  b                                           ; $5e35: $88
	sbc  b                                           ; $5e36: $98
	adc  b                                           ; $5e37: $88
	adc  b                                           ; $5e38: $88
	adc  c                                           ; $5e39: $89
	adc  b                                           ; $5e3a: $88
	add  a                                           ; $5e3b: $87
	sbc  c                                           ; $5e3c: $99
	ld   a, b                                        ; $5e3d: $78
	ld   a, b                                        ; $5e3e: $78
	adc  b                                           ; $5e3f: $88
	adc  b                                           ; $5e40: $88
	adc  b                                           ; $5e41: $88
	add  a                                           ; $5e42: $87
	adc  b                                           ; $5e43: $88
	adc  b                                           ; $5e44: $88
	ld   [hl], a                                     ; $5e45: $77
	adc  c                                           ; $5e46: $89
	xor  d                                           ; $5e47: $aa
	halt                                             ; $5e48: $76
	add  a                                           ; $5e49: $87
	ld   l, b                                        ; $5e4a: $68
	adc  b                                           ; $5e4b: $88
	adc  b                                           ; $5e4c: $88
	add  a                                           ; $5e4d: $87
	ld   a, b                                        ; $5e4e: $78
	adc  b                                           ; $5e4f: $88
	adc  b                                           ; $5e50: $88
	sbc  b                                           ; $5e51: $98
	add  a                                           ; $5e52: $87
	ld   a, b                                        ; $5e53: $78
	adc  b                                           ; $5e54: $88
	adc  c                                           ; $5e55: $89
	adc  b                                           ; $5e56: $88
	sbc  b                                           ; $5e57: $98
	sbc  b                                           ; $5e58: $98
	adc  b                                           ; $5e59: $88
	adc  b                                           ; $5e5a: $88
	sub  a                                           ; $5e5b: $97
	adc  c                                           ; $5e5c: $89
	add  a                                           ; $5e5d: $87
	ld   a, c                                        ; $5e5e: $79
	ld   a, c                                        ; $5e5f: $79
	ld   a, b                                        ; $5e60: $78
	adc  b                                           ; $5e61: $88
	sbc  b                                           ; $5e62: $98
	adc  b                                           ; $5e63: $88
	sbc  b                                           ; $5e64: $98
	sbc  b                                           ; $5e65: $98
	add  a                                           ; $5e66: $87
	sbc  b                                           ; $5e67: $98
	adc  b                                           ; $5e68: $88
	adc  b                                           ; $5e69: $88
	adc  b                                           ; $5e6a: $88
	adc  c                                           ; $5e6b: $89
	adc  b                                           ; $5e6c: $88
	and  a                                           ; $5e6d: $a7
	ld   a, c                                        ; $5e6e: $79
	adc  b                                           ; $5e6f: $88
	adc  b                                           ; $5e70: $88
	add  a                                           ; $5e71: $87
	adc  b                                           ; $5e72: $88
	add  a                                           ; $5e73: $87
	adc  d                                           ; $5e74: $8a
	ld   [hl], a                                     ; $5e75: $77
	adc  b                                           ; $5e76: $88
	adc  c                                           ; $5e77: $89
	adc  b                                           ; $5e78: $88
	adc  b                                           ; $5e79: $88
	sbc  b                                           ; $5e7a: $98
	ld   a, c                                        ; $5e7b: $79
	adc  b                                           ; $5e7c: $88
	adc  b                                           ; $5e7d: $88
	sub  a                                           ; $5e7e: $97
	sbc  b                                           ; $5e7f: $98
	sub  a                                           ; $5e80: $97
	adc  c                                           ; $5e81: $89
	add  a                                           ; $5e82: $87
	adc  c                                           ; $5e83: $89
	ld   a, b                                        ; $5e84: $78
	ld   a, c                                        ; $5e85: $79
	add  a                                           ; $5e86: $87
	xor  b                                           ; $5e87: $a8
	ld   a, b                                        ; $5e88: $78
	sbc  b                                           ; $5e89: $98
	adc  b                                           ; $5e8a: $88
	adc  b                                           ; $5e8b: $88
	ld   a, b                                        ; $5e8c: $78
	adc  b                                           ; $5e8d: $88
	adc  b                                           ; $5e8e: $88
	sub  a                                           ; $5e8f: $97
	sbc  b                                           ; $5e90: $98
	adc  b                                           ; $5e91: $88
	ld   a, b                                        ; $5e92: $78
	ld   a, c                                        ; $5e93: $79
	adc  b                                           ; $5e94: $88
	sub  a                                           ; $5e95: $97
	sub  a                                           ; $5e96: $97
	adc  c                                           ; $5e97: $89
	adc  b                                           ; $5e98: $88
	ld   a, c                                        ; $5e99: $79
	adc  c                                           ; $5e9a: $89
	ld   a, b                                        ; $5e9b: $78
	sbc  b                                           ; $5e9c: $98
	sub  a                                           ; $5e9d: $97
	sbc  b                                           ; $5e9e: $98
	ld   a, b                                        ; $5e9f: $78
	sbc  b                                           ; $5ea0: $98
	adc  b                                           ; $5ea1: $88
	adc  b                                           ; $5ea2: $88
	ld   a, c                                        ; $5ea3: $79
	add  a                                           ; $5ea4: $87
	sbc  b                                           ; $5ea5: $98
	ld   a, c                                        ; $5ea6: $79
	ld   a, b                                        ; $5ea7: $78
	sbc  c                                           ; $5ea8: $99
	ld   [hl], a                                     ; $5ea9: $77
	xor  b                                           ; $5eaa: $a8
	sub  a                                           ; $5eab: $97
	sbc  c                                           ; $5eac: $99
	ld   a, c                                        ; $5ead: $79
	adc  c                                           ; $5eae: $89
	ld   a, b                                        ; $5eaf: $78
	sbc  b                                           ; $5eb0: $98
	ld   [hl], a                                     ; $5eb1: $77
	adc  b                                           ; $5eb2: $88
	add  a                                           ; $5eb3: $87
	ld   a, b                                        ; $5eb4: $78
	sbc  c                                           ; $5eb5: $99
	adc  b                                           ; $5eb6: $88
	ld   a, c                                        ; $5eb7: $79
	sbc  b                                           ; $5eb8: $98
	adc  b                                           ; $5eb9: $88
	add  a                                           ; $5eba: $87
	sub  a                                           ; $5ebb: $97
	sbc  c                                           ; $5ebc: $99
	ld   a, c                                        ; $5ebd: $79
	adc  b                                           ; $5ebe: $88
	ld   a, b                                        ; $5ebf: $78
	sub  a                                           ; $5ec0: $97
	ld   a, c                                        ; $5ec1: $79
	add  a                                           ; $5ec2: $87
	adc  c                                           ; $5ec3: $89
	and  a                                           ; $5ec4: $a7
	ld   a, b                                        ; $5ec5: $78
	halt                                             ; $5ec6: $76
	adc  c                                           ; $5ec7: $89
	sub  [hl]                                        ; $5ec8: $96
	sbc  c                                           ; $5ec9: $99
	adc  b                                           ; $5eca: $88
	ld   a, c                                        ; $5ecb: $79
	adc  d                                           ; $5ecc: $8a
	add  a                                           ; $5ecd: $87
	sbc  b                                           ; $5ece: $98
	add  a                                           ; $5ecf: $87
	ld   [hl], a                                     ; $5ed0: $77
	adc  b                                           ; $5ed1: $88
	adc  c                                           ; $5ed2: $89
	sub  a                                           ; $5ed3: $97
	adc  c                                           ; $5ed4: $89
	ld   a, b                                        ; $5ed5: $78
	add  a                                           ; $5ed6: $87
	add  [hl]                                        ; $5ed7: $86
	ld   l, d                                        ; $5ed8: $6a
	adc  c                                           ; $5ed9: $89
	or   [hl]                                        ; $5eda: $b6
	halt                                             ; $5edb: $76
	ld   [hl], a                                     ; $5edc: $77
	adc  d                                           ; $5edd: $8a
	xor  d                                           ; $5ede: $aa
	ld   [hl], a                                     ; $5edf: $77
	ld   h, [hl]                                     ; $5ee0: $66
	add  a                                           ; $5ee1: $87
	ld   a, b                                        ; $5ee2: $78
	xor  c                                           ; $5ee3: $a9
	add  a                                           ; $5ee4: $87
	ld   h, a                                        ; $5ee5: $67
	add  a                                           ; $5ee6: $87
	adc  c                                           ; $5ee7: $89
	sbc  c                                           ; $5ee8: $99
	ld   [hl], a                                     ; $5ee9: $77
	ld   l, c                                        ; $5eea: $69
	adc  c                                           ; $5eeb: $89
	and  [hl]                                        ; $5eec: $a6
	ld   a, b                                        ; $5eed: $78
	sbc  b                                           ; $5eee: $98
	sbc  b                                           ; $5eef: $98
	adc  b                                           ; $5ef0: $88
	ld   a, b                                        ; $5ef1: $78
	ld   a, b                                        ; $5ef2: $78
	xor  c                                           ; $5ef3: $a9
	ld   a, b                                        ; $5ef4: $78
	adc  b                                           ; $5ef5: $88
	ld   a, b                                        ; $5ef6: $78
	sub  a                                           ; $5ef7: $97
	ld   [hl], a                                     ; $5ef8: $77
	xor  b                                           ; $5ef9: $a8
	ld   l, c                                        ; $5efa: $69
	sbc  b                                           ; $5efb: $98
	add  a                                           ; $5efc: $87
	ld   a, b                                        ; $5efd: $78
	sbc  b                                           ; $5efe: $98
	ld   a, b                                        ; $5eff: $78
	ld   [hl], a                                     ; $5f00: $77
	and  a                                           ; $5f01: $a7
	ld   a, c                                        ; $5f02: $79
	ld   a, b                                        ; $5f03: $78
	sub  a                                           ; $5f04: $97
	ld   a, c                                        ; $5f05: $79
	adc  c                                           ; $5f06: $89
	add  a                                           ; $5f07: $87
	adc  c                                           ; $5f08: $89
	ld   a, b                                        ; $5f09: $78
	ld   a, c                                        ; $5f0a: $79
	and  a                                           ; $5f0b: $a7
	add  a                                           ; $5f0c: $87
	sbc  b                                           ; $5f0d: $98
	ld   [hl], a                                     ; $5f0e: $77
	sub  a                                           ; $5f0f: $97
	ld   a, c                                        ; $5f10: $79
	ld   l, c                                        ; $5f11: $69
	sbc  b                                           ; $5f12: $98
	sbc  b                                           ; $5f13: $98
	halt                                             ; $5f14: $76
	xor  b                                           ; $5f15: $a8
	adc  c                                           ; $5f16: $89
	adc  c                                           ; $5f17: $89
	ld   a, b                                        ; $5f18: $78
	sbc  b                                           ; $5f19: $98
	adc  b                                           ; $5f1a: $88
	sub  [hl]                                        ; $5f1b: $96
	ld   [hl], a                                     ; $5f1c: $77
	adc  e                                           ; $5f1d: $8b
	xor  c                                           ; $5f1e: $a9
	adc  b                                           ; $5f1f: $88
	sub  l                                           ; $5f20: $95
	adc  c                                           ; $5f21: $89
	ld   a, c                                        ; $5f22: $79
	add  a                                           ; $5f23: $87
	add  a                                           ; $5f24: $87
	ld   a, b                                        ; $5f25: $78
	adc  b                                           ; $5f26: $88
	ld   l, b                                        ; $5f27: $68
	sbc  c                                           ; $5f28: $99
	ld   a, c                                        ; $5f29: $79
	ld   [hl], a                                     ; $5f2a: $77
	and  a                                           ; $5f2b: $a7
	add  a                                           ; $5f2c: $87
	ld   a, b                                        ; $5f2d: $78
	sub  a                                           ; $5f2e: $97
	ld   a, d                                        ; $5f2f: $7a
	adc  c                                           ; $5f30: $89
	ld   h, a                                        ; $5f31: $67
	sbc  c                                           ; $5f32: $99
	sub  [hl]                                        ; $5f33: $96
	adc  b                                           ; $5f34: $88
	ld   h, a                                        ; $5f35: $67
	sbc  c                                           ; $5f36: $99
	ld   h, a                                        ; $5f37: $67
	sub  a                                           ; $5f38: $97
	add  a                                           ; $5f39: $87
	sbc  c                                           ; $5f3a: $99
	ld   a, d                                        ; $5f3b: $7a
	ld   [hl], a                                     ; $5f3c: $77
	ld   a, b                                        ; $5f3d: $78
	sub  [hl]                                        ; $5f3e: $96
	and  a                                           ; $5f3f: $a7
	adc  c                                           ; $5f40: $89
	ld   a, b                                        ; $5f41: $78
	adc  c                                           ; $5f42: $89
	ld   [hl], a                                     ; $5f43: $77
	ld   a, c                                        ; $5f44: $79
	add  a                                           ; $5f45: $87
	sbc  c                                           ; $5f46: $99
	xor  b                                           ; $5f47: $a8
	ld   h, a                                        ; $5f48: $67
	adc  c                                           ; $5f49: $89
	ld   a, b                                        ; $5f4a: $78
	adc  b                                           ; $5f4b: $88
	xor  b                                           ; $5f4c: $a8
	add  a                                           ; $5f4d: $87
	ld   a, c                                        ; $5f4e: $79
	adc  c                                           ; $5f4f: $89
	adc  c                                           ; $5f50: $89
	adc  c                                           ; $5f51: $89
	ld   l, b                                        ; $5f52: $68
	halt                                             ; $5f53: $76
	xor  c                                           ; $5f54: $a9
	adc  b                                           ; $5f55: $88
	adc  c                                           ; $5f56: $89
	and  [hl]                                        ; $5f57: $a6
	ld   l, c                                        ; $5f58: $69
	ld   l, b                                        ; $5f59: $68
	add  a                                           ; $5f5a: $87
	ld   a, c                                        ; $5f5b: $79
	and  [hl]                                        ; $5f5c: $a6
	ld   a, b                                        ; $5f5d: $78
	sub  a                                           ; $5f5e: $97
	sbc  d                                           ; $5f5f: $9a
	ld   a, b                                        ; $5f60: $78
	ld   a, c                                        ; $5f61: $79
	add  [hl]                                        ; $5f62: $86
	add  a                                           ; $5f63: $87
	adc  b                                           ; $5f64: $88
	add  a                                           ; $5f65: $87
	ld   a, c                                        ; $5f66: $79
	sbc  c                                           ; $5f67: $99
	sub  a                                           ; $5f68: $97
	sbc  c                                           ; $5f69: $99
	sbc  b                                           ; $5f6a: $98
	sbc  c                                           ; $5f6b: $99
	sbc  c                                           ; $5f6c: $99
	adc  b                                           ; $5f6d: $88
	ld   a, c                                        ; $5f6e: $79
	and  a                                           ; $5f6f: $a7
	adc  b                                           ; $5f70: $88
	adc  b                                           ; $5f71: $88
	ld   [hl], a                                     ; $5f72: $77
	ld   a, b                                        ; $5f73: $78
	ld   [hl], a                                     ; $5f74: $77
	halt                                             ; $5f75: $76
	halt                                             ; $5f76: $76
	ld   h, [hl]                                     ; $5f77: $66
	ld   h, [hl]                                     ; $5f78: $66
	ld   h, [hl]                                     ; $5f79: $66
	ld   [hl], a                                     ; $5f7a: $77
	ld   l, c                                        ; $5f7b: $69
	adc  b                                           ; $5f7c: $88
	xor  d                                           ; $5f7d: $aa
	sbc  e                                           ; $5f7e: $9b
	xor  d                                           ; $5f7f: $aa
	set  1, d                                        ; $5f80: $cb $ca
	call z, $9bba                                    ; $5f82: $cc $ba $9b
	adc  b                                           ; $5f85: $88
	add  a                                           ; $5f86: $87
	ld   h, [hl]                                     ; $5f87: $66
	add  [hl]                                        ; $5f88: $86
	ld   d, l                                        ; $5f89: $55
	ld   b, h                                        ; $5f8a: $44
	ld   b, d                                        ; $5f8b: $42
	inc  sp                                          ; $5f8c: $33
	ld   b, h                                        ; $5f8d: $44
	ld   b, h                                        ; $5f8e: $44
	ld   b, l                                        ; $5f8f: $45
	ld   a, b                                        ; $5f90: $78
	ld   a, c                                        ; $5f91: $79
	xor  [hl]                                        ; $5f92: $ae
	db   $dd                                         ; $5f93: $dd
	call $dced                                       ; $5f94: $cd $ed $dc
	db   $dd                                         ; $5f97: $dd
	cp   l                                           ; $5f98: $bd
	cp   b                                           ; $5f99: $b8
	xor  d                                           ; $5f9a: $aa
	sub  l                                           ; $5f9b: $95
	halt                                             ; $5f9c: $76
	ld   d, [hl]                                     ; $5f9d: $56
	ld   b, h                                        ; $5f9e: $44
	ld   [hl-], a                                    ; $5f9f: $32
	ld   hl, $4212                                   ; $5fa0: $21 $12 $42
	ld   [hl+], a                                    ; $5fa3: $22
	dec  [hl]                                        ; $5fa4: $35
	ld   a, b                                        ; $5fa5: $78
	adc  b                                           ; $5fa6: $88
	call $efff                                       ; $5fa7: $cd $ff $ef
	rst  $38                                         ; $5faa: $ff
	db   $dd                                         ; $5fab: $dd
	db   $dd                                         ; $5fac: $dd
	db   $dd                                         ; $5fad: $dd
	xor  e                                           ; $5fae: $ab
	xor  c                                           ; $5faf: $a9
	sub  [hl]                                        ; $5fb0: $96
	halt                                             ; $5fb1: $76
	ld   d, l                                        ; $5fb2: $55
	ld   b, e                                        ; $5fb3: $43
	ld   [de], a                                     ; $5fb4: $12
	ld   hl, $4112                                   ; $5fb5: $21 $12 $41
	ld   de, $7814                                   ; $5fb8: $11 $14 $78
	adc  d                                           ; $5fbb: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fbc: $cf
	rst  $38                                         ; $5fbd: $ff
	rst  $38                                         ; $5fbe: $ff
	rst  $38                                         ; $5fbf: $ff
	xor  $ed                                         ; $5fc0: $ee $ed
	db   $eb                                         ; $5fc2: $eb
	xor  d                                           ; $5fc3: $aa
	xor  c                                           ; $5fc4: $a9
	and  [hl]                                        ; $5fc5: $a6
	ld   d, [hl]                                     ; $5fc6: $56
	ld   d, h                                        ; $5fc7: $54
	ld   sp, $1102                                   ; $5fc8: $31 $02 $11
	inc  d                                           ; $5fcb: $14
	ld   de, $3621                                   ; $5fcc: $11 $21 $36
	adc  b                                           ; $5fcf: $88
	xor  l                                           ; $5fd0: $ad
	rst  $28                                         ; $5fd1: $ef
	rst  $38                                         ; $5fd2: $ff
	rst  $38                                         ; $5fd3: $ff
	rst  $38                                         ; $5fd4: $ff
	db   $fd                                         ; $5fd5: $fd
	rst  JumpTable                                         ; $5fd6: $df
	cp   c                                           ; $5fd7: $b9
	cp   c                                           ; $5fd8: $b9
	sbc  c                                           ; $5fd9: $99
	sub  l                                           ; $5fda: $95
	ld   b, l                                        ; $5fdb: $45
	ld   b, e                                        ; $5fdc: $43
	ld   de, $1211                                   ; $5fdd: $11 $11 $12
	ld   de, $1511                                   ; $5fe0: $11 $11 $15
	ld   a, b                                        ; $5fe3: $78
	sbc  l                                           ; $5fe4: $9d
	rst  $38                                         ; $5fe5: $ff
	rst  $38                                         ; $5fe6: $ff
	rst  $38                                         ; $5fe7: $ff
	rst  $38                                         ; $5fe8: $ff
	xor  $ed                                         ; $5fe9: $ee $ed
	cp   c                                           ; $5feb: $b9
	xor  d                                           ; $5fec: $aa
	adc  d                                           ; $5fed: $8a
	ld   [hl], l                                     ; $5fee: $75
	ld   d, h                                        ; $5fef: $54
	ld   sp, $1111                                   ; $5ff0: $31 $11 $11
	inc  de                                          ; $5ff3: $13
	ld   de, $5611                                   ; $5ff4: $11 $11 $56
	adc  b                                           ; $5ff7: $88
	cp   a                                           ; $5ff8: $bf
	rst  $38                                         ; $5ff9: $ff
	rst  $38                                         ; $5ffa: $ff
	rst  $38                                         ; $5ffb: $ff
	rst  $38                                         ; $5ffc: $ff
	rst  $28                                         ; $5ffd: $ef
	db   $dd                                         ; $5ffe: $dd
	sub  a                                           ; $5fff: $97
	xor  c                                           ; $6000: $a9
	sbc  b                                           ; $6001: $98
	ld   h, e                                        ; $6002: $63
	ld   d, e                                        ; $6003: $53
	ld   de, $1311                                   ; $6004: $11 $11 $13
	ld   de, $1611                                   ; $6007: $11 $11 $16
	ld   h, a                                        ; $600a: $67
	sbc  a                                           ; $600b: $9f
	rst  $38                                         ; $600c: $ff
	rst  $38                                         ; $600d: $ff
	rst  $38                                         ; $600e: $ff
	rst  $38                                         ; $600f: $ff
	cp   $ce                                         ; $6010: $fe $ce
	and  a                                           ; $6012: $a7
	and  a                                           ; $6013: $a7
	ld   a, c                                        ; $6014: $79
	ld   h, l                                        ; $6015: $65
	ld   b, e                                        ; $6016: $43
	ld   hl, $1511                                   ; $6017: $21 $11 $15
	ld   de, $1611                                   ; $601a: $11 $11 $16
	ld   [hl], l                                     ; $601d: $75
	sbc  a                                           ; $601e: $9f
	rst  $38                                         ; $601f: $ff
	rst  $38                                         ; $6020: $ff
	rst  $38                                         ; $6021: $ff
	rst  $38                                         ; $6022: $ff
	sbc  $cc                                         ; $6023: $de $cc
	ld   [hl], l                                     ; $6025: $75
	xor  b                                           ; $6026: $a8
	ld   h, a                                        ; $6027: $67
	ld   d, l                                        ; $6028: $55
	ld   b, c                                        ; $6029: $41
	ld   de, $6111                                   ; $602a: $11 $11 $61
	ld   de, $5812                                   ; $602d: $11 $12 $58
	ld   a, e                                        ; $6030: $7b
	rst  $38                                         ; $6031: $ff
	rst  $38                                         ; $6032: $ff
	rst  $38                                         ; $6033: $ff
	rst  $38                                         ; $6034: $ff
	db   $ed                                         ; $6035: $ed
	cp   d                                           ; $6036: $ba
	jp   Jump_0d3_6649                               ; $6037: $c3 $49 $66


	ld   h, h                                        ; $603a: $64
	ld   b, e                                        ; $603b: $43
	ld   hl, $9111                                   ; $603c: $21 $11 $91
	ld   de, $9613                                   ; $603f: $11 $13 $96
	ld   a, d                                        ; $6042: $7a
	rst  $38                                         ; $6043: $ff
	rst  $38                                         ; $6044: $ff
	rst  $38                                         ; $6045: $ff
	rst  $38                                         ; $6046: $ff
	reti                                             ; $6047: $d9


	call z, $1783                                    ; $6048: $cc $83 $17
	ld   d, h                                        ; $604b: $54
	ld   b, c                                        ; $604c: $41
	inc  de                                          ; $604d: $13
	ld   de, $5116                                   ; $604e: $11 $16 $51
	ld   de, $b918                                   ; $6051: $11 $18 $b9
	adc  a                                           ; $6054: $8f
	rst  $38                                         ; $6055: $ff
	rst  $38                                         ; $6056: $ff
	rst  $38                                         ; $6057: $ff
	rst  $38                                         ; $6058: $ff
	cp   b                                           ; $6059: $b8
	cp   e                                           ; $605a: $bb
	ld   b, c                                        ; $605b: $41
	inc  h                                           ; $605c: $24
	dec  h                                           ; $605d: $25
	ld   de, $1111                                   ; $605e: $11 $11 $11
	sub  c                                           ; $6061: $91
	inc  d                                           ; $6062: $14
	ld   [de], a                                     ; $6063: $12
	cp   e                                           ; $6064: $bb
	xor  l                                           ; $6065: $ad
	rst  $38                                         ; $6066: $ff
	rst  $38                                         ; $6067: $ff
	rst  $38                                         ; $6068: $ff
	rst  $38                                         ; $6069: $ff
	ld   a, [$717a]                                  ; $606a: $fa $7a $71
	inc  d                                           ; $606d: $14
	ld   de, $1101                                   ; $606e: $11 $01 $11
	ld   de, $14b1                                   ; $6071: $11 $b1 $14
	dec  d                                           ; $6074: $15
	call c, $ffaf                                    ; $6075: $dc $af $ff
	rst  $38                                         ; $6078: $ff
	rst  $38                                         ; $6079: $ff
	rst  $38                                         ; $607a: $ff
	jp   hl                                          ; $607b: $e9


	sbc  c                                           ; $607c: $99
	ld   b, c                                        ; $607d: $41
	inc  de                                          ; $607e: $13
	ld   de, $1111                                   ; $607f: $11 $11 $11
	ld   a, [de]                                     ; $6082: $1a
	ld   de, $7b31                                   ; $6083: $11 $31 $7b
	cp   e                                           ; $6086: $bb
	rst  $38                                         ; $6087: $ff
	rst  $38                                         ; $6088: $ff
	rst  $38                                         ; $6089: $ff
	rst  $38                                         ; $608a: $ff
	db   $fd                                         ; $608b: $fd
	cp   d                                           ; $608c: $ba
	add  h                                           ; $608d: $84
	ld   de, $1131                                   ; $608e: $11 $31 $11
	ld   de, $8113                                   ; $6091: $11 $13 $81
	inc  d                                           ; $6094: $14
	dec  a                                           ; $6095: $3d
	xor  e                                           ; $6096: $ab
	rst  $28                                         ; $6097: $ef
	rst  $38                                         ; $6098: $ff
	rst  $38                                         ; $6099: $ff
	rst  $38                                         ; $609a: $ff
	db   $fd                                         ; $609b: $fd
	jp   z, $11b3                                    ; $609c: $ca $b3 $11

	ld   de, $1111                                   ; $609f: $11 $11 $11
	add  hl, de                                      ; $60a2: $19
	ld   de, $8d43                                   ; $60a3: $11 $43 $8d
	cp   d                                           ; $60a6: $ba
	rst  $38                                         ; $60a7: $ff
	rst  $38                                         ; $60a8: $ff
	rst  $38                                         ; $60a9: $ff
	rst  $38                                         ; $60aa: $ff
	rst  JumpTable                                         ; $60ab: $df
	ret                                              ; $60ac: $c9


	add  c                                           ; $60ad: $81
	ld   de, $1111                                   ; $60ae: $11 $11 $11
	ld   de, $13c1                                   ; $60b1: $11 $c1 $13
	ld   e, h                                        ; $60b4: $5c
	db   $ec                                         ; $60b5: $ec
	xor  a                                           ; $60b6: $af
	rst  $38                                         ; $60b7: $ff
	rst  $38                                         ; $60b8: $ff
	rst  $38                                         ; $60b9: $ff
	db   $fc                                         ; $60ba: $fc
	res  4, a                                        ; $60bb: $cb $a7
	ld   de, $1111                                   ; $60bd: $11 $11 $11
	ld   de, $1194                                   ; $60c0: $11 $94 $11
	inc  a                                           ; $60c3: $3c
	db   $fd                                         ; $60c4: $fd
	cp   a                                           ; $60c5: $bf
	rst  $38                                         ; $60c6: $ff
	rst  $38                                         ; $60c7: $ff
	rst  $38                                         ; $60c8: $ff
	ei                                               ; $60c9: $fb
	xor  e                                           ; $60ca: $ab
	sub  [hl]                                        ; $60cb: $96
	ld   de, $1111                                   ; $60cc: $11 $11 $11
	ld   de, $11c1                                   ; $60cf: $11 $c1 $11
	ccf                                              ; $60d2: $3f
	db   $fd                                         ; $60d3: $fd
	rst  JumpTable                                         ; $60d4: $df
	rst  $38                                         ; $60d5: $ff
	rst  $38                                         ; $60d6: $ff
	rst  $38                                         ; $60d7: $ff
	ld   a, [$b298]                                  ; $60d8: $fa $98 $b2
	ld   de, $1111                                   ; $60db: $11 $11 $11
	add  hl, de                                      ; $60de: $19
	ld   de, $df21                                   ; $60df: $11 $21 $df
	db   $fd                                         ; $60e2: $fd
	rst  $38                                         ; $60e3: $ff
	rst  $38                                         ; $60e4: $ff
	rst  $38                                         ; $60e5: $ff
	rst  $38                                         ; $60e6: $ff
	cp   d                                           ; $60e7: $ba
	ld   e, c                                        ; $60e8: $59
	ld   sp, $1111                                   ; $60e9: $31 $11 $11
	ld   de, $1441                                   ; $60ec: $11 $41 $14
	ld   c, a                                        ; $60ef: $4f
	rst  $38                                         ; $60f0: $ff
	rst  $38                                         ; $60f1: $ff
	rst  $38                                         ; $60f2: $ff
	rst  $38                                         ; $60f3: $ff
	rst  $38                                         ; $60f4: $ff
	ei                                               ; $60f5: $fb
	and  e                                           ; $60f6: $a3
	ld   d, c                                        ; $60f7: $51
	ld   de, $1111                                   ; $60f8: $11 $11 $11
	ld   sp, $4f17                                   ; $60fb: $31 $17 $4f
	rst  $38                                         ; $60fe: $ff
	rst  $38                                         ; $60ff: $ff
	rst  $38                                         ; $6100: $ff
	rst  $38                                         ; $6101: $ff
	rst  $38                                         ; $6102: $ff
	db   $db                                         ; $6103: $db
	and  e                                           ; $6104: $a3
	ld   sp, $1111                                   ; $6105: $31 $11 $11
	ld   [de], a                                     ; $6108: $12
	ld   de, $9f64                                   ; $6109: $11 $64 $9f
	rst  $38                                         ; $610c: $ff
	rst  $38                                         ; $610d: $ff
	rst  $38                                         ; $610e: $ff
	rst  $38                                         ; $610f: $ff
	rst  $38                                         ; $6110: $ff
	sbc  h                                           ; $6111: $9c
	ld   [hl], c                                     ; $6112: $71
	ld   de, $1111                                   ; $6113: $11 $11 $11
	ld   de, $7711                                   ; $6116: $11 $11 $77
	rst  $38                                         ; $6119: $ff
	rst  $38                                         ; $611a: $ff
	rst  $38                                         ; $611b: $ff
	rst  $38                                         ; $611c: $ff
	rst  $38                                         ; $611d: $ff
	ld   sp, hl                                      ; $611e: $f9
	cp   d                                           ; $611f: $ba
	ld   de, $1111                                   ; $6120: $11 $11 $11
	ld   de, $3511                                   ; $6123: $11 $11 $35
	xor  a                                           ; $6126: $af
	rst  $38                                         ; $6127: $ff
	rst  $38                                         ; $6128: $ff
	rst  $38                                         ; $6129: $ff
	rst  $38                                         ; $612a: $ff
	rst  $38                                         ; $612b: $ff
	sbc  h                                           ; $612c: $9c
	ld   [hl], c                                     ; $612d: $71
	ld   de, $1111                                   ; $612e: $11 $11 $11
	ld   de, $6f15                                   ; $6131: $11 $15 $6f
	rst  $38                                         ; $6134: $ff
	rst  $38                                         ; $6135: $ff
	rst  $38                                         ; $6136: $ff
	rst  $38                                         ; $6137: $ff
	rst  $38                                         ; $6138: $ff
	cp   e                                           ; $6139: $bb
	and  c                                           ; $613a: $a1
	ld   de, $1111                                   ; $613b: $11 $11 $11
	ld   de, $4f16                                   ; $613e: $11 $16 $4f
	rst  $38                                         ; $6141: $ff
	rst  $38                                         ; $6142: $ff
	rst  $38                                         ; $6143: $ff
	rst  $38                                         ; $6144: $ff
	rst  $38                                         ; $6145: $ff
	cp   d                                           ; $6146: $ba
	or   c                                           ; $6147: $b1
	ld   de, $1111                                   ; $6148: $11 $11 $11
	ld   de, $7f16                                   ; $614b: $11 $16 $7f
	rst  $38                                         ; $614e: $ff
	rst  $38                                         ; $614f: $ff
	rst  $38                                         ; $6150: $ff
	rst  $38                                         ; $6151: $ff
	rst  $38                                         ; $6152: $ff
	ld   a, h                                        ; $6153: $7c
	ld   [hl], c                                     ; $6154: $71
	ld   de, $1111                                   ; $6155: $11 $11 $11
	ld   de, $ef55                                   ; $6158: $11 $55 $ef
	rst  $38                                         ; $615b: $ff
	rst  $38                                         ; $615c: $ff
	rst  $38                                         ; $615d: $ff
	rst  $38                                         ; $615e: $ff
	ld   hl, sp-$54                                  ; $615f: $f8 $ac
	ld   de, $1111                                   ; $6161: $11 $11 $11
	ld   de, $7c12                                   ; $6164: $11 $12 $7c
	rst  $38                                         ; $6167: $ff
	rst  $38                                         ; $6168: $ff
	rst  $38                                         ; $6169: $ff
	rst  $38                                         ; $616a: $ff
	rst  $38                                         ; $616b: $ff
	and  a                                           ; $616c: $a7
	pop  de                                          ; $616d: $d1
	ld   de, $1111                                   ; $616e: $11 $11 $11
	ld   de, $bf19                                   ; $6171: $11 $19 $bf
	rst  $38                                         ; $6174: $ff
	rst  $38                                         ; $6175: $ff
	rst  $38                                         ; $6176: $ff
	rst  $38                                         ; $6177: $ff
	ei                                               ; $6178: $fb
	ld   a, h                                        ; $6179: $7c
	ld   hl, $1111                                   ; $617a: $21 $11 $11
	ld   de, $8d12                                   ; $617d: $11 $12 $8d
	db   $fc                                         ; $6180: $fc
	rst  $38                                         ; $6181: $ff
	rst  $38                                         ; $6182: $ff
	rst  $38                                         ; $6183: $ff
	rst  $38                                         ; $6184: $ff
	ld   a, c                                        ; $6185: $79
	jp   nz, $1111                                   ; $6186: $c2 $11 $11

	ld   [de], a                                     ; $6189: $12
	ld   de, $ff96                                   ; $618a: $11 $96 $ff
	cp   a                                           ; $618d: $bf
	rst  $38                                         ; $618e: $ff
	rst  $38                                         ; $618f: $ff
	rst  $38                                         ; $6190: $ff
	db   $f4                                         ; $6191: $f4
	ld   hl, sp+$11                                  ; $6192: $f8 $11
	ld   de, $1111                                   ; $6194: $11 $11 $11
	dec  de                                          ; $6197: $1b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6198: $cf
	xor  a                                           ; $6199: $af
	rst  $38                                         ; $619a: $ff
	rst  $38                                         ; $619b: $ff
	rst  $38                                         ; $619c: $ff
	or   $af                                         ; $619d: $f6 $af
	ld   b, c                                        ; $619f: $41
	ld   de, $3111                                   ; $61a0: $11 $11 $31
	ld   a, [de]                                     ; $61a3: $1a
	adc  a                                           ; $61a4: $8f
	db   $ec                                         ; $61a5: $ec
	rst  $38                                         ; $61a6: $ff
	rst  $38                                         ; $61a7: $ff
	rst  $38                                         ; $61a8: $ff
	db   $fc                                         ; $61a9: $fc
	ld   e, a                                        ; $61aa: $5f
	add  c                                           ; $61ab: $81
	ld   de, $4111                                   ; $61ac: $11 $11 $41
	add  hl, de                                      ; $61af: $19
	ld   c, [hl]                                     ; $61b0: $4e
	db   $fc                                         ; $61b1: $fc
	rst  $38                                         ; $61b2: $ff
	rst  $38                                         ; $61b3: $ff
	rst  $38                                         ; $61b4: $ff
	rst  $38                                         ; $61b5: $ff
	ccf                                              ; $61b6: $3f
	add  c                                           ; $61b7: $81
	ld   de, $5111                                   ; $61b8: $11 $11 $51
	rla                                              ; $61bb: $17
	ld   l, a                                        ; $61bc: $6f
	ei                                               ; $61bd: $fb
	rst  $38                                         ; $61be: $ff
	rst  $38                                         ; $61bf: $ff
	rst  $38                                         ; $61c0: $ff
	rst  $38                                         ; $61c1: $ff
	ld   l, $61                                      ; $61c2: $2e $61
	ld   de, $6111                                   ; $61c4: $11 $11 $61
	jr   jr_0d3_6248                                 ; $61c7: $18 $7f

	ei                                               ; $61c9: $fb
	rst  $38                                         ; $61ca: $ff
	rst  $38                                         ; $61cb: $ff
	rst  $38                                         ; $61cc: $ff
	cp   $2f                                         ; $61cd: $fe $2f
	ld   [hl], c                                     ; $61cf: $71
	ld   de, $3111                                   ; $61d0: $11 $11 $31
	add  hl, de                                      ; $61d3: $19
	cp   a                                           ; $61d4: $bf
	rst  $38                                         ; $61d5: $ff
	rst  $38                                         ; $61d6: $ff
	rst  $38                                         ; $61d7: $ff
	rst  $38                                         ; $61d8: $ff
	ld   sp, hl                                      ; $61d9: $f9
	ld   l, [hl]                                     ; $61da: $6e
	ld   h, c                                        ; $61db: $61
	ld   de, $1111                                   ; $61dc: $11 $11 $11
	ld   a, [de]                                     ; $61df: $1a
	xor  a                                           ; $61e0: $af
	rst  $38                                         ; $61e1: $ff
	rst  $38                                         ; $61e2: $ff
	rst  $38                                         ; $61e3: $ff
	rst  $38                                         ; $61e4: $ff
	or   $cc                                         ; $61e5: $f6 $cc
	ld   sp, $1111                                   ; $61e7: $31 $11 $11
	ld   de, $df19                                   ; $61ea: $11 $19 $df
	rst  JumpTable                                         ; $61ed: $df
	rst  $38                                         ; $61ee: $ff
	rst  $38                                         ; $61ef: $ff
	rst  $38                                         ; $61f0: $ff
	push af                                          ; $61f1: $f5
	ld   a, [$1111]                                  ; $61f2: $fa $11 $11
	ld   de, $6811                                   ; $61f5: $11 $11 $68
	cp   $ff                                         ; $61f8: $fe $ff
	rst  $38                                         ; $61fa: $ff
	rst  $38                                         ; $61fb: $ff
	rst  $38                                         ; $61fc: $ff
	sbc  e                                           ; $61fd: $9b
	call nc, $1111                                   ; $61fe: $d4 $11 $11
	ld   de, $9b15                                   ; $6201: $11 $15 $9b
	cp   $ff                                         ; $6204: $fe $ff
	rst  $38                                         ; $6206: $ff
	rst  $38                                         ; $6207: $ff
	db   $fd                                         ; $6208: $fd
	ld   e, a                                        ; $6209: $5f
	ld   [hl], c                                     ; $620a: $71
	ld   de, $1111                                   ; $620b: $11 $11 $11
	scf                                              ; $620e: $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $620f: $cf
	rst  $38                                         ; $6210: $ff
	rst  $38                                         ; $6211: $ff
	rst  $38                                         ; $6212: $ff
	rst  $38                                         ; $6213: $ff
	ld   [$11c9], a                                  ; $6214: $ea $c9 $11
	ld   de, $1211                                   ; $6217: $11 $11 $12
	ld   h, a                                        ; $621a: $67
	rst  $38                                         ; $621b: $ff
	rst  $38                                         ; $621c: $ff
	rst  $38                                         ; $621d: $ff
	rst  $38                                         ; $621e: $ff
	rst  $38                                         ; $621f: $ff
	sbc  l                                           ; $6220: $9d
	sub  c                                           ; $6221: $91
	ld   de, $1111                                   ; $6222: $11 $11 $11
	ld   d, $9d                                      ; $6225: $16 $9d
	xor  $ff                                         ; $6227: $ee $ff
	rst  $28                                         ; $6229: $ef
	rst  $38                                         ; $622a: $ff
	ei                                               ; $622b: $fb
	jp   c, $1131                                    ; $622c: $da $31 $11

	ld   de, $3811                                   ; $622f: $11 $11 $38
	cp   e                                           ; $6232: $bb
	cp   a                                           ; $6233: $bf
	rst  $38                                         ; $6234: $ff
	rst  $38                                         ; $6235: $ff
	rst  $38                                         ; $6236: $ff
	db   $dd                                         ; $6237: $dd
	and  l                                           ; $6238: $a5
	ld   de, $1111                                   ; $6239: $11 $11 $11
	dec  d                                           ; $623c: $15
	ld   e, c                                        ; $623d: $59
	xor  e                                           ; $623e: $ab
	rst  $38                                         ; $623f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6240: $cf
	rst  $38                                         ; $6241: $ff
	cp   $fb                                         ; $6242: $fe $fb
	ld   h, e                                        ; $6244: $63
	ld   hl, $1113                                   ; $6245: $21 $13 $11

jr_0d3_6248:
	ld   b, c                                        ; $6248: $41
	and  a                                           ; $6249: $a7
	xor  l                                           ; $624a: $ad
	sbc  $ef                                         ; $624b: $de $ef
	cp   $ee                                         ; $624d: $fe $ee
	jp   z, $1144                                    ; $624f: $ca $44 $11

	ld   [hl+], a                                    ; $6252: $22
	ld   [de], a                                     ; $6253: $12
	ld   h, c                                        ; $6254: $61
	sub  [hl]                                        ; $6255: $96
	xor  l                                           ; $6256: $ad
	sbc  l                                           ; $6257: $9d
	rst  $38                                         ; $6258: $ff
	db   $dd                                         ; $6259: $dd
	rst  $28                                         ; $625a: $ef
	add  $56                                         ; $625b: $c6 $56
	ld   hl, $3242                                   ; $625d: $21 $42 $32
	daa                                              ; $6260: $27
	ld   h, [hl]                                     ; $6261: $66
	adc  e                                           ; $6262: $8b
	db   $eb                                         ; $6263: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6264: $cf
	db   $fc                                         ; $6265: $fc
	set  2, a                                        ; $6266: $cb $d7
	ld   e, c                                        ; $6268: $59
	inc  d                                           ; $6269: $14
	ld   sp, $8542                                   ; $626a: $31 $42 $85
	ld   h, a                                        ; $626d: $67
	sbc  d                                           ; $626e: $9a
	sbc  a                                           ; $626f: $9f
	cp   l                                           ; $6270: $bd
	db   $ed                                         ; $6271: $ed
	call z, Call_0d3_4999                            ; $6272: $cc $99 $49
	and  c                                           ; $6275: $a1
	ld   h, h                                        ; $6276: $64
	ld   b, l                                        ; $6277: $45
	ld   d, $76                                      ; $6278: $16 $76
	sbc  c                                           ; $627a: $99
	db   $db                                         ; $627b: $db
	xor  d                                           ; $627c: $aa
	call $da9d                                       ; $627d: $cd $9d $da
	ld   e, d                                        ; $6280: $5a
	ld   [hl], c                                     ; $6281: $71
	ld   d, h                                        ; $6282: $54
	ld   d, [hl]                                     ; $6283: $56
	dec  [hl]                                        ; $6284: $35
	and  h                                           ; $6285: $a4
	adc  c                                           ; $6286: $89
	ld   a, e                                        ; $6287: $7b
	cp   c                                           ; $6288: $b9
	db   $db                                         ; $6289: $db
	xor  l                                           ; $628a: $ad
	xor  c                                           ; $628b: $a9
	adc  d                                           ; $628c: $8a
	ld   l, c                                        ; $628d: $69
	ld   b, h                                        ; $628e: $44
	add  l                                           ; $628f: $85
	ld   d, [hl]                                     ; $6290: $56
	ld   h, [hl]                                     ; $6291: $66
	add  [hl]                                        ; $6292: $86
	sbc  b                                           ; $6293: $98
	adc  d                                           ; $6294: $8a
	sbc  d                                           ; $6295: $9a
	sbc  e                                           ; $6296: $9b
	sbc  e                                           ; $6297: $9b
	xor  c                                           ; $6298: $a9
	sbc  c                                           ; $6299: $99
	add  a                                           ; $629a: $87
	ld   [hl], e                                     ; $629b: $73
	and  l                                           ; $629c: $a5
	ld   d, a                                        ; $629d: $57
	ld   l, d                                        ; $629e: $6a
	ld   [hl], a                                     ; $629f: $77
	sbc  d                                           ; $62a0: $9a
	ld   l, b                                        ; $62a1: $68
	adc  c                                           ; $62a2: $89
	sbc  b                                           ; $62a3: $98
	sbc  d                                           ; $62a4: $9a
	sub  [hl]                                        ; $62a5: $96
	xor  b                                           ; $62a6: $a8
	sub  [hl]                                        ; $62a7: $96
	and  a                                           ; $62a8: $a7
	ld   e, b                                        ; $62a9: $58
	ld   e, c                                        ; $62aa: $59
	ld   h, a                                        ; $62ab: $67
	sbc  c                                           ; $62ac: $99
	halt                                             ; $62ad: $76
	adc  c                                           ; $62ae: $89
	add  a                                           ; $62af: $87
	sbc  d                                           ; $62b0: $9a
	ld   a, c                                        ; $62b1: $79
	ld   a, c                                        ; $62b2: $79
	sub  l                                           ; $62b3: $95
	or   a                                           ; $62b4: $b7
	xor  b                                           ; $62b5: $a8
	ld   l, c                                        ; $62b6: $69
	and  [hl]                                        ; $62b7: $a6
	sub  [hl]                                        ; $62b8: $96
	ld   a, e                                        ; $62b9: $7b
	dec  sp                                          ; $62ba: $3b
	ld   a, c                                        ; $62bb: $79
	ld   h, a                                        ; $62bc: $67
	sub  [hl]                                        ; $62bd: $96
	and  h                                           ; $62be: $a4
	add  $99                                         ; $62bf: $c6 $99
	xor  b                                           ; $62c1: $a8
	sbc  d                                           ; $62c2: $9a
	ld   a, e                                        ; $62c3: $7b
	ld   e, h                                        ; $62c4: $5c
	ld   l, b                                        ; $62c5: $68
	ld   a, c                                        ; $62c6: $79
	halt                                             ; $62c7: $76
	adc  c                                           ; $62c8: $89
	add  l                                           ; $62c9: $85

Call_0d3_62ca:
	sub  [hl]                                        ; $62ca: $96
	and  l                                           ; $62cb: $a5
	cp   c                                           ; $62cc: $b9
	adc  b                                           ; $62cd: $88
	ld   a, h                                        ; $62ce: $7c
	ld   e, d                                        ; $62cf: $5a
	ld   a, d                                        ; $62d0: $7a
	adc  b                                           ; $62d1: $88
	add  a                                           ; $62d2: $87
	sub  [hl]                                        ; $62d3: $96
	add  a                                           ; $62d4: $87
	ld   l, b                                        ; $62d5: $68
	ld   a, b                                        ; $62d6: $78
	add  a                                           ; $62d7: $87
	sub  a                                           ; $62d8: $97
	and  a                                           ; $62d9: $a7
	adc  d                                           ; $62da: $8a
	ld   a, c                                        ; $62db: $79
	ld   a, d                                        ; $62dc: $7a
	ld   a, b                                        ; $62dd: $78
	ld   a, c                                        ; $62de: $79
	and  [hl]                                        ; $62df: $a6
	add  a                                           ; $62e0: $87
	sub  a                                           ; $62e1: $97
	ld   a, b                                        ; $62e2: $78
	adc  b                                           ; $62e3: $88
	ld   a, b                                        ; $62e4: $78
	sub  [hl]                                        ; $62e5: $96
	xor  b                                           ; $62e6: $a8
	adc  d                                           ; $62e7: $8a
	ld   l, c                                        ; $62e8: $69
	ld   a, c                                        ; $62e9: $79
	add  a                                           ; $62ea: $87
	sub  a                                           ; $62eb: $97
	sub  [hl]                                        ; $62ec: $96
	sbc  c                                           ; $62ed: $99
	ld   [hl], a                                     ; $62ee: $77
	ld   [hl], a                                     ; $62ef: $77
	and  [hl]                                        ; $62f0: $a6
	adc  d                                           ; $62f1: $8a
	ld   a, c                                        ; $62f2: $79
	ld   a, d                                        ; $62f3: $7a
	ld   a, c                                        ; $62f4: $79
	adc  b                                           ; $62f5: $88
	sub  a                                           ; $62f6: $97
	sub  a                                           ; $62f7: $97
	sub  l                                           ; $62f8: $95
	sub  a                                           ; $62f9: $97
	ld   [hl], a                                     ; $62fa: $77
	ld   l, d                                        ; $62fb: $6a
	adc  b                                           ; $62fc: $88
	ld   l, d                                        ; $62fd: $6a
	ld   e, d                                        ; $62fe: $5a
	ld   a, c                                        ; $62ff: $79
	and  l                                           ; $6300: $a5
	and  a                                           ; $6301: $a7
	add  a                                           ; $6302: $87
	sub  a                                           ; $6303: $97
	and  a                                           ; $6304: $a7
	ld   a, d                                        ; $6305: $7a
	ld   l, d                                        ; $6306: $6a
	ld   l, c                                        ; $6307: $69
	sub  a                                           ; $6308: $97
	ld   a, c                                        ; $6309: $79
	add  a                                           ; $630a: $87
	sub  a                                           ; $630b: $97
	and  a                                           ; $630c: $a7
	ld   a, b                                        ; $630d: $78
	adc  b                                           ; $630e: $88
	ld   a, c                                        ; $630f: $79
	and  a                                           ; $6310: $a7
	adc  c                                           ; $6311: $89
	ld   a, b                                        ; $6312: $78
	ld   l, b                                        ; $6313: $68
	adc  b                                           ; $6314: $88
	ld   [hl], a                                     ; $6315: $77
	add  a                                           ; $6316: $87
	and  a                                           ; $6317: $a7
	sbc  b                                           ; $6318: $98
	sub  a                                           ; $6319: $97
	ld   a, c                                        ; $631a: $79
	ld   a, c                                        ; $631b: $79
	ld   e, d                                        ; $631c: $5a
	add  [hl]                                        ; $631d: $86
	sub  [hl]                                        ; $631e: $96
	and  [hl]                                        ; $631f: $a6
	add  a                                           ; $6320: $87
	add  a                                           ; $6321: $87
	ld   l, d                                        ; $6322: $6a
	ld   e, d                                        ; $6323: $5a
	ld   l, c                                        ; $6324: $69
	add  a                                           ; $6325: $87
	and  l                                           ; $6326: $a5
	and  a                                           ; $6327: $a7
	add  a                                           ; $6328: $87
	adc  b                                           ; $6329: $88
	ld   a, b                                        ; $632a: $78
	adc  c                                           ; $632b: $89
	ld   a, b                                        ; $632c: $78
	add  a                                           ; $632d: $87
	add  a                                           ; $632e: $87
	adc  b                                           ; $632f: $88
	ld   l, d                                        ; $6330: $6a
	adc  b                                           ; $6331: $88
	ld   a, c                                        ; $6332: $79
	sub  [hl]                                        ; $6333: $96
	sub  a                                           ; $6334: $97
	and  [hl]                                        ; $6335: $a6
	sbc  c                                           ; $6336: $99
	ld   a, c                                        ; $6337: $79
	adc  b                                           ; $6338: $88
	ld   a, d                                        ; $6339: $7a
	ld   e, d                                        ; $633a: $5a
	ld   l, c                                        ; $633b: $69
	sub  a                                           ; $633c: $97
	adc  b                                           ; $633d: $88
	sub  a                                           ; $633e: $97
	and  l                                           ; $633f: $a5
	or   a                                           ; $6340: $b7
	adc  b                                           ; $6341: $88
	ld   a, b                                        ; $6342: $78
	adc  c                                           ; $6343: $89
	adc  c                                           ; $6344: $89
	ld   a, d                                        ; $6345: $7a
	ld   l, d                                        ; $6346: $6a
	ld   e, d                                        ; $6347: $5a
	halt                                             ; $6348: $76
	or   h                                           ; $6349: $b4
	or   h                                           ; $634a: $b4
	and  a                                           ; $634b: $a7
	adc  d                                           ; $634c: $8a
	ld   l, d                                        ; $634d: $6a
	ld   l, b                                        ; $634e: $68
	ld   a, c                                        ; $634f: $79
	adc  c                                           ; $6350: $89
	ld   l, d                                        ; $6351: $6a
	sub  [hl]                                        ; $6352: $96
	sub  a                                           ; $6353: $97
	and  a                                           ; $6354: $a7
	and  l                                           ; $6355: $a5
	and  a                                           ; $6356: $a7
	ld   l, c                                        ; $6357: $69
	ld   a, c                                        ; $6358: $79
	ld   l, c                                        ; $6359: $69
	ld   a, c                                        ; $635a: $79
	ld   a, b                                        ; $635b: $78
	add  a                                           ; $635c: $87
	sub  a                                           ; $635d: $97
	sbc  d                                           ; $635e: $9a
	ld   a, b                                        ; $635f: $78
	adc  b                                           ; $6360: $88
	add  a                                           ; $6361: $87
	adc  c                                           ; $6362: $89
	add  a                                           ; $6363: $87
	adc  b                                           ; $6364: $88
	ld   l, b                                        ; $6365: $68
	adc  b                                           ; $6366: $88
	add  a                                           ; $6367: $87
	sbc  b                                           ; $6368: $98
	ld   a, c                                        ; $6369: $79
	adc  c                                           ; $636a: $89
	ld   a, c                                        ; $636b: $79
	adc  b                                           ; $636c: $88
	ld   a, b                                        ; $636d: $78
	sub  a                                           ; $636e: $97
	ld   a, b                                        ; $636f: $78
	sub  [hl]                                        ; $6370: $96
	sub  [hl]                                        ; $6371: $96
	sbc  b                                           ; $6372: $98
	ld   l, d                                        ; $6373: $6a
	add  a                                           ; $6374: $87
	add  a                                           ; $6375: $87
	ld   a, b                                        ; $6376: $78
	ld   a, c                                        ; $6377: $79
	ld   a, c                                        ; $6378: $79
	ld   a, b                                        ; $6379: $78
	add  [hl]                                        ; $637a: $86
	and  a                                           ; $637b: $a7
	sub  a                                           ; $637c: $97
	adc  c                                           ; $637d: $89
	ld   a, c                                        ; $637e: $79
	adc  b                                           ; $637f: $88
	sub  a                                           ; $6380: $97
	sbc  b                                           ; $6381: $98
	ld   a, b                                        ; $6382: $78
	ld   a, b                                        ; $6383: $78
	add  a                                           ; $6384: $87
	sbc  b                                           ; $6385: $98
	ld   a, b                                        ; $6386: $78
	sub  a                                           ; $6387: $97
	adc  b                                           ; $6388: $88
	adc  c                                           ; $6389: $89
	ld   [hl], a                                     ; $638a: $77
	adc  c                                           ; $638b: $89
	ld   [hl], a                                     ; $638c: $77
	adc  b                                           ; $638d: $88
	add  a                                           ; $638e: $87
	adc  b                                           ; $638f: $88
	ld   a, b                                        ; $6390: $78
	adc  b                                           ; $6391: $88
	sub  a                                           ; $6392: $97
	sub  a                                           ; $6393: $97
	adc  b                                           ; $6394: $88
	ld   a, c                                        ; $6395: $79
	ld   a, c                                        ; $6396: $79
	sbc  b                                           ; $6397: $98
	ld   a, b                                        ; $6398: $78
	sub  [hl]                                        ; $6399: $96
	adc  b                                           ; $639a: $88
	adc  c                                           ; $639b: $89
	sub  [hl]                                        ; $639c: $96
	sub  a                                           ; $639d: $97
	ld   a, b                                        ; $639e: $78
	ld   a, c                                        ; $639f: $79
	sbc  b                                           ; $63a0: $98
	ld   a, c                                        ; $63a1: $79
	ld   a, c                                        ; $63a2: $79
	ld   l, c                                        ; $63a3: $69
	ld   a, d                                        ; $63a4: $7a
	sub  [hl]                                        ; $63a5: $96
	or   [hl]                                        ; $63a6: $b6
	sub  [hl]                                        ; $63a7: $96
	adc  b                                           ; $63a8: $88
	ld   l, c                                        ; $63a9: $69
	adc  c                                           ; $63aa: $89
	ld   a, c                                        ; $63ab: $79
	ld   l, d                                        ; $63ac: $6a
	adc  b                                           ; $63ad: $88
	sub  a                                           ; $63ae: $97
	add  a                                           ; $63af: $87
	sub  [hl]                                        ; $63b0: $96
	adc  d                                           ; $63b1: $8a
	ld   l, d                                        ; $63b2: $6a
	ld   l, b                                        ; $63b3: $68
	add  a                                           ; $63b4: $87
	and  a                                           ; $63b5: $a7
	add  a                                           ; $63b6: $87
	sub  a                                           ; $63b7: $97
	sbc  b                                           ; $63b8: $98
	ld   a, c                                        ; $63b9: $79
	ld   a, b                                        ; $63ba: $78
	adc  b                                           ; $63bb: $88
	adc  b                                           ; $63bc: $88
	add  a                                           ; $63bd: $87
	add  a                                           ; $63be: $87
	adc  b                                           ; $63bf: $88
	ld   l, d                                        ; $63c0: $6a
	ld   a, b                                        ; $63c1: $78
	sub  [hl]                                        ; $63c2: $96
	and  a                                           ; $63c3: $a7
	sbc  b                                           ; $63c4: $98
	ld   a, b                                        ; $63c5: $78
	ld   a, c                                        ; $63c6: $79
	ld   a, c                                        ; $63c7: $79
	add  a                                           ; $63c8: $87
	adc  b                                           ; $63c9: $88
	ld   a, b                                        ; $63ca: $78
	ld   a, d                                        ; $63cb: $7a
	add  a                                           ; $63cc: $87
	and  a                                           ; $63cd: $a7
	add  [hl]                                        ; $63ce: $86
	or   [hl]                                        ; $63cf: $b6
	adc  d                                           ; $63d0: $8a
	ld   l, e                                        ; $63d1: $6b
	ld   l, c                                        ; $63d2: $69
	ld   l, c                                        ; $63d3: $69
	ld   [hl], a                                     ; $63d4: $77
	sub  [hl]                                        ; $63d5: $96
	and  [hl]                                        ; $63d6: $a6
	sub  a                                           ; $63d7: $97
	adc  b                                           ; $63d8: $88
	ld   a, d                                        ; $63d9: $7a
	ld   l, c                                        ; $63da: $69
	adc  c                                           ; $63db: $89
	adc  c                                           ; $63dc: $89
	ld   a, b                                        ; $63dd: $78
	sub  [hl]                                        ; $63de: $96
	or   [hl]                                        ; $63df: $b6
	sub  a                                           ; $63e0: $97
	add  a                                           ; $63e1: $87
	and  [hl]                                        ; $63e2: $a6
	sbc  b                                           ; $63e3: $98
	ld   e, h                                        ; $63e4: $5c
	ld   e, e                                        ; $63e5: $5b
	ld   e, e                                        ; $63e6: $5b
	ld   e, b                                        ; $63e7: $58
	sub  [hl]                                        ; $63e8: $96
	or   h                                           ; $63e9: $b4
	push de                                          ; $63ea: $d5
	or   [hl]                                        ; $63eb: $b6
	xor  b                                           ; $63ec: $a8
	ld   l, d                                        ; $63ed: $6a
	ld   l, c                                        ; $63ee: $69
	ld   e, e                                        ; $63ef: $5b
	ld   l, c                                        ; $63f0: $69
	ld   a, b                                        ; $63f1: $78
	add  a                                           ; $63f2: $87
	and  a                                           ; $63f3: $a7
	and  [hl]                                        ; $63f4: $a6
	and  [hl]                                        ; $63f5: $a6
	adc  b                                           ; $63f6: $88
	ld   a, d                                        ; $63f7: $7a
	ld   l, b                                        ; $63f8: $68
	ld   a, c                                        ; $63f9: $79
	ld   a, b                                        ; $63fa: $78
	and  a                                           ; $63fb: $a7
	and  l                                           ; $63fc: $a5
	sbc  c                                           ; $63fd: $99
	ld   a, c                                        ; $63fe: $79
	ld   a, d                                        ; $63ff: $7a
	ld   e, d                                        ; $6400: $5a
	ld   l, d                                        ; $6401: $6a
	ld   [hl], a                                     ; $6402: $77
	or   l                                           ; $6403: $b5
	or   l                                           ; $6404: $b5
	or   h                                           ; $6405: $b4
	xor  d                                           ; $6406: $aa
	ld   e, e                                        ; $6407: $5b
	ld   e, e                                        ; $6408: $5b
	ld   e, d                                        ; $6409: $5a
	adc  c                                           ; $640a: $89
	ld   a, c                                        ; $640b: $79
	and  l                                           ; $640c: $a5
	or   a                                           ; $640d: $b7
	sub  a                                           ; $640e: $97
	and  l                                           ; $640f: $a5
	or   [hl]                                        ; $6410: $b6
	adc  c                                           ; $6411: $89
	ld   l, d                                        ; $6412: $6a
	ld   c, l                                        ; $6413: $4d
	inc  a                                           ; $6414: $3c
	ld   l, b                                        ; $6415: $68
	and  [hl]                                        ; $6416: $a6
	and  a                                           ; $6417: $a7
	and  l                                           ; $6418: $a5
	call nz, $b8c4                                   ; $6419: $c4 $c4 $b8
	ld   l, d                                        ; $641c: $6a
	ld   l, d                                        ; $641d: $6a
	ld   l, e                                        ; $641e: $6b
	ld   c, l                                        ; $641f: $4d
	ld   a, [hl-]                                    ; $6420: $3a
	ld   [hl], a                                     ; $6421: $77
	or   h                                           ; $6422: $b4
	call nc, $a798                                   ; $6423: $d4 $98 $a7
	add  a                                           ; $6426: $87
	and  l                                           ; $6427: $a5
	adc  b                                           ; $6428: $88
	ld   a, e                                        ; $6429: $7b
	cpl                                              ; $642a: $2f
	ld   c, b                                        ; $642b: $48
	and  a                                           ; $642c: $a7
	and  l                                           ; $642d: $a5
	adc  b                                           ; $642e: $88
	sub  l                                           ; $642f: $95
	xor  d                                           ; $6430: $aa
	ld   l, b                                        ; $6431: $68
	add  a                                           ; $6432: $87
	and  l                                           ; $6433: $a5
	xor  b                                           ; $6434: $a8
	ld   l, d                                        ; $6435: $6a
	ld   l, c                                        ; $6436: $69
	ld   l, c                                        ; $6437: $69
	ld   e, e                                        ; $6438: $5b
	ld   e, c                                        ; $6439: $59
	sub  a                                           ; $643a: $97
	or   h                                           ; $643b: $b4
	or   e                                           ; $643c: $b3
	or   [hl]                                        ; $643d: $b6
	or   a                                           ; $643e: $b7
	ld   a, h                                        ; $643f: $7c
	ld   e, d                                        ; $6440: $5a
	ld   a, c                                        ; $6441: $79
	ld   a, c                                        ; $6442: $79
	ld   a, c                                        ; $6443: $79
	ld   l, d                                        ; $6444: $6a
	ld   l, c                                        ; $6445: $69
	add  [hl]                                        ; $6446: $86
	and  [hl]                                        ; $6447: $a6
	sub  a                                           ; $6448: $97
	sub  [hl]                                        ; $6449: $96
	xor  b                                           ; $644a: $a8
	adc  b                                           ; $644b: $88
	adc  c                                           ; $644c: $89
	adc  b                                           ; $644d: $88
	ld   a, d                                        ; $644e: $7a
	ld   e, e                                        ; $644f: $5b
	ld   l, c                                        ; $6450: $69
	add  a                                           ; $6451: $87
	and  a                                           ; $6452: $a7
	sub  [hl]                                        ; $6453: $96
	and  [hl]                                        ; $6454: $a6
	adc  c                                           ; $6455: $89
	adc  b                                           ; $6456: $88
	adc  b                                           ; $6457: $88
	ld   a, e                                        ; $6458: $7b
	ld   e, e                                        ; $6459: $5b
	ld   h, a                                        ; $645a: $67
	and  [hl]                                        ; $645b: $a6
	sub  [hl]                                        ; $645c: $96
	sub  [hl]                                        ; $645d: $96
	sub  a                                           ; $645e: $97
	ld   a, h                                        ; $645f: $7c
	ld   e, c                                        ; $6460: $59
	ld   a, b                                        ; $6461: $78
	sbc  b                                           ; $6462: $98
	ld   a, c                                        ; $6463: $79
	add  [hl]                                        ; $6464: $86
	and  a                                           ; $6465: $a7
	sub  a                                           ; $6466: $97
	and  a                                           ; $6467: $a7
	sbc  b                                           ; $6468: $98
	ld   a, d                                        ; $6469: $7a
	ld   l, c                                        ; $646a: $69
	ld   a, e                                        ; $646b: $7b
	ld   e, d                                        ; $646c: $5a
	add  a                                           ; $646d: $87
	sub  [hl]                                        ; $646e: $96
	sub  a                                           ; $646f: $97
	or   h                                           ; $6470: $b4
	or   [hl]                                        ; $6471: $b6
	ld   a, b                                        ; $6472: $78
	ld   l, e                                        ; $6473: $6b
	ld   l, b                                        ; $6474: $68
	ld   a, e                                        ; $6475: $7b
	ld   e, d                                        ; $6476: $5a
	sub  [hl]                                        ; $6477: $96
	or   a                                           ; $6478: $b7
	sbc  b                                           ; $6479: $98
	ld   [hl], a                                     ; $647a: $77
	sbc  b                                           ; $647b: $98
	ld   l, d                                        ; $647c: $6a
	ld   l, c                                        ; $647d: $69
	add  [hl]                                        ; $647e: $86
	and  [hl]                                        ; $647f: $a6
	sbc  b                                           ; $6480: $98
	sub  a                                           ; $6481: $97
	ld   a, d                                        ; $6482: $7a
	sub  [hl]                                        ; $6483: $96
	adc  e                                           ; $6484: $8b
	ld   c, d                                        ; $6485: $4a
	ld   l, d                                        ; $6486: $6a
	ld   [hl], l                                     ; $6487: $75
	or   a                                           ; $6488: $b7
	halt                                             ; $6489: $76
	and  [hl]                                        ; $648a: $a6
	sub  a                                           ; $648b: $97
	ld   a, d                                        ; $648c: $7a
	ld   e, c                                        ; $648d: $59
	ld   a, c                                        ; $648e: $79
	ld   [hl], a                                     ; $648f: $77
	sbc  b                                           ; $6490: $98
	ld   a, b                                        ; $6491: $78
	sub  a                                           ; $6492: $97
	and  h                                           ; $6493: $a4
	add  $7b                                         ; $6494: $c6 $7b
	ld   e, e                                        ; $6496: $5b

Jump_0d3_6497:
	ld   e, d                                        ; $6497: $5a
	ld   e, d                                        ; $6498: $5a
	ld   [hl], a                                     ; $6499: $77
	or   e                                           ; $649a: $b3
	or   [hl]                                        ; $649b: $b6
	add  a                                           ; $649c: $87
	or   a                                           ; $649d: $b7
	sbc  c                                           ; $649e: $99
	ld   a, d                                        ; $649f: $7a
	ld   a, c                                        ; $64a0: $79
	ld   a, e                                        ; $64a1: $7b
	ld   c, d                                        ; $64a2: $4a
	ld   [hl], l                                     ; $64a3: $75
	and  l                                           ; $64a4: $a5
	add  [hl]                                        ; $64a5: $86
	ld   h, a                                        ; $64a6: $67
	and  [hl]                                        ; $64a7: $a6
	sbc  c                                           ; $64a8: $99
	xor  b                                           ; $64a9: $a8
	sbc  d                                           ; $64aa: $9a
	ld   l, l                                        ; $64ab: $6d
	ld   l, e                                        ; $64ac: $6b
	add  a                                           ; $64ad: $87
	add  [hl]                                        ; $64ae: $86
	ld   h, h                                        ; $64af: $64
	ld   [hl], h                                     ; $64b0: $74
	ld   b, d                                        ; $64b1: $42
	sub  l                                           ; $64b2: $95
	ld   c, d                                        ; $64b3: $4a
	sub  a                                           ; $64b4: $97
	xor  a                                           ; $64b5: $af
	xor  l                                           ; $64b6: $ad
	sbc  $d7                                         ; $64b7: $de $d7
	rst  $10                                         ; $64b9: $d7
	ld   d, h                                        ; $64ba: $54

jr_0d3_64bb:
	ld   b, [hl]                                     ; $64bb: $46
	rla                                              ; $64bc: $17
	ld   b, c                                        ; $64bd: $41
	ld   d, c                                        ; $64be: $51
	and  a                                           ; $64bf: $a7
	sbc  l                                           ; $64c0: $9d
	rst  $38                                         ; $64c1: $ff
	cp   a                                           ; $64c2: $bf
	xor  e                                           ; $64c3: $ab
	rst  $20                                         ; $64c4: $e7
	and  c                                           ; $64c5: $a1
	dec  de                                          ; $64c6: $1b
	ld   b, c                                        ; $64c7: $41
	ld   e, c                                        ; $64c8: $59
	ld   de, $4656                                   ; $64c9: $11 $56 $46
	cp   a                                           ; $64cc: $bf
	rst  $28                                         ; $64cd: $ef
	rst  $38                                         ; $64ce: $ff
	db   $fd                                         ; $64cf: $fd
	reti                                             ; $64d0: $d9


	ld   d, h                                        ; $64d1: $54
	ld   [hl], $51                                   ; $64d2: $36 $51
	add  hl, de                                      ; $64d4: $19
	ld   de, $6553                                   ; $64d5: $11 $53 $65
	xor  $ff                                         ; $64d8: $ee $ff
	rst  $38                                         ; $64da: $ff
	rst  $38                                         ; $64db: $ff
	ret                                              ; $64dc: $c9


	ld   hl, $211a                                   ; $64dd: $21 $1a $21
	sub  $16                                         ; $64e0: $d6 $16
	ld   h, h                                        ; $64e2: $64
	jr   c, @+$01                                    ; $64e3: $38 $ff

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64e5: $cf
	ld   a, [$76ff]                                  ; $64e6: $fa $ff $76
	ld   de, $1359                                   ; $64e9: $11 $59 $13
	pop  af                                          ; $64ec: $f1
	inc  e                                           ; $64ed: $1c
	inc  sp                                          ; $64ee: $33
	ld   a, a                                        ; $64ef: $7f
	db   $fd                                         ; $64f0: $fd
	rst  $38                                         ; $64f1: $ff
	rst  JumpTable                                         ; $64f2: $df
	rst  $30                                         ; $64f3: $f7
	ld   [hl], d                                     ; $64f4: $72
	ld   de, $1ff1                                   ; $64f5: $11 $f1 $1f
	ld   de, $26d4                                   ; $64f8: $11 $d4 $26
	rst  JumpTable                                         ; $64fb: $df
	db   $fd                                         ; $64fc: $fd
	rst  $38                                         ; $64fd: $ff
	cp   a                                           ; $64fe: $bf
	cp   b                                           ; $64ff: $b8
	ld   d, c                                        ; $6500: $51
	dec  e                                           ; $6501: $1d
	ld   de, $1cf3                                   ; $6502: $11 $f3 $1c
	sub  c                                           ; $6505: $91
	ld   e, [hl]                                     ; $6506: $5e
	rst  $38                                         ; $6507: $ff
	rst  JumpTable                                         ; $6508: $df
	ld   sp, hl                                      ; $6509: $f9
	rst  $38                                         ; $650a: $ff
	ld   b, [hl]                                     ; $650b: $46
	ld   de, $1f98                                   ; $650c: $11 $98 $1f
	pop  hl                                          ; $650f: $e1
	xor  a                                           ; $6510: $af
	inc  d                                           ; $6511: $14
	rst  $38                                         ; $6512: $ff
	cp   $ff                                         ; $6513: $fe $ff
	adc  a                                           ; $6515: $8f
	di                                               ; $6516: $f3
	ld   b, d                                        ; $6517: $42
	jr   jr_0d3_64bb                                 ; $6518: $18 $a1

	rst  $38                                         ; $651a: $ff
	dec  de                                          ; $651b: $1b
	pop  af                                          ; $651c: $f1
	ld   c, a                                        ; $651d: $4f
	ei                                               ; $651e: $fb
	rst  $38                                         ; $651f: $ff
	ei                                               ; $6520: $fb
	rst  $38                                         ; $6521: $ff
	inc  h                                           ; $6522: $24
	ld   sp, $1fc4                                   ; $6523: $31 $c4 $1f
	or   c                                           ; $6526: $b1
	rst  $38                                         ; $6527: $ff
	inc  d                                           ; $6528: $14
	rst  $38                                         ; $6529: $ff
	sbc  a                                           ; $652a: $9f
	rst  $38                                         ; $652b: $ff
	sbc  a                                           ; $652c: $9f
	ldh  a, [c]                                      ; $652d: $f2
	ld   d, c                                        ; $652e: $51
	rra                                              ; $652f: $1f
	ld   de, $1ff1                                   ; $6530: $11 $f1 $1f
	pop  de                                          ; $6533: $d1
	ld   e, a                                        ; $6534: $5f
	rst  $30                                         ; $6535: $f7
	rst  $38                                         ; $6536: $ff
	ei                                               ; $6537: $fb
	rst  $38                                         ; $6538: $ff
	dec  d                                           ; $6539: $15
	ld   de, $1ff1                                   ; $653a: $11 $f1 $1f
	ld   de, $18f6                                   ; $653d: $11 $f6 $18
	db   $fc                                         ; $6540: $fc
	sbc  a                                           ; $6541: $9f
	rst  $38                                         ; $6542: $ff
	rst  JumpTable                                         ; $6543: $df
	and  c                                           ; $6544: $a1
	ld   h, c                                        ; $6545: $61
	rra                                              ; $6546: $1f
	ld   de, $1ff1                                   ; $6547: $11 $f1 $1f
	ld   de, $6cef                                   ; $654a: $11 $ef $6c
	rst  $38                                         ; $654d: $ff
	rst  $28                                         ; $654e: $ef
	ld   hl, sp+$26                                  ; $654f: $f8 $26
	ld   de, $5ff1                                   ; $6551: $11 $f1 $5f
	dec  d                                           ; $6554: $15
	pop  af                                          ; $6555: $f1
	rra                                              ; $6556: $1f
	db   $f4                                         ; $6557: $f4
	rst  $38                                         ; $6558: $ff
	db   $fc                                         ; $6559: $fc
	rst  $38                                         ; $655a: $ff
	ld   b, h                                        ; $655b: $44
	ld   d, c                                        ; $655c: $51
	adc  h                                           ; $655d: $8c
	rra                                              ; $655e: $1f
	pop  af                                          ; $655f: $f1
	rst  $38                                         ; $6560: $ff
	inc  de                                          ; $6561: $13
	rst  $38                                         ; $6562: $ff
	ccf                                              ; $6563: $3f
	rst  $38                                         ; $6564: $ff
	cp   a                                           ; $6565: $bf
	di                                               ; $6566: $f3
	ld   h, e                                        ; $6567: $63
	ld   e, $31                                      ; $6568: $1e $31
	ld   hl, sp+$1f                                  ; $656a: $f8 $1f
	pop  hl                                          ; $656c: $e1
	adc  a                                           ; $656d: $8f
	and  a                                           ; $656e: $a7
	rst  $38                                         ; $656f: $ff
	db   $fc                                         ; $6570: $fc
	rst  $38                                         ; $6571: $ff
	daa                                              ; $6572: $27
	ld   de, $1ff1                                   ; $6573: $11 $f1 $1f
	ld   de, $1bf6                                   ; $6576: $11 $f6 $1b
	ld   hl, sp+$7f                                  ; $6579: $f8 $7f
	db   $fd                                         ; $657b: $fd
	rst  $38                                         ; $657c: $ff
	or   e                                           ; $657d: $b3
	sub  c                                           ; $657e: $91
	rra                                              ; $657f: $1f
	ld   de, $1ff1                                   ; $6580: $11 $f1 $1f
	ld   de, $6aff                                   ; $6583: $11 $ff $6a
	rst  $38                                         ; $6586: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6587: $cf
	rst  $30                                         ; $6588: $f7
	ld   c, c                                        ; $6589: $49
	ld   de, $1ff1                                   ; $658a: $11 $f1 $1f
	ld   de, $1ff1                                   ; $658d: $11 $f1 $1f
	push af                                          ; $6590: $f5
	rst  JumpTable                                         ; $6591: $df
	ld   a, [$47ff]                                  ; $6592: $fa $ff $47
	add  c                                           ; $6595: $81
	cpl                                              ; $6596: $2f

Jump_0d3_6597:
	rla                                              ; $6597: $17

Jump_0d3_6598:
	pop  af                                          ; $6598: $f1
	adc  a                                           ; $6599: $8f
	ld   [de], a                                     ; $659a: $12
	rst  $38                                         ; $659b: $ff
	ld   l, [hl]                                     ; $659c: $6e
	rst  $38                                         ; $659d: $ff
	sbc  a                                           ; $659e: $9f
	ldh  a, [c]                                      ; $659f: $f2
	sbc  b                                           ; $65a0: $98
	rla                                              ; $65a1: $17
	pop  af                                          ; $65a2: $f1
	rst  $38                                         ; $65a3: $ff
	rra                                              ; $65a4: $1f
	pop  af                                          ; $65a5: $f1
	ld   e, a                                        ; $65a6: $5f
	sub  $ff                                         ; $65a7: $d6 $ff
	ld   a, [$2aff]                                  ; $65a9: $fa $ff $2a
	ld   d, c                                        ; $65ac: $51
	call z, $f11f                                    ; $65ad: $cc $1f $f1
	rst  $38                                         ; $65b0: $ff
	jr   @-$02                                       ; $65b1: $18 $fc

	sbc  a                                           ; $65b3: $9f
	rst  $38                                         ; $65b4: $ff
	adc  a                                           ; $65b5: $8f
	pop  af                                          ; $65b6: $f1
	call nz, $911e                                   ; $65b7: $c4 $1e $91
	rst  $38                                         ; $65ba: $ff
	rra                                              ; $65bb: $1f
	pop  hl                                          ; $65bc: $e1
	sbc  a                                           ; $65bd: $9f
	cp   b                                           ; $65be: $b8
	rst  $38                                         ; $65bf: $ff
	ei                                               ; $65c0: $fb
	rst  $38                                         ; $65c1: $ff
	dec  a                                           ; $65c2: $3d
	ld   hl, $1ff5                                   ; $65c3: $21 $f5 $1f
	or   c                                           ; $65c6: $b1
	ei                                               ; $65c7: $fb
	ld   a, [de]                                     ; $65c8: $1a
	jp   c, $ffaf                                    ; $65c9: $da $af $ff

	sbc  a                                           ; $65cc: $9f
	ldh  a, [c]                                      ; $65cd: $f2
	pop  af                                          ; $65ce: $f1
	rra                                              ; $65cf: $1f
	ld   sp, $1ff7                                   ; $65d0: $31 $f7 $1f
	add  c                                           ; $65d3: $81
	cp   l                                           ; $65d4: $bd
	cp   e                                           ; $65d5: $bb
	rst  JumpTable                                         ; $65d6: $df

jr_0d3_65d7:
	ld   sp, hl                                      ; $65d7: $f9
	cp   $3f                                         ; $65d8: $fe $3f
	ld   de, $1ff1                                   ; $65da: $11 $f1 $1f
	ld   b, c                                        ; $65dd: $41
	push af                                          ; $65de: $f5
	inc  e                                           ; $65df: $1c
	xor  d                                           ; $65e0: $aa
	call c, $8fff                                    ; $65e1: $dc $ff $8f
	ldh  a, [c]                                      ; $65e4: $f2
	pop  af                                          ; $65e5: $f1
	rra                                              ; $65e6: $1f
	ld   hl, $1ff5                                   ; $65e7: $21 $f5 $1f
	ld   b, c                                        ; $65ea: $41
	ret  c                                           ; $65eb: $d8

	call $f7af                                       ; $65ec: $cd $af $f7
	cp   $2f                                         ; $65ef: $fe $2f
	ld   de, $1ff3                                   ; $65f1: $11 $f3 $1f
	ld   h, c                                        ; $65f4: $61
	di                                               ; $65f5: $f3
	dec  e                                           ; $65f6: $1d
	ld   l, e                                        ; $65f7: $6b
	jp   hl                                          ; $65f8: $e9


	rst  $38                                         ; $65f9: $ff
	ld   a, a                                        ; $65fa: $7f
	ldh  a, [c]                                      ; $65fb: $f2
	pop  af                                          ; $65fc: $f1
	rra                                              ; $65fd: $1f
	ld   d, c                                        ; $65fe: $51
	ld   a, [$411f]                                  ; $65ff: $fa $1f $41
	push hl                                          ; $6602: $e5
	cp   a                                           ; $6603: $bf
	sbc  a                                           ; $6604: $9f
	or   $ff                                         ; $6605: $f6 $ff
	cpl                                              ; $6607: $2f
	ld   sp, $1fc9                                   ; $6608: $31 $c9 $1f
	pop  af                                          ; $660b: $f1
	or   $1f                                         ; $660c: $f6 $1f
	dec  hl                                          ; $660e: $2b
	or   $ff                                         ; $660f: $f6 $ff
	ld   l, a                                        ; $6611: $6f
	pop  af                                          ; $6612: $f1
	db   $f4                                         ; $6613: $f4
	jr   jr_0d3_65d7                                 ; $6614: $18 $c1

	cp   a                                           ; $6616: $bf
	rra                                              ; $6617: $1f
	sub  c                                           ; $6618: $91
	ldh  a, [c]                                      ; $6619: $f2
	sbc  a                                           ; $661a: $9f
	ld   l, a                                        ; $661b: $6f
	or   $ff                                         ; $661c: $f6 $ff
	rra                                              ; $661e: $1f
	ld   [hl], c                                     ; $661f: $71
	ld   c, a                                        ; $6620: $4f
	ld   de, $8ef1                                   ; $6621: $11 $f1 $8e
	rra                                              ; $6624: $1f
	ld   h, $f7                                      ; $6625: $26 $f7
	rst  $38                                         ; $6627: $ff
	xor  a                                           ; $6628: $af
	di                                               ; $6629: $f3
	ei                                               ; $662a: $fb
	ld   de, $1fe1                                   ; $662b: $11 $e1 $1f
	ld   de, $d4f1                                   ; $662e: $11 $f1 $d4
	ccf                                              ; $6631: $3f
	sbc  d                                           ; $6632: $9a
	cp   $ff                                         ; $6633: $fe $ff
	ld   l, a                                        ; $6635: $6f
	pop  hl                                          ; $6636: $e1
	dec  de                                          ; $6637: $1b
	ld   de, $1ff1                                   ; $6638: $11 $f1 $1f
	add  hl, de                                      ; $663b: $19
	sub  c                                           ; $663c: $91
	ld   a, [$fb9f]                                  ; $663d: $fa $9f $fb
	db   $fd                                         ; $6640: $fd
	xor  a                                           ; $6641: $af
	ld   de, $1859                                   ; $6642: $11 $59 $18
	pop  de                                          ; $6645: $d1
	pop  de                                          ; $6646: $d1
	inc  e                                           ; $6647: $1c
	dec  e                                           ; $6648: $1d

Jump_0d3_6649:
	rst  $20                                         ; $6649: $e7
	rst  $38                                         ; $664a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $664b: $cf
	ld   sp, hl                                      ; $664c: $f9
	push af                                          ; $664d: $f5
	ld   de, $1fb1                                   ; $664e: $11 $b1 $1f
	inc  de                                          ; $6651: $13
	sub  c                                           ; $6652: $91
	pop  hl                                          ; $6653: $e1
	adc  a                                           ; $6654: $8f
	ld   a, [hl]                                     ; $6655: $7e
	cp   $ff                                         ; $6656: $fe $ff
	sbc  a                                           ; $6658: $9f
	or   e                                           ; $6659: $b3
	rla                                              ; $665a: $17
	ld   b, c                                        ; $665b: $41
	ldh  a, [c]                                      ; $665c: $f2
	inc  e                                           ; $665d: $1c
	jr   jr_0d3_66b1                                 ; $665e: $18 $51

	ld   sp, hl                                      ; $6660: $f9
	cp   a                                           ; $6661: $bf
	rst  $38                                         ; $6662: $ff
	cp   $ff                                         ; $6663: $fe $ff
	ld   d, e                                        ; $6665: $53
	dec  de                                          ; $6666: $1b
	ld   de, $43e1                                   ; $6667: $11 $e1 $43
	ld   a, [de]                                     ; $666a: $1a
	ld   a, [de]                                     ; $666b: $1a
	cp   c                                           ; $666c: $b9
	rst  $28                                         ; $666d: $ef
	rst  $38                                         ; $666e: $ff
	db   $fd                                         ; $666f: $fd
	ld   sp, hl                                      ; $6670: $f9
	ld   h, c                                        ; $6671: $61
	ld   h, l                                        ; $6672: $65
	dec  de                                          ; $6673: $1b
	ld   sp, $5571                                   ; $6674: $31 $71 $55
	dec  hl                                          ; $6677: $2b
	sbc  e                                           ; $6678: $9b
	rst  $38                                         ; $6679: $ff
	rst  $38                                         ; $667a: $ff
	rst  $38                                         ; $667b: $ff
	add  sp, $62                                     ; $667c: $e8 $62
	sub  c                                           ; $667e: $91
	dec  de                                          ; $667f: $1b
	ld   de, $7251                                   ; $6680: $11 $51 $72
	ld   c, d                                        ; $6683: $4a
	xor  d                                           ; $6684: $aa
	rst  $38                                         ; $6685: $ff
	rst  $38                                         ; $6686: $ff
	rst  $38                                         ; $6687: $ff
	ret  z                                           ; $6688: $c8

	ld   d, h                                        ; $6689: $54
	add  c                                           ; $668a: $81
	jr   z, jr_0d3_669f                              ; $668b: $28 $12

	ld   de, $7b71                                   ; $668d: $11 $71 $7b
	sbc  e                                           ; $6690: $9b
	rst  $38                                         ; $6691: $ff
	rst  $38                                         ; $6692: $ff
	rst  $38                                         ; $6693: $ff
	cp   c                                           ; $6694: $b9
	ld   b, [hl]                                     ; $6695: $46
	ld   d, c                                        ; $6696: $51
	ld   d, h                                        ; $6697: $54
	inc  de                                          ; $6698: $13
	inc  de                                          ; $6699: $13
	ld   b, c                                        ; $669a: $41
	sbc  c                                           ; $669b: $99
	xor  [hl]                                        ; $669c: $ae
	rst  $38                                         ; $669d: $ff
	rst  $38                                         ; $669e: $ff

jr_0d3_669f:
	rst  $38                                         ; $669f: $ff
	cp   c                                           ; $66a0: $b9
	ld   d, a                                        ; $66a1: $57
	ld   sp, $1161                                   ; $66a2: $31 $61 $11
	inc  d                                           ; $66a5: $14
	inc  hl                                          ; $66a6: $23
	ld   a, b                                        ; $66a7: $78
	xor  l                                           ; $66a8: $ad
	rst  $38                                         ; $66a9: $ff
	rst  $38                                         ; $66aa: $ff
	rst  $38                                         ; $66ab: $ff
	cp   c                                           ; $66ac: $b9
	ld   d, a                                        ; $66ad: $57
	ld   hl, $1151                                   ; $66ae: $21 $51 $11

jr_0d3_66b1:
	inc  de                                          ; $66b1: $13
	inc  de                                          ; $66b2: $13
	ld   a, b                                        ; $66b3: $78
	sbc  l                                           ; $66b4: $9d
	rst  $38                                         ; $66b5: $ff
	rst  $38                                         ; $66b6: $ff
	rst  $38                                         ; $66b7: $ff
	cp   d                                           ; $66b8: $ba
	ld   h, [hl]                                     ; $66b9: $66
	ld   sp, $1151                                   ; $66ba: $31 $51 $11
	inc  de                                          ; $66bd: $13
	inc  d                                           ; $66be: $14
	ld   l, b                                        ; $66bf: $68
	xor  l                                           ; $66c0: $ad
	rst  $38                                         ; $66c1: $ff
	rst  $38                                         ; $66c2: $ff
	rst  $38                                         ; $66c3: $ff
	jp   z, $3277                                    ; $66c4: $ca $77 $32

	ld   b, c                                        ; $66c7: $41
	ld   de, $1312                                   ; $66c8: $11 $12 $13
	ld   d, a                                        ; $66cb: $57
	sbc  h                                           ; $66cc: $9c
	rst  $38                                         ; $66cd: $ff
	rst  $38                                         ; $66ce: $ff
	rst  $38                                         ; $66cf: $ff
	jp   c, $3377                                    ; $66d0: $da $77 $33

	ld   b, c                                        ; $66d3: $41
	ld   de, $1311                                   ; $66d4: $11 $11 $13
	ld   d, a                                        ; $66d7: $57
	sbc  h                                           ; $66d8: $9c
	rst  $38                                         ; $66d9: $ff
	rst  $38                                         ; $66da: $ff
	rst  $38                                         ; $66db: $ff
	db   $ec                                         ; $66dc: $ec
	add  [hl]                                        ; $66dd: $86
	ld   b, e                                        ; $66de: $43
	ld   sp, $1111                                   ; $66df: $31 $11 $11
	inc  de                                          ; $66e2: $13
	ld   b, a                                        ; $66e3: $47
	sbc  h                                           ; $66e4: $9c
	rst  $38                                         ; $66e5: $ff
	rst  $38                                         ; $66e6: $ff
	rst  $38                                         ; $66e7: $ff
	db   $db                                         ; $66e8: $db
	add  [hl]                                        ; $66e9: $86
	ld   d, e                                        ; $66ea: $53
	ld   [hl-], a                                    ; $66eb: $32
	ld   de, $1211                                   ; $66ec: $11 $11 $12
	ld   b, [hl]                                     ; $66ef: $46
	sbc  e                                           ; $66f0: $9b
	rst  $38                                         ; $66f1: $ff
	rst  $38                                         ; $66f2: $ff
	rst  $38                                         ; $66f3: $ff
	db   $ec                                         ; $66f4: $ec
	sub  a                                           ; $66f5: $97
	ld   d, e                                        ; $66f6: $53
	ld   sp, $1111                                   ; $66f7: $31 $11 $11
	ld   [de], a                                     ; $66fa: $12
	ld   b, [hl]                                     ; $66fb: $46
	adc  h                                           ; $66fc: $8c
	rst  $28                                         ; $66fd: $ef
	rst  $38                                         ; $66fe: $ff
	rst  $38                                         ; $66ff: $ff
	db   $ec                                         ; $6700: $ec
	add  a                                           ; $6701: $87
	ld   d, e                                        ; $6702: $53
	ld   [hl-], a                                    ; $6703: $32
	ld   de, $1211                                   ; $6704: $11 $11 $12
	ld   b, [hl]                                     ; $6707: $46
	adc  e                                           ; $6708: $8b
	rst  $38                                         ; $6709: $ff
	rst  $38                                         ; $670a: $ff
	rst  $38                                         ; $670b: $ff
	db   $fd                                         ; $670c: $fd
	sub  a                                           ; $670d: $97
	ld   d, e                                        ; $670e: $53
	ld   [hl-], a                                    ; $670f: $32
	ld   de, $0111                                   ; $6710: $11 $11 $01
	ld   b, [hl]                                     ; $6713: $46
	adc  d                                           ; $6714: $8a
	rst  $38                                         ; $6715: $ff
	rst  $38                                         ; $6716: $ff
	rst  $38                                         ; $6717: $ff
	db   $fc                                         ; $6718: $fc
	and  a                                           ; $6719: $a7
	ld   d, h                                        ; $671a: $54
	ld   [hl-], a                                    ; $671b: $32
	ld   bc, $1111                                   ; $671c: $01 $11 $11
	ld   b, l                                        ; $671f: $45
	ld   a, d                                        ; $6720: $7a
	rst  $28                                         ; $6721: $ef
	rst  $38                                         ; $6722: $ff
	rst  $38                                         ; $6723: $ff
	db   $fd                                         ; $6724: $fd
	and  a                                           ; $6725: $a7
	ld   h, h                                        ; $6726: $64
	ld   b, e                                        ; $6727: $43
	ld   de, $1111                                   ; $6728: $11 $11 $11
	inc  [hl]                                        ; $672b: $34
	ld   a, d                                        ; $672c: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $672d: $cf
	rst  $38                                         ; $672e: $ff
	rst  $38                                         ; $672f: $ff
	db   $fd                                         ; $6730: $fd
	or   a                                           ; $6731: $b7
	ld   h, h                                        ; $6732: $64
	ld   b, e                                        ; $6733: $43
	ld   de, $1111                                   ; $6734: $11 $11 $11
	inc  [hl]                                        ; $6737: $34
	ld   a, c                                        ; $6738: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6739: $cf
	rst  $38                                         ; $673a: $ff
	rst  $38                                         ; $673b: $ff
	cp   $c8                                         ; $673c: $fe $c8
	ld   [hl], h                                     ; $673e: $74
	inc  sp                                          ; $673f: $33
	ld   de, $1111                                   ; $6740: $11 $11 $11
	inc  h                                           ; $6743: $24
	ld   l, b                                        ; $6744: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6745: $cf
	rst  $38                                         ; $6746: $ff
	rst  $38                                         ; $6747: $ff
	cp   $b9                                         ; $6748: $fe $b9
	ld   h, h                                        ; $674a: $64
	inc  sp                                          ; $674b: $33
	ld   de, $1111                                   ; $674c: $11 $11 $11
	inc  h                                           ; $674f: $24
	ld   l, c                                        ; $6750: $69
	cp   a                                           ; $6751: $bf
	rst  $38                                         ; $6752: $ff
	rst  $38                                         ; $6753: $ff
	cp   $c9                                         ; $6754: $fe $c9
	ld   h, h                                        ; $6756: $64
	ld   [hl-], a                                    ; $6757: $32
	ld   de, $1111                                   ; $6758: $11 $11 $11
	inc  h                                           ; $675b: $24
	ld   l, b                                        ; $675c: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $675d: $cf
	rst  $38                                         ; $675e: $ff
	rst  $38                                         ; $675f: $ff
	cp   $d9                                         ; $6760: $fe $d9
	ld   h, h                                        ; $6762: $64
	ld   [hl-], a                                    ; $6763: $32
	ld   de, $1111                                   ; $6764: $11 $11 $11
	inc  h                                           ; $6767: $24
	ld   l, b                                        ; $6768: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6769: $cf
	rst  $38                                         ; $676a: $ff
	rst  $38                                         ; $676b: $ff
	cp   $c9                                         ; $676c: $fe $c9
	ld   h, h                                        ; $676e: $64
	ld   [hl-], a                                    ; $676f: $32
	ld   de, $1111                                   ; $6770: $11 $11 $11
	inc  h                                           ; $6773: $24
	ld   l, b                                        ; $6774: $68
	cp   [hl]                                        ; $6775: $be
	rst  $38                                         ; $6776: $ff
	rst  $38                                         ; $6777: $ff
	rst  $38                                         ; $6778: $ff
	reti                                             ; $6779: $d9


	ld   h, l                                        ; $677a: $65
	inc  sp                                          ; $677b: $33
	ld   hl, $1111                                   ; $677c: $21 $11 $11
	inc  d                                           ; $677f: $14
	ld   l, b                                        ; $6780: $68
	cp   [hl]                                        ; $6781: $be
	rst  $38                                         ; $6782: $ff
	rst  $38                                         ; $6783: $ff
	rst  $38                                         ; $6784: $ff
	reti                                             ; $6785: $d9


	ld   [hl], h                                     ; $6786: $74
	inc  sp                                          ; $6787: $33
	ld   de, $1111                                   ; $6788: $11 $11 $11
	inc  d                                           ; $678b: $14
	ld   e, b                                        ; $678c: $58
	xor  [hl]                                        ; $678d: $ae
	rst  $38                                         ; $678e: $ff
	rst  $38                                         ; $678f: $ff
	rst  $38                                         ; $6790: $ff
	jp   hl                                          ; $6791: $e9


	ld   [hl], l                                     ; $6792: $75
	inc  sp                                          ; $6793: $33
	ld   hl, $1111                                   ; $6794: $21 $11 $11
	inc  de                                          ; $6797: $13
	ld   e, b                                        ; $6798: $58
	xor  [hl]                                        ; $6799: $ae
	rst  $38                                         ; $679a: $ff
	rst  $38                                         ; $679b: $ff
	rst  $38                                         ; $679c: $ff
	ld   [$3375], a                                  ; $679d: $ea $75 $33
	ld   hl, $1111                                   ; $67a0: $21 $11 $11
	inc  de                                          ; $67a3: $13
	ld   e, b                                        ; $67a4: $58
	xor  l                                           ; $67a5: $ad
	rst  $38                                         ; $67a6: $ff
	rst  $38                                         ; $67a7: $ff
	rst  $38                                         ; $67a8: $ff
	db   $eb                                         ; $67a9: $eb
	ld   [hl], l                                     ; $67aa: $75
	inc  sp                                          ; $67ab: $33
	ld   hl, $1111                                   ; $67ac: $21 $11 $11
	inc  de                                          ; $67af: $13
	ld   d, a                                        ; $67b0: $57
	xor  l                                           ; $67b1: $ad
	rst  $38                                         ; $67b2: $ff
	rst  $38                                         ; $67b3: $ff
	rst  $38                                         ; $67b4: $ff
	db   $eb                                         ; $67b5: $eb
	halt                                             ; $67b6: $76
	inc  sp                                          ; $67b7: $33
	ld   hl, $1111                                   ; $67b8: $21 $11 $11
	inc  de                                          ; $67bb: $13
	ld   d, a                                        ; $67bc: $57
	xor  l                                           ; $67bd: $ad
	rst  $38                                         ; $67be: $ff
	rst  $38                                         ; $67bf: $ff
	rst  $38                                         ; $67c0: $ff
	db   $fc                                         ; $67c1: $fc
	add  [hl]                                        ; $67c2: $86
	ld   b, e                                        ; $67c3: $43
	ld   hl, $1111                                   ; $67c4: $21 $11 $11
	ld   [de], a                                     ; $67c7: $12
	ld   b, a                                        ; $67c8: $47
	xor  h                                           ; $67c9: $ac
	rst  $38                                         ; $67ca: $ff
	rst  $38                                         ; $67cb: $ff
	rst  $38                                         ; $67cc: $ff
	db   $ec                                         ; $67cd: $ec
	sub  [hl]                                        ; $67ce: $96
	ld   b, e                                        ; $67cf: $43
	ld   hl, $1111                                   ; $67d0: $21 $11 $11
	ld   [de], a                                     ; $67d3: $12
	ld   b, a                                        ; $67d4: $47
	sbc  h                                           ; $67d5: $9c
	rst  $38                                         ; $67d6: $ff
	rst  $38                                         ; $67d7: $ff
	rst  $38                                         ; $67d8: $ff
	db   $fc                                         ; $67d9: $fc
	add  [hl]                                        ; $67da: $86
	ld   b, e                                        ; $67db: $43
	ld   hl, $1111                                   ; $67dc: $21 $11 $11
	ld   [de], a                                     ; $67df: $12
	ld   b, [hl]                                     ; $67e0: $46
	adc  h                                           ; $67e1: $8c
	rst  $38                                         ; $67e2: $ff
	rst  $38                                         ; $67e3: $ff
	rst  $38                                         ; $67e4: $ff
	db   $fd                                         ; $67e5: $fd
	sub  a                                           ; $67e6: $97
	ld   d, e                                        ; $67e7: $53
	ld   sp, $1111                                   ; $67e8: $31 $11 $11
	ld   de, $9a46                                   ; $67eb: $11 $46 $9a
	rst  $28                                         ; $67ee: $ef
	rst  $38                                         ; $67ef: $ff
	rst  $38                                         ; $67f0: $ff
	db   $fd                                         ; $67f1: $fd
	sub  a                                           ; $67f2: $97
	ld   d, e                                        ; $67f3: $53
	ld   sp, $1111                                   ; $67f4: $31 $11 $11
	ld   de, $8a35                                   ; $67f7: $11 $35 $8a
	rst  $28                                         ; $67fa: $ef
	rst  $38                                         ; $67fb: $ff
	rst  $38                                         ; $67fc: $ff
	cp   $b7                                         ; $67fd: $fe $b7
	ld   d, e                                        ; $67ff: $53
	ld   [hl-], a                                    ; $6800: $32
	ld   de, $1111                                   ; $6801: $11 $11 $11
	dec  [hl]                                        ; $6804: $35
	ld   a, c                                        ; $6805: $79
	rst  $28                                         ; $6806: $ef
	rst  $38                                         ; $6807: $ff
	rst  $38                                         ; $6808: $ff
	rst  $38                                         ; $6809: $ff
	cp   b                                           ; $680a: $b8
	ld   h, e                                        ; $680b: $63
	ld   [hl-], a                                    ; $680c: $32
	ld   de, $1111                                   ; $680d: $11 $11 $11
	inc  h                                           ; $6810: $24
	ld   a, c                                        ; $6811: $79
	rst  JumpTable                                         ; $6812: $df
	rst  $38                                         ; $6813: $ff
	rst  $38                                         ; $6814: $ff
	cp   $c9                                         ; $6815: $fe $c9
	ld   [hl], h                                     ; $6817: $74
	ld   [hl-], a                                    ; $6818: $32
	ld   de, $1111                                   ; $6819: $11 $11 $11
	inc  h                                           ; $681c: $24
	ld   l, b                                        ; $681d: $68
	cp   a                                           ; $681e: $bf
	rst  $38                                         ; $681f: $ff
	rst  $38                                         ; $6820: $ff
	rst  $38                                         ; $6821: $ff
	reti                                             ; $6822: $d9


	ld   [hl], l                                     ; $6823: $75
	inc  sp                                          ; $6824: $33
	ld   de, $1111                                   ; $6825: $11 $11 $11
	inc  de                                          ; $6828: $13
	ld   l, b                                        ; $6829: $68
	xor  a                                           ; $682a: $af
	rst  $38                                         ; $682b: $ff
	rst  $38                                         ; $682c: $ff
	rst  $38                                         ; $682d: $ff
	jp   c, $3385                                    ; $682e: $da $85 $33

	ld   de, $1111                                   ; $6831: $11 $11 $11
	inc  de                                          ; $6834: $13
	ld   e, b                                        ; $6835: $58
	sbc  l                                           ; $6836: $9d
	rst  $38                                         ; $6837: $ff
	rst  $38                                         ; $6838: $ff
	rst  $38                                         ; $6839: $ff
	ei                                               ; $683a: $fb
	sub  [hl]                                        ; $683b: $96
	ld   b, e                                        ; $683c: $43
	ld   hl, $1111                                   ; $683d: $21 $11 $11
	ld   [de], a                                     ; $6840: $12
	ld   b, a                                        ; $6841: $47
	sbc  l                                           ; $6842: $9d
	rst  $38                                         ; $6843: $ff
	rst  $38                                         ; $6844: $ff
	rst  $38                                         ; $6845: $ff
	db   $fd                                         ; $6846: $fd
	sub  a                                           ; $6847: $97
	ld   b, e                                        ; $6848: $43
	ld   sp, $1111                                   ; $6849: $31 $11 $11
	ld   [de], a                                     ; $684c: $12
	ld   b, [hl]                                     ; $684d: $46
	sbc  e                                           ; $684e: $9b
	rst  $38                                         ; $684f: $ff
	rst  $38                                         ; $6850: $ff
	rst  $38                                         ; $6851: $ff
	db   $fd                                         ; $6852: $fd
	xor  b                                           ; $6853: $a8
	ld   d, e                                        ; $6854: $53
	ld   sp, $1111                                   ; $6855: $31 $11 $11
	ld   de, $8935                                   ; $6858: $11 $35 $89
	rst  $28                                         ; $685b: $ef
	rst  $38                                         ; $685c: $ff
	rst  $38                                         ; $685d: $ff
	cp   $b8                                         ; $685e: $fe $b8
	ld   h, h                                        ; $6860: $64
	ld   [hl-], a                                    ; $6861: $32
	ld   de, $1111                                   ; $6862: $11 $11 $11
	inc  h                                           ; $6865: $24
	ld   a, c                                        ; $6866: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6867: $cf
	rst  $38                                         ; $6868: $ff
	rst  $38                                         ; $6869: $ff
	rst  $38                                         ; $686a: $ff
	jp   z, $3483                                    ; $686b: $ca $83 $34

	ld   de, $1111                                   ; $686e: $11 $11 $11
	inc  h                                           ; $6871: $24
	ld   l, b                                        ; $6872: $68
	rst  JumpTable                                         ; $6873: $df
	rst  $38                                         ; $6874: $ff
	rst  $38                                         ; $6875: $ff
	rst  $38                                         ; $6876: $ff
	cp   b                                           ; $6877: $b8

Jump_0d3_6878:
	sub  l                                           ; $6878: $95
	inc  d                                           ; $6879: $14
	ld   hl, $1111                                   ; $687a: $21 $11 $11
	dec  h                                           ; $687d: $25
	add  a                                           ; $687e: $87
	cp   a                                           ; $687f: $bf
	rst  $38                                         ; $6880: $ff
	rst  $38                                         ; $6881: $ff
	cp   $b6                                         ; $6882: $fe $b6
	ld   [hl], l                                     ; $6884: $75
	inc  de                                          ; $6885: $13
	ld   sp, $1211                                   ; $6886: $31 $11 $12
	ld   d, $88                                      ; $6889: $16 $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $688b: $cf
	rst  $38                                         ; $688c: $ff
	rst  $38                                         ; $688d: $ff
	cp   $b5                                         ; $688e: $fe $b5
	ld   h, [hl]                                     ; $6890: $66
	ld   [de], a                                     ; $6891: $12
	ld   b, c                                        ; $6892: $41
	ld   de, $1613                                   ; $6893: $11 $13 $16
	xor  b                                           ; $6896: $a8
	cp   a                                           ; $6897: $bf
	rst  $28                                         ; $6898: $ef
	rst  $38                                         ; $6899: $ff
	rst  $38                                         ; $689a: $ff
	or   h                                           ; $689b: $b4
	ld   b, [hl]                                     ; $689c: $46
	ld   de, $1151                                   ; $689d: $11 $51 $11
	inc  d                                           ; $68a0: $14
	rla                                              ; $68a1: $17
	xor  c                                           ; $68a2: $a9
	xor  a                                           ; $68a3: $af
	rst  $38                                         ; $68a4: $ff
	rst  $38                                         ; $68a5: $ff
	cp   $c4                                         ; $68a6: $fe $c4
	ld   b, a                                        ; $68a8: $47
	ld   de, $1161                                   ; $68a9: $11 $61 $11
	dec  d                                           ; $68ac: $15
	rla                                              ; $68ad: $17
	cp   d                                           ; $68ae: $ba
	cp   a                                           ; $68af: $bf
	rst  $38                                         ; $68b0: $ff
	rst  $38                                         ; $68b1: $ff
	cp   $c3                                         ; $68b2: $fe $c3
	scf                                              ; $68b4: $37
	ld   de, $1171                                   ; $68b5: $11 $71 $11
	ld   d, $17                                      ; $68b8: $16 $17
	cp   d                                           ; $68ba: $ba
	xor  a                                           ; $68bb: $af
	rst  $38                                         ; $68bc: $ff
	rst  $38                                         ; $68bd: $ff
	cp   $d3                                         ; $68be: $fe $d3
	jr   z, jr_0d3_68d3                              ; $68c0: $28 $11

	ld   [hl], c                                     ; $68c2: $71
	ld   de, $1716                                   ; $68c3: $11 $16 $17
	reti                                             ; $68c6: $d9


	xor  a                                           ; $68c7: $af
	rst  $38                                         ; $68c8: $ff
	rst  $38                                         ; $68c9: $ff
	cp   $c2                                         ; $68ca: $fe $c2
	jr   z, jr_0d3_68df                              ; $68cc: $28 $11

	add  c                                           ; $68ce: $81
	ld   de, $1817                                   ; $68cf: $11 $17 $18
	reti                                             ; $68d2: $d9


jr_0d3_68d3:
	cp   a                                           ; $68d3: $bf
	rst  $38                                         ; $68d4: $ff
	rst  $38                                         ; $68d5: $ff
	cp   $c1                                         ; $68d6: $fe $c1
	jr   @+$13                                       ; $68d8: $18 $11

	sub  c                                           ; $68da: $91
	ld   de, $1818                                   ; $68db: $11 $18 $18
	reti                                             ; $68de: $d9


jr_0d3_68df:
	cp   a                                           ; $68df: $bf
	rst  $38                                         ; $68e0: $ff
	rst  $38                                         ; $68e1: $ff
	rst  $38                                         ; $68e2: $ff
	pop  bc                                          ; $68e3: $c1
	jr   jr_0d3_68f7                                 ; $68e4: $18 $11

	sub  c                                           ; $68e6: $91
	ld   de, $1a19                                   ; $68e7: $11 $19 $1a
	add  sp, -$41                                    ; $68ea: $e8 $bf
	rst  $38                                         ; $68ec: $ff
	rst  $38                                         ; $68ed: $ff
	rst  $38                                         ; $68ee: $ff
	pop  bc                                          ; $68ef: $c1
	jr   jr_0d3_6903                                 ; $68f0: $18 $11

	sub  c                                           ; $68f2: $91
	ld   de, $1b19                                   ; $68f3: $11 $19 $1b
	jp   hl                                          ; $68f6: $e9


jr_0d3_68f7:
	rst  JumpTable                                         ; $68f7: $df
	rst  $38                                         ; $68f8: $ff
	rst  $38                                         ; $68f9: $ff
	cp   $b1                                         ; $68fa: $fe $b1
	jr   z, @+$13                                    ; $68fc: $28 $11

	sub  c                                           ; $68fe: $91
	ld   de, $1c18                                   ; $68ff: $11 $18 $1c
	jp   hl                                          ; $6902: $e9


jr_0d3_6903:
	rst  JumpTable                                         ; $6903: $df
	rst  $38                                         ; $6904: $ff
	rst  $38                                         ; $6905: $ff
	cp   $b1                                         ; $6906: $fe $b1
	jr   z, @+$13                                    ; $6908: $28 $11

	or   c                                           ; $690a: $b1
	ld   [de], a                                     ; $690b: $12
	add  hl, de                                      ; $690c: $19
	inc  e                                           ; $690d: $1c
	ld   hl, sp-$21                                  ; $690e: $f8 $df
	rst  $28                                         ; $6910: $ef
	rst  $38                                         ; $6911: $ff
	rst  $38                                         ; $6912: $ff
	and  c                                           ; $6913: $a1
	add  hl, hl                                      ; $6914: $29
	ld   de, $12b1                                   ; $6915: $11 $b1 $12
	add  hl, de                                      ; $6918: $19
	dec  e                                           ; $6919: $1d
	ld   hl, sp-$01                                  ; $691a: $f8 $ff
	rst  $38                                         ; $691c: $ff
	rst  $38                                         ; $691d: $ff
	cp   $a1                                         ; $691e: $fe $a1
	add  hl, hl                                      ; $6920: $29
	ld   de, $13b1                                   ; $6921: $11 $b1 $13
	add  hl, de                                      ; $6924: $19
	dec  e                                           ; $6925: $1d
	ld   hl, sp-$11                                  ; $6926: $f8 $ef
	rst  $28                                         ; $6928: $ef
	rst  $38                                         ; $6929: $ff
	cp   $91                                         ; $692a: $fe $91
	ld   a, [de]                                     ; $692c: $1a
	ld   de, $14c1                                   ; $692d: $11 $c1 $14
	jr   jr_0d3_694f                                 ; $6930: $18 $1d

	ld   hl, sp-$01                                  ; $6932: $f8 $ff
	rst  $38                                         ; $6934: $ff
	rst  $38                                         ; $6935: $ff
	rst  $38                                         ; $6936: $ff
	and  c                                           ; $6937: $a1
	ld   a, [de]                                     ; $6938: $1a
	ld   de, $15d1                                   ; $6939: $11 $d1 $15
	jr   jr_0d3_695a                                 ; $693c: $18 $1c

	ld   hl, sp-$01                                  ; $693e: $f8 $ff
	rst  $38                                         ; $6940: $ff
	rst  $38                                         ; $6941: $ff
	rst  $38                                         ; $6942: $ff
	sub  c                                           ; $6943: $91
	ld   a, [de]                                     ; $6944: $1a
	ld   de, $16d1                                   ; $6945: $11 $d1 $16
	rla                                              ; $6948: $17
	dec  e                                           ; $6949: $1d
	ld   sp, hl                                      ; $694a: $f9
	rst  $38                                         ; $694b: $ff
	db   $fd                                         ; $694c: $fd
	rst  $38                                         ; $694d: $ff
	rst  JumpTable                                         ; $694e: $df

jr_0d3_694f:
	and  c                                           ; $694f: $a1
	ld   a, [de]                                     ; $6950: $1a
	ld   de, $17c1                                   ; $6951: $11 $c1 $17
	ld   d, $1a                                      ; $6954: $16 $1a
	ld   hl, sp-$21                                  ; $6956: $f8 $df
	db   $fc                                         ; $6958: $fc
	rst  $38                                         ; $6959: $ff

jr_0d3_695a:
	cp   a                                           ; $695a: $bf
	pop  bc                                          ; $695b: $c1
	ld   a, [de]                                     ; $695c: $1a

jr_0d3_695d:
	ld   de, $16b1                                   ; $695d: $11 $b1 $16
	dec  d                                           ; $6960: $15
	jr   jr_0d3_695d                                 ; $6961: $18 $fa

	rst  JumpTable                                         ; $6963: $df
	ei                                               ; $6964: $fb
	rst  $38                                         ; $6965: $ff
	cp   a                                           ; $6966: $bf
	pop  de                                          ; $6967: $d1
	jr   jr_0d3_697b                                 ; $6968: $18 $11

	ld   b, a                                        ; $696a: $47
	ld   [de], a                                     ; $696b: $12
	ld   [hl-], a                                    ; $696c: $32
	ld   h, $fb                                      ; $696d: $26 $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $696f: $cf
	ei                                               ; $6970: $fb
	rst  $38                                         ; $6971: $ff
	xor  a                                           ; $6972: $af
	ldh  a, [c]                                      ; $6973: $f2
	ld   d, $31                                      ; $6974: $16 $31
	inc  e                                           ; $6976: $1c
	ld   de, $3361                                   ; $6977: $11 $61 $33
	db   $fc                                         ; $697a: $fc

jr_0d3_697b:
	cp   a                                           ; $697b: $bf
	db   $fd                                         ; $697c: $fd
	rst  $38                                         ; $697d: $ff
	xor  a                                           ; $697e: $af
	push af                                          ; $697f: $f5
	ld   de, $1c71                                   ; $6980: $11 $71 $1c
	ld   de, $2172                                   ; $6983: $11 $72 $21
	rst  $38                                         ; $6986: $ff
	cp   a                                           ; $6987: $bf
	rst  $38                                         ; $6988: $ff
	rst  $28                                         ; $6989: $ef
	ld   a, [$11fb]                                  ; $698a: $fa $fb $11
	ld   h, c                                        ; $698d: $61
	inc  de                                          ; $698e: $13
	ld   h, c                                        ; $698f: $61
	inc  h                                           ; $6990: $24
	ld   hl, $afaf                                   ; $6991: $21 $af $af
	rst  $38                                         ; $6994: $ff
	rst  JumpTable                                         ; $6995: $df
	ld   a, [$11ff]                                  ; $6996: $fa $ff $11
	inc  [hl]                                        ; $6999: $34
	ld   de, $17c1                                   ; $699a: $11 $c1 $17
	ld   sp, $df4f                                   ; $699d: $31 $4f $df
	rst  $38                                         ; $69a0: $ff
	rst  $38                                         ; $69a1: $ff
	rst  $38                                         ; $69a2: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69a3: $cf
	add  c                                           ; $69a4: $81
	inc  de                                          ; $69a5: $13
	ld   de, $1115                                   ; $69a6: $11 $15 $11
	ld   d, d                                        ; $69a9: $52
	inc  e                                           ; $69aa: $1c
	db   $fc                                         ; $69ab: $fc
	rst  $38                                         ; $69ac: $ff
	rst  $38                                         ; $69ad: $ff
	rst  $38                                         ; $69ae: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69af: $cf
	pop  af                                          ; $69b0: $f1
	ld   de, $1711                                   ; $69b1: $11 $11 $17
	ld   de, $1344                                   ; $69b4: $11 $44 $13
	cp   $ff                                         ; $69b7: $fe $ff
	rst  $38                                         ; $69b9: $ff
	rst  $38                                         ; $69ba: $ff
	ei                                               ; $69bb: $fb
	ld   sp, hl                                      ; $69bc: $f9
	ld   de, $1111                                   ; $69bd: $11 $11 $11
	ld   h, c                                        ; $69c0: $61
	dec  d                                           ; $69c1: $15
	ld   d, c                                        ; $69c2: $51
	ld   l, a                                        ; $69c3: $6f
	rst  JumpTable                                         ; $69c4: $df
	rst  $38                                         ; $69c5: $ff
	rst  $38                                         ; $69c6: $ff
	rst  $38                                         ; $69c7: $ff
	rst  $28                                         ; $69c8: $ef
	ld   [hl], c                                     ; $69c9: $71
	ld   de, $1511                                   ; $69ca: $11 $11 $15
	ld   de, $0744                                   ; $69cd: $11 $44 $07
	db   $fd                                         ; $69d0: $fd
	rst  $38                                         ; $69d1: $ff
	rst  $38                                         ; $69d2: $ff
	rst  $38                                         ; $69d3: $ff
	rst  $38                                         ; $69d4: $ff
	rst  $30                                         ; $69d5: $f7
	ld   de, $1111                                   ; $69d6: $11 $11 $11
	ld   hl, $5112                                   ; $69d9: $21 $12 $51
	ld   l, a                                        ; $69dc: $6f
	rst  $38                                         ; $69dd: $ff
	rst  $38                                         ; $69de: $ff
	rst  $38                                         ; $69df: $ff
	rst  $38                                         ; $69e0: $ff
	rst  $38                                         ; $69e1: $ff
	and  d                                           ; $69e2: $a2
	ld   de, $1111                                   ; $69e3: $11 $11 $11
	ld   de, $2614                                   ; $69e6: $11 $14 $26
	rst  JumpTable                                         ; $69e9: $df
	rst  $38                                         ; $69ea: $ff
	rst  $38                                         ; $69eb: $ff
	rst  $38                                         ; $69ec: $ff
	rst  $38                                         ; $69ed: $ff
	db   $fc                                         ; $69ee: $fc
	ld   b, c                                        ; $69ef: $41
	ld   de, $1111                                   ; $69f0: $11 $11 $11
	ld   de, $6823                                   ; $69f3: $11 $23 $68
	rst  $38                                         ; $69f6: $ff
	rst  $38                                         ; $69f7: $ff
	rst  $38                                         ; $69f8: $ff
	rst  $38                                         ; $69f9: $ff
	rst  $38                                         ; $69fa: $ff
	rst  ToBoot                                         ; $69fb: $c7
	ld   sp, $1111                                   ; $69fc: $31 $11 $11
	ld   de, $3511                                   ; $69ff: $11 $11 $35
	adc  l                                           ; $6a02: $8d
	rst  $38                                         ; $6a03: $ff
	rst  $38                                         ; $6a04: $ff
	rst  $38                                         ; $6a05: $ff
	rst  $38                                         ; $6a06: $ff
	db   $fc                                         ; $6a07: $fc
	or   l                                           ; $6a08: $b5
	ld   de, $1111                                   ; $6a09: $11 $11 $11
	ld   de, $3612                                   ; $6a0c: $11 $12 $36
	cp   l                                           ; $6a0f: $bd
	rst  $38                                         ; $6a10: $ff
	rst  $38                                         ; $6a11: $ff
	rst  $38                                         ; $6a12: $ff
	rst  $38                                         ; $6a13: $ff
	db   $ed                                         ; $6a14: $ed
	add  l                                           ; $6a15: $85
	ld   sp, $1111                                   ; $6a16: $31 $11 $11
	ld   de, $4912                                   ; $6a19: $11 $12 $49
	sbc  h                                           ; $6a1c: $9c
	rst  $38                                         ; $6a1d: $ff
	rst  $38                                         ; $6a1e: $ff
	rst  $38                                         ; $6a1f: $ff
	rst  $38                                         ; $6a20: $ff
	db   $eb                                         ; $6a21: $eb
	sub  a                                           ; $6a22: $97
	ld   de, $1111                                   ; $6a23: $11 $11 $11
	ld   de, $6612                                   ; $6a26: $11 $12 $66
	ld   a, h                                        ; $6a29: $7c
	rst  $38                                         ; $6a2a: $ff
	rst  $38                                         ; $6a2b: $ff
	rst  $38                                         ; $6a2c: $ff
	rst  $38                                         ; $6a2d: $ff
	db   $db                                         ; $6a2e: $db
	xor  c                                           ; $6a2f: $a9
	ld   d, d                                        ; $6a30: $52
	ld   de, $1211                                   ; $6a31: $11 $11 $12
	ld   de, $8844                                   ; $6a34: $11 $44 $88
	cp   a                                           ; $6a37: $bf
	rst  $38                                         ; $6a38: $ff
	rst  $38                                         ; $6a39: $ff
	rst  $38                                         ; $6a3a: $ff
	db   $ed                                         ; $6a3b: $ed
	ret                                              ; $6a3c: $c9


	and  [hl]                                        ; $6a3d: $a6
	inc  h                                           ; $6a3e: $24
	ld   de, $1111                                   ; $6a3f: $11 $11 $11
	inc  hl                                          ; $6a42: $23
	ld   b, l                                        ; $6a43: $45
	sbc  c                                           ; $6a44: $99
	xor  a                                           ; $6a45: $af
	rst  $38                                         ; $6a46: $ff
	rst  $38                                         ; $6a47: $ff
	db   $fd                                         ; $6a48: $fd
	xor  $ba                                         ; $6a49: $ee $ba
	sub  l                                           ; $6a4b: $95
	ld   d, d                                        ; $6a4c: $52
	ld   [de], a                                     ; $6a4d: $12
	ld   bc, $3212                                   ; $6a4e: $01 $12 $32
	ld   b, a                                        ; $6a51: $47
	sbc  c                                           ; $6a52: $99
	cp   a                                           ; $6a53: $bf
	sbc  $ff                                         ; $6a54: $de $ff
	db   $fd                                         ; $6a56: $fd
	call c, $97a9                                    ; $6a57: $dc $a9 $97
	ld   h, e                                        ; $6a5a: $63
	inc  sp                                          ; $6a5b: $33
	inc  hl                                          ; $6a5c: $23
	ld   [de], a                                     ; $6a5d: $12
	inc  [hl]                                        ; $6a5e: $34
	ld   b, a                                        ; $6a5f: $47
	sbc  b                                           ; $6a60: $98
	xor  e                                           ; $6a61: $ab
	call z, $ddcd                                    ; $6a62: $cc $cd $dd
	db   $db                                         ; $6a65: $db
	sbc  e                                           ; $6a66: $9b
	adc  b                                           ; $6a67: $88
	add  [hl]                                        ; $6a68: $86
	ld   h, l                                        ; $6a69: $65
	ld   b, e                                        ; $6a6a: $43
	ld   d, h                                        ; $6a6b: $54
	ld   d, [hl]                                     ; $6a6c: $56
	ld   h, a                                        ; $6a6d: $67
	ld   [hl], a                                     ; $6a6e: $77
	sbc  b                                           ; $6a6f: $98
	adc  d                                           ; $6a70: $8a
	xor  c                                           ; $6a71: $a9
	sbc  e                                           ; $6a72: $9b
	cp   b                                           ; $6a73: $b8
	sbc  e                                           ; $6a74: $9b
	xor  c                                           ; $6a75: $a9
	sbc  c                                           ; $6a76: $99
	add  a                                           ; $6a77: $87
	ld   l, b                                        ; $6a78: $68
	ld   h, [hl]                                     ; $6a79: $66
	add  a                                           ; $6a7a: $87
	add  a                                           ; $6a7b: $87
	halt                                             ; $6a7c: $76
	ld   h, a                                        ; $6a7d: $67
	ld   [hl], a                                     ; $6a7e: $77
	ld   a, b                                        ; $6a7f: $78
	add  a                                           ; $6a80: $87
	adc  b                                           ; $6a81: $88
	ld   [hl], a                                     ; $6a82: $77
	xor  c                                           ; $6a83: $a9
	adc  d                                           ; $6a84: $8a
	xor  c                                           ; $6a85: $a9
	adc  c                                           ; $6a86: $89
	xor  b                                           ; $6a87: $a8
	sbc  c                                           ; $6a88: $99
	and  a                                           ; $6a89: $a7
	ld   a, b                                        ; $6a8a: $78
	add  [hl]                                        ; $6a8b: $86
	ld   e, c                                        ; $6a8c: $59
	halt                                             ; $6a8d: $76
	ld   l, b                                        ; $6a8e: $68
	ld   [hl], l                                     ; $6a8f: $75
	adc  b                                           ; $6a90: $88
	and  a                                           ; $6a91: $a7
	adc  e                                           ; $6a92: $8b
	adc  c                                           ; $6a93: $89
	sbc  e                                           ; $6a94: $9b
	and  a                                           ; $6a95: $a7
	adc  d                                           ; $6a96: $8a
	sub  a                                           ; $6a97: $97
	sbc  d                                           ; $6a98: $9a
	add  a                                           ; $6a99: $87
	add  a                                           ; $6a9a: $87
	ld   [hl], a                                     ; $6a9b: $77
	sbc  b                                           ; $6a9c: $98
	ld   [hl], a                                     ; $6a9d: $77
	ld   h, a                                        ; $6a9e: $67
	ld   [hl], a                                     ; $6a9f: $77
	sub  a                                           ; $6aa0: $97
	adc  d                                           ; $6aa1: $8a
	adc  b                                           ; $6aa2: $88
	adc  c                                           ; $6aa3: $89
	adc  b                                           ; $6aa4: $88
	sbc  b                                           ; $6aa5: $98
	adc  c                                           ; $6aa6: $89
	sbc  b                                           ; $6aa7: $98
	ld   a, b                                        ; $6aa8: $78
	halt                                             ; $6aa9: $76
	sbc  c                                           ; $6aaa: $99
	add  a                                           ; $6aab: $87
	sbc  c                                           ; $6aac: $99
	ld   a, b                                        ; $6aad: $78
	sbc  d                                           ; $6aae: $9a
	ld   a, b                                        ; $6aaf: $78
	sbc  c                                           ; $6ab0: $99
	ld   a, c                                        ; $6ab1: $79
	sub  [hl]                                        ; $6ab2: $96
	add  a                                           ; $6ab3: $87
	adc  b                                           ; $6ab4: $88
	ld   a, b                                        ; $6ab5: $78
	ld   a, b                                        ; $6ab6: $78
	halt                                             ; $6ab7: $76
	adc  d                                           ; $6ab8: $8a
	ld   a, b                                        ; $6ab9: $78
	sbc  b                                           ; $6aba: $98
	halt                                             ; $6abb: $76
	sbc  d                                           ; $6abc: $9a
	ld   l, c                                        ; $6abd: $69
	xor  b                                           ; $6abe: $a8
	adc  b                                           ; $6abf: $88
	sbc  b                                           ; $6ac0: $98
	ld   l, c                                        ; $6ac1: $69
	sbc  b                                           ; $6ac2: $98
	ld   h, a                                        ; $6ac3: $67
	xor  b                                           ; $6ac4: $a8
	ld   h, [hl]                                     ; $6ac5: $66
	sbc  b                                           ; $6ac6: $98
	ld   l, c                                        ; $6ac7: $69
	or   a                                           ; $6ac8: $b7
	ld   l, e                                        ; $6ac9: $6b
	add  a                                           ; $6aca: $87
	ld   a, c                                        ; $6acb: $79
	and  a                                           ; $6acc: $a7
	ld   a, c                                        ; $6acd: $79
	sub  a                                           ; $6ace: $97
	sbc  b                                           ; $6acf: $98
	ld   [hl], a                                     ; $6ad0: $77
	ld   l, b                                        ; $6ad1: $68
	ld   [hl], a                                     ; $6ad2: $77
	sbc  b                                           ; $6ad3: $98
	ld   [hl], a                                     ; $6ad4: $77
	ld   a, b                                        ; $6ad5: $78
	adc  b                                           ; $6ad6: $88
	adc  c                                           ; $6ad7: $89
	adc  b                                           ; $6ad8: $88
	sbc  c                                           ; $6ad9: $99
	sbc  b                                           ; $6ada: $98
	adc  c                                           ; $6adb: $89
	adc  b                                           ; $6adc: $88
	add  a                                           ; $6add: $87
	adc  b                                           ; $6ade: $88
	ld   [hl], a                                     ; $6adf: $77
	adc  b                                           ; $6ae0: $88
	ld   a, c                                        ; $6ae1: $79
	adc  b                                           ; $6ae2: $88
	add  a                                           ; $6ae3: $87
	sbc  c                                           ; $6ae4: $99
	adc  b                                           ; $6ae5: $88
	add  a                                           ; $6ae6: $87
	sbc  c                                           ; $6ae7: $99
	sbc  c                                           ; $6ae8: $99
	sbc  b                                           ; $6ae9: $98
	ld   a, b                                        ; $6aea: $78
	ld   [hl], a                                     ; $6aeb: $77
	sub  a                                           ; $6aec: $97
	ld   a, c                                        ; $6aed: $79
	add  a                                           ; $6aee: $87
	ld   a, b                                        ; $6aef: $78
	add  a                                           ; $6af0: $87
	adc  b                                           ; $6af1: $88
	adc  b                                           ; $6af2: $88
	sbc  b                                           ; $6af3: $98
	adc  b                                           ; $6af4: $88
	adc  b                                           ; $6af5: $88
	sbc  b                                           ; $6af6: $98
	adc  b                                           ; $6af7: $88
	adc  b                                           ; $6af8: $88
	sbc  c                                           ; $6af9: $99
	ld   [hl], a                                     ; $6afa: $77
	adc  b                                           ; $6afb: $88
	ld   a, b                                        ; $6afc: $78
	adc  b                                           ; $6afd: $88
	add  a                                           ; $6afe: $87
	ld   a, b                                        ; $6aff: $78
	adc  b                                           ; $6b00: $88
	adc  b                                           ; $6b01: $88
	adc  b                                           ; $6b02: $88
	sbc  c                                           ; $6b03: $99
	adc  b                                           ; $6b04: $88
	sbc  c                                           ; $6b05: $99
	ld   a, b                                        ; $6b06: $78
	sbc  b                                           ; $6b07: $98
	add  a                                           ; $6b08: $87
	ld   a, b                                        ; $6b09: $78
	add  a                                           ; $6b0a: $87
	adc  b                                           ; $6b0b: $88
	ld   a, b                                        ; $6b0c: $78
	adc  c                                           ; $6b0d: $89
	add  a                                           ; $6b0e: $87
	adc  b                                           ; $6b0f: $88
	adc  b                                           ; $6b10: $88
	adc  c                                           ; $6b11: $89
	adc  b                                           ; $6b12: $88
	sbc  b                                           ; $6b13: $98
	sbc  b                                           ; $6b14: $98
	adc  b                                           ; $6b15: $88
	ld   a, b                                        ; $6b16: $78
	adc  b                                           ; $6b17: $88
	sbc  b                                           ; $6b18: $98
	add  a                                           ; $6b19: $87
	ld   a, b                                        ; $6b1a: $78
	adc  b                                           ; $6b1b: $88
	adc  b                                           ; $6b1c: $88
	sbc  b                                           ; $6b1d: $98
	adc  b                                           ; $6b1e: $88
	adc  b                                           ; $6b1f: $88
	adc  b                                           ; $6b20: $88
	adc  c                                           ; $6b21: $89
	sbc  b                                           ; $6b22: $98
	add  a                                           ; $6b23: $87
	ld   a, b                                        ; $6b24: $78
	adc  b                                           ; $6b25: $88
	sbc  b                                           ; $6b26: $98
	add  a                                           ; $6b27: $87
	ld   [hl], a                                     ; $6b28: $77
	ld   a, b                                        ; $6b29: $78
	adc  b                                           ; $6b2a: $88
	adc  c                                           ; $6b2b: $89
	adc  c                                           ; $6b2c: $89
	ld   a, b                                        ; $6b2d: $78
	adc  b                                           ; $6b2e: $88
	adc  b                                           ; $6b2f: $88
	adc  b                                           ; $6b30: $88
	add  a                                           ; $6b31: $87
	ld   a, c                                        ; $6b32: $79
	ld   a, b                                        ; $6b33: $78
	adc  b                                           ; $6b34: $88
	sub  a                                           ; $6b35: $97
	ld   a, b                                        ; $6b36: $78
	add  a                                           ; $6b37: $87
	adc  b                                           ; $6b38: $88
	sbc  b                                           ; $6b39: $98
	ld   a, b                                        ; $6b3a: $78
	sbc  b                                           ; $6b3b: $98
	adc  b                                           ; $6b3c: $88
	adc  b                                           ; $6b3d: $88
	adc  c                                           ; $6b3e: $89
	ld   a, b                                        ; $6b3f: $78
	ld   [hl], a                                     ; $6b40: $77
	add  a                                           ; $6b41: $87
	adc  b                                           ; $6b42: $88
	ld   [hl], a                                     ; $6b43: $77
	sub  a                                           ; $6b44: $97
	ld   a, c                                        ; $6b45: $79
	adc  b                                           ; $6b46: $88
	adc  c                                           ; $6b47: $89
	sbc  b                                           ; $6b48: $98
	adc  c                                           ; $6b49: $89
	add  a                                           ; $6b4a: $87
	sbc  c                                           ; $6b4b: $99
	add  a                                           ; $6b4c: $87
	ld   a, b                                        ; $6b4d: $78
	adc  b                                           ; $6b4e: $88
	adc  b                                           ; $6b4f: $88
	sbc  b                                           ; $6b50: $98
	adc  b                                           ; $6b51: $88
	sbc  c                                           ; $6b52: $99
	ld   a, b                                        ; $6b53: $78
	adc  b                                           ; $6b54: $88
	ld   a, b                                        ; $6b55: $78
	sbc  b                                           ; $6b56: $98
	ld   a, b                                        ; $6b57: $78
	adc  b                                           ; $6b58: $88
	add  a                                           ; $6b59: $87
	sbc  b                                           ; $6b5a: $98
	add  a                                           ; $6b5b: $87
	add  a                                           ; $6b5c: $87
	ld   a, b                                        ; $6b5d: $78
	adc  b                                           ; $6b5e: $88
	adc  c                                           ; $6b5f: $89
	adc  b                                           ; $6b60: $88
	adc  b                                           ; $6b61: $88
	add  a                                           ; $6b62: $87
	adc  b                                           ; $6b63: $88
	adc  b                                           ; $6b64: $88
	adc  b                                           ; $6b65: $88
	ld   a, b                                        ; $6b66: $78
	adc  b                                           ; $6b67: $88
	adc  b                                           ; $6b68: $88
	adc  b                                           ; $6b69: $88
	adc  b                                           ; $6b6a: $88
	ld   a, b                                        ; $6b6b: $78
	adc  b                                           ; $6b6c: $88
	adc  c                                           ; $6b6d: $89
	adc  b                                           ; $6b6e: $88
	adc  b                                           ; $6b6f: $88
	adc  c                                           ; $6b70: $89
	adc  b                                           ; $6b71: $88
	adc  b                                           ; $6b72: $88
	ld   a, b                                        ; $6b73: $78
	adc  b                                           ; $6b74: $88
	adc  b                                           ; $6b75: $88
	ld   a, b                                        ; $6b76: $78
	adc  b                                           ; $6b77: $88
	adc  b                                           ; $6b78: $88
	sbc  b                                           ; $6b79: $98
	adc  c                                           ; $6b7a: $89
	adc  b                                           ; $6b7b: $88
	adc  b                                           ; $6b7c: $88
	adc  b                                           ; $6b7d: $88
	adc  c                                           ; $6b7e: $89
	adc  b                                           ; $6b7f: $88
	add  a                                           ; $6b80: $87
	adc  b                                           ; $6b81: $88
	adc  b                                           ; $6b82: $88
	adc  b                                           ; $6b83: $88
	adc  b                                           ; $6b84: $88
	adc  b                                           ; $6b85: $88
	adc  c                                           ; $6b86: $89
	adc  b                                           ; $6b87: $88
	adc  c                                           ; $6b88: $89
	adc  b                                           ; $6b89: $88
	add  a                                           ; $6b8a: $87
	adc  b                                           ; $6b8b: $88
	ld   a, b                                        ; $6b8c: $78
	sbc  c                                           ; $6b8d: $99
	adc  b                                           ; $6b8e: $88
	sub  a                                           ; $6b8f: $97
	ld   a, c                                        ; $6b90: $79
	adc  b                                           ; $6b91: $88
	adc  b                                           ; $6b92: $88
	sbc  b                                           ; $6b93: $98
	adc  b                                           ; $6b94: $88
	adc  b                                           ; $6b95: $88
	adc  b                                           ; $6b96: $88
	sbc  b                                           ; $6b97: $98
	adc  c                                           ; $6b98: $89
	sbc  b                                           ; $6b99: $98
	adc  b                                           ; $6b9a: $88
	adc  b                                           ; $6b9b: $88
	adc  c                                           ; $6b9c: $89
	adc  b                                           ; $6b9d: $88
	ld   [hl], a                                     ; $6b9e: $77
	adc  b                                           ; $6b9f: $88
	adc  b                                           ; $6ba0: $88
	adc  b                                           ; $6ba1: $88
	adc  b                                           ; $6ba2: $88
	ld   a, b                                        ; $6ba3: $78
	sbc  c                                           ; $6ba4: $99
	adc  b                                           ; $6ba5: $88
	sbc  b                                           ; $6ba6: $98
	ld   a, b                                        ; $6ba7: $78
	adc  b                                           ; $6ba8: $88
	ld   a, b                                        ; $6ba9: $78
	adc  b                                           ; $6baa: $88
	adc  b                                           ; $6bab: $88
	ld   [hl], a                                     ; $6bac: $77
	adc  b                                           ; $6bad: $88
	adc  b                                           ; $6bae: $88
	ld   a, b                                        ; $6baf: $78
	adc  b                                           ; $6bb0: $88
	adc  b                                           ; $6bb1: $88
	adc  c                                           ; $6bb2: $89
	adc  c                                           ; $6bb3: $89
	sbc  c                                           ; $6bb4: $99
	adc  b                                           ; $6bb5: $88
	sbc  c                                           ; $6bb6: $99
	adc  b                                           ; $6bb7: $88
	sbc  b                                           ; $6bb8: $98
	adc  b                                           ; $6bb9: $88
	adc  b                                           ; $6bba: $88
	ld   [hl], a                                     ; $6bbb: $77
	adc  b                                           ; $6bbc: $88
	adc  b                                           ; $6bbd: $88
	adc  c                                           ; $6bbe: $89
	add  a                                           ; $6bbf: $87
	adc  b                                           ; $6bc0: $88
	adc  c                                           ; $6bc1: $89
	sbc  b                                           ; $6bc2: $98
	adc  b                                           ; $6bc3: $88
	adc  c                                           ; $6bc4: $89
	adc  b                                           ; $6bc5: $88
	add  a                                           ; $6bc6: $87
	sbc  b                                           ; $6bc7: $98
	ld   a, b                                        ; $6bc8: $78
	add  a                                           ; $6bc9: $87
	adc  b                                           ; $6bca: $88
	adc  b                                           ; $6bcb: $88
	adc  b                                           ; $6bcc: $88
	sbc  b                                           ; $6bcd: $98
	adc  c                                           ; $6bce: $89
	adc  b                                           ; $6bcf: $88
	adc  b                                           ; $6bd0: $88
	adc  c                                           ; $6bd1: $89
	sbc  b                                           ; $6bd2: $98
	sbc  b                                           ; $6bd3: $98
	adc  b                                           ; $6bd4: $88
	ld   a, b                                        ; $6bd5: $78
	adc  b                                           ; $6bd6: $88
	adc  b                                           ; $6bd7: $88
	adc  b                                           ; $6bd8: $88
	adc  b                                           ; $6bd9: $88
	add  a                                           ; $6bda: $87
	adc  c                                           ; $6bdb: $89
	adc  c                                           ; $6bdc: $89
	sbc  b                                           ; $6bdd: $98
	sbc  b                                           ; $6bde: $98
	adc  b                                           ; $6bdf: $88
	adc  c                                           ; $6be0: $89
	adc  b                                           ; $6be1: $88
	add  a                                           ; $6be2: $87
	adc  c                                           ; $6be3: $89
	adc  b                                           ; $6be4: $88
	adc  b                                           ; $6be5: $88
	adc  b                                           ; $6be6: $88
	adc  b                                           ; $6be7: $88
	adc  b                                           ; $6be8: $88
	adc  b                                           ; $6be9: $88
	adc  c                                           ; $6bea: $89
	adc  b                                           ; $6beb: $88
	sbc  b                                           ; $6bec: $98
	adc  b                                           ; $6bed: $88
	adc  b                                           ; $6bee: $88
	ld   a, b                                        ; $6bef: $78
	adc  b                                           ; $6bf0: $88
	add  a                                           ; $6bf1: $87
	adc  b                                           ; $6bf2: $88
	adc  b                                           ; $6bf3: $88
	adc  b                                           ; $6bf4: $88
	adc  b                                           ; $6bf5: $88
	adc  b                                           ; $6bf6: $88
	adc  b                                           ; $6bf7: $88
	sbc  b                                           ; $6bf8: $98
	adc  b                                           ; $6bf9: $88
	sbc  b                                           ; $6bfa: $98
	adc  b                                           ; $6bfb: $88
	adc  b                                           ; $6bfc: $88
	ld   a, b                                        ; $6bfd: $78
	adc  b                                           ; $6bfe: $88
	sbc  b                                           ; $6bff: $98
	ld   a, b                                        ; $6c00: $78
	adc  c                                           ; $6c01: $89
	add  a                                           ; $6c02: $87
	sbc  b                                           ; $6c03: $98
	adc  b                                           ; $6c04: $88
	adc  c                                           ; $6c05: $89
	adc  b                                           ; $6c06: $88
	ld   a, b                                        ; $6c07: $78
	adc  b                                           ; $6c08: $88
	adc  b                                           ; $6c09: $88
	adc  b                                           ; $6c0a: $88
	ld   a, b                                        ; $6c0b: $78
	adc  c                                           ; $6c0c: $89
	add  a                                           ; $6c0d: $87
	adc  b                                           ; $6c0e: $88
	adc  b                                           ; $6c0f: $88
	sbc  b                                           ; $6c10: $98
	adc  c                                           ; $6c11: $89
	adc  b                                           ; $6c12: $88
	sbc  b                                           ; $6c13: $98
	adc  b                                           ; $6c14: $88
	adc  b                                           ; $6c15: $88
	ld   a, b                                        ; $6c16: $78
	add  a                                           ; $6c17: $87
	sbc  b                                           ; $6c18: $98
	adc  b                                           ; $6c19: $88
	adc  b                                           ; $6c1a: $88
	adc  c                                           ; $6c1b: $89
	adc  b                                           ; $6c1c: $88
	adc  b                                           ; $6c1d: $88
	adc  b                                           ; $6c1e: $88
	adc  b                                           ; $6c1f: $88
	sbc  b                                           ; $6c20: $98
	adc  c                                           ; $6c21: $89
	adc  b                                           ; $6c22: $88
	adc  b                                           ; $6c23: $88
	adc  b                                           ; $6c24: $88
	adc  b                                           ; $6c25: $88
	sbc  b                                           ; $6c26: $98
	adc  b                                           ; $6c27: $88
	adc  b                                           ; $6c28: $88
	adc  b                                           ; $6c29: $88
	adc  b                                           ; $6c2a: $88
	adc  c                                           ; $6c2b: $89
	add  a                                           ; $6c2c: $87
	adc  b                                           ; $6c2d: $88
	adc  c                                           ; $6c2e: $89
	adc  c                                           ; $6c2f: $89
	adc  b                                           ; $6c30: $88
	sub  a                                           ; $6c31: $97
	adc  c                                           ; $6c32: $89
	add  a                                           ; $6c33: $87
	ld   a, b                                        ; $6c34: $78
	adc  b                                           ; $6c35: $88
	sbc  b                                           ; $6c36: $98
	add  a                                           ; $6c37: $87
	adc  b                                           ; $6c38: $88
	adc  b                                           ; $6c39: $88
	adc  b                                           ; $6c3a: $88
	adc  c                                           ; $6c3b: $89
	ld   a, b                                        ; $6c3c: $78
	sub  a                                           ; $6c3d: $97
	adc  b                                           ; $6c3e: $88
	sbc  c                                           ; $6c3f: $99
	ld   a, b                                        ; $6c40: $78
	add  a                                           ; $6c41: $87
	adc  b                                           ; $6c42: $88
	adc  b                                           ; $6c43: $88
	ld   a, b                                        ; $6c44: $78
	add  a                                           ; $6c45: $87
	ld   a, b                                        ; $6c46: $78
	sbc  b                                           ; $6c47: $98
	add  a                                           ; $6c48: $87
	adc  c                                           ; $6c49: $89
	adc  c                                           ; $6c4a: $89
	sbc  c                                           ; $6c4b: $99
	ld   a, b                                        ; $6c4c: $78
	adc  b                                           ; $6c4d: $88
	ld   [hl], a                                     ; $6c4e: $77
	sbc  c                                           ; $6c4f: $99
	ld   [hl], a                                     ; $6c50: $77
	adc  b                                           ; $6c51: $88
	adc  b                                           ; $6c52: $88
	ld   a, b                                        ; $6c53: $78
	sub  a                                           ; $6c54: $97
	adc  b                                           ; $6c55: $88
	adc  b                                           ; $6c56: $88
	adc  c                                           ; $6c57: $89
	adc  b                                           ; $6c58: $88
	ld   a, c                                        ; $6c59: $79
	sbc  b                                           ; $6c5a: $98
	sub  a                                           ; $6c5b: $97
	adc  b                                           ; $6c5c: $88
	sbc  b                                           ; $6c5d: $98
	ld   l, c                                        ; $6c5e: $69
	add  [hl]                                        ; $6c5f: $86
	ld   a, b                                        ; $6c60: $78
	sbc  c                                           ; $6c61: $99
	ld   h, a                                        ; $6c62: $67
	xor  b                                           ; $6c63: $a8
	ld   a, b                                        ; $6c64: $78
	sbc  d                                           ; $6c65: $9a
	ld   [hl], a                                     ; $6c66: $77
	adc  b                                           ; $6c67: $88
	adc  b                                           ; $6c68: $88
	ld   a, d                                        ; $6c69: $7a
	add  [hl]                                        ; $6c6a: $86
	adc  b                                           ; $6c6b: $88
	sbc  c                                           ; $6c6c: $99
	add  a                                           ; $6c6d: $87
	sub  a                                           ; $6c6e: $97
	sub  a                                           ; $6c6f: $97
	adc  c                                           ; $6c70: $89
	sub  [hl]                                        ; $6c71: $96
	ld   a, d                                        ; $6c72: $7a
	ld   e, c                                        ; $6c73: $59
	add  a                                           ; $6c74: $87
	add  a                                           ; $6c75: $87
	add  a                                           ; $6c76: $87
	adc  c                                           ; $6c77: $89
	sub  a                                           ; $6c78: $97
	adc  d                                           ; $6c79: $8a
	add  a                                           ; $6c7a: $87
	xor  d                                           ; $6c7b: $aa
	ld   l, b                                        ; $6c7c: $68
	ld   [hl], a                                     ; $6c7d: $77
	and  l                                           ; $6c7e: $a5
	xor  c                                           ; $6c7f: $a9
	ld   l, d                                        ; $6c80: $6a
	ld   l, c                                        ; $6c81: $69
	sub  a                                           ; $6c82: $97
	sub  a                                           ; $6c83: $97
	xor  b                                           ; $6c84: $a8
	ld   [hl], a                                     ; $6c85: $77
	sbc  b                                           ; $6c86: $98
	ld   [hl], a                                     ; $6c87: $77
	ld   a, c                                        ; $6c88: $79
	ld   [hl], a                                     ; $6c89: $77
	adc  b                                           ; $6c8a: $88
	and  a                                           ; $6c8b: $a7
	ld   l, c                                        ; $6c8c: $69
	and  a                                           ; $6c8d: $a7
	ld   l, b                                        ; $6c8e: $68
	sbc  c                                           ; $6c8f: $99
	ld   a, b                                        ; $6c90: $78
	sub  a                                           ; $6c91: $97
	adc  c                                           ; $6c92: $89
	adc  c                                           ; $6c93: $89
	ld   a, c                                        ; $6c94: $79
	ld   h, a                                        ; $6c95: $67
	sbc  b                                           ; $6c96: $98
	sub  [hl]                                        ; $6c97: $96
	ld   e, d                                        ; $6c98: $5a
	and  [hl]                                        ; $6c99: $a6
	ld   l, b                                        ; $6c9a: $68
	xor  b                                           ; $6c9b: $a8
	ld   e, b                                        ; $6c9c: $58
	xor  d                                           ; $6c9d: $aa
	ld   b, [hl]                                     ; $6c9e: $46
	jp   c, $b975                                    ; $6c9f: $da $75 $b9

	ld   h, l                                        ; $6ca2: $65
	adc  e                                           ; $6ca3: $8b
	ld   [hl], a                                     ; $6ca4: $77
	adc  d                                           ; $6ca5: $8a
	adc  b                                           ; $6ca6: $88
	adc  c                                           ; $6ca7: $89
	ld   [hl], a                                     ; $6ca8: $77
	xor  c                                           ; $6ca9: $a9
	ld   [hl], a                                     ; $6caa: $77
	sbc  c                                           ; $6cab: $99
	ld   l, b                                        ; $6cac: $68
	sub  [hl]                                        ; $6cad: $96
	add  [hl]                                        ; $6cae: $86
	ld   a, c                                        ; $6caf: $79
	ld   a, d                                        ; $6cb0: $7a
	sbc  b                                           ; $6cb1: $98
	ld   l, c                                        ; $6cb2: $69
	adc  b                                           ; $6cb3: $88
	adc  b                                           ; $6cb4: $88
	sub  a                                           ; $6cb5: $97
	ld   [hl], a                                     ; $6cb6: $77
	add  [hl]                                        ; $6cb7: $86
	halt                                             ; $6cb8: $76
	ld   h, a                                        ; $6cb9: $67
	ld   [hl], a                                     ; $6cba: $77
	ld   [hl], a                                     ; $6cbb: $77
	adc  b                                           ; $6cbc: $88
	ld   a, d                                        ; $6cbd: $7a
	adc  c                                           ; $6cbe: $89
	xor  c                                           ; $6cbf: $a9
	adc  b                                           ; $6cc0: $88
	sbc  c                                           ; $6cc1: $99
	sbc  c                                           ; $6cc2: $99
	sbc  c                                           ; $6cc3: $99
	sbc  d                                           ; $6cc4: $9a
	xor  b                                           ; $6cc5: $a8
	sbc  c                                           ; $6cc6: $99
	sub  a                                           ; $6cc7: $97
	adc  d                                           ; $6cc8: $8a
	ld   [hl], l                                     ; $6cc9: $75
	ld   [hl], a                                     ; $6cca: $77
	halt                                             ; $6ccb: $76
	ld   [hl], a                                     ; $6ccc: $77
	ld   d, h                                        ; $6ccd: $54
	ld   b, [hl]                                     ; $6cce: $46
	ld   h, [hl]                                     ; $6ccf: $66
	ld   d, l                                        ; $6cd0: $55
	ld   h, l                                        ; $6cd1: $65
	ld   b, h                                        ; $6cd2: $44
	ld   d, l                                        ; $6cd3: $55
	halt                                             ; $6cd4: $76
	xor  c                                           ; $6cd5: $a9
	sbc  h                                           ; $6cd6: $9c
	xor  e                                           ; $6cd7: $ab
	db   $db                                         ; $6cd8: $db
	call $babc                                       ; $6cd9: $cd $bc $ba
	cp   e                                           ; $6cdc: $bb
	sbc  d                                           ; $6cdd: $9a
	xor  d                                           ; $6cde: $aa
	xor  b                                           ; $6cdf: $a8
	sbc  d                                           ; $6ce0: $9a
	sub  a                                           ; $6ce1: $97
	adc  c                                           ; $6ce2: $89
	halt                                             ; $6ce3: $76
	ld   d, [hl]                                     ; $6ce4: $56
	ld   b, c                                        ; $6ce5: $41
	inc  [hl]                                        ; $6ce6: $34
	ld   sp, $1113                                   ; $6ce7: $31 $13 $11
	inc  hl                                          ; $6cea: $23
	ld   d, h                                        ; $6ceb: $54
	ld   e, e                                        ; $6cec: $5b
	db   $db                                         ; $6ced: $db
	rst  $28                                         ; $6cee: $ef
	xor  $de                                         ; $6cef: $ee $de
	ld   a, [$daaf]                                  ; $6cf1: $fa $af $da
	cp   h                                           ; $6cf4: $bc
	res  3, d                                        ; $6cf5: $cb $9a
	cp   c                                           ; $6cf7: $b9
	adc  c                                           ; $6cf8: $89
	sbc  b                                           ; $6cf9: $98
	ld   [hl], a                                     ; $6cfa: $77
	ld   [hl], h                                     ; $6cfb: $74
	ld   [de], a                                     ; $6cfc: $12
	ld   de, $1111                                   ; $6cfd: $11 $11 $11
	ld   de, $7814                                   ; $6d00: $11 $14 $78
	xor  a                                           ; $6d03: $af
	rst  $38                                         ; $6d04: $ff
	rst  $38                                         ; $6d05: $ff
	cp   $bd                                         ; $6d06: $fe $bd
	cp   $dd                                         ; $6d08: $fe $dd
	db   $ed                                         ; $6d0a: $ed
	set  3, e                                        ; $6d0b: $cb $db
	xor  d                                           ; $6d0d: $aa
	xor  d                                           ; $6d0e: $aa
	adc  b                                           ; $6d0f: $88
	ld   [hl], l                                     ; $6d10: $75
	inc  sp                                          ; $6d11: $33
	ld   sp, $1111                                   ; $6d12: $31 $11 $11
	ld   de, $1111                                   ; $6d15: $11 $11 $11
	ld   h, a                                        ; $6d18: $67
	sbc  [hl]                                        ; $6d19: $9e
	rst  $38                                         ; $6d1a: $ff
	cp   $ee                                         ; $6d1b: $fe $ee
	set  3, a                                        ; $6d1d: $cb $df
	db   $ec                                         ; $6d1f: $ec
	rst  $38                                         ; $6d20: $ff
	jp   c, $97ba                                    ; $6d21: $da $ba $97

	ld   a, e                                        ; $6d24: $7b
	sub  [hl]                                        ; $6d25: $96
	halt                                             ; $6d26: $76
	ld   b, c                                        ; $6d27: $41
	ld   [de], a                                     ; $6d28: $12
	ld   de, $1113                                   ; $6d29: $11 $13 $11
	ld   de, $3712                                   ; $6d2c: $11 $12 $37
	rst  $38                                         ; $6d2f: $ff
	rst  $38                                         ; $6d30: $ff
	rst  $28                                         ; $6d31: $ef
	reti                                             ; $6d32: $d9


	cp   h                                           ; $6d33: $bc
	xor  h                                           ; $6d34: $ac
	cp   $fe                                         ; $6d35: $fe $fe
	sbc  $aa                                         ; $6d37: $de $aa
	jp   z, $aa99                                    ; $6d39: $ca $99 $aa

	ld   h, h                                        ; $6d3c: $64
	ld   b, c                                        ; $6d3d: $41
	ld   de, $1111                                   ; $6d3e: $11 $11 $11
	ld   de, $1411                                   ; $6d41: $11 $11 $14
	sbc  [hl]                                        ; $6d44: $9e
	rst  $38                                         ; $6d45: $ff
	rst  $38                                         ; $6d46: $ff
	db   $fc                                         ; $6d47: $fc
	sbc  e                                           ; $6d48: $9b
	cp   e                                           ; $6d49: $bb
	db   $dd                                         ; $6d4a: $dd
	rst  $38                                         ; $6d4b: $ff
	rst  JumpTable                                         ; $6d4c: $df
	call c, $a9cb                                    ; $6d4d: $dc $cb $a9
	halt                                             ; $6d50: $76
	add  [hl]                                        ; $6d51: $86
	ld   b, h                                        ; $6d52: $44
	ld   b, c                                        ; $6d53: $41
	ld   de, $1111                                   ; $6d54: $11 $11 $11
	ld   de, $9f11                                   ; $6d57: $11 $11 $9f
	rst  $28                                         ; $6d5a: $ef
	rst  $38                                         ; $6d5b: $ff
	cp   e                                           ; $6d5c: $bb
	ld   a, [$ff68]                                  ; $6d5d: $fa $68 $ff
	sbc  $ff                                         ; $6d60: $de $ff
	call z, $99ff                                    ; $6d62: $cc $ff $99
	or   a                                           ; $6d65: $b7
	ld   h, h                                        ; $6d66: $64
	ld   h, l                                        ; $6d67: $65
	ld   sp, $1111                                   ; $6d68: $31 $11 $11
	ld   hl, $1111                                   ; $6d6b: $21 $11 $11
	inc  d                                           ; $6d6e: $14
	cp   a                                           ; $6d6f: $bf
	rst  $38                                         ; $6d70: $ff
	rst  $38                                         ; $6d71: $ff
	ld   [$cb9a], a                                  ; $6d72: $ea $9a $cb
	rst  $28                                         ; $6d75: $ef
	rst  $38                                         ; $6d76: $ff
	rst  $38                                         ; $6d77: $ff
	sbc  $ca                                         ; $6d78: $de $ca
	sbc  c                                           ; $6d7a: $99
	ld   h, e                                        ; $6d7b: $63
	inc  [hl]                                        ; $6d7c: $34
	ld   de, $1111                                   ; $6d7d: $11 $11 $11
	ld   de, $1711                                   ; $6d80: $11 $11 $17
	rra                                              ; $6d83: $1f
	rst  $38                                         ; $6d84: $ff
	rst  $38                                         ; $6d85: $ff
	ld   [$9a65], a                                  ; $6d86: $ea $65 $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d89: $cf
	rst  $38                                         ; $6d8a: $ff
	rst  $38                                         ; $6d8b: $ff
	db   $ed                                         ; $6d8c: $ed
	adc  $eb                                         ; $6d8d: $ce $eb
	sub  a                                           ; $6d8f: $97
	ld   d, h                                        ; $6d90: $54
	ld   sp, $1111                                   ; $6d91: $31 $11 $11
	ld   de, $1111                                   ; $6d94: $11 $11 $11
	rra                                              ; $6d97: $1f
	cp   h                                           ; $6d98: $bc
	rst  $38                                         ; $6d99: $ff
	ld   a, [$618c]                                  ; $6d9a: $fa $8c $61
	sbc  a                                           ; $6d9d: $9f
	rst  $28                                         ; $6d9e: $ef
	rst  $38                                         ; $6d9f: $ff
	db   $fd                                         ; $6da0: $fd
	rst  $28                                         ; $6da1: $ef
	db   $ed                                         ; $6da2: $ed
	jp   c, $4475                                    ; $6da3: $da $75 $44

	ld   hl, $1111                                   ; $6da6: $21 $11 $11
	ld   de, $3f11                                   ; $6da9: $11 $11 $3f
	add  a                                           ; $6dac: $87
	rst  $38                                         ; $6dad: $ff
	pop  af                                          ; $6dae: $f1
	ld   e, a                                        ; $6daf: $5f
	ld   hl, $ffbf                                   ; $6db0: $21 $bf $ff
	rst  $38                                         ; $6db3: $ff
	ei                                               ; $6db4: $fb
	rst  $28                                         ; $6db5: $ef
	cp   c                                           ; $6db6: $b9
	cp   d                                           ; $6db7: $ba
	sub  e                                           ; $6db8: $93
	dec  [hl]                                        ; $6db9: $35
	ld   bc, $1111                                   ; $6dba: $01 $11 $11
	ld   de, $f11f                                   ; $6dbd: $11 $1f $f1
	rst  $38                                         ; $6dc0: $ff
	rst  $30                                         ; $6dc1: $f7
	ld   e, $51                                      ; $6dc2: $1e $51
	rra                                              ; $6dc4: $1f
	rst  $38                                         ; $6dc5: $ff
	rst  $38                                         ; $6dc6: $ff
	rst  $38                                         ; $6dc7: $ff
	rst  $38                                         ; $6dc8: $ff
	rst  $30                                         ; $6dc9: $f7
	cp   d                                           ; $6dca: $ba
	sub  [hl]                                        ; $6dcb: $96
	scf                                              ; $6dcc: $37
	ld   de, $1111                                   ; $6dcd: $11 $11 $11
	ld   de, $5c7f                                   ; $6dd0: $11 $7f $5c
	rst  $38                                         ; $6dd3: $ff
	pop  hl                                          ; $6dd4: $e1
	ld   a, b                                        ; $6dd5: $78
	ld   de, $df8f                                   ; $6dd6: $11 $8f $df
	rst  $38                                         ; $6dd9: $ff
	rst  $38                                         ; $6dda: $ff
	rst  $38                                         ; $6ddb: $ff
	cp   b                                           ; $6ddc: $b8
	cp   d                                           ; $6ddd: $ba
	ld   [hl], l                                     ; $6dde: $75
	ld   d, e                                        ; $6ddf: $53
	ld   de, $1111                                   ; $6de0: $11 $11 $11
	inc  de                                          ; $6de3: $13
	ei                                               ; $6de4: $fb
	adc  a                                           ; $6de5: $8f
	ei                                               ; $6de6: $fb
	inc  d                                           ; $6de7: $14
	ld   h, c                                        ; $6de8: $61
	add  hl, de                                      ; $6de9: $19
	ld   a, [$ffff]                                  ; $6dea: $fa $ff $ff
	rst  $38                                         ; $6ded: $ff
	ld   hl, sp+$5b                                  ; $6dee: $f8 $5b
	ld   d, h                                        ; $6df0: $54
	inc  sp                                          ; $6df1: $33
	ld   de, $1111                                   ; $6df2: $11 $11 $11
	rra                                              ; $6df5: $1f
	push af                                          ; $6df6: $f5
	rst  $38                                         ; $6df7: $ff
	ld   hl, sp+$13                                  ; $6df8: $f8 $13
	ld   d, c                                        ; $6dfa: $51
	ld   e, $fc                                      ; $6dfb: $1e $fc
	rst  $38                                         ; $6dfd: $ff
	rst  $38                                         ; $6dfe: $ff
	rst  JumpTable                                         ; $6dff: $df
	di                                               ; $6e00: $f3
	scf                                              ; $6e01: $37
	inc  sp                                          ; $6e02: $33
	ld   de, $1111                                   ; $6e03: $11 $11 $11
	ld   de, $ffff                                   ; $6e06: $11 $ff $ff
	rst  $38                                         ; $6e09: $ff
	ld   de, $1131                                   ; $6e0a: $11 $31 $11
	rst  $38                                         ; $6e0d: $ff
	rst  $38                                         ; $6e0e: $ff
	rst  $38                                         ; $6e0f: $ff
	db   $fd                                         ; $6e10: $fd
	rst  ToBoot                                         ; $6e11: $c7
	dec  d                                           ; $6e12: $15
	ld   [hl-], a                                    ; $6e13: $32
	ld   de, $1111                                   ; $6e14: $11 $11 $11

jr_0d3_6e17:
	jr   jr_0d3_6e17                                 ; $6e17: $18 $fe

	rst  $38                                         ; $6e19: $ff
	rst  $38                                         ; $6e1a: $ff
	ld   de, $1a21                                   ; $6e1b: $11 $21 $1a
	rst  $38                                         ; $6e1e: $ff
	rst  $38                                         ; $6e1f: $ff
	rst  $38                                         ; $6e20: $ff
	call c, $14a1                                    ; $6e21: $dc $a1 $14
	ld   de, $1111                                   ; $6e24: $11 $11 $11
	ld   de, $5fff                                   ; $6e27: $11 $ff $5f
	rst  $38                                         ; $6e2a: $ff
	ld   [hl], c                                     ; $6e2b: $71
	ld   h, c                                        ; $6e2c: $61
	ld   de, $ffff                                   ; $6e2d: $11 $ff $ff
	rst  $38                                         ; $6e30: $ff
	db   $fd                                         ; $6e31: $fd
	jp   hl                                          ; $6e32: $e9


	inc  de                                          ; $6e33: $13
	ld   hl, $1111                                   ; $6e34: $21 $11 $11
	ld   de, $9fff                                   ; $6e37: $11 $ff $9f
	rst  $38                                         ; $6e3a: $ff
	and  c                                           ; $6e3b: $a1
	ld   de, rAUD1LEN                                   ; $6e3c: $11 $11 $ff
	rst  $38                                         ; $6e3f: $ff
	rst  $38                                         ; $6e40: $ff
	db   $fc                                         ; $6e41: $fc
	ret  c                                           ; $6e42: $d8

	ld   [de], a                                     ; $6e43: $12
	ld   de, $1111                                   ; $6e44: $11 $11 $11
	ld   de, $ffff                                   ; $6e47: $11 $ff $ff
	rst  $38                                         ; $6e4a: $ff
	ld   de, $1411                                   ; $6e4b: $11 $11 $14
	db   $fd                                         ; $6e4e: $fd
	rst  $38                                         ; $6e4f: $ff
	rst  $38                                         ; $6e50: $ff
	reti                                             ; $6e51: $d9


	or   h                                           ; $6e52: $b4
	inc  d                                           ; $6e53: $14
	ld   de, $1111                                   ; $6e54: $11 $11 $11
	rst  $38                                         ; $6e57: $ff
	rst  JumpTable                                         ; $6e58: $df
	rst  $38                                         ; $6e59: $ff
	pop  de                                          ; $6e5a: $d1
	ld   de, $cf11                                   ; $6e5b: $11 $11 $cf
	rst  $38                                         ; $6e5e: $ff
	rst  $38                                         ; $6e5f: $ff
	ld   [$129a], a                                  ; $6e60: $ea $9a $12
	ld   sp, $1111                                   ; $6e63: $31 $11 $11
	ld   c, a                                        ; $6e66: $4f
	rst  $38                                         ; $6e67: $ff
	rst  $38                                         ; $6e68: $ff
	pop  af                                          ; $6e69: $f1
	ld   de, $7f11                                   ; $6e6a: $11 $11 $7f
	rst  $38                                         ; $6e6d: $ff
	rst  $38                                         ; $6e6e: $ff
	rst  $20                                         ; $6e6f: $e7
	ld   a, b                                        ; $6e70: $78
	inc  sp                                          ; $6e71: $33
	ld   d, c                                        ; $6e72: $51
	ld   de, rAUD1LEN                                   ; $6e73: $11 $11 $ff
	rst  $38                                         ; $6e76: $ff
	rst  $38                                         ; $6e77: $ff
	or   c                                           ; $6e78: $b1
	ld   sp, $bf11                                   ; $6e79: $31 $11 $bf
	rst  $38                                         ; $6e7c: $ff
	rst  $38                                         ; $6e7d: $ff
	ld   [hl], h                                     ; $6e7e: $74
	inc  sp                                          ; $6e7f: $33
	ld   [hl], $11                                   ; $6e80: $36 $11
	ld   de, $f91f                                   ; $6e82: $11 $1f $f9
	rst  $38                                         ; $6e85: $ff
	rst  $30                                         ; $6e86: $f7
	ld   d, $11                                      ; $6e87: $16 $11
	rra                                              ; $6e89: $1f
	rst  $38                                         ; $6e8a: $ff
	rst  $38                                         ; $6e8b: $ff
	push af                                          ; $6e8c: $f5
	ld   de, $3521                                   ; $6e8d: $11 $21 $35
	ld   de, rAUD1LEN                                   ; $6e90: $11 $11 $ff
	adc  a                                           ; $6e93: $8f
	rst  $38                                         ; $6e94: $ff
	ld   bc, $1161                                   ; $6e95: $01 $61 $11
	rst  $38                                         ; $6e98: $ff
	rst  $38                                         ; $6e99: $ff
	rst  $38                                         ; $6e9a: $ff
	ld   de, $1111                                   ; $6e9b: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $6e9e: $11 $11 $ff
	xor  a                                           ; $6ea1: $af
	rst  $38                                         ; $6ea2: $ff
	ld   hl, $1151                                   ; $6ea3: $21 $51 $11
	rst  $38                                         ; $6ea6: $ff
	rst  $38                                         ; $6ea7: $ff
	rst  $38                                         ; $6ea8: $ff
	ld   de, $1111                                   ; $6ea9: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $6eac: $11 $11 $ff
	rst  $38                                         ; $6eaf: $ff
	rst  $38                                         ; $6eb0: $ff
	ld   de, $1641                                   ; $6eb1: $11 $41 $16
	rst  $38                                         ; $6eb4: $ff
	rst  $38                                         ; $6eb5: $ff
	ei                                               ; $6eb6: $fb
	ld   de, $1111                                   ; $6eb7: $11 $11 $11
	ld   de, $ff1f                                   ; $6eba: $11 $1f $ff
	rst  $38                                         ; $6ebd: $ff
	pop  af                                          ; $6ebe: $f1
	ld   d, $11                                      ; $6ebf: $16 $11
	cpl                                              ; $6ec1: $2f
	rst  $38                                         ; $6ec2: $ff
	rst  $38                                         ; $6ec3: $ff
	pop  af                                          ; $6ec4: $f1
	ld   de, $1111                                   ; $6ec5: $11 $11 $11
	rla                                              ; $6ec8: $17
	ei                                               ; $6ec9: $fb
	rst  $38                                         ; $6eca: $ff
	rst  $38                                         ; $6ecb: $ff
	ld   de, $1e11                                   ; $6ecc: $11 $11 $1e
	rst  $38                                         ; $6ecf: $ff
	rst  $38                                         ; $6ed0: $ff
	rst  $30                                         ; $6ed1: $f7
	ld   de, $1111                                   ; $6ed2: $11 $11 $11
	ld   de, $ffff                                   ; $6ed5: $11 $ff $ff
	rst  $38                                         ; $6ed8: $ff
	ld   de, $1411                                   ; $6ed9: $11 $11 $14
	rst  $38                                         ; $6edc: $ff
	rst  $38                                         ; $6edd: $ff
	db   $fc                                         ; $6ede: $fc
	ld   de, $1111                                   ; $6edf: $11 $11 $11
	dec  d                                           ; $6ee2: $15
	cp   $ff                                         ; $6ee3: $fe $ff
	rst  $38                                         ; $6ee5: $ff
	dec  d                                           ; $6ee6: $15
	ld   de, $ff18                                   ; $6ee7: $11 $18 $ff
	rst  $38                                         ; $6eea: $ff
	ld   hl, sp+$11                                  ; $6eeb: $f8 $11
	ld   de, $1f11                                   ; $6eed: $11 $11 $1f
	rst  $38                                         ; $6ef0: $ff
	rst  $38                                         ; $6ef1: $ff
	db   $fd                                         ; $6ef2: $fd
	ld   [hl], c                                     ; $6ef3: $71
	ld   de, $ff1f                                   ; $6ef4: $11 $1f $ff
	rst  $38                                         ; $6ef7: $ff
	di                                               ; $6ef8: $f3
	ld   de, $1111                                   ; $6ef9: $11 $11 $11
	rst  $38                                         ; $6efc: $ff
	rst  $38                                         ; $6efd: $ff
	rst  $38                                         ; $6efe: $ff
	db   $fc                                         ; $6eff: $fc
	ld   d, c                                        ; $6f00: $51
	ld   de, $ffae                                   ; $6f01: $11 $ae $ff
	rst  $38                                         ; $6f04: $ff
	ld   h, c                                        ; $6f05: $61
	ld   de, $1f11                                   ; $6f06: $11 $11 $1f
	rst  $28                                         ; $6f09: $ef
	rst  $38                                         ; $6f0a: $ff
	rst  $38                                         ; $6f0b: $ff
	push hl                                          ; $6f0c: $e5
	ld   de, $ef19                                   ; $6f0d: $11 $19 $ef
	rst  $38                                         ; $6f10: $ff
	or   $11                                         ; $6f11: $f6 $11
	ld   de, $f611                                   ; $6f13: $11 $11 $f6
	rst  $38                                         ; $6f16: $ff
	rst  $38                                         ; $6f17: $ff
	rst  $38                                         ; $6f18: $ff
	ld   h, c                                        ; $6f19: $61
	ld   [de], a                                     ; $6f1a: $12
	sbc  [hl]                                        ; $6f1b: $9e
	rst  $38                                         ; $6f1c: $ff
	db   $fd                                         ; $6f1d: $fd
	ld   sp, $1111                                   ; $6f1e: $31 $11 $11
	cp   a                                           ; $6f21: $bf
	ld   c, a                                        ; $6f22: $4f
	rst  $38                                         ; $6f23: $ff
	ei                                               ; $6f24: $fb
	di                                               ; $6f25: $f3
	ld   de, $ff9b                                   ; $6f26: $11 $9b $ff
	rst  $38                                         ; $6f29: $ff
	add  c                                           ; $6f2a: $81
	ld   de, $1f11                                   ; $6f2b: $11 $11 $1f
	ld   c, a                                        ; $6f2e: $4f
	rst  $38                                         ; $6f2f: $ff
	db   $fc                                         ; $6f30: $fc
	db   $fd                                         ; $6f31: $fd
	ld   de, $df1a                                   ; $6f32: $11 $1a $df
	rst  $38                                         ; $6f35: $ff
	di                                               ; $6f36: $f3
	ld   de, $1d11                                   ; $6f37: $11 $11 $1d
	pop  af                                          ; $6f3a: $f1
	rst  $38                                         ; $6f3b: $ff
	rst  $38                                         ; $6f3c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f3d: $cf
	ld   b, c                                        ; $6f3e: $41
	jr   @-$20                                       ; $6f3f: $18 $de

	rst  $38                                         ; $6f41: $ff
	rst  $30                                         ; $6f42: $f7
	ld   de, $1311                                   ; $6f43: $11 $11 $13
	pop  af                                          ; $6f46: $f1
	rst  $38                                         ; $6f47: $ff
	rst  $38                                         ; $6f48: $ff
	cp   a                                           ; $6f49: $bf
	and  c                                           ; $6f4a: $a1
	inc  d                                           ; $6f4b: $14
	adc  $ff                                         ; $6f4c: $ce $ff
	db   $fc                                         ; $6f4e: $fc
	ld   de, $1111                                   ; $6f4f: $11 $11 $11
	push af                                          ; $6f52: $f5
	rst  $38                                         ; $6f53: $ff
	rst  $38                                         ; $6f54: $ff
	set  4, c                                        ; $6f55: $cb $e1
	ld   de, $ffaf                                   ; $6f57: $11 $af $ff
	rst  $38                                         ; $6f5a: $ff
	ld   de, $1111                                   ; $6f5b: $11 $11 $11
	db   $fd                                         ; $6f5e: $fd
	ld   e, a                                        ; $6f5f: $5f
	rst  $38                                         ; $6f60: $ff
	db   $fc                                         ; $6f61: $fc
	db   $f4                                         ; $6f62: $f4
	ld   de, $ffae                                   ; $6f63: $11 $ae $ff
	rst  $38                                         ; $6f66: $ff
	ld   d, c                                        ; $6f67: $51
	ld   de, $de11                                   ; $6f68: $11 $11 $de
	ld   e, a                                        ; $6f6b: $5f
	rst  $38                                         ; $6f6c: $ff
	db   $fc                                         ; $6f6d: $fc
	rst  $30                                         ; $6f6e: $f7
	ld   de, $ff7c                                   ; $6f6f: $11 $7c $ff
	rst  $38                                         ; $6f72: $ff
	add  c                                           ; $6f73: $81
	ld   de, $7e11                                   ; $6f74: $11 $11 $7e
	ld   l, a                                        ; $6f77: $6f
	rst  $38                                         ; $6f78: $ff
	db   $fd                                         ; $6f79: $fd
	ld   a, [$4d11]                                  ; $6f7a: $fa $11 $4d
	rst  $38                                         ; $6f7d: $ff
	rst  $38                                         ; $6f7e: $ff
	or   c                                           ; $6f7f: $b1
	ld   de, $3e11                                   ; $6f80: $11 $11 $3e
	ccf                                              ; $6f83: $3f
	rst  $38                                         ; $6f84: $ff
	rst  $38                                         ; $6f85: $ff
	ld   a, [$6d11]                                  ; $6f86: $fa $11 $6d
	rst  $38                                         ; $6f89: $ff
	rst  $38                                         ; $6f8a: $ff
	pop  bc                                          ; $6f8b: $c1
	ld   de, $1f11                                   ; $6f8c: $11 $11 $1f
	ld   l, [hl]                                     ; $6f8f: $6e
	rst  $38                                         ; $6f90: $ff
	rst  $38                                         ; $6f91: $ff
	ei                                               ; $6f92: $fb
	ld   sp, $ff1c                                   ; $6f93: $31 $1c $ff
	rst  $38                                         ; $6f96: $ff
	pop  de                                          ; $6f97: $d1
	ld   de, $1911                                   ; $6f98: $11 $11 $19
	ld   a, h                                        ; $6f9b: $7c
	rst  $38                                         ; $6f9c: $ff

jr_0d3_6f9d:
	rst  $38                                         ; $6f9d: $ff
	db   $dd                                         ; $6f9e: $dd
	ld   d, c                                        ; $6f9f: $51
	add  hl, de                                      ; $6fa0: $19
	rst  $38                                         ; $6fa1: $ff
	rst  $38                                         ; $6fa2: $ff
	push af                                          ; $6fa3: $f5
	ld   de, $1511                                   ; $6fa4: $11 $11 $15
	sbc  c                                           ; $6fa7: $99
	rst  $38                                         ; $6fa8: $ff
	rst  $38                                         ; $6fa9: $ff
	db   $fd                                         ; $6faa: $fd
	pop  bc                                          ; $6fab: $c1
	jr   jr_0d3_6f9d                                 ; $6fac: $18 $ef

	rst  $28                                         ; $6fae: $ef
	ld   sp, hl                                      ; $6faf: $f9
	ld   de, $1111                                   ; $6fb0: $11 $11 $11
	add  a                                           ; $6fb3: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fb4: $cf
	rst  $38                                         ; $6fb5: $ff
	rst  $38                                         ; $6fb6: $ff
	rst  $30                                         ; $6fb7: $f7
	inc  d                                           ; $6fb8: $14
	cp   a                                           ; $6fb9: $bf
	rst  JumpTable                                         ; $6fba: $df
	db   $fd                                         ; $6fbb: $fd
	ld   b, c                                        ; $6fbc: $41
	ld   de, $3911                                   ; $6fbd: $11 $11 $39
	ld   l, h                                        ; $6fc0: $6c
	rst  $38                                         ; $6fc1: $ff
	rst  $38                                         ; $6fc2: $ff
	rst  JumpTable                                         ; $6fc3: $df
	add  h                                           ; $6fc4: $84
	ld   a, d                                        ; $6fc5: $7a
	db   $fd                                         ; $6fc6: $fd
	call $11a2                                       ; $6fc7: $cd $a2 $11
	ld   de, $a915                                   ; $6fca: $11 $15 $a9
	sbc  l                                           ; $6fcd: $9d
	rst  $38                                         ; $6fce: $ff
	ld   [$55da], a                                  ; $6fcf: $ea $da $55
	adc  e                                           ; $6fd2: $8b
	cp   h                                           ; $6fd3: $bc
	xor  e                                           ; $6fd4: $ab
	ld   [hl], l                                     ; $6fd5: $75
	ld   sp, $3734                                   ; $6fd6: $31 $34 $37
	xor  b                                           ; $6fd9: $a8
	add  [hl]                                        ; $6fda: $86
	adc  b                                           ; $6fdb: $88
	sbc  b                                           ; $6fdc: $98
	adc  c                                           ; $6fdd: $89
	adc  b                                           ; $6fde: $88
	ld   a, c                                        ; $6fdf: $79
	xor  e                                           ; $6fe0: $ab
	cp   d                                           ; $6fe1: $ba
	sbc  d                                           ; $6fe2: $9a
	ld   [hl], h                                     ; $6fe3: $74
	ld   l, l                                        ; $6fe4: $6d
	rst  $30                                         ; $6fe5: $f7
	daa                                              ; $6fe6: $27
	jp   hl                                          ; $6fe7: $e9


	ld   [hl+], a                                    ; $6fe8: $22
	adc  d                                           ; $6fe9: $8a
	ld   h, e                                        ; $6fea: $63
	ld   e, c                                        ; $6feb: $59
	add  [hl]                                        ; $6fec: $86
	ld   d, a                                        ; $6fed: $57
	res  3, c                                        ; $6fee: $cb $99
	cp   h                                           ; $6ff0: $bc
	cp   b                                           ; $6ff1: $b8
	xor  h                                           ; $6ff2: $ac
	cp   b                                           ; $6ff3: $b8
	add  a                                           ; $6ff4: $87
	ld   a, b                                        ; $6ff5: $78
	sub  a                                           ; $6ff6: $97
	ld   b, l                                        ; $6ff7: $45
	ld   a, b                                        ; $6ff8: $78
	ld   h, l                                        ; $6ff9: $65
	ld   h, a                                        ; $6ffa: $67
	add  a                                           ; $6ffb: $87
	sbc  c                                           ; $6ffc: $99
	xor  b                                           ; $6ffd: $a8
	sbc  d                                           ; $6ffe: $9a
	sbc  b                                           ; $6fff: $98
	sbc  b                                           ; $7000: $98
	adc  c                                           ; $7001: $89
	add  [hl]                                        ; $7002: $86
	adc  c                                           ; $7003: $89
	and  [hl]                                        ; $7004: $a6
	ld   e, c                                        ; $7005: $59
	rst  ToBoot                                         ; $7006: $c7
	ld   b, [hl]                                     ; $7007: $46
	cp   e                                           ; $7008: $bb
	add  [hl]                                        ; $7009: $86
	adc  e                                           ; $700a: $8b
	or   a                                           ; $700b: $b7
	ld   h, a                                        ; $700c: $67
	xor  c                                           ; $700d: $a9
	ld   [hl], a                                     ; $700e: $77
	ld   a, b                                        ; $700f: $78
	adc  b                                           ; $7010: $88
	ld   a, b                                        ; $7011: $78
	sbc  b                                           ; $7012: $98
	ld   [hl], a                                     ; $7013: $77
	adc  b                                           ; $7014: $88
	sbc  c                                           ; $7015: $99
	adc  b                                           ; $7016: $88
	xor  d                                           ; $7017: $aa
	add  a                                           ; $7018: $87
	ld   a, b                                        ; $7019: $78
	halt                                             ; $701a: $76
	ld   l, b                                        ; $701b: $68
	sbc  b                                           ; $701c: $98
	ld   a, b                                        ; $701d: $78
	xor  c                                           ; $701e: $a9
	halt                                             ; $701f: $76
	adc  c                                           ; $7020: $89
	sbc  b                                           ; $7021: $98
	ld   a, c                                        ; $7022: $79
	sbc  c                                           ; $7023: $99
	ld   [hl], a                                     ; $7024: $77
	adc  c                                           ; $7025: $89
	halt                                             ; $7026: $76
	ld   a, b                                        ; $7027: $78
	add  a                                           ; $7028: $87
	ld   a, b                                        ; $7029: $78
	sbc  c                                           ; $702a: $99
	ld   [hl], a                                     ; $702b: $77
	adc  c                                           ; $702c: $89
	sbc  c                                           ; $702d: $99
	sbc  c                                           ; $702e: $99
	sbc  b                                           ; $702f: $98
	add  a                                           ; $7030: $87
	add  a                                           ; $7031: $87
	ld   [hl], a                                     ; $7032: $77
	ld   a, b                                        ; $7033: $78
	adc  b                                           ; $7034: $88
	adc  c                                           ; $7035: $89
	adc  c                                           ; $7036: $89
	add  a                                           ; $7037: $87
	adc  b                                           ; $7038: $88
	adc  b                                           ; $7039: $88
	adc  b                                           ; $703a: $88
	sbc  b                                           ; $703b: $98
	adc  b                                           ; $703c: $88
	adc  b                                           ; $703d: $88
	ld   [hl], a                                     ; $703e: $77
	ld   [hl], a                                     ; $703f: $77
	adc  b                                           ; $7040: $88
	adc  c                                           ; $7041: $89
	adc  c                                           ; $7042: $89
	add  a                                           ; $7043: $87
	adc  b                                           ; $7044: $88
	ld   a, b                                        ; $7045: $78
	adc  c                                           ; $7046: $89
	adc  b                                           ; $7047: $88
	adc  c                                           ; $7048: $89
	adc  b                                           ; $7049: $88
	ld   [hl], a                                     ; $704a: $77
	ld   [hl], a                                     ; $704b: $77
	adc  b                                           ; $704c: $88
	adc  b                                           ; $704d: $88
	sbc  c                                           ; $704e: $99
	adc  b                                           ; $704f: $88
	adc  b                                           ; $7050: $88
	ld   [hl], a                                     ; $7051: $77
	adc  b                                           ; $7052: $88
	sbc  c                                           ; $7053: $99
	sbc  c                                           ; $7054: $99
	sbc  b                                           ; $7055: $98
	adc  b                                           ; $7056: $88
	ld   [hl], a                                     ; $7057: $77
	adc  b                                           ; $7058: $88
	adc  b                                           ; $7059: $88
	sbc  c                                           ; $705a: $99
	adc  b                                           ; $705b: $88
	adc  b                                           ; $705c: $88
	ld   [hl], a                                     ; $705d: $77
	adc  b                                           ; $705e: $88
	adc  b                                           ; $705f: $88
	adc  b                                           ; $7060: $88
	adc  b                                           ; $7061: $88
	add  a                                           ; $7062: $87
	ld   a, b                                        ; $7063: $78
	adc  b                                           ; $7064: $88
	sbc  c                                           ; $7065: $99
	sbc  c                                           ; $7066: $99
	sbc  b                                           ; $7067: $98
	adc  b                                           ; $7068: $88
	ld   [hl], a                                     ; $7069: $77
	ld   a, b                                        ; $706a: $78
	adc  b                                           ; $706b: $88
	adc  b                                           ; $706c: $88
	adc  b                                           ; $706d: $88
	add  a                                           ; $706e: $87
	ld   [hl], a                                     ; $706f: $77
	ld   a, b                                        ; $7070: $78
	adc  c                                           ; $7071: $89
	sbc  b                                           ; $7072: $98
	adc  b                                           ; $7073: $88
	adc  b                                           ; $7074: $88
	add  a                                           ; $7075: $87
	ld   a, b                                        ; $7076: $78
	adc  b                                           ; $7077: $88
	adc  b                                           ; $7078: $88
	adc  b                                           ; $7079: $88
	adc  b                                           ; $707a: $88
	ld   [hl], a                                     ; $707b: $77
	ld   [hl], a                                     ; $707c: $77
	adc  b                                           ; $707d: $88
	adc  c                                           ; $707e: $89
	adc  c                                           ; $707f: $89
	sbc  b                                           ; $7080: $98
	adc  b                                           ; $7081: $88
	adc  b                                           ; $7082: $88
	adc  b                                           ; $7083: $88
	adc  b                                           ; $7084: $88
	adc  b                                           ; $7085: $88
	adc  b                                           ; $7086: $88
	adc  b                                           ; $7087: $88
	ld   [hl], a                                     ; $7088: $77
	adc  b                                           ; $7089: $88
	adc  b                                           ; $708a: $88
	adc  c                                           ; $708b: $89
	adc  b                                           ; $708c: $88
	adc  b                                           ; $708d: $88
	adc  b                                           ; $708e: $88
	adc  b                                           ; $708f: $88
	adc  b                                           ; $7090: $88
	adc  b                                           ; $7091: $88
	adc  b                                           ; $7092: $88
	adc  b                                           ; $7093: $88
	adc  b                                           ; $7094: $88
	adc  b                                           ; $7095: $88
	adc  b                                           ; $7096: $88
	adc  b                                           ; $7097: $88
	adc  b                                           ; $7098: $88
	adc  b                                           ; $7099: $88
	adc  b                                           ; $709a: $88
	adc  b                                           ; $709b: $88
	adc  b                                           ; $709c: $88
	adc  b                                           ; $709d: $88
	adc  b                                           ; $709e: $88
	adc  b                                           ; $709f: $88
	adc  b                                           ; $70a0: $88
	adc  b                                           ; $70a1: $88
	adc  b                                           ; $70a2: $88
	adc  b                                           ; $70a3: $88
	adc  b                                           ; $70a4: $88
	adc  b                                           ; $70a5: $88
	adc  b                                           ; $70a6: $88
	adc  b                                           ; $70a7: $88
	adc  b                                           ; $70a8: $88
	adc  b                                           ; $70a9: $88
	adc  b                                           ; $70aa: $88
	adc  b                                           ; $70ab: $88
	adc  b                                           ; $70ac: $88
	adc  b                                           ; $70ad: $88
	adc  b                                           ; $70ae: $88
	adc  b                                           ; $70af: $88
	adc  b                                           ; $70b0: $88
	adc  b                                           ; $70b1: $88
	adc  b                                           ; $70b2: $88
	adc  b                                           ; $70b3: $88
	adc  b                                           ; $70b4: $88
	adc  b                                           ; $70b5: $88
	adc  b                                           ; $70b6: $88
	adc  b                                           ; $70b7: $88
	adc  b                                           ; $70b8: $88
	adc  b                                           ; $70b9: $88
	adc  b                                           ; $70ba: $88
	adc  b                                           ; $70bb: $88
	adc  b                                           ; $70bc: $88
	adc  b                                           ; $70bd: $88
	adc  b                                           ; $70be: $88
	adc  b                                           ; $70bf: $88
	adc  b                                           ; $70c0: $88
	adc  b                                           ; $70c1: $88
	adc  b                                           ; $70c2: $88
	adc  b                                           ; $70c3: $88
	adc  b                                           ; $70c4: $88
	adc  b                                           ; $70c5: $88
	adc  b                                           ; $70c6: $88
	adc  b                                           ; $70c7: $88
	adc  b                                           ; $70c8: $88
	adc  b                                           ; $70c9: $88
	adc  b                                           ; $70ca: $88
	adc  b                                           ; $70cb: $88
	adc  b                                           ; $70cc: $88
	adc  b                                           ; $70cd: $88
	adc  b                                           ; $70ce: $88
	adc  b                                           ; $70cf: $88
	adc  b                                           ; $70d0: $88
	adc  b                                           ; $70d1: $88
	adc  b                                           ; $70d2: $88
	adc  b                                           ; $70d3: $88
	adc  b                                           ; $70d4: $88
	adc  b                                           ; $70d5: $88
	adc  b                                           ; $70d6: $88
	adc  b                                           ; $70d7: $88
	adc  b                                           ; $70d8: $88
	adc  b                                           ; $70d9: $88
	adc  b                                           ; $70da: $88
	adc  b                                           ; $70db: $88
	adc  b                                           ; $70dc: $88
	adc  b                                           ; $70dd: $88
	adc  b                                           ; $70de: $88
	adc  b                                           ; $70df: $88
	adc  b                                           ; $70e0: $88
	adc  b                                           ; $70e1: $88
	adc  b                                           ; $70e2: $88
	adc  b                                           ; $70e3: $88
	adc  b                                           ; $70e4: $88
	adc  b                                           ; $70e5: $88
	adc  b                                           ; $70e6: $88
	adc  b                                           ; $70e7: $88
	adc  b                                           ; $70e8: $88
	adc  b                                           ; $70e9: $88
	adc  b                                           ; $70ea: $88
	adc  b                                           ; $70eb: $88
	adc  b                                           ; $70ec: $88
	adc  b                                           ; $70ed: $88
	adc  b                                           ; $70ee: $88
	adc  b                                           ; $70ef: $88
	adc  b                                           ; $70f0: $88
	adc  b                                           ; $70f1: $88
	adc  b                                           ; $70f2: $88
	adc  b                                           ; $70f3: $88
	adc  b                                           ; $70f4: $88
	adc  b                                           ; $70f5: $88
	adc  b                                           ; $70f6: $88
	adc  b                                           ; $70f7: $88
	adc  b                                           ; $70f8: $88
	adc  b                                           ; $70f9: $88
	adc  b                                           ; $70fa: $88
	adc  b                                           ; $70fb: $88
	adc  b                                           ; $70fc: $88
	adc  b                                           ; $70fd: $88
	adc  b                                           ; $70fe: $88
	adc  b                                           ; $70ff: $88
	adc  b                                           ; $7100: $88
	adc  b                                           ; $7101: $88
	adc  b                                           ; $7102: $88
	adc  b                                           ; $7103: $88
	adc  b                                           ; $7104: $88
	adc  b                                           ; $7105: $88
	adc  b                                           ; $7106: $88
	adc  b                                           ; $7107: $88
	adc  b                                           ; $7108: $88
	adc  b                                           ; $7109: $88
	adc  b                                           ; $710a: $88
	adc  b                                           ; $710b: $88
	adc  b                                           ; $710c: $88
	adc  b                                           ; $710d: $88
	adc  b                                           ; $710e: $88
	adc  b                                           ; $710f: $88
	adc  b                                           ; $7110: $88

Call_0d3_7111:
	adc  b                                           ; $7111: $88
	adc  b                                           ; $7112: $88
	adc  b                                           ; $7113: $88
	adc  b                                           ; $7114: $88
	adc  b                                           ; $7115: $88
	adc  b                                           ; $7116: $88
	adc  b                                           ; $7117: $88
	adc  b                                           ; $7118: $88
	adc  b                                           ; $7119: $88
	adc  b                                           ; $711a: $88
	adc  b                                           ; $711b: $88
	adc  b                                           ; $711c: $88
	adc  b                                           ; $711d: $88
	adc  b                                           ; $711e: $88
	adc  b                                           ; $711f: $88
	adc  b                                           ; $7120: $88
	adc  b                                           ; $7121: $88
	adc  b                                           ; $7122: $88
	adc  b                                           ; $7123: $88
	adc  b                                           ; $7124: $88
	adc  b                                           ; $7125: $88
	adc  b                                           ; $7126: $88
	adc  b                                           ; $7127: $88
	adc  b                                           ; $7128: $88
	adc  b                                           ; $7129: $88
	adc  b                                           ; $712a: $88
	adc  b                                           ; $712b: $88
	adc  b                                           ; $712c: $88
	adc  b                                           ; $712d: $88
	adc  b                                           ; $712e: $88
	adc  b                                           ; $712f: $88
	adc  b                                           ; $7130: $88
	adc  b                                           ; $7131: $88
	adc  b                                           ; $7132: $88
	adc  b                                           ; $7133: $88
	adc  b                                           ; $7134: $88
	adc  b                                           ; $7135: $88
	adc  b                                           ; $7136: $88
	adc  b                                           ; $7137: $88
	adc  b                                           ; $7138: $88
	adc  b                                           ; $7139: $88
	adc  b                                           ; $713a: $88
	adc  b                                           ; $713b: $88
	adc  b                                           ; $713c: $88
	adc  b                                           ; $713d: $88
	adc  b                                           ; $713e: $88
	adc  b                                           ; $713f: $88
	adc  b                                           ; $7140: $88
	adc  b                                           ; $7141: $88
	adc  b                                           ; $7142: $88
	adc  b                                           ; $7143: $88
	adc  b                                           ; $7144: $88
	adc  b                                           ; $7145: $88
	adc  b                                           ; $7146: $88
	adc  b                                           ; $7147: $88
	adc  b                                           ; $7148: $88
	adc  b                                           ; $7149: $88
	adc  b                                           ; $714a: $88
	adc  b                                           ; $714b: $88
	adc  b                                           ; $714c: $88
	adc  b                                           ; $714d: $88
	adc  b                                           ; $714e: $88
	adc  b                                           ; $714f: $88
	adc  b                                           ; $7150: $88
	adc  b                                           ; $7151: $88
	adc  b                                           ; $7152: $88
	adc  b                                           ; $7153: $88
	adc  b                                           ; $7154: $88
	adc  b                                           ; $7155: $88
	adc  b                                           ; $7156: $88
	adc  b                                           ; $7157: $88
	adc  b                                           ; $7158: $88
	adc  b                                           ; $7159: $88
	adc  b                                           ; $715a: $88
	adc  b                                           ; $715b: $88
	adc  b                                           ; $715c: $88
	adc  b                                           ; $715d: $88
	adc  b                                           ; $715e: $88
	adc  b                                           ; $715f: $88
	adc  b                                           ; $7160: $88
	adc  b                                           ; $7161: $88
	adc  b                                           ; $7162: $88
	adc  b                                           ; $7163: $88
	adc  b                                           ; $7164: $88
	adc  b                                           ; $7165: $88
	adc  b                                           ; $7166: $88
	adc  b                                           ; $7167: $88
	adc  b                                           ; $7168: $88
	adc  b                                           ; $7169: $88
	adc  b                                           ; $716a: $88
	adc  b                                           ; $716b: $88
	adc  b                                           ; $716c: $88
	adc  b                                           ; $716d: $88
	adc  b                                           ; $716e: $88
	adc  b                                           ; $716f: $88
	adc  b                                           ; $7170: $88
	adc  b                                           ; $7171: $88
	adc  b                                           ; $7172: $88
	adc  b                                           ; $7173: $88
	adc  b                                           ; $7174: $88
	adc  b                                           ; $7175: $88
	adc  b                                           ; $7176: $88
	adc  b                                           ; $7177: $88
	adc  b                                           ; $7178: $88
	adc  b                                           ; $7179: $88
	adc  b                                           ; $717a: $88
	adc  b                                           ; $717b: $88
	adc  b                                           ; $717c: $88
	adc  b                                           ; $717d: $88
	adc  b                                           ; $717e: $88
	adc  b                                           ; $717f: $88
	adc  b                                           ; $7180: $88
	adc  b                                           ; $7181: $88
	adc  b                                           ; $7182: $88
	adc  b                                           ; $7183: $88
	adc  b                                           ; $7184: $88
	adc  b                                           ; $7185: $88
	adc  b                                           ; $7186: $88
	adc  b                                           ; $7187: $88
	adc  b                                           ; $7188: $88
	adc  b                                           ; $7189: $88
	adc  b                                           ; $718a: $88
	adc  b                                           ; $718b: $88
	adc  b                                           ; $718c: $88
	adc  b                                           ; $718d: $88
	adc  b                                           ; $718e: $88
	adc  b                                           ; $718f: $88
	sbc  b                                           ; $7190: $98
	adc  b                                           ; $7191: $88
	adc  c                                           ; $7192: $89
	adc  b                                           ; $7193: $88
	adc  b                                           ; $7194: $88
	adc  b                                           ; $7195: $88
	sbc  b                                           ; $7196: $98
	ld   [hl], a                                     ; $7197: $77
	adc  b                                           ; $7198: $88
	sbc  c                                           ; $7199: $99
	adc  b                                           ; $719a: $88
	sbc  c                                           ; $719b: $99
	adc  b                                           ; $719c: $88
	ld   [hl], a                                     ; $719d: $77
	ld   a, b                                        ; $719e: $78
	adc  c                                           ; $719f: $89
	adc  b                                           ; $71a0: $88
	sub  a                                           ; $71a1: $97
	ld   [hl], a                                     ; $71a2: $77
	adc  d                                           ; $71a3: $8a
	xor  c                                           ; $71a4: $a9
	add  a                                           ; $71a5: $87
	ld   h, [hl]                                     ; $71a6: $66
	ld   a, c                                        ; $71a7: $79
	sbc  b                                           ; $71a8: $98
	halt                                             ; $71a9: $76
	ld   h, a                                        ; $71aa: $67
	adc  c                                           ; $71ab: $89
	adc  b                                           ; $71ac: $88
	adc  b                                           ; $71ad: $88
	sbc  c                                           ; $71ae: $99
	xor  c                                           ; $71af: $a9
	add  [hl]                                        ; $71b0: $86
	ld   h, a                                        ; $71b1: $67
	sbc  d                                           ; $71b2: $9a
	xor  c                                           ; $71b3: $a9
	ld   [hl], l                                     ; $71b4: $75
	ld   h, a                                        ; $71b5: $67
	sbc  d                                           ; $71b6: $9a
	xor  b                                           ; $71b7: $a8
	ld   h, l                                        ; $71b8: $65
	ld   l, c                                        ; $71b9: $69
	adc  b                                           ; $71ba: $88
	ld   h, l                                        ; $71bb: $65
	ld   d, [hl]                                     ; $71bc: $56
	xor  h                                           ; $71bd: $ac
	jp   z, Jump_0d3_5864                            ; $71be: $ca $64 $58

	xor  h                                           ; $71c1: $ac
	cp   b                                           ; $71c2: $b8
	ld   h, l                                        ; $71c3: $65
	ld   d, [hl]                                     ; $71c4: $56
	adc  c                                           ; $71c5: $89
	sub  a                                           ; $71c6: $97
	ld   [hl], a                                     ; $71c7: $77
	adc  c                                           ; $71c8: $89
	sub  a                                           ; $71c9: $97
	ld   [hl], a                                     ; $71ca: $77
	adc  d                                           ; $71cb: $8a
	sbc  d                                           ; $71cc: $9a
	add  [hl]                                        ; $71cd: $86
	ld   h, [hl]                                     ; $71ce: $66
	ld   a, b                                        ; $71cf: $78
	xor  d                                           ; $71d0: $aa
	xor  b                                           ; $71d1: $a8
	ld   h, [hl]                                     ; $71d2: $66
	ld   h, a                                        ; $71d3: $67
	sbc  d                                           ; $71d4: $9a
	adc  b                                           ; $71d5: $88
	ld   [hl], a                                     ; $71d6: $77
	adc  b                                           ; $71d7: $88
	adc  b                                           ; $71d8: $88
	ld   [hl], a                                     ; $71d9: $77
	ld   [hl], a                                     ; $71da: $77
	sbc  c                                           ; $71db: $99
	sbc  b                                           ; $71dc: $98
	halt                                             ; $71dd: $76
	ld   h, a                                        ; $71de: $67
	adc  b                                           ; $71df: $88
	adc  b                                           ; $71e0: $88
	adc  b                                           ; $71e1: $88
	adc  c                                           ; $71e2: $89
	adc  c                                           ; $71e3: $89
	adc  c                                           ; $71e4: $89
	sbc  c                                           ; $71e5: $99
	sbc  b                                           ; $71e6: $98
	halt                                             ; $71e7: $76
	ld   h, l                                        ; $71e8: $65
	ld   h, [hl]                                     ; $71e9: $66
	halt                                             ; $71ea: $76
	ld   d, h                                        ; $71eb: $54
	inc  [hl]                                        ; $71ec: $34
	ld   h, a                                        ; $71ed: $67
	sbc  e                                           ; $71ee: $9b
	sbc  $fd                                         ; $71ef: $de $fd
	ret                                              ; $71f1: $c9


	ld   [hl], a                                     ; $71f2: $77
	sbc  h                                           ; $71f3: $9c
	xor  $c8                                         ; $71f4: $ee $c8
	ld   d, d                                        ; $71f6: $52
	ld   de, $1111                                   ; $71f7: $11 $11 $11
	add  hl, sp                                      ; $71fa: $39
	rst  JumpTable                                         ; $71fb: $df
	rst  $38                                         ; $71fc: $ff
	call c, $cbbc                                    ; $71fd: $dc $bc $cb
	cp   h                                           ; $7200: $bc
	rst  $28                                         ; $7201: $ef
	ei                                               ; $7202: $fb
	ld   h, c                                        ; $7203: $61
	ld   de, $1111                                   ; $7204: $11 $11 $11
	ld   d, $df                                      ; $7207: $16 $df
	rst  $38                                         ; $7209: $ff
	rst  $38                                         ; $720a: $ff
	rst  $10                                         ; $720b: $d7
	ld   h, [hl]                                     ; $720c: $66
	sbc  [hl]                                        ; $720d: $9e
	rst  $38                                         ; $720e: $ff
	rst  $38                                         ; $720f: $ff
	add  c                                           ; $7210: $81
	ld   de, $1111                                   ; $7211: $11 $11 $11
	ld   de, $ff7f                                   ; $7214: $11 $7f $ff
	rst  $38                                         ; $7217: $ff
	push bc                                          ; $7218: $c5
	ld   [de], a                                     ; $7219: $12
	ld   l, a                                        ; $721a: $6f
	rst  $38                                         ; $721b: $ff
	rst  $38                                         ; $721c: $ff
	pop  bc                                          ; $721d: $c1
	ld   de, $1111                                   ; $721e: $11 $11 $11
	ld   de, $ff3f                                   ; $7221: $11 $3f $ff
	rst  $38                                         ; $7224: $ff
	di                                               ; $7225: $f3
	ld   de, $ff18                                   ; $7226: $11 $18 $ff
	rst  $38                                         ; $7229: $ff
	pop  af                                          ; $722a: $f1
	ld   de, $1111                                   ; $722b: $11 $11 $11
	ld   de, $ff1e                                   ; $722e: $11 $1e $ff
	rst  $38                                         ; $7231: $ff
	ldh  a, [c]                                      ; $7232: $f2
	ld   de, $ff16                                   ; $7233: $11 $16 $ff
	rst  $38                                         ; $7236: $ff
	pop  af                                          ; $7237: $f1
	ld   de, $1111                                   ; $7238: $11 $11 $11
	ld   de, $ff2f                                   ; $723b: $11 $2f $ff
	rst  $38                                         ; $723e: $ff
	pop  af                                          ; $723f: $f1
	ld   de, $ff17                                   ; $7240: $11 $17 $ff
	rst  $38                                         ; $7243: $ff
	pop  de                                          ; $7244: $d1
	ld   de, $1111                                   ; $7245: $11 $11 $11
	ld   de, $ff5f                                   ; $7248: $11 $5f $ff
	rst  $38                                         ; $724b: $ff
	and  c                                           ; $724c: $a1
	ld   de, $ff1f                                   ; $724d: $11 $1f $ff
	rst  $38                                         ; $7250: $ff
	ld   sp, $1111                                   ; $7251: $31 $11 $11
	ld   de, $df32                                   ; $7254: $11 $32 $df
	rst  $38                                         ; $7257: $ff
	rst  $38                                         ; $7258: $ff
	ld   de, $6f11                                   ; $7259: $11 $11 $6f
	rst  $38                                         ; $725c: $ff
	cp   $11                                         ; $725d: $fe $11
	ld   de, $1111                                   ; $725f: $11 $11 $11
	dec  d                                           ; $7262: $15
	rst  $38                                         ; $7263: $ff
	rst  $38                                         ; $7264: $ff
	ldh  a, [c]                                      ; $7265: $f2
	ld   de, rAUD1LEN                                   ; $7266: $11 $11 $ff
	rst  $38                                         ; $7269: $ff
	pop  af                                          ; $726a: $f1
	ld   de, $1311                                   ; $726b: $11 $11 $13
	ld   [de], a                                     ; $726e: $12
	dec  l                                           ; $726f: $2d
	rst  $38                                         ; $7270: $ff
	rst  $38                                         ; $7271: $ff
	pop  bc                                          ; $7272: $c1
	ld   de, $ff1d                                   ; $7273: $11 $1d $ff
	rst  $38                                         ; $7276: $ff
	ld   d, c                                        ; $7277: $51
	ld   de, $4111                                   ; $7278: $11 $11 $41
	ld   de, $ff9f                                   ; $727b: $11 $9f $ff
	rst  $38                                         ; $727e: $ff
	ld   de, $6f11                                   ; $727f: $11 $11 $6f
	rst  $38                                         ; $7282: $ff
	db   $fc                                         ; $7283: $fc
	ld   de, $1511                                   ; $7284: $11 $11 $15
	ld   de, rAUDVOL                                   ; $7287: $11 $24 $ff
	rst  $38                                         ; $728a: $ff
	pop  af                                          ; $728b: $f1
	ld   de, rAUD1LEN                                   ; $728c: $11 $11 $ff
	rst  $38                                         ; $728f: $ff
	pop  af                                          ; $7290: $f1
	ld   de, $4311                                   ; $7291: $11 $11 $43
	ld   de, $ff3f                                   ; $7294: $11 $3f $ff
	rst  $38                                         ; $7297: $ff
	ld   de, $1f11                                   ; $7298: $11 $11 $1f
	rst  $38                                         ; $729b: $ff
	rst  $38                                         ; $729c: $ff
	ld   de, $1111                                   ; $729d: $11 $11 $11
	ld   d, c                                        ; $72a0: $51
	inc  de                                          ; $72a1: $13
	rst  JumpTable                                         ; $72a2: $df
	rst  $38                                         ; $72a3: $ff
	rst  $30                                         ; $72a4: $f7
	ld   de, rAUD1LEN                                   ; $72a5: $11 $11 $ff
	rst  $38                                         ; $72a8: $ff
	di                                               ; $72a9: $f3
	ld   de, $1511                                   ; $72aa: $11 $11 $15
	ld   de, $ff4a                                   ; $72ad: $11 $4a $ff
	rst  $38                                         ; $72b0: $ff
	or   c                                           ; $72b1: $b1
	ld   de, $ff1c                                   ; $72b2: $11 $1c $ff
	rst  $38                                         ; $72b5: $ff
	add  c                                           ; $72b6: $81
	ld   de, $3111                                   ; $72b7: $11 $11 $31
	inc  d                                           ; $72ba: $14
	xor  a                                           ; $72bb: $af
	rst  $38                                         ; $72bc: $ff
	rst  $38                                         ; $72bd: $ff
	ld   de, $9f11                                   ; $72be: $11 $11 $9f
	rst  $38                                         ; $72c1: $ff
	ei                                               ; $72c2: $fb
	ld   de, $1211                                   ; $72c3: $11 $11 $12
	ld   de, $ff4b                                   ; $72c6: $11 $4b $ff
	rst  $38                                         ; $72c9: $ff
	pop  af                                          ; $72ca: $f1
	ld   de, $ff17                                   ; $72cb: $11 $17 $ff
	rst  $38                                         ; $72ce: $ff
	pop  bc                                          ; $72cf: $c1
	ld   de, $2111                                   ; $72d0: $11 $11 $21
	inc  d                                           ; $72d3: $14
	xor  a                                           ; $72d4: $af
	rst  $38                                         ; $72d5: $ff
	rst  $38                                         ; $72d6: $ff
	ld   de, $5f11                                   ; $72d7: $11 $11 $5f
	rst  $38                                         ; $72da: $ff
	rst  $38                                         ; $72db: $ff
	ld   de, $1111                                   ; $72dc: $11 $11 $11
	ld   de, $ff4b                                   ; $72df: $11 $4b $ff
	rst  $38                                         ; $72e2: $ff
	pop  af                                          ; $72e3: $f1
	ld   de, rAUD1HIGH                                   ; $72e4: $11 $14 $ff
	rst  $38                                         ; $72e7: $ff
	pop  af                                          ; $72e8: $f1
	ld   de, $1111                                   ; $72e9: $11 $11 $11
	inc  d                                           ; $72ec: $14
	cp   a                                           ; $72ed: $bf
	rst  $38                                         ; $72ee: $ff
	rst  $38                                         ; $72ef: $ff
	ld   de, $4f11                                   ; $72f0: $11 $11 $4f
	rst  $38                                         ; $72f3: $ff
	cp   $11                                         ; $72f4: $fe $11
	ld   de, $1111                                   ; $72f6: $11 $11 $11
	ld   a, [hl+]                                    ; $72f9: $2a
	rst  $38                                         ; $72fa: $ff
	rst  $38                                         ; $72fb: $ff
	pop  af                                          ; $72fc: $f1
	ld   de, rAUD1LOW                                   ; $72fd: $11 $13 $ff
	rst  $38                                         ; $7300: $ff
	pop  af                                          ; $7301: $f1
	ld   de, $1111                                   ; $7302: $11 $11 $11
	ld   [de], a                                     ; $7305: $12
	sbc  a                                           ; $7306: $9f
	rst  $38                                         ; $7307: $ff
	rst  $38                                         ; $7308: $ff
	ld   de, $1f11                                   ; $7309: $11 $11 $1f
	rst  $38                                         ; $730c: $ff
	rst  $38                                         ; $730d: $ff
	ld   de, $1111                                   ; $730e: $11 $11 $11
	ld   de, $ff18                                   ; $7311: $11 $18 $ff
	rst  $38                                         ; $7314: $ff
	pop  af                                          ; $7315: $f1
	ld   de, rAUD1LEN                                   ; $7316: $11 $11 $ff
	rst  $38                                         ; $7319: $ff
	pop  af                                          ; $731a: $f1
	ld   de, $1211                                   ; $731b: $11 $11 $12
	ld   de, $ff7f                                   ; $731e: $11 $7f $ff
	rst  $38                                         ; $7321: $ff
	ld   de, $1f11                                   ; $7322: $11 $11 $1f
	rst  $38                                         ; $7325: $ff
	rst  $38                                         ; $7326: $ff
	ld   sp, $1111                                   ; $7327: $31 $11 $11
	ld   hl, $bf15                                   ; $732a: $21 $15 $bf
	rst  $38                                         ; $732d: $ff
	or   $11                                         ; $732e: $f6 $11
	ld   de, $ffff                                   ; $7330: $11 $ff $ff
	ld   hl, sp+$11                                  ; $7333: $f8 $11
	ld   de, $1111                                   ; $7335: $11 $11 $11
	ld   c, e                                        ; $7338: $4b
	rst  $38                                         ; $7339: $ff
	rst  $38                                         ; $733a: $ff
	pop  de                                          ; $733b: $d1
	ld   de, $ff1a                                   ; $733c: $11 $1a $ff
	rst  $38                                         ; $733f: $ff
	pop  bc                                          ; $7340: $c1
	ld   de, $1111                                   ; $7341: $11 $11 $11
	ld   de, $ff6f                                   ; $7344: $11 $6f $ff
	rst  $38                                         ; $7347: $ff
	ld   de, $2f11                                   ; $7348: $11 $11 $2f
	rst  $38                                         ; $734b: $ff
	rst  $38                                         ; $734c: $ff
	ld   h, c                                        ; $734d: $61
	ld   de, $1111                                   ; $734e: $11 $11 $11
	ld   de, $ff9f                                   ; $7351: $11 $9f $ff
	rst  $38                                         ; $7354: $ff
	ld   de, $6f11                                   ; $7355: $11 $11 $6f
	rst  $38                                         ; $7358: $ff
	cp   $41                                         ; $7359: $fe $41
	ld   de, $1111                                   ; $735b: $11 $11 $11
	inc  de                                          ; $735e: $13
	cp   a                                           ; $735f: $bf
	rst  $38                                         ; $7360: $ff
	ld   sp, hl                                      ; $7361: $f9
	ld   de, $cf11                                   ; $7362: $11 $11 $cf
	rst  $38                                         ; $7365: $ff
	ld   a, [$1111]                                  ; $7366: $fa $11 $11
	ld   de, $1511                                   ; $7369: $11 $11 $15
	rst  $38                                         ; $736c: $ff
	rst  $38                                         ; $736d: $ff
	or   $11                                         ; $736e: $f6 $11
	ld   de, $ffef                                   ; $7370: $11 $ef $ff
	ld   sp, hl                                      ; $7373: $f9
	ld   de, $1211                                   ; $7374: $11 $11 $12
	ld   de, $ff15                                   ; $7377: $11 $15 $ff
	rst  $38                                         ; $737a: $ff
	or   $11                                         ; $737b: $f6 $11
	ld   [de], a                                     ; $737d: $12
	rst  JumpTable                                         ; $737e: $df
	rst  $38                                         ; $737f: $ff
	ld   sp, hl                                      ; $7380: $f9
	ld   hl, $1111                                   ; $7381: $21 $11 $11
	ld   de, $ef13                                   ; $7384: $11 $13 $ef
	rst  $38                                         ; $7387: $ff
	ld   sp, hl                                      ; $7388: $f9
	ld   de, $af11                                   ; $7389: $11 $11 $af
	rst  $38                                         ; $738c: $ff
	ld   a, [$1111]                                  ; $738d: $fa $11 $11
	ld   [de], a                                     ; $7390: $12
	ld   de, $af11                                   ; $7391: $11 $11 $af
	rst  $38                                         ; $7394: $ff
	cp   $41                                         ; $7395: $fe $41
	ld   de, $ff4f                                   ; $7397: $11 $4f $ff
	cp   $71                                         ; $739a: $fe $71
	ld   de, $1111                                   ; $739c: $11 $11 $11
	ld   de, $ff1a                                   ; $739f: $11 $1a $ff
	rst  $38                                         ; $73a2: $ff
	call nz, $1a11                                   ; $73a3: $c4 $11 $1a
	rst  $38                                         ; $73a6: $ff
	rst  $38                                         ; $73a7: $ff
	push de                                          ; $73a8: $d5
	ld   de, $2411                                   ; $73a9: $11 $11 $24
	ld   hl, $8f12                                   ; $73ac: $21 $12 $8f
	rst  $38                                         ; $73af: $ff
	db   $fd                                         ; $73b0: $fd
	sub  e                                           ; $73b1: $93
	ld   de, $ff5e                                   ; $73b2: $11 $5e $ff
	db   $fc                                         ; $73b5: $fc
	ld   sp, $1111                                   ; $73b6: $31 $11 $11
	inc  hl                                          ; $73b9: $23
	ld   d, e                                        ; $73ba: $53
	ld   de, $ffcf                                   ; $73bb: $11 $cf $ff
	db   $eb                                         ; $73be: $eb
	or   a                                           ; $73bf: $b7
	inc  [hl]                                        ; $73c0: $34
	ld   e, e                                        ; $73c1: $5b
	rst  $38                                         ; $73c2: $ff
	ld   a, [$1141]                                  ; $73c3: $fa $41 $11
	ld   de, $6126                                   ; $73c6: $11 $26 $61
	ld   de, $ffaf                                   ; $73c9: $11 $af $ff
	rst  $38                                         ; $73cc: $ff
	xor  c                                           ; $73cd: $a9
	inc  sp                                          ; $73ce: $33
	ld   a, h                                        ; $73cf: $7c
	rst  $38                                         ; $73d0: $ff
	add  sp, $53                                     ; $73d1: $e8 $53
	ld   [de], a                                     ; $73d3: $12
	dec  d                                           ; $73d4: $15
	ld   d, h                                        ; $73d5: $54
	ld   de, $5c11                                   ; $73d6: $11 $11 $5c
	rst  $38                                         ; $73d9: $ff
	rst  $38                                         ; $73da: $ff
	and  [hl]                                        ; $73db: $a6
	ld   d, d                                        ; $73dc: $52
	ld   e, b                                        ; $73dd: $58
	rst  $28                                         ; $73de: $ef
	ei                                               ; $73df: $fb
	ld   h, l                                        ; $73e0: $65
	inc  [hl]                                        ; $73e1: $34
	ld   sp, $6711                                   ; $73e2: $31 $11 $67
	ld   [hl], d                                     ; $73e5: $72
	dec  d                                           ; $73e6: $15
	rst  JumpTable                                         ; $73e7: $df
	rst  $38                                         ; $73e8: $ff
	xor  $b6                                         ; $73e9: $ee $b6
	ld   sp, $ff6d                                   ; $73eb: $31 $6d $ff
	ret  z                                           ; $73ee: $c8

	ld   d, h                                        ; $73ef: $54
	ld   de, $4812                                   ; $73f0: $11 $12 $48
	ld   [hl], l                                     ; $73f3: $75
	inc  h                                           ; $73f4: $24
	sbc  l                                           ; $73f5: $9d
	rst  $38                                         ; $73f6: $ff
	cp   $e7                                         ; $73f7: $fe $e7
	inc  hl                                          ; $73f9: $23
	ld   l, l                                        ; $73fa: $6d
	cp   $b9                                         ; $73fb: $fe $b9
	ld   h, h                                        ; $73fd: $64
	ld   sp, $5424                                   ; $73fe: $31 $24 $54
	ld   d, e                                        ; $7401: $53
	ld   sp, $cf8f                                   ; $7402: $31 $8f $cf
	db   $dd                                         ; $7405: $dd
	ld   hl, sp+$45                                  ; $7406: $f8 $45
	ld   l, d                                        ; $7408: $6a
	ei                                               ; $7409: $fb
	call z, $53a9                                    ; $740a: $cc $a9 $53
	ld   [hl+], a                                    ; $740d: $22
	dec  [hl]                                        ; $740e: $35
	ld   b, c                                        ; $740f: $41
	dec  h                                           ; $7410: $25
	ld   l, b                                        ; $7411: $68
	ld   c, b                                        ; $7412: $48
	rst  $38                                         ; $7413: $ff
	ld   sp, hl                                      ; $7414: $f9
	adc  c                                           ; $7415: $89
	halt                                             ; $7416: $76
	ld   l, e                                        ; $7417: $6b
	rst  $28                                         ; $7418: $ef
	cp   c                                           ; $7419: $b9
	halt                                             ; $741a: $76
	ld   d, d                                        ; $741b: $52
	dec  [hl]                                        ; $741c: $35
	sbc  b                                           ; $741d: $98
	ld   h, e                                        ; $741e: $63
	ld   hl, $6a14                                   ; $741f: $21 $14 $6a
	rst  JumpTable                                         ; $7422: $df
	db   $fc                                         ; $7423: $fc
	adc  b                                           ; $7424: $88
	sbc  b                                           ; $7425: $98
	ld   [hl], a                                     ; $7426: $77
	sbc  $ba                                         ; $7427: $de $ba
	ld   [hl], a                                     ; $7429: $77
	ld   b, c                                        ; $742a: $41
	ld   [hl], $97                                   ; $742b: $36 $97
	ld   [hl], l                                     ; $742d: $75
	ld   h, l                                        ; $742e: $65
	ld   [de], a                                     ; $742f: $12
	scf                                              ; $7430: $37
	xor  h                                           ; $7431: $ac
	xor  $d9                                         ; $7432: $ee $d9
	ld   a, b                                        ; $7434: $78
	ld   a, c                                        ; $7435: $79
	cp   [hl]                                        ; $7436: $be
	ld   [$84a9], a                                  ; $7437: $ea $a9 $84
	inc  h                                           ; $743a: $24
	ld   h, [hl]                                     ; $743b: $66
	ld   d, h                                        ; $743c: $54
	ld   [hl], a                                     ; $743d: $77
	ld   h, h                                        ; $743e: $64
	ld   b, [hl]                                     ; $743f: $46
	ld   d, h                                        ; $7440: $54
	ld   a, d                                        ; $7441: $7a
	call z, $a9aa                                    ; $7442: $cc $aa $a9
	sbc  d                                           ; $7445: $9a
	xor  h                                           ; $7446: $ac
	xor  d                                           ; $7447: $aa
	sub  [hl]                                        ; $7448: $96
	add  [hl]                                        ; $7449: $86
	ld   d, [hl]                                     ; $744a: $56
	ld   a, b                                        ; $744b: $78
	adc  b                                           ; $744c: $88
	ld   h, l                                        ; $744d: $65
	ld   b, l                                        ; $744e: $45
	ld   b, e                                        ; $744f: $43
	ld   a, b                                        ; $7450: $78
	sbc  d                                           ; $7451: $9a
	xor  d                                           ; $7452: $aa
	xor  c                                           ; $7453: $a9
	sbc  c                                           ; $7454: $99
	ld   d, a                                        ; $7455: $57
	xor  e                                           ; $7456: $ab
	cp   c                                           ; $7457: $b9
	sbc  l                                           ; $7458: $9d
	ld   h, h                                        ; $7459: $64
	ld   l, e                                        ; $745a: $6b
	and  e                                           ; $745b: $a3
	xor  b                                           ; $745c: $a8
	sub  [hl]                                        ; $745d: $96
	ld   b, a                                        ; $745e: $47
	ld   a, c                                        ; $745f: $79
	ld   c, d                                        ; $7460: $4a
	sbc  c                                           ; $7461: $99
	ld   h, e                                        ; $7462: $63
	and  a                                           ; $7463: $a7
	halt                                             ; $7464: $76
	sbc  l                                           ; $7465: $9d
	add  [hl]                                        ; $7466: $86
	sbc  e                                           ; $7467: $9b
	sub  a                                           ; $7468: $97
	ld   a, h                                        ; $7469: $7c
	adc  c                                           ; $746a: $89
	sbc  b                                           ; $746b: $98
	xor  b                                           ; $746c: $a8
	sbc  b                                           ; $746d: $98
	add  a                                           ; $746e: $87
	cp   b                                           ; $746f: $b8
	ld   [hl], a                                     ; $7470: $77
	sbc  c                                           ; $7471: $99
	ld   e, b                                        ; $7472: $58
	ld   a, c                                        ; $7473: $79
	adc  b                                           ; $7474: $88
	add  [hl]                                        ; $7475: $86
	add  a                                           ; $7476: $87
	xor  b                                           ; $7477: $a8
	sbc  c                                           ; $7478: $99
	sbc  b                                           ; $7479: $98
	ld   a, c                                        ; $747a: $79
	sbc  c                                           ; $747b: $99
	sbc  d                                           ; $747c: $9a
	cp   c                                           ; $747d: $b9
	adc  b                                           ; $747e: $88
	xor  b                                           ; $747f: $a8
	ld   l, c                                        ; $7480: $69
	sbc  c                                           ; $7481: $99
	sbc  b                                           ; $7482: $98
	ld   a, c                                        ; $7483: $79
	ld   a, b                                        ; $7484: $78
	and  a                                           ; $7485: $a7
	add  a                                           ; $7486: $87
	adc  b                                           ; $7487: $88
	and  a                                           ; $7488: $a7
	cp   e                                           ; $7489: $bb
	ld   a, b                                        ; $748a: $78
	sbc  d                                           ; $748b: $9a
	adc  c                                           ; $748c: $89
	sbc  b                                           ; $748d: $98
	adc  b                                           ; $748e: $88
	halt                                             ; $748f: $76
	adc  b                                           ; $7490: $88
	sub  [hl]                                        ; $7491: $96
	ld   a, c                                        ; $7492: $79
	sub  a                                           ; $7493: $97
	adc  c                                           ; $7494: $89
	xor  b                                           ; $7495: $a8
	adc  d                                           ; $7496: $8a
	sub  a                                           ; $7497: $97
	adc  c                                           ; $7498: $89
	ld   a, c                                        ; $7499: $79
	sbc  c                                           ; $749a: $99
	sub  a                                           ; $749b: $97
	adc  c                                           ; $749c: $89
	halt                                             ; $749d: $76
	sub  a                                           ; $749e: $97
	add  a                                           ; $749f: $87
	ld   a, c                                        ; $74a0: $79
	ld   [hl], a                                     ; $74a1: $77
	adc  b                                           ; $74a2: $88
	sbc  b                                           ; $74a3: $98
	adc  c                                           ; $74a4: $89
	adc  b                                           ; $74a5: $88
	ld   [hl], a                                     ; $74a6: $77
	adc  b                                           ; $74a7: $88
	ld   a, b                                        ; $74a8: $78
	xor  b                                           ; $74a9: $a8
	sub  a                                           ; $74aa: $97
	add  a                                           ; $74ab: $87
	ld   l, b                                        ; $74ac: $68
	sbc  b                                           ; $74ad: $98
	ld   a, c                                        ; $74ae: $79
	sub  a                                           ; $74af: $97
	ld   a, b                                        ; $74b0: $78
	sub  a                                           ; $74b1: $97
	adc  b                                           ; $74b2: $88
	adc  b                                           ; $74b3: $88
	ld   l, d                                        ; $74b4: $6a
	add  a                                           ; $74b5: $87
	ld   a, b                                        ; $74b6: $78
	adc  b                                           ; $74b7: $88
	ld   a, c                                        ; $74b8: $79
	sub  [hl]                                        ; $74b9: $96
	ld   [hl], a                                     ; $74ba: $77
	sbc  c                                           ; $74bb: $99
	add  a                                           ; $74bc: $87
	sbc  b                                           ; $74bd: $98
	ld   l, c                                        ; $74be: $69
	adc  b                                           ; $74bf: $88
	ld   a, b                                        ; $74c0: $78
	ld   a, b                                        ; $74c1: $78
	ld   a, c                                        ; $74c2: $79
	and  a                                           ; $74c3: $a7
	add  [hl]                                        ; $74c4: $86
	sub  a                                           ; $74c5: $97
	sbc  b                                           ; $74c6: $98
	sbc  c                                           ; $74c7: $99
	ld   h, a                                        ; $74c8: $67
	ld   a, b                                        ; $74c9: $78
	ld   [hl], a                                     ; $74ca: $77
	ld   a, c                                        ; $74cb: $79
	ld   a, b                                        ; $74cc: $78
	ld   a, c                                        ; $74cd: $79
	sub  a                                           ; $74ce: $97
	sub  a                                           ; $74cf: $97
	and  a                                           ; $74d0: $a7
	sub  a                                           ; $74d1: $97
	ld   a, b                                        ; $74d2: $78
	ld   a, d                                        ; $74d3: $7a
	ld   l, e                                        ; $74d4: $6b
	ld   l, c                                        ; $74d5: $69
	add  [hl]                                        ; $74d6: $86
	and  [hl]                                        ; $74d7: $a6
	sub  a                                           ; $74d8: $97
	and  [hl]                                        ; $74d9: $a6
	adc  b                                           ; $74da: $88
	adc  b                                           ; $74db: $88
	adc  c                                           ; $74dc: $89
	ld   a, c                                        ; $74dd: $79
	ld   a, c                                        ; $74de: $79
	ld   a, c                                        ; $74df: $79
	ld   [hl], a                                     ; $74e0: $77
	sub  a                                           ; $74e1: $97
	sub  a                                           ; $74e2: $97
	ld   l, c                                        ; $74e3: $69
	add  a                                           ; $74e4: $87
	and  a                                           ; $74e5: $a7
	ld   a, c                                        ; $74e6: $79
	ld   a, b                                        ; $74e7: $78
	sub  a                                           ; $74e8: $97
	adc  b                                           ; $74e9: $88
	adc  b                                           ; $74ea: $88
	add  a                                           ; $74eb: $87
	adc  c                                           ; $74ec: $89
	ld   a, b                                        ; $74ed: $78
	ld   l, c                                        ; $74ee: $69
	halt                                             ; $74ef: $76
	add  [hl]                                        ; $74f0: $86
	and  a                                           ; $74f1: $a7
	adc  b                                           ; $74f2: $88
	ld   a, c                                        ; $74f3: $79
	ld   l, b                                        ; $74f4: $68
	ld   a, c                                        ; $74f5: $79
	adc  b                                           ; $74f6: $88
	sbc  b                                           ; $74f7: $98
	ld   a, b                                        ; $74f8: $78
	add  a                                           ; $74f9: $87
	sub  a                                           ; $74fa: $97
	sub  a                                           ; $74fb: $97
	add  [hl]                                        ; $74fc: $86
	add  a                                           ; $74fd: $87
	ld   a, d                                        ; $74fe: $7a
	ld   e, e                                        ; $74ff: $5b
	ld   l, b                                        ; $7500: $68
	ld   [hl], a                                     ; $7501: $77
	add  [hl]                                        ; $7502: $86
	and  l                                           ; $7503: $a5
	sub  a                                           ; $7504: $97
	ld   l, d                                        ; $7505: $6a
	ld   a, b                                        ; $7506: $78
	ld   a, c                                        ; $7507: $79
	ld   a, b                                        ; $7508: $78
	adc  b                                           ; $7509: $88
	sub  l                                           ; $750a: $95
	and  [hl]                                        ; $750b: $a6
	sub  a                                           ; $750c: $97
	adc  c                                           ; $750d: $89
	ld   a, b                                        ; $750e: $78
	ld   a, d                                        ; $750f: $7a
	ld   l, b                                        ; $7510: $68
	ld   [hl], a                                     ; $7511: $77
	sub  a                                           ; $7512: $97
	adc  c                                           ; $7513: $89
	adc  b                                           ; $7514: $88
	add  a                                           ; $7515: $87
	adc  c                                           ; $7516: $89
	ld   a, c                                        ; $7517: $79
	add  a                                           ; $7518: $87
	sbc  b                                           ; $7519: $98
	ld   a, b                                        ; $751a: $78
	ld   a, b                                        ; $751b: $78
	add  a                                           ; $751c: $87
	add  a                                           ; $751d: $87
	add  a                                           ; $751e: $87
	sub  [hl]                                        ; $751f: $96
	sbc  c                                           ; $7520: $99
	ld   a, c                                        ; $7521: $79
	ld   a, b                                        ; $7522: $78
	ld   l, c                                        ; $7523: $69
	ld   h, a                                        ; $7524: $67
	and  [hl]                                        ; $7525: $a6
	sub  a                                           ; $7526: $97
	ld   a, c                                        ; $7527: $79
	ld   a, b                                        ; $7528: $78
	add  a                                           ; $7529: $87
	sbc  b                                           ; $752a: $98
	adc  b                                           ; $752b: $88
	ld   a, c                                        ; $752c: $79
	ld   [hl], a                                     ; $752d: $77
	adc  c                                           ; $752e: $89
	adc  b                                           ; $752f: $88
	add  a                                           ; $7530: $87
	sub  a                                           ; $7531: $97
	ld   a, c                                        ; $7532: $79
	ld   l, c                                        ; $7533: $69
	ld   a, b                                        ; $7534: $78
	add  a                                           ; $7535: $87
	sub  a                                           ; $7536: $97
	or   l                                           ; $7537: $b5
	xor  c                                           ; $7538: $a9
	ld   l, c                                        ; $7539: $69
	ld   a, b                                        ; $753a: $78
	ld   a, c                                        ; $753b: $79
	ld   l, d                                        ; $753c: $6a
	ld   [hl], a                                     ; $753d: $77
	add  a                                           ; $753e: $87
	add  [hl]                                        ; $753f: $86
	sub  [hl]                                        ; $7540: $96
	sub  a                                           ; $7541: $97
	sbc  c                                           ; $7542: $99
	ld   a, d                                        ; $7543: $7a
	ld   e, d                                        ; $7544: $5a
	ld   [hl], a                                     ; $7545: $77
	and  a                                           ; $7546: $a7
	xor  b                                           ; $7547: $a8
	ld   a, b                                        ; $7548: $78
	ld   a, b                                        ; $7549: $78
	add  a                                           ; $754a: $87
	sbc  b                                           ; $754b: $98
	sub  [hl]                                        ; $754c: $96
	sub  a                                           ; $754d: $97
	adc  b                                           ; $754e: $88
	ld   e, d                                        ; $754f: $5a
	ld   a, b                                        ; $7550: $78
	ld   a, c                                        ; $7551: $79
	ld   a, b                                        ; $7552: $78
	ld   a, b                                        ; $7553: $78
	and  e                                           ; $7554: $a3
	or   l                                           ; $7555: $b5
	xor  b                                           ; $7556: $a8
	ld   l, e                                        ; $7557: $6b
	ld   e, e                                        ; $7558: $5b
	ld   e, b                                        ; $7559: $58
	and  [hl]                                        ; $755a: $a6
	add  a                                           ; $755b: $87
	sub  l                                           ; $755c: $95
	and  a                                           ; $755d: $a7
	ld   a, d                                        ; $755e: $7a
	ld   l, c                                        ; $755f: $69
	ld   a, c                                        ; $7560: $79
	ld   a, c                                        ; $7561: $79
	adc  c                                           ; $7562: $89
	sub  [hl]                                        ; $7563: $96
	xor  b                                           ; $7564: $a8
	ld   a, c                                        ; $7565: $79
	ld   a, c                                        ; $7566: $79
	ld   a, b                                        ; $7567: $78
	ld   a, b                                        ; $7568: $78
	ld   a, b                                        ; $7569: $78
	and  l                                           ; $756a: $a5
	and  [hl]                                        ; $756b: $a6
	adc  d                                           ; $756c: $8a
	ld   a, c                                        ; $756d: $79
	sbc  b                                           ; $756e: $98
	ld   a, c                                        ; $756f: $79
	ld   l, d                                        ; $7570: $6a
	add  a                                           ; $7571: $87
	adc  b                                           ; $7572: $88
	sub  [hl]                                        ; $7573: $96
	and  a                                           ; $7574: $a7
	sbc  d                                           ; $7575: $9a
	ld   l, d                                        ; $7576: $6a
	ld   [hl], a                                     ; $7577: $77
	and  [hl]                                        ; $7578: $a6
	adc  b                                           ; $7579: $88
	ld   a, c                                        ; $757a: $79
	ld   a, b                                        ; $757b: $78
	add  a                                           ; $757c: $87
	adc  c                                           ; $757d: $89
	ld   a, c                                        ; $757e: $79
	ld   a, c                                        ; $757f: $79
	add  a                                           ; $7580: $87
	sub  [hl]                                        ; $7581: $96
	sbc  b                                           ; $7582: $98
	ld   a, c                                        ; $7583: $79
	ld   l, c                                        ; $7584: $69
	ld   a, b                                        ; $7585: $78
	add  a                                           ; $7586: $87
	and  [hl]                                        ; $7587: $a6
	sbc  b                                           ; $7588: $98
	adc  b                                           ; $7589: $88
	ld   a, c                                        ; $758a: $79
	ld   a, c                                        ; $758b: $79
	ld   l, d                                        ; $758c: $6a
	ld   l, c                                        ; $758d: $69
	sub  [hl]                                        ; $758e: $96
	and  l                                           ; $758f: $a5
	add  $89                                         ; $7590: $c6 $89
	ld   l, c                                        ; $7592: $69
	ld   a, c                                        ; $7593: $79
	ld   l, c                                        ; $7594: $69
	ld   a, c                                        ; $7595: $79
	sub  a                                           ; $7596: $97
	and  [hl]                                        ; $7597: $a6
	ld   a, b                                        ; $7598: $78
	and  [hl]                                        ; $7599: $a6
	sbc  b                                           ; $759a: $98
	adc  b                                           ; $759b: $88
	ld   a, c                                        ; $759c: $79
	ld   e, d                                        ; $759d: $5a
	ld   a, d                                        ; $759e: $7a
	adc  b                                           ; $759f: $88
	sub  [hl]                                        ; $75a0: $96
	sub  a                                           ; $75a1: $97
	sub  a                                           ; $75a2: $97
	and  [hl]                                        ; $75a3: $a6
	sub  a                                           ; $75a4: $97
	ld   a, d                                        ; $75a5: $7a
	ld   e, d                                        ; $75a6: $5a
	ld   l, c                                        ; $75a7: $69
	add  [hl]                                        ; $75a8: $86
	xor  b                                           ; $75a9: $a8
	ld   a, b                                        ; $75aa: $78
	and  [hl]                                        ; $75ab: $a6
	sub  a                                           ; $75ac: $97
	adc  b                                           ; $75ad: $88
	adc  d                                           ; $75ae: $8a
	ld   l, h                                        ; $75af: $6c
	ld   l, b                                        ; $75b0: $68
	and  l                                           ; $75b1: $a5
	and  a                                           ; $75b2: $a7
	ld   a, d                                        ; $75b3: $7a
	ld   l, c                                        ; $75b4: $69
	adc  b                                           ; $75b5: $88
	add  a                                           ; $75b6: $87
	or   l                                           ; $75b7: $b5
	or   [hl]                                        ; $75b8: $b6
	sbc  d                                           ; $75b9: $9a
	ld   c, h                                        ; $75ba: $4c
	ld   l, d                                        ; $75bb: $6a
	ld   a, b                                        ; $75bc: $78
	sub  [hl]                                        ; $75bd: $96
	and  a                                           ; $75be: $a7
	and  a                                           ; $75bf: $a7
	add  a                                           ; $75c0: $87
	add  a                                           ; $75c1: $87
	sbc  c                                           ; $75c2: $99
	ld   l, b                                        ; $75c3: $68
	adc  c                                           ; $75c4: $89
	ld   [hl], a                                     ; $75c5: $77
	sbc  b                                           ; $75c6: $98
	add  a                                           ; $75c7: $87
	and  l                                           ; $75c8: $a5
	or   [hl]                                        ; $75c9: $b6
	adc  d                                           ; $75ca: $8a
	ld   a, $2d                                      ; $75cb: $3e $2d
	ld   [hl], l                                     ; $75cd: $75
	call nc, $96a6                                   ; $75ce: $d4 $a6 $96
	and  [hl]                                        ; $75d1: $a6
	sub  a                                           ; $75d2: $97
	ld   a, e                                        ; $75d3: $7b
	ld   a, $49                                      ; $75d4: $3e $49
	sub  [hl]                                        ; $75d6: $96
	sbc  b                                           ; $75d7: $98
	and  [hl]                                        ; $75d8: $a6
	sub  a                                           ; $75d9: $97
	add  a                                           ; $75da: $87
	sub  a                                           ; $75db: $97
	sbc  b                                           ; $75dc: $98
	ld   l, h                                        ; $75dd: $6c
	ld   c, c                                        ; $75de: $49
	add  [hl]                                        ; $75df: $86
	or   [hl]                                        ; $75e0: $b6
	ld   a, c                                        ; $75e1: $79
	ld   [hl], a                                     ; $75e2: $77
	or   l                                           ; $75e3: $b5
	cp   b                                           ; $75e4: $b8
	ld   e, d                                        ; $75e5: $5a
	ld   [hl], a                                     ; $75e6: $77
	sbc  c                                           ; $75e7: $99
	ld   e, l                                        ; $75e8: $5d
	ld   c, b                                        ; $75e9: $48
	and  l                                           ; $75ea: $a5
	add  $88                                         ; $75eb: $c6 $88
	add  a                                           ; $75ed: $87
	ld   a, d                                        ; $75ee: $7a
	add  a                                           ; $75ef: $87
	sbc  c                                           ; $75f0: $99
	ld   l, d                                        ; $75f1: $6a
	ld   l, e                                        ; $75f2: $6b
	ld   l, c                                        ; $75f3: $69
	sub  [hl]                                        ; $75f4: $96
	and  [hl]                                        ; $75f5: $a6
	and  l                                           ; $75f6: $a5
	or   a                                           ; $75f7: $b7
	ld   l, h                                        ; $75f8: $6c
	ld   e, c                                        ; $75f9: $59
	ld   [hl], a                                     ; $75fa: $77
	and  a                                           ; $75fb: $a7
	ld   l, c                                        ; $75fc: $69
	and  a                                           ; $75fd: $a7
	adc  c                                           ; $75fe: $89
	sub  a                                           ; $75ff: $97
	add  a                                           ; $7600: $87
	sbc  c                                           ; $7601: $99
	ld   l, c                                        ; $7602: $69
	sub  [hl]                                        ; $7603: $96
	ld   a, d                                        ; $7604: $7a
	ld   e, d                                        ; $7605: $5a
	sub  l                                           ; $7606: $95
	or   [hl]                                        ; $7607: $b6
	adc  b                                           ; $7608: $88
	sbc  b                                           ; $7609: $98
	ld   a, d                                        ; $760a: $7a
	ld   l, e                                        ; $760b: $6b
	ld   h, a                                        ; $760c: $67
	or   h                                           ; $760d: $b4
	xor  b                                           ; $760e: $a8
	ld   a, d                                        ; $760f: $7a
	ld   c, h                                        ; $7610: $4c
	add  [hl]                                        ; $7611: $86
	or   [hl]                                        ; $7612: $b6
	sub  a                                           ; $7613: $97
	adc  b                                           ; $7614: $88
	ld   l, d                                        ; $7615: $6a
	ld   [hl], a                                     ; $7616: $77
	sub  [hl]                                        ; $7617: $96
	sbc  b                                           ; $7618: $98
	ld   a, b                                        ; $7619: $78
	adc  b                                           ; $761a: $88
	add  a                                           ; $761b: $87
	adc  c                                           ; $761c: $89
	ld   a, c                                        ; $761d: $79
	ld   l, c                                        ; $761e: $69
	ld   a, d                                        ; $761f: $7a
	ld   c, e                                        ; $7620: $4b
	sub  h                                           ; $7621: $94
	push de                                          ; $7622: $d5
	sbc  c                                           ; $7623: $99
	ld   [hl], a                                     ; $7624: $77
	and  h                                           ; $7625: $a4
	sbc  d                                           ; $7626: $9a
	ld   e, c                                        ; $7627: $59
	adc  d                                           ; $7628: $8a
	ld   l, d                                        ; $7629: $6a
	ld   l, d                                        ; $762a: $6a
	halt                                             ; $762b: $76
	and  l                                           ; $762c: $a5
	sbc  b                                           ; $762d: $98
	ld   l, c                                        ; $762e: $69
	ld   [hl], a                                     ; $762f: $77
	sub  [hl]                                        ; $7630: $96
	sub  a                                           ; $7631: $97
	sbc  b                                           ; $7632: $98
	ld   l, d                                        ; $7633: $6a
	ld   l, c                                        ; $7634: $69
	ld   l, c                                        ; $7635: $69
	sub  a                                           ; $7636: $97
	ld   [hl], a                                     ; $7637: $77
	and  a                                           ; $7638: $a7
	sub  a                                           ; $7639: $97
	sbc  c                                           ; $763a: $99
	ld   l, c                                        ; $763b: $69
	add  [hl]                                        ; $763c: $86
	sbc  b                                           ; $763d: $98
	sbc  b                                           ; $763e: $98
	ld   l, e                                        ; $763f: $6b
	ld   l, b                                        ; $7640: $68
	ld   a, c                                        ; $7641: $79
	add  [hl]                                        ; $7642: $86
	or   l                                           ; $7643: $b5
	and  l                                           ; $7644: $a5
	sbc  c                                           ; $7645: $99
	ld   e, d                                        ; $7646: $5a
	add  a                                           ; $7647: $87
	sub  a                                           ; $7648: $97
	sbc  b                                           ; $7649: $98
	ld   l, c                                        ; $764a: $69
	ld   a, c                                        ; $764b: $79
	sub  a                                           ; $764c: $97
	adc  c                                           ; $764d: $89
	ld   [hl], a                                     ; $764e: $77
	and  [hl]                                        ; $764f: $a6
	or   a                                           ; $7650: $b7
	ld   a, b                                        ; $7651: $78
	sbc  b                                           ; $7652: $98
	ld   a, d                                        ; $7653: $7a
	ld   a, c                                        ; $7654: $79
	adc  b                                           ; $7655: $88
	ld   a, d                                        ; $7656: $7a
	ld   [hl], a                                     ; $7657: $77
	and  l                                           ; $7658: $a5
	adc  c                                           ; $7659: $89
	sub  a                                           ; $765a: $97
	sbc  c                                           ; $765b: $99
	ld   a, b                                        ; $765c: $78
	add  a                                           ; $765d: $87
	xor  b                                           ; $765e: $a8
	ld   e, e                                        ; $765f: $5b
	ld   a, b                                        ; $7660: $78
	ld   a, e                                        ; $7661: $7b
	ld   [hl], a                                     ; $7662: $77
	and  e                                           ; $7663: $a3
	add  $89                                         ; $7664: $c6 $89
	add  [hl]                                        ; $7666: $86
	ld   a, e                                        ; $7667: $7b
	ld   c, h                                        ; $7668: $4c
	ld   e, c                                        ; $7669: $59
	and  [hl]                                        ; $766a: $a6
	or   [hl]                                        ; $766b: $b6
	and  a                                           ; $766c: $a7
	sbc  b                                           ; $766d: $98
	ld   a, d                                        ; $766e: $7a
	ld   l, c                                        ; $766f: $69
	ld   h, a                                        ; $7670: $67
	or   [hl]                                        ; $7671: $b6
	adc  c                                           ; $7672: $89
	add  [hl]                                        ; $7673: $86
	and  a                                           ; $7674: $a7
	ld   a, d                                        ; $7675: $7a
	ld   l, c                                        ; $7676: $69
	sub  a                                           ; $7677: $97
	ld   a, c                                        ; $7678: $79
	add  a                                           ; $7679: $87
	ld   a, c                                        ; $767a: $79
	sub  [hl]                                        ; $767b: $96
	adc  c                                           ; $767c: $89
	ld   a, c                                        ; $767d: $79
	adc  b                                           ; $767e: $88
	sub  a                                           ; $767f: $97
	adc  b                                           ; $7680: $88
	add  a                                           ; $7681: $87
	ld   a, c                                        ; $7682: $79
	ld   l, b                                        ; $7683: $68
	and  l                                           ; $7684: $a5
	or   a                                           ; $7685: $b7
	ld   a, c                                        ; $7686: $79
	ld   l, c                                        ; $7687: $69
	adc  b                                           ; $7688: $88
	ld   a, d                                        ; $7689: $7a
	halt                                             ; $768a: $76
	or   [hl]                                        ; $768b: $b6
	sub  a                                           ; $768c: $97
	adc  c                                           ; $768d: $89
	sub  a                                           ; $768e: $97
	ld   a, d                                        ; $768f: $7a
	ld   a, c                                        ; $7690: $79
	ld   a, b                                        ; $7691: $78
	adc  b                                           ; $7692: $88
	ld   a, b                                        ; $7693: $78
	sub  a                                           ; $7694: $97
	xor  b                                           ; $7695: $a8
	add  a                                           ; $7696: $87
	sub  a                                           ; $7697: $97
	sbc  c                                           ; $7698: $99
	ld   l, c                                        ; $7699: $69
	add  [hl]                                        ; $769a: $86
	xor  b                                           ; $769b: $a8
	ld   l, e                                        ; $769c: $6b
	ld   [hl], a                                     ; $769d: $77
	sbc  c                                           ; $769e: $99
	ld   a, c                                        ; $769f: $79
	sub  a                                           ; $76a0: $97
	xor  b                                           ; $76a1: $a8
	ld   a, c                                        ; $76a2: $79
	and  l                                           ; $76a3: $a5
	xor  c                                           ; $76a4: $a9
	ld   l, c                                        ; $76a5: $69
	ld   a, c                                        ; $76a6: $79
	sub  a                                           ; $76a7: $97
	ld   a, d                                        ; $76a8: $7a
	halt                                             ; $76a9: $76
	sub  a                                           ; $76aa: $97
	adc  c                                           ; $76ab: $89
	ld   a, d                                        ; $76ac: $7a
	ld   [hl], a                                     ; $76ad: $77
	and  a                                           ; $76ae: $a7
	ld   l, d                                        ; $76af: $6a
	sub  a                                           ; $76b0: $97
	adc  b                                           ; $76b1: $88
	sub  [hl]                                        ; $76b2: $96
	sbc  c                                           ; $76b3: $99
	ld   l, c                                        ; $76b4: $69
	adc  c                                           ; $76b5: $89
	ld   [hl], a                                     ; $76b6: $77
	ld   a, e                                        ; $76b7: $7b
	ld   h, [hl]                                     ; $76b8: $66
	and  [hl]                                        ; $76b9: $a6
	add  a                                           ; $76ba: $87
	sbc  b                                           ; $76bb: $98
	ld   a, c                                        ; $76bc: $79
	add  a                                           ; $76bd: $87
	adc  c                                           ; $76be: $89
	adc  b                                           ; $76bf: $88
	ld   a, c                                        ; $76c0: $79
	and  a                                           ; $76c1: $a7
	adc  c                                           ; $76c2: $89
	adc  c                                           ; $76c3: $89
	sub  [hl]                                        ; $76c4: $96
	ret                                              ; $76c5: $c9


	ld   l, d                                        ; $76c6: $6a
	halt                                             ; $76c7: $76
	add  [hl]                                        ; $76c8: $86
	ld   a, b                                        ; $76c9: $78
	ld   d, [hl]                                     ; $76ca: $56
	add  e                                           ; $76cb: $83
	ld   e, b                                        ; $76cc: $58
	ld   h, a                                        ; $76cd: $67
	sbc  b                                           ; $76ce: $98
	xor  e                                           ; $76cf: $ab
	sbc  e                                           ; $76d0: $9b
	set  1, h                                        ; $76d1: $cb $cc
	xor  d                                           ; $76d3: $aa
	xor  d                                           ; $76d4: $aa
	adc  b                                           ; $76d5: $88
	ld   [hl], h                                     ; $76d6: $74
	ld   b, c                                        ; $76d7: $41
	ld   e, b                                        ; $76d8: $58
	ld   d, $81                                      ; $76d9: $16 $81
	ld   d, h                                        ; $76db: $54
	ld   h, [hl]                                     ; $76dc: $66
	ld   a, c                                        ; $76dd: $79
	xor  l                                           ; $76de: $ad
	xor  [hl]                                        ; $76df: $ae
	xor  $ed                                         ; $76e0: $ee $ed
	set  1, c                                        ; $76e2: $cb $c9
	sbc  b                                           ; $76e4: $98
	ld   [hl], l                                     ; $76e5: $75
	inc  hl                                          ; $76e6: $23
	scf                                              ; $76e7: $37
	ld   de, $25b1                                   ; $76e8: $11 $b1 $25
	ld   [hl], a                                     ; $76eb: $77
	ld   e, d                                        ; $76ec: $5a
	xor  h                                           ; $76ed: $ac
	cp   h                                           ; $76ee: $bc
	db   $fd                                         ; $76ef: $fd
	rst  $28                                         ; $76f0: $ef
	db   $fd                                         ; $76f1: $fd
	res  0, l                                        ; $76f2: $cb $85
	ld   d, l                                        ; $76f4: $55
	ld   sp, $8115                                   ; $76f5: $31 $15 $81
	inc  a                                           ; $76f8: $3c
	inc  de                                          ; $76f9: $13
	ld   e, c                                        ; $76fa: $59
	add  [hl]                                        ; $76fb: $86
	call z, $efeb                                    ; $76fc: $cc $eb $ef
	db   $fd                                         ; $76ff: $fd
	rst  $38                                         ; $7700: $ff
	jp   z, Jump_0d3_54a7                            ; $7701: $ca $a7 $54

	ld   hl, $5117                                   ; $7704: $21 $17 $51
	adc  c                                           ; $7707: $89
	inc  d                                           ; $7708: $14
	ld   l, d                                        ; $7709: $6a
	ld   [hl], a                                     ; $770a: $77
	adc  $ea                                         ; $770b: $ce $ea
	rst  $38                                         ; $770d: $ff
	xor  $ff                                         ; $770e: $ee $ff
	reti                                             ; $7710: $d9


	xor  b                                           ; $7711: $a8
	inc  sp                                          ; $7712: $33
	ld   de, $2117                                   ; $7713: $11 $17 $21
	sub  [hl]                                        ; $7716: $96
	dec  d                                           ; $7717: $15
	ld   a, e                                        ; $7718: $7b
	ld   l, c                                        ; $7719: $69
	sbc  $eb                                         ; $771a: $de $eb
	rst  $38                                         ; $771c: $ff
	db   $ec                                         ; $771d: $ec
	rst  $38                                         ; $771e: $ff
	cp   e                                           ; $771f: $bb
	sub  a                                           ; $7720: $97
	ld   [hl-], a                                    ; $7721: $32
	ld   de, $1116                                   ; $7722: $11 $16 $11
	and  e                                           ; $7725: $a3
	inc  d                                           ; $7726: $14
	xor  d                                           ; $7727: $aa
	ld   a, d                                        ; $7728: $7a
	sbc  $dc                                         ; $7729: $de $dc
	rst  $38                                         ; $772b: $ff
	xor  $ff                                         ; $772c: $ee $ff
	jp   c, $3185                                    ; $772e: $da $85 $31

	ld   de, $1167                                   ; $7731: $11 $67 $11
	or   d                                           ; $7734: $b2
	inc  d                                           ; $7735: $14
	call z, $cf8a                                    ; $7736: $cc $8a $cf
	ld   [$fdef], a                                  ; $7739: $ea $ef $fd
	xor  $ca                                         ; $773c: $ee $ca
	ld   h, e                                        ; $773e: $63
	ld   sp, $6311                                   ; $773f: $31 $11 $63
	inc  de                                          ; $7742: $13
	ld   h, h                                        ; $7743: $64
	ld   [hl], $99                                   ; $7744: $36 $99
	cp   e                                           ; $7746: $bb
	cp   l                                           ; $7747: $bd
	db   $ec                                         ; $7748: $ec
	sbc  $ff                                         ; $7749: $de $ff
	cp   $b9                                         ; $774b: $fe $b9
	ld   h, h                                        ; $774d: $64
	ld   [hl-], a                                    ; $774e: $32
	ld   [de], a                                     ; $774f: $12
	sub  h                                           ; $7750: $94
	inc  d                                           ; $7751: $14
	inc  [hl]                                        ; $7752: $34
	ld   d, [hl]                                     ; $7753: $56
	ld   [hl], a                                     ; $7754: $77
	sbc  d                                           ; $7755: $9a
	sbc  e                                           ; $7756: $9b
	call z, $ddee                                    ; $7757: $cc $ee $dd
	db   $ed                                         ; $775a: $ed
	cp   d                                           ; $775b: $ba
	halt                                             ; $775c: $76
	ld   d, e                                        ; $775d: $53
	ld   [de], a                                     ; $775e: $12
	ld   d, l                                        ; $775f: $55
	inc  sp                                          ; $7760: $33
	inc  sp                                          ; $7761: $33
	dec  [hl]                                        ; $7762: $35
	ld   h, [hl]                                     ; $7763: $66
	ld   a, b                                        ; $7764: $78
	sbc  d                                           ; $7765: $9a
	cp   h                                           ; $7766: $bc
	sbc  $ee                                         ; $7767: $de $ee
	rst  $28                                         ; $7769: $ef
	res  5, b                                        ; $776a: $cb $a8
	ld   h, [hl]                                     ; $776c: $66
	ld   d, h                                        ; $776d: $54
	ld   b, [hl]                                     ; $776e: $46
	ld   d, h                                        ; $776f: $54
	ld   b, d                                        ; $7770: $42
	inc  hl                                          ; $7771: $23
	ld   b, l                                        ; $7772: $45
	ld   d, [hl]                                     ; $7773: $56
	ld   a, b                                        ; $7774: $78
	sbc  e                                           ; $7775: $9b
	call $eedd                                       ; $7776: $cd $dd $ee
	call c, $a8db                                    ; $7779: $dc $db $a8
	halt                                             ; $777c: $76
	ld   d, h                                        ; $777d: $54
	ld   b, l                                        ; $777e: $45
	ld   b, e                                        ; $777f: $43
	ld   hl, $2312                                   ; $7780: $21 $12 $23
	ld   d, [hl]                                     ; $7783: $56
	ld   a, b                                        ; $7784: $78
	xor  e                                           ; $7785: $ab
	adc  $ff                                         ; $7786: $ce $ff
	rst  $38                                         ; $7788: $ff
	cp   $cb                                         ; $7789: $fe $cb
	xor  c                                           ; $778b: $a9
	add  [hl]                                        ; $778c: $86
	ld   d, l                                        ; $778d: $55
	ld   b, e                                        ; $778e: $43
	ld   sp, $1101                                   ; $778f: $31 $01 $11
	inc  h                                           ; $7792: $24
	ld   d, a                                        ; $7793: $57
	adc  c                                           ; $7794: $89
	cp   l                                           ; $7795: $bd
	rst  $28                                         ; $7796: $ef
	rst  $38                                         ; $7797: $ff
	rst  $38                                         ; $7798: $ff
	db   $ed                                         ; $7799: $ed
	res  2, a                                        ; $779a: $cb $97
	ld   [hl], l                                     ; $779c: $75
	ld   b, h                                        ; $779d: $44
	ld   b, e                                        ; $779e: $43
	ld   hl, $1111                                   ; $779f: $21 $11 $11
	inc  h                                           ; $77a2: $24
	ld   d, a                                        ; $77a3: $57
	adc  d                                           ; $77a4: $8a
	call z, $ffef                                    ; $77a5: $cc $ef $ff
	rst  $38                                         ; $77a8: $ff
	cp   $ca                                         ; $77a9: $fe $ca
	xor  b                                           ; $77ab: $a8
	ld   h, l                                        ; $77ac: $65
	ld   b, l                                        ; $77ad: $45
	ld   b, e                                        ; $77ae: $43
	ld   de, $1111                                   ; $77af: $11 $11 $11
	inc  [hl]                                        ; $77b2: $34
	ld   h, a                                        ; $77b3: $67
	adc  e                                           ; $77b4: $8b
	sbc  $ff                                         ; $77b5: $de $ff
	rst  $38                                         ; $77b7: $ff
	rst  $38                                         ; $77b8: $ff
	db   $ec                                         ; $77b9: $ec
	jp   z, Jump_0d3_6497                            ; $77ba: $ca $97 $64

	ld   b, h                                        ; $77bd: $44
	ld   [hl-], a                                    ; $77be: $32
	ld   bc, $1211                                   ; $77bf: $01 $11 $12
	inc  [hl]                                        ; $77c2: $34
	ld   h, a                                        ; $77c3: $67
	sbc  e                                           ; $77c4: $9b
	sbc  $ff                                         ; $77c5: $de $ff
	rst  $38                                         ; $77c7: $ff
	rst  $38                                         ; $77c8: $ff
	cp   $ca                                         ; $77c9: $fe $ca
	sub  a                                           ; $77cb: $97
	ld   d, h                                        ; $77cc: $54
	ld   b, h                                        ; $77cd: $44
	ld   hl, $1111                                   ; $77ce: $21 $11 $11
	ld   [de], a                                     ; $77d1: $12
	ld   b, l                                        ; $77d2: $45
	ld   a, b                                        ; $77d3: $78
	cp   h                                           ; $77d4: $bc
	rst  $28                                         ; $77d5: $ef
	rst  $38                                         ; $77d6: $ff
	rst  $38                                         ; $77d7: $ff
	rst  $38                                         ; $77d8: $ff

Call_0d3_77d9:
	db   $ed                                         ; $77d9: $ed
	cp   c                                           ; $77da: $b9
	halt                                             ; $77db: $76
	ld   b, e                                        ; $77dc: $43
	ld   b, e                                        ; $77dd: $43
	ld   hl, $1111                                   ; $77de: $21 $11 $11
	inc  de                                          ; $77e1: $13
	ld   b, [hl]                                     ; $77e2: $46
	ld   a, b                                        ; $77e3: $78
	cp   h                                           ; $77e4: $bc
	rst  $38                                         ; $77e5: $ff
	rst  $38                                         ; $77e6: $ff
	rst  $38                                         ; $77e7: $ff
	rst  $38                                         ; $77e8: $ff
	db   $ec                                         ; $77e9: $ec
	xor  c                                           ; $77ea: $a9
	ld   h, l                                        ; $77eb: $65
	ld   b, h                                        ; $77ec: $44
	ld   b, e                                        ; $77ed: $43
	ld   de, $1111                                   ; $77ee: $11 $11 $11
	inc  h                                           ; $77f1: $24
	ld   d, [hl]                                     ; $77f2: $56
	ld   a, d                                        ; $77f3: $7a
	rst  JumpTable                                         ; $77f4: $df
	rst  $38                                         ; $77f5: $ff
	rst  $38                                         ; $77f6: $ff
	rst  $38                                         ; $77f7: $ff
	rst  $38                                         ; $77f8: $ff
	db   $db                                         ; $77f9: $db
	sub  [hl]                                        ; $77fa: $96
	ld   d, e                                        ; $77fb: $53
	inc  [hl]                                        ; $77fc: $34
	ld   [hl-], a                                    ; $77fd: $32
	ld   de, $1211                                   ; $77fe: $11 $11 $12
	inc  [hl]                                        ; $7801: $34
	ld   h, a                                        ; $7802: $67
	sbc  e                                           ; $7803: $9b
	rst  $28                                         ; $7804: $ef
	rst  $38                                         ; $7805: $ff
	rst  $38                                         ; $7806: $ff
	rst  $38                                         ; $7807: $ff
	cp   $ca                                         ; $7808: $fe $ca
	halt                                             ; $780a: $76
	ld   b, h                                        ; $780b: $44
	ld   d, h                                        ; $780c: $54
	ld   hl, $1111                                   ; $780d: $21 $11 $11
	inc  de                                          ; $7810: $13
	ld   b, l                                        ; $7811: $45
	ld   l, b                                        ; $7812: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7813: $cf
	rst  $38                                         ; $7814: $ff
	rst  $38                                         ; $7815: $ff
	rst  $38                                         ; $7816: $ff
	rst  $38                                         ; $7817: $ff
	db   $ed                                         ; $7818: $ed
	and  a                                           ; $7819: $a7
	ld   h, h                                        ; $781a: $64
	inc  [hl]                                        ; $781b: $34
	ld   b, e                                        ; $781c: $43
	ld   de, $1111                                   ; $781d: $11 $11 $11
	inc  hl                                          ; $7820: $23
	ld   b, [hl]                                     ; $7821: $46
	ld   a, c                                        ; $7822: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7823: $cf
	rst  $38                                         ; $7824: $ff
	rst  $38                                         ; $7825: $ff
	rst  $38                                         ; $7826: $ff
	rst  $38                                         ; $7827: $ff
	db   $fc                                         ; $7828: $fc
	sub  [hl]                                        ; $7829: $96
	ld   b, e                                        ; $782a: $43
	ld   d, l                                        ; $782b: $55
	ld   sp, $1111                                   ; $782c: $31 $11 $11
	inc  de                                          ; $782f: $13
	ld   b, l                                        ; $7830: $45
	ld   d, a                                        ; $7831: $57
	xor  [hl]                                        ; $7832: $ae
	rst  $38                                         ; $7833: $ff
	rst  $38                                         ; $7834: $ff
	rst  $38                                         ; $7835: $ff
	rst  $38                                         ; $7836: $ff
	cp   $b8                                         ; $7837: $fe $b8
	ld   h, h                                        ; $7839: $64
	inc  sp                                          ; $783a: $33
	ld   b, e                                        ; $783b: $43
	ld   de, $1111                                   ; $783c: $11 $11 $11
	inc  de                                          ; $783f: $13
	ld   b, l                                        ; $7840: $45
	ld   a, c                                        ; $7841: $79
	rst  JumpTable                                         ; $7842: $df
	rst  $38                                         ; $7843: $ff
	rst  $38                                         ; $7844: $ff
	rst  $38                                         ; $7845: $ff
	rst  $38                                         ; $7846: $ff
	db   $fc                                         ; $7847: $fc
	sub  l                                           ; $7848: $95
	inc  sp                                          ; $7849: $33
	ld   d, h                                        ; $784a: $54
	ld   hl, $1111                                   ; $784b: $21 $11 $11
	inc  de                                          ; $784e: $13
	ld   d, l                                        ; $784f: $55
	ld   l, b                                        ; $7850: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7851: $cf
	rst  $38                                         ; $7852: $ff
	rst  $38                                         ; $7853: $ff
	rst  $38                                         ; $7854: $ff
	rst  $38                                         ; $7855: $ff
	ld   [$1151], a                                  ; $7856: $ea $51 $11
	ld   d, $7c                                      ; $7859: $16 $7c
	ld   d, c                                        ; $785b: $51
	inc  d                                           ; $785c: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $785d: $cf
	ld   sp, hl                                      ; $785e: $f9
	ld   d, [hl]                                     ; $785f: $56
	sbc  a                                           ; $7860: $9f
	rst  $38                                         ; $7861: $ff
	db   $eb                                         ; $7862: $eb
	rst  JumpTable                                         ; $7863: $df
	ld   a, [$1141]                                  ; $7864: $fa $41 $11
	ld   de, $ff1f                                   ; $7867: $11 $1f $ff
	ld   hl, sp-$78                                  ; $786a: $f8 $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $786c: $cf
	add  c                                           ; $786d: $81
	jr   c, @+$01                                    ; $786e: $38 $ff

	ei                                               ; $7870: $fb
	xor  d                                           ; $7871: $aa
	rst  $38                                         ; $7872: $ff
	rst  $10                                         ; $7873: $d7
	ld   sp, $1111                                   ; $7874: $31 $11 $11
	rst  $38                                         ; $7877: $ff
	rst  $38                                         ; $7878: $ff
	and  e                                           ; $7879: $a3
	ld   [hl], a                                     ; $787a: $77
	and  $15                                         ; $787b: $e6 $15
	rst  $38                                         ; $787d: $ff
	db   $fc                                         ; $787e: $fc
	ld   h, $9f                                      ; $787f: $26 $9f
	ld   a, [$619c]                                  ; $7881: $fa $9c $61
	ld   de, $ff16                                   ; $7884: $11 $16 $ff
	db   $fc                                         ; $7887: $fc
	ld   a, [de]                                     ; $7888: $1a
	ld   l, b                                        ; $7889: $68
	ld   de, $ffbf                                   ; $788a: $11 $bf $ff
	ld   h, c                                        ; $788d: $61
	ld   e, c                                        ; $788e: $59
	ret                                              ; $788f: $c9


	ld   a, a                                        ; $7890: $7f
	rst  $38                                         ; $7891: $ff
	ld   de, $1f11                                   ; $7892: $11 $11 $1f
	rst  $38                                         ; $7895: $ff
	pop  af                                          ; $7896: $f1
	sbc  d                                           ; $7897: $9a
	ld   de, $ff1c                                   ; $7898: $11 $1c $ff
	ld   sp, hl                                      ; $789b: $f9
	ld   [de], a                                     ; $789c: $12
	ld   [hl], e                                     ; $789d: $73
	ld   e, b                                        ; $789e: $58
	rst  $38                                         ; $789f: $ff
	pop  af                                          ; $78a0: $f1
	ld   de, rAUD1LEN                                   ; $78a1: $11 $11 $ff
	rst  $38                                         ; $78a4: $ff
	ld   h, d                                        ; $78a5: $62
	ld   h, c                                        ; $78a6: $61
	ld   de, $ffbf                                   ; $78a7: $11 $bf $ff
	pop  bc                                          ; $78aa: $c1
	ld   [de], a                                     ; $78ab: $12
	dec  d                                           ; $78ac: $15
	rst  JumpTable                                         ; $78ad: $df
	rst  $38                                         ; $78ae: $ff
	ld   hl, $1111                                   ; $78af: $21 $11 $11
	rst  $38                                         ; $78b2: $ff
	rst  $38                                         ; $78b3: $ff
	ld   de, $1411                                   ; $78b4: $11 $11 $14
	rst  $38                                         ; $78b7: $ff
	rst  $38                                         ; $78b8: $ff
	ld   h, c                                        ; $78b9: $61
	ld   de, $ff2e                                   ; $78ba: $11 $2e $ff
	db   $fc                                         ; $78bd: $fc
	ld   de, $1c11                                   ; $78be: $11 $11 $1c
	rst  $38                                         ; $78c1: $ff
	ei                                               ; $78c2: $fb
	ld   de, $2f11                                   ; $78c3: $11 $11 $2f
	rst  $38                                         ; $78c6: $ff
	or   $11                                         ; $78c7: $f6 $11
	ld   [de], a                                     ; $78c9: $12
	xor  a                                           ; $78ca: $af
	rst  $38                                         ; $78cb: $ff
	di                                               ; $78cc: $f3
	ld   de, $1f11                                   ; $78cd: $11 $11 $1f
	rst  $38                                         ; $78d0: $ff
	or   $11                                         ; $78d1: $f6 $11
	ld   [de], a                                     ; $78d3: $12
	cp   a                                           ; $78d4: $bf
	rst  $38                                         ; $78d5: $ff
	di                                               ; $78d6: $f3
	ld   de, $ff16                                   ; $78d7: $11 $16 $ff
	rst  $38                                         ; $78da: $ff
	pop  af                                          ; $78db: $f1
	ld   de, $1f11                                   ; $78dc: $11 $11 $1f
	rst  $38                                         ; $78df: $ff
	pop  af                                          ; $78e0: $f1
	ld   de, $ff17                                   ; $78e1: $11 $17 $ff
	rst  $38                                         ; $78e4: $ff
	sub  c                                           ; $78e5: $91
	ld   de, $ff3b                                   ; $78e6: $11 $3b $ff
	rst  $38                                         ; $78e9: $ff
	add  c                                           ; $78ea: $81
	ld   de, $1f11                                   ; $78eb: $11 $11 $1f
	rst  $38                                         ; $78ee: $ff
	pop  af                                          ; $78ef: $f1
	ld   de, $ff19                                   ; $78f0: $11 $19 $ff
	rst  $38                                         ; $78f3: $ff
	ld   h, c                                        ; $78f4: $61
	ld   de, $ff4f                                   ; $78f5: $11 $4f $ff
	rst  $38                                         ; $78f8: $ff
	ld   h, c                                        ; $78f9: $61
	ld   de, $1f11                                   ; $78fa: $11 $11 $1f
	rst  $38                                         ; $78fd: $ff
	pop  af                                          ; $78fe: $f1
	ld   de, $ff1a                                   ; $78ff: $11 $1a $ff
	rst  $38                                         ; $7902: $ff
	ld   d, c                                        ; $7903: $51
	ld   de, $ff5f                                   ; $7904: $11 $5f $ff
	rst  $38                                         ; $7907: $ff
	ld   [hl], c                                     ; $7908: $71
	ld   de, $1f11                                   ; $7909: $11 $11 $1f
	rst  $38                                         ; $790c: $ff
	pop  af                                          ; $790d: $f1
	ld   de, $ff1b                                   ; $790e: $11 $1b $ff
	rst  $38                                         ; $7911: $ff
	ld   h, c                                        ; $7912: $61
	ld   de, $ff4e                                   ; $7913: $11 $4e $ff
	rst  $38                                         ; $7916: $ff
	ld   sp, $1111                                   ; $7917: $31 $11 $11
	rst  $38                                         ; $791a: $ff
	rst  $38                                         ; $791b: $ff
	add  c                                           ; $791c: $81
	ld   de, $ff4f                                   ; $791d: $11 $4f $ff
	ei                                               ; $7920: $fb
	ld   hl, $6f11                                   ; $7921: $21 $11 $6f
	rst  $38                                         ; $7924: $ff
	pop  de                                          ; $7925: $d1
	ld   de, rAUD1LEN                                   ; $7926: $11 $11 $ff
	rst  $38                                         ; $7929: $ff
	rst  $30                                         ; $792a: $f7
	ld   de, $ff18                                   ; $792b: $11 $18 $ff
	rst  $38                                         ; $792e: $ff
	ld   [hl], c                                     ; $792f: $71
	ld   de, $ff3b                                   ; $7930: $11 $3b $ff
	sub  c                                           ; $7933: $91
	ld   de, $ff1c                                   ; $7934: $11 $1c $ff
	rst  $38                                         ; $7937: $ff
	pop  de                                          ; $7938: $d1
	ld   de, $ff3f                                   ; $7939: $11 $3f $ff
	ld   a, [$1221]                                  ; $793c: $fa $21 $12
	ld   a, l                                        ; $793f: $7d
	ld   [$1811], a                                  ; $7940: $ea $11 $18
	cp   [hl]                                        ; $7943: $be
	rst  $38                                         ; $7944: $ff
	ld   a, [$3e11]                                  ; $7945: $fa $11 $3e
	rst  $38                                         ; $7948: $ff
	db   $fd                                         ; $7949: $fd
	and  c                                           ; $794a: $a1
	ld   de, $a66b                                   ; $794b: $11 $6b $a6
	ld   hl, $9c14                                   ; $794e: $21 $14 $9c
	rst  $38                                         ; $7951: $ff
	db   $fd                                         ; $7952: $fd
	add  c                                           ; $7953: $81
	daa                                              ; $7954: $27
	rst  $28                                         ; $7955: $ef
	rst  $38                                         ; $7956: $ff
	or   h                                           ; $7957: $b4
	ld   de, $9959                                   ; $7958: $11 $59 $99
	ld   b, c                                        ; $795b: $41
	ld   de, $cf67                                   ; $795c: $11 $67 $cf
	rst  $38                                         ; $795f: $ff
	and  $24                                         ; $7960: $e6 $24
	sbc  [hl]                                        ; $7962: $9e
	rst  $28                                         ; $7963: $ef
	call c, CheckIfReachedLastKanjiIdxInCurrTextBox                                    ; $7964: $dc $71 $14
	adc  c                                           ; $7967: $89
	ld   [hl], h                                     ; $7968: $74
	ld   de, $6914                                   ; $7969: $11 $14 $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $796c: $cf
	rst  $38                                         ; $796d: $ff
	ld   [hl], e                                     ; $796e: $73
	adc  c                                           ; $796f: $89
	cp   e                                           ; $7970: $bb
	rst  JumpTable                                         ; $7971: $df
	or   [hl]                                        ; $7972: $b6
	inc  de                                          ; $7973: $13
	ld   a, b                                        ; $7974: $78
	halt                                             ; $7975: $76
	ld   [hl], e                                     ; $7976: $73
	ld   de, $8c47                                   ; $7977: $11 $47 $8c
	rst  JumpTable                                         ; $797a: $df
	ld   hl, sp+$76                                  ; $797b: $f8 $76
	xor  d                                           ; $797d: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $797e: $cf
	jp   z, $3553                                    ; $797f: $ca $53 $35

	ld   d, l                                        ; $7982: $55
	sbc  b                                           ; $7983: $98
	ld   sp, $5905                                   ; $7984: $31 $05 $59
	rst  JumpTable                                         ; $7987: $df
	push af                                          ; $7988: $f5
	ld   [hl], a                                     ; $7989: $77
	sbc  c                                           ; $798a: $99
	adc  a                                           ; $798b: $8f
	db   $fd                                         ; $798c: $fd
	ld   [hl], e                                     ; $798d: $73
	dec  [hl]                                        ; $798e: $35
	inc  de                                          ; $798f: $13
	ld   a, c                                        ; $7990: $79
	ld   [hl], c                                     ; $7991: $71
	ld   [hl+], a                                    ; $7992: $22
	inc  de                                          ; $7993: $13
	rst  JumpTable                                         ; $7994: $df
	cp   $b8                                         ; $7995: $fe $b8
	ld   b, l                                        ; $7997: $45
	sbc  l                                           ; $7998: $9d
	db   $fd                                         ; $7999: $fd
	xor  d                                           ; $799a: $aa
	ld   h, h                                        ; $799b: $64
	ld   de, $9646                                   ; $799c: $11 $46 $96
	ld   d, [hl]                                     ; $799f: $56
	ld   b, c                                        ; $79a0: $41
	ld   c, d                                        ; $79a1: $4a
	rst  $38                                         ; $79a2: $ff
	adc  $a6                                         ; $79a3: $ce $a6
	ld   h, e                                        ; $79a5: $63
	xor  a                                           ; $79a6: $af
	jp   hl                                          ; $79a7: $e9


	sbc  c                                           ; $79a8: $99
	ld   h, c                                        ; $79a9: $61
	dec  d                                           ; $79aa: $15
	sub  a                                           ; $79ab: $97
	ld   [hl-], a                                    ; $79ac: $32
	dec  [hl]                                        ; $79ad: $35
	inc  sp                                          ; $79ae: $33
	adc  a                                           ; $79af: $8f
	db   $fd                                         ; $79b0: $fd
	cp   h                                           ; $79b1: $bc
	or   d                                           ; $79b2: $b2
	ld   e, h                                        ; $79b3: $5c
	db   $eb                                         ; $79b4: $eb
	adc  d                                           ; $79b5: $8a
	sub  [hl]                                        ; $79b6: $96
	ld   sp, $9727                                   ; $79b7: $31 $27 $97
	ld   b, h                                        ; $79ba: $44
	ld   h, e                                        ; $79bb: $63
	dec  d                                           ; $79bc: $15
	rst  $38                                         ; $79bd: $ff
	ld   hl, sp-$66                                  ; $79be: $f8 $9a
	sbc  b                                           ; $79c0: $98
	ld   a, l                                        ; $79c1: $7d
	db   $db                                         ; $79c2: $db
	and  [hl]                                        ; $79c3: $a6
	ld   [hl], l                                     ; $79c4: $75
	ld   de, $8638                                   ; $79c5: $11 $38 $86
	ld   d, e                                        ; $79c8: $53
	ld   [hl], $4d                                   ; $79c9: $36 $4d
	rst  $38                                         ; $79cb: $ff
	ld   a, [$5b89]                                  ; $79cc: $fa $89 $5b
	adc  c                                           ; $79cf: $89
	ld   [$4697], a                                  ; $79d0: $ea $97 $46
	inc  de                                          ; $79d3: $13
	ld   h, [hl]                                     ; $79d4: $66
	ld   h, l                                        ; $79d5: $65
	ld   d, h                                        ; $79d6: $54
	ld   d, e                                        ; $79d7: $53
	cp   a                                           ; $79d8: $bf
	sbc  $bb                                         ; $79d9: $de $bb
	or   l                                           ; $79db: $b5
	sbc  e                                           ; $79dc: $9b
	cp   e                                           ; $79dd: $bb
	sbc  d                                           ; $79de: $9a
	ld   [hl], h                                     ; $79df: $74
	ld   d, h                                        ; $79e0: $54
	inc  h                                           ; $79e1: $24
	ld   [hl], l                                     ; $79e2: $75
	ld   d, [hl]                                     ; $79e3: $56
	ld   h, l                                        ; $79e4: $65
	ld   a, d                                        ; $79e5: $7a
	ld   a, l                                        ; $79e6: $7d
	add  sp, -$35                                    ; $79e7: $e8 $cb
	cp   b                                           ; $79e9: $b8
	ld   a, [hl]                                     ; $79ea: $7e
	and  [hl]                                        ; $79eb: $a6
	adc  e                                           ; $79ec: $8b
	add  e                                           ; $79ed: $83
	ld   l, c                                        ; $79ee: $69
	ld   b, h                                        ; $79ef: $44
	halt                                             ; $79f0: $76
	ld   b, e                                        ; $79f1: $43
	ld   l, c                                        ; $79f2: $69
	ld   a, c                                        ; $79f3: $79
	cp   h                                           ; $79f4: $bc
	cp   b                                           ; $79f5: $b8
	xor  d                                           ; $79f6: $aa
	cp   b                                           ; $79f7: $b8
	xor  l                                           ; $79f8: $ad
	sub  a                                           ; $79f9: $97
	adc  c                                           ; $79fa: $89
	sub  h                                           ; $79fb: $94
	ld   d, a                                        ; $79fc: $57
	ld   d, [hl]                                     ; $79fd: $56
	ld   h, [hl]                                     ; $79fe: $66
	ld   d, [hl]                                     ; $79ff: $56
	ld   l, b                                        ; $7a00: $68
	ld   l, c                                        ; $7a01: $69
	xor  e                                           ; $7a02: $ab
	cp   b                                           ; $7a03: $b8
	xor  d                                           ; $7a04: $aa
	adc  c                                           ; $7a05: $89
	adc  e                                           ; $7a06: $8b
	and  a                                           ; $7a07: $a7
	xor  e                                           ; $7a08: $ab
	add  a                                           ; $7a09: $87
	halt                                             ; $7a0a: $76
	ld   d, [hl]                                     ; $7a0b: $56
	halt                                             ; $7a0c: $76
	ld   a, b                                        ; $7a0d: $78
	halt                                             ; $7a0e: $76
	ld   h, a                                        ; $7a0f: $67
	add  [hl]                                        ; $7a10: $86
	sbc  c                                           ; $7a11: $99
	adc  e                                           ; $7a12: $8b
	sbc  c                                           ; $7a13: $99
	add  a                                           ; $7a14: $87
	xor  b                                           ; $7a15: $a8
	sbc  e                                           ; $7a16: $9b
	adc  c                                           ; $7a17: $89
	add  a                                           ; $7a18: $87
	add  [hl]                                        ; $7a19: $86
	ld   a, b                                        ; $7a1a: $78
	ld   a, c                                        ; $7a1b: $79
	ld   a, b                                        ; $7a1c: $78
	ld   [hl], a                                     ; $7a1d: $77
	sub  a                                           ; $7a1e: $97
	ld   a, b                                        ; $7a1f: $78
	add  a                                           ; $7a20: $87
	ld   a, b                                        ; $7a21: $78
	ld   a, b                                        ; $7a22: $78
	adc  b                                           ; $7a23: $88
	sub  a                                           ; $7a24: $97
	cp   c                                           ; $7a25: $b9
	sbc  b                                           ; $7a26: $98
	adc  c                                           ; $7a27: $89
	add  a                                           ; $7a28: $87
	cp   c                                           ; $7a29: $b9
	ld   l, c                                        ; $7a2a: $69
	adc  c                                           ; $7a2b: $89
	ld   h, a                                        ; $7a2c: $67
	and  a                                           ; $7a2d: $a7
	ld   a, c                                        ; $7a2e: $79
	sub  [hl]                                        ; $7a2f: $96
	ld   l, b                                        ; $7a30: $68
	sub  [hl]                                        ; $7a31: $96
	adc  b                                           ; $7a32: $88
	add  a                                           ; $7a33: $87
	adc  c                                           ; $7a34: $89
	adc  c                                           ; $7a35: $89
	adc  c                                           ; $7a36: $89
	sbc  d                                           ; $7a37: $9a
	sbc  b                                           ; $7a38: $98
	adc  b                                           ; $7a39: $88
	sub  a                                           ; $7a3a: $97
	ld   a, b                                        ; $7a3b: $78
	sub  [hl]                                        ; $7a3c: $96
	ld   a, c                                        ; $7a3d: $79
	ld   [hl], a                                     ; $7a3e: $77
	sbc  c                                           ; $7a3f: $99
	add  a                                           ; $7a40: $87
	ld   a, c                                        ; $7a41: $79
	ld   l, b                                        ; $7a42: $68
	xor  b                                           ; $7a43: $a8
	ld   [hl], a                                     ; $7a44: $77
	sbc  c                                           ; $7a45: $99
	ld   l, c                                        ; $7a46: $69
	and  [hl]                                        ; $7a47: $a6
	adc  b                                           ; $7a48: $88
	sbc  c                                           ; $7a49: $99
	ld   a, b                                        ; $7a4a: $78
	adc  b                                           ; $7a4b: $88
	sub  a                                           ; $7a4c: $97
	adc  c                                           ; $7a4d: $89
	ld   [hl], a                                     ; $7a4e: $77
	adc  c                                           ; $7a4f: $89
	add  a                                           ; $7a50: $87
	sbc  b                                           ; $7a51: $98
	add  a                                           ; $7a52: $87
	sbc  c                                           ; $7a53: $99
	ld   h, a                                        ; $7a54: $67
	sbc  b                                           ; $7a55: $98
	ld   l, b                                        ; $7a56: $68
	sbc  b                                           ; $7a57: $98
	ld   h, a                                        ; $7a58: $67
	add  [hl]                                        ; $7a59: $86
	ld   a, b                                        ; $7a5a: $78
	adc  b                                           ; $7a5b: $88
	adc  b                                           ; $7a5c: $88
	adc  b                                           ; $7a5d: $88
	adc  c                                           ; $7a5e: $89
	sbc  b                                           ; $7a5f: $98
	adc  b                                           ; $7a60: $88
	add  a                                           ; $7a61: $87
	ld   a, b                                        ; $7a62: $78
	ld   [hl], a                                     ; $7a63: $77
	ld   a, b                                        ; $7a64: $78
	sbc  b                                           ; $7a65: $98
	ld   a, b                                        ; $7a66: $78
	adc  b                                           ; $7a67: $88
	adc  b                                           ; $7a68: $88
	add  [hl]                                        ; $7a69: $86
	sbc  b                                           ; $7a6a: $98
	adc  b                                           ; $7a6b: $88
	ld   a, c                                        ; $7a6c: $79
	ld   a, b                                        ; $7a6d: $78
	sbc  b                                           ; $7a6e: $98
	ld   a, b                                        ; $7a6f: $78
	sub  [hl]                                        ; $7a70: $96
	add  a                                           ; $7a71: $87
	add  a                                           ; $7a72: $87
	ld   a, d                                        ; $7a73: $7a
	ld   a, b                                        ; $7a74: $78
	ld   a, b                                        ; $7a75: $78
	ld   [hl], a                                     ; $7a76: $77
	sub  a                                           ; $7a77: $97
	add  a                                           ; $7a78: $87
	sbc  b                                           ; $7a79: $98
	adc  b                                           ; $7a7a: $88
	sbc  b                                           ; $7a7b: $98
	adc  c                                           ; $7a7c: $89
	adc  c                                           ; $7a7d: $89
	adc  b                                           ; $7a7e: $88
	ld   [hl], a                                     ; $7a7f: $77
	sub  a                                           ; $7a80: $97
	add  a                                           ; $7a81: $87
	ld   a, b                                        ; $7a82: $78
	adc  b                                           ; $7a83: $88
	ld   [hl], a                                     ; $7a84: $77
	ld   a, b                                        ; $7a85: $78
	adc  c                                           ; $7a86: $89
	adc  b                                           ; $7a87: $88
	sub  a                                           ; $7a88: $97
	sbc  c                                           ; $7a89: $99
	adc  c                                           ; $7a8a: $89
	adc  b                                           ; $7a8b: $88
	add  a                                           ; $7a8c: $87
	adc  b                                           ; $7a8d: $88
	adc  b                                           ; $7a8e: $88
	add  a                                           ; $7a8f: $87
	ld   a, b                                        ; $7a90: $78
	adc  b                                           ; $7a91: $88
	ld   a, c                                        ; $7a92: $79
	sbc  b                                           ; $7a93: $98
	sub  a                                           ; $7a94: $97
	sbc  b                                           ; $7a95: $98
	adc  b                                           ; $7a96: $88
	ld   a, c                                        ; $7a97: $79
	sub  a                                           ; $7a98: $97
	sbc  b                                           ; $7a99: $98
	ld   a, c                                        ; $7a9a: $79
	ld   a, c                                        ; $7a9b: $79
	ld   [hl], a                                     ; $7a9c: $77
	adc  b                                           ; $7a9d: $88
	sub  a                                           ; $7a9e: $97
	sbc  b                                           ; $7a9f: $98
	ld   a, c                                        ; $7aa0: $79
	adc  c                                           ; $7aa1: $89
	adc  b                                           ; $7aa2: $88
	adc  c                                           ; $7aa3: $89
	adc  b                                           ; $7aa4: $88
	ld   a, c                                        ; $7aa5: $79
	add  [hl]                                        ; $7aa6: $86
	ld   a, c                                        ; $7aa7: $79
	ld   [hl], a                                     ; $7aa8: $77
	add  a                                           ; $7aa9: $87
	sub  a                                           ; $7aaa: $97
	adc  b                                           ; $7aab: $88
	add  a                                           ; $7aac: $87
	adc  c                                           ; $7aad: $89
	ld   [hl], a                                     ; $7aae: $77
	sbc  b                                           ; $7aaf: $98
	ld   a, b                                        ; $7ab0: $78
	adc  b                                           ; $7ab1: $88
	ld   a, c                                        ; $7ab2: $79
	adc  b                                           ; $7ab3: $88
	ld   a, c                                        ; $7ab4: $79
	sub  [hl]                                        ; $7ab5: $96
	xor  b                                           ; $7ab6: $a8
	ld   a, b                                        ; $7ab7: $78
	ld   a, c                                        ; $7ab8: $79
	ld   a, b                                        ; $7ab9: $78
	sub  a                                           ; $7aba: $97
	ld   a, c                                        ; $7abb: $79
	ld   a, b                                        ; $7abc: $78
	adc  b                                           ; $7abd: $88
	ld   [hl], a                                     ; $7abe: $77
	and  a                                           ; $7abf: $a7
	adc  c                                           ; $7ac0: $89
	ld   a, c                                        ; $7ac1: $79
	ld   a, c                                        ; $7ac2: $79
	ld   a, b                                        ; $7ac3: $78
	add  a                                           ; $7ac4: $87
	sub  [hl]                                        ; $7ac5: $96
	sub  a                                           ; $7ac6: $97
	ld   l, d                                        ; $7ac7: $6a
	ld   [hl], a                                     ; $7ac8: $77
	adc  b                                           ; $7ac9: $88
	sub  [hl]                                        ; $7aca: $96
	adc  c                                           ; $7acb: $89
	ld   l, d                                        ; $7acc: $6a
	ld   a, b                                        ; $7acd: $78
	sub  [hl]                                        ; $7ace: $96
	sub  a                                           ; $7acf: $97
	sub  a                                           ; $7ad0: $97
	sbc  b                                           ; $7ad1: $98
	sub  [hl]                                        ; $7ad2: $96
	adc  d                                           ; $7ad3: $8a
	ld   e, d                                        ; $7ad4: $5a
	ld   a, b                                        ; $7ad5: $78
	ld   l, b                                        ; $7ad6: $68
	sub  [hl]                                        ; $7ad7: $96
	and  a                                           ; $7ad8: $a7
	add  [hl]                                        ; $7ad9: $86
	and  a                                           ; $7ada: $a7
	adc  b                                           ; $7adb: $88
	ld   a, d                                        ; $7adc: $7a
	ld   a, c                                        ; $7add: $79
	ld   a, c                                        ; $7ade: $79
	ld   a, c                                        ; $7adf: $79
	ld   [hl], a                                     ; $7ae0: $77
	and  [hl]                                        ; $7ae1: $a6
	sub  [hl]                                        ; $7ae2: $96
	ld   a, c                                        ; $7ae3: $79
	ld   a, c                                        ; $7ae4: $79
	adc  c                                           ; $7ae5: $89
	ld   a, b                                        ; $7ae6: $78
	adc  b                                           ; $7ae7: $88
	adc  b                                           ; $7ae8: $88
	ld   a, c                                        ; $7ae9: $79
	add  a                                           ; $7aea: $87
	and  a                                           ; $7aeb: $a7
	adc  c                                           ; $7aec: $89
	ld   [hl], a                                     ; $7aed: $77
	sub  a                                           ; $7aee: $97
	sbc  b                                           ; $7aef: $98
	adc  c                                           ; $7af0: $89
	ld   l, d                                        ; $7af1: $6a
	add  a                                           ; $7af2: $87
	and  a                                           ; $7af3: $a7
	sub  a                                           ; $7af4: $97
	ld   a, e                                        ; $7af5: $7b
	ld   l, b                                        ; $7af6: $68
	add  [hl]                                        ; $7af7: $86
	sub  a                                           ; $7af8: $97
	sbc  c                                           ; $7af9: $99
	ld   a, d                                        ; $7afa: $7a
	ld   [hl], a                                     ; $7afb: $77
	sub  [hl]                                        ; $7afc: $96
	and  a                                           ; $7afd: $a7
	adc  c                                           ; $7afe: $89
	adc  b                                           ; $7aff: $88
	adc  c                                           ; $7b00: $89
	ld   l, c                                        ; $7b01: $69
	ld   a, c                                        ; $7b02: $79
	add  a                                           ; $7b03: $87
	and  [hl]                                        ; $7b04: $a6
	sbc  c                                           ; $7b05: $99
	ld   l, d                                        ; $7b06: $6a
	ld   a, c                                        ; $7b07: $79
	add  a                                           ; $7b08: $87
	sbc  b                                           ; $7b09: $98
	ld   a, b                                        ; $7b0a: $78
	sub  a                                           ; $7b0b: $97
	ld   a, c                                        ; $7b0c: $79
	adc  c                                           ; $7b0d: $89
	add  a                                           ; $7b0e: $87
	and  a                                           ; $7b0f: $a7
	ld   a, c                                        ; $7b10: $79
	ld   a, c                                        ; $7b11: $79
	ld   a, b                                        ; $7b12: $78
	and  [hl]                                        ; $7b13: $a6
	sbc  c                                           ; $7b14: $99
	ld   l, d                                        ; $7b15: $6a
	ld   a, b                                        ; $7b16: $78
	sub  l                                           ; $7b17: $95
	xor  b                                           ; $7b18: $a8
	adc  b                                           ; $7b19: $88
	ld   a, c                                        ; $7b1a: $79
	ld   a, b                                        ; $7b1b: $78
	adc  b                                           ; $7b1c: $88
	adc  b                                           ; $7b1d: $88
	sbc  b                                           ; $7b1e: $98
	add  a                                           ; $7b1f: $87
	sub  a                                           ; $7b20: $97
	adc  b                                           ; $7b21: $88
	adc  b                                           ; $7b22: $88
	sub  a                                           ; $7b23: $97
	adc  b                                           ; $7b24: $88
	ld   a, c                                        ; $7b25: $79
	ld   l, d                                        ; $7b26: $6a
	add  a                                           ; $7b27: $87
	sbc  b                                           ; $7b28: $98
	ld   a, b                                        ; $7b29: $78
	sbc  b                                           ; $7b2a: $98
	add  a                                           ; $7b2b: $87
	and  a                                           ; $7b2c: $a7
	sbc  c                                           ; $7b2d: $99
	ld   a, d                                        ; $7b2e: $7a
	ld   l, d                                        ; $7b2f: $6a
	ld   [hl], a                                     ; $7b30: $77
	and  a                                           ; $7b31: $a7
	sbc  b                                           ; $7b32: $98
	ld   a, b                                        ; $7b33: $78
	add  a                                           ; $7b34: $87
	sub  a                                           ; $7b35: $97
	sub  a                                           ; $7b36: $97
	sbc  b                                           ; $7b37: $98
	adc  b                                           ; $7b38: $88
	adc  d                                           ; $7b39: $8a
	ld   l, d                                        ; $7b3a: $6a
	adc  b                                           ; $7b3b: $88
	adc  b                                           ; $7b3c: $88
	sub  [hl]                                        ; $7b3d: $96
	sbc  b                                           ; $7b3e: $98
	ld   a, b                                        ; $7b3f: $78
	ld   a, c                                        ; $7b40: $79
	ld   h, a                                        ; $7b41: $67
	and  [hl]                                        ; $7b42: $a6
	and  a                                           ; $7b43: $a7
	sbc  b                                           ; $7b44: $98
	ld   a, d                                        ; $7b45: $7a
	ld   a, c                                        ; $7b46: $79
	adc  b                                           ; $7b47: $88
	adc  b                                           ; $7b48: $88
	adc  c                                           ; $7b49: $89
	ld   a, c                                        ; $7b4a: $79
	add  a                                           ; $7b4b: $87
	add  a                                           ; $7b4c: $87
	sub  a                                           ; $7b4d: $97
	add  a                                           ; $7b4e: $87
	adc  c                                           ; $7b4f: $89
	ld   a, b                                        ; $7b50: $78
	ld   a, c                                        ; $7b51: $79
	ld   a, b                                        ; $7b52: $78
	and  a                                           ; $7b53: $a7
	sbc  c                                           ; $7b54: $99
	adc  b                                           ; $7b55: $88
	add  a                                           ; $7b56: $87
	sbc  c                                           ; $7b57: $99
	ld   a, c                                        ; $7b58: $79
	ld   a, b                                        ; $7b59: $78
	add  a                                           ; $7b5a: $87
	sub  [hl]                                        ; $7b5b: $96
	adc  b                                           ; $7b5c: $88
	ld   a, d                                        ; $7b5d: $7a
	ld   a, c                                        ; $7b5e: $79
	adc  b                                           ; $7b5f: $88
	adc  b                                           ; $7b60: $88
	ld   a, c                                        ; $7b61: $79
	ld   a, b                                        ; $7b62: $78
	sub  [hl]                                        ; $7b63: $96
	and  [hl]                                        ; $7b64: $a6
	adc  b                                           ; $7b65: $88
	adc  c                                           ; $7b66: $89
	ld   a, d                                        ; $7b67: $7a
	ld   l, b                                        ; $7b68: $68
	ld   a, b                                        ; $7b69: $78
	adc  b                                           ; $7b6a: $88
	sbc  c                                           ; $7b6b: $99
	ld   a, c                                        ; $7b6c: $79
	sub  a                                           ; $7b6d: $97
	sub  a                                           ; $7b6e: $97
	adc  c                                           ; $7b6f: $89
	adc  b                                           ; $7b70: $88
	adc  b                                           ; $7b71: $88
	adc  b                                           ; $7b72: $88
	ld   a, b                                        ; $7b73: $78
	sub  a                                           ; $7b74: $97
	add  a                                           ; $7b75: $87
	adc  b                                           ; $7b76: $88
	adc  b                                           ; $7b77: $88
	ld   a, c                                        ; $7b78: $79
	ld   a, b                                        ; $7b79: $78
	ld   a, b                                        ; $7b7a: $78
	adc  b                                           ; $7b7b: $88
	add  a                                           ; $7b7c: $87
	sub  a                                           ; $7b7d: $97
	sbc  b                                           ; $7b7e: $98
	adc  b                                           ; $7b7f: $88
	ld   a, b                                        ; $7b80: $78
	ld   a, b                                        ; $7b81: $78
	sub  a                                           ; $7b82: $97
	sbc  b                                           ; $7b83: $98
	adc  b                                           ; $7b84: $88
	ld   a, c                                        ; $7b85: $79
	ld   a, c                                        ; $7b86: $79
	add  a                                           ; $7b87: $87
	adc  c                                           ; $7b88: $89
	ld   a, c                                        ; $7b89: $79
	add  a                                           ; $7b8a: $87
	sub  [hl]                                        ; $7b8b: $96
	adc  c                                           ; $7b8c: $89
	ld   a, c                                        ; $7b8d: $79
	ld   a, b                                        ; $7b8e: $78
	sub  a                                           ; $7b8f: $97
	sbc  b                                           ; $7b90: $98
	ld   a, c                                        ; $7b91: $79
	ld   a, b                                        ; $7b92: $78
	ld   [hl], a                                     ; $7b93: $77
	sub  a                                           ; $7b94: $97
	sbc  b                                           ; $7b95: $98
	add  a                                           ; $7b96: $87
	sbc  c                                           ; $7b97: $99
	ld   a, c                                        ; $7b98: $79
	ld   a, d                                        ; $7b99: $7a
	ld   [hl], a                                     ; $7b9a: $77
	add  a                                           ; $7b9b: $87
	adc  b                                           ; $7b9c: $88
	adc  b                                           ; $7b9d: $88
	sub  a                                           ; $7b9e: $97
	sub  a                                           ; $7b9f: $97
	adc  b                                           ; $7ba0: $88
	adc  c                                           ; $7ba1: $89
	ld   a, c                                        ; $7ba2: $79
	adc  c                                           ; $7ba3: $89
	ld   a, c                                        ; $7ba4: $79
	adc  b                                           ; $7ba5: $88
	adc  b                                           ; $7ba6: $88
	sub  a                                           ; $7ba7: $97
	add  a                                           ; $7ba8: $87
	sub  a                                           ; $7ba9: $97
	adc  c                                           ; $7baa: $89
	adc  b                                           ; $7bab: $88
	adc  c                                           ; $7bac: $89
	ld   a, b                                        ; $7bad: $78
	add  a                                           ; $7bae: $87
	sub  a                                           ; $7baf: $97
	adc  b                                           ; $7bb0: $88
	ld   a, b                                        ; $7bb1: $78
	adc  b                                           ; $7bb2: $88
	sub  a                                           ; $7bb3: $97
	adc  b                                           ; $7bb4: $88
	adc  c                                           ; $7bb5: $89
	ld   a, c                                        ; $7bb6: $79
	adc  b                                           ; $7bb7: $88
	sub  a                                           ; $7bb8: $97
	adc  b                                           ; $7bb9: $88
	adc  c                                           ; $7bba: $89
	ld   a, b                                        ; $7bbb: $78
	sbc  b                                           ; $7bbc: $98
	adc  b                                           ; $7bbd: $88
	adc  b                                           ; $7bbe: $88
	adc  b                                           ; $7bbf: $88
	ld   a, c                                        ; $7bc0: $79
	sub  a                                           ; $7bc1: $97
	adc  b                                           ; $7bc2: $88
	ld   a, b                                        ; $7bc3: $78
	adc  c                                           ; $7bc4: $89
	adc  b                                           ; $7bc5: $88
	adc  c                                           ; $7bc6: $89
	ld   a, b                                        ; $7bc7: $78
	add  a                                           ; $7bc8: $87
	adc  b                                           ; $7bc9: $88
	adc  b                                           ; $7bca: $88
	adc  b                                           ; $7bcb: $88
	adc  b                                           ; $7bcc: $88
	adc  c                                           ; $7bcd: $89
	ld   a, b                                        ; $7bce: $78
	adc  b                                           ; $7bcf: $88
	adc  b                                           ; $7bd0: $88
	adc  b                                           ; $7bd1: $88
	adc  b                                           ; $7bd2: $88
	add  a                                           ; $7bd3: $87
	sbc  b                                           ; $7bd4: $98
	adc  b                                           ; $7bd5: $88
	adc  b                                           ; $7bd6: $88
	adc  b                                           ; $7bd7: $88
	ld   [hl], a                                     ; $7bd8: $77
	xor  c                                           ; $7bd9: $a9
	ld   a, b                                        ; $7bda: $78
	ld   [hl], a                                     ; $7bdb: $77
	adc  b                                           ; $7bdc: $88
	adc  b                                           ; $7bdd: $88
	adc  b                                           ; $7bde: $88
	add  a                                           ; $7bdf: $87
	adc  b                                           ; $7be0: $88
	adc  b                                           ; $7be1: $88
	adc  b                                           ; $7be2: $88
	adc  b                                           ; $7be3: $88
	adc  c                                           ; $7be4: $89
	ld   a, b                                        ; $7be5: $78
	adc  b                                           ; $7be6: $88
	adc  b                                           ; $7be7: $88
	adc  b                                           ; $7be8: $88
	adc  b                                           ; $7be9: $88
	adc  b                                           ; $7bea: $88
	adc  b                                           ; $7beb: $88
	adc  b                                           ; $7bec: $88
	adc  b                                           ; $7bed: $88
	adc  b                                           ; $7bee: $88
	adc  b                                           ; $7bef: $88
	adc  b                                           ; $7bf0: $88
	adc  b                                           ; $7bf1: $88
	adc  b                                           ; $7bf2: $88
	adc  b                                           ; $7bf3: $88
	adc  b                                           ; $7bf4: $88
	adc  b                                           ; $7bf5: $88
	adc  b                                           ; $7bf6: $88
	adc  b                                           ; $7bf7: $88
	adc  b                                           ; $7bf8: $88
	adc  b                                           ; $7bf9: $88
	adc  b                                           ; $7bfa: $88
	adc  b                                           ; $7bfb: $88
	adc  b                                           ; $7bfc: $88
	adc  b                                           ; $7bfd: $88
	adc  b                                           ; $7bfe: $88
	adc  b                                           ; $7bff: $88
	adc  b                                           ; $7c00: $88
	adc  b                                           ; $7c01: $88
	adc  b                                           ; $7c02: $88
	adc  b                                           ; $7c03: $88
	adc  b                                           ; $7c04: $88
	adc  b                                           ; $7c05: $88
	adc  b                                           ; $7c06: $88
	adc  b                                           ; $7c07: $88
	adc  b                                           ; $7c08: $88
	adc  b                                           ; $7c09: $88
	adc  b                                           ; $7c0a: $88
	adc  b                                           ; $7c0b: $88
	adc  b                                           ; $7c0c: $88
	adc  b                                           ; $7c0d: $88
	adc  b                                           ; $7c0e: $88
	adc  b                                           ; $7c0f: $88
	adc  b                                           ; $7c10: $88
	adc  b                                           ; $7c11: $88
	adc  b                                           ; $7c12: $88
	adc  b                                           ; $7c13: $88
	adc  b                                           ; $7c14: $88
	adc  b                                           ; $7c15: $88
	adc  b                                           ; $7c16: $88
	adc  b                                           ; $7c17: $88
	adc  b                                           ; $7c18: $88
	adc  b                                           ; $7c19: $88
	adc  b                                           ; $7c1a: $88
	adc  b                                           ; $7c1b: $88
	adc  b                                           ; $7c1c: $88
	adc  b                                           ; $7c1d: $88
	adc  b                                           ; $7c1e: $88
	adc  b                                           ; $7c1f: $88
	adc  b                                           ; $7c20: $88
	adc  b                                           ; $7c21: $88
	adc  b                                           ; $7c22: $88
	adc  b                                           ; $7c23: $88
	adc  b                                           ; $7c24: $88
	adc  b                                           ; $7c25: $88
	adc  b                                           ; $7c26: $88
	adc  b                                           ; $7c27: $88
	adc  b                                           ; $7c28: $88
	adc  b                                           ; $7c29: $88
	adc  b                                           ; $7c2a: $88
	adc  b                                           ; $7c2b: $88
	adc  b                                           ; $7c2c: $88
	adc  b                                           ; $7c2d: $88
	adc  b                                           ; $7c2e: $88
	adc  b                                           ; $7c2f: $88
	adc  b                                           ; $7c30: $88
	adc  b                                           ; $7c31: $88
	adc  b                                           ; $7c32: $88
	adc  b                                           ; $7c33: $88
	adc  b                                           ; $7c34: $88
	adc  b                                           ; $7c35: $88
	adc  b                                           ; $7c36: $88
	adc  b                                           ; $7c37: $88
	adc  b                                           ; $7c38: $88
	adc  b                                           ; $7c39: $88
	adc  b                                           ; $7c3a: $88
	adc  b                                           ; $7c3b: $88
	adc  b                                           ; $7c3c: $88
	adc  b                                           ; $7c3d: $88
	adc  b                                           ; $7c3e: $88
	adc  b                                           ; $7c3f: $88
	adc  b                                           ; $7c40: $88
	adc  b                                           ; $7c41: $88
	adc  b                                           ; $7c42: $88
	adc  b                                           ; $7c43: $88
	adc  b                                           ; $7c44: $88
	adc  b                                           ; $7c45: $88
	adc  b                                           ; $7c46: $88
	adc  b                                           ; $7c47: $88
	adc  b                                           ; $7c48: $88
	adc  b                                           ; $7c49: $88
	adc  b                                           ; $7c4a: $88
	adc  b                                           ; $7c4b: $88
	adc  b                                           ; $7c4c: $88
	adc  b                                           ; $7c4d: $88
	adc  b                                           ; $7c4e: $88
	adc  b                                           ; $7c4f: $88
	adc  b                                           ; $7c50: $88
	adc  b                                           ; $7c51: $88
	adc  b                                           ; $7c52: $88
	adc  b                                           ; $7c53: $88
	adc  b                                           ; $7c54: $88
	adc  b                                           ; $7c55: $88
	adc  b                                           ; $7c56: $88
	adc  b                                           ; $7c57: $88
	adc  b                                           ; $7c58: $88
	adc  b                                           ; $7c59: $88
	adc  b                                           ; $7c5a: $88
	adc  b                                           ; $7c5b: $88
	adc  b                                           ; $7c5c: $88
	adc  b                                           ; $7c5d: $88
	adc  b                                           ; $7c5e: $88
	adc  b                                           ; $7c5f: $88
	adc  b                                           ; $7c60: $88
	adc  b                                           ; $7c61: $88
	adc  b                                           ; $7c62: $88
	adc  b                                           ; $7c63: $88
	adc  b                                           ; $7c64: $88
	adc  b                                           ; $7c65: $88
	adc  b                                           ; $7c66: $88
	adc  b                                           ; $7c67: $88
	adc  b                                           ; $7c68: $88
	adc  b                                           ; $7c69: $88
	adc  b                                           ; $7c6a: $88
	adc  b                                           ; $7c6b: $88
	adc  b                                           ; $7c6c: $88
	adc  b                                           ; $7c6d: $88
	adc  b                                           ; $7c6e: $88
	adc  b                                           ; $7c6f: $88
	adc  b                                           ; $7c70: $88
	adc  b                                           ; $7c71: $88
	adc  b                                           ; $7c72: $88
	adc  b                                           ; $7c73: $88
	adc  b                                           ; $7c74: $88
	adc  b                                           ; $7c75: $88
	adc  b                                           ; $7c76: $88
	adc  b                                           ; $7c77: $88
	adc  b                                           ; $7c78: $88
	adc  b                                           ; $7c79: $88
	adc  b                                           ; $7c7a: $88
	adc  b                                           ; $7c7b: $88
	adc  b                                           ; $7c7c: $88
	adc  b                                           ; $7c7d: $88
	adc  b                                           ; $7c7e: $88
	adc  b                                           ; $7c7f: $88
	adc  b                                           ; $7c80: $88
	adc  b                                           ; $7c81: $88
	adc  b                                           ; $7c82: $88
	adc  b                                           ; $7c83: $88
	adc  b                                           ; $7c84: $88
	adc  b                                           ; $7c85: $88
	adc  b                                           ; $7c86: $88
	adc  b                                           ; $7c87: $88
	adc  b                                           ; $7c88: $88
	adc  b                                           ; $7c89: $88
	adc  b                                           ; $7c8a: $88
	adc  b                                           ; $7c8b: $88
	adc  b                                           ; $7c8c: $88
	adc  b                                           ; $7c8d: $88
	adc  b                                           ; $7c8e: $88
	adc  b                                           ; $7c8f: $88
	adc  b                                           ; $7c90: $88
	adc  b                                           ; $7c91: $88
	adc  b                                           ; $7c92: $88
	adc  b                                           ; $7c93: $88
	adc  b                                           ; $7c94: $88
	adc  b                                           ; $7c95: $88
	adc  b                                           ; $7c96: $88
	adc  b                                           ; $7c97: $88
	adc  b                                           ; $7c98: $88
	adc  b                                           ; $7c99: $88
	adc  b                                           ; $7c9a: $88
	adc  b                                           ; $7c9b: $88
	adc  b                                           ; $7c9c: $88
	adc  b                                           ; $7c9d: $88
	adc  b                                           ; $7c9e: $88
	adc  b                                           ; $7c9f: $88
	adc  b                                           ; $7ca0: $88
	adc  b                                           ; $7ca1: $88
	adc  b                                           ; $7ca2: $88
	adc  b                                           ; $7ca3: $88
	adc  b                                           ; $7ca4: $88
	adc  b                                           ; $7ca5: $88
	adc  b                                           ; $7ca6: $88
	adc  b                                           ; $7ca7: $88
	adc  b                                           ; $7ca8: $88
	adc  b                                           ; $7ca9: $88
	adc  b                                           ; $7caa: $88
	adc  b                                           ; $7cab: $88
	adc  b                                           ; $7cac: $88
	adc  b                                           ; $7cad: $88
	adc  b                                           ; $7cae: $88
	adc  b                                           ; $7caf: $88
	adc  b                                           ; $7cb0: $88
	adc  b                                           ; $7cb1: $88
	adc  b                                           ; $7cb2: $88
	adc  b                                           ; $7cb3: $88
	adc  b                                           ; $7cb4: $88
	adc  b                                           ; $7cb5: $88
	adc  b                                           ; $7cb6: $88
	adc  b                                           ; $7cb7: $88
	adc  b                                           ; $7cb8: $88
	adc  b                                           ; $7cb9: $88
	adc  b                                           ; $7cba: $88
	adc  b                                           ; $7cbb: $88
	adc  b                                           ; $7cbc: $88
	adc  b                                           ; $7cbd: $88
	adc  b                                           ; $7cbe: $88
	adc  b                                           ; $7cbf: $88
	adc  b                                           ; $7cc0: $88
	adc  b                                           ; $7cc1: $88
	adc  b                                           ; $7cc2: $88
	adc  b                                           ; $7cc3: $88
	adc  b                                           ; $7cc4: $88
	adc  b                                           ; $7cc5: $88
	adc  b                                           ; $7cc6: $88
	adc  b                                           ; $7cc7: $88
	adc  b                                           ; $7cc8: $88
	adc  b                                           ; $7cc9: $88
	adc  b                                           ; $7cca: $88
	adc  b                                           ; $7ccb: $88
	adc  b                                           ; $7ccc: $88
	adc  b                                           ; $7ccd: $88
	adc  b                                           ; $7cce: $88
	adc  b                                           ; $7ccf: $88
	adc  b                                           ; $7cd0: $88
	adc  b                                           ; $7cd1: $88
	adc  b                                           ; $7cd2: $88
	adc  b                                           ; $7cd3: $88
	adc  b                                           ; $7cd4: $88
	adc  b                                           ; $7cd5: $88
	adc  b                                           ; $7cd6: $88
	adc  b                                           ; $7cd7: $88
	adc  b                                           ; $7cd8: $88
	adc  b                                           ; $7cd9: $88
	adc  b                                           ; $7cda: $88
	adc  b                                           ; $7cdb: $88
	adc  b                                           ; $7cdc: $88
	adc  b                                           ; $7cdd: $88
	adc  b                                           ; $7cde: $88
	adc  b                                           ; $7cdf: $88
	adc  b                                           ; $7ce0: $88
	adc  b                                           ; $7ce1: $88
	adc  b                                           ; $7ce2: $88
	adc  b                                           ; $7ce3: $88
	adc  b                                           ; $7ce4: $88
	adc  b                                           ; $7ce5: $88
	adc  b                                           ; $7ce6: $88
	adc  b                                           ; $7ce7: $88
	adc  b                                           ; $7ce8: $88
	adc  b                                           ; $7ce9: $88
	adc  b                                           ; $7cea: $88
	adc  b                                           ; $7ceb: $88
	adc  b                                           ; $7cec: $88
	adc  b                                           ; $7ced: $88
	adc  b                                           ; $7cee: $88
	adc  b                                           ; $7cef: $88
	adc  b                                           ; $7cf0: $88
	adc  b                                           ; $7cf1: $88
	adc  b                                           ; $7cf2: $88
	adc  b                                           ; $7cf3: $88
	adc  b                                           ; $7cf4: $88
	adc  b                                           ; $7cf5: $88
	adc  b                                           ; $7cf6: $88
	adc  b                                           ; $7cf7: $88
	adc  b                                           ; $7cf8: $88
	adc  b                                           ; $7cf9: $88
	adc  b                                           ; $7cfa: $88
	adc  b                                           ; $7cfb: $88
	adc  b                                           ; $7cfc: $88
	adc  b                                           ; $7cfd: $88
	adc  b                                           ; $7cfe: $88
	adc  b                                           ; $7cff: $88
	adc  b                                           ; $7d00: $88
	adc  b                                           ; $7d01: $88
	adc  b                                           ; $7d02: $88
	adc  b                                           ; $7d03: $88
	adc  b                                           ; $7d04: $88
	adc  b                                           ; $7d05: $88
	adc  b                                           ; $7d06: $88
	adc  b                                           ; $7d07: $88
	adc  b                                           ; $7d08: $88
	adc  b                                           ; $7d09: $88
	adc  b                                           ; $7d0a: $88
	adc  b                                           ; $7d0b: $88
	adc  b                                           ; $7d0c: $88
	adc  b                                           ; $7d0d: $88
	adc  b                                           ; $7d0e: $88
	adc  b                                           ; $7d0f: $88
	adc  b                                           ; $7d10: $88
	adc  b                                           ; $7d11: $88
	adc  b                                           ; $7d12: $88
	adc  b                                           ; $7d13: $88
	adc  b                                           ; $7d14: $88
	adc  b                                           ; $7d15: $88
	adc  b                                           ; $7d16: $88
	adc  b                                           ; $7d17: $88
	adc  b                                           ; $7d18: $88
	adc  b                                           ; $7d19: $88
	adc  b                                           ; $7d1a: $88
	adc  b                                           ; $7d1b: $88
	adc  b                                           ; $7d1c: $88
	adc  b                                           ; $7d1d: $88
	adc  b                                           ; $7d1e: $88
	sbc  c                                           ; $7d1f: $99
	adc  b                                           ; $7d20: $88
	sbc  c                                           ; $7d21: $99
	sbc  c                                           ; $7d22: $99
	adc  b                                           ; $7d23: $88
	adc  c                                           ; $7d24: $89
	sbc  b                                           ; $7d25: $98
	adc  b                                           ; $7d26: $88
	adc  b                                           ; $7d27: $88
	adc  b                                           ; $7d28: $88
	add  a                                           ; $7d29: $87
	ld   [hl], a                                     ; $7d2a: $77
	ld   [hl], a                                     ; $7d2b: $77
	add  a                                           ; $7d2c: $87
	ld   a, b                                        ; $7d2d: $78
	adc  b                                           ; $7d2e: $88
	adc  b                                           ; $7d2f: $88
	adc  b                                           ; $7d30: $88
	adc  b                                           ; $7d31: $88
	sbc  c                                           ; $7d32: $99
	ld   [hl], a                                     ; $7d33: $77
	ld   [hl], a                                     ; $7d34: $77
	ld   [hl], a                                     ; $7d35: $77
	ld   [hl], a                                     ; $7d36: $77
	add  a                                           ; $7d37: $87
	ld   a, b                                        ; $7d38: $78
	sbc  c                                           ; $7d39: $99
	adc  b                                           ; $7d3a: $88
	adc  c                                           ; $7d3b: $89
	adc  b                                           ; $7d3c: $88
	adc  c                                           ; $7d3d: $89
	adc  b                                           ; $7d3e: $88
	adc  b                                           ; $7d3f: $88
	sbc  b                                           ; $7d40: $98
	ld   [hl], a                                     ; $7d41: $77
	ld   [hl], a                                     ; $7d42: $77
	ld   [hl], a                                     ; $7d43: $77
	ld   h, [hl]                                     ; $7d44: $66
	ld   h, [hl]                                     ; $7d45: $66
	ld   d, l                                        ; $7d46: $55
	ld   d, [hl]                                     ; $7d47: $56
	ld   h, a                                        ; $7d48: $67
	adc  c                                           ; $7d49: $89
	sbc  c                                           ; $7d4a: $99
	xor  d                                           ; $7d4b: $aa
	cp   e                                           ; $7d4c: $bb
	xor  c                                           ; $7d4d: $a9
	sbc  c                                           ; $7d4e: $99
	xor  d                                           ; $7d4f: $aa
	sbc  d                                           ; $7d50: $9a
	xor  c                                           ; $7d51: $a9
	sbc  b                                           ; $7d52: $98
	ld   [hl], a                                     ; $7d53: $77
	ld   h, [hl]                                     ; $7d54: $66
	ld   h, l                                        ; $7d55: $65
	ld   d, h                                        ; $7d56: $54
	ld   [hl-], a                                    ; $7d57: $32
	ld   de, $cb58                                   ; $7d58: $11 $58 $cb
	adc  $dc                                         ; $7d5b: $ce $dc
	xor  b                                           ; $7d5d: $a8
	sub  a                                           ; $7d5e: $97
	ld   a, d                                        ; $7d5f: $7a
	xor  l                                           ; $7d60: $ad
	call c, $a8cb                                    ; $7d61: $dc $cb $a8
	adc  c                                           ; $7d64: $89
	adc  b                                           ; $7d65: $88
	halt                                             ; $7d66: $76
	ld   b, d                                        ; $7d67: $42
	ld   [de], a                                     ; $7d68: $12
	ld   de, $8f11                                   ; $7d69: $11 $11 $8f
	xor  $bf                                         ; $7d6c: $ee $bf
	rst  ToBoot                                         ; $7d6e: $c7
	halt                                             ; $7d6f: $76
	adc  b                                           ; $7d70: $88
	ld   l, e                                        ; $7d71: $6b
	rst  $38                                         ; $7d72: $ff
	db   $fc                                         ; $7d73: $fc
	jp   z, $8b88                                    ; $7d74: $ca $88 $8b

	xor  c                                           ; $7d77: $a9
	ld   h, e                                        ; $7d78: $63
	ld   hl, $3211                                   ; $7d79: $21 $11 $32
	ld   de, $fccf                                   ; $7d7c: $11 $cf $fc
	adc  $95                                         ; $7d7f: $ce $95
	ld   e, b                                        ; $7d81: $58
	sbc  b                                           ; $7d82: $98
	xor  a                                           ; $7d83: $af
	rst  $38                                         ; $7d84: $ff
	db   $db                                         ; $7d85: $db
	sub  a                                           ; $7d86: $97
	ld   a, d                                        ; $7d87: $7a
	call z, $41b7                                    ; $7d88: $cc $b7 $41
	ld   de, $4115                                   ; $7d8b: $11 $15 $41
	inc  de                                          ; $7d8e: $13
	rst  $38                                         ; $7d8f: $ff
	ei                                               ; $7d90: $fb
	jp   c, Jump_0d3_5b22                            ; $7d91: $da $22 $5b

	jp   c, $fedf                                    ; $7d94: $da $df $fe

	sub  [hl]                                        ; $7d97: $96
	ld   a, c                                        ; $7d98: $79
	rst  $28                                         ; $7d99: $ef
	db   $fd                                         ; $7d9a: $fd
	ld   [hl], c                                     ; $7d9b: $71
	ld   de, $7914                                   ; $7d9c: $11 $14 $79
	ld   sp, rAUD1LEN                                   ; $7d9f: $31 $11 $ff
	rst  $38                                         ; $7da2: $ff
	cp   $11                                         ; $7da3: $fe $11
	dec  h                                           ; $7da5: $25
	db   $db                                         ; $7da6: $db
	rst  $38                                         ; $7da7: $ff
	db   $fd                                         ; $7da8: $fd
	ld   [hl], d                                     ; $7da9: $72
	ld   b, [hl]                                     ; $7daa: $46
	rst  $28                                         ; $7dab: $ef
	rst  $38                                         ; $7dac: $ff
	add  c                                           ; $7dad: $81
	ld   de, $a816                                   ; $7dae: $11 $16 $a8
	ld   h, c                                        ; $7db1: $61
	ld   de, $ffff                                   ; $7db2: $11 $ff $ff
	xor  $11                                         ; $7db5: $ee $11
	ld   a, [de]                                     ; $7db7: $1a
	rst  $38                                         ; $7db8: $ff
	rst  $28                                         ; $7db9: $ef
	ld   hl, sp+$61                                  ; $7dba: $f8 $61
	ld   a, l                                        ; $7dbc: $7d
	rst  $38                                         ; $7dbd: $ff
	cp   $61                                         ; $7dbe: $fe $61
	ld   de, $a919                                   ; $7dc0: $11 $19 $a9
	ld   sp, $1f11                                   ; $7dc3: $31 $11 $1f
	rst  $38                                         ; $7dc6: $ff
	ld   sp, hl                                      ; $7dc7: $f9
	ld   bc, rAUD1LOW                                   ; $7dc8: $01 $13 $ff
	rst  $38                                         ; $7dcb: $ff
	or   h                                           ; $7dcc: $b4
	ld   de, $ff5f                                   ; $7dcd: $11 $5f $ff
	db   $fd                                         ; $7dd0: $fd
	ld   b, c                                        ; $7dd1: $41
	ld   de, $fe1a                                   ; $7dd2: $11 $1a $fe
	ld   [hl], c                                     ; $7dd5: $71
	ld   de, rAUD1LEN                                   ; $7dd6: $11 $11 $ff
	rst  $38                                         ; $7dd9: $ff
	ld   de, $af11                                   ; $7dda: $11 $11 $af
	rst  $38                                         ; $7ddd: $ff
	db   $f4                                         ; $7dde: $f4
	ld   de, $ff17                                   ; $7ddf: $11 $17 $ff
	rst  $38                                         ; $7de2: $ff
	sub  c                                           ; $7de3: $91
	ld   de, $ff2b                                   ; $7de4: $11 $2b $ff
	or   c                                           ; $7de7: $b1
	ld   de, $1f11                                   ; $7de8: $11 $11 $1f
	rst  $38                                         ; $7deb: $ff
	pop  af                                          ; $7dec: $f1
	ld   de, $ff16                                   ; $7ded: $11 $16 $ff
	rst  $38                                         ; $7df0: $ff
	ld   de, $df12                                   ; $7df1: $11 $12 $df
	rst  $38                                         ; $7df4: $ff
	pop  af                                          ; $7df5: $f1
	ld   de, $ff19                                   ; $7df6: $11 $19 $ff
	ld   sp, hl                                      ; $7df9: $f9
	ld   de, $3111                                   ; $7dfa: $11 $11 $31
	rra                                              ; $7dfd: $1f
	rst  $38                                         ; $7dfe: $ff
	ld   b, c                                        ; $7dff: $41
	ld   de, $ff1f                                   ; $7e00: $11 $1f $ff
	db   $fc                                         ; $7e03: $fc
	ld   de, $ff16                                   ; $7e04: $11 $16 $ff
	rst  $38                                         ; $7e07: $ff
	pop  af                                          ; $7e08: $f1
	ld   de, $ff1f                                   ; $7e09: $11 $1f $ff
	ld   hl, sp+$11                                  ; $7e0c: $f8 $11
	inc  de                                          ; $7e0e: $13
	call z, rAUD1LEN                                    ; $7e0f: $cc $11 $ff
	ld   b, c                                        ; $7e12: $41
	ld   de, $ff7c                                   ; $7e13: $11 $7c $ff
	rst  $38                                         ; $7e16: $ff
	ld   de, $ff1b                                   ; $7e17: $11 $1b $ff
	rst  $38                                         ; $7e1a: $ff
	ldh  a, [c]                                      ; $7e1b: $f2
	ld   de, $ff2f                                   ; $7e1c: $11 $2f $ff
	ld   hl, sp+$11                                  ; $7e1f: $f8 $11
	ld   [de], a                                     ; $7e21: $12
	rst  $28                                         ; $7e22: $ef
	and  c                                           ; $7e23: $a1
	ld   de, $11ff                                   ; $7e24: $11 $ff $11
	ld   [de], a                                     ; $7e27: $12
	rst  JumpTable                                         ; $7e28: $df
	rst  $38                                         ; $7e29: $ff
	rst  $38                                         ; $7e2a: $ff
	ld   de, $ff1c                                   ; $7e2b: $11 $1c $ff
	rst  $38                                         ; $7e2e: $ff
	push af                                          ; $7e2f: $f5
	ld   de, $ff2f                                   ; $7e30: $11 $2f $ff
	rst  $38                                         ; $7e33: $ff
	ld   de, rAUD1LEN                                   ; $7e34: $11 $11 $ff
	or   $11                                         ; $7e37: $f6 $11
	cpl                                              ; $7e39: $2f
	pop  af                                          ; $7e3a: $f1
	ld   de, $de2e                                   ; $7e3b: $11 $2e $de
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e3e: $cf
	sub  c                                           ; $7e3f: $91
	ld   de, $fddf                                   ; $7e40: $11 $df $fd
	cp   h                                           ; $7e43: $bc
	add  c                                           ; $7e44: $81
	ld   d, $ef                                      ; $7e45: $16 $ef
	ld   sp, hl                                      ; $7e47: $f9
	ld   d, a                                        ; $7e48: $57
	dec  d                                           ; $7e49: $15
	ld   a, d                                        ; $7e4a: $7a
	rst  $38                                         ; $7e4b: $ff
	add  c                                           ; $7e4c: $81
	ld   de, $f96f                                   ; $7e4d: $11 $6f $f9
	ld   de, $af15                                   ; $7e50: $11 $15 $af
	rst  $38                                         ; $7e53: $ff
	pop  hl                                          ; $7e54: $e1
	ld   de, $ff5e                                   ; $7e55: $11 $5e $ff
	ld   a, [$1461]                                  ; $7e58: $fa $61 $14
	xor  a                                           ; $7e5b: $af
	rst  $38                                         ; $7e5c: $ff
	add  h                                           ; $7e5d: $84
	ld   de, $ff39                                   ; $7e5e: $11 $39 $ff
	db   $eb                                         ; $7e61: $eb
	ld   sp, $1e11                                   ; $7e62: $31 $11 $1e
	rst  $38                                         ; $7e65: $ff
	pop  af                                          ; $7e66: $f1
	ld   de, $ff1f                                   ; $7e67: $11 $1f $ff
	rst  $38                                         ; $7e6a: $ff
	ld   de, rAUD1LEN                                   ; $7e6b: $11 $11 $ff
	rst  $38                                         ; $7e6e: $ff
	sub  d                                           ; $7e6f: $92
	ld   de, $ff2b                                   ; $7e70: $11 $2b $ff
	and  $11                                         ; $7e73: $e6 $11
	ld   d, $af                                      ; $7e75: $16 $af
	db   $fc                                         ; $7e77: $fc
	ld   h, d                                        ; $7e78: $62
	ld   [de], a                                     ; $7e79: $12
	ld   a, h                                        ; $7e7a: $7c
	cp   $a5                                         ; $7e7b: $fe $a5
	ld   bc, $ce5a                                   ; $7e7d: $01 $5a $ce
	reti                                             ; $7e80: $d9


	ld   [hl], h                                     ; $7e81: $74
	inc  [hl]                                        ; $7e82: $34
	adc  l                                           ; $7e83: $8d
	db   $dd                                         ; $7e84: $dd
	sub  l                                           ; $7e85: $95
	inc  sp                                          ; $7e86: $33
	ld   e, b                                        ; $7e87: $58
	call Call_0d3_42c8                               ; $7e88: $cd $c8 $42
	scf                                              ; $7e8b: $37
	xor  l                                           ; $7e8c: $ad
	cp   c                                           ; $7e8d: $b9
	ld   h, h                                        ; $7e8e: $64
	ld   b, [hl]                                     ; $7e8f: $46
	sbc  e                                           ; $7e90: $9b
	db   $db                                         ; $7e91: $db
	sub  a                                           ; $7e92: $97
	ld   d, l                                        ; $7e93: $55
	ld   l, b                                        ; $7e94: $68
	xor  e                                           ; $7e95: $ab
	cp   c                                           ; $7e96: $b9
	ld   [hl], l                                     ; $7e97: $75
	ld   d, [hl]                                     ; $7e98: $56
	sbc  d                                           ; $7e99: $9a
	cp   d                                           ; $7e9a: $ba
	add  a                                           ; $7e9b: $87
	ld   d, [hl]                                     ; $7e9c: $56
	ld   h, a                                        ; $7e9d: $67
	sbc  l                                           ; $7e9e: $9d
	or   l                                           ; $7e9f: $b5
	ld   h, h                                        ; $7ea0: $64
	ld   e, d                                        ; $7ea1: $5a
	xor  d                                           ; $7ea2: $aa
	sbc  b                                           ; $7ea3: $98
	add  l                                           ; $7ea4: $85
	ld   e, b                                        ; $7ea5: $58
	adc  d                                           ; $7ea6: $8a
	cp   d                                           ; $7ea7: $ba
	sbc  b                                           ; $7ea8: $98
	ld   h, [hl]                                     ; $7ea9: $66
	ld   a, b                                        ; $7eaa: $78
	sbc  e                                           ; $7eab: $9b
	sbc  b                                           ; $7eac: $98
	halt                                             ; $7ead: $76
	ld   a, b                                        ; $7eae: $78
	adc  d                                           ; $7eaf: $8a
	xor  b                                           ; $7eb0: $a8
	add  a                                           ; $7eb1: $87
	ld   h, a                                        ; $7eb2: $67
	adc  c                                           ; $7eb3: $89
	sbc  c                                           ; $7eb4: $99
	adc  b                                           ; $7eb5: $88
	add  a                                           ; $7eb6: $87
	ld   [hl], a                                     ; $7eb7: $77
	adc  c                                           ; $7eb8: $89
	sbc  c                                           ; $7eb9: $99
	sub  a                                           ; $7eba: $97
	ld   a, b                                        ; $7ebb: $78
	adc  b                                           ; $7ebc: $88
	adc  b                                           ; $7ebd: $88
	adc  b                                           ; $7ebe: $88
	ld   [hl], a                                     ; $7ebf: $77
	adc  b                                           ; $7ec0: $88
	adc  b                                           ; $7ec1: $88
	adc  c                                           ; $7ec2: $89
	adc  b                                           ; $7ec3: $88
	add  a                                           ; $7ec4: $87
	adc  b                                           ; $7ec5: $88
	adc  c                                           ; $7ec6: $89
	adc  b                                           ; $7ec7: $88
	adc  b                                           ; $7ec8: $88
	ld   [hl], a                                     ; $7ec9: $77
	adc  c                                           ; $7eca: $89
	adc  b                                           ; $7ecb: $88
	adc  b                                           ; $7ecc: $88
	add  a                                           ; $7ecd: $87
	ld   [hl], a                                     ; $7ece: $77
	adc  c                                           ; $7ecf: $89
	add  a                                           ; $7ed0: $87
	ld   a, b                                        ; $7ed1: $78
	add  a                                           ; $7ed2: $87
	ld   a, b                                        ; $7ed3: $78
	adc  c                                           ; $7ed4: $89
	adc  b                                           ; $7ed5: $88
	ld   a, b                                        ; $7ed6: $78
	sbc  c                                           ; $7ed7: $99
	sbc  b                                           ; $7ed8: $98
	adc  c                                           ; $7ed9: $89
	adc  b                                           ; $7eda: $88
	adc  b                                           ; $7edb: $88
	adc  b                                           ; $7edc: $88
	adc  b                                           ; $7edd: $88
	adc  b                                           ; $7ede: $88
	adc  b                                           ; $7edf: $88
	adc  b                                           ; $7ee0: $88
	adc  b                                           ; $7ee1: $88
	ld   [hl], a                                     ; $7ee2: $77
	ld   a, b                                        ; $7ee3: $78
	adc  c                                           ; $7ee4: $89
	sbc  c                                           ; $7ee5: $99
	ld   [hl], a                                     ; $7ee6: $77
	ld   [hl], a                                     ; $7ee7: $77
	adc  b                                           ; $7ee8: $88
	sbc  c                                           ; $7ee9: $99
	add  a                                           ; $7eea: $87
	adc  b                                           ; $7eeb: $88
	adc  b                                           ; $7eec: $88
	adc  c                                           ; $7eed: $89
	sbc  b                                           ; $7eee: $98
	add  a                                           ; $7eef: $87
	adc  b                                           ; $7ef0: $88
	adc  c                                           ; $7ef1: $89
	sbc  c                                           ; $7ef2: $99
	adc  b                                           ; $7ef3: $88
	ld   [hl], a                                     ; $7ef4: $77
	adc  c                                           ; $7ef5: $89
	adc  c                                           ; $7ef6: $89
	sbc  b                                           ; $7ef7: $98
	ld   [hl], a                                     ; $7ef8: $77
	adc  b                                           ; $7ef9: $88
	adc  c                                           ; $7efa: $89
	adc  b                                           ; $7efb: $88
	adc  b                                           ; $7efc: $88
	adc  c                                           ; $7efd: $89
	sbc  c                                           ; $7efe: $99
	adc  b                                           ; $7eff: $88
	adc  b                                           ; $7f00: $88
	adc  b                                           ; $7f01: $88
	adc  b                                           ; $7f02: $88
	sbc  b                                           ; $7f03: $98
	adc  b                                           ; $7f04: $88
	adc  c                                           ; $7f05: $89
	adc  b                                           ; $7f06: $88
	sbc  b                                           ; $7f07: $98
	adc  b                                           ; $7f08: $88
	add  a                                           ; $7f09: $87
	ld   a, b                                        ; $7f0a: $78
	sbc  c                                           ; $7f0b: $99
	adc  b                                           ; $7f0c: $88
	add  a                                           ; $7f0d: $87
	ld   a, b                                        ; $7f0e: $78
	adc  b                                           ; $7f0f: $88
	sbc  b                                           ; $7f10: $98
	sbc  b                                           ; $7f11: $98
	add  a                                           ; $7f12: $87
	ld   a, b                                        ; $7f13: $78
	sbc  b                                           ; $7f14: $98
	sbc  b                                           ; $7f15: $98
	adc  c                                           ; $7f16: $89
	sbc  b                                           ; $7f17: $98
	ld   [hl], a                                     ; $7f18: $77
	adc  c                                           ; $7f19: $89
	adc  b                                           ; $7f1a: $88
	adc  b                                           ; $7f1b: $88
	adc  b                                           ; $7f1c: $88
	adc  b                                           ; $7f1d: $88
	adc  b                                           ; $7f1e: $88
	adc  b                                           ; $7f1f: $88
	adc  b                                           ; $7f20: $88
	adc  b                                           ; $7f21: $88
	adc  b                                           ; $7f22: $88
	adc  b                                           ; $7f23: $88
	adc  b                                           ; $7f24: $88
	sbc  c                                           ; $7f25: $99
	adc  b                                           ; $7f26: $88
	adc  b                                           ; $7f27: $88
	adc  b                                           ; $7f28: $88
	adc  c                                           ; $7f29: $89
	sbc  b                                           ; $7f2a: $98
	adc  b                                           ; $7f2b: $88
	adc  b                                           ; $7f2c: $88
	adc  b                                           ; $7f2d: $88
	adc  c                                           ; $7f2e: $89
	adc  c                                           ; $7f2f: $89
	add  a                                           ; $7f30: $87
	ld   a, b                                        ; $7f31: $78
	sbc  c                                           ; $7f32: $99
	adc  b                                           ; $7f33: $88
	adc  b                                           ; $7f34: $88
	ld   a, b                                        ; $7f35: $78
	adc  b                                           ; $7f36: $88
	sbc  c                                           ; $7f37: $99
	add  a                                           ; $7f38: $87
	ld   a, b                                        ; $7f39: $78
	adc  b                                           ; $7f3a: $88
	adc  b                                           ; $7f3b: $88
	adc  b                                           ; $7f3c: $88
	adc  b                                           ; $7f3d: $88
	adc  b                                           ; $7f3e: $88
	adc  b                                           ; $7f3f: $88
	adc  b                                           ; $7f40: $88
	adc  b                                           ; $7f41: $88
	adc  b                                           ; $7f42: $88
	sbc  b                                           ; $7f43: $98
	adc  b                                           ; $7f44: $88
	adc  b                                           ; $7f45: $88
	adc  b                                           ; $7f46: $88
	adc  b                                           ; $7f47: $88
	adc  b                                           ; $7f48: $88
	adc  b                                           ; $7f49: $88
	ld   a, b                                        ; $7f4a: $78
	adc  b                                           ; $7f4b: $88
	adc  b                                           ; $7f4c: $88
	adc  b                                           ; $7f4d: $88
	adc  b                                           ; $7f4e: $88
	adc  b                                           ; $7f4f: $88
	adc  b                                           ; $7f50: $88
	adc  b                                           ; $7f51: $88
	adc  b                                           ; $7f52: $88
	adc  b                                           ; $7f53: $88
	adc  b                                           ; $7f54: $88
	adc  b                                           ; $7f55: $88
	adc  b                                           ; $7f56: $88
	adc  b                                           ; $7f57: $88
	adc  b                                           ; $7f58: $88
	adc  b                                           ; $7f59: $88
	adc  b                                           ; $7f5a: $88
	adc  b                                           ; $7f5b: $88
	adc  b                                           ; $7f5c: $88
	adc  b                                           ; $7f5d: $88
	adc  b                                           ; $7f5e: $88
	adc  b                                           ; $7f5f: $88
	adc  b                                           ; $7f60: $88
	adc  b                                           ; $7f61: $88
	adc  b                                           ; $7f62: $88
	adc  b                                           ; $7f63: $88
	adc  b                                           ; $7f64: $88
	adc  b                                           ; $7f65: $88
	adc  b                                           ; $7f66: $88
	adc  b                                           ; $7f67: $88
	adc  b                                           ; $7f68: $88
	adc  b                                           ; $7f69: $88
	adc  b                                           ; $7f6a: $88
	adc  b                                           ; $7f6b: $88
	adc  b                                           ; $7f6c: $88
	adc  b                                           ; $7f6d: $88
	adc  b                                           ; $7f6e: $88
	adc  b                                           ; $7f6f: $88
	adc  b                                           ; $7f70: $88
	adc  b                                           ; $7f71: $88
	adc  b                                           ; $7f72: $88
	adc  b                                           ; $7f73: $88
	adc  b                                           ; $7f74: $88
	adc  b                                           ; $7f75: $88
	adc  b                                           ; $7f76: $88
	adc  b                                           ; $7f77: $88
	adc  b                                           ; $7f78: $88
	adc  b                                           ; $7f79: $88
	adc  b                                           ; $7f7a: $88
	ld   de, $1111                                   ; $7f7b: $11 $11 $11
	ld   de, $1111                                   ; $7f7e: $11 $11 $11
	ld   de, $1111                                   ; $7f81: $11 $11 $11
	ld   de, $1111                                   ; $7f84: $11 $11 $11
	ld   de, $1111                                   ; $7f87: $11 $11 $11
	ld   de, $1111                                   ; $7f8a: $11 $11 $11
	ld   de, $1111                                   ; $7f8d: $11 $11 $11
	ld   de, $1111                                   ; $7f90: $11 $11 $11
	ld   de, $1111                                   ; $7f93: $11 $11 $11
	ld   de, $1111                                   ; $7f96: $11 $11 $11
	ld   de, $1111                                   ; $7f99: $11 $11 $11
	ld   de, $1111                                   ; $7f9c: $11 $11 $11
	ld   de, $1111                                   ; $7f9f: $11 $11 $11
	ld   de, $1111                                   ; $7fa2: $11 $11 $11
	ld   de, $4800                                   ; $7fa5: $11 $00 $48
	ld   de, $1111                                   ; $7fa8: $11 $11 $11
	ld   de, $1111                                   ; $7fab: $11 $11 $11
	ld   de, $1111                                   ; $7fae: $11 $11 $11
	ld   de, $5413                                   ; $7fb1: $11 $13 $54
	ld   d, h                                        ; $7fb4: $54
	ld   d, h                                        ; $7fb5: $54
	ld   b, c                                        ; $7fb6: $41
	rra                                              ; $7fb7: $1f
	rst  $38                                         ; $7fb8: $ff
	pop  af                                          ; $7fb9: $f1
	ld   de, $1411                                   ; $7fba: $11 $11 $14
	pop  hl                                          ; $7fbd: $e1
	ld   de, $d11c                                   ; $7fbe: $11 $1c $d1
	db   $ec                                         ; $7fc1: $ec
	pop  de                                          ; $7fc2: $d1
	pop  hl                                          ; $7fc3: $e1
	ld   de, $1111                                   ; $7fc4: $11 $11 $11
	ld   de, $1111                                   ; $7fc7: $11 $11 $11
	ld   de, $1111                                   ; $7fca: $11 $11 $11
	ld   de, $1111                                   ; $7fcd: $11 $11 $11
	ld   de, $5411                                   ; $7fd0: $11 $11 $54
	ld   b, h                                        ; $7fd3: $44
	call nc, Call_0d3_5411                           ; $7fd4: $d4 $11 $54
	ld   d, h                                        ; $7fd7: $54
	ld   h, a                                        ; $7fd8: $67
	ld   [hl], d                                     ; $7fd9: $72
	ld   de, $1111                                   ; $7fda: $11 $11 $11
	ld   de, $1112                                   ; $7fdd: $11 $12 $11
	ld   [de], a                                     ; $7fe0: $12
	ld   de, $1111                                   ; $7fe1: $11 $11 $11
	ld   h, [hl]                                     ; $7fe4: $66
	halt                                             ; $7fe5: $76
	call nz, $8811                                   ; $7fe6: $c4 $11 $88
	adc  b                                           ; $7fe9: $88
	adc  b                                           ; $7fea: $88
	adc  b                                           ; $7feb: $88
	adc  b                                           ; $7fec: $88
	adc  b                                           ; $7fed: $88
	adc  b                                           ; $7fee: $88
	adc  b                                           ; $7fef: $88
	adc  b                                           ; $7ff0: $88
	adc  b                                           ; $7ff1: $88
	adc  b                                           ; $7ff2: $88
	adc  b                                           ; $7ff3: $88
	adc  b                                           ; $7ff4: $88
	adc  b                                           ; $7ff5: $88
	adc  b                                           ; $7ff6: $88
	adc  b                                           ; $7ff7: $88
	adc  b                                           ; $7ff8: $88
	adc  b                                           ; $7ff9: $88
	adc  b                                           ; $7ffa: $88
	adc  b                                           ; $7ffb: $88
	adc  b                                           ; $7ffc: $88
	adc  b                                           ; $7ffd: $88
	adc  b                                           ; $7ffe: $88
	adc  b                                           ; $7fff: $88
