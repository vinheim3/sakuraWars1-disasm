; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0d0", ROMX[$4000], BANK[$d0]

	xor  b                                           ; $4000: $a8
	rst  JumpTable                                         ; $4001: $df
	rst  $38                                         ; $4002: $ff
	rst  $38                                         ; $4003: $ff
	rst  ToBoot                                         ; $4004: $c7
	ld   d, h                                        ; $4005: $54
	ld   l, d                                        ; $4006: $6a
	sbc  c                                           ; $4007: $99
	ld   sp, $1111                                   ; $4008: $31 $11 $11
	ld   de, $cf11                                   ; $400b: $11 $11 $cf
	rst  $38                                         ; $400e: $ff
	rst  $38                                         ; $400f: $ff
	ld   [hl], c                                     ; $4010: $71
	ld   de, $ce5a                                   ; $4011: $11 $5a $ce
	jp   z, $ef98                                    ; $4014: $ca $98 $ef

	rst  $38                                         ; $4017: $ff
	rst  $38                                         ; $4018: $ff
	or   [hl]                                        ; $4019: $b6
	ld   b, h                                        ; $401a: $44
	adc  e                                           ; $401b: $8b
	xor  b                                           ; $401c: $a8
	ld   hl, $1111                                   ; $401d: $21 $11 $11
	ld   de, $5e11                                   ; $4020: $11 $11 $5e
	rst  $38                                         ; $4023: $ff
	rst  $38                                         ; $4024: $ff
	jp   nz, $1811                                   ; $4025: $c2 $11 $18

	rst  JumpTable                                         ; $4028: $df
	cp   $a8                                         ; $4029: $fe $a8
	xor  [hl]                                        ; $402b: $ae
	rst  $38                                         ; $402c: $ff
	rst  $38                                         ; $402d: $ff
	rst  $30                                         ; $402e: $f7
	ld   [hl-], a                                    ; $402f: $32
	ld   c, b                                        ; $4030: $48
	xor  e                                           ; $4031: $ab
	ld   h, c                                        ; $4032: $61
	ld   de, $1111                                   ; $4033: $11 $11 $11
	ld   de, $cf11                                   ; $4036: $11 $11 $cf
	rst  $38                                         ; $4039: $ff
	cp   $41                                         ; $403a: $fe $41
	ld   [de], a                                     ; $403c: $12
	xor  a                                           ; $403d: $af
	rst  $38                                         ; $403e: $ff
	rst  $10                                         ; $403f: $d7
	ld   b, l                                        ; $4040: $45
	cp   a                                           ; $4041: $bf
	rst  $38                                         ; $4042: $ff
	rst  $38                                         ; $4043: $ff
	ld   [hl], e                                     ; $4044: $73
	ld   h, $ad                                      ; $4045: $26 $ad
	rst  ToBoot                                         ; $4047: $c7
	ld   de, $1111                                   ; $4048: $11 $11 $11
	ld   de, $1111                                   ; $404b: $11 $11 $11
	rst  $38                                         ; $404e: $ff
	rst  $38                                         ; $404f: $ff
	ld   a, [$1611]                                  ; $4050: $fa $11 $16
	rst  $38                                         ; $4053: $ff
	db   $fc                                         ; $4054: $fc
	ld   d, c                                        ; $4055: $51
	rla                                              ; $4056: $17
	rst  $38                                         ; $4057: $ff
	rst  $38                                         ; $4058: $ff
	ld   sp, hl                                      ; $4059: $f9
	ld   hl, $ee49                                   ; $405a: $21 $49 $ee
	or   h                                           ; $405d: $b4
	ld   de, $4411                                   ; $405e: $11 $11 $44
	ld   de, $1111                                   ; $4061: $11 $11 $11
	rst  $38                                         ; $4064: $ff
	rst  $38                                         ; $4065: $ff
	ei                                               ; $4066: $fb
	ld   de, $ff18                                   ; $4067: $11 $18 $ff
	ld   sp, hl                                      ; $406a: $f9
	ld   de, $ff19                                   ; $406b: $11 $19 $ff
	rst  $38                                         ; $406e: $ff
	ld   hl, sp+$33                                  ; $406f: $f8 $33
	adc  l                                           ; $4071: $8d
	cp   $72                                         ; $4072: $fe $72
	ld   de, $9826                                   ; $4074: $11 $26 $98
	ld   hl, $1111                                   ; $4077: $21 $11 $11
	rra                                              ; $407a: $1f
	rst  $38                                         ; $407b: $ff
	rst  $38                                         ; $407c: $ff
	and  e                                           ; $407d: $a3
	jr   z, @-$1f                                    ; $407e: $28 $df

	ld   a, [$1541]                                  ; $4080: $fa $41 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4083: $cf
	rst  $38                                         ; $4084: $ff
	cp   $aa                                         ; $4085: $fe $aa
	xor  e                                           ; $4087: $ab
	jp   z, $2385                                    ; $4088: $ca $85 $23

	ld   d, a                                        ; $408b: $57
	sbc  c                                           ; $408c: $99
	ld   h, d                                        ; $408d: $62
	ld   de, $1111                                   ; $408e: $11 $11 $11
	ld   d, $ff                                      ; $4091: $16 $ff
	rst  $38                                         ; $4093: $ff
	ei                                               ; $4094: $fb
	ld   h, a                                        ; $4095: $67
	cp   l                                           ; $4096: $bd
	ret  z                                           ; $4097: $c8

	ld   hl, $bf13                                   ; $4098: $21 $13 $bf
	rst  $38                                         ; $409b: $ff
	rst  $38                                         ; $409c: $ff
	call c, $bacc                                    ; $409d: $dc $cc $ba
	ld   h, l                                        ; $40a0: $65
	ld   b, [hl]                                     ; $40a1: $46
	adc  d                                           ; $40a2: $8a
	cp   d                                           ; $40a3: $ba
	add  l                                           ; $40a4: $85
	ld   hl, $1111                                   ; $40a5: $21 $11 $11
	ld   de, $ff1f                                   ; $40a8: $11 $1f $ff
	rst  $38                                         ; $40ab: $ff
	sub  [hl]                                        ; $40ac: $96
	adc  l                                           ; $40ad: $8d
	db   $fc                                         ; $40ae: $fc
	ld   h, c                                        ; $40af: $61
	ld   de, $ff4c                                   ; $40b0: $11 $4c $ff
	cp   $df                                         ; $40b3: $fe $df
	rst  $38                                         ; $40b5: $ff
	ei                                               ; $40b6: $fb
	ld   d, e                                        ; $40b7: $53
	ld   b, a                                        ; $40b8: $47
	call $77ca                                       ; $40b9: $cd $ca $77
	ld   a, b                                        ; $40bc: $78
	ld   [hl], e                                     ; $40bd: $73
	ld   de, $1111                                   ; $40be: $11 $11 $11
	dec  e                                           ; $40c1: $1d
	rst  $38                                         ; $40c2: $ff
	rst  $38                                         ; $40c3: $ff
	ei                                               ; $40c4: $fb
	db   $dd                                         ; $40c5: $dd
	ret  z                                           ; $40c6: $c8

	ld   bc, $5a11                                   ; $40c7: $01 $11 $5a
	sbc  $df                                         ; $40ca: $de $df
	rst  $38                                         ; $40cc: $ff
	rst  $38                                         ; $40cd: $ff
	add  sp, $55                                     ; $40ce: $e8 $55
	adc  d                                           ; $40d0: $8a
	cp   c                                           ; $40d1: $b9
	ld   [hl], a                                     ; $40d2: $77
	xor  h                                           ; $40d3: $ac
	db   $ec                                         ; $40d4: $ec
	and  h                                           ; $40d5: $a4
	ld   de, $1111                                   ; $40d6: $11 $11 $11
	ld   de, $ff1e                                   ; $40d9: $11 $1e $ff
	rst  $38                                         ; $40dc: $ff
	db   $ed                                         ; $40dd: $ed
	rst  $28                                         ; $40de: $ef
	or   h                                           ; $40df: $b4
	ld   de, $ac12                                   ; $40e0: $11 $12 $ac
	cp   d                                           ; $40e3: $ba
	rst  JumpTable                                         ; $40e4: $df
	rst  $38                                         ; $40e5: $ff
	rst  $38                                         ; $40e6: $ff
	add  l                                           ; $40e7: $85
	ld   l, d                                        ; $40e8: $6a
	cp   d                                           ; $40e9: $ba
	halt                                             ; $40ea: $76
	ld   a, e                                        ; $40eb: $7b
	rst  $38                                         ; $40ec: $ff
	ret  z                                           ; $40ed: $c8

	ld   h, h                                        ; $40ee: $64
	ld   b, d                                        ; $40ef: $42
	ld   de, $1111                                   ; $40f0: $11 $11 $11
	inc  d                                           ; $40f3: $14
	rst  JumpTable                                         ; $40f4: $df
	rst  $38                                         ; $40f5: $ff
	rst  $38                                         ; $40f6: $ff
	cp   $d7                                         ; $40f7: $fe $d7
	ld   sp, $5712                                   ; $40f9: $31 $12 $57
	ld   a, b                                        ; $40fc: $78
	cp   a                                           ; $40fd: $bf
	rst  $38                                         ; $40fe: $ff
	rst  $38                                         ; $40ff: $ff
	call c, $a8bb                                    ; $4100: $dc $bb $a8
	ld   h, [hl]                                     ; $4103: $66
	adc  d                                           ; $4104: $8a
	res  7, c                                        ; $4105: $cb $b9
	xor  c                                           ; $4107: $a9
	sub  a                                           ; $4108: $97
	ld   sp, $1111                                   ; $4109: $31 $11 $11
	ld   de, $af11                                   ; $410c: $11 $11 $af
	rst  $38                                         ; $410f: $ff
	rst  $38                                         ; $4110: $ff
	rst  $38                                         ; $4111: $ff
	ei                                               ; $4112: $fb
	ld   sp, $3412                                   ; $4113: $31 $12 $34
	ld   [hl+], a                                    ; $4116: $22
	sbc  [hl]                                        ; $4117: $9e
	rst  $38                                         ; $4118: $ff

Jump_0d0_4119:
	rst  $38                                         ; $4119: $ff
	rst  $38                                         ; $411a: $ff
	cp   $96                                         ; $411b: $fe $96
	ld   d, [hl]                                     ; $411d: $56
	ld   [hl], a                                     ; $411e: $77
	ld   a, b                                        ; $411f: $78
	sbc  h                                           ; $4120: $9c
	db   $ed                                         ; $4121: $ed
	cp   b                                           ; $4122: $b8
	ld   [hl], l                                     ; $4123: $75
	ld   sp, $1111                                   ; $4124: $31 $11 $11
	ld   de, $df12                                   ; $4127: $11 $12 $df
	rst  $38                                         ; $412a: $ff
	rst  $38                                         ; $412b: $ff
	rst  $38                                         ; $412c: $ff
	ld   sp, hl                                      ; $412d: $f9
	ld   b, c                                        ; $412e: $41
	ld   [hl+], a                                    ; $412f: $22
	ld   de, $9e13                                   ; $4130: $11 $13 $9e
	rst  $38                                         ; $4133: $ff
	rst  $38                                         ; $4134: $ff
	rst  $38                                         ; $4135: $ff
	db   $fc                                         ; $4136: $fc
	xor  c                                           ; $4137: $a9
	add  a                                           ; $4138: $87
	ld   h, l                                        ; $4139: $65
	ld   l, c                                        ; $413a: $69
	cp   h                                           ; $413b: $bc
	cp   d                                           ; $413c: $ba
	xor  d                                           ; $413d: $aa
	sub  [hl]                                        ; $413e: $96
	ld   sp, $1111                                   ; $413f: $31 $11 $11
	ld   de, $6a11                                   ; $4142: $11 $11 $6a
	rst  $38                                         ; $4145: $ff
	rst  $38                                         ; $4146: $ff
	rst  $38                                         ; $4147: $ff
	rst  $38                                         ; $4148: $ff
	call z, $3188                                    ; $4149: $cc $88 $31
	ld   de, $3613                                   ; $414c: $11 $13 $36
	sbc  l                                           ; $414f: $9d
	rst  $38                                         ; $4150: $ff
	rst  $38                                         ; $4151: $ff
	rst  $38                                         ; $4152: $ff
	db   $fd                                         ; $4153: $fd
	xor  c                                           ; $4154: $a9
	ld   [hl], a                                     ; $4155: $77
	ld   h, l                                        ; $4156: $65
	ld   d, l                                        ; $4157: $55
	ld   h, a                                        ; $4158: $67
	ld   h, [hl]                                     ; $4159: $66
	ld   h, [hl]                                     ; $415a: $66
	ld   [hl], l                                     ; $415b: $75
	ld   sp, $1111                                   ; $415c: $31 $11 $11
	ld   de, $6913                                   ; $415f: $11 $13 $69
	ld   a, d                                        ; $4162: $7a
	rst  $28                                         ; $4163: $ef
	rst  $38                                         ; $4164: $ff
	rst  $38                                         ; $4165: $ff
	db   $ed                                         ; $4166: $ed
	ret                                              ; $4167: $c9


	add  a                                           ; $4168: $87
	ld   d, [hl]                                     ; $4169: $56
	ld   h, [hl]                                     ; $416a: $66
	ld   h, a                                        ; $416b: $67
	ld   a, b                                        ; $416c: $78
	xor  d                                           ; $416d: $aa
	cp   d                                           ; $416e: $ba
	xor  d                                           ; $416f: $aa
	xor  e                                           ; $4170: $ab
	xor  c                                           ; $4171: $a9
	xor  c                                           ; $4172: $a9
	sbc  c                                           ; $4173: $99
	adc  b                                           ; $4174: $88
	adc  b                                           ; $4175: $88
	adc  b                                           ; $4176: $88
	adc  b                                           ; $4177: $88
	adc  b                                           ; $4178: $88
	adc  b                                           ; $4179: $88
	adc  b                                           ; $417a: $88
	adc  b                                           ; $417b: $88
	adc  b                                           ; $417c: $88
	adc  b                                           ; $417d: $88
	adc  b                                           ; $417e: $88
	adc  b                                           ; $417f: $88
	adc  b                                           ; $4180: $88
	adc  b                                           ; $4181: $88
	adc  b                                           ; $4182: $88
	adc  b                                           ; $4183: $88
	adc  b                                           ; $4184: $88
	adc  b                                           ; $4185: $88
	adc  b                                           ; $4186: $88
	adc  b                                           ; $4187: $88
	adc  b                                           ; $4188: $88
	adc  b                                           ; $4189: $88
	adc  b                                           ; $418a: $88
	adc  b                                           ; $418b: $88
	adc  b                                           ; $418c: $88
	adc  b                                           ; $418d: $88
	adc  b                                           ; $418e: $88
	adc  b                                           ; $418f: $88
	adc  b                                           ; $4190: $88
	adc  b                                           ; $4191: $88
	adc  b                                           ; $4192: $88
	adc  b                                           ; $4193: $88
	adc  b                                           ; $4194: $88
	adc  b                                           ; $4195: $88

Jump_0d0_4196:
	adc  b                                           ; $4196: $88

Call_0d0_4197:
	adc  b                                           ; $4197: $88
	adc  b                                           ; $4198: $88
	adc  b                                           ; $4199: $88
	adc  b                                           ; $419a: $88
	adc  b                                           ; $419b: $88
	adc  b                                           ; $419c: $88
	adc  b                                           ; $419d: $88
	adc  b                                           ; $419e: $88

Jump_0d0_419f:
	adc  b                                           ; $419f: $88
	adc  b                                           ; $41a0: $88
	adc  b                                           ; $41a1: $88
	adc  b                                           ; $41a2: $88
	adc  b                                           ; $41a3: $88
	adc  b                                           ; $41a4: $88
	adc  b                                           ; $41a5: $88
	adc  b                                           ; $41a6: $88
	adc  b                                           ; $41a7: $88
	adc  b                                           ; $41a8: $88
	adc  b                                           ; $41a9: $88
	adc  b                                           ; $41aa: $88
	adc  b                                           ; $41ab: $88
	adc  b                                           ; $41ac: $88
	adc  b                                           ; $41ad: $88
	adc  b                                           ; $41ae: $88
	adc  b                                           ; $41af: $88
	adc  b                                           ; $41b0: $88
	adc  b                                           ; $41b1: $88
	adc  b                                           ; $41b2: $88
	adc  b                                           ; $41b3: $88
	adc  b                                           ; $41b4: $88
	adc  b                                           ; $41b5: $88
	adc  b                                           ; $41b6: $88
	adc  b                                           ; $41b7: $88
	adc  b                                           ; $41b8: $88
	adc  b                                           ; $41b9: $88
	adc  b                                           ; $41ba: $88
	adc  b                                           ; $41bb: $88
	adc  b                                           ; $41bc: $88
	adc  b                                           ; $41bd: $88
	adc  b                                           ; $41be: $88
	adc  b                                           ; $41bf: $88
	adc  b                                           ; $41c0: $88
	adc  b                                           ; $41c1: $88
	adc  b                                           ; $41c2: $88
	adc  b                                           ; $41c3: $88
	adc  b                                           ; $41c4: $88
	adc  b                                           ; $41c5: $88
	adc  b                                           ; $41c6: $88
	adc  b                                           ; $41c7: $88
	adc  b                                           ; $41c8: $88
	adc  b                                           ; $41c9: $88
	adc  b                                           ; $41ca: $88
	adc  b                                           ; $41cb: $88
	adc  b                                           ; $41cc: $88
	adc  b                                           ; $41cd: $88
	adc  b                                           ; $41ce: $88
	adc  b                                           ; $41cf: $88
	adc  b                                           ; $41d0: $88
	adc  b                                           ; $41d1: $88
	adc  b                                           ; $41d2: $88
	adc  b                                           ; $41d3: $88
	adc  b                                           ; $41d4: $88
	adc  b                                           ; $41d5: $88
	adc  b                                           ; $41d6: $88
	adc  b                                           ; $41d7: $88
	adc  b                                           ; $41d8: $88
	adc  b                                           ; $41d9: $88
	adc  b                                           ; $41da: $88
	adc  b                                           ; $41db: $88
	adc  b                                           ; $41dc: $88
	adc  b                                           ; $41dd: $88
	adc  b                                           ; $41de: $88
	adc  b                                           ; $41df: $88
	adc  b                                           ; $41e0: $88
	adc  b                                           ; $41e1: $88
	adc  b                                           ; $41e2: $88
	adc  b                                           ; $41e3: $88
	adc  b                                           ; $41e4: $88
	adc  b                                           ; $41e5: $88
	adc  b                                           ; $41e6: $88
	adc  b                                           ; $41e7: $88
	adc  b                                           ; $41e8: $88
	adc  b                                           ; $41e9: $88
	adc  b                                           ; $41ea: $88
	adc  b                                           ; $41eb: $88
	adc  b                                           ; $41ec: $88
	adc  b                                           ; $41ed: $88
	adc  b                                           ; $41ee: $88
	adc  b                                           ; $41ef: $88
	adc  b                                           ; $41f0: $88
	adc  b                                           ; $41f1: $88
	adc  b                                           ; $41f2: $88
	adc  b                                           ; $41f3: $88
	adc  b                                           ; $41f4: $88
	adc  b                                           ; $41f5: $88
	adc  b                                           ; $41f6: $88
	adc  b                                           ; $41f7: $88
	adc  b                                           ; $41f8: $88
	adc  b                                           ; $41f9: $88
	adc  b                                           ; $41fa: $88
	adc  b                                           ; $41fb: $88
	adc  b                                           ; $41fc: $88
	adc  b                                           ; $41fd: $88
	adc  b                                           ; $41fe: $88
	adc  b                                           ; $41ff: $88
	adc  b                                           ; $4200: $88
	adc  b                                           ; $4201: $88
	adc  b                                           ; $4202: $88
	adc  b                                           ; $4203: $88
	adc  b                                           ; $4204: $88
	adc  b                                           ; $4205: $88
	adc  b                                           ; $4206: $88
	adc  b                                           ; $4207: $88
	adc  b                                           ; $4208: $88
	adc  b                                           ; $4209: $88
	adc  b                                           ; $420a: $88
	adc  b                                           ; $420b: $88
	adc  b                                           ; $420c: $88
	adc  b                                           ; $420d: $88
	adc  b                                           ; $420e: $88
	adc  b                                           ; $420f: $88
	adc  b                                           ; $4210: $88
	adc  b                                           ; $4211: $88
	adc  b                                           ; $4212: $88
	adc  b                                           ; $4213: $88
	adc  b                                           ; $4214: $88
	adc  b                                           ; $4215: $88
	adc  b                                           ; $4216: $88
	adc  b                                           ; $4217: $88
	adc  b                                           ; $4218: $88
	adc  b                                           ; $4219: $88
	adc  b                                           ; $421a: $88
	adc  b                                           ; $421b: $88
	adc  b                                           ; $421c: $88
	adc  b                                           ; $421d: $88
	adc  b                                           ; $421e: $88
	adc  b                                           ; $421f: $88
	adc  b                                           ; $4220: $88
	adc  b                                           ; $4221: $88
	adc  b                                           ; $4222: $88
	adc  b                                           ; $4223: $88
	adc  b                                           ; $4224: $88
	adc  b                                           ; $4225: $88
	adc  b                                           ; $4226: $88
	adc  b                                           ; $4227: $88
	adc  b                                           ; $4228: $88
	adc  b                                           ; $4229: $88
	adc  b                                           ; $422a: $88
	adc  b                                           ; $422b: $88
	adc  b                                           ; $422c: $88
	adc  b                                           ; $422d: $88
	adc  b                                           ; $422e: $88
	adc  b                                           ; $422f: $88
	adc  b                                           ; $4230: $88
	adc  b                                           ; $4231: $88
	adc  b                                           ; $4232: $88
	adc  b                                           ; $4233: $88
	adc  b                                           ; $4234: $88
	adc  b                                           ; $4235: $88
	adc  b                                           ; $4236: $88
	adc  b                                           ; $4237: $88
	adc  b                                           ; $4238: $88
	adc  b                                           ; $4239: $88
	adc  b                                           ; $423a: $88
	adc  b                                           ; $423b: $88
	adc  b                                           ; $423c: $88
	adc  b                                           ; $423d: $88
	adc  b                                           ; $423e: $88
	adc  b                                           ; $423f: $88
	adc  b                                           ; $4240: $88
	adc  b                                           ; $4241: $88
	adc  b                                           ; $4242: $88
	adc  b                                           ; $4243: $88
	adc  b                                           ; $4244: $88
	adc  b                                           ; $4245: $88
	adc  b                                           ; $4246: $88
	adc  b                                           ; $4247: $88
	adc  b                                           ; $4248: $88
	adc  b                                           ; $4249: $88
	adc  b                                           ; $424a: $88
	adc  b                                           ; $424b: $88
	adc  b                                           ; $424c: $88
	adc  b                                           ; $424d: $88
	adc  b                                           ; $424e: $88
	adc  b                                           ; $424f: $88
	adc  b                                           ; $4250: $88
	adc  b                                           ; $4251: $88
	adc  b                                           ; $4252: $88
	adc  b                                           ; $4253: $88
	adc  b                                           ; $4254: $88
	adc  b                                           ; $4255: $88
	adc  b                                           ; $4256: $88
	adc  b                                           ; $4257: $88
	adc  b                                           ; $4258: $88
	adc  b                                           ; $4259: $88
	adc  b                                           ; $425a: $88
	adc  b                                           ; $425b: $88
	adc  b                                           ; $425c: $88
	adc  b                                           ; $425d: $88
	adc  b                                           ; $425e: $88
	adc  b                                           ; $425f: $88
	adc  b                                           ; $4260: $88
	adc  b                                           ; $4261: $88
	adc  b                                           ; $4262: $88
	adc  b                                           ; $4263: $88
	adc  b                                           ; $4264: $88
	adc  b                                           ; $4265: $88
	adc  b                                           ; $4266: $88
	adc  b                                           ; $4267: $88
	adc  b                                           ; $4268: $88
	adc  b                                           ; $4269: $88
	adc  b                                           ; $426a: $88
	adc  b                                           ; $426b: $88
	adc  b                                           ; $426c: $88
	adc  b                                           ; $426d: $88
	adc  b                                           ; $426e: $88
	adc  b                                           ; $426f: $88
	adc  b                                           ; $4270: $88
	adc  b                                           ; $4271: $88
	adc  b                                           ; $4272: $88
	adc  b                                           ; $4273: $88
	adc  b                                           ; $4274: $88
	adc  b                                           ; $4275: $88
	adc  b                                           ; $4276: $88
	adc  b                                           ; $4277: $88
	adc  b                                           ; $4278: $88
	adc  b                                           ; $4279: $88
	adc  b                                           ; $427a: $88
	adc  b                                           ; $427b: $88
	adc  b                                           ; $427c: $88
	adc  b                                           ; $427d: $88
	adc  b                                           ; $427e: $88
	adc  b                                           ; $427f: $88
	adc  b                                           ; $4280: $88
	adc  b                                           ; $4281: $88
	adc  b                                           ; $4282: $88
	adc  b                                           ; $4283: $88
	adc  b                                           ; $4284: $88
	adc  b                                           ; $4285: $88
	adc  b                                           ; $4286: $88
	adc  b                                           ; $4287: $88
	adc  b                                           ; $4288: $88
	adc  b                                           ; $4289: $88
	adc  b                                           ; $428a: $88
	adc  b                                           ; $428b: $88
	adc  b                                           ; $428c: $88
	adc  b                                           ; $428d: $88
	adc  b                                           ; $428e: $88
	adc  b                                           ; $428f: $88
	adc  b                                           ; $4290: $88
	adc  b                                           ; $4291: $88
	adc  b                                           ; $4292: $88
	adc  b                                           ; $4293: $88
	adc  b                                           ; $4294: $88
	adc  b                                           ; $4295: $88
	adc  b                                           ; $4296: $88
	adc  b                                           ; $4297: $88
	adc  b                                           ; $4298: $88
	adc  b                                           ; $4299: $88
	adc  b                                           ; $429a: $88
	adc  b                                           ; $429b: $88
	adc  b                                           ; $429c: $88
	adc  b                                           ; $429d: $88
	adc  b                                           ; $429e: $88
	adc  b                                           ; $429f: $88
	adc  b                                           ; $42a0: $88
	adc  b                                           ; $42a1: $88
	adc  b                                           ; $42a2: $88
	adc  b                                           ; $42a3: $88
	adc  b                                           ; $42a4: $88
	adc  b                                           ; $42a5: $88
	adc  b                                           ; $42a6: $88
	adc  b                                           ; $42a7: $88
	adc  b                                           ; $42a8: $88
	adc  b                                           ; $42a9: $88
	adc  b                                           ; $42aa: $88
	adc  b                                           ; $42ab: $88
	adc  b                                           ; $42ac: $88
	adc  b                                           ; $42ad: $88
	adc  b                                           ; $42ae: $88
	adc  b                                           ; $42af: $88
	adc  b                                           ; $42b0: $88
	adc  b                                           ; $42b1: $88
	adc  b                                           ; $42b2: $88
	adc  b                                           ; $42b3: $88
	adc  b                                           ; $42b4: $88
	adc  b                                           ; $42b5: $88
	adc  b                                           ; $42b6: $88
	adc  b                                           ; $42b7: $88
	adc  b                                           ; $42b8: $88
	adc  b                                           ; $42b9: $88
	adc  b                                           ; $42ba: $88
	adc  b                                           ; $42bb: $88
	adc  b                                           ; $42bc: $88
	adc  b                                           ; $42bd: $88
	adc  b                                           ; $42be: $88
	adc  b                                           ; $42bf: $88
	adc  b                                           ; $42c0: $88
	adc  b                                           ; $42c1: $88
	adc  b                                           ; $42c2: $88
	adc  b                                           ; $42c3: $88
	adc  b                                           ; $42c4: $88
	adc  b                                           ; $42c5: $88
	adc  b                                           ; $42c6: $88
	adc  b                                           ; $42c7: $88
	adc  b                                           ; $42c8: $88
	adc  b                                           ; $42c9: $88
	adc  b                                           ; $42ca: $88
	adc  b                                           ; $42cb: $88
	adc  b                                           ; $42cc: $88
	adc  b                                           ; $42cd: $88
	adc  b                                           ; $42ce: $88
	adc  b                                           ; $42cf: $88
	adc  b                                           ; $42d0: $88
	adc  b                                           ; $42d1: $88
	adc  b                                           ; $42d2: $88
	adc  b                                           ; $42d3: $88
	adc  b                                           ; $42d4: $88
	adc  b                                           ; $42d5: $88
	adc  b                                           ; $42d6: $88
	adc  b                                           ; $42d7: $88
	adc  b                                           ; $42d8: $88
	adc  b                                           ; $42d9: $88
	adc  b                                           ; $42da: $88
	adc  b                                           ; $42db: $88
	adc  b                                           ; $42dc: $88
	adc  b                                           ; $42dd: $88
	adc  b                                           ; $42de: $88
	adc  b                                           ; $42df: $88
	adc  b                                           ; $42e0: $88
	adc  b                                           ; $42e1: $88
	adc  b                                           ; $42e2: $88
	adc  b                                           ; $42e3: $88
	adc  b                                           ; $42e4: $88
	adc  b                                           ; $42e5: $88
	adc  b                                           ; $42e6: $88
	adc  b                                           ; $42e7: $88
	adc  b                                           ; $42e8: $88
	adc  b                                           ; $42e9: $88
	adc  b                                           ; $42ea: $88
	adc  b                                           ; $42eb: $88
	adc  b                                           ; $42ec: $88
	adc  b                                           ; $42ed: $88
	adc  b                                           ; $42ee: $88
	adc  b                                           ; $42ef: $88
	adc  b                                           ; $42f0: $88
	adc  b                                           ; $42f1: $88
	adc  b                                           ; $42f2: $88
	adc  b                                           ; $42f3: $88
	adc  b                                           ; $42f4: $88
	adc  b                                           ; $42f5: $88
	adc  b                                           ; $42f6: $88
	adc  b                                           ; $42f7: $88
	adc  b                                           ; $42f8: $88
	adc  b                                           ; $42f9: $88
	adc  b                                           ; $42fa: $88
	adc  b                                           ; $42fb: $88
	adc  b                                           ; $42fc: $88
	adc  b                                           ; $42fd: $88
	adc  b                                           ; $42fe: $88
	adc  b                                           ; $42ff: $88
	adc  b                                           ; $4300: $88
	adc  b                                           ; $4301: $88
	adc  b                                           ; $4302: $88
	adc  b                                           ; $4303: $88
	adc  b                                           ; $4304: $88
	adc  b                                           ; $4305: $88
	adc  b                                           ; $4306: $88
	adc  b                                           ; $4307: $88
	adc  b                                           ; $4308: $88
	adc  b                                           ; $4309: $88
	adc  b                                           ; $430a: $88
	adc  b                                           ; $430b: $88
	adc  b                                           ; $430c: $88
	adc  b                                           ; $430d: $88
	adc  b                                           ; $430e: $88
	adc  b                                           ; $430f: $88
	adc  b                                           ; $4310: $88
	adc  b                                           ; $4311: $88
	adc  b                                           ; $4312: $88
	adc  b                                           ; $4313: $88
	adc  b                                           ; $4314: $88
	adc  b                                           ; $4315: $88
	adc  b                                           ; $4316: $88
	adc  b                                           ; $4317: $88
	adc  b                                           ; $4318: $88
	adc  b                                           ; $4319: $88
	adc  b                                           ; $431a: $88
	adc  b                                           ; $431b: $88
	adc  c                                           ; $431c: $89
	adc  c                                           ; $431d: $89
	xor  d                                           ; $431e: $aa
	sbc  d                                           ; $431f: $9a
	sbc  b                                           ; $4320: $98
	adc  c                                           ; $4321: $89
	xor  d                                           ; $4322: $aa
	sbc  d                                           ; $4323: $9a
	sbc  e                                           ; $4324: $9b
	xor  d                                           ; $4325: $aa
	xor  c                                           ; $4326: $a9
	sbc  b                                           ; $4327: $98
	sbc  b                                           ; $4328: $98
	adc  b                                           ; $4329: $88
	adc  b                                           ; $432a: $88
	xor  c                                           ; $432b: $a9
	sbc  d                                           ; $432c: $9a
	sbc  b                                           ; $432d: $98
	halt                                             ; $432e: $76
	ld   d, h                                        ; $432f: $54
	ld   hl, $1111                                   ; $4330: $21 $11 $11
	inc  de                                          ; $4333: $13
	ld   d, [hl]                                     ; $4334: $56
	xor  e                                           ; $4335: $ab
	rst  $38                                         ; $4336: $ff
	rst  $38                                         ; $4337: $ff
	rst  $38                                         ; $4338: $ff
	ei                                               ; $4339: $fb
	ld   d, d                                        ; $433a: $52
	ld   de, $1211                                   ; $433b: $11 $11 $12
	ld   a, h                                        ; $433e: $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $433f: $cf
	rst  $38                                         ; $4340: $ff
	rst  $38                                         ; $4341: $ff
	rst  $38                                         ; $4342: $ff
	ret  c                                           ; $4343: $d8

	ld   sp, $3114                                   ; $4344: $31 $14 $31
	dec  h                                           ; $4347: $25
	add  a                                           ; $4348: $87
	ld   d, d                                        ; $4349: $52
	ld   [hl+], a                                    ; $434a: $22
	ld   de, $1111                                   ; $434b: $11 $11 $11
	sbc  a                                           ; $434e: $9f
	rst  $38                                         ; $434f: $ff
	rst  $38                                         ; $4350: $ff
	rst  $38                                         ; $4351: $ff
	cp   e                                           ; $4352: $bb
	sub  d                                           ; $4353: $92
	ld   de, $4411                                   ; $4354: $11 $11 $44
	adc  a                                           ; $4357: $8f
	rst  $38                                         ; $4358: $ff
	rst  $38                                         ; $4359: $ff
	cp   $a5                                         ; $435a: $fe $a5
	inc  d                                           ; $435c: $14
	halt                                             ; $435d: $76
	sbc  d                                           ; $435e: $9a
	rst  $28                                         ; $435f: $ef
	cp   $cb                                         ; $4360: $fe $cb
	add  [hl]                                        ; $4362: $86
	ld   de, $1111                                   ; $4363: $11 $11 $11
	ld   de, $1111                                   ; $4366: $11 $11 $11
	xor  a                                           ; $4369: $af
	rst  $38                                         ; $436a: $ff
	rst  $38                                         ; $436b: $ff
	rst  $38                                         ; $436c: $ff
	ld   de, $4315                                   ; $436d: $11 $15 $43
	inc  l                                           ; $4370: $2c
	rst  $38                                         ; $4371: $ff
	db   $dd                                         ; $4372: $dd
	rst  $38                                         ; $4373: $ff
	call nz, $8b36                                   ; $4374: $c4 $36 $8b
	adc  d                                           ; $4377: $8a
	rst  $38                                         ; $4378: $ff
	db   $fd                                         ; $4379: $fd
	cp   [hl]                                        ; $437a: $be
	jp   hl                                          ; $437b: $e9


	ld   h, l                                        ; $437c: $65
	ld   h, a                                        ; $437d: $67
	ld   b, c                                        ; $437e: $41
	ld   de, $1111                                   ; $437f: $11 $11 $11
	ld   de, $af11                                   ; $4382: $11 $11 $af
	rst  $38                                         ; $4385: $ff
	db   $fc                                         ; $4386: $fc
	ld   sp, hl                                      ; $4387: $f9
	ld   de, $9617                                   ; $4388: $11 $17 $96
	ld   a, a                                        ; $438b: $7f
	rst  $38                                         ; $438c: $ff
	and  h                                           ; $438d: $a4
	adc  c                                           ; $438e: $89
	ld   d, e                                        ; $438f: $53
	ld   e, c                                        ; $4390: $59
	rst  $38                                         ; $4391: $ff
	adc  $fe                                         ; $4392: $ce $fe
	and  [hl]                                        ; $4394: $a6
	ld   l, h                                        ; $4395: $6c
	db   $fd                                         ; $4396: $fd
	jp   z, $1197                                    ; $4397: $ca $97 $11

	ld   de, $1111                                   ; $439a: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $439d: $11 $11 $ff
	cp   $e1                                         ; $43a0: $fe $e1
	pop  af                                          ; $43a2: $f1
	ld   de, $fb4f                                   ; $43a3: $11 $4f $fb
	rst  JumpTable                                         ; $43a6: $df
	ld   sp, hl                                      ; $43a7: $f9
	ld   de, $ac69                                   ; $43a8: $11 $69 $ac
	rst  $28                                         ; $43ab: $ef
	db   $fd                                         ; $43ac: $fd
	ld   [hl], l                                     ; $43ad: $75
	ld   a, b                                        ; $43ae: $78
	adc  d                                           ; $43af: $8a
	rst  $38                                         ; $43b0: $ff
	rst  $38                                         ; $43b1: $ff
	add  e                                           ; $43b2: $83
	ld   de, $2611                                   ; $43b3: $11 $11 $26
	ld   h, c                                        ; $43b6: $61
	ld   de, $1111                                   ; $43b7: $11 $11 $11
	rst  $38                                         ; $43ba: $ff
	rst  $38                                         ; $43bb: $ff
	and  c                                           ; $43bc: $a1
	pop  de                                          ; $43bd: $d1
	ld   de, $ffbf                                   ; $43be: $11 $bf $ff
	cp   a                                           ; $43c1: $bf
	ld   [hl], c                                     ; $43c2: $71
	ld   de, $ff6f                                   ; $43c3: $11 $6f $ff
	rst  $38                                         ; $43c6: $ff
	ld   a, [$6811]                                  ; $43c7: $fa $11 $68
	rst  $38                                         ; $43ca: $ff
	rst  $38                                         ; $43cb: $ff
	db   $fc                                         ; $43cc: $fc
	ld   hl, $2611                                   ; $43cd: $21 $11 $26
	cp   c                                           ; $43d0: $b9
	ld   h, c                                        ; $43d1: $61
	ld   de, $1111                                   ; $43d2: $11 $11 $11
	rst  $38                                         ; $43d5: $ff
	rst  $38                                         ; $43d6: $ff
	ld   de, $1241                                   ; $43d7: $11 $41 $12
	rst  $38                                         ; $43da: $ff
	rst  $38                                         ; $43db: $ff
	ld   [hl], d                                     ; $43dc: $72
	ld   de, rAUD1HIGH                                   ; $43dd: $11 $14 $ff
	rst  $38                                         ; $43e0: $ff
	cp   $51                                         ; $43e1: $fe $51
	ld   de, $ffbf                                   ; $43e3: $11 $bf $ff
	rst  $38                                         ; $43e6: $ff
	ld   h, c                                        ; $43e7: $61
	ld   de, $df4a                                   ; $43e8: $11 $4a $df
	call nz, $1111                                   ; $43eb: $c4 $11 $11
	ld   de, $ff1f                                   ; $43ee: $11 $1f $ff
	and  c                                           ; $43f1: $a1
	ld   de, $6f11                                   ; $43f2: $11 $11 $6f
	rst  $38                                         ; $43f5: $ff
	pop  af                                          ; $43f6: $f1
	ld   de, $bf11                                   ; $43f7: $11 $11 $bf
	rst  $38                                         ; $43fa: $ff
	rst  $30                                         ; $43fb: $f7
	ld   de, $8f11                                   ; $43fc: $11 $11 $8f
	rst  $38                                         ; $43ff: $ff
	ei                                               ; $4400: $fb
	ld   hl, $5f11                                   ; $4401: $21 $11 $5f
	rst  $38                                         ; $4404: $ff
	call nz, $1111                                   ; $4405: $c4 $11 $11
	ld   de, rAUD1LEN                                   ; $4408: $11 $11 $ff
	pop  de                                          ; $440b: $d1
	ld   de, $1a35                                   ; $440c: $11 $35 $1a
	rst  $38                                         ; $440f: $ff
	db   $ed                                         ; $4410: $ed
	ld   de, $1f11                                   ; $4411: $11 $11 $1f
	rst  $38                                         ; $4414: $ff
	cp   $11                                         ; $4415: $fe $11
	ld   de, $ff9f                                   ; $4417: $11 $9f $ff
	db   $fc                                         ; $441a: $fc
	ld   de, $9f12                                   ; $441b: $11 $12 $9f
	rst  $38                                         ; $441e: $ff
	jp   nc, $1111                                   ; $441f: $d2 $11 $11

	ld   de, $ef11                                   ; $4422: $11 $11 $ef
	pop  af                                          ; $4425: $f1
	ld   hl, $751f                                   ; $4426: $21 $1f $75
	rst  $38                                         ; $4429: $ff
	ld   sp, hl                                      ; $442a: $f9
	ld   de, $0f16                                   ; $442b: $11 $16 $0f
	rst  $38                                         ; $442e: $ff
	rst  $38                                         ; $442f: $ff
	ld   de, $8f11                                   ; $4430: $11 $11 $8f
	rst  $38                                         ; $4433: $ff
	ld   a, [$1411]                                  ; $4434: $fa $11 $14
	rst  JumpTable                                         ; $4437: $df
	rst  $38                                         ; $4438: $ff
	or   c                                           ; $4439: $b1
	ld   de, $1111                                   ; $443a: $11 $11 $11
	ld   de, $f1ff                                   ; $443d: $11 $ff $f1
	ld   de, $bb1f                                   ; $4440: $11 $1f $bb
	rst  $38                                         ; $4443: $ff
	ld   l, c                                        ; $4444: $69
	ld   de, $8f17                                   ; $4445: $11 $17 $8f
	rst  $38                                         ; $4448: $ff
	ld   a, [$1511]                                  ; $4449: $fa $11 $15
	rst  $38                                         ; $444c: $ff
	rst  $38                                         ; $444d: $ff
	pop  af                                          ; $444e: $f1
	ld   de, $ff1d                                   ; $444f: $11 $1d $ff
	db   $fd                                         ; $4452: $fd
	ld   hl, $1111                                   ; $4453: $21 $11 $11
	ld   de, $f41f                                   ; $4456: $11 $1f $f4
	ld   de, $fd17                                   ; $4459: $11 $17 $fd
	rst  $38                                         ; $445c: $ff
	ld   hl, sp+$61                                  ; $445d: $f8 $61
	ld   [de], a                                     ; $445f: $12
	ld   l, a                                        ; $4460: $6f
	rst  $38                                         ; $4461: $ff
	rst  $38                                         ; $4462: $ff
	ld   de, $9f11                                   ; $4463: $11 $11 $9f
	rst  $38                                         ; $4466: $ff
	ei                                               ; $4467: $fb
	ld   de, rAUD1ENV                                   ; $4468: $11 $12 $ff
	rst  $38                                         ; $446b: $ff
	sub  c                                           ; $446c: $91
	ld   de, $1111                                   ; $446d: $11 $11 $11
	rst  $38                                         ; $4470: $ff
	pop  af                                          ; $4471: $f1
	ld   de, $9d17                                   ; $4472: $11 $17 $9d
	rst  $38                                         ; $4475: $ff
	ei                                               ; $4476: $fb
	ld   de, $3f11                                   ; $4477: $11 $11 $3f
	rst  $38                                         ; $447a: $ff
	rst  $38                                         ; $447b: $ff
	ld   de, $bf11                                   ; $447c: $11 $11 $bf
	rst  $38                                         ; $447f: $ff
	rst  $30                                         ; $4480: $f7
	ld   de, $ff17                                   ; $4481: $11 $17 $ff
	cp   $41                                         ; $4484: $fe $41
	ld   de, $1f11                                   ; $4486: $11 $11 $1f
	rst  $38                                         ; $4489: $ff
	ld   hl, $5611                                   ; $448a: $21 $11 $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $448d: $cf
	rst  $38                                         ; $448e: $ff
	pop  hl                                          ; $448f: $e1
	ld   de, $ff06                                   ; $4490: $11 $06 $ff
	rst  $38                                         ; $4493: $ff
	pop  af                                          ; $4494: $f1
	ld   de, $ff1f                                   ; $4495: $11 $1f $ff
	rst  $38                                         ; $4498: $ff
	ld   d, c                                        ; $4499: $51
	ld   de, $ff6e                                   ; $449a: $11 $6e $ff
	sub  c                                           ; $449d: $91
	ld   de, $af11                                   ; $449e: $11 $11 $af
	ld   sp, hl                                      ; $44a1: $f9
	sub  c                                           ; $44a2: $91
	ld   de, $ff15                                   ; $44a3: $11 $15 $ff
	rst  $38                                         ; $44a6: $ff
	ld   [hl], c                                     ; $44a7: $71
	ld   de, $ff1c                                   ; $44a8: $11 $1c $ff
	rst  $38                                         ; $44ab: $ff
	ld   b, c                                        ; $44ac: $41
	ld   de, $ff5f                                   ; $44ad: $11 $5f $ff
	db   $fd                                         ; $44b0: $fd
	ld   b, c                                        ; $44b1: $41
	ld   de, $ea5b                                   ; $44b2: $11 $5b $ea
	ld   sp, $1f11                                   ; $44b5: $31 $11 $1f
	rst  $38                                         ; $44b8: $ff
	and  c                                           ; $44b9: $a1
	dec  d                                           ; $44ba: $15
	inc  de                                          ; $44bb: $13
	adc  a                                           ; $44bc: $8f
	rst  $38                                         ; $44bd: $ff
	pop  af                                          ; $44be: $f1
	ld   de, $ff16                                   ; $44bf: $11 $16 $ff
	rst  $38                                         ; $44c2: $ff
	and  c                                           ; $44c3: $a1
	ld   de, $ff1e                                   ; $44c4: $11 $1e $ff
	rst  $38                                         ; $44c7: $ff
	ld   h, c                                        ; $44c8: $61
	ld   de, $8665                                   ; $44c9: $11 $65 $86
	ld   de, rAUD1LEN                                   ; $44cc: $11 $11 $ff
	push af                                          ; $44cf: $f5
	ld   de, $4516                                   ; $44d0: $11 $16 $45
	rst  $38                                         ; $44d3: $ff
	rst  $38                                         ; $44d4: $ff
	ld   de, $4f11                                   ; $44d5: $11 $11 $4f
	rst  $38                                         ; $44d8: $ff
	rst  $38                                         ; $44d9: $ff
	ld   de, $bf11                                   ; $44da: $11 $11 $bf
	rst  $38                                         ; $44dd: $ff
	db   $fc                                         ; $44de: $fc
	ld   sp, $5611                                   ; $44df: $31 $11 $56
	ld   b, c                                        ; $44e2: $41
	ld   de, $f51f                                   ; $44e3: $11 $1f $f5
	ld   h, c                                        ; $44e6: $61
	add  hl, de                                      ; $44e7: $19
	rla                                              ; $44e8: $17
	rst  $38                                         ; $44e9: $ff
	rst  $38                                         ; $44ea: $ff
	ld   h, c                                        ; $44eb: $61
	ld   de, $ff2a                                   ; $44ec: $11 $2a $ff
	rst  $38                                         ; $44ef: $ff
	ld   [hl], c                                     ; $44f0: $71
	ld   de, $ff2e                                   ; $44f1: $11 $2e $ff
	db   $fd                                         ; $44f4: $fd
	ld   d, c                                        ; $44f5: $51
	ld   de, $1133                                   ; $44f6: $11 $33 $11
	ld   de, $f6ff                                   ; $44f9: $11 $ff $f6
	ld   de, $1711                                   ; $44fc: $11 $11 $17
	rst  $38                                         ; $44ff: $ff
	rst  $38                                         ; $4500: $ff
	ld   de, $1f11                                   ; $4501: $11 $11 $1f
	rst  $38                                         ; $4504: $ff
	rst  $38                                         ; $4505: $ff
	ld   de, $7f11                                   ; $4506: $11 $11 $7f
	rst  $38                                         ; $4509: $ff
	ld   a, [$1111]                                  ; $450a: $fa $11 $11
	ld   hl, $1f11                                   ; $450d: $21 $11 $1f
	db   $fc                                         ; $4510: $fc
	or   c                                           ; $4511: $b1
	ld   d, $11                                      ; $4512: $16 $11
	ld   a, a                                        ; $4514: $7f
	rst  $38                                         ; $4515: $ff
	pop  af                                          ; $4516: $f1
	ld   de, rAUD1LEN                                   ; $4517: $11 $11 $ff
	rst  $38                                         ; $451a: $ff
	pop  af                                          ; $451b: $f1
	ld   de, rAUD1LOW                                   ; $451c: $11 $13 $ff
	rst  $38                                         ; $451f: $ff
	or   c                                           ; $4520: $b1
	ld   de, $1111                                   ; $4521: $11 $11 $11
	rra                                              ; $4524: $1f
	cp   $f1                                         ; $4525: $fe $f1
	ld   de, $8f11                                   ; $4527: $11 $11 $8f
	rst  $38                                         ; $452a: $ff
	pop  hl                                          ; $452b: $e1
	ld   de, rAUD1LEN                                   ; $452c: $11 $11 $ff
	rst  $38                                         ; $452f: $ff
	or   $11                                         ; $4530: $f6 $11
	ld   de, $ffff                                   ; $4532: $11 $ff $ff
	and  c                                           ; $4535: $a1
	ld   de, $1111                                   ; $4536: $11 $11 $11
	rst  $38                                         ; $4539: $ff
	rst  $38                                         ; $453a: $ff
	ld   de, $1511                                   ; $453b: $11 $11 $15
	rst  $38                                         ; $453e: $ff
	rst  $38                                         ; $453f: $ff
	ld   h, l                                        ; $4540: $65
	ld   de, $ff1a                                   ; $4541: $11 $1a $ff
	rst  $38                                         ; $4544: $ff
	db   $f4                                         ; $4545: $f4
	ld   de, $ff15                                   ; $4546: $11 $15 $ff
	db   $fc                                         ; $4549: $fc
	ld   de, $1111                                   ; $454a: $11 $11 $11
	rst  $38                                         ; $454d: $ff
	rst  $38                                         ; $454e: $ff
	ld   b, c                                        ; $454f: $41
	ld   sp, rAUD1LEN                                   ; $4550: $31 $11 $ff
	rst  $38                                         ; $4553: $ff
	cp   a                                           ; $4554: $bf
	ld   b, c                                        ; $4555: $41
	inc  de                                          ; $4556: $13
	rst  JumpTable                                         ; $4557: $df
	rst  $38                                         ; $4558: $ff
	ei                                               ; $4559: $fb
	ld   [hl], c                                     ; $455a: $71
	ld   de, $ca8b                                   ; $455b: $11 $8b $ca
	ld   b, c                                        ; $455e: $41
	ld   de, $ff1e                                   ; $455f: $11 $1e $ff
	rst  $38                                         ; $4562: $ff
	ld   a, [de]                                     ; $4563: $1a
	ld   de, $fc1f                                   ; $4564: $11 $1f $fc
	db   $fd                                         ; $4567: $fd
	db   $fd                                         ; $4568: $fd
	ld   sp, $ef3e                                   ; $4569: $31 $3e $ef
	rst  $38                                         ; $456c: $ff
	ld   a, [$1631]                                  ; $456d: $fa $31 $16
	ld   h, h                                        ; $4570: $64
	ld   [hl], l                                     ; $4571: $75
	ld   de, rAUD1LEN                                   ; $4572: $11 $11 $ff
	sbc  a                                           ; $4575: $9f
	ld   l, c                                        ; $4576: $69
	ld   h, c                                        ; $4577: $61
	ld   de, $bffd                                   ; $4578: $11 $fd $bf
	rst  $38                                         ; $457b: $ff
	or   c                                           ; $457c: $b1
	dec  e                                           ; $457d: $1d
	sbc  e                                           ; $457e: $9b
	rst  $38                                         ; $457f: $ff
	rst  $38                                         ; $4580: $ff
	jp   nc, $1131                                   ; $4581: $d2 $31 $11

	inc  de                                          ; $4584: $13
	ld   de, rAUD1LEN                                   ; $4585: $11 $11 $ff
	ld   e, a                                        ; $4588: $5f
	ld   a, d                                        ; $4589: $7a
	ld   b, c                                        ; $458a: $41
	ld   de, $8ffb                                   ; $458b: $11 $fb $8f
	rst  $38                                         ; $458e: $ff
	db   $e3                                         ; $458f: $e3
	dec  e                                           ; $4590: $1d
	or   [hl]                                        ; $4591: $b6
	rst  JumpTable                                         ; $4592: $df
	rst  $38                                         ; $4593: $ff
	or   h                                           ; $4594: $b4
	add  e                                           ; $4595: $83
	ld   de, $1111                                   ; $4596: $11 $11 $11
	rra                                              ; $4599: $1f
	cp   $ff                                         ; $459a: $fe $ff
	xor  [hl]                                        ; $459c: $ae
	ld   de, $a11d                                   ; $459d: $11 $1d $a1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45a0: $cf
	rst  $38                                         ; $45a1: $ff
	pop  bc                                          ; $45a2: $c1
	ld   a, e                                        ; $45a3: $7b
	ld   d, $ff                                      ; $45a4: $16 $ff
	rst  $38                                         ; $45a6: $ff
	sbc  b                                           ; $45a7: $98
	ld   b, c                                        ; $45a8: $41
	ld   de, $1111                                   ; $45a9: $11 $11 $11
	rst  $38                                         ; $45ac: $ff
	adc  a                                           ; $45ad: $8f
	rst  $38                                         ; $45ae: $ff
	pop  de                                          ; $45af: $d1
	ld   de, $1981                                   ; $45b0: $11 $81 $19
	rst  $38                                         ; $45b3: $ff
	rst  $28                                         ; $45b4: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45b5: $cf
	and  c                                           ; $45b6: $a1
	ld   e, a                                        ; $45b7: $5f
	cp   b                                           ; $45b8: $b8
	cp   l                                           ; $45b9: $bd
	push af                                          ; $45ba: $f5
	ld   de, $1111                                   ; $45bb: $11 $11 $11
	rst  $38                                         ; $45be: $ff
	cp   a                                           ; $45bf: $bf
	rst  $38                                         ; $45c0: $ff
	pop  af                                          ; $45c1: $f1
	ld   de, $1851                                   ; $45c2: $11 $51 $18
	rst  $38                                         ; $45c5: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45c6: $cf
	rst  $38                                         ; $45c7: $ff
	push bc                                          ; $45c8: $c5
	ld   a, h                                        ; $45c9: $7c
	or   h                                           ; $45ca: $b4
	xor  c                                           ; $45cb: $a9
	or   e                                           ; $45cc: $b3
	ld   de, $1111                                   ; $45cd: $11 $11 $11
	rst  $38                                         ; $45d0: $ff
	ld   c, a                                        ; $45d1: $4f
	rst  $38                                         ; $45d2: $ff
	pop  af                                          ; $45d3: $f1
	ld   [hl], $91                                   ; $45d4: $36 $91
	ld   d, $fa                                      ; $45d6: $16 $fa
	ld   a, a                                        ; $45d8: $7f
	rst  $38                                         ; $45d9: $ff
	db   $fc                                         ; $45da: $fc
	cp   $65                                         ; $45db: $fe $65
	ld   [hl], a                                     ; $45dd: $77
	ld   d, c                                        ; $45de: $51
	ld   de, $1111                                   ; $45df: $11 $11 $11
	rst  $38                                         ; $45e2: $ff
	ld   c, a                                        ; $45e3: $4f
	rst  $38                                         ; $45e4: $ff
	pop  bc                                          ; $45e5: $c1
	ld   e, c                                        ; $45e6: $59
	ld   sp, $d51a                                   ; $45e7: $31 $1a $d5
	adc  a                                           ; $45ea: $8f
	rst  $38                                         ; $45eb: $ff
	rst  JumpTable                                         ; $45ec: $df
	rst  $38                                         ; $45ed: $ff
	ld   b, a                                        ; $45ee: $47
	and  [hl]                                        ; $45ef: $a6
	ld   de, $1111                                   ; $45f0: $11 $11 $11
	rra                                              ; $45f3: $1f
	di                                               ; $45f4: $f3
	rst  $38                                         ; $45f5: $ff
	rst  $38                                         ; $45f6: $ff
	ld   b, a                                        ; $45f7: $47
	sub  h                                           ; $45f8: $94
	ld   de, $448a                                   ; $45f9: $11 $8a $44
	rst  $38                                         ; $45fc: $ff
	db   $fd                                         ; $45fd: $fd
	rst  $38                                         ; $45fe: $ff
	rst  $30                                         ; $45ff: $f7
	ld   e, c                                        ; $4600: $59
	ld   sp, $1111                                   ; $4601: $31 $11 $11
	ld   de, $3fff                                   ; $4604: $11 $ff $3f
	rst  $38                                         ; $4607: $ff
	ld   hl, sp-$16                                  ; $4608: $f8 $ea
	ld   de, $2114                                   ; $460a: $11 $14 $21
	ld   e, a                                        ; $460d: $5f
	rst  $38                                         ; $460e: $ff
	rst  $38                                         ; $460f: $ff
	rst  $38                                         ; $4610: $ff
	adc  b                                           ; $4611: $88
	sub  c                                           ; $4612: $91
	ld   de, $1111                                   ; $4613: $11 $11 $11
	ccf                                              ; $4616: $3f
	ld   l, $ff                                      ; $4617: $2e $ff
	rst  $38                                         ; $4619: $ff
	rst  $38                                         ; $461a: $ff
	and  c                                           ; $461b: $a1
	inc  d                                           ; $461c: $14
	ld   de, $cf17                                   ; $461d: $11 $17 $cf
	rst  $38                                         ; $4620: $ff
	rst  $38                                         ; $4621: $ff
	ei                                               ; $4622: $fb
	ret  c                                           ; $4623: $d8

	ld   de, $1111                                   ; $4624: $11 $11 $11
	rra                                              ; $4627: $1f
	pop  bc                                          ; $4628: $c1
	rst  $38                                         ; $4629: $ff
	rst  $38                                         ; $462a: $ff
	rst  $38                                         ; $462b: $ff
	ld   hl, sp+$15                                  ; $462c: $f8 $15
	ld   de, $5411                                   ; $462e: $11 $11 $54
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4631: $cf
	rst  $38                                         ; $4632: $ff
	rst  $38                                         ; $4633: $ff
	rst  $38                                         ; $4634: $ff
	ld   [hl], e                                     ; $4635: $73
	ld   de, $1111                                   ; $4636: $11 $11 $11
	ld   [hl], c                                     ; $4639: $71
	rst  $38                                         ; $463a: $ff
	rst  $38                                         ; $463b: $ff
	rst  $38                                         ; $463c: $ff
	rst  $38                                         ; $463d: $ff
	sbc  a                                           ; $463e: $9f
	ld   [hl], c                                     ; $463f: $71
	ld   de, $1711                                   ; $4640: $11 $11 $17
	rst  JumpTable                                         ; $4643: $df
	rst  $38                                         ; $4644: $ff
	rst  $28                                         ; $4645: $ef
	ld   sp, hl                                      ; $4646: $f9
	ld   de, $1111                                   ; $4647: $11 $11 $11
	inc  d                                           ; $464a: $14
	add  h                                           ; $464b: $84
	rst  $38                                         ; $464c: $ff
	rst  $38                                         ; $464d: $ff
	rst  $38                                         ; $464e: $ff
	rst  $38                                         ; $464f: $ff
	xor  h                                           ; $4650: $ac
	ld   hl, $1211                                   ; $4651: $21 $11 $12
	ld   c, d                                        ; $4654: $4a
	and  l                                           ; $4655: $a5
	adc  d                                           ; $4656: $8a
	ld   h, e                                        ; $4657: $63
	dec  d                                           ; $4658: $15
	and  c                                           ; $4659: $a1
	jr   jr_0d0_468f                                 ; $465a: $18 $33

	ld   a, h                                        ; $465c: $7c
	rst  $28                                         ; $465d: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $465e: $cf
	rst  $38                                         ; $465f: $ff
	cp   $c8                                         ; $4660: $fe $c8
	xor  b                                           ; $4662: $a8
	and  a                                           ; $4663: $a7
	sbc  e                                           ; $4664: $9b
	ld   h, h                                        ; $4665: $64
	ld   b, l                                        ; $4666: $45
	ld   de, $6111                                   ; $4667: $11 $11 $61
	dec  e                                           ; $466a: $1d
	or   l                                           ; $466b: $b5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $466c: $cf
	rst  $38                                         ; $466d: $ff
	rst  $38                                         ; $466e: $ff
	db   $fd                                         ; $466f: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4670: $cf
	sub  [hl]                                        ; $4671: $96
	ld   l, b                                        ; $4672: $68
	ld   b, a                                        ; $4673: $47
	adc  e                                           ; $4674: $8b
	and  [hl]                                        ; $4675: $a6
	add  a                                           ; $4676: $87
	ld   b, c                                        ; $4677: $41
	ld   de, $1623                                   ; $4678: $11 $23 $16
	sub  c                                           ; $467b: $91
	ld   a, l                                        ; $467c: $7d
	cp   $ff                                         ; $467d: $fe $ff
	rst  $38                                         ; $467f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4680: $cf
	jp   hl                                          ; $4681: $e9


	sbc  h                                           ; $4682: $9c
	ld   h, [hl]                                     ; $4683: $66
	ld   a, b                                        ; $4684: $78
	add  d                                           ; $4685: $82
	inc  [hl]                                        ; $4686: $34
	ld   de, $6111                                   ; $4687: $11 $11 $61
	inc  e                                           ; $468a: $1c
	ld   [hl], l                                     ; $468b: $75
	cp   a                                           ; $468c: $bf
	xor  $ff                                         ; $468d: $ee $ff

jr_0d0_468f:
	rst  $38                                         ; $468f: $ff
	rst  $28                                         ; $4690: $ef
	cp   b                                           ; $4691: $b8
	xor  h                                           ; $4692: $ac
	ld   e, b                                        ; $4693: $58
	adc  c                                           ; $4694: $89
	ld   h, e                                        ; $4695: $63
	ld   d, e                                        ; $4696: $53
	ld   de, $5111                                   ; $4697: $11 $11 $51
	inc  e                                           ; $469a: $1c
	dec  d                                           ; $469b: $15
	cp   a                                           ; $469c: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $469d: $cf
	rst  $38                                         ; $469e: $ff
	rst  $38                                         ; $469f: $ff
	rst  $38                                         ; $46a0: $ff
	ld   [$59ca], a                                  ; $46a1: $ea $ca $59
	ld   h, [hl]                                     ; $46a4: $66
	ld   b, d                                        ; $46a5: $42
	ld   hl, $1411                                   ; $46a6: $21 $11 $14
	ld   de, $3ab4                                   ; $46a9: $11 $b4 $3a
	xor  $df                                         ; $46ac: $ee $df
	rst  $38                                         ; $46ae: $ff
	rst  $38                                         ; $46af: $ff
	rst  $38                                         ; $46b0: $ff
	db   $ed                                         ; $46b1: $ed
	rst  $20                                         ; $46b2: $e7
	xor  b                                           ; $46b3: $a8
	ld   d, h                                        ; $46b4: $54
	ld   hl, $1111                                   ; $46b5: $21 $11 $11
	ld   de, $6119                                   ; $46b8: $11 $19 $61
	adc  l                                           ; $46bb: $8d
	db   $eb                                         ; $46bc: $eb
	rst  $38                                         ; $46bd: $ff
	rst  $38                                         ; $46be: $ff
	rst  $38                                         ; $46bf: $ff
	rst  $38                                         ; $46c0: $ff
	adc  $9a                                         ; $46c1: $ce $9a
	and  [hl]                                        ; $46c3: $a6
	ld   d, h                                        ; $46c4: $54
	ld   hl, $1111                                   ; $46c5: $21 $11 $11
	ld   de, $1857                                   ; $46c8: $11 $57 $18
	adc  $af                                         ; $46cb: $ce $af
	rst  $38                                         ; $46cd: $ff
	rst  $38                                         ; $46ce: $ff
	rst  $38                                         ; $46cf: $ff
	db   $fd                                         ; $46d0: $fd
	ld   a, [$64bc]                                  ; $46d1: $fa $bc $64
	inc  sp                                          ; $46d4: $33
	ld   de, $1111                                   ; $46d5: $11 $11 $11
	inc  de                                          ; $46d8: $13
	ld   [hl], c                                     ; $46d9: $71
	ld   e, e                                        ; $46da: $5b
	ret  c                                           ; $46db: $d8

	rst  $38                                         ; $46dc: $ff
	rst  $38                                         ; $46dd: $ff
	rst  $38                                         ; $46de: $ff
	rst  $38                                         ; $46df: $ff
	rst  $38                                         ; $46e0: $ff
	cp   d                                           ; $46e1: $ba
	rst  $10                                         ; $46e2: $d7
	ld   [hl-], a                                    ; $46e3: $32
	ld   b, c                                        ; $46e4: $41
	ld   de, $1111                                   ; $46e5: $11 $11 $11
	rla                                              ; $46e8: $17
	inc  d                                           ; $46e9: $14
	xor  l                                           ; $46ea: $ad
	ld   a, a                                        ; $46eb: $7f
	rst  $38                                         ; $46ec: $ff
	rst  $38                                         ; $46ed: $ff
	rst  $38                                         ; $46ee: $ff
	rst  $38                                         ; $46ef: $ff
	cp   $bd                                         ; $46f0: $fe $bd
	sub  h                                           ; $46f2: $94
	dec  d                                           ; $46f3: $15
	ld   de, $1111                                   ; $46f4: $11 $11 $11
	ld   de, $1871                                   ; $46f7: $11 $71 $18
	sub  $ff                                         ; $46fa: $d6 $ff
	rst  $38                                         ; $46fc: $ff
	rst  $38                                         ; $46fd: $ff
	rst  $38                                         ; $46fe: $ff
	rst  $38                                         ; $46ff: $ff
	db   $fd                                         ; $4700: $fd
	call c, Call_0d0_5181                            ; $4701: $dc $81 $51
	ld   de, $1111                                   ; $4704: $11 $11 $11
	dec  d                                           ; $4707: $15
	ld   de, $7d3d                                   ; $4708: $11 $3d $7d
	rst  $38                                         ; $470b: $ff
	rst  $38                                         ; $470c: $ff
	rst  $38                                         ; $470d: $ff
	rst  $38                                         ; $470e: $ff
	rst  $38                                         ; $470f: $ff
	db   $fc                                         ; $4710: $fc
	xor  l                                           ; $4711: $ad
	inc  de                                          ; $4712: $13
	ld   hl, $1111                                   ; $4713: $21 $11 $11
	ld   de, $1111                                   ; $4716: $11 $11 $11
	ld   l, d                                        ; $4719: $6a
	adc  a                                           ; $471a: $8f
	rst  $38                                         ; $471b: $ff
	rst  $38                                         ; $471c: $ff
	rst  $38                                         ; $471d: $ff
	rst  $38                                         ; $471e: $ff
	rst  $38                                         ; $471f: $ff
	ei                                               ; $4720: $fb
	or   a                                           ; $4721: $b7
	ld   b, h                                        ; $4722: $44
	ld   de, $1111                                   ; $4723: $11 $11 $11
	ld   de, $1111                                   ; $4726: $11 $11 $11
	ld   d, l                                        ; $4729: $55
	sbc  l                                           ; $472a: $9d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $472b: $cf
	rst  $38                                         ; $472c: $ff
	rst  $38                                         ; $472d: $ff
	rst  $38                                         ; $472e: $ff
	rst  $38                                         ; $472f: $ff
	db   $fc                                         ; $4730: $fc
	xor  b                                           ; $4731: $a8
	ld   a, b                                        ; $4732: $78
	ld   d, e                                        ; $4733: $53
	ld   b, d                                        ; $4734: $42
	ld   de, $2221                                   ; $4735: $11 $21 $22
	ld   de, $3713                                   ; $4738: $11 $13 $37
	ld   a, b                                        ; $473b: $78
	cp   h                                           ; $473c: $bc
	db   $dd                                         ; $473d: $dd
	rst  $38                                         ; $473e: $ff
	rst  $38                                         ; $473f: $ff
	cp   $cc                                         ; $4740: $fe $cc
	xor  d                                           ; $4742: $aa
	xor  c                                           ; $4743: $a9
	sbc  c                                           ; $4744: $99
	add  [hl]                                        ; $4745: $86
	ld   h, l                                        ; $4746: $65
	ld   d, e                                        ; $4747: $53
	ld   [hl-], a                                    ; $4748: $32
	ld   de, $1311                                   ; $4749: $11 $11 $13
	dec  [hl]                                        ; $474c: $35
	ld   a, b                                        ; $474d: $78
	xor  e                                           ; $474e: $ab
	db   $dd                                         ; $474f: $dd
	rst  $38                                         ; $4750: $ff
	db   $fd                                         ; $4751: $fd
	call z, $bccc                                    ; $4752: $cc $cc $bc
	cp   e                                           ; $4755: $bb
	cp   d                                           ; $4756: $ba
	add  a                                           ; $4757: $87
	halt                                             ; $4758: $76
	ld   b, h                                        ; $4759: $44
	ld   [hl+], a                                    ; $475a: $22
	ld   de, $2311                                   ; $475b: $11 $11 $23
	ld   d, [hl]                                     ; $475e: $56
	ld   a, c                                        ; $475f: $79
	sbc  h                                           ; $4760: $9c
	call $cbee                                       ; $4761: $cd $ee $cb
	xor  e                                           ; $4764: $ab
	cp   h                                           ; $4765: $bc
	cp   h                                           ; $4766: $bc
	cp   h                                           ; $4767: $bc
	res  3, c                                        ; $4768: $cb $99
	add  [hl]                                        ; $476a: $86
	ld   d, h                                        ; $476b: $54
	ld   [hl-], a                                    ; $476c: $32
	ld   de, $2311                                   ; $476d: $11 $11 $23
	ld   b, [hl]                                     ; $4770: $46
	ld   a, c                                        ; $4771: $79
	xor  d                                           ; $4772: $aa
	xor  e                                           ; $4773: $ab
	cp   e                                           ; $4774: $bb
	cp   d                                           ; $4775: $ba
	sbc  c                                           ; $4776: $99
	xor  e                                           ; $4777: $ab
	cp   h                                           ; $4778: $bc
	xor  $dc                                         ; $4779: $ee $dc
	jp   z, Jump_0d0_65a8                            ; $477b: $ca $a8 $65

	ld   b, e                                        ; $477e: $43
	ld   [hl+], a                                    ; $477f: $22
	ld   hl, $3422                                   ; $4780: $21 $22 $34
	ld   d, a                                        ; $4783: $57

Jump_0d0_4784:
	ld   a, b                                        ; $4784: $78
	sbc  c                                           ; $4785: $99
	sbc  d                                           ; $4786: $9a
	xor  c                                           ; $4787: $a9
	xor  e                                           ; $4788: $ab
	cp   e                                           ; $4789: $bb
	db   $dd                                         ; $478a: $dd
	db   $ed                                         ; $478b: $ed
	db   $dd                                         ; $478c: $dd
	call c, $86a9                                    ; $478d: $dc $a9 $86
	ld   d, h                                        ; $4790: $54
	ld   b, e                                        ; $4791: $43
	ld   [hl+], a                                    ; $4792: $22
	ld   de, $4522                                   ; $4793: $11 $22 $45
	ld   h, a                                        ; $4796: $67
	adc  c                                           ; $4797: $89
	sbc  c                                           ; $4798: $99
	xor  c                                           ; $4799: $a9
	xor  d                                           ; $479a: $aa
	cp   e                                           ; $479b: $bb
	cp   h                                           ; $479c: $bc
	call $eded                                       ; $479d: $cd $ed $ed
	res  5, c                                        ; $47a0: $cb $a9
	halt                                             ; $47a2: $76
	ld   d, e                                        ; $47a3: $53
	ld   [hl-], a                                    ; $47a4: $32
	ld   hl, $2412                                   ; $47a5: $21 $12 $24
	ld   d, [hl]                                     ; $47a8: $56
	ld   a, b                                        ; $47a9: $78
	sbc  b                                           ; $47aa: $98
	sbc  c                                           ; $47ab: $99
	sbc  d                                           ; $47ac: $9a
	sbc  d                                           ; $47ad: $9a
	cp   e                                           ; $47ae: $bb
	set  3, l                                        ; $47af: $cb $dd
	xor  $dd                                         ; $47b1: $ee $dd
	res  5, c                                        ; $47b3: $cb $a9
	halt                                             ; $47b5: $76
	ld   d, h                                        ; $47b6: $54
	inc  sp                                          ; $47b7: $33
	ld   [hl-], a                                    ; $47b8: $32
	inc  hl                                          ; $47b9: $23
	dec  [hl]                                        ; $47ba: $35
	ld   d, [hl]                                     ; $47bb: $56
	ld   a, b                                        ; $47bc: $78
	adc  b                                           ; $47bd: $88
	adc  c                                           ; $47be: $89
	sbc  b                                           ; $47bf: $98
	sbc  c                                           ; $47c0: $99
	xor  e                                           ; $47c1: $ab
	cp   e                                           ; $47c2: $bb
	call z, $eddd                                    ; $47c3: $cc $dd $ed
	call c, $86b9                                    ; $47c6: $dc $b9 $86
	ld   d, h                                        ; $47c9: $54
	ld   b, e                                        ; $47ca: $43
	inc  sp                                          ; $47cb: $33
	inc  sp                                          ; $47cc: $33
	inc  [hl]                                        ; $47cd: $34
	ld   d, [hl]                                     ; $47ce: $56
	ld   h, a                                        ; $47cf: $67
	ld   a, b                                        ; $47d0: $78
	adc  b                                           ; $47d1: $88
	adc  c                                           ; $47d2: $89
	sbc  d                                           ; $47d3: $9a
	xor  e                                           ; $47d4: $ab
	cp   h                                           ; $47d5: $bc
	call z, $dede                                    ; $47d6: $cc $de $de
	call z, $86a9                                    ; $47d9: $cc $a9 $86
	ld   d, h                                        ; $47dc: $54
	ld   b, e                                        ; $47dd: $43
	inc  sp                                          ; $47de: $33
	inc  sp                                          ; $47df: $33
	inc  [hl]                                        ; $47e0: $34
	ld   d, [hl]                                     ; $47e1: $56
	ld   h, a                                        ; $47e2: $67
	ld   a, b                                        ; $47e3: $78
	adc  b                                           ; $47e4: $88
	sbc  b                                           ; $47e5: $98
	sbc  c                                           ; $47e6: $99
	xor  d                                           ; $47e7: $aa
	cp   h                                           ; $47e8: $bc
	call $dccd                                       ; $47e9: $cd $cd $dc
	call z, $87b9                                    ; $47ec: $cc $b9 $87
	ld   d, l                                        ; $47ef: $55
	ld   b, h                                        ; $47f0: $44
	inc  sp                                          ; $47f1: $33
	inc  sp                                          ; $47f2: $33
	inc  [hl]                                        ; $47f3: $34
	ld   d, [hl]                                     ; $47f4: $56
	ld   [hl], a                                     ; $47f5: $77
	adc  b                                           ; $47f6: $88
	adc  b                                           ; $47f7: $88
	adc  c                                           ; $47f8: $89
	sbc  d                                           ; $47f9: $9a
	xor  e                                           ; $47fa: $ab
	xor  e                                           ; $47fb: $ab
	call z, $dcdd                                    ; $47fc: $cc $dd $dc
	cp   e                                           ; $47ff: $bb
	xor  c                                           ; $4800: $a9
	add  a                                           ; $4801: $87
	ld   h, l                                        ; $4802: $65
	ld   b, h                                        ; $4803: $44
	inc  sp                                          ; $4804: $33
	inc  sp                                          ; $4805: $33
	ld   b, l                                        ; $4806: $45
	ld   d, [hl]                                     ; $4807: $56
	ld   a, b                                        ; $4808: $78
	adc  b                                           ; $4809: $88
	sbc  c                                           ; $480a: $99
	sbc  c                                           ; $480b: $99
	sbc  c                                           ; $480c: $99
	xor  d                                           ; $480d: $aa
	cp   d                                           ; $480e: $ba
	cp   h                                           ; $480f: $bc
	call z, $bacb                                    ; $4810: $cc $cb $ba
	sbc  b                                           ; $4813: $98
	halt                                             ; $4814: $76
	ld   d, l                                        ; $4815: $55
	ld   b, h                                        ; $4816: $44
	inc  sp                                          ; $4817: $33
	inc  [hl]                                        ; $4818: $34
	ld   d, [hl]                                     ; $4819: $56
	ld   h, a                                        ; $481a: $67
	adc  c                                           ; $481b: $89
	adc  b                                           ; $481c: $88
	sbc  d                                           ; $481d: $9a
	xor  c                                           ; $481e: $a9
	xor  d                                           ; $481f: $aa
	xor  d                                           ; $4820: $aa
	cp   e                                           ; $4821: $bb
	call z, $dcdc                                    ; $4822: $cc $dc $dc
	cp   c                                           ; $4825: $b9
	add  a                                           ; $4826: $87
	ld   h, l                                        ; $4827: $65
	ld   b, e                                        ; $4828: $43
	ld   [hl+], a                                    ; $4829: $22
	ld   [hl+], a                                    ; $482a: $22
	inc  [hl]                                        ; $482b: $34
	ld   h, a                                        ; $482c: $67
	adc  c                                           ; $482d: $89
	sbc  c                                           ; $482e: $99
	xor  c                                           ; $482f: $a9
	xor  e                                           ; $4830: $ab
	cp   d                                           ; $4831: $ba
	xor  e                                           ; $4832: $ab
	cp   d                                           ; $4833: $ba
	cp   h                                           ; $4834: $bc
	call $a9ca                                       ; $4835: $cd $ca $a9
	adc  b                                           ; $4838: $88
	ld   h, h                                        ; $4839: $64
	ld   [hl-], a                                    ; $483a: $32
	ld   [hl+], a                                    ; $483b: $22
	ld   [hl+], a                                    ; $483c: $22
	inc  h                                           ; $483d: $24
	ld   d, a                                        ; $483e: $57
	sbc  d                                           ; $483f: $9a
	xor  e                                           ; $4840: $ab
	cp   h                                           ; $4841: $bc
	call z, $babc                                    ; $4842: $cc $bc $ba
	sbc  d                                           ; $4845: $9a
	xor  e                                           ; $4846: $ab
	jp   z, $87a9                                    ; $4847: $ca $a9 $87

	ld   h, h                                        ; $484a: $64
	inc  sp                                          ; $484b: $33
	ld   sp, $2311                                   ; $484c: $31 $11 $23
	ld   d, a                                        ; $484f: $57
	adc  e                                           ; $4850: $8b
	set  3, [hl]                                     ; $4851: $cb $de
	xor  $ec                                         ; $4853: $ee $ec
	res  5, c                                        ; $4855: $cb $a9
	sbc  c                                           ; $4857: $99
	sbc  c                                           ; $4858: $99
	ld   [hl], a                                     ; $4859: $77
	ld   h, h                                        ; $485a: $64
	ld   b, e                                        ; $485b: $43
	ld   [hl+], a                                    ; $485c: $22
	ld   de, $2512                                   ; $485d: $11 $12 $25
	ld   a, b                                        ; $4860: $78
	cp   h                                           ; $4861: $bc
	rst  JumpTable                                         ; $4862: $df
	rst  $38                                         ; $4863: $ff
	rst  $38                                         ; $4864: $ff
	db   $ec                                         ; $4865: $ec
	cp   d                                           ; $4866: $ba
	sbc  d                                           ; $4867: $9a
	xor  c                                           ; $4868: $a9
	ld   h, [hl]                                     ; $4869: $66
	ld   d, e                                        ; $486a: $53
	ld   [hl-], a                                    ; $486b: $32
	ld   de, $1111                                   ; $486c: $11 $11 $11
	inc  h                                           ; $486f: $24
	ld   a, c                                        ; $4870: $79
	cp   l                                           ; $4871: $bd
	rst  JumpTable                                         ; $4872: $df
	rst  $38                                         ; $4873: $ff
	rst  $38                                         ; $4874: $ff
	db   $fc                                         ; $4875: $fc
	cp   d                                           ; $4876: $ba
	xor  c                                           ; $4877: $a9
	halt                                             ; $4878: $76
	ld   h, l                                        ; $4879: $65
	inc  sp                                          ; $487a: $33
	ld   sp, $1111                                   ; $487b: $31 $11 $11
	ld   [de], a                                     ; $487e: $12
	ld   [hl], $8a                                   ; $487f: $36 $8a
	sbc  $ff                                         ; $4881: $de $ff
	rst  $38                                         ; $4883: $ff
	rst  $38                                         ; $4884: $ff
	call c, Call_0d0_77a9                            ; $4885: $dc $a9 $77
	ld   d, h                                        ; $4888: $54
	ld   b, d                                        ; $4889: $42
	inc  hl                                          ; $488a: $23
	ld   de, $1111                                   ; $488b: $11 $11 $11
	inc  h                                           ; $488e: $24
	sbc  e                                           ; $488f: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4890: $cf
	rst  $38                                         ; $4891: $ff
	rst  $38                                         ; $4892: $ff
	rst  $38                                         ; $4893: $ff
	db   $ec                                         ; $4894: $ec
	cp   b                                           ; $4895: $b8
	halt                                             ; $4896: $76
	ld   b, c                                        ; $4897: $41
	ld   hl, $1113                                   ; $4898: $21 $13 $11
	ld   de, $3511                                   ; $489b: $11 $11 $35
	xor  h                                           ; $489e: $ac
	rst  JumpTable                                         ; $489f: $df
	rst  $38                                         ; $48a0: $ff
	rst  $38                                         ; $48a1: $ff
	rst  $38                                         ; $48a2: $ff
	ld   a, [$5597]                                  ; $48a3: $fa $97 $55
	ld   hl, $1111                                   ; $48a6: $21 $11 $11
	ld   de, $1111                                   ; $48a9: $11 $11 $11
	ld   b, [hl]                                     ; $48ac: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48ad: $cf
	rst  $38                                         ; $48ae: $ff
	rst  $38                                         ; $48af: $ff
	rst  $38                                         ; $48b0: $ff
	rst  $38                                         ; $48b1: $ff
	jp   hl                                          ; $48b2: $e9


	halt                                             ; $48b3: $76
	ld   hl, $1111                                   ; $48b4: $21 $11 $11
	ld   de, $1111                                   ; $48b7: $11 $11 $11
	inc  d                                           ; $48ba: $14
	ld   a, h                                        ; $48bb: $7c
	rst  $38                                         ; $48bc: $ff
	rst  $38                                         ; $48bd: $ff
	rst  $38                                         ; $48be: $ff
	rst  $38                                         ; $48bf: $ff
	cp   $95                                         ; $48c0: $fe $95
	ld   b, d                                        ; $48c2: $42
	ld   de, $1111                                   ; $48c3: $11 $11 $11
	ld   de, $1111                                   ; $48c6: $11 $11 $11
	ld   c, b                                        ; $48c9: $48
	rst  JumpTable                                         ; $48ca: $df
	rst  $38                                         ; $48cb: $ff
	rst  $38                                         ; $48cc: $ff
	rst  $38                                         ; $48cd: $ff
	rst  $38                                         ; $48ce: $ff
	rst  $30                                         ; $48cf: $f7
	ld   [hl-], a                                    ; $48d0: $32
	ld   de, $1111                                   ; $48d1: $11 $11 $11
	ld   de, $1111                                   ; $48d4: $11 $11 $11
	ld   d, $af                                      ; $48d7: $16 $af
	rst  $38                                         ; $48d9: $ff
	rst  $38                                         ; $48da: $ff
	rst  $38                                         ; $48db: $ff
	rst  $38                                         ; $48dc: $ff
	db   $fc                                         ; $48dd: $fc
	ld   b, c                                        ; $48de: $41
	ld   de, $1111                                   ; $48df: $11 $11 $11
	ld   de, $1111                                   ; $48e2: $11 $11 $11
	dec  d                                           ; $48e5: $15
	cp   a                                           ; $48e6: $bf
	rst  $38                                         ; $48e7: $ff
	rst  $38                                         ; $48e8: $ff
	rst  $38                                         ; $48e9: $ff
	rst  $38                                         ; $48ea: $ff
	rst  $38                                         ; $48eb: $ff
	add  c                                           ; $48ec: $81
	ld   de, $1111                                   ; $48ed: $11 $11 $11
	ld   de, $1111                                   ; $48f0: $11 $11 $11
	inc  d                                           ; $48f3: $14
	sbc  a                                           ; $48f4: $9f
	rst  $38                                         ; $48f5: $ff
	rst  $38                                         ; $48f6: $ff
	rst  $38                                         ; $48f7: $ff
	rst  $38                                         ; $48f8: $ff
	rst  $38                                         ; $48f9: $ff

Call_0d0_48fa:
	or   e                                           ; $48fa: $b3
	ld   de, $1111                                   ; $48fb: $11 $11 $11
	ld   de, $1111                                   ; $48fe: $11 $11 $11
	inc  de                                          ; $4901: $13
	sbc  a                                           ; $4902: $9f
	rst  $38                                         ; $4903: $ff
	rst  $38                                         ; $4904: $ff
	rst  $38                                         ; $4905: $ff
	rst  $38                                         ; $4906: $ff
	rst  $38                                         ; $4907: $ff
	call nc, $1111                                   ; $4908: $d4 $11 $11
	ld   de, $1111                                   ; $490b: $11 $11 $11
	ld   de, $8f12                                   ; $490e: $11 $12 $8f
	rst  $38                                         ; $4911: $ff
	rst  $38                                         ; $4912: $ff
	rst  $38                                         ; $4913: $ff
	rst  $38                                         ; $4914: $ff
	rst  $38                                         ; $4915: $ff
	sub  $11                                         ; $4916: $d6 $11
	ld   de, $1111                                   ; $4918: $11 $11 $11
	ld   de, $1211                                   ; $491b: $11 $11 $12
	sbc  a                                           ; $491e: $9f
	rst  $38                                         ; $491f: $ff
	rst  $38                                         ; $4920: $ff
	rst  $38                                         ; $4921: $ff
	rst  $38                                         ; $4922: $ff
	rst  $38                                         ; $4923: $ff
	ret  z                                           ; $4924: $c8

	ld   hl, $1111                                   ; $4925: $21 $11 $11
	ld   de, $1111                                   ; $4928: $11 $11 $11
	inc  de                                          ; $492b: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $492c: $cf
	rst  $38                                         ; $492d: $ff
	rst  $38                                         ; $492e: $ff
	rst  $38                                         ; $492f: $ff
	rst  $38                                         ; $4930: $ff
	rst  $38                                         ; $4931: $ff
	ret                                              ; $4932: $c9


	ld   b, c                                        ; $4933: $41
	ld   de, $1111                                   ; $4934: $11 $11 $11
	ld   de, $1411                                   ; $4937: $11 $11 $14
	rst  $28                                         ; $493a: $ef
	rst  $38                                         ; $493b: $ff
	rst  $38                                         ; $493c: $ff
	rst  $38                                         ; $493d: $ff
	rst  $38                                         ; $493e: $ff
	rst  $38                                         ; $493f: $ff
	jp   c, $1141                                    ; $4940: $da $41 $11

	ld   de, $1111                                   ; $4943: $11 $11 $11
	ld   de, $df16                                   ; $4946: $11 $16 $df
	rst  $38                                         ; $4949: $ff
	rst  $38                                         ; $494a: $ff
	rst  $38                                         ; $494b: $ff
	rst  $38                                         ; $494c: $ff
	rst  $38                                         ; $494d: $ff
	db   $eb                                         ; $494e: $eb
	ld   b, c                                        ; $494f: $41
	ld   de, $1111                                   ; $4950: $11 $11 $11
	ld   de, $2611                                   ; $4953: $11 $11 $26
	rst  JumpTable                                         ; $4956: $df
	rst  $38                                         ; $4957: $ff
	rst  $38                                         ; $4958: $ff
	rst  $38                                         ; $4959: $ff
	rst  $38                                         ; $495a: $ff
	rst  $38                                         ; $495b: $ff
	ei                                               ; $495c: $fb
	ld   d, c                                        ; $495d: $51
	ld   de, $1111                                   ; $495e: $11 $11 $11
	ld   de, $2511                                   ; $4961: $11 $11 $25
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4964: $cf
	rst  $38                                         ; $4965: $ff
	rst  $38                                         ; $4966: $ff
	rst  $38                                         ; $4967: $ff
	rst  $38                                         ; $4968: $ff
	rst  $38                                         ; $4969: $ff
	ei                                               ; $496a: $fb
	ld   d, c                                        ; $496b: $51
	ld   de, $1111                                   ; $496c: $11 $11 $11
	ld   de, $3611                                   ; $496f: $11 $11 $36
	cp   a                                           ; $4972: $bf
	rst  $38                                         ; $4973: $ff
	rst  $38                                         ; $4974: $ff
	rst  $38                                         ; $4975: $ff
	rst  $38                                         ; $4976: $ff
	rst  $38                                         ; $4977: $ff
	db   $fd                                         ; $4978: $fd
	ld   h, c                                        ; $4979: $61
	ld   de, $1111                                   ; $497a: $11 $11 $11
	ld   de, $3611                                   ; $497d: $11 $11 $36
	cp   a                                           ; $4980: $bf
	rst  $38                                         ; $4981: $ff
	rst  $38                                         ; $4982: $ff
	rst  $38                                         ; $4983: $ff
	rst  $38                                         ; $4984: $ff
	rst  $38                                         ; $4985: $ff
	cp   $71                                         ; $4986: $fe $71
	ld   de, $1111                                   ; $4988: $11 $11 $11
	ld   de, $2611                                   ; $498b: $11 $11 $26
	xor  [hl]                                        ; $498e: $ae
	rst  $38                                         ; $498f: $ff
	rst  $38                                         ; $4990: $ff
	rst  $38                                         ; $4991: $ff
	rst  $38                                         ; $4992: $ff
	rst  $38                                         ; $4993: $ff
	rst  $38                                         ; $4994: $ff
	add  d                                           ; $4995: $82
	ld   de, $1111                                   ; $4996: $11 $11 $11
	ld   de, $1611                                   ; $4999: $11 $11 $16
	xor  h                                           ; $499c: $ac
	rst  $38                                         ; $499d: $ff
	rst  $38                                         ; $499e: $ff
	rst  $38                                         ; $499f: $ff
	rst  $38                                         ; $49a0: $ff
	rst  $38                                         ; $49a1: $ff
	rst  $38                                         ; $49a2: $ff
	sub  h                                           ; $49a3: $94
	ld   de, $1111                                   ; $49a4: $11 $11 $11
	ld   de, $1611                                   ; $49a7: $11 $11 $16
	adc  e                                           ; $49aa: $8b
	rst  JumpTable                                         ; $49ab: $df
	rst  $38                                         ; $49ac: $ff
	rst  $38                                         ; $49ad: $ff
	rst  $38                                         ; $49ae: $ff
	rst  $38                                         ; $49af: $ff
	rst  $38                                         ; $49b0: $ff
	or   a                                           ; $49b1: $b7
	ld   sp, $1111                                   ; $49b2: $31 $11 $11
	ld   de, $1511                                   ; $49b5: $11 $11 $15
	ld   h, a                                        ; $49b8: $67
	cp   a                                           ; $49b9: $bf
	rst  $38                                         ; $49ba: $ff
	rst  $38                                         ; $49bb: $ff
	rst  $38                                         ; $49bc: $ff
	rst  $38                                         ; $49bd: $ff
	rst  $38                                         ; $49be: $ff
	ld   a, [$1161]                                  ; $49bf: $fa $61 $11
	ld   de, $1111                                   ; $49c2: $11 $11 $11
	ld   de, $7b44                                   ; $49c5: $11 $44 $7b
	rst  $38                                         ; $49c8: $ff
	rst  $38                                         ; $49c9: $ff
	rst  $38                                         ; $49ca: $ff
	rst  $38                                         ; $49cb: $ff
	rst  $38                                         ; $49cc: $ff
	db   $fd                                         ; $49cd: $fd
	or   l                                           ; $49ce: $b5
	ld   de, $1111                                   ; $49cf: $11 $11 $11
	ld   de, $1111                                   ; $49d2: $11 $11 $11
	dec  d                                           ; $49d5: $15
	ld   l, d                                        ; $49d6: $6a
	rst  $38                                         ; $49d7: $ff
	rst  $38                                         ; $49d8: $ff
	rst  $38                                         ; $49d9: $ff
	rst  $38                                         ; $49da: $ff
	rst  $38                                         ; $49db: $ff
	jp   z, $3273                                    ; $49dc: $ca $73 $32

	ld   [de], a                                     ; $49df: $12
	ld   d, e                                        ; $49e0: $53
	ld   de, $1111                                   ; $49e1: $11 $11 $11
	ld   de, $5735                                   ; $49e4: $11 $35 $57
	adc  d                                           ; $49e7: $8a
	cp   [hl]                                        ; $49e8: $be
	rst  $38                                         ; $49e9: $ff
	rst  $38                                         ; $49ea: $ff
	rst  $38                                         ; $49eb: $ff
	db   $ed                                         ; $49ec: $ed
	db   $dd                                         ; $49ed: $dd
	sbc  $dc                                         ; $49ee: $de $dc
	ret                                              ; $49f0: $c9


	ld   [hl], h                                     ; $49f1: $74
	ld   hl, $1111                                   ; $49f2: $21 $11 $11
	ld   de, $5613                                   ; $49f5: $11 $13 $56
	sbc  d                                           ; $49f8: $9a
	call $feff                                       ; $49f9: $cd $ff $fe
	db   $dd                                         ; $49fc: $dd
	db   $dd                                         ; $49fd: $dd
	db   $dd                                         ; $49fe: $dd
	db   $ed                                         ; $49ff: $ed
	cp   d                                           ; $4a00: $ba
	add  [hl]                                        ; $4a01: $86
	ld   b, d                                        ; $4a02: $42
	ld   de, $1111                                   ; $4a03: $11 $11 $11
	inc  hl                                          ; $4a06: $23
	ld   d, a                                        ; $4a07: $57
	sbc  e                                           ; $4a08: $9b
	adc  $fe                                         ; $4a09: $ce $fe
	xor  $ed                                         ; $4a0b: $ee $ed
	call z, $dbcd                                    ; $4a0d: $cc $cd $db
	xor  b                                           ; $4a10: $a8
	ld   [hl], l                                     ; $4a11: $75
	ld   sp, $1111                                   ; $4a12: $31 $11 $11
	ld   de, $5723                                   ; $4a15: $11 $23 $57
	sbc  h                                           ; $4a18: $9c
	rst  $28                                         ; $4a19: $ef
	rst  $38                                         ; $4a1a: $ff
	rst  $38                                         ; $4a1b: $ff
	rst  $38                                         ; $4a1c: $ff
	cp   $cb                                         ; $4a1d: $fe $cb
	cp   c                                           ; $4a1f: $b9
	add  [hl]                                        ; $4a20: $86
	ld   sp, $1111                                   ; $4a21: $31 $11 $11
	ld   de, $2411                                   ; $4a24: $11 $11 $24
	ld   a, d                                        ; $4a27: $7a
	adc  $ff                                         ; $4a28: $ce $ff
	rst  $38                                         ; $4a2a: $ff
	rst  $38                                         ; $4a2b: $ff
	rst  $38                                         ; $4a2c: $ff
	db   $ed                                         ; $4a2d: $ed
	jp   z, Jump_0d0_5398                            ; $4a2e: $ca $98 $53

	ld   de, $1111                                   ; $4a31: $11 $11 $11
	ld   de, $4712                                   ; $4a34: $11 $12 $47
	xor  l                                           ; $4a37: $ad
	rst  $38                                         ; $4a38: $ff
	rst  $38                                         ; $4a39: $ff
	rst  $38                                         ; $4a3a: $ff
	rst  $38                                         ; $4a3b: $ff
	rst  $38                                         ; $4a3c: $ff
	db   $ec                                         ; $4a3d: $ec
	sbc  c                                           ; $4a3e: $99
	ld   [hl], h                                     ; $4a3f: $74
	ld   de, $1111                                   ; $4a40: $11 $11 $11
	ld   de, $2511                                   ; $4a43: $11 $11 $25
	sbc  e                                           ; $4a46: $9b
	rst  $38                                         ; $4a47: $ff
	rst  $38                                         ; $4a48: $ff
	rst  $38                                         ; $4a49: $ff
	rst  $38                                         ; $4a4a: $ff
	rst  $38                                         ; $4a4b: $ff
	cp   $b9                                         ; $4a4c: $fe $b9
	ld   [hl], h                                     ; $4a4e: $74
	ld   hl, $1111                                   ; $4a4f: $21 $11 $11
	ld   de, $2411                                   ; $4a52: $11 $11 $24
	ld   a, e                                        ; $4a55: $7b
	rst  $28                                         ; $4a56: $ef
	rst  $38                                         ; $4a57: $ff
	rst  $38                                         ; $4a58: $ff
	rst  $38                                         ; $4a59: $ff
	rst  $38                                         ; $4a5a: $ff
	rst  $38                                         ; $4a5b: $ff
	reti                                             ; $4a5c: $d9


	ld   [hl], l                                     ; $4a5d: $75
	ld   sp, $1111                                   ; $4a5e: $31 $11 $11
	ld   de, $1311                                   ; $4a61: $11 $11 $13
	ld   e, c                                        ; $4a64: $59
	cp   a                                           ; $4a65: $bf
	rst  $38                                         ; $4a66: $ff
	rst  $38                                         ; $4a67: $ff
	rst  $38                                         ; $4a68: $ff
	rst  $38                                         ; $4a69: $ff
	rst  $38                                         ; $4a6a: $ff
	db   $ec                                         ; $4a6b: $ec
	add  [hl]                                        ; $4a6c: $86
	ld   b, d                                        ; $4a6d: $42
	ld   de, $1111                                   ; $4a6e: $11 $11 $11
	ld   de, $3611                                   ; $4a71: $11 $11 $36
	sbc  h                                           ; $4a74: $9c
	rst  $38                                         ; $4a75: $ff
	rst  $38                                         ; $4a76: $ff
	rst  $38                                         ; $4a77: $ff
	rst  $38                                         ; $4a78: $ff
	rst  $38                                         ; $4a79: $ff
	db   $fd                                         ; $4a7a: $fd
	ret  z                                           ; $4a7b: $c8

	ld   h, h                                        ; $4a7c: $64
	ld   hl, $1111                                   ; $4a7d: $21 $11 $11
	ld   de, $1411                                   ; $4a80: $11 $11 $14
	ld   l, d                                        ; $4a83: $6a
	rst  JumpTable                                         ; $4a84: $df
	rst  $38                                         ; $4a85: $ff
	rst  $38                                         ; $4a86: $ff
	rst  $38                                         ; $4a87: $ff
	rst  $38                                         ; $4a88: $ff
	rst  $38                                         ; $4a89: $ff
	db   $eb                                         ; $4a8a: $eb
	add  l                                           ; $4a8b: $85
	ld   b, d                                        ; $4a8c: $42
	ld   de, $1111                                   ; $4a8d: $11 $11 $11
	ld   de, $4611                                   ; $4a90: $11 $11 $46
	sbc  h                                           ; $4a93: $9c
	rst  $38                                         ; $4a94: $ff
	rst  $38                                         ; $4a95: $ff
	rst  $38                                         ; $4a96: $ff
	rst  $38                                         ; $4a97: $ff
	rst  $38                                         ; $4a98: $ff
	cp   $c8                                         ; $4a99: $fe $c8
	ld   h, l                                        ; $4a9b: $65
	ld   hl, $1111                                   ; $4a9c: $21 $11 $11
	ld   de, $1311                                   ; $4a9f: $11 $11 $13
	ld   e, c                                        ; $4aa2: $59
	cp   a                                           ; $4aa3: $bf
	rst  $38                                         ; $4aa4: $ff
	rst  $38                                         ; $4aa5: $ff
	rst  $38                                         ; $4aa6: $ff
	rst  $38                                         ; $4aa7: $ff
	rst  $38                                         ; $4aa8: $ff
	db   $fd                                         ; $4aa9: $fd
	and  a                                           ; $4aaa: $a7
	ld   d, e                                        ; $4aab: $53
	ld   de, $1111                                   ; $4aac: $11 $11 $11
	ld   de, $2511                                   ; $4aaf: $11 $11 $25
	ld   a, d                                        ; $4ab2: $7a
	rst  JumpTable                                         ; $4ab3: $df
	rst  $38                                         ; $4ab4: $ff
	rst  $38                                         ; $4ab5: $ff
	rst  $38                                         ; $4ab6: $ff
	rst  $38                                         ; $4ab7: $ff
	rst  $38                                         ; $4ab8: $ff
	ei                                               ; $4ab9: $fb
	add  [hl]                                        ; $4aba: $86
	ld   b, c                                        ; $4abb: $41
	ld   de, $1111                                   ; $4abc: $11 $11 $11
	ld   de, $4611                                   ; $4abf: $11 $11 $46
	adc  h                                           ; $4ac2: $8c
	rst  $38                                         ; $4ac3: $ff
	rst  $38                                         ; $4ac4: $ff
	rst  $38                                         ; $4ac5: $ff
	rst  $38                                         ; $4ac6: $ff
	rst  $38                                         ; $4ac7: $ff
	rst  $38                                         ; $4ac8: $ff
	reti                                             ; $4ac9: $d9


	ld   [hl], l                                     ; $4aca: $75
	ld   sp, $1111                                   ; $4acb: $31 $11 $11
	ld   de, $1211                                   ; $4ace: $11 $11 $12
	ld   d, a                                        ; $4ad1: $57
	xor  l                                           ; $4ad2: $ad
	rst  $38                                         ; $4ad3: $ff
	rst  $38                                         ; $4ad4: $ff
	rst  $38                                         ; $4ad5: $ff
	rst  $38                                         ; $4ad6: $ff
	rst  $38                                         ; $4ad7: $ff
	rst  $38                                         ; $4ad8: $ff
	ret                                              ; $4ad9: $c9


	ld   h, h                                        ; $4ada: $64
	ld   de, $1111                                   ; $4adb: $11 $11 $11
	ld   de, $1411                                   ; $4ade: $11 $11 $14
	ld   l, b                                        ; $4ae1: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ae2: $cf
	rst  $38                                         ; $4ae3: $ff
	rst  $38                                         ; $4ae4: $ff
	rst  $38                                         ; $4ae5: $ff
	rst  $38                                         ; $4ae6: $ff
	ld   sp, hl                                      ; $4ae7: $f9
	ld   b, c                                        ; $4ae8: $41
	ld   de, $1111                                   ; $4ae9: $11 $11 $11
	ld   de, $5456                                   ; $4aec: $11 $56 $54
	xor  e                                           ; $4aef: $ab
	rst  $38                                         ; $4af0: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4af1: $cf
	rst  $38                                         ; $4af2: $ff
	rst  $38                                         ; $4af3: $ff
	rst  $38                                         ; $4af4: $ff
	cp   $a1                                         ; $4af5: $fe $a1
	ld   de, $1111                                   ; $4af7: $11 $11 $11
	dec  d                                           ; $4afa: $15
	add  $ff                                         ; $4afb: $c6 $ff
	rst  $38                                         ; $4afd: $ff
	rst  $38                                         ; $4afe: $ff
	rst  JumpTable                                         ; $4aff: $df
	add  c                                           ; $4b00: $81
	ld   h, h                                        ; $4b01: $64
	adc  $ed                                         ; $4b02: $ce $ed
	rst  $38                                         ; $4b04: $ff
	ld   a, [$1111]                                  ; $4b05: $fa $11 $11
	ld   de, $eb14                                   ; $4b08: $11 $14 $eb
	rst  $38                                         ; $4b0b: $ff
	rst  $38                                         ; $4b0c: $ff
	rst  $38                                         ; $4b0d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b0e: $cf
	ld   d, c                                        ; $4b0f: $51
	ld   sp, $ff9d                                   ; $4b10: $31 $9d $ff
	rst  $38                                         ; $4b13: $ff
	ld   hl, sp+$11                                  ; $4b14: $f8 $11
	ld   de, $c711                                   ; $4b16: $11 $11 $c7
	rst  $38                                         ; $4b19: $ff
	rst  $38                                         ; $4b1a: $ff
	rst  $38                                         ; $4b1b: $ff
	xor  c                                           ; $4b1c: $a9
	ld   l, c                                        ; $4b1d: $69
	ld   hl, $ef26                                   ; $4b1e: $21 $26 $ef
	rst  $38                                         ; $4b21: $ff
	rst  $38                                         ; $4b22: $ff
	db   $e3                                         ; $4b23: $e3
	ld   de, $1111                                   ; $4b24: $11 $11 $11
	rst  $38                                         ; $4b27: $ff
	rst  $38                                         ; $4b28: $ff
	rst  $38                                         ; $4b29: $ff
	db   $fd                                         ; $4b2a: $fd
	ld   de, $5137                                   ; $4b2b: $11 $37 $51
	ld   a, $ff                                      ; $4b2e: $3e $ff
	rst  $38                                         ; $4b30: $ff
	rst  $38                                         ; $4b31: $ff
	pop  bc                                          ; $4b32: $c1
	ld   de, $1111                                   ; $4b33: $11 $11 $11
	rst  $38                                         ; $4b36: $ff
	rst  $38                                         ; $4b37: $ff
	rst  $38                                         ; $4b38: $ff
	ldh  a, [c]                                      ; $4b39: $f2
	ld   de, $5126                                   ; $4b3a: $11 $26 $51
	sbc  a                                           ; $4b3d: $9f
	rst  $38                                         ; $4b3e: $ff
	rst  $38                                         ; $4b3f: $ff
	rst  $38                                         ; $4b40: $ff
	add  c                                           ; $4b41: $81
	ld   de, $1111                                   ; $4b42: $11 $11 $11
	rst  $38                                         ; $4b45: $ff
	rst  $38                                         ; $4b46: $ff
	rst  $38                                         ; $4b47: $ff

jr_0d0_4b48:
	pop  af                                          ; $4b48: $f1
	ld   de, $6157                                   ; $4b49: $11 $57 $61
	cp   a                                           ; $4b4c: $bf
	rst  $38                                         ; $4b4d: $ff
	ret  z                                           ; $4b4e: $c8

	rst  $38                                         ; $4b4f: $ff
	add  d                                           ; $4b50: $82
	ld   de, $1111                                   ; $4b51: $11 $11 $11
	rst  $38                                         ; $4b54: $ff
	rst  $38                                         ; $4b55: $ff
	rst  $38                                         ; $4b56: $ff
	pop  af                                          ; $4b57: $f1
	ld   de, $553e                                   ; $4b58: $11 $3e $55
	xor  a                                           ; $4b5b: $af
	rst  $38                                         ; $4b5c: $ff
	ld   [hl], c                                     ; $4b5d: $71
	rst  $38                                         ; $4b5e: $ff
	and  e                                           ; $4b5f: $a3
	ld   d, c                                        ; $4b60: $51
	ld   de, $1f11                                   ; $4b61: $11 $11 $1f
	rst  $38                                         ; $4b64: $ff
	rst  $38                                         ; $4b65: $ff
	rst  $38                                         ; $4b66: $ff
	ld   de, $661f                                   ; $4b67: $11 $1f $66
	adc  a                                           ; $4b6a: $8f
	rst  $38                                         ; $4b6b: $ff
	or   c                                           ; $4b6c: $b1
	xor  a                                           ; $4b6d: $af
	call nc, $1154                                   ; $4b6e: $d4 $54 $11
	ld   de, $ff1f                                   ; $4b71: $11 $1f $ff
	rst  $38                                         ; $4b74: $ff
	rst  $38                                         ; $4b75: $ff
	ld   de, $b61f                                   ; $4b76: $11 $1f $b6
	adc  a                                           ; $4b79: $8f
	rst  $38                                         ; $4b7a: $ff
	pop  af                                          ; $4b7b: $f1
	ld   c, a                                        ; $4b7c: $4f
	ei                                               ; $4b7d: $fb
	ld   l, b                                        ; $4b7e: $68
	ld   [hl], c                                     ; $4b7f: $71
	ld   de, rAUD1LEN                                   ; $4b80: $11 $11 $ff
	rst  $38                                         ; $4b83: $ff
	rst  $38                                         ; $4b84: $ff
	pop  af                                          ; $4b85: $f1
	ld   de, $67f5                                   ; $4b86: $11 $f5 $67
	rst  $38                                         ; $4b89: $ff
	db   $fc                                         ; $4b8a: $fc
	ld   a, [de]                                     ; $4b8b: $1a
	db   $ed                                         ; $4b8c: $ed
	and  a                                           ; $4b8d: $a7
	rl   c                                           ; $4b8e: $cb $11
	ld   de, $ff1f                                   ; $4b90: $11 $1f $ff
	rst  $38                                         ; $4b93: $ff
	ld   hl, sp+$11                                  ; $4b94: $f8 $11
	rra                                              ; $4b96: $1f
	jr   z, jr_0d0_4b48                              ; $4b97: $28 $af

	rst  $38                                         ; $4b99: $ff
	add  c                                           ; $4b9a: $81
	cp   l                                           ; $4b9b: $bd
	rst  $20                                         ; $4b9c: $e7
	ld   a, a                                        ; $4b9d: $7f
	pop  hl                                          ; $4b9e: $e1
	ld   de, rAUD1LEN                                   ; $4b9f: $11 $11 $ff
	rst  $38                                         ; $4ba2: $ff
	rst  $38                                         ; $4ba3: $ff
	pop  de                                          ; $4ba4: $d1
	ld   de, $6df2                                   ; $4ba5: $11 $f2 $6d
	rst  $38                                         ; $4ba8: $ff
	ei                                               ; $4ba9: $fb
	add  hl, de                                      ; $4baa: $19
	cp   h                                           ; $4bab: $bc
	add  a                                           ; $4bac: $87
	rst  $38                                         ; $4bad: $ff
	ld   b, c                                        ; $4bae: $41
	ld   de, $ff1f                                   ; $4baf: $11 $1f $ff
	rst  $38                                         ; $4bb2: $ff
	rst  $38                                         ; $4bb3: $ff
	ld   de, $731d                                   ; $4bb4: $11 $1d $73
	rst  $28                                         ; $4bb7: $ef
	rst  $38                                         ; $4bb8: $ff
	jp   nz, $ba5a                                   ; $4bb9: $c2 $5a $ba

	ld   l, a                                        ; $4bbc: $6f
	ld   a, [$1111]                                  ; $4bbd: $fa $11 $11
	cpl                                              ; $4bc0: $2f
	rst  $38                                         ; $4bc1: $ff
	rst  $38                                         ; $4bc2: $ff
	push af                                          ; $4bc3: $f5
	ld   de, $1c4d                                   ; $4bc4: $11 $4d $1c
	xor  a                                           ; $4bc7: $af
	rst  $38                                         ; $4bc8: $ff
	ld   h, c                                        ; $4bc9: $61
	adc  h                                           ; $4bca: $8c
	add  $ff                                         ; $4bcb: $c6 $ff
	pop  af                                          ; $4bcd: $f1
	ld   de, rAUD1LEN                                   ; $4bce: $11 $11 $ff
	rst  $38                                         ; $4bd1: $ff
	rst  $38                                         ; $4bd2: $ff
	pop  af                                          ; $4bd3: $f1
	ld   de, $5ad3                                   ; $4bd4: $11 $d3 $5a
	rst  $38                                         ; $4bd7: $ff
	db   $fc                                         ; $4bd8: $fc
	dec  h                                           ; $4bd9: $25
	xor  [hl]                                        ; $4bda: $ae
	sbc  b                                           ; $4bdb: $98
	rst  $38                                         ; $4bdc: $ff
	sub  c                                           ; $4bdd: $91
	ld   de, rAUD1LEN                                   ; $4bde: $11 $11 $ff
	rst  $38                                         ; $4be1: $ff
	rst  $38                                         ; $4be2: $ff
	ld   h, c                                        ; $4be3: $61
	ld   de, $8bb1                                   ; $4be4: $11 $b1 $8b
	rst  $38                                         ; $4be7: $ff
	ld   hl, sp+$4a                                  ; $4be8: $f8 $4a
	jp   c, $ff5d                                    ; $4bea: $da $5d $ff

	ld   sp, $1f11                                   ; $4bed: $31 $11 $1f
	rst  $38                                         ; $4bf0: $ff
	rst  $38                                         ; $4bf1: $ff
	rst  $38                                         ; $4bf2: $ff
	ld   de, $4116                                   ; $4bf3: $11 $16 $41
	adc  a                                           ; $4bf6: $8f
	rst  $38                                         ; $4bf7: $ff
	ld   sp, hl                                      ; $4bf8: $f9
	ld   a, h                                        ; $4bf9: $7c
	or   [hl]                                        ; $4bfa: $b6
	ld   c, a                                        ; $4bfb: $4f
	ei                                               ; $4bfc: $fb
	ld   de, $1f11                                   ; $4bfd: $11 $11 $1f
	rst  $38                                         ; $4c00: $ff
	rst  $38                                         ; $4c01: $ff
	rst  $38                                         ; $4c02: $ff
	ld   de, $1316                                   ; $4c03: $11 $16 $13
	adc  a                                           ; $4c06: $8f
	rst  $38                                         ; $4c07: $ff
	jp   hl                                          ; $4c08: $e9


	xor  d                                           ; $4c09: $aa
	add  d                                           ; $4c0a: $82
	ld   e, a                                        ; $4c0b: $5f
	rst  $30                                         ; $4c0c: $f7
	ld   de, $1f11                                   ; $4c0d: $11 $11 $1f
	rst  $38                                         ; $4c10: $ff
	rst  $38                                         ; $4c11: $ff
	cp   $11                                         ; $4c12: $fe $11
	rla                                              ; $4c14: $17
	inc  d                                           ; $4c15: $14
	sbc  a                                           ; $4c16: $9f
	rst  $38                                         ; $4c17: $ff
	db   $eb                                         ; $4c18: $eb
	ret                                              ; $4c19: $c9


	ld   [hl], c                                     ; $4c1a: $71
	xor  a                                           ; $4c1b: $af
	rst  ToBoot                                         ; $4c1c: $c7
	ld   de, $1f11                                   ; $4c1d: $11 $11 $1f
	rst  $38                                         ; $4c20: $ff
	rst  $38                                         ; $4c21: $ff
	db   $fd                                         ; $4c22: $fd
	ld   de, $1316                                   ; $4c23: $11 $16 $13
	sbc  a                                           ; $4c26: $9f
	rst  $38                                         ; $4c27: $ff
	db   $fc                                         ; $4c28: $fc
	add  $51                                         ; $4c29: $c6 $51
	xor  a                                           ; $4c2b: $af
	or   a                                           ; $4c2c: $b7
	ld   de, $1f11                                   ; $4c2d: $11 $11 $1f
	rst  $38                                         ; $4c30: $ff
	rst  $38                                         ; $4c31: $ff
	db   $fc                                         ; $4c32: $fc
	ld   de, $1114                                   ; $4c33: $11 $14 $11
	sbc  a                                           ; $4c36: $9f
	rst  $38                                         ; $4c37: $ff
	xor  $f7                                         ; $4c38: $ee $f7
	ld   d, c                                        ; $4c3a: $51
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c3b: $cf
	or   l                                           ; $4c3c: $b5
	ld   de, $1f11                                   ; $4c3d: $11 $11 $1f
	rst  $38                                         ; $4c40: $ff
	rst  $38                                         ; $4c41: $ff
	db   $fd                                         ; $4c42: $fd
	ld   de, $1113                                   ; $4c43: $11 $13 $11
	xor  a                                           ; $4c46: $af
	rst  $38                                         ; $4c47: $ff
	rst  $38                                         ; $4c48: $ff
	push af                                          ; $4c49: $f5
	ld   sp, $a5cf                                   ; $4c4a: $31 $cf $a5
	ld   de, $1f11                                   ; $4c4d: $11 $11 $1f
	rst  $38                                         ; $4c50: $ff
	rst  $38                                         ; $4c51: $ff
	cp   $11                                         ; $4c52: $fe $11
	ld   [de], a                                     ; $4c54: $12
	ld   de, $ff9f                                   ; $4c55: $11 $9f $ff
	rst  $38                                         ; $4c58: $ff
	push af                                          ; $4c59: $f5
	ld   hl, $84bf                                   ; $4c5a: $21 $bf $84
	ld   de, $1f11                                   ; $4c5d: $11 $11 $1f
	cp   $ff                                         ; $4c60: $fe $ff
	rst  $38                                         ; $4c62: $ff
	ld   de, $1115                                   ; $4c63: $11 $15 $11
	ld   a, a                                        ; $4c66: $7f
	rst  $38                                         ; $4c67: $ff
	rst  $38                                         ; $4c68: $ff
	or   $21                                         ; $4c69: $f6 $21
	sbc  a                                           ; $4c6b: $9f
	ld   [hl], h                                     ; $4c6c: $74
	ld   de, $1f11                                   ; $4c6d: $11 $11 $1f
	ei                                               ; $4c70: $fb
	rst  $38                                         ; $4c71: $ff
	rst  $38                                         ; $4c72: $ff
	ld   de, $1117                                   ; $4c73: $11 $17 $11
	ld   l, a                                        ; $4c76: $6f
	rst  $38                                         ; $4c77: $ff
	rst  $38                                         ; $4c78: $ff
	ld   hl, sp+$11                                  ; $4c79: $f8 $11
	adc  a                                           ; $4c7b: $8f
	ld   h, e                                        ; $4c7c: $63
	ld   de, $1f11                                   ; $4c7d: $11 $11 $1f
	ei                                               ; $4c80: $fb
	rst  $38                                         ; $4c81: $ff
	rst  $38                                         ; $4c82: $ff
	ld   de, $111b                                   ; $4c83: $11 $1b $11
	ld   c, a                                        ; $4c86: $4f
	rst  $38                                         ; $4c87: $ff
	rst  $38                                         ; $4c88: $ff
	ei                                               ; $4c89: $fb
	ld   bc, $516e                                   ; $4c8a: $01 $6e $51
	ld   de, $1f11                                   ; $4c8d: $11 $11 $1f
	ld   a, [$ffff]                                  ; $4c90: $fa $ff $ff
	ld   de, $111c                                   ; $4c93: $11 $1c $11
	ld   c, a                                        ; $4c96: $4f
	rst  $38                                         ; $4c97: $ff
	rst  $38                                         ; $4c98: $ff
	db   $fc                                         ; $4c99: $fc
	ld   de, $319e                                   ; $4c9a: $11 $9e $31
	ld   de, $1f11                                   ; $4c9d: $11 $11 $1f
	ld   a, [$ffff]                                  ; $4ca0: $fa $ff $ff
	ld   de, $113c                                   ; $4ca3: $11 $3c $11
	cpl                                              ; $4ca6: $2f
	rst  $38                                         ; $4ca7: $ff
	rst  $38                                         ; $4ca8: $ff
	rst  $38                                         ; $4ca9: $ff
	ld   hl, $119d                                   ; $4caa: $21 $9d $11
	ld   de, $1f11                                   ; $4cad: $11 $11 $1f
	ld   sp, hl                                      ; $4cb0: $f9
	rst  $38                                         ; $4cb1: $ff
	rst  $38                                         ; $4cb2: $ff
	ld   de, $114e                                   ; $4cb3: $11 $4e $11
	rra                                              ; $4cb6: $1f
	rst  $38                                         ; $4cb7: $ff
	rst  $28                                         ; $4cb8: $ef
	rst  $38                                         ; $4cb9: $ff
	ld   [hl], c                                     ; $4cba: $71
	xor  a                                           ; $4cbb: $af
	ld   hl, $1111                                   ; $4cbc: $21 $11 $11
	rra                                              ; $4cbf: $1f
	ld   hl, sp-$01                                  ; $4cc0: $f8 $ff
	rst  $38                                         ; $4cc2: $ff
	ld   h, c                                        ; $4cc3: $61
	ld   l, a                                        ; $4cc4: $6f
	ld   de, $ff1c                                   ; $4cc5: $11 $1c $ff
	xor  a                                           ; $4cc8: $af
	rst  $38                                         ; $4cc9: $ff
	jp   Jump_0d0_419f                               ; $4cca: $c3 $9f $41


	ld   de, $1f11                                   ; $4ccd: $11 $11 $1f
	ld   a, [$ffff]                                  ; $4cd0: $fa $ff $ff
	pop  af                                          ; $4cd3: $f1
	ld   l, a                                        ; $4cd4: $6f
	ld   de, rAUD1LOW                                   ; $4cd5: $11 $13 $ff
	xor  a                                           ; $4cd8: $af
	rst  $38                                         ; $4cd9: $ff
	ei                                               ; $4cda: $fb
	cp   a                                           ; $4cdb: $bf
	sub  c                                           ; $4cdc: $91
	ld   de, $1c11                                   ; $4cdd: $11 $11 $1c
	or   $ff                                         ; $4ce0: $f6 $ff
	rst  $38                                         ; $4ce2: $ff
	pop  af                                          ; $4ce3: $f1
	rst  $28                                         ; $4ce4: $ef
	ld   de, $cd11                                   ; $4ce5: $11 $11 $cd
	dec  de                                          ; $4ce8: $1b
	rst  $38                                         ; $4ce9: $ff
	rst  $38                                         ; $4cea: $ff
	rst  $38                                         ; $4ceb: $ff
	push af                                          ; $4cec: $f5
	ld   de, $1111                                   ; $4ced: $11 $11 $11
	or   $4f                                         ; $4cf0: $f6 $4f
	rst  $38                                         ; $4cf2: $ff
	cp   $bf                                         ; $4cf3: $fe $bf

jr_0d0_4cf5:
	push af                                          ; $4cf5: $f5
	ld   sp, $411d                                   ; $4cf6: $31 $1d $41
	ld   e, e                                        ; $4cf9: $5b
	rst  $38                                         ; $4cfa: $ff
	call c, Call_0d0_51fd                            ; $4cfb: $dc $fd $51
	ld   de, $5114                                   ; $4cfe: $11 $14 $51
	dec  d                                           ; $4d01: $15
	sbc  a                                           ; $4d02: $9f
	add  sp, -$01                                    ; $4d03: $e8 $ff
	db   $fd                                         ; $4d05: $fd
	cp   d                                           ; $4d06: $ba
	sbc  $a7                                         ; $4d07: $de $a7
	sbc  e                                           ; $4d09: $9b
	cp   e                                           ; $4d0a: $bb
	ld   [hl], l                                     ; $4d0b: $75
	halt                                             ; $4d0c: $76
	ld   hl, $5e11                                   ; $4d0d: $21 $11 $5e
	ld   [hl], d                                     ; $4d10: $72
	ld   d, e                                        ; $4d11: $53
	adc  l                                           ; $4d12: $8d
	ld   d, d                                        ; $4d13: $52
	sbc  e                                           ; $4d14: $9b
	adc  c                                           ; $4d15: $89
	ld   h, a                                        ; $4d16: $67
	rst  $38                                         ; $4d17: $ff
	cp   l                                           ; $4d18: $bd
	call Call_0d0_69fa                               ; $4d19: $cd $fa $69
	sbc  c                                           ; $4d1c: $99
	add  h                                           ; $4d1d: $84
	ld   d, a                                        ; $4d1e: $57
	ld   [hl-], a                                    ; $4d1f: $32
	sbc  e                                           ; $4d20: $9b
	ld   d, l                                        ; $4d21: $55
	ld   d, c                                        ; $4d22: $51
	ld   [hl], a                                     ; $4d23: $77
	ld   de, $6b75                                   ; $4d24: $11 $75 $6b
	ld   a, e                                        ; $4d27: $7b
	rst  $38                                         ; $4d28: $ff
	rst  $28                                         ; $4d29: $ef
	set  7, d                                        ; $4d2a: $cb $fa
	ld   a, e                                        ; $4d2c: $7b
	sbc  d                                           ; $4d2d: $9a
	and  h                                           ; $4d2e: $a4
	ld   b, a                                        ; $4d2f: $47
	ld   b, c                                        ; $4d30: $41
	dec  d                                           ; $4d31: $15
	push de                                          ; $4d32: $d5
	ld   [de], a                                     ; $4d33: $12
	rla                                              ; $4d34: $17
	sub  c                                           ; $4d35: $91
	ld   a, [hl+]                                    ; $4d36: $2a
	call z, $eff9                                    ; $4d37: $cc $f9 $ef
	ld   a, [$cfbb]                                  ; $4d3a: $fa $bb $cf
	halt                                             ; $4d3d: $76
	xor  c                                           ; $4d3e: $a9
	sub  [hl]                                        ; $4d3f: $96
	ld   [de], a                                     ; $4d40: $12
	ld   sp, $c411                                   ; $4d41: $31 $11 $c4
	inc  de                                          ; $4d44: $13
	dec  e                                           ; $4d45: $1d
	db   $f4                                         ; $4d46: $f4
	ld   a, a                                        ; $4d47: $7f
	rst  $38                                         ; $4d48: $ff
	rst  $30                                         ; $4d49: $f7
	rst  JumpTable                                         ; $4d4a: $df
	or   l                                           ; $4d4b: $b5
	adc  d                                           ; $4d4c: $8a
	xor  $79                                         ; $4d4d: $ee $79
	cp   d                                           ; $4d4f: $ba
	ld   [hl], c                                     ; $4d50: $71
	ld   de, $2611                                   ; $4d51: $11 $11 $26
	ld   d, $a9                                      ; $4d54: $16 $a9
	rst  $38                                         ; $4d56: $ff
	sbc  a                                           ; $4d57: $9f
	cp   $cd                                         ; $4d58: $fe $cd
	sbc  l                                           ; $4d5a: $9d
	sub  c                                           ; $4d5b: $91
	dec  sp                                          ; $4d5c: $3b
	xor  h                                           ; $4d5d: $ac
	adc  $fe                                         ; $4d5e: $ce $fe
	ld   b, c                                        ; $4d60: $41
	ld   de, $6111                                   ; $4d61: $11 $11 $61
	jr   jr_0d0_4cf5                                 ; $4d64: $18 $8f

	db   $fc                                         ; $4d66: $fc
	rst  $38                                         ; $4d67: $ff
	db   $fc                                         ; $4d68: $fc
	jp   z, $11c7                                    ; $4d69: $ca $c7 $11

	ld   a, e                                        ; $4d6c: $7b
	adc  e                                           ; $4d6d: $8b
	rst  $38                                         ; $4d6e: $ff
	ld   hl, sp+$11                                  ; $4d6f: $f8 $11
	ld   de, $2112                                   ; $4d71: $11 $12 $21
	ld   d, a                                        ; $4d74: $57
	rst  $38                                         ; $4d75: $ff
	cp   $ff                                         ; $4d76: $fe $ff
	call c, $9199                                    ; $4d78: $dc $99 $91
	dec  d                                           ; $4d7b: $15
	ret  z                                           ; $4d7c: $c8

	rst  JumpTable                                         ; $4d7d: $df
	rst  $38                                         ; $4d7e: $ff
	add  c                                           ; $4d7f: $81
	ld   de, $1311                                   ; $4d80: $11 $11 $13
	inc  de                                          ; $4d83: $13
	adc  a                                           ; $4d84: $8f
	rst  $38                                         ; $4d85: $ff
	rst  $38                                         ; $4d86: $ff
	db   $fd                                         ; $4d87: $fd
	xor  d                                           ; $4d88: $aa
	ld   [hl], l                                     ; $4d89: $75
	ld   de, $6c3c                                   ; $4d8a: $11 $3c $6c
	rst  $38                                         ; $4d8d: $ff
	ld   sp, hl                                      ; $4d8e: $f9
	inc  hl                                          ; $4d8f: $23
	ld   de, $2111                                   ; $4d90: $11 $11 $21
	ld   a, [hl+]                                    ; $4d93: $2a
	rst  $38                                         ; $4d94: $ff
	rst  $38                                         ; $4d95: $ff
	rst  $38                                         ; $4d96: $ff
	sbc  c                                           ; $4d97: $99
	ret  z                                           ; $4d98: $c8

	ld   hl, $b416                                   ; $4d99: $21 $16 $b4
	rst  $28                                         ; $4d9c: $ef
	rst  $38                                         ; $4d9d: $ff
	add  h                                           ; $4d9e: $84
	ld   b, c                                        ; $4d9f: $41
	ld   de, $1321                                   ; $4da0: $11 $21 $13
	rst  JumpTable                                         ; $4da3: $df
	rst  $38                                         ; $4da4: $ff
	rst  $38                                         ; $4da5: $ff
	push af                                          ; $4da6: $f5
	cp   h                                           ; $4da7: $bc
	ld   d, c                                        ; $4da8: $51
	ld   de, $3f9a                                   ; $4da9: $11 $9a $3f
	rst  $38                                         ; $4dac: $ff
	or   $53                                         ; $4dad: $f6 $53
	ld   de, $1119                                   ; $4daf: $11 $19 $11
	xor  a                                           ; $4db2: $af
	rst  $38                                         ; $4db3: $ff
	rst  $38                                         ; $4db4: $ff
	rst  $38                                         ; $4db5: $ff
	cpl                                              ; $4db6: $2f
	sub  c                                           ; $4db7: $91
	ld   de, $5919                                   ; $4db8: $11 $19 $59
	rst  $38                                         ; $4dbb: $ff
	db   $fd                                         ; $4dbc: $fd
	ld   h, a                                        ; $4dbd: $67
	ld   de, $7111                                   ; $4dbe: $11 $11 $71
	rra                                              ; $4dc1: $1f
	rst  $38                                         ; $4dc2: $ff
	rst  $38                                         ; $4dc3: $ff
	rst  $38                                         ; $4dc4: $ff
	adc  b                                           ; $4dc5: $88
	di                                               ; $4dc6: $f3
	ld   de, $7414                                   ; $4dc7: $11 $14 $74
	rst  $38                                         ; $4dca: $ff
	rst  $38                                         ; $4dcb: $ff
	and  [hl]                                        ; $4dcc: $a6
	ld   sp, $7111                                   ; $4dcd: $31 $11 $71
	ld   e, $ff                                      ; $4dd0: $1e $ff
	rst  $38                                         ; $4dd2: $ff
	rst  $38                                         ; $4dd3: $ff
	pop  af                                          ; $4dd4: $f1
	ld   hl, sp+$11                                  ; $4dd5: $f8 $11
	ld   de, $cf66                                   ; $4dd7: $11 $66 $cf
	rst  $38                                         ; $4dda: $ff
	push af                                          ; $4ddb: $f5
	ld   b, c                                        ; $4ddc: $41
	ld   de, $1116                                   ; $4ddd: $11 $16 $11
	rst  $38                                         ; $4de0: $ff
	rst  $38                                         ; $4de1: $ff
	rst  $38                                         ; $4de2: $ff
	push af                                          ; $4de3: $f5
	cp   a                                           ; $4de4: $bf
	ld   de, $5711                                   ; $4de5: $11 $11 $57
	xor  a                                           ; $4de8: $af
	rst  $38                                         ; $4de9: $ff
	rst  $30                                         ; $4dea: $f7
	ld   hl, $1811                                   ; $4deb: $21 $11 $18
	ld   de, $ffff                                   ; $4dee: $11 $ff $ff
	rst  $38                                         ; $4df1: $ff
	ld   a, [$119f]                                  ; $4df2: $fa $9f $11
	ld   de, $bf37                                   ; $4df5: $11 $37 $bf
	rst  $38                                         ; $4df8: $ff
	rst  $30                                         ; $4df9: $f7
	ld   de, $1611                                   ; $4dfa: $11 $11 $16
	ld   de, $ffff                                   ; $4dfd: $11 $ff $ff
	rst  $38                                         ; $4e00: $ff
	ld   sp, hl                                      ; $4e01: $f9
	xor  [hl]                                        ; $4e02: $ae
	ld   de, $2811                                   ; $4e03: $11 $11 $28
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e06: $cf
	rst  $38                                         ; $4e07: $ff
	rst  $30                                         ; $4e08: $f7
	ld   de, $1611                                   ; $4e09: $11 $11 $16
	ld   de, $fffe                                   ; $4e0c: $11 $fe $ff
	rst  $38                                         ; $4e0f: $ff
	ld   hl, sp-$32                                  ; $4e10: $f8 $ce
	ld   de, $2811                                   ; $4e12: $11 $11 $28
	rst  $28                                         ; $4e15: $ef
	rst  $38                                         ; $4e16: $ff
	db   $f4                                         ; $4e17: $f4
	ld   de, $1211                                   ; $4e18: $11 $11 $12
	dec  de                                          ; $4e1b: $1b
	rst  $38                                         ; $4e1c: $ff
	rst  $38                                         ; $4e1d: $ff
	rst  $38                                         ; $4e1e: $ff
	di                                               ; $4e1f: $f3
	ld   a, [$1111]                                  ; $4e20: $fa $11 $11
	ld   c, c                                        ; $4e23: $49
	rst  $38                                         ; $4e24: $ff
	rst  $38                                         ; $4e25: $ff
	pop  af                                          ; $4e26: $f1
	ld   de, $7111                                   ; $4e27: $11 $11 $71
	rra                                              ; $4e2a: $1f
	rst  $38                                         ; $4e2b: $ff
	rst  $38                                         ; $4e2c: $ff
	rst  $38                                         ; $4e2d: $ff
	ldh  a, [c]                                      ; $4e2e: $f2
	push af                                          ; $4e2f: $f5
	ld   de, $6b11                                   ; $4e30: $11 $11 $6b
	rst  $38                                         ; $4e33: $ff
	rst  $38                                         ; $4e34: $ff
	pop  af                                          ; $4e35: $f1
	ld   de, $d111                                   ; $4e36: $11 $11 $d1
	rra                                              ; $4e39: $1f
	rst  $38                                         ; $4e3a: $ff
	rst  $38                                         ; $4e3b: $ff
	rst  $38                                         ; $4e3c: $ff
	and  h                                           ; $4e3d: $a4
	pop  af                                          ; $4e3e: $f1
	ld   de, $9c13                                   ; $4e3f: $11 $13 $9c
	rst  $38                                         ; $4e42: $ff
	rst  $38                                         ; $4e43: $ff
	add  c                                           ; $4e44: $81
	ld   de, $a111                                   ; $4e45: $11 $11 $a1
	ld   l, a                                        ; $4e48: $6f
	rst  $38                                         ; $4e49: $ff
	rst  $38                                         ; $4e4a: $ff
	rst  $38                                         ; $4e4b: $ff
	ld   a, [de]                                     ; $4e4c: $1a
	pop  af                                          ; $4e4d: $f1
	ld   de, $cf17                                   ; $4e4e: $11 $17 $cf
	rst  $38                                         ; $4e51: $ff
	rst  $38                                         ; $4e52: $ff
	ld   de, $1b11                                   ; $4e53: $11 $11 $1b
	ld   de, $ffff                                   ; $4e56: $11 $ff $ff
	rst  $38                                         ; $4e59: $ff
	rst  $38                                         ; $4e5a: $ff
	rra                                              ; $4e5b: $1f
	ld   hl, $4c11                                   ; $4e5c: $21 $11 $4c
	rst  JumpTable                                         ; $4e5f: $df
	rst  $38                                         ; $4e60: $ff
	ld   hl, sp+$11                                  ; $4e61: $f8 $11
	ld   de, $141b                                   ; $4e63: $11 $1b $14
	rst  $38                                         ; $4e66: $ff
	rst  $38                                         ; $4e67: $ff
	rst  $38                                         ; $4e68: $ff
	pop  af                                          ; $4e69: $f1
	ld   c, [hl]                                     ; $4e6a: $4e
	ld   de, $af11                                   ; $4e6b: $11 $11 $af
	rst  $38                                         ; $4e6e: $ff
	rst  $38                                         ; $4e6f: $ff
	or   c                                           ; $4e70: $b1
	ld   de, $b111                                   ; $4e71: $11 $11 $b1
	rra                                              ; $4e74: $1f
	rst  $38                                         ; $4e75: $ff
	rst  $38                                         ; $4e76: $ff
	rst  $38                                         ; $4e77: $ff
	or   c                                           ; $4e78: $b1
	pop  hl                                          ; $4e79: $e1
	ld   de, $ff16                                   ; $4e7a: $11 $16 $ff
	rst  $38                                         ; $4e7d: $ff
	cp   $11                                         ; $4e7e: $fe $11
	ld   de, $1115                                   ; $4e80: $11 $15 $11
	rst  $38                                         ; $4e83: $ff
	rst  $38                                         ; $4e84: $ff
	rst  $38                                         ; $4e85: $ff
	rst  $38                                         ; $4e86: $ff
	jr   jr_0d0_4eca                                 ; $4e87: $18 $41

	ld   de, $ff3f                                   ; $4e89: $11 $3f $ff
	rst  $38                                         ; $4e8c: $ff
	di                                               ; $4e8d: $f3
	ld   de, $1511                                   ; $4e8e: $11 $11 $15
	ld   e, $ff                                      ; $4e91: $1e $ff
	rst  $38                                         ; $4e93: $ff
	rst  $38                                         ; $4e94: $ff
	pop  af                                          ; $4e95: $f1
	dec  [hl]                                        ; $4e96: $35
	ld   [de], a                                     ; $4e97: $12
	ld   de, $ffaf                                   ; $4e98: $11 $af $ff
	rst  $38                                         ; $4e9b: $ff
	sub  c                                           ; $4e9c: $91
	ld   de, $6111                                   ; $4e9d: $11 $11 $61
	cp   a                                           ; $4ea0: $bf
	rst  $38                                         ; $4ea1: $ff
	rst  $38                                         ; $4ea2: $ff
	rst  $38                                         ; $4ea3: $ff
	ld   hl, $2171                                   ; $4ea4: $21 $71 $21
	rla                                              ; $4ea7: $17
	rst  $38                                         ; $4ea8: $ff
	rst  $38                                         ; $4ea9: $ff
	ld   a, [$1111]                                  ; $4eaa: $fa $11 $11
	rla                                              ; $4ead: $17
	add  hl, de                                      ; $4eae: $19
	rst  $38                                         ; $4eaf: $ff
	rst  $38                                         ; $4eb0: $ff
	rst  $38                                         ; $4eb1: $ff
	or   $17                                         ; $4eb2: $f6 $17
	inc  de                                          ; $4eb4: $13
	inc  hl                                          ; $4eb5: $23
	ld   c, a                                        ; $4eb6: $4f
	rst  $38                                         ; $4eb7: $ff
	rst  $38                                         ; $4eb8: $ff
	and  c                                           ; $4eb9: $a1
	ld   de, $7111                                   ; $4eba: $11 $11 $71
	adc  a                                           ; $4ebd: $8f
	rst  $38                                         ; $4ebe: $ff
	rst  $38                                         ; $4ebf: $ff
	rst  $38                                         ; $4ec0: $ff
	and  c                                           ; $4ec1: $a1
	ld   [hl], c                                     ; $4ec2: $71
	ld   b, d                                        ; $4ec3: $42
	ld   b, h                                        ; $4ec4: $44
	rst  $38                                         ; $4ec5: $ff
	rst  $38                                         ; $4ec6: $ff
	ld   a, [$1111]                                  ; $4ec7: $fa $11 $11

jr_0d0_4eca:
	jr   jr_0d0_4ee2                                 ; $4eca: $18 $16

	rst  $38                                         ; $4ecc: $ff
	rst  $38                                         ; $4ecd: $ff
	db   $fc                                         ; $4ece: $fc
	cp   $6b                                         ; $4ecf: $fe $6b
	inc  de                                          ; $4ed1: $13
	ld   b, a                                        ; $4ed2: $47
	ld   c, l                                        ; $4ed3: $4d
	rst  $38                                         ; $4ed4: $ff
	rst  $38                                         ; $4ed5: $ff
	add  c                                           ; $4ed6: $81
	ld   de, $8111                                   ; $4ed7: $11 $11 $81
	adc  c                                           ; $4eda: $89
	sbc  a                                           ; $4edb: $9f
	rst  $38                                         ; $4edc: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4edd: $cf
	db   $db                                         ; $4ede: $db
	ld   sp, hl                                      ; $4edf: $f9
	ld   h, l                                        ; $4ee0: $65
	ld   [hl], l                                     ; $4ee1: $75

jr_0d0_4ee2:
	sbc  [hl]                                        ; $4ee2: $9e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ee3: $cf
	rst  $20                                         ; $4ee4: $e7
	ld   de, $1a11                                   ; $4ee5: $11 $11 $1a
	ld   l, d                                        ; $4ee8: $6a
	ld   h, d                                        ; $4ee9: $62
	ld   a, h                                        ; $4eea: $7c
	db   $ec                                         ; $4eeb: $ec
	ei                                               ; $4eec: $fb
	adc  a                                           ; $4eed: $8f
	db   $eb                                         ; $4eee: $eb
	xor  b                                           ; $4eef: $a8
	ld   l, b                                        ; $4ef0: $68
	db   $db                                         ; $4ef1: $db
	cp   e                                           ; $4ef2: $bb
	halt                                             ; $4ef3: $76
	ld   d, e                                        ; $4ef4: $53
	ld   de, $a889                                   ; $4ef5: $11 $89 $a8
	ld   hl, $7a26                                   ; $4ef8: $21 $26 $7a
	or   [hl]                                        ; $4efb: $b6
	ld   a, c                                        ; $4efc: $79
	xor  h                                           ; $4efd: $ac
	db   $db                                         ; $4efe: $db
	adc  d                                           ; $4eff: $8a
	cp   h                                           ; $4f00: $bc
	cp   $a9                                         ; $4f01: $fe $a9
	add  a                                           ; $4f03: $87
	ld   d, l                                        ; $4f04: $55
	ld   a, b                                        ; $4f05: $78
	add  [hl]                                        ; $4f06: $86
	ld   sp, $4512                                   ; $4f07: $31 $12 $45
	ld   d, l                                        ; $4f0a: $55
	ld   b, [hl]                                     ; $4f0b: $46
	ld   a, c                                        ; $4f0c: $79
	res  7, e                                        ; $4f0d: $cb $bb
	adc  $ff                                         ; $4f0f: $ce $ff

Jump_0d0_4f11:
	db   $ed                                         ; $4f11: $ed
	jp   z, Jump_0d0_6798                            ; $4f12: $ca $98 $67

	sub  a                                           ; $4f15: $97
	ld   h, h                                        ; $4f16: $64
	ld   de, $3423                                   ; $4f17: $11 $23 $34
	ld   [hl-], a                                    ; $4f1a: $32
	inc  [hl]                                        ; $4f1b: $34
	ld   l, c                                        ; $4f1c: $69
	cp   e                                           ; $4f1d: $bb
	call $ffef                                       ; $4f1e: $cd $ef $ff
	db   $ed                                         ; $4f21: $ed
	cp   d                                           ; $4f22: $ba
	xor  c                                           ; $4f23: $a9
	ld   a, c                                        ; $4f24: $79
	sub  a                                           ; $4f25: $97
	ld   d, e                                        ; $4f26: $53
	ld   [hl+], a                                    ; $4f27: $22
	ld   [hl+], a                                    ; $4f28: $22
	ld   [hl+], a                                    ; $4f29: $22
	ld   de, $7924                                   ; $4f2a: $11 $24 $79
	call $ffee                                       ; $4f2d: $cd $ee $ff
	rst  $38                                         ; $4f30: $ff
	res  5, d                                        ; $4f31: $cb $aa
	sbc  c                                           ; $4f33: $99
	adc  c                                           ; $4f34: $89
	sbc  c                                           ; $4f35: $99
	ld   h, e                                        ; $4f36: $63
	ld   hl, $1111                                   ; $4f37: $21 $11 $11
	ld   de, $9b25                                   ; $4f3a: $11 $25 $9b
	xor  $df                                         ; $4f3d: $ee $df
	rst  $38                                         ; $4f3f: $ff
	cp   $db                                         ; $4f40: $fe $db
	xor  d                                           ; $4f42: $aa
	xor  d                                           ; $4f43: $aa
	sbc  d                                           ; $4f44: $9a
	sbc  b                                           ; $4f45: $98
	ld   b, d                                        ; $4f46: $42
	ld   de, $1111                                   ; $4f47: $11 $11 $11
	ld   [de], a                                     ; $4f4a: $12
	ld   b, a                                        ; $4f4b: $47
	cp   e                                           ; $4f4c: $bb
	db   $dd                                         ; $4f4d: $dd
	sbc  $ef                                         ; $4f4e: $de $ef
	cp   $cc                                         ; $4f50: $fe $cc
	call z, $bbba                                    ; $4f52: $cc $ba $bb
	sub  [hl]                                        ; $4f55: $96
	ld   hl, $1111                                   ; $4f56: $21 $11 $11
	ld   de, $5924                                   ; $4f59: $11 $24 $59
	cp   h                                           ; $4f5c: $bc
	call c, $ffde                                    ; $4f5d: $dc $de $ff
	cp   $dc                                         ; $4f60: $fe $dc
	call z, $a8a9                                    ; $4f62: $cc $a9 $a8
	ld   h, e                                        ; $4f65: $63
	ld   de, $1111                                   ; $4f66: $11 $11 $11
	ld   hl, $7a34                                   ; $4f69: $21 $34 $7a
	cp   h                                           ; $4f6c: $bc
	call $ffef                                       ; $4f6d: $cd $ef $ff
	cp   $db                                         ; $4f70: $fe $db
	cp   c                                           ; $4f72: $b9
	adc  c                                           ; $4f73: $89
	add  [hl]                                        ; $4f74: $86
	ld   sp, $1211                                   ; $4f75: $31 $11 $12
	ld   hl, $3612                                   ; $4f78: $21 $12 $36
	xor  h                                           ; $4f7b: $ac
	db   $ec                                         ; $4f7c: $ec
	rst  JumpTable                                         ; $4f7d: $df
	rst  $38                                         ; $4f7e: $ff
	rst  $38                                         ; $4f7f: $ff
	db   $dd                                         ; $4f80: $dd
	cp   c                                           ; $4f81: $b9
	adc  b                                           ; $4f82: $88
	xor  b                                           ; $4f83: $a8
	ld   h, d                                        ; $4f84: $62
	ld   de, $1112                                   ; $4f85: $11 $12 $11
	ld   de, $7a23                                   ; $4f88: $11 $23 $7a
	sbc  $df                                         ; $4f8b: $de $df
	rst  $38                                         ; $4f8d: $ff
	rst  $38                                         ; $4f8e: $ff
	db   $fd                                         ; $4f8f: $fd
	res  3, c                                        ; $4f90: $cb $99
	sbc  d                                           ; $4f92: $9a
	add  l                                           ; $4f93: $85
	ld   de, $2111                                   ; $4f94: $11 $11 $21
	ld   de, $4812                                   ; $4f97: $11 $12 $48
	cp   [hl]                                        ; $4f9a: $be
	db   $ed                                         ; $4f9b: $ed
	rst  $38                                         ; $4f9c: $ff
	rst  $38                                         ; $4f9d: $ff
	cp   $db                                         ; $4f9e: $fe $db
	sbc  c                                           ; $4fa0: $99
	sbc  e                                           ; $4fa1: $9b
	and  a                                           ; $4fa2: $a7
	ld   sp, $2111                                   ; $4fa3: $31 $11 $21
	ld   de, $2711                                   ; $4fa6: $11 $11 $27
	cp   [hl]                                        ; $4fa9: $be
	cp   $ff                                         ; $4faa: $fe $ff
	rst  $38                                         ; $4fac: $ff
	rst  $38                                         ; $4fad: $ff
	call c, $9b98                                    ; $4fae: $dc $98 $9b
	cp   b                                           ; $4fb1: $b8
	ld   b, c                                        ; $4fb2: $41
	ld   de, $1111                                   ; $4fb3: $11 $11 $11
	ld   de, $ae16                                   ; $4fb6: $11 $16 $ae
	rst  $38                                         ; $4fb9: $ff
	rst  $38                                         ; $4fba: $ff
	rst  $38                                         ; $4fbb: $ff
	rst  $38                                         ; $4fbc: $ff
	call c, $9c97                                    ; $4fbd: $dc $97 $9c
	ret                                              ; $4fc0: $c9


	ld   sp, $1111                                   ; $4fc1: $31 $11 $11
	ld   de, $1611                                   ; $4fc4: $11 $11 $16
	xor  [hl]                                        ; $4fc7: $ae
	cp   $ff                                         ; $4fc8: $fe $ff
	rst  $38                                         ; $4fca: $ff
	rst  $38                                         ; $4fcb: $ff
	db   $eb                                         ; $4fcc: $eb
	sub  a                                           ; $4fcd: $97
	sbc  h                                           ; $4fce: $9c
	rst  ToBoot                                         ; $4fcf: $c7
	ld   hl, $1111                                   ; $4fd0: $21 $11 $11
	ld   hl, $1711                                   ; $4fd3: $21 $11 $17
	cp   a                                           ; $4fd6: $bf
	rst  $38                                         ; $4fd7: $ff
	rst  $38                                         ; $4fd8: $ff
	rst  $38                                         ; $4fd9: $ff
	rst  $38                                         ; $4fda: $ff
	jp   c, $ab77                                    ; $4fdb: $da $77 $ab

	or   l                                           ; $4fde: $b5
	ld   de, $1211                                   ; $4fdf: $11 $11 $12
	ld   hl, $3911                                   ; $4fe2: $21 $11 $39
	rst  $28                                         ; $4fe5: $ef
	rst  $38                                         ; $4fe6: $ff
	rst  $38                                         ; $4fe7: $ff
	rst  $38                                         ; $4fe8: $ff
	cp   $c9                                         ; $4fe9: $fe $c9
	ld   l, c                                        ; $4feb: $69
	cp   e                                           ; $4fec: $bb
	add  c                                           ; $4fed: $81
	ld   de, $1311                                   ; $4fee: $11 $11 $13
	ld   de, $8d11                                   ; $4ff1: $11 $11 $8d
	rst  $38                                         ; $4ff4: $ff
	rst  $38                                         ; $4ff5: $ff
	rst  $38                                         ; $4ff6: $ff
	rst  $38                                         ; $4ff7: $ff
	rst  $10                                         ; $4ff8: $d7
	ld   hl, $8b14                                   ; $4ff9: $21 $14 $8b
	ld   sp, $3811                                   ; $4ffc: $31 $11 $38
	call c, $3aa6                                    ; $4fff: $dc $a6 $3a
	rst  $38                                         ; $5002: $ff
	rst  $38                                         ; $5003: $ff
	cp   $cb                                         ; $5004: $fe $cb
	and  d                                           ; $5006: $a2
	ld   de, $af11                                   ; $5007: $11 $11 $af
	or   $41                                         ; $500a: $f6 $41
	rra                                              ; $500c: $1f
	rst  $38                                         ; $500d: $ff
	db   $f4                                         ; $500e: $f4
	ld   de, $ffcf                                   ; $500f: $11 $cf $ff
	cp   $fc                                         ; $5012: $fe $fc
	ld   hl, $1411                                   ; $5014: $21 $11 $14
	rst  $38                                         ; $5017: $ff
	rst  $38                                         ; $5018: $ff
	ld   sp, $ff1b                                   ; $5019: $31 $1b $ff
	ld   de, $ff1f                                   ; $501c: $11 $1f $ff
	ei                                               ; $501f: $fb
	dec  [hl]                                        ; $5020: $35
	xor  e                                           ; $5021: $ab
	ld   de, $1f11                                   ; $5022: $11 $11 $1f
	rst  $38                                         ; $5025: $ff
	pop  af                                          ; $5026: $f1
	ld   de, $f71f                                   ; $5027: $11 $1f $f7
	ld   c, d                                        ; $502a: $4a
	rst  $38                                         ; $502b: $ff
	cp   $11                                         ; $502c: $fe $11
	ld   c, a                                        ; $502e: $4f
	rst  $38                                         ; $502f: $ff
	ld   de, rAUD1LEN                                   ; $5030: $11 $11 $ff
	rst  $38                                         ; $5033: $ff
	ld   de, rAUD1LEN                                   ; $5034: $11 $11 $ff
	ld   [hl], e                                     ; $5037: $73
	cp   a                                           ; $5038: $bf
	rst  $38                                         ; $5039: $ff
	add  c                                           ; $503a: $81
	add  hl, de                                      ; $503b: $19
	rst  $38                                         ; $503c: $ff
	pop  af                                          ; $503d: $f1
	ld   de, $ff1f                                   ; $503e: $11 $1f $ff
	pop  af                                          ; $5041: $f1
	ld   de, $d71f                                   ; $5042: $11 $1f $d7
	cpl                                              ; $5045: $2f
	rst  $38                                         ; $5046: $ff
	pop  af                                          ; $5047: $f1
	ld   de, $ff7f                                   ; $5048: $11 $7f $ff
	ld   de, $cf11                                   ; $504b: $11 $11 $cf
	rst  $38                                         ; $504e: $ff
	ld   de, $ae11                                   ; $504f: $11 $11 $ae
	sub  a                                           ; $5052: $97
	rst  $38                                         ; $5053: $ff
	rst  $38                                         ; $5054: $ff
	ld   de, rAUD1HIGH                                   ; $5055: $11 $14 $ff
	db   $f4                                         ; $5058: $f4
	ld   de, rAUD1LEN                                   ; $5059: $11 $11 $ff
	db   $fd                                         ; $505c: $fd
	ld   de, $fb15                                   ; $505d: $11 $15 $fb
	adc  a                                           ; $5060: $8f
	rst  $38                                         ; $5061: $ff
	pop  af                                          ; $5062: $f1
	ld   de, $ff2f                                   ; $5063: $11 $2f $ff
	ld   h, c                                        ; $5066: $61
	ld   de, $ff1f                                   ; $5067: $11 $1f $ff
	pop  af                                          ; $506a: $f1
	ld   de, $ba1e                                   ; $506b: $11 $1e $ba
	rst  $38                                         ; $506e: $ff
	rst  $38                                         ; $506f: $ff
	ld   de, rAUD1LOW                                   ; $5070: $11 $13 $ff
	db   $f4                                         ; $5073: $f4
	ld   de, rAUD1LEN                                   ; $5074: $11 $11 $ff
	cp   $11                                         ; $5077: $fe $11
	inc  de                                          ; $5079: $13
	db   $db                                         ; $507a: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $507b: $cf
	rst  $38                                         ; $507c: $ff
	pop  af                                          ; $507d: $f1
	ld   de, $ff8f                                   ; $507e: $11 $8f $ff
	ld   de, $ef11                                   ; $5081: $11 $11 $ef
	rst  $38                                         ; $5084: $ff
	ld   de, $6b11                                   ; $5085: $11 $11 $6b
	sbc  a                                           ; $5088: $9f
	rst  $38                                         ; $5089: $ff
	ei                                               ; $508a: $fb
	ld   de, $ff1f                                   ; $508b: $11 $1f $ff
	pop  de                                          ; $508e: $d1
	ld   de, $ff1f                                   ; $508f: $11 $1f $ff
	pop  af                                          ; $5092: $f1
	ld   de, $a91a                                   ; $5093: $11 $1a $a9
	rst  $38                                         ; $5096: $ff
	rst  $38                                         ; $5097: $ff
	ld   de, rAUD1LEN                                   ; $5098: $11 $11 $ff
	or   $11                                         ; $509b: $f6 $11
	ld   de, $ffff                                   ; $509d: $11 $ff $ff
	ld   de, $a811                                   ; $50a0: $11 $11 $a8
	rst  JumpTable                                         ; $50a3: $df
	rst  $38                                         ; $50a4: $ff
	pop  af                                          ; $50a5: $f1
	ld   de, $f9ef                                   ; $50a6: $11 $ef $f9
	ld   de, rAUD1LEN                                   ; $50a9: $11 $11 $ff
	rst  $38                                         ; $50ac: $ff
	ld   de, $c711                                   ; $50ad: $11 $11 $c7
	xor  a                                           ; $50b0: $af
	rst  $38                                         ; $50b1: $ff
	pop  af                                          ; $50b2: $f1
	ld   de, $f96f                                   ; $50b3: $11 $6f $f9
	ld   de, rAUD1LEN                                   ; $50b6: $11 $11 $ff
	rst  $38                                         ; $50b9: $ff
	ld   de, $a711                                   ; $50ba: $11 $11 $a7
	sbc  a                                           ; $50bd: $9f
	rst  $38                                         ; $50be: $ff
	pop  af                                          ; $50bf: $f1
	ld   de, $fa4f                                   ; $50c0: $11 $4f $fa
	ld   de, rAUD1LEN                                   ; $50c3: $11 $11 $ff
	rst  $38                                         ; $50c6: $ff
	ld   de, $8711                                   ; $50c7: $11 $11 $87
	cp   a                                           ; $50ca: $bf
	rst  $38                                         ; $50cb: $ff
	pop  af                                          ; $50cc: $f1
	ld   de, $f96f                                   ; $50cd: $11 $6f $f9
	ld   de, rAUD1LEN                                   ; $50d0: $11 $11 $ff
	rst  $38                                         ; $50d3: $ff
	ld   de, $5611                                   ; $50d4: $11 $11 $56
	rst  $38                                         ; $50d7: $ff
	rst  $38                                         ; $50d8: $ff
	sub  c                                           ; $50d9: $91
	ld   [de], a                                     ; $50da: $12
	cp   a                                           ; $50db: $bf
	add  e                                           ; $50dc: $83
	ld   de, $ff1f                                   ; $50dd: $11 $1f $ff
	pop  af                                          ; $50e0: $f1
	ld   d, $11                                      ; $50e1: $16 $11
	ld   c, d                                        ; $50e3: $4a
	rst  $38                                         ; $50e4: $ff
	db   $fd                                         ; $50e5: $fd
	ld   de, $fc16                                   ; $50e6: $11 $16 $fc
	ld   b, c                                        ; $50e9: $41
	ld   de, $ffff                                   ; $50ea: $11 $ff $ff
	ld   de, $1131                                   ; $50ed: $11 $31 $11
	cp   a                                           ; $50f0: $bf
	rst  $38                                         ; $50f1: $ff
	pop  hl                                          ; $50f2: $e1
	ld   de, $9829                                   ; $50f3: $11 $29 $98
	ld   de, $ff1f                                   ; $50f6: $11 $1f $ff
	pop  af                                          ; $50f9: $f1
	dec  d                                           ; $50fa: $15
	ld   de, $ff1e                                   ; $50fb: $11 $1e $ff
	ld   a, [$1111]                                  ; $50fe: $fa $11 $11
	inc  hl                                          ; $5101: $23
	ld   b, c                                        ; $5102: $41
	ld   de, $ffff                                   ; $5103: $11 $ff $ff
	ld   de, $1191                                   ; $5106: $11 $91 $11
	rst  $38                                         ; $5109: $ff
	rst  $38                                         ; $510a: $ff
	ld   h, c                                        ; $510b: $61
	ld   de, $3111                                   ; $510c: $11 $11 $31
	ld   de, $ff1f                                   ; $510f: $11 $1f $ff
	and  c                                           ; $5112: $a1
	ld   a, [hl-]                                    ; $5113: $3a
	ld   de, $ffdf                                   ; $5114: $11 $df $ff
	sub  h                                           ; $5117: $94
	ld   sp, $1611                                   ; $5118: $31 $11 $16
	ld   de, $ff1f                                   ; $511b: $11 $1f $ff
	pop  af                                          ; $511e: $f1
	jr   z, @+$13                                    ; $511f: $28 $11

	adc  a                                           ; $5121: $8f
	rst  $38                                         ; $5122: $ff
	sub  [hl]                                        ; $5123: $96
	ld   h, e                                        ; $5124: $63
	ld   de, $1117                                   ; $5125: $11 $17 $11
	rra                                              ; $5128: $1f
	rst  $38                                         ; $5129: $ff
	pop  de                                          ; $512a: $d1
	xor  h                                           ; $512b: $ac
	ld   de, $ff4f                                   ; $512c: $11 $4f $ff
	ld   a, b                                        ; $512f: $78
	and  c                                           ; $5130: $a1
	ld   de, $1112                                   ; $5131: $11 $12 $11
	rra                                              ; $5134: $1f
	rst  $38                                         ; $5135: $ff
	jp   $11e7                                       ; $5136: $c3 $e7 $11


	rst  $38                                         ; $5139: $ff
	rst  $38                                         ; $513a: $ff
	cp   h                                           ; $513b: $bc
	or   c                                           ; $513c: $b1
	ld   de, $1111                                   ; $513d: $11 $11 $11
	rst  $38                                         ; $5140: $ff
	rst  $38                                         ; $5141: $ff
	xor  l                                           ; $5142: $ad
	or   c                                           ; $5143: $b1
	ld   de, $ffff                                   ; $5144: $11 $ff $ff
	rst  $38                                         ; $5147: $ff
	ld   hl, $1111                                   ; $5148: $21 $11 $11
	ld   de, $ffff                                   ; $514b: $11 $ff $ff
	rst  $38                                         ; $514e: $ff
	ld   b, c                                        ; $514f: $41
	dec  e                                           ; $5150: $1d
	rst  $38                                         ; $5151: $ff
	rst  $38                                         ; $5152: $ff
	ei                                               ; $5153: $fb
	ld   de, $1111                                   ; $5154: $11 $11 $11
	rra                                              ; $5157: $1f
	rst  $38                                         ; $5158: $ff
	rst  $38                                         ; $5159: $ff
	ld   a, [$6d11]                                  ; $515a: $fa $11 $6d
	db   $ed                                         ; $515d: $ed
	rst  $38                                         ; $515e: $ff
	pop  bc                                          ; $515f: $c1
	ld   de, $1111                                   ; $5160: $11 $11 $11

Jump_0d0_5163:
	rst  $38                                         ; $5163: $ff
	rst  $38                                         ; $5164: $ff
	rst  $38                                         ; $5165: $ff
	pop  de                                          ; $5166: $d1
	inc  d                                           ; $5167: $14
	sbc  e                                           ; $5168: $9b
	rst  JumpTable                                         ; $5169: $df
	db   $fc                                         ; $516a: $fc
	ld   de, $1111                                   ; $516b: $11 $11 $11
	inc  e                                           ; $516e: $1c
	rst  $38                                         ; $516f: $ff
	rst  $38                                         ; $5170: $ff
	rst  $38                                         ; $5171: $ff
	ld   d, c                                        ; $5172: $51
	inc  d                                           ; $5173: $14
	ld   a, e                                        ; $5174: $7b
	rst  $38                                         ; $5175: $ff
	db   $e4                                         ; $5176: $e4
	ld   de, $1111                                   ; $5177: $11 $11 $11
	xor  a                                           ; $517a: $af

Jump_0d0_517b:
	rst  $38                                         ; $517b: $ff
	rst  $38                                         ; $517c: $ff
	ld   sp, hl                                      ; $517d: $f9
	dec  d                                           ; $517e: $15
	ld   d, l                                        ; $517f: $55
	adc  l                                           ; $5180: $8d

Call_0d0_5181:
	cp   $41                                         ; $5181: $fe $41
	ld   de, $1c11                                   ; $5183: $11 $11 $1c
	rst  $38                                         ; $5186: $ff
	rst  $38                                         ; $5187: $ff
	rst  $38                                         ; $5188: $ff
	add  h                                           ; $5189: $84
	ld   e, c                                        ; $518a: $59
	ld   d, a                                        ; $518b: $57
	rst  $28                                         ; $518c: $ef
	sub  c                                           ; $518d: $91
	ld   de, $1111                                   ; $518e: $11 $11 $11
	cp   a                                           ; $5191: $bf
	rst  $38                                         ; $5192: $ff
	rst  $38                                         ; $5193: $ff
	db   $f4                                         ; $5194: $f4
	ld   d, l                                        ; $5195: $55
	ld   [hl], a                                     ; $5196: $77
	adc  a                                           ; $5197: $8f
	sub  $11                                         ; $5198: $d6 $11
	ld   de, $5b11                                   ; $519a: $11 $11 $5b
	rst  $38                                         ; $519d: $ff
	rst  $38                                         ; $519e: $ff
	ld   sp, hl                                      ; $519f: $f9
	ld   h, a                                        ; $51a0: $67
	ld   h, e                                        ; $51a1: $63
	ld   l, [hl]                                     ; $51a2: $6e
	ld   sp, hl                                      ; $51a3: $f9
	ld   de, $1111                                   ; $51a4: $11 $11 $11
	ld   c, c                                        ; $51a7: $49
	sbc  $ff                                         ; $51a8: $de $ff
	db   $fd                                         ; $51aa: $fd
	sbc  c                                           ; $51ab: $99
	add  e                                           ; $51ac: $83
	ld   e, d                                        ; $51ad: $5a
	jp   c, $2154                                    ; $51ae: $da $54 $21

	ld   de, $9e15                                   ; $51b1: $11 $15 $9e
	rst  $38                                         ; $51b4: $ff
	rst  $38                                         ; $51b5: $ff
	xor  c                                           ; $51b6: $a9
	add  a                                           ; $51b7: $87
	ld   a, c                                        ; $51b8: $79
	jp   z, $2164                                    ; $51b9: $ca $64 $21

	ld   de, $8a15                                   ; $51bc: $11 $15 $8a
	rst  $28                                         ; $51bf: $ef
	cp   $cb                                         ; $51c0: $fe $cb
	add  a                                           ; $51c2: $87
	ld   h, a                                        ; $51c3: $67
	sbc  d                                           ; $51c4: $9a
	sub  l                                           ; $51c5: $95
	ld   d, e                                        ; $51c6: $53
	inc  sp                                          ; $51c7: $33
	inc  hl                                          ; $51c8: $23
	ld   e, b                                        ; $51c9: $58
	xor  l                                           ; $51ca: $ad

Call_0d0_51cb:
	sbc  $ca                                         ; $51cb: $de $ca
	add  a                                           ; $51cd: $87
	sbc  d                                           ; $51ce: $9a
	xor  c                                           ; $51cf: $a9
	xor  b                                           ; $51d0: $a8
	add  [hl]                                        ; $51d1: $86
	ld   d, h                                        ; $51d2: $54
	ld   b, h                                        ; $51d3: $44
	ld   d, l                                        ; $51d4: $55
	ld   l, d                                        ; $51d5: $6a
	adc  d                                           ; $51d6: $8a
	xor  d                                           ; $51d7: $aa
	sbc  b                                           ; $51d8: $98
	add  a                                           ; $51d9: $87
	xor  d                                           ; $51da: $aa
	jp   z, Jump_0d0_77ba                            ; $51db: $ca $ba $77

	ld   h, [hl]                                     ; $51de: $66
	ld   d, l                                        ; $51df: $55
	ld   h, a                                        ; $51e0: $67
	add  a                                           ; $51e1: $87
	adc  b                                           ; $51e2: $88
	ld   [hl], a                                     ; $51e3: $77
	sbc  d                                           ; $51e4: $9a
	cp   c                                           ; $51e5: $b9
	xor  h                                           ; $51e6: $ac
	xor  d                                           ; $51e7: $aa
	cp   c                                           ; $51e8: $b9
	sub  a                                           ; $51e9: $97
	ld   h, l                                        ; $51ea: $65
	ld   h, l                                        ; $51eb: $65
	ld   l, b                                        ; $51ec: $68
	ld   h, a                                        ; $51ed: $67
	ld   a, c                                        ; $51ee: $79
	ld   h, a                                        ; $51ef: $67
	sbc  b                                           ; $51f0: $98
	xor  d                                           ; $51f1: $aa
	xor  e                                           ; $51f2: $ab
	xor  d                                           ; $51f3: $aa
	xor  c                                           ; $51f4: $a9
	adc  c                                           ; $51f5: $89
	adc  c                                           ; $51f6: $89
	sbc  c                                           ; $51f7: $99
	halt                                             ; $51f8: $76
	add  a                                           ; $51f9: $87
	ld   [hl], a                                     ; $51fa: $77
	ld   h, a                                        ; $51fb: $67
	ld   a, b                                        ; $51fc: $78

Call_0d0_51fd:
	sbc  c                                           ; $51fd: $99
	xor  b                                           ; $51fe: $a8
	sbc  c                                           ; $51ff: $99
	adc  c                                           ; $5200: $89
	ld   a, b                                        ; $5201: $78
	adc  b                                           ; $5202: $88
	adc  d                                           ; $5203: $8a
	add  a                                           ; $5204: $87
	sub  a                                           ; $5205: $97
	add  [hl]                                        ; $5206: $86
	ld   a, b                                        ; $5207: $78
	adc  c                                           ; $5208: $89
	sbc  d                                           ; $5209: $9a
	adc  b                                           ; $520a: $88
	ld   [hl], a                                     ; $520b: $77
	adc  b                                           ; $520c: $88
	adc  b                                           ; $520d: $88
	ld   [hl], a                                     ; $520e: $77
	ld   a, b                                        ; $520f: $78
	adc  c                                           ; $5210: $89
	sbc  c                                           ; $5211: $99
	sub  [hl]                                        ; $5212: $96
	ld   l, b                                        ; $5213: $68
	sbc  c                                           ; $5214: $99
	adc  b                                           ; $5215: $88
	xor  b                                           ; $5216: $a8
	ld   h, a                                        ; $5217: $67
	sub  a                                           ; $5218: $97
	ld   a, b                                        ; $5219: $78
	halt                                             ; $521a: $76
	ld   a, b                                        ; $521b: $78
	adc  b                                           ; $521c: $88
	adc  d                                           ; $521d: $8a
	ld   a, b                                        ; $521e: $78
	ld   [hl], a                                     ; $521f: $77
	adc  b                                           ; $5220: $88
	sbc  c                                           ; $5221: $99
	xor  b                                           ; $5222: $a8
	ld   h, a                                        ; $5223: $67
	halt                                             ; $5224: $76
	ld   h, a                                        ; $5225: $67
	sbc  b                                           ; $5226: $98
	add  a                                           ; $5227: $87
	adc  c                                           ; $5228: $89
	ld   a, c                                        ; $5229: $79
	ld   a, b                                        ; $522a: $78
	ld   a, b                                        ; $522b: $78
	adc  b                                           ; $522c: $88
	sub  a                                           ; $522d: $97
	adc  b                                           ; $522e: $88
	add  a                                           ; $522f: $87
	ld   [hl], a                                     ; $5230: $77
	ld   h, a                                        ; $5231: $67
	ld   a, b                                        ; $5232: $78
	sbc  c                                           ; $5233: $99
	add  a                                           ; $5234: $87
	sub  a                                           ; $5235: $97
	sbc  b                                           ; $5236: $98
	ld   [hl], a                                     ; $5237: $77
	ld   l, b                                        ; $5238: $68
	sbc  c                                           ; $5239: $99
	adc  c                                           ; $523a: $89
	sub  a                                           ; $523b: $97
	ld   h, a                                        ; $523c: $67
	add  a                                           ; $523d: $87
	adc  c                                           ; $523e: $89
	ld   a, d                                        ; $523f: $7a
	ld   a, b                                        ; $5240: $78
	sbc  b                                           ; $5241: $98
	sub  a                                           ; $5242: $97
	and  [hl]                                        ; $5243: $a6
	sbc  c                                           ; $5244: $99
	ld   a, c                                        ; $5245: $79
	ld   a, d                                        ; $5246: $7a
	add  a                                           ; $5247: $87
	ld   a, b                                        ; $5248: $78
	ld   [hl], a                                     ; $5249: $77
	xor  b                                           ; $524a: $a8
	ld   [hl], a                                     ; $524b: $77
	sbc  c                                           ; $524c: $99
	adc  c                                           ; $524d: $89
	sbc  b                                           ; $524e: $98
	sub  [hl]                                        ; $524f: $96
	adc  c                                           ; $5250: $89
	ld   h, a                                        ; $5251: $67
	adc  c                                           ; $5252: $89
	sbc  b                                           ; $5253: $98
	ld   a, b                                        ; $5254: $78
	ld   [hl], a                                     ; $5255: $77
	sub  a                                           ; $5256: $97
	sub  a                                           ; $5257: $97
	adc  c                                           ; $5258: $89
	ld   a, b                                        ; $5259: $78
	adc  b                                           ; $525a: $88
	ld   [hl], a                                     ; $525b: $77
	add  a                                           ; $525c: $87
	adc  b                                           ; $525d: $88
	sbc  b                                           ; $525e: $98
	adc  c                                           ; $525f: $89
	ld   a, b                                        ; $5260: $78
	ld   a, c                                        ; $5261: $79
	add  a                                           ; $5262: $87
	and  a                                           ; $5263: $a7
	ld   a, d                                        ; $5264: $7a
	add  [hl]                                        ; $5265: $86
	adc  c                                           ; $5266: $89
	ld   a, b                                        ; $5267: $78
	add  a                                           ; $5268: $87
	sub  a                                           ; $5269: $97
	and  [hl]                                        ; $526a: $a6
	ld   a, d                                        ; $526b: $7a
	ld   [hl], a                                     ; $526c: $77
	sbc  c                                           ; $526d: $99
	ld   l, d                                        ; $526e: $6a
	ld   l, c                                        ; $526f: $69
	ld   a, c                                        ; $5270: $79
	halt                                             ; $5271: $76
	and  [hl]                                        ; $5272: $a6
	sub  [hl]                                        ; $5273: $96
	sbc  b                                           ; $5274: $98
	adc  b                                           ; $5275: $88
	add  a                                           ; $5276: $87
	add  a                                           ; $5277: $87
	sbc  b                                           ; $5278: $98
	ld   a, d                                        ; $5279: $7a
	ld   a, c                                        ; $527a: $79
	ld   e, c                                        ; $527b: $59
	ld   l, b                                        ; $527c: $68
	add  a                                           ; $527d: $87
	add  a                                           ; $527e: $87
	sub  [hl]                                        ; $527f: $96
	sub  [hl]                                        ; $5280: $96
	sub  [hl]                                        ; $5281: $96
	adc  b                                           ; $5282: $88
	ld   l, c                                        ; $5283: $69
	ld   a, b                                        ; $5284: $78
	ld   a, b                                        ; $5285: $78
	and  [hl]                                        ; $5286: $a6
	sub  a                                           ; $5287: $97
	ld   [hl], a                                     ; $5288: $77
	ld   l, b                                        ; $5289: $68
	ld   a, b                                        ; $528a: $78
	ld   a, b                                        ; $528b: $78
	add  [hl]                                        ; $528c: $86
	adc  c                                           ; $528d: $89
	ld   h, a                                        ; $528e: $67
	adc  b                                           ; $528f: $88
	sub  a                                           ; $5290: $97
	sbc  b                                           ; $5291: $98
	add  a                                           ; $5292: $87
	ld   a, b                                        ; $5293: $78
	ld   [hl], a                                     ; $5294: $77
	ld   a, b                                        ; $5295: $78
	add  a                                           ; $5296: $87
	adc  b                                           ; $5297: $88
	adc  c                                           ; $5298: $89
	ld   l, b                                        ; $5299: $68
	add  a                                           ; $529a: $87
	adc  c                                           ; $529b: $89
	add  a                                           ; $529c: $87
	adc  b                                           ; $529d: $88
	add  a                                           ; $529e: $87
	ld   [hl], a                                     ; $529f: $77
	add  a                                           ; $52a0: $87
	adc  c                                           ; $52a1: $89
	ld   a, b                                        ; $52a2: $78
	ld   a, b                                        ; $52a3: $78
	add  a                                           ; $52a4: $87
	sub  a                                           ; $52a5: $97
	sbc  b                                           ; $52a6: $98
	ld   a, b                                        ; $52a7: $78
	sbc  b                                           ; $52a8: $98
	adc  b                                           ; $52a9: $88
	ld   a, b                                        ; $52aa: $78
	ld   a, b                                        ; $52ab: $78
	add  a                                           ; $52ac: $87
	sbc  b                                           ; $52ad: $98
	ld   a, c                                        ; $52ae: $79
	ld   [hl], a                                     ; $52af: $77
	sbc  b                                           ; $52b0: $98
	ld   a, c                                        ; $52b1: $79
	sub  a                                           ; $52b2: $97
	sub  a                                           ; $52b3: $97
	adc  c                                           ; $52b4: $89
	adc  b                                           ; $52b5: $88
	ld   a, b                                        ; $52b6: $78
	ld   a, b                                        ; $52b7: $78
	sub  a                                           ; $52b8: $97
	add  a                                           ; $52b9: $87
	adc  b                                           ; $52ba: $88
	adc  b                                           ; $52bb: $88
	sbc  c                                           ; $52bc: $99
	adc  b                                           ; $52bd: $88
	adc  b                                           ; $52be: $88
	sub  a                                           ; $52bf: $97
	sub  a                                           ; $52c0: $97
	ld   a, b                                        ; $52c1: $78
	sbc  b                                           ; $52c2: $98
	ld   a, b                                        ; $52c3: $78
	adc  c                                           ; $52c4: $89
	ld   a, b                                        ; $52c5: $78
	adc  b                                           ; $52c6: $88
	add  a                                           ; $52c7: $87
	adc  b                                           ; $52c8: $88
	sbc  b                                           ; $52c9: $98
	adc  b                                           ; $52ca: $88
	add  a                                           ; $52cb: $87
	add  a                                           ; $52cc: $87
	adc  b                                           ; $52cd: $88
	ld   a, c                                        ; $52ce: $79
	ld   a, b                                        ; $52cf: $78
	add  a                                           ; $52d0: $87
	adc  b                                           ; $52d1: $88
	ld   a, b                                        ; $52d2: $78
	ld   a, b                                        ; $52d3: $78
	adc  b                                           ; $52d4: $88
	sub  a                                           ; $52d5: $97
	sub  a                                           ; $52d6: $97
	sbc  b                                           ; $52d7: $98
	add  a                                           ; $52d8: $87
	sbc  b                                           ; $52d9: $98
	adc  b                                           ; $52da: $88
	adc  c                                           ; $52db: $89
	adc  b                                           ; $52dc: $88
	add  a                                           ; $52dd: $87
	adc  b                                           ; $52de: $88
	adc  c                                           ; $52df: $89
	ld   a, c                                        ; $52e0: $79
	adc  b                                           ; $52e1: $88
	add  a                                           ; $52e2: $87
	sbc  b                                           ; $52e3: $98
	sbc  b                                           ; $52e4: $98
	adc  c                                           ; $52e5: $89
	ld   a, b                                        ; $52e6: $78
	adc  b                                           ; $52e7: $88
	adc  b                                           ; $52e8: $88
	adc  b                                           ; $52e9: $88
	ld   a, b                                        ; $52ea: $78
	ld   a, b                                        ; $52eb: $78
	ld   a, b                                        ; $52ec: $78
	adc  b                                           ; $52ed: $88
	add  a                                           ; $52ee: $87
	adc  b                                           ; $52ef: $88
	adc  c                                           ; $52f0: $89
	sub  a                                           ; $52f1: $97
	sbc  c                                           ; $52f2: $99
	adc  c                                           ; $52f3: $89
	adc  c                                           ; $52f4: $89
	adc  b                                           ; $52f5: $88
	sbc  b                                           ; $52f6: $98
	adc  c                                           ; $52f7: $89
	adc  b                                           ; $52f8: $88
	adc  b                                           ; $52f9: $88
	sbc  b                                           ; $52fa: $98
	adc  b                                           ; $52fb: $88
	adc  b                                           ; $52fc: $88
	adc  c                                           ; $52fd: $89
	adc  b                                           ; $52fe: $88
	adc  b                                           ; $52ff: $88
	ld   a, c                                        ; $5300: $79
	adc  b                                           ; $5301: $88
	adc  b                                           ; $5302: $88
	adc  b                                           ; $5303: $88
	sbc  b                                           ; $5304: $98
	sbc  b                                           ; $5305: $98
	adc  b                                           ; $5306: $88
	adc  c                                           ; $5307: $89
	adc  b                                           ; $5308: $88
	adc  b                                           ; $5309: $88
	sbc  c                                           ; $530a: $99
	adc  c                                           ; $530b: $89
	adc  b                                           ; $530c: $88
	adc  c                                           ; $530d: $89
	adc  c                                           ; $530e: $89
	adc  b                                           ; $530f: $88
	adc  b                                           ; $5310: $88
	sbc  b                                           ; $5311: $98
	adc  b                                           ; $5312: $88
	adc  c                                           ; $5313: $89
	sbc  b                                           ; $5314: $98
	sbc  b                                           ; $5315: $98
	sbc  c                                           ; $5316: $99
	adc  b                                           ; $5317: $88
	adc  b                                           ; $5318: $88
	sbc  b                                           ; $5319: $98
	adc  c                                           ; $531a: $89
	sbc  b                                           ; $531b: $98
	adc  b                                           ; $531c: $88
	adc  b                                           ; $531d: $88
	sbc  b                                           ; $531e: $98
	sbc  c                                           ; $531f: $99
	adc  b                                           ; $5320: $88
	adc  b                                           ; $5321: $88
	sbc  c                                           ; $5322: $99
	adc  c                                           ; $5323: $89
	adc  c                                           ; $5324: $89
	sbc  b                                           ; $5325: $98
	adc  c                                           ; $5326: $89
	adc  b                                           ; $5327: $88
	adc  c                                           ; $5328: $89
	sbc  b                                           ; $5329: $98
	sbc  c                                           ; $532a: $99
	adc  c                                           ; $532b: $89
	adc  b                                           ; $532c: $88
	adc  b                                           ; $532d: $88
	adc  c                                           ; $532e: $89
	adc  c                                           ; $532f: $89
	sbc  b                                           ; $5330: $98
	adc  b                                           ; $5331: $88
	adc  b                                           ; $5332: $88
	adc  b                                           ; $5333: $88
	adc  c                                           ; $5334: $89
	sbc  b                                           ; $5335: $98
	adc  c                                           ; $5336: $89
	adc  b                                           ; $5337: $88
	adc  b                                           ; $5338: $88
	adc  b                                           ; $5339: $88
	adc  b                                           ; $533a: $88
	sbc  b                                           ; $533b: $98
	sbc  b                                           ; $533c: $98
	adc  b                                           ; $533d: $88
	adc  b                                           ; $533e: $88
	adc  b                                           ; $533f: $88
	adc  b                                           ; $5340: $88
	sbc  b                                           ; $5341: $98
	adc  b                                           ; $5342: $88
	adc  b                                           ; $5343: $88
	sbc  b                                           ; $5344: $98
	adc  b                                           ; $5345: $88
	adc  b                                           ; $5346: $88
	adc  b                                           ; $5347: $88
	adc  b                                           ; $5348: $88
	adc  b                                           ; $5349: $88
	adc  b                                           ; $534a: $88
	adc  b                                           ; $534b: $88
	adc  b                                           ; $534c: $88
	adc  b                                           ; $534d: $88
	adc  b                                           ; $534e: $88
	adc  b                                           ; $534f: $88
	adc  b                                           ; $5350: $88
	adc  b                                           ; $5351: $88
	adc  b                                           ; $5352: $88
	adc  b                                           ; $5353: $88
	adc  b                                           ; $5354: $88
	adc  b                                           ; $5355: $88
	adc  b                                           ; $5356: $88
	adc  b                                           ; $5357: $88
	adc  b                                           ; $5358: $88
	adc  b                                           ; $5359: $88
	adc  b                                           ; $535a: $88
	adc  b                                           ; $535b: $88
	adc  b                                           ; $535c: $88
	adc  b                                           ; $535d: $88
	adc  b                                           ; $535e: $88
	adc  b                                           ; $535f: $88
	adc  b                                           ; $5360: $88
	adc  b                                           ; $5361: $88
	adc  b                                           ; $5362: $88
	adc  b                                           ; $5363: $88
	adc  b                                           ; $5364: $88
	adc  b                                           ; $5365: $88
	adc  b                                           ; $5366: $88
	adc  b                                           ; $5367: $88
	adc  b                                           ; $5368: $88
	adc  b                                           ; $5369: $88
	adc  b                                           ; $536a: $88
	adc  b                                           ; $536b: $88
	adc  b                                           ; $536c: $88
	adc  b                                           ; $536d: $88
	adc  b                                           ; $536e: $88
	adc  b                                           ; $536f: $88
	adc  b                                           ; $5370: $88
	adc  b                                           ; $5371: $88
	adc  b                                           ; $5372: $88
	adc  b                                           ; $5373: $88
	adc  b                                           ; $5374: $88
	adc  b                                           ; $5375: $88
	adc  b                                           ; $5376: $88
	adc  b                                           ; $5377: $88
	adc  b                                           ; $5378: $88
	adc  b                                           ; $5379: $88
	adc  b                                           ; $537a: $88
	adc  b                                           ; $537b: $88
	adc  b                                           ; $537c: $88
	adc  b                                           ; $537d: $88
	adc  b                                           ; $537e: $88
	adc  b                                           ; $537f: $88
	adc  b                                           ; $5380: $88
	adc  b                                           ; $5381: $88
	adc  b                                           ; $5382: $88
	adc  b                                           ; $5383: $88
	adc  b                                           ; $5384: $88
	adc  b                                           ; $5385: $88
	adc  b                                           ; $5386: $88
	adc  b                                           ; $5387: $88
	adc  b                                           ; $5388: $88
	adc  b                                           ; $5389: $88
	adc  b                                           ; $538a: $88
	adc  b                                           ; $538b: $88
	adc  b                                           ; $538c: $88
	adc  b                                           ; $538d: $88
	adc  b                                           ; $538e: $88
	adc  b                                           ; $538f: $88
	adc  b                                           ; $5390: $88
	adc  b                                           ; $5391: $88
	adc  b                                           ; $5392: $88
	adc  b                                           ; $5393: $88
	adc  b                                           ; $5394: $88
	adc  b                                           ; $5395: $88
	adc  b                                           ; $5396: $88

Jump_0d0_5397:
	adc  b                                           ; $5397: $88

Jump_0d0_5398:
	adc  b                                           ; $5398: $88
	adc  b                                           ; $5399: $88
	adc  b                                           ; $539a: $88
	adc  b                                           ; $539b: $88
	adc  b                                           ; $539c: $88
	adc  b                                           ; $539d: $88
	adc  b                                           ; $539e: $88
	adc  b                                           ; $539f: $88
	adc  b                                           ; $53a0: $88
	adc  b                                           ; $53a1: $88
	adc  b                                           ; $53a2: $88
	adc  b                                           ; $53a3: $88
	adc  b                                           ; $53a4: $88
	adc  b                                           ; $53a5: $88
	adc  b                                           ; $53a6: $88
	adc  b                                           ; $53a7: $88
	adc  b                                           ; $53a8: $88
	adc  b                                           ; $53a9: $88
	adc  b                                           ; $53aa: $88
	adc  b                                           ; $53ab: $88
	adc  b                                           ; $53ac: $88
	adc  b                                           ; $53ad: $88
	adc  b                                           ; $53ae: $88
	adc  b                                           ; $53af: $88
	adc  b                                           ; $53b0: $88
	adc  b                                           ; $53b1: $88
	adc  b                                           ; $53b2: $88
	adc  b                                           ; $53b3: $88
	adc  b                                           ; $53b4: $88
	adc  b                                           ; $53b5: $88
	adc  b                                           ; $53b6: $88
	adc  b                                           ; $53b7: $88
	adc  b                                           ; $53b8: $88
	adc  b                                           ; $53b9: $88
	adc  b                                           ; $53ba: $88
	adc  b                                           ; $53bb: $88
	adc  b                                           ; $53bc: $88
	adc  b                                           ; $53bd: $88
	adc  b                                           ; $53be: $88
	adc  b                                           ; $53bf: $88
	adc  b                                           ; $53c0: $88
	adc  b                                           ; $53c1: $88
	adc  b                                           ; $53c2: $88
	adc  b                                           ; $53c3: $88
	adc  b                                           ; $53c4: $88
	adc  b                                           ; $53c5: $88
	adc  b                                           ; $53c6: $88
	adc  b                                           ; $53c7: $88
	adc  b                                           ; $53c8: $88
	adc  b                                           ; $53c9: $88
	adc  b                                           ; $53ca: $88
	adc  b                                           ; $53cb: $88
	adc  b                                           ; $53cc: $88
	adc  b                                           ; $53cd: $88
	adc  b                                           ; $53ce: $88
	adc  b                                           ; $53cf: $88
	adc  b                                           ; $53d0: $88
	adc  b                                           ; $53d1: $88
	adc  b                                           ; $53d2: $88
	adc  b                                           ; $53d3: $88
	adc  b                                           ; $53d4: $88
	adc  b                                           ; $53d5: $88
	adc  b                                           ; $53d6: $88
	adc  b                                           ; $53d7: $88
	adc  b                                           ; $53d8: $88
	adc  b                                           ; $53d9: $88
	adc  b                                           ; $53da: $88
	adc  b                                           ; $53db: $88
	adc  b                                           ; $53dc: $88
	adc  b                                           ; $53dd: $88
	adc  b                                           ; $53de: $88
	adc  b                                           ; $53df: $88
	adc  b                                           ; $53e0: $88
	adc  b                                           ; $53e1: $88
	adc  b                                           ; $53e2: $88
	adc  b                                           ; $53e3: $88
	adc  b                                           ; $53e4: $88
	adc  b                                           ; $53e5: $88
	adc  b                                           ; $53e6: $88
	adc  b                                           ; $53e7: $88
	adc  b                                           ; $53e8: $88
	adc  b                                           ; $53e9: $88
	adc  b                                           ; $53ea: $88
	adc  b                                           ; $53eb: $88
	adc  b                                           ; $53ec: $88
	adc  b                                           ; $53ed: $88
	adc  b                                           ; $53ee: $88
	adc  b                                           ; $53ef: $88
	adc  b                                           ; $53f0: $88
	adc  b                                           ; $53f1: $88
	adc  b                                           ; $53f2: $88
	adc  b                                           ; $53f3: $88
	adc  b                                           ; $53f4: $88
	adc  b                                           ; $53f5: $88
	adc  b                                           ; $53f6: $88
	adc  b                                           ; $53f7: $88
	sbc  b                                           ; $53f8: $98
	adc  c                                           ; $53f9: $89
	sbc  b                                           ; $53fa: $98
	ld   a, e                                        ; $53fb: $7b
	sbc  b                                           ; $53fc: $98
	sbc  d                                           ; $53fd: $9a
	xor  c                                           ; $53fe: $a9
	call c, $7788                                    ; $53ff: $dc $88 $77
	adc  d                                           ; $5402: $8a
	adc  c                                           ; $5403: $89
	ld   [hl], l                                     ; $5404: $75
	ld   h, a                                        ; $5405: $67
	ld   a, c                                        ; $5406: $79
	sbc  b                                           ; $5407: $98
	xor  d                                           ; $5408: $aa
	sbc  d                                           ; $5409: $9a
	sbc  l                                           ; $540a: $9d
	reti                                             ; $540b: $d9


	ret  c                                           ; $540c: $d8

	ld   b, l                                        ; $540d: $45
	ld   h, a                                        ; $540e: $67
	ld   [hl], a                                     ; $540f: $77
	ld   a, c                                        ; $5410: $79
	add  a                                           ; $5411: $87
	ld   d, [hl]                                     ; $5412: $56
	ld   h, l                                        ; $5413: $65
	ld   h, a                                        ; $5414: $67
	add  a                                           ; $5415: $87
	ld   h, a                                        ; $5416: $67
	ld   h, h                                        ; $5417: $64
	ld   d, h                                        ; $5418: $54
	ld   e, b                                        ; $5419: $58
	ld   a, c                                        ; $541a: $79
	ld   [hl], a                                     ; $541b: $77
	ld   h, a                                        ; $541c: $67
	halt                                             ; $541d: $76
	ld   a, c                                        ; $541e: $79
	sbc  d                                           ; $541f: $9a
	halt                                             ; $5420: $76
	ld   [hl], l                                     ; $5421: $75
	ld   d, h                                        ; $5422: $54
	ld   d, [hl]                                     ; $5423: $56
	ld   d, h                                        ; $5424: $54
	ld   d, a                                        ; $5425: $57
	halt                                             ; $5426: $76
	ld   h, [hl]                                     ; $5427: $66
	ld   a, d                                        ; $5428: $7a
	adc  d                                           ; $5429: $8a
	call z, $aaba                                    ; $542a: $cc $ba $aa
	ld   a, c                                        ; $542d: $79
	add  a                                           ; $542e: $87
	add  a                                           ; $542f: $87
	ld   d, e                                        ; $5430: $53
	ld   hl, $1211                                   ; $5431: $21 $11 $12
	ld   de, $cf15                                   ; $5434: $11 $15 $cf
	rst  $38                                         ; $5437: $ff
	rst  $38                                         ; $5438: $ff
	db   $fc                                         ; $5439: $fc
	sbc  b                                           ; $543a: $98
	adc  c                                           ; $543b: $89
	cp   d                                           ; $543c: $ba
	sub  c                                           ; $543d: $91
	ld   de, $1111                                   ; $543e: $11 $11 $11
	adc  a                                           ; $5441: $8f
	rst  $38                                         ; $5442: $ff
	rst  $38                                         ; $5443: $ff
	rst  $38                                         ; $5444: $ff
	ld   [hl], c                                     ; $5445: $71
	dec  d                                           ; $5446: $15
	rst  $38                                         ; $5447: $ff
	rst  $38                                         ; $5448: $ff
	ei                                               ; $5449: $fb
	ld   de, $1111                                   ; $544a: $11 $11 $11
	inc  e                                           ; $544d: $1c
	rst  $38                                         ; $544e: $ff
	rst  $38                                         ; $544f: $ff
	rst  $38                                         ; $5450: $ff
	sub  a                                           ; $5451: $97
	add  d                                           ; $5452: $82
	ld   c, l                                        ; $5453: $4d
	rst  $38                                         ; $5454: $ff
	rst  $38                                         ; $5455: $ff
	push bc                                          ; $5456: $c5
	ld   de, $1111                                   ; $5457: $11 $11 $11
	ld   de, $ffff                                   ; $545a: $11 $ff $ff
	rst  $38                                         ; $545d: $ff
	or   [hl]                                        ; $545e: $b6
	adc  h                                           ; $545f: $8c
	db   $eb                                         ; $5460: $eb
	rst  $38                                         ; $5461: $ff
	rst  $38                                         ; $5462: $ff
	ld   h, h                                        ; $5463: $64
	ld   hl, $1111                                   ; $5464: $21 $11 $11
	ld   de, $ff1d                                   ; $5467: $11 $1d $ff
	rst  $38                                         ; $546a: $ff
	db   $fc                                         ; $546b: $fc
	or   a                                           ; $546c: $b7
	sbc  d                                           ; $546d: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $546e: $cf
	rst  $38                                         ; $546f: $ff
	ld   hl, sp+$31                                  ; $5470: $f8 $31
	ld   de, $1121                                   ; $5472: $11 $21 $11
	ld   de, $ffff                                   ; $5475: $11 $ff $ff
	rst  $38                                         ; $5478: $ff
	ld   [hl], l                                     ; $5479: $75
	ld   h, a                                        ; $547a: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $547b: $cf
	rst  $38                                         ; $547c: $ff
	cp   $51                                         ; $547d: $fe $51
	ld   de, $3147                                   ; $547f: $11 $47 $31
	ld   de, rAUD1LOW                                   ; $5482: $11 $13 $ff
	rst  $38                                         ; $5485: $ff
	rst  $38                                         ; $5486: $ff
	sbc  c                                           ; $5487: $99
	jp   z, $ffae                                    ; $5488: $ca $ae $ff

	ld   sp, hl                                      ; $548b: $f9
	ld   de, $8226                                   ; $548c: $11 $26 $82
	ld   de, $1a11                                   ; $548f: $11 $11 $1a
	rst  $38                                         ; $5492: $ff
	rst  $38                                         ; $5493: $ff
	ei                                               ; $5494: $fb
	ld   l, c                                        ; $5495: $69
	call $ffef                                       ; $5496: $cd $ef $ff
	jp   nc, $4811                                   ; $5499: $d2 $11 $48

	add  $11                                         ; $549c: $c6 $11
	ld   de, $ff1f                                   ; $549e: $11 $1f $ff
	rst  $38                                         ; $54a1: $ff
	or   $3d                                         ; $54a2: $f6 $3d
	rst  $38                                         ; $54a4: $ff
	rst  $38                                         ; $54a5: $ff
	rst  $38                                         ; $54a6: $ff
	ld   h, c                                        ; $54a7: $61
	inc  de                                          ; $54a8: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54a9: $cf
	push af                                          ; $54aa: $f5
	ld   de, $1f11                                   ; $54ab: $11 $11 $1f
	rst  $38                                         ; $54ae: $ff
	rst  $38                                         ; $54af: $ff
	jp   nc, $ff3c                                   ; $54b0: $d2 $3c $ff

	rst  $38                                         ; $54b3: $ff
	db   $fd                                         ; $54b4: $fd
	ld   sp, $ef15                                   ; $54b5: $31 $15 $ef
	ld   hl, sp+$11                                  ; $54b8: $f8 $11
	ld   de, $ff1f                                   ; $54ba: $11 $1f $ff
	cp   $f7                                         ; $54bd: $fe $f7
	rra                                              ; $54bf: $1f
	rst  $38                                         ; $54c0: $ff
	ld   [$81ff], a                                  ; $54c1: $ea $ff $81
	add  hl, hl                                      ; $54c4: $29
	db   $db                                         ; $54c5: $db
	db   $ec                                         ; $54c6: $ec
	ld   de, $1111                                   ; $54c7: $11 $11 $11
	rst  $38                                         ; $54ca: $ff
	rst  $30                                         ; $54cb: $f7
	adc  l                                           ; $54cc: $8d
	dec  sp                                          ; $54cd: $3b
	rst  $38                                         ; $54ce: $ff
	ld   sp, hl                                      ; $54cf: $f9
	sbc  h                                           ; $54d0: $9c
	or   [hl]                                        ; $54d1: $b6
	ld   h, [hl]                                     ; $54d2: $66
	cp   l                                           ; $54d3: $bd
	jp   c, $1121                                    ; $54d4: $da $21 $11

	ld   de, $fb1f                                   ; $54d7: $11 $1f $fb
	sbc  c                                           ; $54da: $99
	rst  $10                                         ; $54db: $d7
	sbc  a                                           ; $54dc: $9f
	rst  $38                                         ; $54dd: $ff
	ld   h, a                                        ; $54de: $67
	db   $ed                                         ; $54df: $ed
	add  [hl]                                        ; $54e0: $86
	ld   e, d                                        ; $54e1: $5a
	call z, $11e5                                    ; $54e2: $cc $e5 $11
	ld   de, rAUD1ENV                                   ; $54e5: $11 $12 $ff
	add  e                                           ; $54e8: $83
	rst  $38                                         ; $54e9: $ff
	ld   [hl], a                                     ; $54ea: $77
	rst  $38                                         ; $54eb: $ff
	push bc                                          ; $54ec: $c5
	ld   a, a                                        ; $54ed: $7f
	push hl                                          ; $54ee: $e5
	inc  d                                           ; $54ef: $14
	rst  $38                                         ; $54f0: $ff
	call z, $1151                                    ; $54f1: $cc $51 $11
	ld   de, $ff1f                                   ; $54f4: $11 $1f $ff
	adc  b                                           ; $54f7: $88
	ld   a, [$ff7f]                                  ; $54f8: $fa $7f $ff
	reti                                             ; $54fb: $d9


	cp   h                                           ; $54fc: $bc
	ld   [hl], d                                     ; $54fd: $72
	ld   c, [hl]                                     ; $54fe: $4e
	rst  $38                                         ; $54ff: $ff
	add  sp, $11                                     ; $5500: $e8 $11
	ld   de, $af11                                   ; $5502: $11 $11 $af
	ld   [$fd7f], a                                  ; $5505: $ea $7f $fd
	rst  $38                                         ; $5508: $ff
	or   $ad                                         ; $5509: $f6 $ad
	ei                                               ; $550b: $fb
	ld   h, [hl]                                     ; $550c: $66
	sbc  a                                           ; $550d: $9f
	call c, $11a7                                    ; $550e: $dc $a7 $11
	ld   de, $5f11                                   ; $5511: $11 $11 $5f
	ld   sp, hl                                      ; $5514: $f9
	adc  a                                           ; $5515: $8f
	ei                                               ; $5516: $fb
	rst  $38                                         ; $5517: $ff
	cp   $cb                                         ; $5518: $fe $cb
	db   $ec                                         ; $551a: $ec
	ld   h, e                                        ; $551b: $63
	ld   l, e                                        ; $551c: $6b
	db   $dd                                         ; $551d: $dd
	push bc                                          ; $551e: $c5
	ld   de, $1111                                   ; $551f: $11 $11 $11
	xor  a                                           ; $5522: $af
	and  h                                           ; $5523: $a4
	cp   a                                           ; $5524: $bf
	add  $ff                                         ; $5525: $c6 $ff
	ld   a, [$f96e]                                  ; $5527: $fa $6e $f9
	ld   [hl+], a                                    ; $552a: $22
	sbc  a                                           ; $552b: $9f
	set  1, b                                        ; $552c: $cb $c8
	ld   de, $1111                                   ; $552e: $11 $11 $11
	dec  e                                           ; $5531: $1d
	ld   sp, hl                                      ; $5532: $f9
	ld   e, a                                        ; $5533: $5f
	rst  $38                                         ; $5534: $ff
	rst  JumpTable                                         ; $5535: $df
	db   $fc                                         ; $5536: $fc
	jp   hl                                          ; $5537: $e9


	call c, $4a73                                    ; $5538: $dc $73 $4a
	rst  $38                                         ; $553b: $ff
	reti                                             ; $553c: $d9


	ld   hl, $1111                                   ; $553d: $21 $11 $11
	ld   de, $7bb8                                   ; $5540: $11 $b8 $7b
	rst  $28                                         ; $5543: $ef
	ei                                               ; $5544: $fb
	rst  $38                                         ; $5545: $ff
	xor  d                                           ; $5546: $aa
	ld   a, a                                        ; $5547: $7f
	rst  $10                                         ; $5548: $d7
	ld   d, [hl]                                     ; $5549: $56
	cp   e                                           ; $554a: $bb
	xor  e                                           ; $554b: $ab
	cp   b                                           ; $554c: $b8
	ld   d, c                                        ; $554d: $51
	ld   de, $1511                                   ; $554e: $11 $11 $15
	xor  b                                           ; $5551: $a8
	xor  c                                           ; $5552: $a9
	rst  $38                                         ; $5553: $ff
	rst  $38                                         ; $5554: $ff
	or   a                                           ; $5555: $b7
	call z, $99dd                                    ; $5556: $cc $dd $99
	ld   d, [hl]                                     ; $5559: $56
	xor  e                                           ; $555a: $ab
	ei                                               ; $555b: $fb
	ld   a, c                                        ; $555c: $79
	ld   [hl], h                                     ; $555d: $74
	ld   de, $1111                                   ; $555e: $11 $11 $11
	ld   e, d                                        ; $5561: $5a
	ld   [hl], l                                     ; $5562: $75
	rst  $28                                         ; $5563: $ef
	rst  $28                                         ; $5564: $ef
	db   $fd                                         ; $5565: $fd
	ret                                              ; $5566: $c9


	sbc  h                                           ; $5567: $9c
	db   $db                                         ; $5568: $db
	ld   [hl], a                                     ; $5569: $77
	cp   h                                           ; $556a: $bc
	xor  c                                           ; $556b: $a9
	sbc  e                                           ; $556c: $9b
	xor  b                                           ; $556d: $a8
	ld   b, d                                        ; $556e: $42
	ld   de, $1511                                   ; $556f: $11 $11 $15
	ld   h, e                                        ; $5572: $63
	ld   e, h                                        ; $5573: $5c
	db   $fd                                         ; $5574: $fd
	sbc  $fa                                         ; $5575: $de $fa
	adc  c                                           ; $5577: $89
	xor  l                                           ; $5578: $ad
	cp   c                                           ; $5579: $b9
	xor  d                                           ; $557a: $aa
	xor  c                                           ; $557b: $a9
	adc  e                                           ; $557c: $8b
	xor  b                                           ; $557d: $a8
	adc  c                                           ; $557e: $89
	add  [hl]                                        ; $557f: $86
	ld   hl, $6513                                   ; $5580: $21 $13 $65
	dec  [hl]                                        ; $5583: $35
	ld   [hl], a                                     ; $5584: $77
	ld   [hl], a                                     ; $5585: $77
	xor  e                                           ; $5586: $ab
	xor  c                                           ; $5587: $a9
	sbc  d                                           ; $5588: $9a
	xor  d                                           ; $5589: $aa
	sbc  e                                           ; $558a: $9b
	cp   e                                           ; $558b: $bb
	cp   d                                           ; $558c: $ba
	xor  b                                           ; $558d: $a8
	ld   [hl], a                                     ; $558e: $77
	ld   l, b                                        ; $558f: $68
	xor  b                                           ; $5590: $a8
	sub  a                                           ; $5591: $97
	ld   h, a                                        ; $5592: $67
	ld   a, c                                        ; $5593: $79
	add  [hl]                                        ; $5594: $86
	halt                                             ; $5595: $76
	ld   d, [hl]                                     ; $5596: $56
	ld   h, a                                        ; $5597: $67
	ld   a, b                                        ; $5598: $78
	sbc  c                                           ; $5599: $99
	sbc  d                                           ; $559a: $9a
	sbc  b                                           ; $559b: $98
	sbc  d                                           ; $559c: $9a
	add  [hl]                                        ; $559d: $86
	ld   h, [hl]                                     ; $559e: $66
	sbc  c                                           ; $559f: $99
	ld   h, [hl]                                     ; $55a0: $66
	sbc  d                                           ; $55a1: $9a
	jp   z, $9a9a                                    ; $55a2: $ca $9a $9a

	sbc  b                                           ; $55a5: $98
	xor  b                                           ; $55a6: $a8
	ld   h, [hl]                                     ; $55a7: $66
	ld   a, b                                        ; $55a8: $78
	adc  b                                           ; $55a9: $88
	sbc  d                                           ; $55aa: $9a
	xor  b                                           ; $55ab: $a8
	adc  c                                           ; $55ac: $89
	sub  a                                           ; $55ad: $97
	add  a                                           ; $55ae: $87
	add  a                                           ; $55af: $87
	halt                                             ; $55b0: $76
	ld   [hl], a                                     ; $55b1: $77
	ld   a, b                                        ; $55b2: $78
	adc  b                                           ; $55b3: $88
	halt                                             ; $55b4: $76
	ld   a, e                                        ; $55b5: $7b
	jp   hl                                          ; $55b6: $e9


	ld   d, [hl]                                     ; $55b7: $56
	cp   l                                           ; $55b8: $bd
	sub  [hl]                                        ; $55b9: $96
	adc  e                                           ; $55ba: $8b
	and  [hl]                                        ; $55bb: $a6
	ld   e, b                                        ; $55bc: $58
	xor  c                                           ; $55bd: $a9
	ld   h, a                                        ; $55be: $67
	xor  c                                           ; $55bf: $a9
	ld   [hl], a                                     ; $55c0: $77
	adc  b                                           ; $55c1: $88
	ld   [hl], a                                     ; $55c2: $77
	adc  c                                           ; $55c3: $89
	add  a                                           ; $55c4: $87
	ld   a, b                                        ; $55c5: $78
	ld   [hl], a                                     ; $55c6: $77
	adc  c                                           ; $55c7: $89
	adc  b                                           ; $55c8: $88
	adc  b                                           ; $55c9: $88
	xor  c                                           ; $55ca: $a9
	sbc  c                                           ; $55cb: $99
	sub  a                                           ; $55cc: $97
	ld   a, b                                        ; $55cd: $78
	xor  d                                           ; $55ce: $aa
	add  [hl]                                        ; $55cf: $86
	ld   a, b                                        ; $55d0: $78
	add  a                                           ; $55d1: $87
	adc  c                                           ; $55d2: $89
	xor  b                                           ; $55d3: $a8
	ld   a, b                                        ; $55d4: $78
	add  a                                           ; $55d5: $87
	ld   a, b                                        ; $55d6: $78
	sub  a                                           ; $55d7: $97
	ld   h, a                                        ; $55d8: $67
	sbc  c                                           ; $55d9: $99
	add  a                                           ; $55da: $87
	adc  c                                           ; $55db: $89
	adc  b                                           ; $55dc: $88
	adc  b                                           ; $55dd: $88
	sbc  b                                           ; $55de: $98
	ld   [hl], a                                     ; $55df: $77
	adc  b                                           ; $55e0: $88
	sbc  b                                           ; $55e1: $98
	adc  b                                           ; $55e2: $88
	sbc  c                                           ; $55e3: $99
	add  a                                           ; $55e4: $87
	adc  b                                           ; $55e5: $88
	add  a                                           ; $55e6: $87
	ld   a, c                                        ; $55e7: $79
	add  a                                           ; $55e8: $87
	ld   a, b                                        ; $55e9: $78
	adc  b                                           ; $55ea: $88
	ld   [hl], a                                     ; $55eb: $77
	adc  b                                           ; $55ec: $88
	ld   [hl], a                                     ; $55ed: $77
	ld   [hl], a                                     ; $55ee: $77
	ld   [hl], a                                     ; $55ef: $77
	ld   a, b                                        ; $55f0: $78
	adc  b                                           ; $55f1: $88
	adc  b                                           ; $55f2: $88
	sbc  b                                           ; $55f3: $98
	adc  b                                           ; $55f4: $88
	adc  c                                           ; $55f5: $89
	sbc  b                                           ; $55f6: $98
	adc  b                                           ; $55f7: $88
	adc  b                                           ; $55f8: $88
	adc  b                                           ; $55f9: $88
	adc  b                                           ; $55fa: $88
	add  a                                           ; $55fb: $87
	ld   [hl], a                                     ; $55fc: $77
	ld   [hl], a                                     ; $55fd: $77
	ld   [hl], a                                     ; $55fe: $77
	ld   a, b                                        ; $55ff: $78
	adc  b                                           ; $5600: $88
	adc  b                                           ; $5601: $88
	adc  b                                           ; $5602: $88
	adc  b                                           ; $5603: $88
	adc  b                                           ; $5604: $88
	adc  b                                           ; $5605: $88
	adc  b                                           ; $5606: $88
	adc  b                                           ; $5607: $88
	adc  b                                           ; $5608: $88
	sbc  c                                           ; $5609: $99
	sbc  b                                           ; $560a: $98
	adc  b                                           ; $560b: $88
	add  a                                           ; $560c: $87
	ld   [hl], a                                     ; $560d: $77
	adc  b                                           ; $560e: $88
	adc  b                                           ; $560f: $88
	adc  b                                           ; $5610: $88
	adc  b                                           ; $5611: $88
	adc  b                                           ; $5612: $88
	adc  b                                           ; $5613: $88
	adc  b                                           ; $5614: $88
	ld   [hl], a                                     ; $5615: $77
	adc  b                                           ; $5616: $88
	adc  b                                           ; $5617: $88
	adc  c                                           ; $5618: $89
	sbc  b                                           ; $5619: $98
	adc  b                                           ; $561a: $88
	adc  b                                           ; $561b: $88
	ld   a, b                                        ; $561c: $78
	adc  b                                           ; $561d: $88
	adc  b                                           ; $561e: $88
	adc  b                                           ; $561f: $88
	adc  b                                           ; $5620: $88
	adc  b                                           ; $5621: $88
	adc  b                                           ; $5622: $88
	adc  b                                           ; $5623: $88
	adc  b                                           ; $5624: $88
	adc  b                                           ; $5625: $88
	adc  b                                           ; $5626: $88
	adc  b                                           ; $5627: $88
	adc  b                                           ; $5628: $88
	adc  b                                           ; $5629: $88
	adc  b                                           ; $562a: $88
	adc  b                                           ; $562b: $88
	adc  b                                           ; $562c: $88
	adc  b                                           ; $562d: $88
	adc  b                                           ; $562e: $88
	adc  b                                           ; $562f: $88
	adc  b                                           ; $5630: $88
	adc  b                                           ; $5631: $88
	adc  b                                           ; $5632: $88
	adc  b                                           ; $5633: $88
	adc  b                                           ; $5634: $88
	adc  b                                           ; $5635: $88
	adc  b                                           ; $5636: $88
	adc  b                                           ; $5637: $88
	adc  b                                           ; $5638: $88
	adc  b                                           ; $5639: $88
	adc  b                                           ; $563a: $88
	adc  b                                           ; $563b: $88
	adc  b                                           ; $563c: $88
	adc  b                                           ; $563d: $88
	adc  b                                           ; $563e: $88
	adc  b                                           ; $563f: $88
	adc  b                                           ; $5640: $88
	adc  b                                           ; $5641: $88
	adc  b                                           ; $5642: $88
	adc  b                                           ; $5643: $88
	adc  b                                           ; $5644: $88
	adc  b                                           ; $5645: $88
	adc  b                                           ; $5646: $88
	adc  b                                           ; $5647: $88
	adc  b                                           ; $5648: $88
	adc  b                                           ; $5649: $88
	adc  b                                           ; $564a: $88
	adc  b                                           ; $564b: $88
	adc  b                                           ; $564c: $88
	adc  b                                           ; $564d: $88
	adc  b                                           ; $564e: $88
	adc  b                                           ; $564f: $88
	adc  b                                           ; $5650: $88
	adc  b                                           ; $5651: $88
	adc  b                                           ; $5652: $88
	adc  b                                           ; $5653: $88
	adc  b                                           ; $5654: $88
	adc  b                                           ; $5655: $88
	adc  b                                           ; $5656: $88
	adc  b                                           ; $5657: $88
	adc  b                                           ; $5658: $88
	adc  b                                           ; $5659: $88
	adc  b                                           ; $565a: $88
	adc  b                                           ; $565b: $88
	adc  b                                           ; $565c: $88
	adc  b                                           ; $565d: $88
	adc  b                                           ; $565e: $88
	adc  b                                           ; $565f: $88
	adc  b                                           ; $5660: $88
	adc  b                                           ; $5661: $88
	adc  b                                           ; $5662: $88
	adc  b                                           ; $5663: $88
	adc  b                                           ; $5664: $88
	adc  b                                           ; $5665: $88
	adc  b                                           ; $5666: $88
	adc  b                                           ; $5667: $88
	adc  b                                           ; $5668: $88
	adc  b                                           ; $5669: $88
	adc  b                                           ; $566a: $88
	adc  b                                           ; $566b: $88
	adc  b                                           ; $566c: $88
	adc  b                                           ; $566d: $88
	adc  b                                           ; $566e: $88
	adc  b                                           ; $566f: $88
	adc  b                                           ; $5670: $88
	adc  b                                           ; $5671: $88
	adc  b                                           ; $5672: $88
	adc  b                                           ; $5673: $88
	adc  b                                           ; $5674: $88
	adc  b                                           ; $5675: $88
	adc  b                                           ; $5676: $88
	adc  b                                           ; $5677: $88
	adc  b                                           ; $5678: $88
	adc  b                                           ; $5679: $88
	adc  b                                           ; $567a: $88
	adc  b                                           ; $567b: $88
	adc  b                                           ; $567c: $88
	adc  b                                           ; $567d: $88
	adc  b                                           ; $567e: $88
	adc  b                                           ; $567f: $88
	adc  b                                           ; $5680: $88
	adc  b                                           ; $5681: $88
	adc  b                                           ; $5682: $88
	adc  b                                           ; $5683: $88
	adc  b                                           ; $5684: $88
	adc  b                                           ; $5685: $88
	adc  b                                           ; $5686: $88
	adc  b                                           ; $5687: $88
	adc  b                                           ; $5688: $88
	adc  b                                           ; $5689: $88
	adc  b                                           ; $568a: $88
	adc  b                                           ; $568b: $88
	adc  b                                           ; $568c: $88
	adc  b                                           ; $568d: $88
	adc  b                                           ; $568e: $88
	adc  b                                           ; $568f: $88
	adc  b                                           ; $5690: $88
	adc  b                                           ; $5691: $88
	adc  b                                           ; $5692: $88
	adc  b                                           ; $5693: $88
	adc  b                                           ; $5694: $88
	adc  b                                           ; $5695: $88
	adc  b                                           ; $5696: $88
	adc  b                                           ; $5697: $88
	adc  b                                           ; $5698: $88
	adc  b                                           ; $5699: $88
	adc  b                                           ; $569a: $88
	adc  b                                           ; $569b: $88
	adc  b                                           ; $569c: $88
	adc  b                                           ; $569d: $88
	adc  b                                           ; $569e: $88
	adc  b                                           ; $569f: $88
	adc  b                                           ; $56a0: $88
	adc  b                                           ; $56a1: $88
	adc  b                                           ; $56a2: $88
	adc  b                                           ; $56a3: $88
	adc  b                                           ; $56a4: $88
	adc  b                                           ; $56a5: $88
	adc  b                                           ; $56a6: $88
	adc  b                                           ; $56a7: $88
	adc  b                                           ; $56a8: $88
	adc  b                                           ; $56a9: $88
	adc  b                                           ; $56aa: $88
	adc  b                                           ; $56ab: $88
	adc  b                                           ; $56ac: $88
	adc  b                                           ; $56ad: $88
	adc  b                                           ; $56ae: $88
	adc  b                                           ; $56af: $88
	adc  b                                           ; $56b0: $88
	adc  b                                           ; $56b1: $88
	adc  b                                           ; $56b2: $88
	adc  b                                           ; $56b3: $88
	adc  b                                           ; $56b4: $88
	adc  b                                           ; $56b5: $88
	adc  b                                           ; $56b6: $88
	adc  b                                           ; $56b7: $88
	adc  b                                           ; $56b8: $88
	adc  b                                           ; $56b9: $88
	adc  b                                           ; $56ba: $88
	adc  b                                           ; $56bb: $88
	adc  b                                           ; $56bc: $88
	adc  b                                           ; $56bd: $88
	adc  b                                           ; $56be: $88
	adc  b                                           ; $56bf: $88
	adc  b                                           ; $56c0: $88
	adc  b                                           ; $56c1: $88
	adc  b                                           ; $56c2: $88
	adc  b                                           ; $56c3: $88
	adc  b                                           ; $56c4: $88
	adc  b                                           ; $56c5: $88
	adc  b                                           ; $56c6: $88
	adc  b                                           ; $56c7: $88
	adc  b                                           ; $56c8: $88
	adc  b                                           ; $56c9: $88
	adc  b                                           ; $56ca: $88
	adc  b                                           ; $56cb: $88
	adc  b                                           ; $56cc: $88
	adc  b                                           ; $56cd: $88
	adc  b                                           ; $56ce: $88
	adc  b                                           ; $56cf: $88
	adc  b                                           ; $56d0: $88
	adc  b                                           ; $56d1: $88
	adc  b                                           ; $56d2: $88
	adc  b                                           ; $56d3: $88
	adc  b                                           ; $56d4: $88
	adc  b                                           ; $56d5: $88
	adc  b                                           ; $56d6: $88
	adc  b                                           ; $56d7: $88
	adc  b                                           ; $56d8: $88
	adc  b                                           ; $56d9: $88
	adc  b                                           ; $56da: $88
	adc  b                                           ; $56db: $88
	adc  b                                           ; $56dc: $88
	adc  b                                           ; $56dd: $88
	adc  b                                           ; $56de: $88
	adc  b                                           ; $56df: $88
	adc  b                                           ; $56e0: $88
	adc  b                                           ; $56e1: $88
	adc  b                                           ; $56e2: $88
	adc  b                                           ; $56e3: $88
	adc  b                                           ; $56e4: $88
	adc  b                                           ; $56e5: $88
	adc  b                                           ; $56e6: $88
	adc  b                                           ; $56e7: $88
	adc  b                                           ; $56e8: $88
	adc  b                                           ; $56e9: $88
	adc  b                                           ; $56ea: $88
	adc  b                                           ; $56eb: $88
	adc  b                                           ; $56ec: $88
	adc  b                                           ; $56ed: $88
	adc  b                                           ; $56ee: $88
	adc  b                                           ; $56ef: $88
	adc  b                                           ; $56f0: $88
	adc  b                                           ; $56f1: $88
	adc  b                                           ; $56f2: $88
	adc  b                                           ; $56f3: $88
	adc  b                                           ; $56f4: $88
	adc  b                                           ; $56f5: $88
	adc  b                                           ; $56f6: $88
	adc  b                                           ; $56f7: $88
	adc  b                                           ; $56f8: $88
	adc  b                                           ; $56f9: $88
	adc  b                                           ; $56fa: $88
	adc  b                                           ; $56fb: $88
	adc  b                                           ; $56fc: $88
	adc  b                                           ; $56fd: $88
	adc  b                                           ; $56fe: $88

Call_0d0_56ff:
	adc  b                                           ; $56ff: $88
	adc  b                                           ; $5700: $88
	adc  b                                           ; $5701: $88
	adc  b                                           ; $5702: $88
	adc  b                                           ; $5703: $88
	adc  b                                           ; $5704: $88
	adc  b                                           ; $5705: $88
	adc  b                                           ; $5706: $88
	adc  b                                           ; $5707: $88
	adc  b                                           ; $5708: $88
	adc  b                                           ; $5709: $88
	adc  b                                           ; $570a: $88
	adc  b                                           ; $570b: $88
	adc  b                                           ; $570c: $88
	adc  b                                           ; $570d: $88
	adc  b                                           ; $570e: $88
	adc  b                                           ; $570f: $88
	adc  b                                           ; $5710: $88
	adc  b                                           ; $5711: $88
	adc  b                                           ; $5712: $88
	adc  b                                           ; $5713: $88
	adc  b                                           ; $5714: $88
	adc  b                                           ; $5715: $88
	adc  b                                           ; $5716: $88
	adc  b                                           ; $5717: $88
	adc  b                                           ; $5718: $88
	adc  b                                           ; $5719: $88
	adc  b                                           ; $571a: $88
	adc  b                                           ; $571b: $88
	adc  b                                           ; $571c: $88
	adc  b                                           ; $571d: $88
	adc  b                                           ; $571e: $88
	adc  b                                           ; $571f: $88
	adc  b                                           ; $5720: $88
	adc  b                                           ; $5721: $88
	adc  b                                           ; $5722: $88
	adc  b                                           ; $5723: $88
	adc  b                                           ; $5724: $88
	adc  b                                           ; $5725: $88
	adc  b                                           ; $5726: $88
	adc  b                                           ; $5727: $88
	adc  b                                           ; $5728: $88
	adc  b                                           ; $5729: $88
	adc  b                                           ; $572a: $88
	adc  c                                           ; $572b: $89
	sbc  b                                           ; $572c: $98
	adc  c                                           ; $572d: $89
	sbc  c                                           ; $572e: $99
	sbc  c                                           ; $572f: $99
	sbc  c                                           ; $5730: $99
	ld   [hl], l                                     ; $5731: $75
	xor  l                                           ; $5732: $ad
	ld   [hl], e                                     ; $5733: $73
	ld   l, d                                        ; $5734: $6a
	and  a                                           ; $5735: $a7
	adc  d                                           ; $5736: $8a
	and  a                                           ; $5737: $a7
	adc  a                                           ; $5738: $8f
	rst  $30                                         ; $5739: $f7
	dec  h                                           ; $573a: $25
	xor  l                                           ; $573b: $ad
	and  h                                           ; $573c: $a4
	ld   b, a                                        ; $573d: $47
	xor  b                                           ; $573e: $a8
	ld   d, [hl]                                     ; $573f: $56
	sbc  c                                           ; $5740: $99
	adc  b                                           ; $5741: $88
	sbc  d                                           ; $5742: $9a
	ld   [hl], l                                     ; $5743: $75
	ld   d, a                                        ; $5744: $57
	sbc  b                                           ; $5745: $98
	ld   [hl], a                                     ; $5746: $77
	ld   [hl], a                                     ; $5747: $77
	ld   h, l                                        ; $5748: $65
	ld   a, c                                        ; $5749: $79
	sub  a                                           ; $574a: $97
	ld   a, b                                        ; $574b: $78
	sub  a                                           ; $574c: $97
	ld   [hl], a                                     ; $574d: $77
	xor  e                                           ; $574e: $ab
	add  l                                           ; $574f: $85
	ld   l, e                                        ; $5750: $6b
	rst  ToBoot                                         ; $5751: $c7
	ld   b, [hl]                                     ; $5752: $46
	xor  e                                           ; $5753: $ab
	add  [hl]                                        ; $5754: $86
	xor  h                                           ; $5755: $ac
	ld   [hl], h                                     ; $5756: $74
	ld   a, h                                        ; $5757: $7c
	or   e                                           ; $5758: $b3
	scf                                              ; $5759: $37
	sbc  c                                           ; $575a: $99
	ld   [hl], a                                     ; $575b: $77
	sbc  b                                           ; $575c: $98
	ld   h, a                                        ; $575d: $67
	cp   h                                           ; $575e: $bc
	add  [hl]                                        ; $575f: $86
	ld   a, c                                        ; $5760: $79
	halt                                             ; $5761: $76
	ld   h, [hl]                                     ; $5762: $66
	ld   h, l                                        ; $5763: $65
	ld   d, a                                        ; $5764: $57
	ld   [hl], a                                     ; $5765: $77
	ld   h, [hl]                                     ; $5766: $66
	ld   a, b                                        ; $5767: $78
	ld   [hl], a                                     ; $5768: $77
	halt                                             ; $5769: $76
	ld   d, l                                        ; $576a: $55
	ld   h, a                                        ; $576b: $67
	ld   h, l                                        ; $576c: $65
	ld   d, [hl]                                     ; $576d: $56
	ld   h, [hl]                                     ; $576e: $66
	ld   h, a                                        ; $576f: $67
	sbc  c                                           ; $5770: $99
	sbc  h                                           ; $5771: $9c
	ret  z                                           ; $5772: $c8

	ld   [hl], a                                     ; $5773: $77
	adc  d                                           ; $5774: $8a
	add  [hl]                                        ; $5775: $86
	ld   a, d                                        ; $5776: $7a
	ld   [hl], l                                     ; $5777: $75
	ld   l, c                                        ; $5778: $69
	cp   d                                           ; $5779: $ba
	xor  d                                           ; $577a: $aa
	sbc  d                                           ; $577b: $9a
	sub  a                                           ; $577c: $97
	adc  c                                           ; $577d: $89
	halt                                             ; $577e: $76
	ld   a, b                                        ; $577f: $78
	sbc  b                                           ; $5780: $98
	ld   h, [hl]                                     ; $5781: $66
	sbc  c                                           ; $5782: $99
	adc  b                                           ; $5783: $88
	adc  c                                           ; $5784: $89
	sub  [hl]                                        ; $5785: $96
	ld   h, a                                        ; $5786: $67
	sbc  b                                           ; $5787: $98
	ld   [hl], a                                     ; $5788: $77
	adc  b                                           ; $5789: $88
	add  a                                           ; $578a: $87
	adc  b                                           ; $578b: $88
	sbc  c                                           ; $578c: $99
	adc  b                                           ; $578d: $88
	sbc  c                                           ; $578e: $99
	adc  b                                           ; $578f: $88
	ld   [hl], a                                     ; $5790: $77
	ld   a, b                                        ; $5791: $78
	adc  c                                           ; $5792: $89
	sub  [hl]                                        ; $5793: $96
	ld   l, b                                        ; $5794: $68
	xor  b                                           ; $5795: $a8
	halt                                             ; $5796: $76
	halt                                             ; $5797: $76
	ld   h, a                                        ; $5798: $67
	adc  c                                           ; $5799: $89
	ld   [hl], l                                     ; $579a: $75
	ld   l, c                                        ; $579b: $69
	sub  a                                           ; $579c: $97
	ld   h, [hl]                                     ; $579d: $66
	ld   d, [hl]                                     ; $579e: $56
	ld   h, [hl]                                     ; $579f: $66
	ld   a, b                                        ; $57a0: $78
	adc  b                                           ; $57a1: $88
	adc  c                                           ; $57a2: $89
	xor  c                                           ; $57a3: $a9
	sbc  d                                           ; $57a4: $9a
	xor  e                                           ; $57a5: $ab
	sbc  b                                           ; $57a6: $98
	sbc  e                                           ; $57a7: $9b
	cp   e                                           ; $57a8: $bb
	xor  c                                           ; $57a9: $a9
	sbc  d                                           ; $57aa: $9a
	xor  h                                           ; $57ab: $ac
	res  2, a                                        ; $57ac: $cb $97
	adc  c                                           ; $57ae: $89
	xor  c                                           ; $57af: $a9
	ld   [hl], a                                     ; $57b0: $77
	add  a                                           ; $57b1: $87
	ld   h, [hl]                                     ; $57b2: $66
	ld   h, l                                        ; $57b3: $65
	ld   h, [hl]                                     ; $57b4: $66
	ld   h, l                                        ; $57b5: $65
	inc  [hl]                                        ; $57b6: $34
	ld   d, [hl]                                     ; $57b7: $56
	ld   d, l                                        ; $57b8: $55
	ld   b, l                                        ; $57b9: $45
	ld   d, [hl]                                     ; $57ba: $56
	cp   h                                           ; $57bb: $bc
	xor  c                                           ; $57bc: $a9
	xor  h                                           ; $57bd: $ac
	cp   d                                           ; $57be: $ba
	xor  d                                           ; $57bf: $aa
	cp   e                                           ; $57c0: $bb
	xor  h                                           ; $57c1: $ac
	call c, $9bba                                    ; $57c2: $dc $ba $9b
	cp   e                                           ; $57c5: $bb
	cp   e                                           ; $57c6: $bb
	sbc  b                                           ; $57c7: $98
	ld   h, a                                        ; $57c8: $67
	add  a                                           ; $57c9: $87
	ld   h, l                                        ; $57ca: $65
	ld   h, [hl]                                     ; $57cb: $66
	ld   h, [hl]                                     ; $57cc: $66
	ld   b, e                                        ; $57cd: $43
	ld   b, l                                        ; $57ce: $45
	ld   d, e                                        ; $57cf: $53
	inc  h                                           ; $57d0: $24
	ld   h, a                                        ; $57d1: $67
	adc  b                                           ; $57d2: $88
	ld   [hl], a                                     ; $57d3: $77
	ld   a, c                                        ; $57d4: $79
	cp   h                                           ; $57d5: $bc
	cp   d                                           ; $57d6: $ba
	jp   z, $adbb                                    ; $57d7: $ca $bb $ad

	ld   [$b9ce], a                                  ; $57da: $ea $ce $b9
	ld   [hl], a                                     ; $57dd: $77
	cp   e                                           ; $57de: $bb
	xor  d                                           ; $57df: $aa
	sub  a                                           ; $57e0: $97
	halt                                             ; $57e1: $76
	ld   h, [hl]                                     ; $57e2: $66
	ld   [hl], a                                     ; $57e3: $77
	ld   h, [hl]                                     ; $57e4: $66
	ld   d, e                                        ; $57e5: $53
	inc  [hl]                                        ; $57e6: $34
	ld   h, l                                        ; $57e7: $65
	ld   de, $6a24                                   ; $57e8: $11 $24 $6a
	or   [hl]                                        ; $57eb: $b6
	ld   e, b                                        ; $57ec: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57ed: $cf
	jp   $dd8e                                       ; $57ee: $c3 $8e $dd


	xor  e                                           ; $57f1: $ab
	res  5, h                                        ; $57f2: $cb $ac
	rst  $28                                         ; $57f4: $ef
	cp   b                                           ; $57f5: $b8
	add  a                                           ; $57f6: $87
	xor  d                                           ; $57f7: $aa
	sbc  c                                           ; $57f8: $99
	halt                                             ; $57f9: $76
	halt                                             ; $57fa: $76
	ld   d, l                                        ; $57fb: $55
	ld   d, [hl]                                     ; $57fc: $56
	ld   h, [hl]                                     ; $57fd: $66
	ld   b, d                                        ; $57fe: $42
	ld   [hl+], a                                    ; $57ff: $22
	inc  h                                           ; $5800: $24
	ld   b, c                                        ; $5801: $41
	ld   e, c                                        ; $5802: $59
	ld   h, l                                        ; $5803: $65
	ld   a, d                                        ; $5804: $7a
	rst  ToBoot                                         ; $5805: $c7
	sbc  h                                           ; $5806: $9c
	sbc  c                                           ; $5807: $99
	set  1, l                                        ; $5808: $cb $cd
	xor  e                                           ; $580a: $ab
	rst  $38                                         ; $580b: $ff
	call z, $bba9                                    ; $580c: $cc $a9 $bb
	adc  c                                           ; $580f: $89
	sbc  c                                           ; $5810: $99
	sbc  d                                           ; $5811: $9a
	halt                                             ; $5812: $76
	ld   a, b                                        ; $5813: $78
	add  a                                           ; $5814: $87
	ld   [hl-], a                                    ; $5815: $32
	ld   b, h                                        ; $5816: $44
	ld   d, h                                        ; $5817: $54
	ld   de, $3911                                   ; $5818: $11 $11 $39
	xor  e                                           ; $581b: $ab
	sub  e                                           ; $581c: $93
	ld   a, e                                        ; $581d: $7b
	inc  [hl]                                        ; $581e: $34
	rst  $38                                         ; $581f: $ff
	call c, $9d67                                    ; $5820: $dc $67 $9d
	rst  $38                                         ; $5823: $ff
	db   $fd                                         ; $5824: $fd
	add  a                                           ; $5825: $87
	sbc  d                                           ; $5826: $9a
	db   $dd                                         ; $5827: $dd
	xor  b                                           ; $5828: $a8
	ld   h, a                                        ; $5829: $67
	adc  b                                           ; $582a: $88
	ld   h, [hl]                                     ; $582b: $66
	ld   a, b                                        ; $582c: $78
	add  h                                           ; $582d: $84
	inc  hl                                          ; $582e: $23
	ld   sp, $1411                                   ; $582f: $31 $11 $14
	dec  [hl]                                        ; $5832: $35
	xor  c                                           ; $5833: $a9
	halt                                             ; $5834: $76
	daa                                              ; $5835: $27
	rst  $38                                         ; $5836: $ff
	xor  b                                           ; $5837: $a8
	ld   d, a                                        ; $5838: $57
	db   $dd                                         ; $5839: $dd
	sbc  $dc                                         ; $583a: $de $dc
	call $97ed                                       ; $583c: $cd $ed $97
	adc  d                                           ; $583f: $8a
	cp   e                                           ; $5840: $bb
	and  [hl]                                        ; $5841: $a6
	ld   b, e                                        ; $5842: $43
	ld   l, c                                        ; $5843: $69
	xor  d                                           ; $5844: $aa
	ld   h, d                                        ; $5845: $62
	ld   de, $5412                                   ; $5846: $11 $12 $54
	ld   de, $ac16                                   ; $5849: $11 $16 $ac
	add  e                                           ; $584c: $83
	adc  e                                           ; $584d: $8b
	ld   e, c                                        ; $584e: $59
	db   $fc                                         ; $584f: $fc
	jp   c, $da6a                                    ; $5850: $da $6a $da

	rst  JumpTable                                         ; $5853: $df
	rst  $28                                         ; $5854: $ef
	jp   z, $79ba                                    ; $5855: $ca $ba $79

	cp   c                                           ; $5858: $b9
	halt                                             ; $5859: $76
	ld   l, b                                        ; $585a: $68
	sub  a                                           ; $585b: $97
	halt                                             ; $585c: $76
	inc  sp                                          ; $585d: $33
	ld   b, [hl]                                     ; $585e: $46
	ld   hl, $1111                                   ; $585f: $21 $11 $11
	ld   a, b                                        ; $5862: $78
	add  a                                           ; $5863: $87
	ld   e, c                                        ; $5864: $59

jr_0d0_5865:
	ld   h, a                                        ; $5865: $67
	reti                                             ; $5866: $d9


	cp   [hl]                                        ; $5867: $be
	adc  d                                           ; $5868: $8a
	ret  z                                           ; $5869: $c8

	xor  a                                           ; $586a: $af
	xor  $fb                                         ; $586b: $ee $fb
	xor  l                                           ; $586d: $ad
	or   a                                           ; $586e: $b7
	xor  e                                           ; $586f: $ab
	cp   c                                           ; $5870: $b9
	ld   [hl], h                                     ; $5871: $74
	ld   d, a                                        ; $5872: $57
	adc  c                                           ; $5873: $89
	add  e                                           ; $5874: $83
	dec  [hl]                                        ; $5875: $35
	ld   de, $1141                                   ; $5876: $11 $41 $11
	jr   jr_0d0_5865                                 ; $5879: $18 $ea

	ld   sp, $785b                                   ; $587b: $31 $5b $78
	rst  $38                                         ; $587e: $ff
	add  sp, $58                                     ; $587f: $e8 $58
	xor  e                                           ; $5881: $ab
	rst  $38                                         ; $5882: $ff
	db   $fd                                         ; $5883: $fd
	add  [hl]                                        ; $5884: $86
	xor  e                                           ; $5885: $ab
	sbc  $da                                         ; $5886: $de $da
	ld   h, h                                        ; $5888: $64
	ld   b, a                                        ; $5889: $47
	ld   a, c                                        ; $588a: $79
	add  [hl]                                        ; $588b: $86
	ld   d, d                                        ; $588c: $52
	inc  h                                           ; $588d: $24
	ld   b, c                                        ; $588e: $41
	ld   de, $f71e                                   ; $588f: $11 $1e $f7
	ld   de, $ff36                                   ; $5892: $11 $36 $ff
	and  $4a                                         ; $5895: $e6 $4a
	rst  $38                                         ; $5897: $ff
	ld   d, h                                        ; $5898: $54
	sbc  a                                           ; $5899: $9f
	rst  $38                                         ; $589a: $ff
	ld   [$6b74], a                                  ; $589b: $ea $74 $6b
	rst  $38                                         ; $589e: $ff
	and  d                                           ; $589f: $a2
	ld   de, $e86c                                   ; $58a0: $11 $6c $e8
	ld   b, c                                        ; $58a3: $41
	inc  d                                           ; $58a4: $14
	ld   h, c                                        ; $58a5: $61
	ld   de, $f85f                                   ; $58a6: $11 $5f $f8
	ld   de, $ff1a                                   ; $58a9: $11 $1a $ff
	rst  JumpTable                                         ; $58ac: $df
	rst  ToBoot                                         ; $58ad: $c7
	ld   [hl], h                                     ; $58ae: $74
	rst  $28                                         ; $58af: $ef
	rst  $38                                         ; $58b0: $ff
	db   $fc                                         ; $58b1: $fc
	xor  e                                           ; $58b2: $ab
	ld   a, b                                        ; $58b3: $78
	rst  $28                                         ; $58b4: $ef
	cp   b                                           ; $58b5: $b8
	ld   d, d                                        ; $58b6: $52
	ld   b, h                                        ; $58b7: $44
	adc  c                                           ; $58b8: $89
	sub  l                                           ; $58b9: $95
	ld   de, $1111                                   ; $58ba: $11 $11 $11
	rst  $38                                         ; $58bd: $ff
	add  c                                           ; $58be: $81
	inc  d                                           ; $58bf: $14
	ld   l, b                                        ; $58c0: $68
	rst  JumpTable                                         ; $58c1: $df
	ld   hl, sp-$65                                  ; $58c2: $f8 $9b
	sub  $7f                                         ; $58c4: $d6 $7f
	rst  $38                                         ; $58c6: $ff
	ld   hl, sp+$45                                  ; $58c7: $f8 $45
	ld   l, l                                        ; $58c9: $6d
	rst  $38                                         ; $58ca: $ff
	jp   $1911                                       ; $58cb: $c3 $11 $19


	ld   [$1151], a                                  ; $58ce: $ea $51 $11
	ld   de, $a74f                                   ; $58d1: $11 $4f $a7
	cp   b                                           ; $58d4: $b8
	inc  d                                           ; $58d5: $14
	ld   a, c                                        ; $58d6: $79
	rst  $38                                         ; $58d7: $ff
	db   $fc                                         ; $58d8: $fc
	add  l                                           ; $58d9: $85
	ld   e, b                                        ; $58da: $58
	rst  $38                                         ; $58db: $ff
	rst  $38                                         ; $58dc: $ff
	add  d                                           ; $58dd: $82
	ld   c, c                                        ; $58de: $49
	rst  $38                                         ; $58df: $ff
	push hl                                          ; $58e0: $e5
	ld   de, $6923                                   ; $58e1: $11 $23 $69
	rst  ToBoot                                         ; $58e4: $c7
	ld   de, rAUD1LEN                                   ; $58e5: $11 $11 $ff
	push de                                          ; $58e8: $d5
	ld   de, $ff4d                                   ; $58e9: $11 $4d $ff
	and  $8a                                         ; $58ec: $e6 $8a
	adc  a                                           ; $58ee: $8f
	db   $fc                                         ; $58ef: $fc
	cp   $dd                                         ; $58f0: $fe $dd
	ret  z                                           ; $58f2: $c8

	xor  [hl]                                        ; $58f3: $ae
	cp   d                                           ; $58f4: $ba
	ld   h, e                                        ; $58f5: $63
	ld   [de], a                                     ; $58f6: $12
	inc  h                                           ; $58f7: $24
	ld   [hl], a                                     ; $58f8: $77
	ld   b, c                                        ; $58f9: $41
	ld   de, $ef1b                                   ; $58fa: $11 $1b $ef
	pop  bc                                          ; $58fd: $c1
	ld   a, [de]                                     ; $58fe: $1a
	rst  $38                                         ; $58ff: $ff
	ret                                              ; $5900: $c9


	adc  $e9                                         ; $5901: $ce $e9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5903: $cf
	db   $ed                                         ; $5904: $ed
	cp   a                                           ; $5905: $bf
	rst  $38                                         ; $5906: $ff
	ld   b, e                                        ; $5907: $43
	sbc  e                                           ; $5908: $9b
	add  $21                                         ; $5909: $c6 $21
	ld   de, $915c                                   ; $590b: $11 $5c $91
	ld   de, $f8bf                                   ; $590e: $11 $bf $f8
	ld   bc, $ff5f                                   ; $5911: $01 $5f $ff
	or   e                                           ; $5914: $b3
	ld   e, a                                        ; $5915: $5f
	rst  $38                                         ; $5916: $ff
	ld   sp, hl                                      ; $5917: $f9
	sbc  l                                           ; $5918: $9d
	rst  $38                                         ; $5919: $ff
	ld   sp, hl                                      ; $591a: $f9
	ld   h, $88                                      ; $591b: $26 $88
	add  c                                           ; $591d: $81
	ld   de, $5114                                   ; $591e: $11 $14 $51
	ld   de, $daaa                                   ; $5921: $11 $aa $da
	dec  de                                          ; $5924: $1b
	or   h                                           ; $5925: $b4
	adc  h                                           ; $5926: $8c
	rst  $28                                         ; $5927: $ef
	ld   a, [$eeef]                                  ; $5928: $fa $ef $ee
	sbc  $ff                                         ; $592b: $de $ff
	cp   $51                                         ; $592d: $fe $51
	ld   h, [hl]                                     ; $592f: $66
	ld   d, c                                        ; $5930: $51
	ld   de, $1113                                   ; $5931: $11 $13 $11
	ld   c, l                                        ; $5934: $4d
	rst  $38                                         ; $5935: $ff
	ld   de, $df96                                   ; $5936: $11 $96 $df
	rst  $30                                         ; $5939: $f7
	ld   d, [hl]                                     ; $593a: $56
	rst  $38                                         ; $593b: $ff
	db   $fd                                         ; $593c: $fd
	rst  JumpTable                                         ; $593d: $df
	sbc  l                                           ; $593e: $9d
	rst  $28                                         ; $593f: $ef
	or   l                                           ; $5940: $b5
	ld   [hl+], a                                    ; $5941: $22
	ld   d, c                                        ; $5942: $51
	ld   de, $1131                                   ; $5943: $11 $31 $11
	db   $fd                                         ; $5946: $fd
	sbc  c                                           ; $5947: $99
	ld   [de], a                                     ; $5948: $12
	ld   a, a                                        ; $5949: $7f
	rst  $38                                         ; $594a: $ff
	and  c                                           ; $594b: $a1
	ld   l, [hl]                                     ; $594c: $6e
	rst  $38                                         ; $594d: $ff
	rst  $38                                         ; $594e: $ff
	or   [hl]                                        ; $594f: $b6
	ld   e, [hl]                                     ; $5950: $5e
	db   $fd                                         ; $5951: $fd
	ld   h, h                                        ; $5952: $64
	ld   hl, $5211                                   ; $5953: $21 $11 $52
	ld   de, $ff3f                                   ; $5956: $11 $3f $ff
	ld   [hl], c                                     ; $5959: $71
	ld   d, $ff                                      ; $595a: $16 $ff
	db   $f4                                         ; $595c: $f4
	inc  de                                          ; $595d: $13
	rst  JumpTable                                         ; $595e: $df
	rst  $38                                         ; $595f: $ff
	and  e                                           ; $5960: $a3
	ld   c, c                                        ; $5961: $49
	rst  $38                                         ; $5962: $ff
	ld   sp, $1711                                   ; $5963: $31 $11 $17
	pop  bc                                          ; $5966: $c1
	ld   de, $fe6f                                   ; $5967: $11 $6f $fe
	ld   b, c                                        ; $596a: $41
	ld   c, l                                        ; $596b: $4d
	rst  $38                                         ; $596c: $ff
	jp   z, $ef74                                    ; $596d: $ca $74 $ef

	rst  $38                                         ; $5970: $ff
	or   a                                           ; $5971: $b7
	xor  h                                           ; $5972: $ac
	add  h                                           ; $5973: $84
	ld   hl, $1111                                   ; $5974: $21 $11 $11
	ld   de, $dfdc                                   ; $5977: $11 $dc $df
	sub  c                                           ; $597a: $91
	cp   a                                           ; $597b: $bf
	rst  $38                                         ; $597c: $ff
	ld   h, d                                        ; $597d: $62
	sbc  [hl]                                        ; $597e: $9e
	rst  $38                                         ; $597f: $ff
	ld   a, [$dfbb]                                  ; $5980: $fa $bb $df
	pop  bc                                          ; $5983: $c1
	ld   de, $1111                                   ; $5984: $11 $11 $11
	ld   de, $fa8f                                   ; $5987: $11 $8f $fa
	dec  de                                          ; $598a: $1b
	ei                                               ; $598b: $fb
	rst  $38                                         ; $598c: $ff
	ld   h, e                                        ; $598d: $63
	add  hl, sp                                      ; $598e: $39
	rst  $38                                         ; $598f: $ff
	rst  $38                                         ; $5990: $ff
	add  h                                           ; $5991: $84
	adc  l                                           ; $5992: $8d
	add  sp, $11                                     ; $5993: $e8 $11
	ld   de, $9b11                                   ; $5995: $11 $11 $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5998: $cf
	and  a                                           ; $5999: $a7
	ld   a, d                                        ; $599a: $7a
	rst  $38                                         ; $599b: $ff
	ei                                               ; $599c: $fb
	ld   d, d                                        ; $599d: $52
	ld   l, a                                        ; $599e: $6f
	db   $fd                                         ; $599f: $fd
	cp   a                                           ; $59a0: $bf
	db   $fd                                         ; $59a1: $fd
	ld   de, $1111                                   ; $59a2: $11 $11 $11
	ld   de, $ff17                                   ; $59a5: $11 $17 $ff
	ld   hl, sp+$58                                  ; $59a8: $f8 $58
	rst  JumpTable                                         ; $59aa: $df
	db   $fc                                         ; $59ab: $fc
	add  e                                           ; $59ac: $83
	adc  a                                           ; $59ad: $8f
	add  sp, -$21                                    ; $59ae: $e8 $df
	rst  $38                                         ; $59b0: $ff
	add  h                                           ; $59b1: $84
	ld   de, $1111                                   ; $59b2: $11 $11 $11
	xor  c                                           ; $59b5: $a9
	rst  $38                                         ; $59b6: $ff
	ld   c, b                                        ; $59b7: $48
	ld   a, h                                        ; $59b8: $7c
	rst  $38                                         ; $59b9: $ff
	ld   a, [$fb47]                                  ; $59ba: $fa $47 $fb
	sub  [hl]                                        ; $59bd: $96
	rst  JumpTable                                         ; $59be: $df
	db   $fd                                         ; $59bf: $fd
	ld   sp, $1111                                   ; $59c0: $31 $11 $11
	jr   @+$01                                       ; $59c3: $18 $ff

	push af                                          ; $59c5: $f5
	adc  c                                           ; $59c6: $89
	xor  a                                           ; $59c7: $af
	rst  $38                                         ; $59c8: $ff
	push de                                          ; $59c9: $d5
	jr   c, @-$52                                    ; $59ca: $38 $ac

	cp   [hl]                                        ; $59cc: $be
	rst  JumpTable                                         ; $59cd: $df
	ld   [hl], c                                     ; $59ce: $71
	ld   de, $1111                                   ; $59cf: $11 $11 $11
	rst  $38                                         ; $59d2: $ff
	db   $fc                                         ; $59d3: $fc
	ld   b, c                                        ; $59d4: $41
	adc  a                                           ; $59d5: $8f
	rst  $38                                         ; $59d6: $ff
	xor  [hl]                                        ; $59d7: $ae
	ld   a, l                                        ; $59d8: $7d
	ld   b, e                                        ; $59d9: $43
	xor  a                                           ; $59da: $af
	add  sp, -$6e                                    ; $59db: $e8 $92
	ld   de, $1411                                   ; $59dd: $11 $11 $14
	rst  $38                                         ; $59e0: $ff
	ld   hl, sp+$31                                  ; $59e1: $f8 $31
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59e3: $cf
	rst  $38                                         ; $59e4: $ff
	push bc                                          ; $59e5: $c5
	ld   l, a                                        ; $59e6: $6f
	sub  $49                                         ; $59e7: $d6 $49
	ei                                               ; $59e9: $fb
	and  c                                           ; $59ea: $a1
	ld   de, $1f11                                   ; $59eb: $11 $11 $1f
	rst  $38                                         ; $59ee: $ff
	ld   hl, $ff1a                                   ; $59ef: $21 $1a $ff
	ld   a, [$f827]                                  ; $59f2: $fa $27 $f8
	ld   d, c                                        ; $59f5: $51
	sbc  a                                           ; $59f6: $9f
	ret  z                                           ; $59f7: $c8

	ld   de, $1f11                                   ; $59f8: $11 $11 $1f
	rst  $38                                         ; $59fb: $ff
	or   c                                           ; $59fc: $b1
	ld   sp, $ffdf                                   ; $59fd: $31 $df $ff
	or   c                                           ; $5a00: $b1
	ld   e, a                                        ; $5a01: $5f
	rst  $10                                         ; $5a02: $d7
	ld   c, [hl]                                     ; $5a03: $4e
	jp   hl                                          ; $5a04: $e9


	ld   hl, $1111                                   ; $5a05: $21 $11 $11
	rst  $38                                         ; $5a08: $ff
	db   $fd                                         ; $5a09: $fd

jr_0d0_5a0a:
	ld   de, $ff1f                                   ; $5a0a: $11 $1f $ff
	db   $f4                                         ; $5a0d: $f4
	ld   e, d                                        ; $5a0e: $5a
	ld   h, [hl]                                     ; $5a0f: $66
	xor  a                                           ; $5a10: $af
	or   $11                                         ; $5a11: $f6 $11
	ld   de, rAUD1LEN                                   ; $5a13: $11 $11 $ff
	jp   nz, $9f16                                   ; $5a16: $c2 $16 $9f

	rst  $38                                         ; $5a19: $ff
	db   $f4                                         ; $5a1a: $f4
	ld   l, [hl]                                     ; $5a1b: $6e
	ld   d, h                                        ; $5a1c: $54
	sbc  h                                           ; $5a1d: $9c
	ld   hl, sp+$11                                  ; $5a1e: $f8 $11
	ld   de, rAUD1LEN                                   ; $5a20: $11 $11 $ff
	ld   a, [$1f11]                                  ; $5a23: $fa $11 $1f
	rst  $38                                         ; $5a26: $ff
	or   $13                                         ; $5a27: $f6 $13
	jr   jr_0d0_5a0a                                 ; $5a29: $18 $df

	pop  bc                                          ; $5a2b: $c1
	ld   de, $1f11                                   ; $5a2c: $11 $11 $1f
	rst  $38                                         ; $5a2f: $ff
	ei                                               ; $5a30: $fb
	add  c                                           ; $5a31: $81
	ld   b, l                                        ; $5a32: $45
	rst  $38                                         ; $5a33: $ff
	rst  $38                                         ; $5a34: $ff
	ld   h, c                                        ; $5a35: $61
	inc  d                                           ; $5a36: $14
	rst  $38                                         ; $5a37: $ff
	pop  af                                          ; $5a38: $f1
	ld   de, rAUD1LEN                                   ; $5a39: $11 $11 $ff
	ld   sp, hl                                      ; $5a3c: $f9
	dec  d                                           ; $5a3d: $15
	ld   l, a                                        ; $5a3e: $6f
	rst  $38                                         ; $5a3f: $ff
	rst  $38                                         ; $5a40: $ff
	di                                               ; $5a41: $f3
	ld   de, $d66d                                   ; $5a42: $11 $6d $d6
	ld   de, $3f11                                   ; $5a45: $11 $11 $3f
	rst  $38                                         ; $5a48: $ff
	db   $d3                                         ; $5a49: $d3
	rla                                              ; $5a4a: $17
	rst  JumpTable                                         ; $5a4b: $df
	rst  $38                                         ; $5a4c: $ff
	or   e                                           ; $5a4d: $b3
	ld   [hl], $69                                   ; $5a4e: $36 $69
	ld   a, b                                        ; $5a50: $78
	ld   de, $1f11                                   ; $5a51: $11 $11 $1f
	rst  $38                                         ; $5a54: $ff
	rst  $38                                         ; $5a55: $ff
	ld   c, d                                        ; $5a56: $4a
	add  h                                           ; $5a57: $84
	rst  $38                                         ; $5a58: $ff
	rst  $38                                         ; $5a59: $ff
	sub  c                                           ; $5a5a: $91
	inc  h                                           ; $5a5b: $24
	ld   d, e                                        ; $5a5c: $53
	ld   de, $1811                                   ; $5a5d: $11 $11 $18
	rst  $38                                         ; $5a60: $ff
	ei                                               ; $5a61: $fb
	sbc  a                                           ; $5a62: $9f
	pop  bc                                          ; $5a63: $c1
	ld   l, a                                        ; $5a64: $6f
	rst  $38                                         ; $5a65: $ff
	or   c                                           ; $5a66: $b1
	ld   hl, $1113                                   ; $5a67: $21 $13 $11
	ld   de, $ff1f                                   ; $5a6a: $11 $1f $ff
	pop  af                                          ; $5a6d: $f1
	dec  de                                          ; $5a6e: $1b
	ld   a, a                                        ; $5a6f: $7f
	rst  $38                                         ; $5a70: $ff
	ld   a, [$5154]                                  ; $5a71: $fa $54 $51
	ld   sp, $1111                                   ; $5a74: $31 $11 $11
	rst  $28                                         ; $5a77: $ef
	rst  $38                                         ; $5a78: $ff
	rst  $30                                         ; $5a79: $f7
	ld   d, c                                        ; $5a7a: $51
	rra                                              ; $5a7b: $1f
	rst  $38                                         ; $5a7c: $ff
	db   $f4                                         ; $5a7d: $f4
	ld   de, $1131                                   ; $5a7e: $11 $31 $11
	ld   b, c                                        ; $5a81: $41
	rra                                              ; $5a82: $1f
	rst  $38                                         ; $5a83: $ff
	ei                                               ; $5a84: $fb
	adc  a                                           ; $5a85: $8f
	add  c                                           ; $5a86: $81
	dec  e                                           ; $5a87: $1d
	rst  $38                                         ; $5a88: $ff
	jp   $1111                                       ; $5a89: $c3 $11 $11


	ld   e, b                                        ; $5a8c: $58
	ld   de, $ffff                                   ; $5a8d: $11 $ff $ff
	reti                                             ; $5a90: $d9


	di                                               ; $5a91: $f3
	ld   a, [de]                                     ; $5a92: $1a
	rst  $38                                         ; $5a93: $ff
	ei                                               ; $5a94: $fb
	ld   d, c                                        ; $5a95: $51
	ld   de, $1111                                   ; $5a96: $11 $11 $11
	ld   l, a                                        ; $5a99: $6f
	rst  $38                                         ; $5a9a: $ff
	ldh  a, [c]                                      ; $5a9b: $f2
	sbc  a                                           ; $5a9c: $9f
	dec  de                                          ; $5a9d: $1b
	rst  $38                                         ; $5a9e: $ff
	db   $f4                                         ; $5a9f: $f4
	ld   [hl+], a                                    ; $5aa0: $22
	ld   h, c                                        ; $5aa1: $61
	ld   de, $1f11                                   ; $5aa2: $11 $11 $1f
	rst  $38                                         ; $5aa5: $ff
	db   $fd                                         ; $5aa6: $fd
	xor  a                                           ; $5aa7: $af
	ld   sp, $ffae                                   ; $5aa8: $31 $ae $ff
	ld   sp, hl                                      ; $5aab: $f9
	ld   de, $1111                                   ; $5aac: $11 $11 $11
	dec  e                                           ; $5aaf: $1d
	rst  $38                                         ; $5ab0: $ff
	ld   a, [$b278]                                  ; $5ab1: $fa $78 $b2
	adc  l                                           ; $5ab4: $8d
	rst  $38                                         ; $5ab5: $ff
	xor  e                                           ; $5ab6: $ab
	ld   bc, $1111                                   ; $5ab7: $01 $11 $11
	rla                                              ; $5aba: $17
	rst  $38                                         ; $5abb: $ff
	cp   $79                                         ; $5abc: $fe $79
	inc  de                                          ; $5abe: $13
	ld   l, [hl]                                     ; $5abf: $6e
	rst  $38                                         ; $5ac0: $ff
	jp   z, $1121                                    ; $5ac1: $ca $21 $11

	ld   sp, $ff15                                   ; $5ac4: $31 $15 $ff
	db   $fd                                         ; $5ac7: $fd
	ld   a, e                                        ; $5ac8: $7b
	ld   de, $fdaf                                   ; $5ac9: $11 $af $fd
	or   d                                           ; $5acc: $b2
	ld   hl, $2111                                   ; $5acd: $21 $11 $21
	rra                                              ; $5ad0: $1f
	rst  $38                                         ; $5ad1: $ff
	rst  $38                                         ; $5ad2: $ff
	db   $f4                                         ; $5ad3: $f4
	ld   de, $ff3f                                   ; $5ad4: $11 $3f $ff
	pop  de                                          ; $5ad7: $d1
	ld   de, $4116                                   ; $5ad8: $11 $16 $41
	ld   l, a                                        ; $5adb: $6f
	rst  $38                                         ; $5adc: $ff
	ld   [$2196], a                                  ; $5add: $ea $96 $21
	ld   a, a                                        ; $5ae0: $7f
	rst  $38                                         ; $5ae1: $ff
	ld   h, d                                        ; $5ae2: $62
	ld   de, $1611                                   ; $5ae3: $11 $11 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ae6: $cf
	rst  $38                                         ; $5ae7: $ff
	ld   a, [$1411]                                  ; $5ae8: $fa $11 $14
	rst  $28                                         ; $5aeb: $ef
	db   $fc                                         ; $5aec: $fc
	ld   de, $c616                                   ; $5aed: $11 $16 $c6
	dec  d                                           ; $5af0: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5af1: $cf
	rst  $38                                         ; $5af2: $ff
	jp   Jump_0d0_4f11                               ; $5af3: $c3 $11 $4f


	ei                                               ; $5af6: $fb
	add  c                                           ; $5af7: $81
	ld   de, $613a                                   ; $5af8: $11 $3a $61
	rra                                              ; $5afb: $1f
	rst  $38                                         ; $5afc: $ff
	ld   a, [$1311]                                  ; $5afd: $fa $11 $13
	rst  $38                                         ; $5b00: $ff
	db   $f4                                         ; $5b01: $f4
	ld   de, $1117                                   ; $5b02: $11 $17 $11
	ld   e, a                                        ; $5b05: $5f
	rst  $38                                         ; $5b06: $ff
	di                                               ; $5b07: $f3
	daa                                              ; $5b08: $27
	ld   d, l                                        ; $5b09: $55
	ld   e, c                                        ; $5b0a: $59
	ld   [$1411], a                                  ; $5b0b: $ea $11 $14
	ld   sp, $ff6b                                   ; $5b0e: $31 $6b $ff
	db   $fd                                         ; $5b11: $fd
	and  l                                           ; $5b12: $a5
	ld   de, $ff1d                                   ; $5b13: $11 $1d $ff
	ld   b, c                                        ; $5b16: $41
	ld   de, $4855                                   ; $5b17: $11 $55 $48
	rst  $38                                         ; $5b1a: $ff
	ld   sp, hl                                      ; $5b1b: $f9
	ld   b, a                                        ; $5b1c: $47
	and  h                                           ; $5b1d: $a4
	inc  d                                           ; $5b1e: $14
	rst  $28                                         ; $5b1f: $ef
	or   c                                           ; $5b20: $b1
	ld   [de], a                                     ; $5b21: $12
	ld   e, b                                        ; $5b22: $58
	add  a                                           ; $5b23: $87
	rst  $38                                         ; $5b24: $ff
	sub  $cc                                         ; $5b25: $d6 $cc
	sub  h                                           ; $5b27: $94
	rla                                              ; $5b28: $17
	rst  $28                                         ; $5b29: $ef
	sub  $11                                         ; $5b2a: $d6 $11
	rla                                              ; $5b2c: $17
	db   $db                                         ; $5b2d: $db
	ret                                              ; $5b2e: $c9


	ld   a, b                                        ; $5b2f: $78
	ld   d, a                                        ; $5b30: $57
	db   $dd                                         ; $5b31: $dd
	sub  l                                           ; $5b32: $95
	ld   l, d                                        ; $5b33: $6a
	cp   e                                           ; $5b34: $bb
	ld   h, h                                        ; $5b35: $64
	ld   de, $bb1b                                   ; $5b36: $11 $1b $bb
	call $be62                                       ; $5b39: $cd $62 $be
	rst  $20                                         ; $5b3c: $e7
	ld   b, h                                        ; $5b3d: $44
	adc  $83                                         ; $5b3e: $ce $83
	inc  de                                          ; $5b40: $13
	ld   a, [hl-]                                    ; $5b41: $3a
	sbc  e                                           ; $5b42: $9b
	sbc  d                                           ; $5b43: $9a
	push bc                                          ; $5b44: $c5
	ld   [hl], l                                     ; $5b45: $75
	adc  [hl]                                        ; $5b46: $8e
	ret  c                                           ; $5b47: $d8

	ld   b, a                                        ; $5b48: $47
	jp   c, $1431                                    ; $5b49: $da $31 $14

	xor  l                                           ; $5b4c: $ad
	ret                                              ; $5b4d: $c9


	ld   h, [hl]                                     ; $5b4e: $66
	adc  c                                           ; $5b4f: $89
	sbc  c                                           ; $5b50: $99
	ld   a, c                                        ; $5b51: $79
	sub  [hl]                                        ; $5b52: $96
	cp   c                                           ; $5b53: $b9
	ld   [hl], e                                     ; $5b54: $73
	ld   [de], a                                     ; $5b55: $12
	adc  h                                           ; $5b56: $8c
	reti                                             ; $5b57: $d9


	rla                                              ; $5b58: $17
	ret                                              ; $5b59: $c9


	sub  [hl]                                        ; $5b5a: $96
	sbc  e                                           ; $5b5b: $9b
	xor  d                                           ; $5b5c: $aa
	adc  e                                           ; $5b5d: $8b
	add  l                                           ; $5b5e: $85
	ld   [hl-], a                                    ; $5b5f: $32
	ld   l, e                                        ; $5b60: $6b
	ld   a, [$7d23]                                  ; $5b61: $fa $23 $7d
	push bc                                          ; $5b64: $c5
	ld   h, [hl]                                     ; $5b65: $66
	xor  h                                           ; $5b66: $ac
	ld   a, c                                        ; $5b67: $79
	cp   d                                           ; $5b68: $ba
	ld   b, c                                        ; $5b69: $41
	ld   l, b                                        ; $5b6a: $68
	cp   b                                           ; $5b6b: $b8
	ld   h, [hl]                                     ; $5b6c: $66
	ld   l, e                                        ; $5b6d: $6b
	or   [hl]                                        ; $5b6e: $b6
	ld   d, l                                        ; $5b6f: $55
	xor  [hl]                                        ; $5b70: $ae
	adc  $96                                         ; $5b71: $ce $96
	ld   b, [hl]                                     ; $5b73: $46
	halt                                             ; $5b74: $76
	halt                                             ; $5b75: $76
	adc  d                                           ; $5b76: $8a
	add  a                                           ; $5b77: $87
	sbc  c                                           ; $5b78: $99
	and  l                                           ; $5b79: $a5
	adc  b                                           ; $5b7a: $88
	xor  e                                           ; $5b7b: $ab
	sbc  d                                           ; $5b7c: $9a
	add  a                                           ; $5b7d: $87
	ld   b, a                                        ; $5b7e: $47
	ld   h, a                                        ; $5b7f: $67
	ld   e, b                                        ; $5b80: $58
	jp   z, Jump_0d0_7aa4                            ; $5b81: $ca $a4 $7a

	or   [hl]                                        ; $5b84: $b6
	ld   e, d                                        ; $5b85: $5a
	call $6698                                       ; $5b86: $cd $98 $66
	ld   d, [hl]                                     ; $5b89: $56
	adc  c                                           ; $5b8a: $89
	sbc  c                                           ; $5b8b: $99
	and  [hl]                                        ; $5b8c: $a6
	ld   l, b                                        ; $5b8d: $68
	cp   c                                           ; $5b8e: $b9
	ld   h, [hl]                                     ; $5b8f: $66
	adc  d                                           ; $5b90: $8a
	xor  c                                           ; $5b91: $a9
	sbc  b                                           ; $5b92: $98
	add  a                                           ; $5b93: $87
	ld   [hl], a                                     ; $5b94: $77
	ld   [hl], $9c                                   ; $5b95: $36 $9c
	call nz, $c958                                   ; $5b97: $c4 $58 $c9
	ld   h, [hl]                                     ; $5b9a: $66
	adc  e                                           ; $5b9b: $8b
	adc  d                                           ; $5b9c: $8a
	xor  c                                           ; $5b9d: $a9
	ld   b, d                                        ; $5b9e: $42
	ld   a, d                                        ; $5b9f: $7a
	or   a                                           ; $5ba0: $b7
	adc  c                                           ; $5ba1: $89
	ld   a, b                                        ; $5ba2: $78
	ld   a, c                                        ; $5ba3: $79
	ret  z                                           ; $5ba4: $c8

	ld   h, l                                        ; $5ba5: $65
	sbc  d                                           ; $5ba6: $9a
	cp   e                                           ; $5ba7: $bb
	ld   h, a                                        ; $5ba8: $67
	ld   b, [hl]                                     ; $5ba9: $46
	xor  c                                           ; $5baa: $a9
	sub  a                                           ; $5bab: $97
	ld   [hl], a                                     ; $5bac: $77
	sbc  c                                           ; $5bad: $99
	sbc  b                                           ; $5bae: $98
	sub  a                                           ; $5baf: $97
	ld   [hl], a                                     ; $5bb0: $77
	ld   l, d                                        ; $5bb1: $6a
	sbc  c                                           ; $5bb2: $99
	ld   d, l                                        ; $5bb3: $55
	ld   a, b                                        ; $5bb4: $78
	xor  b                                           ; $5bb5: $a8
	sbc  b                                           ; $5bb6: $98
	ld   h, a                                        ; $5bb7: $67
	sbc  d                                           ; $5bb8: $9a
	cp   c                                           ; $5bb9: $b9
	ld   [hl], a                                     ; $5bba: $77
	ld   l, c                                        ; $5bbb: $69
	xor  c                                           ; $5bbc: $a9
	halt                                             ; $5bbd: $76
	ld   a, b                                        ; $5bbe: $78
	sbc  d                                           ; $5bbf: $9a
	add  [hl]                                        ; $5bc0: $86
	ld   a, b                                        ; $5bc1: $78
	adc  b                                           ; $5bc2: $88
	adc  b                                           ; $5bc3: $88
	sbc  b                                           ; $5bc4: $98
	adc  b                                           ; $5bc5: $88
	sbc  d                                           ; $5bc6: $9a
	halt                                             ; $5bc7: $76
	ld   a, c                                        ; $5bc8: $79
	add  a                                           ; $5bc9: $87
	adc  c                                           ; $5bca: $89
	sub  a                                           ; $5bcb: $97
	ld   l, b                                        ; $5bcc: $68
	sbc  c                                           ; $5bcd: $99
	ld   [hl], a                                     ; $5bce: $77
	sbc  c                                           ; $5bcf: $99
	sbc  c                                           ; $5bd0: $99
	sbc  c                                           ; $5bd1: $99
	ld   h, a                                        ; $5bd2: $67
	xor  c                                           ; $5bd3: $a9
	add  [hl]                                        ; $5bd4: $86
	ld   a, b                                        ; $5bd5: $78
	sbc  b                                           ; $5bd6: $98
	sbc  b                                           ; $5bd7: $98
	add  a                                           ; $5bd8: $87
	ld   a, b                                        ; $5bd9: $78
	xor  d                                           ; $5bda: $aa
	add  a                                           ; $5bdb: $87
	ld   a, b                                        ; $5bdc: $78
	sbc  c                                           ; $5bdd: $99
	add  a                                           ; $5bde: $87
	adc  c                                           ; $5bdf: $89
	add  a                                           ; $5be0: $87
	ld   [hl], a                                     ; $5be1: $77
	adc  c                                           ; $5be2: $89
	sbc  c                                           ; $5be3: $99
	adc  b                                           ; $5be4: $88
	adc  c                                           ; $5be5: $89
	sub  a                                           ; $5be6: $97
	ld   h, a                                        ; $5be7: $67
	sbc  d                                           ; $5be8: $9a
	and  a                                           ; $5be9: $a7
	ld   h, [hl]                                     ; $5bea: $66
	ld   a, c                                        ; $5beb: $79
	sbc  c                                           ; $5bec: $99
	add  a                                           ; $5bed: $87
	ld   a, b                                        ; $5bee: $78
	adc  b                                           ; $5bef: $88
	adc  c                                           ; $5bf0: $89
	ld   [hl], a                                     ; $5bf1: $77
	sbc  c                                           ; $5bf2: $99
	sub  a                                           ; $5bf3: $97
	ld   h, a                                        ; $5bf4: $67
	adc  c                                           ; $5bf5: $89
	adc  b                                           ; $5bf6: $88
	add  a                                           ; $5bf7: $87
	ld   h, a                                        ; $5bf8: $67
	adc  d                                           ; $5bf9: $8a
	sub  [hl]                                        ; $5bfa: $96
	ld   l, b                                        ; $5bfb: $68
	xor  c                                           ; $5bfc: $a9
	sub  a                                           ; $5bfd: $97
	ld   [hl], a                                     ; $5bfe: $77
	adc  c                                           ; $5bff: $89
	adc  c                                           ; $5c00: $89
	ld   [hl], a                                     ; $5c01: $77
	ld   a, c                                        ; $5c02: $79
	sbc  b                                           ; $5c03: $98
	ld   [hl], a                                     ; $5c04: $77
	ld   a, b                                        ; $5c05: $78
	adc  c                                           ; $5c06: $89
	adc  b                                           ; $5c07: $88
	ld   a, b                                        ; $5c08: $78
	adc  c                                           ; $5c09: $89
	adc  b                                           ; $5c0a: $88
	adc  b                                           ; $5c0b: $88
	adc  b                                           ; $5c0c: $88
	adc  b                                           ; $5c0d: $88
	adc  b                                           ; $5c0e: $88
	adc  b                                           ; $5c0f: $88
	adc  c                                           ; $5c10: $89
	adc  b                                           ; $5c11: $88
	ld   a, b                                        ; $5c12: $78
	adc  c                                           ; $5c13: $89
	sbc  b                                           ; $5c14: $98
	adc  b                                           ; $5c15: $88
	adc  b                                           ; $5c16: $88
	adc  b                                           ; $5c17: $88
	adc  b                                           ; $5c18: $88
	adc  b                                           ; $5c19: $88
	adc  b                                           ; $5c1a: $88
	adc  b                                           ; $5c1b: $88
	adc  b                                           ; $5c1c: $88
	adc  b                                           ; $5c1d: $88
	adc  b                                           ; $5c1e: $88
	adc  b                                           ; $5c1f: $88
	adc  b                                           ; $5c20: $88
	adc  b                                           ; $5c21: $88
	adc  b                                           ; $5c22: $88
	adc  b                                           ; $5c23: $88
	adc  b                                           ; $5c24: $88
	adc  b                                           ; $5c25: $88
	adc  b                                           ; $5c26: $88
	adc  b                                           ; $5c27: $88
	ld   de, $1111                                   ; $5c28: $11 $11 $11
	ld   de, $1111                                   ; $5c2b: $11 $11 $11
	ld   de, $1111                                   ; $5c2e: $11 $11 $11
	ld   de, $1111                                   ; $5c31: $11 $11 $11
	ld   de, $1111                                   ; $5c34: $11 $11 $11
	ld   de, $1111                                   ; $5c37: $11 $11 $11
	ld   de, $1111                                   ; $5c3a: $11 $11 $11
	ld   de, $1111                                   ; $5c3d: $11 $11 $11
	ld   de, $1111                                   ; $5c40: $11 $11 $11
	ld   de, $1111                                   ; $5c43: $11 $11 $11
	ld   de, $1111                                   ; $5c46: $11 $11 $11
	ld   de, $1111                                   ; $5c49: $11 $11 $11
	ld   de, $1111                                   ; $5c4c: $11 $11 $11
	ld   de, $1111                                   ; $5c4f: $11 $11 $11
	ld   de, $1111                                   ; $5c52: $11 $11 $11
	ld   de, $1111                                   ; $5c55: $11 $11 $11
	ld   de, $1111                                   ; $5c58: $11 $11 $11
	ld   de, $1111                                   ; $5c5b: $11 $11 $11
	nop                                              ; $5c5e: $00
	ld   c, b                                        ; $5c5f: $48
	ld   de, $1111                                   ; $5c60: $11 $11 $11
	ld   de, $1111                                   ; $5c63: $11 $11 $11
	ld   de, $1111                                   ; $5c66: $11 $11 $11
	ld   de, $5413                                   ; $5c69: $11 $13 $54
	ld   d, h                                        ; $5c6c: $54
	ld   d, h                                        ; $5c6d: $54
	ld   b, c                                        ; $5c6e: $41
	rra                                              ; $5c6f: $1f
	rst  $38                                         ; $5c70: $ff
	pop  af                                          ; $5c71: $f1
	ld   de, $1411                                   ; $5c72: $11 $11 $14
	ld   d, c                                        ; $5c75: $51
	ld   de, $d11c                                   ; $5c76: $11 $1c $d1
	db   $ec                                         ; $5c79: $ec
	pop  de                                          ; $5c7a: $d1
	pop  hl                                          ; $5c7b: $e1
	ld   de, $1111                                   ; $5c7c: $11 $11 $11
	ld   de, $1111                                   ; $5c7f: $11 $11 $11
	ld   de, $1111                                   ; $5c82: $11 $11 $11
	ld   de, $1111                                   ; $5c85: $11 $11 $11
	ld   de, $5411                                   ; $5c88: $11 $11 $54
	ld   b, h                                        ; $5c8b: $44
	ld   d, h                                        ; $5c8c: $54
	ld   de, $5454                                   ; $5c8d: $11 $54 $54
	ld   h, a                                        ; $5c90: $67
	ld   [hl], d                                     ; $5c91: $72
	ld   de, $1111                                   ; $5c92: $11 $11 $11
	ld   de, $1112                                   ; $5c95: $11 $12 $11
	ld   [de], a                                     ; $5c98: $12
	ld   de, $1111                                   ; $5c99: $11 $11 $11
	ld   h, [hl]                                     ; $5c9c: $66
	halt                                             ; $5c9d: $76
	inc  h                                           ; $5c9e: $24
	ld   de, $8888                                   ; $5c9f: $11 $88 $88
	adc  b                                           ; $5ca2: $88
	adc  b                                           ; $5ca3: $88
	adc  b                                           ; $5ca4: $88
	adc  b                                           ; $5ca5: $88
	adc  b                                           ; $5ca6: $88
	adc  b                                           ; $5ca7: $88
	adc  b                                           ; $5ca8: $88
	adc  b                                           ; $5ca9: $88
	adc  b                                           ; $5caa: $88
	adc  b                                           ; $5cab: $88
	adc  b                                           ; $5cac: $88
	adc  b                                           ; $5cad: $88
	adc  b                                           ; $5cae: $88
	adc  b                                           ; $5caf: $88
	adc  b                                           ; $5cb0: $88
	adc  b                                           ; $5cb1: $88
	adc  b                                           ; $5cb2: $88
	adc  b                                           ; $5cb3: $88
	adc  b                                           ; $5cb4: $88
	adc  b                                           ; $5cb5: $88
	adc  b                                           ; $5cb6: $88
	adc  b                                           ; $5cb7: $88
	adc  b                                           ; $5cb8: $88
	adc  b                                           ; $5cb9: $88
	adc  b                                           ; $5cba: $88
	adc  b                                           ; $5cbb: $88
	adc  b                                           ; $5cbc: $88
	adc  b                                           ; $5cbd: $88
	adc  b                                           ; $5cbe: $88
	adc  b                                           ; $5cbf: $88
	adc  b                                           ; $5cc0: $88
	adc  b                                           ; $5cc1: $88
	adc  b                                           ; $5cc2: $88
	adc  b                                           ; $5cc3: $88
	adc  b                                           ; $5cc4: $88
	adc  b                                           ; $5cc5: $88
	adc  b                                           ; $5cc6: $88
	adc  b                                           ; $5cc7: $88
	adc  b                                           ; $5cc8: $88
	adc  b                                           ; $5cc9: $88
	adc  b                                           ; $5cca: $88
	adc  b                                           ; $5ccb: $88
	adc  b                                           ; $5ccc: $88
	adc  b                                           ; $5ccd: $88
	adc  b                                           ; $5cce: $88
	ld   a, b                                        ; $5ccf: $78
	adc  b                                           ; $5cd0: $88
	adc  b                                           ; $5cd1: $88
	adc  b                                           ; $5cd2: $88
	ld   a, b                                        ; $5cd3: $78
	sbc  c                                           ; $5cd4: $99
	adc  b                                           ; $5cd5: $88
	adc  b                                           ; $5cd6: $88
	adc  b                                           ; $5cd7: $88
	adc  b                                           ; $5cd8: $88
	adc  b                                           ; $5cd9: $88
	adc  b                                           ; $5cda: $88
	add  a                                           ; $5cdb: $87
	add  a                                           ; $5cdc: $87
	adc  b                                           ; $5cdd: $88
	adc  b                                           ; $5cde: $88
	add  a                                           ; $5cdf: $87
	ld   a, b                                        ; $5ce0: $78
	adc  b                                           ; $5ce1: $88
	adc  b                                           ; $5ce2: $88
	adc  b                                           ; $5ce3: $88
	adc  b                                           ; $5ce4: $88
	adc  b                                           ; $5ce5: $88
	ld   a, b                                        ; $5ce6: $78
	add  a                                           ; $5ce7: $87
	adc  b                                           ; $5ce8: $88
	adc  c                                           ; $5ce9: $89
	ld   a, b                                        ; $5cea: $78
	adc  b                                           ; $5ceb: $88
	sbc  b                                           ; $5cec: $98
	sbc  b                                           ; $5ced: $98
	add  a                                           ; $5cee: $87
	adc  b                                           ; $5cef: $88
	adc  c                                           ; $5cf0: $89
	adc  b                                           ; $5cf1: $88
	adc  b                                           ; $5cf2: $88
	adc  b                                           ; $5cf3: $88
	ld   a, b                                        ; $5cf4: $78
	sbc  c                                           ; $5cf5: $99
	ld   a, b                                        ; $5cf6: $78
	adc  c                                           ; $5cf7: $89
	sbc  b                                           ; $5cf8: $98
	add  a                                           ; $5cf9: $87
	ld   a, b                                        ; $5cfa: $78
	adc  b                                           ; $5cfb: $88
	adc  b                                           ; $5cfc: $88
	adc  c                                           ; $5cfd: $89
	sbc  b                                           ; $5cfe: $98
	add  a                                           ; $5cff: $87
	ld   a, b                                        ; $5d00: $78
	adc  b                                           ; $5d01: $88
	sbc  c                                           ; $5d02: $99
	add  a                                           ; $5d03: $87
	ld   a, b                                        ; $5d04: $78
	adc  b                                           ; $5d05: $88
	sbc  c                                           ; $5d06: $99
	adc  b                                           ; $5d07: $88
	halt                                             ; $5d08: $76
	ld   a, c                                        ; $5d09: $79
	sbc  b                                           ; $5d0a: $98
	sbc  c                                           ; $5d0b: $99
	adc  b                                           ; $5d0c: $88
	add  a                                           ; $5d0d: $87
	ld   [hl], a                                     ; $5d0e: $77
	adc  b                                           ; $5d0f: $88
	sbc  d                                           ; $5d10: $9a
	ld   [hl], a                                     ; $5d11: $77
	ld   a, b                                        ; $5d12: $78
	add  a                                           ; $5d13: $87
	xor  d                                           ; $5d14: $aa
	ld   [hl], a                                     ; $5d15: $77
	sbc  b                                           ; $5d16: $98
	ld   [hl], a                                     ; $5d17: $77
	adc  b                                           ; $5d18: $88
	ld   [hl], a                                     ; $5d19: $77
	ld   a, c                                        ; $5d1a: $79
	xor  c                                           ; $5d1b: $a9
	add  a                                           ; $5d1c: $87
	ld   l, b                                        ; $5d1d: $68
	adc  c                                           ; $5d1e: $89
	add  a                                           ; $5d1f: $87
	adc  b                                           ; $5d20: $88
	sub  a                                           ; $5d21: $97
	adc  c                                           ; $5d22: $89
	ld   [hl], a                                     ; $5d23: $77
	ld   a, d                                        ; $5d24: $7a
	xor  c                                           ; $5d25: $a9
	ld   h, [hl]                                     ; $5d26: $66
	add  a                                           ; $5d27: $87
	ld   a, c                                        ; $5d28: $79
	xor  c                                           ; $5d29: $a9
	sub  a                                           ; $5d2a: $97
	ld   h, [hl]                                     ; $5d2b: $66
	ld   a, c                                        ; $5d2c: $79
	xor  b                                           ; $5d2d: $a8
	adc  d                                           ; $5d2e: $8a
	add  a                                           ; $5d2f: $87
	ld   [hl], a                                     ; $5d30: $77
	adc  b                                           ; $5d31: $88
	adc  c                                           ; $5d32: $89
	add  [hl]                                        ; $5d33: $86
	ld   a, c                                        ; $5d34: $79
	ld   [hl], a                                     ; $5d35: $77
	cp   c                                           ; $5d36: $b9
	ld   h, [hl]                                     ; $5d37: $66
	ld   a, c                                        ; $5d38: $79
	xor  d                                           ; $5d39: $aa
	halt                                             ; $5d3a: $76
	add  a                                           ; $5d3b: $87
	ld   a, b                                        ; $5d3c: $78
	xor  b                                           ; $5d3d: $a8
	ld   [hl], a                                     ; $5d3e: $77
	adc  c                                           ; $5d3f: $89
	adc  c                                           ; $5d40: $89
	sub  a                                           ; $5d41: $97
	adc  b                                           ; $5d42: $88
	ld   a, b                                        ; $5d43: $78
	adc  b                                           ; $5d44: $88
	ld   h, [hl]                                     ; $5d45: $66
	adc  c                                           ; $5d46: $89
	sbc  b                                           ; $5d47: $98
	adc  c                                           ; $5d48: $89
	add  a                                           ; $5d49: $87
	adc  b                                           ; $5d4a: $88
	add  a                                           ; $5d4b: $87
	adc  b                                           ; $5d4c: $88
	ld   h, a                                        ; $5d4d: $67
	sbc  b                                           ; $5d4e: $98
	adc  b                                           ; $5d4f: $88
	halt                                             ; $5d50: $76
	adc  c                                           ; $5d51: $89
	adc  c                                           ; $5d52: $89
	add  a                                           ; $5d53: $87
	ld   l, b                                        ; $5d54: $68
	sbc  b                                           ; $5d55: $98
	ld   [hl], a                                     ; $5d56: $77
	cp   c                                           ; $5d57: $b9
	ld   a, c                                        ; $5d58: $79
	sub  a                                           ; $5d59: $97
	adc  b                                           ; $5d5a: $88
	adc  d                                           ; $5d5b: $8a
	ld   h, a                                        ; $5d5c: $67
	adc  b                                           ; $5d5d: $88
	adc  b                                           ; $5d5e: $88
	add  a                                           ; $5d5f: $87
	ld   a, c                                        ; $5d60: $79
	ld   a, b                                        ; $5d61: $78
	ld   [hl], a                                     ; $5d62: $77
	ld   [hl], a                                     ; $5d63: $77
	xor  d                                           ; $5d64: $aa
	sub  a                                           ; $5d65: $97
	sbc  c                                           ; $5d66: $99
	ld   h, a                                        ; $5d67: $67
	sbc  c                                           ; $5d68: $99
	adc  b                                           ; $5d69: $88
	sbc  b                                           ; $5d6a: $98
	ld   a, c                                        ; $5d6b: $79
	ld   h, [hl]                                     ; $5d6c: $66
	ld   a, e                                        ; $5d6d: $7b
	push bc                                          ; $5d6e: $c5
	sub  [hl]                                        ; $5d6f: $96
	ld   e, b                                        ; $5d70: $58
	adc  d                                           ; $5d71: $8a
	ld   a, b                                        ; $5d72: $78
	add  a                                           ; $5d73: $87
	ld   a, b                                        ; $5d74: $78
	sbc  b                                           ; $5d75: $98
	ld   a, b                                        ; $5d76: $78
	sbc  b                                           ; $5d77: $98
	adc  c                                           ; $5d78: $89
	adc  d                                           ; $5d79: $8a
	sub  a                                           ; $5d7a: $97
	ld   a, b                                        ; $5d7b: $78
	halt                                             ; $5d7c: $76
	ld   a, b                                        ; $5d7d: $78
	sub  a                                           ; $5d7e: $97
	ld   a, c                                        ; $5d7f: $79
	add  [hl]                                        ; $5d80: $86
	sbc  c                                           ; $5d81: $99
	ld   a, c                                        ; $5d82: $79
	xor  c                                           ; $5d83: $a9
	halt                                             ; $5d84: $76
	sub  a                                           ; $5d85: $97
	ld   a, c                                        ; $5d86: $79
	sub  a                                           ; $5d87: $97
	ld   a, b                                        ; $5d88: $78
	ld   h, [hl]                                     ; $5d89: $66
	sbc  e                                           ; $5d8a: $9b
	ld   h, [hl]                                     ; $5d8b: $66
	sbc  c                                           ; $5d8c: $99
	add  a                                           ; $5d8d: $87
	ld   l, b                                        ; $5d8e: $68
	sbc  c                                           ; $5d8f: $99
	add  [hl]                                        ; $5d90: $86
	sbc  c                                           ; $5d91: $99
	sub  a                                           ; $5d92: $97
	adc  e                                           ; $5d93: $8b
	sbc  e                                           ; $5d94: $9b
	ld   a, c                                        ; $5d95: $79
	sub  [hl]                                        ; $5d96: $96
	cp   b                                           ; $5d97: $b8
	ld   [hl], a                                     ; $5d98: $77
	ld   a, b                                        ; $5d99: $78
	ld   d, a                                        ; $5d9a: $57
	ld   d, a                                        ; $5d9b: $57
	add  [hl]                                        ; $5d9c: $86
	ld   a, c                                        ; $5d9d: $79
	sbc  c                                           ; $5d9e: $99
	xor  c                                           ; $5d9f: $a9
	xor  l                                           ; $5da0: $ad
	sbc  b                                           ; $5da1: $98
	sbc  c                                           ; $5da2: $99
	adc  b                                           ; $5da3: $88
	ld   [hl], l                                     ; $5da4: $75
	ld   d, [hl]                                     ; $5da5: $56
	ld   a, b                                        ; $5da6: $78
	ld   h, l                                        ; $5da7: $65
	adc  c                                           ; $5da8: $89
	add  [hl]                                        ; $5da9: $86
	adc  l                                           ; $5daa: $8d
	db   $db                                         ; $5dab: $db
	sub  a                                           ; $5dac: $97
	xor  c                                           ; $5dad: $a9
	ld   [hl], a                                     ; $5dae: $77
	sbc  e                                           ; $5daf: $9b
	add  l                                           ; $5db0: $85
	ld   d, l                                        ; $5db1: $55
	sbc  c                                           ; $5db2: $99
	ld   e, b                                        ; $5db3: $58
	sbc  b                                           ; $5db4: $98
	ld   h, l                                        ; $5db5: $65
	xor  h                                           ; $5db6: $ac
	sub  l                                           ; $5db7: $95
	ld   a, e                                        ; $5db8: $7b
	ld   l, b                                        ; $5db9: $68
	cp   l                                           ; $5dba: $bd
	and  a                                           ; $5dbb: $a7
	ld   h, h                                        ; $5dbc: $64
	ld   d, a                                        ; $5dbd: $57
	cp   d                                           ; $5dbe: $ba
	ld   e, c                                        ; $5dbf: $59
	xor  c                                           ; $5dc0: $a9
	adc  c                                           ; $5dc1: $89
	ld   a, b                                        ; $5dc2: $78
	ld   [hl], a                                     ; $5dc3: $77
	rst  ToBoot                                         ; $5dc4: $c7
	adc  c                                           ; $5dc5: $89
	ld   b, a                                        ; $5dc6: $47
	sbc  e                                           ; $5dc7: $9b
	or   a                                           ; $5dc8: $b7
	ld   d, e                                        ; $5dc9: $53
	inc  [hl]                                        ; $5dca: $34
	ld   d, a                                        ; $5dcb: $57
	xor  h                                           ; $5dcc: $ac
	rst  $38                                         ; $5dcd: $ff
	cp   e                                           ; $5dce: $bb
	ld   [hl], l                                     ; $5dcf: $75
	adc  b                                           ; $5dd0: $88
	xor  e                                           ; $5dd1: $ab
	ld   h, a                                        ; $5dd2: $67
	sub  e                                           ; $5dd3: $93
	scf                                              ; $5dd4: $37
	sub  [hl]                                        ; $5dd5: $96
	ld   a, e                                        ; $5dd6: $7b
	add  [hl]                                        ; $5dd7: $86
	ld   l, d                                        ; $5dd8: $6a
	ld   d, h                                        ; $5dd9: $54
	sub  a                                           ; $5dda: $97
	adc  [hl]                                        ; $5ddb: $8e
	push af                                          ; $5ddc: $f5
	dec  sp                                          ; $5ddd: $3b
	adc  b                                           ; $5dde: $88
	call c, $86a5                                    ; $5ddf: $dc $a5 $86
	ld   c, e                                        ; $5de2: $4b
	ld   b, l                                        ; $5de3: $45
	rst  ToBoot                                         ; $5de4: $c7
	adc  c                                           ; $5de5: $89
	ld   a, c                                        ; $5de6: $79
	ld   l, b                                        ; $5de7: $68
	and  l                                           ; $5de8: $a5
	ld   l, c                                        ; $5de9: $69
	xor  b                                           ; $5dea: $a8
	ld   a, c                                        ; $5deb: $79
	ld   d, l                                        ; $5dec: $55
	xor  d                                           ; $5ded: $aa
	xor  b                                           ; $5dee: $a8
	ld   a, d                                        ; $5def: $7a
	ld   b, h                                        ; $5df0: $44
	sbc  b                                           ; $5df1: $98
	add  l                                           ; $5df2: $85
	ld   h, l                                        ; $5df3: $65
	sbc  l                                           ; $5df4: $9d
	ld   [hl], a                                     ; $5df5: $77
	adc  e                                           ; $5df6: $8b
	ld   [hl], l                                     ; $5df7: $75
	xor  d                                           ; $5df8: $aa
	sbc  h                                           ; $5df9: $9c
	ld   sp, $9598                                   ; $5dfa: $31 $98 $95
	adc  h                                           ; $5dfd: $8c
	ld   e, b                                        ; $5dfe: $58
	ld   h, a                                        ; $5dff: $67
	adc  c                                           ; $5e00: $89
	rst  ToBoot                                         ; $5e01: $c7
	xor  d                                           ; $5e02: $aa
	xor  d                                           ; $5e03: $aa
	ld   d, e                                        ; $5e04: $53
	cp   h                                           ; $5e05: $bc
	ld   h, [hl]                                     ; $5e06: $66
	rst  ToBoot                                         ; $5e07: $c7
	ld   l, d                                        ; $5e08: $6a
	ld   d, l                                        ; $5e09: $55
	sbc  e                                           ; $5e0a: $9b
	ld   [hl], l                                     ; $5e0b: $75
	sbc  a                                           ; $5e0c: $9f
	push hl                                          ; $5e0d: $e5
	add  h                                           ; $5e0e: $84
	add  hl, hl                                      ; $5e0f: $29
	adc  c                                           ; $5e10: $89
	adc  e                                           ; $5e11: $8b
	or   h                                           ; $5e12: $b4
	ld   b, l                                        ; $5e13: $45
	adc  b                                           ; $5e14: $88
	adc  b                                           ; $5e15: $88
	sbc  e                                           ; $5e16: $9b
	xor  b                                           ; $5e17: $a8
	adc  b                                           ; $5e18: $88
	ld   a, c                                        ; $5e19: $79
	add  [hl]                                        ; $5e1a: $86
	adc  b                                           ; $5e1b: $88
	ld   [hl], a                                     ; $5e1c: $77
	sub  [hl]                                        ; $5e1d: $96
	ld   l, b                                        ; $5e1e: $68
	ld   d, a                                        ; $5e1f: $57
	add  e                                           ; $5e20: $83
	ld   b, a                                        ; $5e21: $47
	ld   d, e                                        ; $5e22: $53
	ld   b, a                                        ; $5e23: $47
	sbc  d                                           ; $5e24: $9a
	xor  d                                           ; $5e25: $aa
	db   $dd                                         ; $5e26: $dd
	cp   e                                           ; $5e27: $bb
	xor  e                                           ; $5e28: $ab
	call z, $8788                                    ; $5e29: $cc $88 $87
	ld   b, d                                        ; $5e2c: $42
	ld   de, $4115                                   ; $5e2d: $11 $15 $41
	inc  sp                                          ; $5e30: $33
	ld   l, e                                        ; $5e31: $6b
	db   $dd                                         ; $5e32: $dd
	rst  $28                                         ; $5e33: $ef
	rst  $38                                         ; $5e34: $ff
	cp   $df                                         ; $5e35: $fe $df
	add  $42                                         ; $5e37: $c6 $42
	ld   de, $1811                                   ; $5e39: $11 $11 $18
	ld   d, c                                        ; $5e3c: $51
	ld   b, e                                        ; $5e3d: $43
	xor  a                                           ; $5e3e: $af
	rst  $38                                         ; $5e3f: $ff
	rst  $38                                         ; $5e40: $ff
	rst  $38                                         ; $5e41: $ff
	cp   $be                                         ; $5e42: $fe $be
	push bc                                          ; $5e44: $c5
	ld   de, $1111                                   ; $5e45: $11 $11 $11
	rla                                              ; $5e48: $17
	or   [hl]                                        ; $5e49: $b6
	or   a                                           ; $5e4a: $b7
	rst  $38                                         ; $5e4b: $ff
	rst  $38                                         ; $5e4c: $ff
	rst  $38                                         ; $5e4d: $ff
	rst  $38                                         ; $5e4e: $ff
	ld   sp, hl                                      ; $5e4f: $f9
	ld   a, d                                        ; $5e50: $7a
	and  c                                           ; $5e51: $a1
	ld   de, $1111                                   ; $5e52: $11 $11 $11
	ld   c, a                                        ; $5e55: $4f
	xor  [hl]                                        ; $5e56: $ae
	rst  $38                                         ; $5e57: $ff
	rst  $38                                         ; $5e58: $ff
	rst  $38                                         ; $5e59: $ff
	rst  $38                                         ; $5e5a: $ff
	call c, $ac74                                    ; $5e5b: $dc $74 $ac
	ld   [hl], c                                     ; $5e5e: $71
	ld   de, $1111                                   ; $5e5f: $11 $11 $11
	rst  $38                                         ; $5e62: $ff
	xor  a                                           ; $5e63: $af
	rst  $28                                         ; $5e64: $ef
	rst  $38                                         ; $5e65: $ff
	db   $fc                                         ; $5e66: $fc
	cp   $b8                                         ; $5e67: $fe $b8
	ld   e, d                                        ; $5e69: $5a
	db   $eb                                         ; $5e6a: $eb
	ld   hl, $1111                                   ; $5e6b: $21 $11 $11
	rra                                              ; $5e6e: $1f
	db   $fc                                         ; $5e6f: $fc
	rst  $38                                         ; $5e70: $ff
	rst  $38                                         ; $5e71: $ff
	rst  $38                                         ; $5e72: $ff
	ld   e, a                                        ; $5e73: $5f
	ret                                              ; $5e74: $c9


	ld   h, h                                        ; $5e75: $64
	cp   a                                           ; $5e76: $bf
	rst  $30                                         ; $5e77: $f7
	ld   de, $1111                                   ; $5e78: $11 $11 $11
	xor  a                                           ; $5e7b: $af
	rst  $38                                         ; $5e7c: $ff
	rst  $38                                         ; $5e7d: $ff
	rst  $38                                         ; $5e7e: $ff
	pop  af                                          ; $5e7f: $f1
	ld   l, b                                        ; $5e80: $68
	ld   h, l                                        ; $5e81: $65
	inc  a                                           ; $5e82: $3c
	rst  $38                                         ; $5e83: $ff
	pop  bc                                          ; $5e84: $c1
	ld   de, $1111                                   ; $5e85: $11 $11 $11
	rst  $38                                         ; $5e88: $ff
	rst  $38                                         ; $5e89: $ff
	rst  $38                                         ; $5e8a: $ff
	rst  $38                                         ; $5e8b: $ff
	ld   de, $6465                                   ; $5e8c: $11 $65 $64
	rst  JumpTable                                         ; $5e8f: $df
	rst  $38                                         ; $5e90: $ff
	ld   b, c                                        ; $5e91: $41
	ld   de, $1f11                                   ; $5e92: $11 $11 $1f
	rst  $38                                         ; $5e95: $ff
	rst  $38                                         ; $5e96: $ff
	rst  $38                                         ; $5e97: $ff
	pop  af                                          ; $5e98: $f1
	ld   de, $5f59                                   ; $5e99: $11 $59 $5f
	rst  $38                                         ; $5e9c: $ff
	db   $f4                                         ; $5e9d: $f4
	ld   de, $1111                                   ; $5e9e: $11 $11 $11
	rst  $38                                         ; $5ea1: $ff
	rst  $38                                         ; $5ea2: $ff
	rst  $38                                         ; $5ea3: $ff
	ei                                               ; $5ea4: $fb
	ld   de, $ad18                                   ; $5ea5: $11 $18 $ad
	rst  $38                                         ; $5ea8: $ff
	rst  $38                                         ; $5ea9: $ff
	ld   de, $1111                                   ; $5eaa: $11 $11 $11
	ld   de, $ffff                                   ; $5ead: $11 $ff $ff
	rst  $38                                         ; $5eb0: $ff
	ld   sp, rAUD1LEN                                   ; $5eb1: $31 $11 $ff
	rst  $38                                         ; $5eb4: $ff
	rst  $38                                         ; $5eb5: $ff
	pop  af                                          ; $5eb6: $f1
	ld   de, $1111                                   ; $5eb7: $11 $11 $11
	ld   d, $ff                                      ; $5eba: $16 $ff
	db   $db                                         ; $5ebc: $db
	ld   c, e                                        ; $5ebd: $4b
	ld   de, rAUD1ENV                                   ; $5ebe: $11 $12 $ff
	rst  $38                                         ; $5ec1: $ff
	rst  $38                                         ; $5ec2: $ff
	ld   de, $bd11                                   ; $5ec3: $11 $11 $bd
	ld   de, $ff1f                                   ; $5ec6: $11 $1f $ff
	ld   de, $1125                                   ; $5ec9: $11 $25 $11
	rra                                              ; $5ecc: $1f
	rst  $38                                         ; $5ecd: $ff
	rst  $38                                         ; $5ece: $ff
	di                                               ; $5ecf: $f3
	ld   de, $fb1c                                   ; $5ed0: $11 $1c $fb
	ld   de, $f11f                                   ; $5ed3: $11 $1f $f1
	ld   de, $11b2                                   ; $5ed6: $11 $b2 $11
	rra                                              ; $5ed9: $1f
	rst  $38                                         ; $5eda: $ff
	rst  JumpTable                                         ; $5edb: $df
	pop  af                                          ; $5edc: $f1
	ld   de, $f19f                                   ; $5edd: $11 $9f $f1
	ld   de, $f1cf                                   ; $5ee0: $11 $cf $f1
	inc  de                                          ; $5ee3: $13
	pop  af                                          ; $5ee4: $f1
	ld   de, $fe7f                                   ; $5ee5: $11 $7f $fe
	sbc  a                                           ; $5ee8: $9f
	pop  af                                          ; $5ee9: $f1
	ld   [de], a                                     ; $5eea: $12
	rst  $38                                         ; $5eeb: $ff
	pop  de                                          ; $5eec: $d1
	ld   de, $f1ff                                   ; $5eed: $11 $ff $f1
	ld   b, a                                        ; $5ef0: $47
	or   c                                           ; $5ef1: $b1
	ld   de, $faff                                   ; $5ef2: $11 $ff $fa
	xor  a                                           ; $5ef5: $af
	add  c                                           ; $5ef6: $81
	jr   @+$01                                       ; $5ef7: $18 $ff

	ld   h, c                                        ; $5ef9: $61
	ld   de, $11ff                                   ; $5efa: $11 $ff $11
	ld   c, e                                        ; $5efd: $4b
	ld   de, rAUD1LEN                                   ; $5efe: $11 $11 $ff
	rst  $30                                         ; $5f01: $f7
	rst  $28                                         ; $5f02: $ef
	ld   de, $ff1d                                   ; $5f03: $11 $1d $ff
	ld   de, $ff1f                                   ; $5f06: $11 $1f $ff
	ld   [de], a                                     ; $5f09: $12
	ld   a, d                                        ; $5f0a: $7a
	ld   de, $ff1e                                   ; $5f0b: $11 $1e $ff
	add  a                                           ; $5f0e: $87
	or   $11                                         ; $5f0f: $f6 $11
	ld   e, a                                        ; $5f11: $5f
	di                                               ; $5f12: $f3
	ld   de, $f11f                                   ; $5f13: $11 $1f $f1
	inc  de                                          ; $5f16: $13
	pop  hl                                          ; $5f17: $e1
	ld   de, $fb4f                                   ; $5f18: $11 $4f $fb
	ld   c, [hl]                                     ; $5f1b: $4e
	or   c                                           ; $5f1c: $b1
	ld   de, $91ff                                   ; $5f1d: $11 $ff $91
	ld   de, $11ff                                   ; $5f20: $11 $ff $11
	ld   e, $11                                      ; $5f23: $1e $11
	ld   de, $e3ff                                   ; $5f25: $11 $ff $e3
	call z, $1f11                                    ; $5f28: $cc $11 $1f
	ei                                               ; $5f2b: $fb
	ld   de, $f11f                                   ; $5f2c: $11 $1f $f1
	ld   de, $11d2                                   ; $5f2f: $11 $d2 $11
	rra                                              ; $5f32: $1f
	db   $fd                                         ; $5f33: $fd
	add  hl, de                                      ; $5f34: $19
	pop  bc                                          ; $5f35: $c1
	ld   de, $b1ff                                   ; $5f36: $11 $ff $b1
	ld   de, $11ff                                   ; $5f39: $11 $ff $11
	rra                                              ; $5f3c: $1f
	ld   de, rAUD1LEN                                   ; $5f3d: $11 $11 $ff
	add  c                                           ; $5f40: $81
	cp   d                                           ; $5f41: $ba
	ld   de, $f81f                                   ; $5f42: $11 $1f $f8
	ld   de, $f15f                                   ; $5f45: $11 $5f $f1
	inc  d                                           ; $5f48: $14
	pop  af                                          ; $5f49: $f1
	ld   de, $f39f                                   ; $5f4a: $11 $9f $f3
	ld   e, $71                                      ; $5f4d: $1e $71
	inc  d                                           ; $5f4f: $14
	rst  $38                                         ; $5f50: $ff
	ld   de, $ff1f                                   ; $5f51: $11 $1f $ff
	ld   de, $119d                                   ; $5f54: $11 $9d $11
	rra                                              ; $5f57: $1f
	rst  $38                                         ; $5f58: $ff
	inc  hl                                          ; $5f59: $23
	pop  af                                          ; $5f5a: $f1
	ld   de, $f19f                                   ; $5f5b: $11 $9f $f1
	ld   de, $11ff                                   ; $5f5e: $11 $ff $11
	dec  a                                           ; $5f61: $3d
	ld   b, c                                        ; $5f62: $41
	ld   de, $c2ff                                   ; $5f63: $11 $ff $c2
	sbc  [hl]                                        ; $5f66: $9e
	ld   de, $f91f                                   ; $5f67: $11 $1f $f9
	ld   de, $f11f                                   ; $5f6a: $11 $1f $f1
	dec  d                                           ; $5f6d: $15
	pop  af                                          ; $5f6e: $f1
	ld   de, $f69f                                   ; $5f6f: $11 $9f $f6
	ccf                                              ; $5f72: $3f
	sub  c                                           ; $5f73: $91
	inc  de                                          ; $5f74: $13
	rst  $38                                         ; $5f75: $ff
	ld   de, $fc1f                                   ; $5f76: $11 $1f $fc
	ld   [de], a                                     ; $5f79: $12
	cp   d                                           ; $5f7a: $ba
	ld   de, $ff1f                                   ; $5f7b: $11 $1f $ff
	ld   d, [hl]                                     ; $5f7e: $56
	pop  af                                          ; $5f7f: $f1
	ld   de, $a1ef                                   ; $5f80: $11 $ef $a1
	ld   de, $11ff                                   ; $5f83: $11 $ff $11
	ld   e, a                                        ; $5f86: $5f
	ld   de, $ff17                                   ; $5f87: $11 $17 $ff
	or   l                                           ; $5f8a: $b5
	cp   l                                           ; $5f8b: $bd
	ld   de, $f21f                                   ; $5f8c: $11 $1f $f2
	ld   de, $f1bf                                   ; $5f8f: $11 $bf $f1
	ld   c, e                                        ; $5f92: $4b
	pop  de                                          ; $5f93: $d1
	ld   de, $faff                                   ; $5f94: $11 $ff $fa
	adc  a                                           ; $5f97: $8f
	ld   b, c                                        ; $5f98: $41
	jr   @-$03                                       ; $5f99: $18 $fb

	ld   de, $f11f                                   ; $5f9b: $11 $1f $f1
	ld   d, $f1                                      ; $5f9e: $16 $f1
	ld   de, $ff3f                                   ; $5fa0: $11 $3f $ff
	cp   l                                           ; $5fa3: $bd
	pop  de                                          ; $5fa4: $d1
	ld   de, $41ff                                   ; $5fa5: $11 $ff $41
	ld   de, $17ff                                   ; $5fa8: $11 $ff $17
	xor  [hl]                                        ; $5fab: $ae
	ld   de, $ff1f                                   ; $5fac: $11 $1f $ff
	cp   $f4                                         ; $5faf: $fe $f4
	ld   de, $815f                                   ; $5fb1: $11 $5f $81
	ld   de, $31ff                                   ; $5fb4: $11 $ff $31
	xor  a                                           ; $5fb7: $af
	ld   b, c                                        ; $5fb8: $41
	ld   [de], a                                     ; $5fb9: $12
	rst  $38                                         ; $5fba: $ff
	rst  $38                                         ; $5fbb: $ff
	rst  $38                                         ; $5fbc: $ff
	ld   de, $e31d                                   ; $5fbd: $11 $1d $e3
	ld   de, $f11f                                   ; $5fc0: $11 $1f $f1
	sbc  e                                           ; $5fc3: $9b
	pop  af                                          ; $5fc4: $f1
	ld   de, $ffff                                   ; $5fc5: $11 $ff $ff
	rst  $38                                         ; $5fc8: $ff
	and  c                                           ; $5fc9: $a1
	ld   de, $11e8                                   ; $5fca: $11 $e8 $11
	rra                                              ; $5fcd: $1f
	cp   $1d                                         ; $5fce: $fe $1d
	ret  c                                           ; $5fd0: $d8

	ld   de, $ff1f                                   ; $5fd1: $11 $1f $ff
	rst  $38                                         ; $5fd4: $ff
	ldh  a, [c]                                      ; $5fd5: $f2
	ld   de, $2159                                   ; $5fd6: $11 $59 $21
	ld   de, $1bff                                   ; $5fd9: $11 $ff $1b
	rst  JumpTable                                         ; $5fdc: $df
	ld   de, $ff17                                   ; $5fdd: $11 $17 $ff
	rst  $38                                         ; $5fe0: $ff
	rst  $38                                         ; $5fe1: $ff
	ld   de, $2116                                   ; $5fe2: $11 $16 $21
	ld   de, $f23f                                   ; $5fe5: $11 $3f $f2
	cp   $d1                                         ; $5fe8: $fe $d1
	ld   de, $efff                                   ; $5fea: $11 $ff $ef
	rst  $38                                         ; $5fed: $ff
	and  c                                           ; $5fee: $a1
	ld   de, $1131                                   ; $5fef: $11 $31 $11
	rra                                              ; $5ff2: $1f
	ei                                               ; $5ff3: $fb
	rst  JumpTable                                         ; $5ff4: $df
	push af                                          ; $5ff5: $f5
	ld   de, $ed3f                                   ; $5ff6: $11 $3f $ed
	rst  $38                                         ; $5ff9: $ff
	or   $11                                         ; $5ffa: $f6 $11
	ld   de, $1111                                   ; $5ffc: $11 $11 $11
	rst  $38                                         ; $5fff: $ff
	sbc  a                                           ; $6000: $9f
	rst  $38                                         ; $6001: $ff
	ld   de, $e818                                   ; $6002: $11 $18 $e8
	rst  $38                                         ; $6005: $ff
	rst  $38                                         ; $6006: $ff
	ld   b, c                                        ; $6007: $41
	ld   de, $1111                                   ; $6008: $11 $11 $11
	rst  $38                                         ; $600b: $ff
	rst  $38                                         ; $600c: $ff
	rst  $38                                         ; $600d: $ff
	or   c                                           ; $600e: $b1
	ld   [de], a                                     ; $600f: $12
	sub  [hl]                                        ; $6010: $96
	adc  a                                           ; $6011: $8f
	rst  $38                                         ; $6012: $ff
	push hl                                          ; $6013: $e5
	ld   de, $1111                                   ; $6014: $11 $11 $11
	sbc  a                                           ; $6017: $9f
	rst  $38                                         ; $6018: $ff
	rst  $38                                         ; $6019: $ff
	pop  af                                          ; $601a: $f1
	ld   de, $5f21                                   ; $601b: $11 $21 $5f
	rst  $38                                         ; $601e: $ff
	cp   $11                                         ; $601f: $fe $11
	ld   de, rAUD1LEN                                   ; $6021: $11 $11 $ff
	rst  $38                                         ; $6024: $ff
	rst  $38                                         ; $6025: $ff
	di                                               ; $6026: $f3
	ld   de, $2c11                                   ; $6027: $11 $11 $2c
	rst  $38                                         ; $602a: $ff
	rst  $38                                         ; $602b: $ff
	pop  hl                                          ; $602c: $e1
	ld   de, $1f11                                   ; $602d: $11 $11 $1f
	rst  $38                                         ; $6030: $ff
	rst  $38                                         ; $6031: $ff
	rst  $38                                         ; $6032: $ff
	inc  hl                                          ; $6033: $23
	ld   sp, $ff15                                   ; $6034: $31 $15 $ff
	rst  $38                                         ; $6037: $ff
	db   $fc                                         ; $6038: $fc
	ld   de, $1611                                   ; $6039: $11 $11 $16
	ld   hl, sp-$01                                  ; $603c: $f8 $ff
	rst  $38                                         ; $603e: $ff
	jp   z, $1192                                    ; $603f: $ca $92 $11

	ld   l, l                                        ; $6042: $6d
	rst  $28                                         ; $6043: $ef
	rst  $38                                         ; $6044: $ff
	and  c                                           ; $6045: $a1
	ld   de, $e811                                   ; $6046: $11 $11 $e8
	cp   a                                           ; $6049: $bf
	rst  $38                                         ; $604a: $ff
	rst  $38                                         ; $604b: $ff
	cp   $11                                         ; $604c: $fe $11
	daa                                              ; $604e: $27
	xor  b                                           ; $604f: $a8
	rst  $38                                         ; $6050: $ff
	push af                                          ; $6051: $f5
	ld   de, $1f11                                   ; $6052: $11 $11 $1f
	rra                                              ; $6055: $1f
	rst  $38                                         ; $6056: $ff
	cp   $ff                                         ; $6057: $fe $ff
	pop  af                                          ; $6059: $f1
	dec  d                                           ; $605a: $15
	or   a                                           ; $605b: $b7
	ld   a, a                                        ; $605c: $7f
	rst  $38                                         ; $605d: $ff
	ld   hl, $1811                                   ; $605e: $21 $11 $18
	pop  hl                                          ; $6061: $e1
	rst  $38                                         ; $6062: $ff
	rst  $38                                         ; $6063: $ff
	rst  JumpTable                                         ; $6064: $df
	db   $fd                                         ; $6065: $fd
	inc  de                                          ; $6066: $13
	sbc  h                                           ; $6067: $9c
	ld   [hl], $ff                                   ; $6068: $36 $ff
	pop  bc                                          ; $606a: $c1
	ld   de, $da11                                   ; $606b: $11 $11 $da
	rra                                              ; $606e: $1f
	rst  JumpTable                                         ; $606f: $df
	db   $fc                                         ; $6070: $fc
	rst  $38                                         ; $6071: $ff
	pop  bc                                          ; $6072: $c1
	ld   a, d                                        ; $6073: $7a
	pop  bc                                          ; $6074: $c1
	ld   a, a                                        ; $6075: $7f
	ld   hl, sp+$11                                  ; $6076: $f8 $11
	ld   de, $221f                                   ; $6078: $11 $1f $22
	db   $fd                                         ; $607b: $fd
	ei                                               ; $607c: $fb
	rst  JumpTable                                         ; $607d: $df
	ld   sp, hl                                      ; $607e: $f9
	ld   a, [hl-]                                    ; $607f: $3a
	db   $db                                         ; $6080: $db
	inc  e                                           ; $6081: $1c
	db   $fd                                         ; $6082: $fd
	ld   d, c                                        ; $6083: $51
	ld   de, $f111                                   ; $6084: $11 $11 $f1
	ld   a, [hl]                                     ; $6087: $7e
	rst  $38                                         ; $6088: $ff
	ld   a, a                                        ; $6089: $7f
	rst  $38                                         ; $608a: $ff
	ld   h, a                                        ; $608b: $67
	cp   [hl]                                        ; $608c: $be
	ld   [hl], c                                     ; $608d: $71
	rst  $38                                         ; $608e: $ff
	sub  d                                           ; $608f: $92
	ld   de, $5f11                                   ; $6090: $11 $11 $5f
	ld   a, [de]                                     ; $6093: $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6094: $cf
	push af                                          ; $6095: $f5
	rst  $38                                         ; $6096: $ff
	db   $f4                                         ; $6097: $f4
	cp   [hl]                                        ; $6098: $be
	push de                                          ; $6099: $d5
	cpl                                              ; $609a: $2f
	db   $f4                                         ; $609b: $f4
	ld   de, $1e11                                   ; $609c: $11 $11 $1e
	pop  de                                          ; $609f: $d1
	db   $fc                                         ; $60a0: $fc
	db   $fd                                         ; $60a1: $fd
	ld   c, a                                        ; $60a2: $4f
	ei                                               ; $60a3: $fb
	ld   a, $fd                                      ; $60a4: $3e $fd
	ld   c, c                                        ; $60a6: $49
	cp   $44                                         ; $60a7: $fe $44
	ld   d, c                                        ; $60a9: $51
	ld   de, $1ffa                                   ; $60aa: $11 $fa $1f
	rst  $38                                         ; $60ad: $ff
	jp   nz, Jump_0d0_64ff                           ; $60ae: $c2 $ff $64

	cp   $b5                                         ; $60b1: $fe $b5
	cp   a                                           ; $60b3: $bf
	and  d                                           ; $60b4: $a2

jr_0d0_60b5:
	ld   [hl], l                                     ; $60b5: $75
	ld   de, $611f                                   ; $60b6: $11 $1f $61
	cp   $f8                                         ; $60b9: $fe $f8
	cpl                                              ; $60bb: $2f
	db   $f4                                         ; $60bc: $f4
	ld   e, a                                        ; $60bd: $5f
	jp   c, $f77f                                    ; $60be: $da $7f $f7

	ld   c, d                                        ; $60c1: $4a
	ld   sp, $f111                                   ; $60c2: $31 $11 $f1
	rra                                              ; $60c5: $1f
	rst  JumpTable                                         ; $60c6: $df
	ld   b, [hl]                                     ; $60c7: $46
	rst  $38                                         ; $60c8: $ff
	add  hl, hl                                      ; $60c9: $29
	ld   hl, sp-$66                                  ; $60ca: $f8 $9a
	rst  $38                                         ; $60cc: $ff
	ld   h, a                                        ; $60cd: $67
	or   d                                           ; $60ce: $b2
	ld   de, $111f                                   ; $60cf: $11 $1f $11
	ei                                               ; $60d2: $fb
	ldh  a, [c]                                      ; $60d3: $f2
	rst  JumpTable                                         ; $60d4: $df
	or   d                                           ; $60d5: $b2
	rst  JumpTable                                         ; $60d6: $df
	ld   e, c                                        ; $60d7: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60d8: $cf
	ld   hl, sp-$55                                  ; $60d9: $f8 $ab
	ld   de, $f111                                   ; $60db: $11 $11 $f1
	rra                                              ; $60de: $1f
	xor  l                                           ; $60df: $ad
	cpl                                              ; $60e0: $2f
	ld   a, [$f44f]                                  ; $60e1: $fa $4f $f4
	adc  $ff                                         ; $60e4: $ce $ff
	cp   d                                           ; $60e6: $ba
	sub  c                                           ; $60e7: $91
	ld   de, $131f                                   ; $60e8: $11 $1f $13
	rst  $30                                         ; $60eb: $f7
	or   d                                           ; $60ec: $b2
	rst  $38                                         ; $60ed: $ff
	and  [hl]                                        ; $60ee: $a6
	rst  $38                                         ; $60ef: $ff
	ld   e, a                                        ; $60f0: $5f
	rst  $28                                         ; $60f1: $ef
	db   $fd                                         ; $60f2: $fd
	xor  c                                           ; $60f3: $a9
	ld   de, $c112                                   ; $60f4: $11 $12 $c1
	adc  a                                           ; $60f7: $8f
	ld   a, b                                        ; $60f8: $78
	ld   e, a                                        ; $60f9: $5f
	db   $eb                                         ; $60fa: $eb
	adc  a                                           ; $60fb: $8f
	rst  $10                                         ; $60fc: $d7
	rst  $38                                         ; $60fd: $ff
	rst  $38                                         ; $60fe: $ff
	jp   hl                                          ; $60ff: $e9


	sub  c                                           ; $6100: $91
	ld   de, $1c67                                   ; $6101: $11 $67 $1c
	and  $78                                         ; $6104: $e6 $78
	db   $fd                                         ; $6106: $fd
	rst  $10                                         ; $6107: $d7
	cp   $af                                         ; $6108: $fe $af
	rst  JumpTable                                         ; $610a: $df
	db   $fd                                         ; $610b: $fd
	sbc  c                                           ; $610c: $99
	ld   de, $2117                                   ; $610d: $11 $17 $21
	db   $eb                                         ; $6110: $eb
	ld   b, a                                        ; $6111: $47
	xor  h                                           ; $6112: $ac
	xor  $6f                                         ; $6113: $ee $6f
	ei                                               ; $6115: $fb
	rst  $28                                         ; $6116: $ef
	rst  $38                                         ; $6117: $ff
	reti                                             ; $6118: $d9


	sub  c                                           ; $6119: $91
	ld   de, $1d61                                   ; $611a: $11 $61 $1d
	sub  e                                           ; $611d: $93
	adc  b                                           ; $611e: $88
	cp   l                                           ; $611f: $bd
	push af                                          ; $6120: $f5
	rst  $28                                         ; $6121: $ef
	cp   [hl]                                        ; $6122: $be
	rst  $38                                         ; $6123: $ff
	rst  $38                                         ; $6124: $ff
	sbc  b                                           ; $6125: $98
	ld   hl, $3114                                   ; $6126: $21 $14 $31
	cp   b                                           ; $6129: $b8
	jr   z, jr_0d0_60b5                              ; $612a: $28 $89

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $612c: $cf
	ld   e, [hl]                                     ; $612d: $5e
	ei                                               ; $612e: $fb
	rst  $38                                         ; $612f: $ff
	rst  $38                                         ; $6130: $ff
	ld   a, [$1184]                                  ; $6131: $fa $84 $11
	dec  d                                           ; $6134: $15
	ld   d, $71                                      ; $6135: $16 $71
	ld   [hl], a                                     ; $6137: $77
	ld   a, d                                        ; $6138: $7a
	rst  $30                                         ; $6139: $f7
	cp   a                                           ; $613a: $bf
	cp   a                                           ; $613b: $bf
	rst  $38                                         ; $613c: $ff
	rst  $38                                         ; $613d: $ff
	cp   c                                           ; $613e: $b9
	ld   h, c                                        ; $613f: $61
	ld   de, $1861                                   ; $6140: $11 $61 $18
	ld   d, $75                                      ; $6143: $16 $75
	ld   a, [hl]                                     ; $6145: $7e
	sbc  b                                           ; $6146: $98
	ei                                               ; $6147: $fb
	rst  $28                                         ; $6148: $ef
	rst  $38                                         ; $6149: $ff
	cp   $a8                                         ; $614a: $fe $a8
	ld   sp, $1115                                   ; $614c: $31 $15 $11
	ld   h, c                                        ; $614f: $61
	scf                                              ; $6150: $37
	ld   b, l                                        ; $6151: $45
	cp   e                                           ; $6152: $bb
	ld   a, h                                        ; $6153: $7c
	call $ffff                                       ; $6154: $cd $ff $ff
	ei                                               ; $6157: $fb
	or   a                                           ; $6158: $b7
	ld   sp, $1213                                   ; $6159: $31 $13 $12
	ld   sp, $3653                                   ; $615c: $31 $53 $36
	xor  b                                           ; $615f: $a8
	sbc  l                                           ; $6160: $9d
	cp   [hl]                                        ; $6161: $be
	rst  $38                                         ; $6162: $ff
	rst  $38                                         ; $6163: $ff
	db   $fd                                         ; $6164: $fd
	or   a                                           ; $6165: $b7
	ld   b, c                                        ; $6166: $41
	inc  hl                                          ; $6167: $23
	ld   [de], a                                     ; $6168: $12
	ld   [hl+], a                                    ; $6169: $22
	ld   b, d                                        ; $616a: $42
	ld   b, [hl]                                     ; $616b: $46
	add  a                                           ; $616c: $87
	cp   e                                           ; $616d: $bb
	cp   [hl]                                        ; $616e: $be
	rst  $38                                         ; $616f: $ff
	rst  $38                                         ; $6170: $ff
	cp   $b8                                         ; $6171: $fe $b8
	ld   h, d                                        ; $6173: $62
	inc  sp                                          ; $6174: $33
	inc  de                                          ; $6175: $13
	ld   de, $3422                                   ; $6176: $11 $22 $34
	ld   a, b                                        ; $6179: $78
	xor  c                                           ; $617a: $a9
	xor  l                                           ; $617b: $ad
	rst  $28                                         ; $617c: $ef
	rst  $38                                         ; $617d: $ff
	rst  $38                                         ; $617e: $ff
	ld   [$3273], a                                  ; $617f: $ea $73 $32
	ld   [de], a                                     ; $6182: $12
	ld   de, $2311                                   ; $6183: $11 $11 $23
	ld   [hl], a                                     ; $6186: $77
	sbc  c                                           ; $6187: $99
	cp   l                                           ; $6188: $bd
	rst  $38                                         ; $6189: $ff
	rst  $38                                         ; $618a: $ff
	rst  $38                                         ; $618b: $ff
	db   $fc                                         ; $618c: $fc
	sub  h                                           ; $618d: $94
	ld   [hl+], a                                    ; $618e: $22
	ld   de, $1111                                   ; $618f: $11 $11 $11
	inc  h                                           ; $6192: $24
	ld   b, [hl]                                     ; $6193: $46
	sbc  d                                           ; $6194: $9a
	xor  h                                           ; $6195: $ac
	rst  $28                                         ; $6196: $ef
	rst  $38                                         ; $6197: $ff
	rst  $38                                         ; $6198: $ff
	db   $fd                                         ; $6199: $fd
	and  l                                           ; $619a: $a5
	ld   hl, $1111                                   ; $619b: $21 $11 $11
	ld   de, $3623                                   ; $619e: $11 $23 $36
	adc  c                                           ; $61a1: $89
	sbc  h                                           ; $61a2: $9c
	rst  JumpTable                                         ; $61a3: $df
	rst  $38                                         ; $61a4: $ff
	rst  $38                                         ; $61a5: $ff
	rst  $38                                         ; $61a6: $ff
	rst  ToBoot                                         ; $61a7: $c7
	ld   sp, $1111                                   ; $61a8: $31 $11 $11
	ld   de, $4412                                   ; $61ab: $11 $12 $44
	ld   a, b                                        ; $61ae: $78
	sbc  h                                           ; $61af: $9c
	adc  $ff                                         ; $61b0: $ce $ff
	rst  $38                                         ; $61b2: $ff
	rst  $38                                         ; $61b3: $ff
	jp   hl                                          ; $61b4: $e9


	ld   d, c                                        ; $61b5: $51
	ld   de, $1111                                   ; $61b6: $11 $11 $11
	ld   [de], a                                     ; $61b9: $12
	inc  [hl]                                        ; $61ba: $34
	ld   h, a                                        ; $61bb: $67
	sbc  d                                           ; $61bc: $9a
	call $ffff                                       ; $61bd: $cd $ff $ff
	rst  $38                                         ; $61c0: $ff
	db   $eb                                         ; $61c1: $eb
	ld   [hl], e                                     ; $61c2: $73
	ld   de, $1111                                   ; $61c3: $11 $11 $11
	ld   de, $5723                                   ; $61c6: $11 $23 $57
	adc  c                                           ; $61c9: $89
	cp   l                                           ; $61ca: $bd
	rst  $38                                         ; $61cb: $ff
	rst  $38                                         ; $61cc: $ff
	rst  $38                                         ; $61cd: $ff
	db   $fc                                         ; $61ce: $fc
	sub  [hl]                                        ; $61cf: $96
	ld   de, $2111                                   ; $61d0: $11 $11 $21
	ld   de, $4613                                   ; $61d3: $11 $13 $46
	sbc  c                                           ; $61d6: $99
	xor  h                                           ; $61d7: $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61d8: $cf
	rst  $38                                         ; $61d9: $ff
	rst  $38                                         ; $61da: $ff
	cp   $c9                                         ; $61db: $fe $c9
	ld   d, c                                        ; $61dd: $51
	ld   de, $1211                                   ; $61de: $11 $11 $12
	ld   [de], a                                     ; $61e1: $12
	ld   b, l                                        ; $61e2: $45
	adc  c                                           ; $61e3: $89
	cp   e                                           ; $61e4: $bb
	call c, $ffff                                    ; $61e5: $dc $ff $ff
	rst  $38                                         ; $61e8: $ff
	jp   z, $1162                                    ; $61e9: $ca $62 $11

	ld   de, $2221                                   ; $61ec: $11 $21 $22
	ld   d, [hl]                                     ; $61ef: $56
	adc  d                                           ; $61f0: $8a
	cp   e                                           ; $61f1: $bb
	call z, $ffcf                                    ; $61f2: $cc $cf $ff
	rst  $38                                         ; $61f5: $ff
	ld   [$1163], a                                  ; $61f6: $ea $63 $11
	ld   de, $1312                                   ; $61f9: $11 $12 $13
	scf                                              ; $61fc: $37
	sbc  d                                           ; $61fd: $9a
	call z, wCurrAudChannelTimes5                                    ; $61fe: $cc $ab $cd
	rst  $38                                         ; $6201: $ff
	rst  $38                                         ; $6202: $ff
	db   $fd                                         ; $6203: $fd
	sub  l                                           ; $6204: $95
	ld   de, $1411                                   ; $6205: $11 $11 $14
	ld   [hl+], a                                    ; $6208: $22
	inc  sp                                          ; $6209: $33
	sbc  e                                           ; $620a: $9b
	db   $dd                                         ; $620b: $dd
	db   $db                                         ; $620c: $db
	cp   e                                           ; $620d: $bb
	rst  $38                                         ; $620e: $ff
	rst  $38                                         ; $620f: $ff
	cp   $a6                                         ; $6210: $fe $a6
	ld   hl, $1111                                   ; $6212: $21 $11 $11
	ld   [hl], h                                     ; $6215: $74
	ld   d, e                                        ; $6216: $53
	ld   c, b                                        ; $6217: $48
	cp   a                                           ; $6218: $bf
	cp   $9b                                         ; $6219: $fe $9b
	xor  a                                           ; $621b: $af
	rst  $38                                         ; $621c: $ff
	rst  $38                                         ; $621d: $ff
	add  $31                                         ; $621e: $c6 $31
	ld   de, $1711                                   ; $6220: $11 $11 $17
	ld   e, b                                        ; $6223: $58
	ld   b, [hl]                                     ; $6224: $46
	adc  l                                           ; $6225: $8d
	rst  $38                                         ; $6226: $ff
	ld   a, [$ffa9]                                  ; $6227: $fa $a9 $ff
	rst  $38                                         ; $622a: $ff
	ei                                               ; $622b: $fb
	ld   b, c                                        ; $622c: $41
	ld   de, $1411                                   ; $622d: $11 $11 $14
	ld   [hl], l                                     ; $6230: $75
	sub  h                                           ; $6231: $94
	sbc  d                                           ; $6232: $9a
	rst  $28                                         ; $6233: $ef
	cp   $ab                                         ; $6234: $fe $ab
	xor  a                                           ; $6236: $af
	rst  $38                                         ; $6237: $ff
	rst  $38                                         ; $6238: $ff
	and  d                                           ; $6239: $a2
	ld   de, $1111                                   ; $623a: $11 $11 $11
	add  a                                           ; $623d: $87
	ld   a, c                                        ; $623e: $79
	ld   c, d                                        ; $623f: $4a
	xor  a                                           ; $6240: $af
	rst  $38                                         ; $6241: $ff
	jp   z, $ff99                                    ; $6242: $ca $99 $ff

	rst  $38                                         ; $6245: $ff
	ld   hl, sp+$11                                  ; $6246: $f8 $11
	ld   de, $1b11                                   ; $6248: $11 $11 $1b
	adc  c                                           ; $624b: $89
	sub  l                                           ; $624c: $95
	cp   e                                           ; $624d: $bb
	rst  $38                                         ; $624e: $ff
	ei                                               ; $624f: $fb
	and  a                                           ; $6250: $a7
	xor  a                                           ; $6251: $af
	rst  $38                                         ; $6252: $ff
	rst  $38                                         ; $6253: $ff
	ld   h, c                                        ; $6254: $61
	ld   de, $1211                                   ; $6255: $11 $11 $12
	ld   hl, sp-$38                                  ; $6258: $f8 $c8
	ld   l, h                                        ; $625a: $6c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $625b: $cf
	rst  $38                                         ; $625c: $ff
	sbc  d                                           ; $625d: $9a
	ld   e, d                                        ; $625e: $5a
	rst  $38                                         ; $625f: $ff
	rst  $38                                         ; $6260: $ff
	push af                                          ; $6261: $f5
	ld   de, $1111                                   ; $6262: $11 $11 $11
	ld   c, a                                        ; $6265: $4f
	cp   l                                           ; $6266: $bd
	sub  [hl]                                        ; $6267: $96
	call z, $f9ff                                    ; $6268: $cc $ff $f9
	sub  l                                           ; $626b: $95
	sbc  a                                           ; $626c: $9f
	rst  $38                                         ; $626d: $ff
	rst  $38                                         ; $626e: $ff
	ld   b, c                                        ; $626f: $41
	ld   de, $1811                                   ; $6270: $11 $11 $18
	db   $fd                                         ; $6273: $fd
	ld   a, [$bf6c]                                  ; $6274: $fa $6c $bf
	rst  $38                                         ; $6277: $ff
	xor  c                                           ; $6278: $a9
	ld   c, b                                        ; $6279: $48
	rst  $38                                         ; $627a: $ff
	rst  $38                                         ; $627b: $ff
	di                                               ; $627c: $f3
	ld   de, $1111                                   ; $627d: $11 $11 $11
	xor  a                                           ; $6280: $af
	rst  $38                                         ; $6281: $ff
	and  l                                           ; $6282: $a5
	xor  c                                           ; $6283: $a9
	rst  $38                                         ; $6284: $ff
	ld   a, [$6f94]                                  ; $6285: $fa $94 $6f
	rst  $38                                         ; $6288: $ff
	rst  $38                                         ; $6289: $ff
	ld   b, c                                        ; $628a: $41
	ld   de, $1c11                                   ; $628b: $11 $11 $1c
	rst  $38                                         ; $628e: $ff
	db   $fc                                         ; $628f: $fc
	add  hl, sp                                      ; $6290: $39
	ld   a, a                                        ; $6291: $7f
	rst  $38                                         ; $6292: $ff
	ret                                              ; $6293: $c9


Call_0d0_6294:
	ld   b, h                                        ; $6294: $44
	rst  $38                                         ; $6295: $ff
	rst  $38                                         ; $6296: $ff
	rst  $30                                         ; $6297: $f7
	ld   de, $1111                                   ; $6298: $11 $11 $11
	cp   a                                           ; $629b: $bf
	rst  $38                                         ; $629c: $ff
	di                                               ; $629d: $f3
	ld   h, l                                        ; $629e: $65
	cp   a                                           ; $629f: $bf
	rst  $38                                         ; $62a0: $ff
	and  [hl]                                        ; $62a1: $a6
	dec  de                                          ; $62a2: $1b
	rst  $38                                         ; $62a3: $ff
	rst  $38                                         ; $62a4: $ff
	pop  bc                                          ; $62a5: $c1
	ld   de, $1611                                   ; $62a6: $11 $11 $16
	rst  $38                                         ; $62a9: $ff
	rst  $38                                         ; $62aa: $ff
	ld   h, h                                        ; $62ab: $64
	ld   b, l                                        ; $62ac: $45
	rst  $38                                         ; $62ad: $ff
	db   $fd                                         ; $62ae: $fd
	sub  d                                           ; $62af: $92
	ld   l, a                                        ; $62b0: $6f
	rst  $38                                         ; $62b1: $ff
	rst  $38                                         ; $62b2: $ff
	ld   hl, $1111                                   ; $62b3: $21 $11 $11
	cpl                                              ; $62b6: $2f
	rst  $38                                         ; $62b7: $ff
	rst  $38                                         ; $62b8: $ff

Call_0d0_62b9:
	ld   [de], a                                     ; $62b9: $12
	dec  de                                          ; $62ba: $1b
	rst  $38                                         ; $62bb: $ff
	db   $fc                                         ; $62bc: $fc
	ld   h, c                                        ; $62bd: $61
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62be: $cf
	rst  $38                                         ; $62bf: $ff
	db   $fc                                         ; $62c0: $fc
	ld   de, $1111                                   ; $62c1: $11 $11 $11
	sbc  a                                           ; $62c4: $9f
	rst  $38                                         ; $62c5: $ff
	rst  $30                                         ; $62c6: $f7
	ld   de, $ff1d                                   ; $62c7: $11 $1d $ff
	db   $fd                                         ; $62ca: $fd
	inc  sp                                          ; $62cb: $33
	rst  $28                                         ; $62cc: $ef
	rst  $38                                         ; $62cd: $ff
	rst  $30                                         ; $62ce: $f7
	ld   de, $1111                                   ; $62cf: $11 $11 $11
	rst  $38                                         ; $62d2: $ff
	rst  $38                                         ; $62d3: $ff
	pop  af                                          ; $62d4: $f1
	ld   de, $ff2e                                   ; $62d5: $11 $2e $ff
	db   $fc                                         ; $62d8: $fc
	dec  d                                           ; $62d9: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62da: $cf
	rst  $38                                         ; $62db: $ff
	di                                               ; $62dc: $f3
	ld   de, $1111                                   ; $62dd: $11 $11 $11
	rst  $38                                         ; $62e0: $ff
	rst  $38                                         ; $62e1: $ff
	pop  af                                          ; $62e2: $f1
	ld   de, $ff2d                                   ; $62e3: $11 $2d $ff
	db   $fc                                         ; $62e6: $fc
	rla                                              ; $62e7: $17
	cp   a                                           ; $62e8: $bf
	rst  $38                                         ; $62e9: $ff
	db   $f4                                         ; $62ea: $f4
	ld   de, $1111                                   ; $62eb: $11 $11 $11
	rst  $38                                         ; $62ee: $ff
	rst  $38                                         ; $62ef: $ff
	pop  af                                          ; $62f0: $f1
	ld   de, $ff1c                                   ; $62f1: $11 $1c $ff
	cp   $16                                         ; $62f4: $fe $16
	cp   a                                           ; $62f6: $bf
	rst  $38                                         ; $62f7: $ff
	ld   hl, sp+$11                                  ; $62f8: $f8 $11
	ld   de, $df11                                   ; $62fa: $11 $11 $df
	rst  $38                                         ; $62fd: $ff
	db   $f4                                         ; $62fe: $f4
	ld   de, $ff19                                   ; $62ff: $11 $19 $ff
	rst  $38                                         ; $6302: $ff
	ld   b, h                                        ; $6303: $44
	xor  h                                           ; $6304: $ac
	rst  $38                                         ; $6305: $ff
	cp   $11                                         ; $6306: $fe $11
	ld   de, $6f11                                   ; $6308: $11 $11 $6f
	rst  $38                                         ; $630b: $ff
	ei                                               ; $630c: $fb
	ld   de, $df16                                   ; $630d: $11 $16 $df
	rst  $38                                         ; $6310: $ff
	sub  c                                           ; $6311: $91
	sbc  b                                           ; $6312: $98
	rst  $38                                         ; $6313: $ff
	rst  $38                                         ; $6314: $ff
	ld   de, $1111                                   ; $6315: $11 $11 $11
	rra                                              ; $6318: $1f
	rst  $38                                         ; $6319: $ff
	rst  $38                                         ; $631a: $ff
	ld   sp, $9f12                                   ; $631b: $31 $12 $9f
	rst  $38                                         ; $631e: $ff
	pop  de                                          ; $631f: $d1
	ld   h, a                                        ; $6320: $67
	rst  $28                                         ; $6321: $ef
	rst  $38                                         ; $6322: $ff
	pop  bc                                          ; $6323: $c1
	ld   de, $1711                                   ; $6324: $11 $11 $17
	rst  $38                                         ; $6327: $ff
	rst  $38                                         ; $6328: $ff
	and  h                                           ; $6329: $a4
	ld   de, $ff8e                                   ; $632a: $11 $8e $ff
	push af                                          ; $632d: $f5
	ld   d, $8f                                      ; $632e: $16 $8f
	rst  $38                                         ; $6330: $ff
	push af                                          ; $6331: $f5
	ld   de, $1111                                   ; $6332: $11 $11 $11
	rst  $38                                         ; $6335: $ff
	rst  $38                                         ; $6336: $ff
	rst  $30                                         ; $6337: $f7
	ld   sp, $ff5b                                   ; $6338: $31 $5b $ff
	db   $fc                                         ; $633b: $fc
	ld   [de], a                                     ; $633c: $12
	ld   l, h                                        ; $633d: $6c
	rst  $38                                         ; $633e: $ff
	rst  $38                                         ; $633f: $ff
	ld   de, $1111                                   ; $6340: $11 $11 $11
	rra                                              ; $6343: $1f
	rst  $38                                         ; $6344: $ff
	db   $fd                                         ; $6345: $fd
	ld   [hl], c                                     ; $6346: $71
	ld   a, [de]                                     ; $6347: $1a
	rst  $38                                         ; $6348: $ff
	rst  $38                                         ; $6349: $ff
	add  c                                           ; $634a: $81
	ld   b, l                                        ; $634b: $45
	rst  $38                                         ; $634c: $ff
	rst  $38                                         ; $634d: $ff
	pop  de                                          ; $634e: $d1
	ld   de, $1511                                   ; $634f: $11 $11 $15
	rst  $38                                         ; $6352: $ff
	rst  $38                                         ; $6353: $ff
	sub  l                                           ; $6354: $95
	inc  d                                           ; $6355: $14
	rst  JumpTable                                         ; $6356: $df
	rst  $38                                         ; $6357: $ff
	or   $14                                         ; $6358: $f6 $14
	ld   l, a                                        ; $635a: $6f
	rst  $38                                         ; $635b: $ff
	ld   sp, hl                                      ; $635c: $f9
	ld   de, $1111                                   ; $635d: $11 $11 $11
	ld   a, a                                        ; $6360: $7f
	rst  $38                                         ; $6361: $ff
	push af                                          ; $6362: $f5
	ld   b, c                                        ; $6363: $41
	ld   l, [hl]                                     ; $6364: $6e
	rst  $38                                         ; $6365: $ff
	rst  $38                                         ; $6366: $ff
	add  e                                           ; $6367: $83
	ld   d, [hl]                                     ; $6368: $56
	rst  $38                                         ; $6369: $ff
	rst  $38                                         ; $636a: $ff
	add  c                                           ; $636b: $81
	ld   de, $1611                                   ; $636c: $11 $11 $16
	rst  $38                                         ; $636f: $ff
	db   $fd                                         ; $6370: $fd
	ld   sp, $df13                                   ; $6371: $31 $13 $df
	rst  $38                                         ; $6374: $ff
	db   $fc                                         ; $6375: $fc
	ld   h, a                                        ; $6376: $67
	ld   a, h                                        ; $6377: $7c
	rst  $38                                         ; $6378: $ff
	ld   a, [$1121]                                  ; $6379: $fa $21 $11
	ld   de, $fc3c                                   ; $637c: $11 $3c $fc
	or   l                                           ; $637f: $b5
	ld   de, $ef17                                   ; $6380: $11 $17 $ef
	rst  $38                                         ; $6383: $ff
	ld   a, [$af87]                                  ; $6384: $fa $87 $af
	rst  $38                                         ; $6387: $ff
	sub  $31                                         ; $6388: $d6 $31
	ld   de, $5b12                                   ; $638a: $11 $12 $5b
	ret                                              ; $638d: $c9


	add  d                                           ; $638e: $82
	ld   de, $df19                                   ; $638f: $11 $19 $df
	rst  $38                                         ; $6392: $ff
	reti                                             ; $6393: $d9


	adc  d                                           ; $6394: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6395: $cf
	rst  $38                                         ; $6396: $ff
	rst  $10                                         ; $6397: $d7
	ld   [hl-], a                                    ; $6398: $32
	ld   de, $5912                                   ; $6399: $11 $12 $59
	or   a                                           ; $639c: $b7
	ld   [hl], d                                     ; $639d: $72
	ld   de, $bf16                                   ; $639e: $11 $16 $bf
	rst  $38                                         ; $63a1: $ff
	jp   c, $cf9a                                    ; $63a2: $da $9a $cf

	rst  $38                                         ; $63a5: $ff
	jp   hl                                          ; $63a6: $e9


	ld   h, h                                        ; $63a7: $64
	ld   [hl-], a                                    ; $63a8: $32
	ld   de, $b946                                   ; $63a9: $11 $46 $b9
	ld   h, [hl]                                     ; $63ac: $66
	ld   de, $9c11                                   ; $63ad: $11 $11 $9c
	rst  $38                                         ; $63b0: $ff
	res  1, d                                        ; $63b1: $cb $8a
	cp   [hl]                                        ; $63b3: $be
	rst  $38                                         ; $63b4: $ff
	ei                                               ; $63b5: $fb
	halt                                             ; $63b6: $76
	ld   b, h                                        ; $63b7: $44
	ld   de, $7c25                                   ; $63b8: $11 $25 $7c
	halt                                             ; $63bb: $76
	ld   b, c                                        ; $63bc: $41
	ld   de, $cf29                                   ; $63bd: $11 $29 $cf
	db   $db                                         ; $63c0: $db
	xor  b                                           ; $63c1: $a8
	xor  l                                           ; $63c2: $ad
	rst  $38                                         ; $63c3: $ff
	rst  $38                                         ; $63c4: $ff
	and  a                                           ; $63c5: $a7
	ld   d, h                                        ; $63c6: $54
	ld   b, c                                        ; $63c7: $41
	inc  de                                          ; $63c8: $13
	ld   e, b                                        ; $63c9: $58
	rst  ToBoot                                         ; $63ca: $c7
	ld   [hl], h                                     ; $63cb: $74
	ld   de, $9c13                                   ; $63cc: $11 $13 $9c
	db   $fc                                         ; $63cf: $fc
	cp   d                                           ; $63d0: $ba
	sbc  e                                           ; $63d1: $9b
	rst  JumpTable                                         ; $63d2: $df
	rst  $38                                         ; $63d3: $ff
	ld   a, [$4464]                                  ; $63d4: $fa $64 $44
	ld   de, $7b35                                   ; $63d7: $11 $35 $7b
	ld   [hl], a                                     ; $63da: $77
	ld   b, c                                        ; $63db: $41
	ld   de, $cf2a                                   ; $63dc: $11 $2a $cf
	db   $db                                         ; $63df: $db
	cp   c                                           ; $63e0: $b9
	call $ffff                                       ; $63e1: $cd $ff $ff
	sub  l                                           ; $63e4: $95
	ld   b, e                                        ; $63e5: $43
	ld   sp, $4612                                   ; $63e6: $31 $12 $46
	rst  ToBoot                                         ; $63e9: $c7
	ld   [hl], l                                     ; $63ea: $75
	ld   de, $bd12                                   ; $63eb: $11 $12 $bd
	cp   $cb                                         ; $63ee: $fe $cb
	sbc  e                                           ; $63f0: $9b
	rst  JumpTable                                         ; $63f1: $df
	rst  $38                                         ; $63f2: $ff
	ld   sp, hl                                      ; $63f3: $f9
	ld   b, e                                        ; $63f4: $43
	ld   [hl-], a                                    ; $63f5: $32
	ld   de, $7c13                                   ; $63f6: $11 $13 $7c
	adc  b                                           ; $63f9: $88
	ld   d, c                                        ; $63fa: $51
	ld   de, $ff4c                                   ; $63fb: $11 $4c $ff
	db   $fd                                         ; $63fe: $fd
	cp   c                                           ; $63ff: $b9
	cp   l                                           ; $6400: $bd
	rst  $38                                         ; $6401: $ff
	rst  $38                                         ; $6402: $ff
	add  e                                           ; $6403: $83
	ld   [hl-], a                                    ; $6404: $32
	ld   de, $2811                                   ; $6405: $11 $11 $28
	add  sp, -$5b                                    ; $6408: $e8 $a5
	ld   de, $ff17                                   ; $640a: $11 $17 $ff
	rst  $38                                         ; $640d: $ff
	cp   b                                           ; $640e: $b8
	ld   l, c                                        ; $640f: $69
	cp   a                                           ; $6410: $bf
	rst  $38                                         ; $6411: $ff
	ld   hl, sp+$21                                  ; $6412: $f8 $21
	ld   de, $0211                                   ; $6414: $11 $11 $02
	adc  $9d                                         ; $6417: $ce $9d
	ld   b, c                                        ; $6419: $41
	ld   b, d                                        ; $641a: $42
	rst  JumpTable                                         ; $641b: $df
	rst  $38                                         ; $641c: $ff
	ret  c                                           ; $641d: $d8

	ld   b, l                                        ; $641e: $45
	sbc  l                                           ; $641f: $9d
	rst  $38                                         ; $6420: $ff
	rst  $38                                         ; $6421: $ff
	ld   h, c                                        ; $6422: $61
	ld   de, $1111                                   ; $6423: $11 $11 $11
	ld   l, a                                        ; $6426: $6f
	rst  $38                                         ; $6427: $ff
	pop  af                                          ; $6428: $f1
	inc  d                                           ; $6429: $14
	ld   c, a                                        ; $642a: $4f
	rst  $38                                         ; $642b: $ff
	or   $11                                         ; $642c: $f6 $11
	ld   e, e                                        ; $642e: $5b
	rst  $38                                         ; $642f: $ff
	rst  $38                                         ; $6430: $ff
	pop  de                                          ; $6431: $d1
	ld   de, $1111                                   ; $6432: $11 $11 $11
	ccf                                              ; $6435: $3f
	rst  $38                                         ; $6436: $ff
	db   $fc                                         ; $6437: $fc
	jr   jr_0d0_6486                                 ; $6438: $18 $4c

	rst  $38                                         ; $643a: $ff
	push de                                          ; $643b: $d5
	ld   de, $ff3c                                   ; $643c: $11 $3c $ff
	rst  $38                                         ; $643f: $ff
	ldh  a, [c]                                      ; $6440: $f2
	ld   de, $1111                                   ; $6441: $11 $11 $11
	ccf                                              ; $6444: $3f
	rst  $38                                         ; $6445: $ff
	rst  $38                                         ; $6446: $ff
	inc  de                                          ; $6447: $13
	ld   d, l                                        ; $6448: $55
	rst  $38                                         ; $6449: $ff
	add  $11                                         ; $644a: $c6 $11
	ld   e, $ff                                      ; $644c: $1e $ff
	rst  $38                                         ; $644e: $ff
	push af                                          ; $644f: $f5
	ld   de, $1111                                   ; $6450: $11 $11 $11
	inc  l                                           ; $6453: $2c
	rst  $38                                         ; $6454: $ff
	rst  $38                                         ; $6455: $ff
	ld   hl, $cf21                                   ; $6456: $21 $21 $cf
	ld   hl, sp+$21                                  ; $6459: $f8 $21
	dec  e                                           ; $645b: $1d
	rst  $38                                         ; $645c: $ff
	rst  $38                                         ; $645d: $ff
	or   $11                                         ; $645e: $f6 $11
	ld   de, $1a11                                   ; $6460: $11 $11 $1a
	rst  $38                                         ; $6463: $ff
	rst  $38                                         ; $6464: $ff
	or   c                                           ; $6465: $b1
	ld   de, $fe6f                                   ; $6466: $11 $6f $fe
	ld   b, c                                        ; $6469: $41
	ld   a, [de]                                     ; $646a: $1a
	rst  $38                                         ; $646b: $ff
	rst  $38                                         ; $646c: $ff
	and  h                                           ; $646d: $a4
	ld   de, $1111                                   ; $646e: $11 $11 $11
	ld   a, [de]                                     ; $6471: $1a
	rst  $38                                         ; $6472: $ff
	rst  $38                                         ; $6473: $ff
	pop  bc                                          ; $6474: $c1
	ld   de, $ff4f                                   ; $6475: $11 $4f $ff
	ld   d, d                                        ; $6478: $52
	inc  l                                           ; $6479: $2c
	rst  $38                                         ; $647a: $ff
	rst  $38                                         ; $647b: $ff
	ld   de, $1111                                   ; $647c: $11 $11 $11
	ld   de, $ff4f                                   ; $647f: $11 $4f $ff
	rst  $38                                         ; $6482: $ff
	ld   de, rAUD1ENV                                   ; $6483: $11 $12 $ff

jr_0d0_6486:
	rst  $30                                         ; $6486: $f7
	ld   [de], a                                     ; $6487: $12
	ld   e, a                                        ; $6488: $5f
	rst  $38                                         ; $6489: $ff
	pop  af                                          ; $648a: $f1
	ld   d, $52                                      ; $648b: $16 $52
	ld   de, rAUD1LEN                                   ; $648d: $11 $11 $ff
	rst  $38                                         ; $6490: $ff
	pop  bc                                          ; $6491: $c1
	ld   de, $ff1f                                   ; $6492: $11 $1f $ff
	pop  hl                                          ; $6495: $e1
	inc  e                                           ; $6496: $1c
	rst  $38                                         ; $6497: $ff
	rst  $30                                         ; $6498: $f7
	ld   sp, $b17f                                   ; $6499: $31 $7f $b1
	ld   de, $ff15                                   ; $649c: $11 $15 $ff
	rst  $38                                         ; $649f: $ff
	ld   de, rAUD1LEN                                   ; $64a0: $11 $11 $ff
	ld   sp, hl                                      ; $64a3: $f9
	ld   de, $ffaf                                   ; $64a4: $11 $af $ff
	ld   [hl], c                                     ; $64a7: $71
	inc  d                                           ; $64a8: $14
	rst  $38                                         ; $64a9: $ff
	sub  c                                           ; $64aa: $91

Call_0d0_64ab:
	ld   de, $ff1f                                   ; $64ab: $11 $1f $ff
	db   $f4                                         ; $64ae: $f4
	ld   de, $ff1c                                   ; $64af: $11 $1c $ff
	pop  de                                          ; $64b2: $d1
	ld   de, $ffff                                   ; $64b3: $11 $ff $ff
	ld   de, $ff7f                                   ; $64b6: $11 $7f $ff

Call_0d0_64b9:
	ld   de, $1f11                                   ; $64b9: $11 $11 $1f
	rst  $38                                         ; $64bc: $ff
	di                                               ; $64bd: $f3
	ld   de, $ff1b                                   ; $64be: $11 $1b $ff
	ld   b, c                                        ; $64c1: $41
	sbc  d                                           ; $64c2: $9a
	rst  $38                                         ; $64c3: $ff
	rst  $30                                         ; $64c4: $f7
	ld   de, $ffff                                   ; $64c5: $11 $ff $ff
	ld   de, $1f11                                   ; $64c8: $11 $11 $1f
	rst  $38                                         ; $64cb: $ff
	db   $fd                                         ; $64cc: $fd
	ld   de, $be14                                   ; $64cd: $11 $14 $be
	ld   h, c                                        ; $64d0: $61
	db   $dd                                         ; $64d1: $dd
	rst  $38                                         ; $64d2: $ff
	call nc, rAUD1LEN                                   ; $64d3: $d4 $11 $ff
	rst  $38                                         ; $64d6: $ff
	ld   de, $1411                                   ; $64d7: $11 $11 $14
	rst  $38                                         ; $64da: $ff
	rst  $38                                         ; $64db: $ff
	ld   de, $ab11                                   ; $64dc: $11 $11 $ab
	or   c                                           ; $64df: $b1
	xor  a                                           ; $64e0: $af
	rst  $38                                         ; $64e1: $ff
	pop  af                                          ; $64e2: $f1
	ld   de, $ffcf                                   ; $64e3: $11 $cf $ff
	ld   b, c                                        ; $64e6: $41
	ld   de, rAUD1LEN                                   ; $64e7: $11 $11 $ff
	rst  $38                                         ; $64ea: $ff
	ld   [hl], c                                     ; $64eb: $71
	ld   de, $c168                                   ; $64ec: $11 $68 $c1
	rra                                              ; $64ef: $1f
	rst  $38                                         ; $64f0: $ff
	push af                                          ; $64f1: $f5
	ld   de, $ff4f                                   ; $64f2: $11 $4f $ff
	and  c                                           ; $64f5: $a1
	ld   de, $1f11                                   ; $64f6: $11 $11 $1f
	rst  $38                                         ; $64f9: $ff
	pop  af                                          ; $64fa: $f1
	ld   de, $8219                                   ; $64fb: $11 $19 $82
	dec  de                                          ; $64fe: $1b

Jump_0d0_64ff:
	rst  $38                                         ; $64ff: $ff
	cp   $11                                         ; $6500: $fe $11
	ld   c, a                                        ; $6502: $4f
	rst  $38                                         ; $6503: $ff
	call nc, $1111                                   ; $6504: $d4 $11 $11
	rra                                              ; $6507: $1f
	rst  $38                                         ; $6508: $ff
	rst  $38                                         ; $6509: $ff
	ld   de, $541a                                   ; $650a: $11 $1a $54
	ld   de, $ffff                                   ; $650d: $11 $ff $ff
	ld   hl, $ff1e                                   ; $6510: $21 $1e $ff
	ld   a, [$1151]                                  ; $6513: $fa $51 $11
	ld   de, $ffff                                   ; $6516: $11 $ff $ff
	ld   de, $c117                                   ; $6519: $11 $17 $c1
	ld   de, $ff7f                                   ; $651c: $11 $7f $ff
	sub  c                                           ; $651f: $91
	dec  e                                           ; $6520: $1d
	rst  $38                                         ; $6521: $ff
	db   $fd                                         ; $6522: $fd
	ld   hl, sp+$11                                  ; $6523: $f8 $11
	ld   de, $ff1f                                   ; $6525: $11 $1f $ff
	pop  af                                          ; $6528: $f1
	add  hl, de                                      ; $6529: $19
	pop  af                                          ; $652a: $f1
	ld   de, $ff1f                                   ; $652b: $11 $1f $ff
	push af                                          ; $652e: $f5
	ld   [hl], h                                     ; $652f: $74
	db   $fc                                         ; $6530: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6531: $cf
	rst  $38                                         ; $6532: $ff
	ld   d, c                                        ; $6533: $51
	ld   de, rAUD1LEN                                   ; $6534: $11 $11 $ff
	rst  $38                                         ; $6537: $ff
	add  hl, de                                      ; $6538: $19
	cp   h                                           ; $6539: $bc
	ld   de, rAUD1LEN                                   ; $653a: $11 $11 $ff
	cp   $bf                                         ; $653d: $fe $bf
	ld   l, a                                        ; $653f: $6f
	xor  e                                           ; $6540: $ab
	rst  $38                                         ; $6541: $ff
	pop  hl                                          ; $6542: $e1
	ld   de, $1f11                                   ; $6543: $11 $11 $1f
	rst  $38                                         ; $6546: $ff
	pop  af                                          ; $6547: $f1
	db   $eb                                         ; $6548: $eb
	pop  bc                                          ; $6549: $c1
	ld   de, $ff1f                                   ; $654a: $11 $1f $ff
	xor  $fb                                         ; $654d: $ee $fb
	db   $eb                                         ; $654f: $eb
	rst  $38                                         ; $6550: $ff
	ei                                               ; $6551: $fb
	ld   de, $1111                                   ; $6552: $11 $11 $11
	rst  $38                                         ; $6555: $ff
	rst  $38                                         ; $6556: $ff
	ld   c, [hl]                                     ; $6557: $4e
	cp   $61                                         ; $6558: $fe $61
	ld   de, $efee                                   ; $655a: $11 $ee $ef
	rst  JumpTable                                         ; $655d: $df
	rst  $38                                         ; $655e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $655f: $cf
	rst  JumpTable                                         ; $6560: $df
	or   c                                           ; $6561: $b1
	ld   de, $1911                                   ; $6562: $11 $11 $19
	rst  $38                                         ; $6565: $ff
	db   $fc                                         ; $6566: $fc
	cp   a                                           ; $6567: $bf
	rst  $38                                         ; $6568: $ff
	ld   de, $b716                                   ; $6569: $11 $16 $b7
	db   $eb                                         ; $656c: $eb
	rst  $38                                         ; $656d: $ff
	rst  $38                                         ; $656e: $ff
	rst  $38                                         ; $656f: $ff
	cp   $11                                         ; $6570: $fe $11
	ld   de, $1f11                                   ; $6572: $11 $11 $1f
	rst  $38                                         ; $6575: $ff
	ld   sp, hl                                      ; $6576: $f9
	rst  $38                                         ; $6577: $ff
	pop  af                                          ; $6578: $f1
	ld   de, $151a                                   ; $6579: $11 $1a $15
	ld   e, a                                        ; $657c: $5f
	rst  $38                                         ; $657d: $ff
	rst  $38                                         ; $657e: $ff
	rst  $38                                         ; $657f: $ff
	ldh  a, [c]                                      ; $6580: $f2
	ld   de, $1111                                   ; $6581: $11 $11 $11
	rra                                              ; $6584: $1f
	rst  $38                                         ; $6585: $ff
	rst  $28                                         ; $6586: $ef
	rst  $38                                         ; $6587: $ff
	pop  af                                          ; $6588: $f1
	ld   de, $1151                                   ; $6589: $11 $51 $11
	rra                                              ; $658c: $1f
	rst  $38                                         ; $658d: $ff
	rst  $38                                         ; $658e: $ff
	rst  $38                                         ; $658f: $ff
	pop  af                                          ; $6590: $f1
	ld   de, $1111                                   ; $6591: $11 $11 $11
	ld   c, a                                        ; $6594: $4f
	rst  $38                                         ; $6595: $ff
	ld   a, a                                        ; $6596: $7f
	rst  $38                                         ; $6597: $ff
	db   $fc                                         ; $6598: $fc
	ld   [hl+], a                                    ; $6599: $22
	and  c                                           ; $659a: $a1
	ld   de, rAUD1HIGH                                   ; $659b: $11 $14 $ff
	rst  $38                                         ; $659e: $ff
	rst  $38                                         ; $659f: $ff
	db   $f4                                         ; $65a0: $f4
	ld   de, $1111                                   ; $65a1: $11 $11 $11
	ld   [de], a                                     ; $65a4: $12
	or   a                                           ; $65a5: $b7
	dec  l                                           ; $65a6: $2d
	rst  $38                                         ; $65a7: $ff

Jump_0d0_65a8:
	rst  $38                                         ; $65a8: $ff
	xor  $f8                                         ; $65a9: $ee $f8
	ld   b, c                                        ; $65ab: $41
	dec  d                                           ; $65ac: $15
	cp   e                                           ; $65ad: $bb
	call c, Call_0d0_62b9                            ; $65ae: $dc $b9 $62
	dec  [hl]                                        ; $65b1: $35
	ld   d, [hl]                                     ; $65b2: $56
	adc  h                                           ; $65b3: $8c
	ld   h, [hl]                                     ; $65b4: $66
	ld   [hl-], a                                    ; $65b5: $32
	ld   h, h                                        ; $65b6: $64
	add  a                                           ; $65b7: $87
	ld   [hl], a                                     ; $65b8: $77
	ld   h, l                                        ; $65b9: $65
	ld   d, l                                        ; $65ba: $55
	ld   a, c                                        ; $65bb: $79
	sbc  l                                           ; $65bc: $9d
	rst  $28                                         ; $65bd: $ef
	db   $fd                                         ; $65be: $fd
	cp   d                                           ; $65bf: $ba
	xor  c                                           ; $65c0: $a9
	xor  c                                           ; $65c1: $a9
	xor  e                                           ; $65c2: $ab
	xor  c                                           ; $65c3: $a9
	xor  d                                           ; $65c4: $aa
	adc  b                                           ; $65c5: $88
	ld   h, l                                        ; $65c6: $65
	ld   b, e                                        ; $65c7: $43
	ld   sp, $1111                                   ; $65c8: $31 $11 $11
	dec  [hl]                                        ; $65cb: $35
	ld   a, d                                        ; $65cc: $7a
	db   $dd                                         ; $65cd: $dd
	res  7, l                                        ; $65ce: $cb $bd
	call z, $bca8                                    ; $65d0: $cc $a8 $bc
	call z, $dddd                                    ; $65d3: $cc $dd $dd
	res  5, b                                        ; $65d6: $cb $a8
	ld   d, e                                        ; $65d8: $53
	ld   hl, $1211                                   ; $65d9: $21 $11 $12
	ld   b, [hl]                                     ; $65dc: $46
	ld   h, a                                        ; $65dd: $67
	ld   a, b                                        ; $65de: $78
	adc  c                                           ; $65df: $89
	add  a                                           ; $65e0: $87
	ld   h, [hl]                                     ; $65e1: $66
	ld   a, b                                        ; $65e2: $78
	sbc  c                                           ; $65e3: $99
	xor  e                                           ; $65e4: $ab
	adc  $ff                                         ; $65e5: $ce $ff
	cp   $ec                                         ; $65e7: $fe $ec
	xor  d                                           ; $65e9: $aa
	adc  b                                           ; $65ea: $88
	halt                                             ; $65eb: $76
	ld   d, h                                        ; $65ec: $54
	ld   b, h                                        ; $65ed: $44
	ld   b, e                                        ; $65ee: $43
	inc  sp                                          ; $65ef: $33
	inc  sp                                          ; $65f0: $33
	inc  [hl]                                        ; $65f1: $34
	ld   d, [hl]                                     ; $65f2: $56
	ld   h, [hl]                                     ; $65f3: $66
	ld   [hl], a                                     ; $65f4: $77
	sbc  d                                           ; $65f5: $9a
	xor  d                                           ; $65f6: $aa
	xor  d                                           ; $65f7: $aa
	xor  d                                           ; $65f8: $aa
	cp   e                                           ; $65f9: $bb
	call $ffff                                       ; $65fa: $cd $ff $ff
	sbc  $db                                         ; $65fd: $de $db
	add  [hl]                                        ; $65ff: $86
	ld   b, d                                        ; $6600: $42
	ld   hl, $1311                                   ; $6601: $21 $11 $13
	ld   b, l                                        ; $6604: $45
	ld   d, [hl]                                     ; $6605: $56
	ld   h, a                                        ; $6606: $67
	ld   [hl], a                                     ; $6607: $77
	ld   h, [hl]                                     ; $6608: $66
	ld   h, a                                        ; $6609: $67
	adc  b                                           ; $660a: $88
	sbc  d                                           ; $660b: $9a
	cp   h                                           ; $660c: $bc
	sbc  $de                                         ; $660d: $de $de
	rst  $38                                         ; $660f: $ff
	db   $ec                                         ; $6610: $ec
	res  7, d                                        ; $6611: $cb $ba
	add  a                                           ; $6613: $87
	ld   h, l                                        ; $6614: $65
	ld   b, e                                        ; $6615: $43
	ld   [hl-], a                                    ; $6616: $32
	ld   [hl+], a                                    ; $6617: $22
	inc  hl                                          ; $6618: $23
	inc  [hl]                                        ; $6619: $34
	ld   b, l                                        ; $661a: $45
	ld   h, [hl]                                     ; $661b: $66
	ld   [hl], a                                     ; $661c: $77
	sbc  b                                           ; $661d: $98
	adc  b                                           ; $661e: $88
	sbc  b                                           ; $661f: $98
	adc  c                                           ; $6620: $89
	xor  d                                           ; $6621: $aa
	cp   l                                           ; $6622: $bd
	xor  $ee                                         ; $6623: $ee $ee
	xor  $cc                                         ; $6625: $ee $cc
	xor  c                                           ; $6627: $a9
	sub  a                                           ; $6628: $97
	ld   d, e                                        ; $6629: $53
	ld   [hl-], a                                    ; $662a: $32
	ld   [hl+], a                                    ; $662b: $22
	inc  hl                                          ; $662c: $23
	ld   b, h                                        ; $662d: $44
	ld   b, h                                        ; $662e: $44
	ld   b, l                                        ; $662f: $45
	ld   d, l                                        ; $6630: $55
	ld   d, [hl]                                     ; $6631: $56
	ld   a, b                                        ; $6632: $78
	adc  b                                           ; $6633: $88
	sbc  d                                           ; $6634: $9a
	xor  e                                           ; $6635: $ab
	cp   e                                           ; $6636: $bb
	sbc  $ef                                         ; $6637: $de $ef
	xor  $dd                                         ; $6639: $ee $dd
	db   $db                                         ; $663b: $db
	cp   d                                           ; $663c: $ba
	add  [hl]                                        ; $663d: $86
	ld   d, e                                        ; $663e: $53
	ld   [hl+], a                                    ; $663f: $22
	ld   de, $3422                                   ; $6640: $11 $22 $34
	ld   b, h                                        ; $6643: $44
	ld   d, l                                        ; $6644: $55
	ld   h, [hl]                                     ; $6645: $66
	ld   h, a                                        ; $6646: $67
	ld   a, c                                        ; $6647: $79
	sbc  c                                           ; $6648: $99
	adc  c                                           ; $6649: $89
	xor  h                                           ; $664a: $ac
	cp   h                                           ; $664b: $bc
	call $ecde                                       ; $664c: $cd $de $ec
	call c, $a9bb                                    ; $664f: $dc $bb $a9
	add  a                                           ; $6652: $87
	ld   h, h                                        ; $6653: $64
	inc  sp                                          ; $6654: $33
	ld   [hl+], a                                    ; $6655: $22
	ld   [hl+], a                                    ; $6656: $22
	inc  [hl]                                        ; $6657: $34
	inc  sp                                          ; $6658: $33
	ld   b, l                                        ; $6659: $45
	ld   h, a                                        ; $665a: $67
	ld   [hl], a                                     ; $665b: $77
	ld   a, b                                        ; $665c: $78
	sbc  b                                           ; $665d: $98
	sbc  b                                           ; $665e: $98
	sbc  e                                           ; $665f: $9b
	cp   h                                           ; $6660: $bc
	call z, $eded                                    ; $6661: $cc $ed $ed
	db   $dd                                         ; $6664: $dd
	call z, $98b9                                    ; $6665: $cc $b9 $98
	ld   h, h                                        ; $6668: $64
	inc  sp                                          ; $6669: $33
	ld   [hl-], a                                    ; $666a: $32
	ld   [hl+], a                                    ; $666b: $22
	inc  de                                          ; $666c: $13
	inc  sp                                          ; $666d: $33
	ld   b, h                                        ; $666e: $44
	ld   d, [hl]                                     ; $666f: $56
	ld   [hl], a                                     ; $6670: $77
	ld   a, b                                        ; $6671: $78
	sbc  b                                           ; $6672: $98
	adc  b                                           ; $6673: $88
	sbc  e                                           ; $6674: $9b
	set  1, h                                        ; $6675: $cb $cc
	call $cddc                                       ; $6677: $cd $dc $cd
	call c, $99b9                                    ; $667a: $dc $b9 $99
	halt                                             ; $667d: $76
	ld   b, e                                        ; $667e: $43
	inc  sp                                          ; $667f: $33
	ld   [hl+], a                                    ; $6680: $22
	ld   [hl+], a                                    ; $6681: $22
	inc  sp                                          ; $6682: $33
	ld   b, h                                        ; $6683: $44
	ld   d, [hl]                                     ; $6684: $56
	ld   h, a                                        ; $6685: $67
	ld   [hl], a                                     ; $6686: $77
	adc  b                                           ; $6687: $88
	adc  c                                           ; $6688: $89
	sbc  d                                           ; $6689: $9a
	cp   e                                           ; $668a: $bb
	cp   e                                           ; $668b: $bb
	set  1, h                                        ; $668c: $cb $cc
	call z, $bbdd                                    ; $668e: $cc $dd $bb
	cp   c                                           ; $6691: $b9
	sbc  b                                           ; $6692: $98
	halt                                             ; $6693: $76
	ld   d, h                                        ; $6694: $54
	ld   b, e                                        ; $6695: $43
	ld   de, $4333                                   ; $6696: $11 $33 $43
	ld   b, [hl]                                     ; $6699: $46
	adc  b                                           ; $669a: $88
	ld   [hl], a                                     ; $669b: $77
	ld   a, c                                        ; $669c: $79
	sbc  d                                           ; $669d: $9a
	xor  h                                           ; $669e: $ac
	xor  $ec                                         ; $669f: $ee $ec
	adc  $ee                                         ; $66a1: $ce $ee
	cp   e                                           ; $66a3: $bb
	jp   c, $1162                                    ; $66a4: $da $62 $11

	ld   b, e                                        ; $66a7: $43
	ld   de, $5111                                   ; $66a8: $11 $11 $51
	rla                                              ; $66ab: $17
	call $fffb                                       ; $66ac: $cd $fb $ff
	rst  $38                                         ; $66af: $ff
	rst  $28                                         ; $66b0: $ef
	rst  $38                                         ; $66b1: $ff
	sbc  c                                           ; $66b2: $99
	cp   d                                           ; $66b3: $ba
	ld   [hl], d                                     ; $66b4: $72
	ld   de, $1111                                   ; $66b5: $11 $11 $11
	sub  c                                           ; $66b8: $91

jr_0d0_66b9:
	ld   de, $ea4f                                   ; $66b9: $11 $4f $ea
	rst  $38                                         ; $66bc: $ff
	rst  $38                                         ; $66bd: $ff
	call z, Call_0d0_73ff                            ; $66be: $cc $ff $73
	dec  sp                                          ; $66c1: $3b
	ldh  [c], a                                      ; $66c2: $e2
	ld   c, h                                        ; $66c3: $4c
	reti                                             ; $66c4: $d9


	ld   de, $1131                                   ; $66c5: $11 $31 $11
	ld   sp, $1f12                                   ; $66c8: $31 $12 $1f
	db   $fc                                         ; $66cb: $fc
	rst  $38                                         ; $66cc: $ff
	rst  $38                                         ; $66cd: $ff
	ei                                               ; $66ce: $fb
	rst  $38                                         ; $66cf: $ff
	ld   h, d                                        ; $66d0: $62
	jr   c, jr_0d0_66b9                              ; $66d1: $38 $e6

	dec  l                                           ; $66d3: $2d
	call nz, $1111                                   ; $66d4: $c4 $11 $11
	ld   [de], a                                     ; $66d7: $12
	ld   de, $ef93                                   ; $66d8: $11 $93 $ef
	rst  $38                                         ; $66db: $ff
	rst  $38                                         ; $66dc: $ff
	rst  $38                                         ; $66dd: $ff
	rst  $28                                         ; $66de: $ef
	and  h                                           ; $66df: $a4
	dec  [hl]                                        ; $66e0: $35
	ld   l, d                                        ; $66e1: $6a
	set  7, a                                        ; $66e2: $cb $ff
	ld   [hl], l                                     ; $66e4: $75
	ld   d, c                                        ; $66e5: $51
	ld   de, $1117                                   ; $66e6: $11 $17 $11
	dec  h                                           ; $66e9: $25
	rst  $38                                         ; $66ea: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66eb: $cf
	rst  $38                                         ; $66ec: $ff
	rst  $38                                         ; $66ed: $ff
	rst  $38                                         ; $66ee: $ff
	ld   d, c                                        ; $66ef: $51
	rla                                              ; $66f0: $17
	ld   b, a                                        ; $66f1: $47
	xor  [hl]                                        ; $66f2: $ae
	rst  $38                                         ; $66f3: $ff
	ld   c, c                                        ; $66f4: $49
	or   c                                           ; $66f5: $b1
	ld   de, $111a                                   ; $66f6: $11 $1a $11
	ld   c, d                                        ; $66f9: $4a
	db   $fc                                         ; $66fa: $fc
	rst  $28                                         ; $66fb: $ef
	rst  $38                                         ; $66fc: $ff
	rst  $38                                         ; $66fd: $ff
	rst  $38                                         ; $66fe: $ff
	ld   de, $1756                                   ; $66ff: $11 $56 $17
	rst  $38                                         ; $6702: $ff
	ld   sp, hl                                      ; $6703: $f9
	ld   e, [hl]                                     ; $6704: $5e
	ld   [hl], c                                     ; $6705: $71
	ld   de, $1114                                   ; $6706: $11 $14 $11
	cp   h                                           ; $6709: $bc
	db   $dd                                         ; $670a: $dd
	rst  $38                                         ; $670b: $ff
	cp   $ff                                         ; $670c: $fe $ff
	or   $12                                         ; $670e: $f6 $12
	ld   h, c                                        ; $6710: $61
	ld   e, $ff                                      ; $6711: $1e $ff
	ld   a, [$11bd]                                  ; $6713: $fa $bd $11
	ld   de, $1111                                   ; $6716: $11 $11 $11
	cp   c                                           ; $6719: $b9
	rst  JumpTable                                         ; $671a: $df
	rst  $38                                         ; $671b: $ff
	rst  $38                                         ; $671c: $ff
	rst  $38                                         ; $671d: $ff
	push bc                                          ; $671e: $c5
	inc  de                                          ; $671f: $13
	ld   hl, $df2e                                   ; $6720: $21 $2e $df
	ei                                               ; $6723: $fb
	sbc  d                                           ; $6724: $9a
	ld   bc, $6111                                   ; $6725: $01 $11 $61
	dec  d                                           ; $6728: $15
	ld   a, d                                        ; $6729: $7a
	xor  a                                           ; $672a: $af
	rst  $38                                         ; $672b: $ff
	rst  $38                                         ; $672c: $ff
	rst  $38                                         ; $672d: $ff
	sub  d                                           ; $672e: $92
	ld   b, h                                        ; $672f: $44
	ld   de, $bf8f                                   ; $6730: $11 $8f $bf
	ei                                               ; $6733: $fb
	add  a                                           ; $6734: $87
	ld   de, $8111                                   ; $6735: $11 $11 $81
	add  hl, de                                      ; $6738: $19
	ld   a, b                                        ; $6739: $78
	rst  JumpTable                                         ; $673a: $df
	rst  $38                                         ; $673b: $ff
	rst  $38                                         ; $673c: $ff
	rst  $38                                         ; $673d: $ff
	add  e                                           ; $673e: $83
	ld   h, d                                        ; $673f: $62
	inc  de                                          ; $6740: $13
	sbc  [hl]                                        ; $6741: $9e
	cp   a                                           ; $6742: $bf
	ld   [$1177], a                                  ; $6743: $ea $77 $11
	ld   de, $1931                                   ; $6746: $11 $31 $19
	ld   h, [hl]                                     ; $6749: $66
	rst  $38                                         ; $674a: $ff
	rst  $38                                         ; $674b: $ff
	rst  $38                                         ; $674c: $ff
	db   $fd                                         ; $674d: $fd
	ld   [hl], a                                     ; $674e: $77
	sub  c                                           ; $674f: $91
	ld   d, $bb                                      ; $6750: $16 $bb
	cp   a                                           ; $6752: $bf
	add  $55                                         ; $6753: $c6 $55
	ld   de, $1116                                   ; $6755: $11 $16 $11
	ld   c, b                                        ; $6758: $48
	ld   d, [hl]                                     ; $6759: $56
	rst  $38                                         ; $675a: $ff
	rst  $38                                         ; $675b: $ff
	rst  $38                                         ; $675c: $ff
	ei                                               ; $675d: $fb
	adc  h                                           ; $675e: $8c
	ld   [hl], c                                     ; $675f: $71
	ld   l, b                                        ; $6760: $68
	xor  d                                           ; $6761: $aa
	call z, Call_0d0_6294                            ; $6762: $cc $94 $62
	ld   de, $111b                                   ; $6765: $11 $1b $11
	push bc                                          ; $6768: $c5
	jr   z, @+$01                                    ; $6769: $28 $ff

	rst  $38                                         ; $676b: $ff
	rst  $38                                         ; $676c: $ff
	ld   a, [$32bf]                                  ; $676d: $fa $bf $32
	or   a                                           ; $6770: $b7
	adc  c                                           ; $6771: $89
	jp   z, Jump_0d0_5163                            ; $6772: $ca $63 $51

	ld   de, $1123                                   ; $6775: $11 $23 $11
	jp   nz, $ff1f                                   ; $6778: $c2 $1f $ff

	rst  $38                                         ; $677b: $ff
	rst  $38                                         ; $677c: $ff
	ld   a, [$2afd]                                  ; $677d: $fa $fd $2a
	and  a                                           ; $6780: $a7
	sbc  d                                           ; $6781: $9a
	sbc  b                                           ; $6782: $98
	ld   d, e                                        ; $6783: $53
	ld   sp, $8111                                   ; $6784: $31 $11 $81
	rla                                              ; $6787: $17
	add  c                                           ; $6788: $81
	cpl                                              ; $6789: $2f
	rst  $38                                         ; $678a: $ff
	rst  $38                                         ; $678b: $ff
	rst  $38                                         ; $678c: $ff
	db   $fd                                         ; $678d: $fd
	db   $fd                                         ; $678e: $fd
	ld   e, h                                        ; $678f: $5c
	sub  a                                           ; $6790: $97
	xor  c                                           ; $6791: $a9
	ld   [hl], a                                     ; $6792: $77
	ld   b, d                                        ; $6793: $42
	ld   de, $9111                                   ; $6794: $11 $11 $91
	ld   a, [de]                                     ; $6797: $1a

Jump_0d0_6798:
	ld   d, c                                        ; $6798: $51
	ld   l, a                                        ; $6799: $6f
	rst  $28                                         ; $679a: $ef
	rst  $38                                         ; $679b: $ff
	rst  $38                                         ; $679c: $ff
	rst  $38                                         ; $679d: $ff
	db   $fc                                         ; $679e: $fc
	adc  [hl]                                        ; $679f: $8e
	xor  c                                           ; $67a0: $a9
	or   a                                           ; $67a1: $b7
	halt                                             ; $67a2: $76
	ld   sp, $1111                                   ; $67a3: $31 $11 $11
	ld   [hl], c                                     ; $67a6: $71
	dec  de                                          ; $67a7: $1b
	ld   sp, $af8f                                   ; $67a8: $31 $8f $af
	rst  $38                                         ; $67ab: $ff
	rst  $38                                         ; $67ac: $ff
	rst  $38                                         ; $67ad: $ff
	db   $fd                                         ; $67ae: $fd
	rst  JumpTable                                         ; $67af: $df
	cp   d                                           ; $67b0: $ba
	add  $76                                         ; $67b1: $c6 $76
	ld   [hl+], a                                    ; $67b3: $22
	ld   de, $6111                                   ; $67b4: $11 $11 $61
	dec  d                                           ; $67b7: $15
	add  c                                           ; $67b8: $81
	dec  e                                           ; $67b9: $1d
	xor  c                                           ; $67ba: $a9
	db   $fd                                         ; $67bb: $fd
	rst  $38                                         ; $67bc: $ff
	db   $fc                                         ; $67bd: $fc
	rst  $38                                         ; $67be: $ff
	rst  JumpTable                                         ; $67bf: $df
	ei                                               ; $67c0: $fb
	db   $db                                         ; $67c1: $db
	ld   d, a                                        ; $67c2: $57
	ld   h, d                                        ; $67c3: $62
	ld   d, h                                        ; $67c4: $54
	ld   de, $3116                                   ; $67c5: $11 $16 $31
	scf                                              ; $67c8: $37
	ld   de, $3a87                                   ; $67c9: $11 $87 $3a
	adc  c                                           ; $67cc: $89
	xor  $af                                         ; $67cd: $ee $af
	cp   $ff                                         ; $67cf: $fe $ff
	db   $ed                                         ; $67d1: $ed
	sub  $79                                         ; $67d2: $d6 $79
	halt                                             ; $67d4: $76
	add  [hl]                                        ; $67d5: $86
	ld   h, l                                        ; $67d6: $65
	rla                                              ; $67d7: $17
	jp   Jump_0d0_4119                               ; $67d8: $c3 $19 $41


	inc  d                                           ; $67db: $14
	ld   [de], a                                     ; $67dc: $12
	ld   d, d                                        ; $67dd: $52
	ld   l, e                                        ; $67de: $6b
	sbc  b                                           ; $67df: $98
	cp   $cf                                         ; $67e0: $fe $cf
	db   $ec                                         ; $67e2: $ec
	ret                                              ; $67e3: $c9


	ld   a, e                                        ; $67e4: $7b
	cp   d                                           ; $67e5: $ba
	cp   h                                           ; $67e6: $bc
	call z, $caab                                    ; $67e7: $cc $ab $ca
	sub  [hl]                                        ; $67ea: $96
	ld   b, l                                        ; $67eb: $45
	ld   hl, $1111                                   ; $67ec: $21 $11 $11
	inc  sp                                          ; $67ef: $33
	ld   d, [hl]                                     ; $67f0: $56
	ld   a, c                                        ; $67f1: $79
	xor  d                                           ; $67f2: $aa
	xor  e                                           ; $67f3: $ab
	xor  c                                           ; $67f4: $a9
	xor  c                                           ; $67f5: $a9
	xor  e                                           ; $67f6: $ab
	call $fdde                                       ; $67f7: $cd $de $fd
	sbc  $ca                                         ; $67fa: $de $ca
	sbc  b                                           ; $67fc: $98
	ld   [hl], l                                     ; $67fd: $75
	inc  sp                                          ; $67fe: $33
	ld   sp, $2212                                   ; $67ff: $31 $12 $22
	inc  hl                                          ; $6802: $23
	ld   b, l                                        ; $6803: $45
	ld   d, [hl]                                     ; $6804: $56
	ld   h, a                                        ; $6805: $67
	adc  b                                           ; $6806: $88
	xor  d                                           ; $6807: $aa
	xor  e                                           ; $6808: $ab
	call z, $decc                                    ; $6809: $cc $cc $de
	db   $dd                                         ; $680c: $dd
	sbc  $dc                                         ; $680d: $de $dc
	cp   c                                           ; $680f: $b9
	add  a                                           ; $6810: $87
	ld   h, l                                        ; $6811: $65
	ld   b, e                                        ; $6812: $43
	ld   [hl+], a                                    ; $6813: $22
	ld   de, $3312                                   ; $6814: $11 $12 $33
	ld   d, l                                        ; $6817: $55
	ld   h, a                                        ; $6818: $67
	adc  b                                           ; $6819: $88
	sbc  c                                           ; $681a: $99
	sbc  c                                           ; $681b: $99
	xor  d                                           ; $681c: $aa
	xor  h                                           ; $681d: $ac
	call $eedd                                       ; $681e: $cd $dd $ee
	db   $ed                                         ; $6821: $ed
	db   $db                                         ; $6822: $db
	xor  c                                           ; $6823: $a9
	add  a                                           ; $6824: $87
	ld   d, h                                        ; $6825: $54
	ld   b, e                                        ; $6826: $43
	ld   [hl-], a                                    ; $6827: $32
	inc  hl                                          ; $6828: $23
	inc  sp                                          ; $6829: $33
	ld   b, h                                        ; $682a: $44
	ld   d, l                                        ; $682b: $55
	ld   h, [hl]                                     ; $682c: $66
	ld   [hl], a                                     ; $682d: $77
	adc  c                                           ; $682e: $89
	adc  c                                           ; $682f: $89
	xor  d                                           ; $6830: $aa
	cp   e                                           ; $6831: $bb
	call z, $dedd                                    ; $6832: $cc $dd $de

Jump_0d0_6835:
	db   $dd                                         ; $6835: $dd
	call c, $88b9                                    ; $6836: $dc $b9 $88
	ld   [hl], l                                     ; $6839: $75
	ld   d, h                                        ; $683a: $54
	inc  sp                                          ; $683b: $33
	inc  sp                                          ; $683c: $33
	inc  sp                                          ; $683d: $33
	ld   b, h                                        ; $683e: $44
	ld   d, l                                        ; $683f: $55
	ld   h, [hl]                                     ; $6840: $66
	ld   [hl], a                                     ; $6841: $77
	ld   a, b                                        ; $6842: $78
	adc  b                                           ; $6843: $88
	sbc  c                                           ; $6844: $99
	xor  e                                           ; $6845: $ab
	cp   h                                           ; $6846: $bc
	call c, $ddde                                    ; $6847: $dc $de $dd
	call z, $98ba                                    ; $684a: $cc $ba $98
	halt                                             ; $684d: $76
	ld   d, l                                        ; $684e: $55
	ld   b, h                                        ; $684f: $44
	inc  sp                                          ; $6850: $33
	inc  sp                                          ; $6851: $33
	inc  [hl]                                        ; $6852: $34
	ld   b, l                                        ; $6853: $45
	ld   d, [hl]                                     ; $6854: $56
	ld   h, a                                        ; $6855: $67
	ld   a, b                                        ; $6856: $78
	adc  b                                           ; $6857: $88
	sbc  c                                           ; $6858: $99
	xor  d                                           ; $6859: $aa
	cp   e                                           ; $685a: $bb
	cp   e                                           ; $685b: $bb
	call z, $dcdd                                    ; $685c: $cc $dd $dc
	res  5, c                                        ; $685f: $cb $a9
	add  a                                           ; $6861: $87
	ld   h, [hl]                                     ; $6862: $66
	ld   d, h                                        ; $6863: $54
	ld   b, h                                        ; $6864: $44
	ld   b, h                                        ; $6865: $44
	ld   b, h                                        ; $6866: $44
	ld   b, l                                        ; $6867: $45
	ld   d, [hl]                                     ; $6868: $56
	ld   h, [hl]                                     ; $6869: $66
	ld   [hl], a                                     ; $686a: $77
	ld   a, b                                        ; $686b: $78
	sbc  b                                           ; $686c: $98
	sbc  d                                           ; $686d: $9a
	sbc  d                                           ; $686e: $9a
	cp   e                                           ; $686f: $bb
	cp   h                                           ; $6870: $bc
	cp   e                                           ; $6871: $bb
	res  7, e                                        ; $6872: $cb $bb
	xor  d                                           ; $6874: $aa
	xor  b                                           ; $6875: $a8
	add  a                                           ; $6876: $87
	ld   h, [hl]                                     ; $6877: $66
	ld   d, l                                        ; $6878: $55
	ld   b, h                                        ; $6879: $44
	ld   b, h                                        ; $687a: $44
	ld   b, h                                        ; $687b: $44
	ld   d, l                                        ; $687c: $55
	ld   d, [hl]                                     ; $687d: $56
	ld   h, a                                        ; $687e: $67
	ld   [hl], a                                     ; $687f: $77
	adc  b                                           ; $6880: $88
	adc  c                                           ; $6881: $89
	sbc  d                                           ; $6882: $9a
	sbc  d                                           ; $6883: $9a
	xor  e                                           ; $6884: $ab
	xor  e                                           ; $6885: $ab
	cp   h                                           ; $6886: $bc
	res  7, d                                        ; $6887: $cb $ba
	xor  c                                           ; $6889: $a9
	sbc  c                                           ; $688a: $99
	ld   [hl], a                                     ; $688b: $77
	ld   h, [hl]                                     ; $688c: $66
	ld   d, l                                        ; $688d: $55
	ld   d, l                                        ; $688e: $55
	ld   d, l                                        ; $688f: $55
	ld   d, l                                        ; $6890: $55
	ld   d, l                                        ; $6891: $55
	ld   h, [hl]                                     ; $6892: $66
	ld   [hl], a                                     ; $6893: $77
	ld   a, b                                        ; $6894: $78
	adc  c                                           ; $6895: $89
	adc  c                                           ; $6896: $89
	sbc  d                                           ; $6897: $9a
	sbc  c                                           ; $6898: $99
	sbc  d                                           ; $6899: $9a
	xor  d                                           ; $689a: $aa
	xor  e                                           ; $689b: $ab
	cp   e                                           ; $689c: $bb
	xor  d                                           ; $689d: $aa
	sbc  d                                           ; $689e: $9a
	sbc  c                                           ; $689f: $99
	add  a                                           ; $68a0: $87
	ld   [hl], a                                     ; $68a1: $77
	ld   h, [hl]                                     ; $68a2: $66
	ld   h, l                                        ; $68a3: $65
	ld   d, l                                        ; $68a4: $55
	ld   d, [hl]                                     ; $68a5: $56
	ld   h, [hl]                                     ; $68a6: $66
	ld   h, a                                        ; $68a7: $67
	ld   [hl], a                                     ; $68a8: $77
	ld   a, b                                        ; $68a9: $78
	adc  b                                           ; $68aa: $88
	sbc  b                                           ; $68ab: $98
	adc  c                                           ; $68ac: $89
	sbc  c                                           ; $68ad: $99
	sbc  d                                           ; $68ae: $9a
	xor  c                                           ; $68af: $a9
	sbc  c                                           ; $68b0: $99
	sbc  c                                           ; $68b1: $99
	sbc  d                                           ; $68b2: $9a
	xor  c                                           ; $68b3: $a9
	sbc  b                                           ; $68b4: $98
	sbc  b                                           ; $68b5: $98
	add  a                                           ; $68b6: $87
	ld   [hl], a                                     ; $68b7: $77
	halt                                             ; $68b8: $76
	ld   h, [hl]                                     ; $68b9: $66
	ld   h, [hl]                                     ; $68ba: $66
	ld   h, [hl]                                     ; $68bb: $66
	ld   h, [hl]                                     ; $68bc: $66
	ld   [hl], a                                     ; $68bd: $77
	ld   [hl], a                                     ; $68be: $77
	adc  b                                           ; $68bf: $88
	adc  c                                           ; $68c0: $89
	sbc  b                                           ; $68c1: $98
	adc  b                                           ; $68c2: $88
	sbc  c                                           ; $68c3: $99
	sbc  c                                           ; $68c4: $99
	sbc  c                                           ; $68c5: $99
	sbc  c                                           ; $68c6: $99
	sbc  c                                           ; $68c7: $99
	sbc  c                                           ; $68c8: $99
	sbc  b                                           ; $68c9: $98
	adc  c                                           ; $68ca: $89
	adc  b                                           ; $68cb: $88
	ld   [hl], a                                     ; $68cc: $77
	ld   [hl], a                                     ; $68cd: $77
	ld   [hl], a                                     ; $68ce: $77
	ld   [hl], a                                     ; $68cf: $77
	ld   [hl], a                                     ; $68d0: $77
	ld   [hl], a                                     ; $68d1: $77
	ld   [hl], a                                     ; $68d2: $77
	ld   [hl], a                                     ; $68d3: $77
	ld   a, b                                        ; $68d4: $78
	adc  b                                           ; $68d5: $88
	adc  c                                           ; $68d6: $89
	sbc  c                                           ; $68d7: $99
	sbc  b                                           ; $68d8: $98
	adc  b                                           ; $68d9: $88
	adc  b                                           ; $68da: $88
	adc  b                                           ; $68db: $88
	adc  b                                           ; $68dc: $88
	adc  b                                           ; $68dd: $88
	adc  b                                           ; $68de: $88
	sbc  c                                           ; $68df: $99
	sbc  b                                           ; $68e0: $98
	adc  b                                           ; $68e1: $88
	adc  b                                           ; $68e2: $88
	ld   [hl], a                                     ; $68e3: $77
	ld   [hl], a                                     ; $68e4: $77
	ld   [hl], a                                     ; $68e5: $77
	ld   [hl], a                                     ; $68e6: $77
	ld   [hl], a                                     ; $68e7: $77
	ld   [hl], a                                     ; $68e8: $77
	ld   [hl], a                                     ; $68e9: $77
	adc  b                                           ; $68ea: $88
	adc  b                                           ; $68eb: $88
	adc  b                                           ; $68ec: $88
	adc  b                                           ; $68ed: $88
	sbc  c                                           ; $68ee: $99
	sbc  c                                           ; $68ef: $99
	sbc  c                                           ; $68f0: $99
	sbc  c                                           ; $68f1: $99
	sbc  c                                           ; $68f2: $99
	sbc  c                                           ; $68f3: $99
	sbc  c                                           ; $68f4: $99
	sbc  b                                           ; $68f5: $98
	adc  b                                           ; $68f6: $88
	adc  b                                           ; $68f7: $88
	adc  b                                           ; $68f8: $88
	adc  b                                           ; $68f9: $88
	adc  b                                           ; $68fa: $88
	adc  b                                           ; $68fb: $88
	adc  b                                           ; $68fc: $88
	adc  b                                           ; $68fd: $88
	adc  b                                           ; $68fe: $88
	adc  b                                           ; $68ff: $88
	adc  b                                           ; $6900: $88
	adc  b                                           ; $6901: $88
	adc  b                                           ; $6902: $88
	adc  b                                           ; $6903: $88
	adc  b                                           ; $6904: $88
	adc  b                                           ; $6905: $88
	adc  b                                           ; $6906: $88
	adc  b                                           ; $6907: $88
	adc  b                                           ; $6908: $88
	adc  b                                           ; $6909: $88
	adc  b                                           ; $690a: $88
	adc  b                                           ; $690b: $88
	adc  b                                           ; $690c: $88
	adc  b                                           ; $690d: $88
	adc  b                                           ; $690e: $88
	adc  b                                           ; $690f: $88
	adc  b                                           ; $6910: $88
	adc  b                                           ; $6911: $88
	adc  b                                           ; $6912: $88
	adc  b                                           ; $6913: $88
	adc  b                                           ; $6914: $88
	adc  b                                           ; $6915: $88
	adc  b                                           ; $6916: $88
	adc  b                                           ; $6917: $88
	adc  b                                           ; $6918: $88
	adc  b                                           ; $6919: $88
	adc  b                                           ; $691a: $88
	sbc  c                                           ; $691b: $99
	sbc  b                                           ; $691c: $98
	ld   a, b                                        ; $691d: $78
	adc  c                                           ; $691e: $89
	adc  c                                           ; $691f: $89
	adc  b                                           ; $6920: $88
	adc  c                                           ; $6921: $89
	sbc  b                                           ; $6922: $98
	adc  b                                           ; $6923: $88
	sbc  b                                           ; $6924: $98
	ld   a, b                                        ; $6925: $78
	sbc  b                                           ; $6926: $98
	halt                                             ; $6927: $76

jr_0d0_6928:
	ld   a, b                                        ; $6928: $78
	adc  b                                           ; $6929: $88
	ld   h, a                                        ; $692a: $67
	adc  b                                           ; $692b: $88
	halt                                             ; $692c: $76
	ld   a, b                                        ; $692d: $78
	add  a                                           ; $692e: $87
	ld   a, b                                        ; $692f: $78
	sbc  c                                           ; $6930: $99
	adc  c                                           ; $6931: $89
	xor  e                                           ; $6932: $ab
	jp   z, $a9ba                                    ; $6933: $ca $ba $a9

	adc  b                                           ; $6936: $88
	ld   [hl], a                                     ; $6937: $77
	ld   h, h                                        ; $6938: $64
	ld   hl, $4116                                   ; $6939: $21 $16 $41
	ld   d, [hl]                                     ; $693c: $56
	ld   h, a                                        ; $693d: $67
	sbc  d                                           ; $693e: $9a
	cp   a                                           ; $693f: $bf
	cp   h                                           ; $6940: $bc
	cp   $ed                                         ; $6941: $fe $ed
	cp   d                                           ; $6943: $ba
	cp   c                                           ; $6944: $b9
	ld   a, b                                        ; $6945: $78
	ld   [hl], l                                     ; $6946: $75
	ld   d, l                                        ; $6947: $55
	ld   de, $2711                                   ; $6948: $11 $11 $27
	inc  de                                          ; $694b: $13
	halt                                             ; $694c: $76
	sbc  e                                           ; $694d: $9b
	set  7, a                                        ; $694e: $cb $ff
	rst  JumpTable                                         ; $6950: $df
	db   $fd                                         ; $6951: $fd
	db   $dd                                         ; $6952: $dd
	sbc  e                                           ; $6953: $9b
	ret                                              ; $6954: $c9


	sbc  b                                           ; $6955: $98
	ld   b, e                                        ; $6956: $43
	ld   sp, $1111                                   ; $6957: $31 $11 $11
	ld   h, c                                        ; $695a: $61
	ld   h, $7c                                      ; $695b: $26 $7c
	rst  $28                                         ; $695d: $ef
	rst  $28                                         ; $695e: $ef
	rst  $38                                         ; $695f: $ff
	cp   $cd                                         ; $6960: $fe $cd
	reti                                             ; $6962: $d9


	sbc  d                                           ; $6963: $9a
	adc  d                                           ; $6964: $8a
	add  d                                           ; $6965: $82
	ld   de, $1111                                   ; $6966: $11 $11 $11
	ld   hl, $5f15                                   ; $6969: $21 $15 $5f
	rst  $38                                         ; $696c: $ff
	rst  $38                                         ; $696d: $ff
	rst  $38                                         ; $696e: $ff
	rst  $38                                         ; $696f: $ff
	sbc  d                                           ; $6970: $9a
	xor  d                                           ; $6971: $aa
	sbc  d                                           ; $6972: $9a
	sbc  [hl]                                        ; $6973: $9e
	sub  $11                                         ; $6974: $d6 $11
	ld   de, $1111                                   ; $6976: $11 $11 $11
	inc  d                                           ; $6979: $14
	ld   e, c                                        ; $697a: $59
	rst  $38                                         ; $697b: $ff
	rst  $38                                         ; $697c: $ff
	rst  $38                                         ; $697d: $ff
	rst  $38                                         ; $697e: $ff
	ld   h, l                                        ; $697f: $65
	ld   [hl], a                                     ; $6980: $77
	cp   l                                           ; $6981: $bd
	xor  l                                           ; $6982: $ad
	ld   hl, sp+$21                                  ; $6983: $f8 $21
	ld   de, $1111                                   ; $6985: $11 $11 $11
	jr   jr_0d0_6928                                 ; $6988: $18 $9e

	rst  $38                                         ; $698a: $ff
	rst  $38                                         ; $698b: $ff
	rst  $38                                         ; $698c: $ff
	ld   a, [$1111]                                  ; $698d: $fa $11 $11
	rst  $38                                         ; $6990: $ff
	rst  $38                                         ; $6991: $ff
	ei                                               ; $6992: $fb
	ld   h, c                                        ; $6993: $61
	ld   de, $1111                                   ; $6994: $11 $11 $11
	ld   d, $fc                                      ; $6997: $16 $fc
	rst  $38                                         ; $6999: $ff
	rst  $38                                         ; $699a: $ff
	rst  $38                                         ; $699b: $ff
	ld   a, c                                        ; $699c: $79
	ld   de, $cf11                                   ; $699d: $11 $11 $cf
	rst  $38                                         ; $69a0: $ff
	ld   a, [$1164]                                  ; $69a1: $fa $64 $11
	ld   de, $1111                                   ; $69a4: $11 $11 $11
	rst  $38                                         ; $69a7: $ff
	rst  $38                                         ; $69a8: $ff
	rst  $38                                         ; $69a9: $ff
	db   $fc                                         ; $69aa: $fc
	ld   de, $1111                                   ; $69ab: $11 $11 $11
	sbc  a                                           ; $69ae: $9f
	rst  $38                                         ; $69af: $ff
	ld   sp, hl                                      ; $69b0: $f9
	inc  d                                           ; $69b1: $14
	ld   de, $1111                                   ; $69b2: $11 $11 $11
	cp   l                                           ; $69b5: $bd
	rst  $38                                         ; $69b6: $ff
	rst  $38                                         ; $69b7: $ff
	rst  $38                                         ; $69b8: $ff
	pop  af                                          ; $69b9: $f1
	ld   de, $1f11                                   ; $69ba: $11 $11 $1f
	rst  $28                                         ; $69bd: $ef
	rst  $38                                         ; $69be: $ff
	push af                                          ; $69bf: $f5
	ld   de, $3151                                   ; $69c0: $11 $51 $31
	ld   de, $ffdf                                   ; $69c3: $11 $df $ff
	ld   a, [$e1f6]                                  ; $69c6: $fa $f6 $e1
	ld   de, $1f11                                   ; $69c9: $11 $11 $1f
	rst  $38                                         ; $69cc: $ff
	ld   a, [$1171]                                  ; $69cd: $fa $71 $11
	db   $f4                                         ; $69d0: $f4
	ld   de, rAUD1LEN                                   ; $69d1: $11 $11 $ff
	rst  $38                                         ; $69d4: $ff
	ld   de, $61f1                                   ; $69d5: $11 $f1 $61
	ld   de, $ff3f                                   ; $69d8: $11 $3f $ff
	rst  $38                                         ; $69db: $ff
	pop  af                                          ; $69dc: $f1
	ld   de, $f11d                                   ; $69dd: $11 $1d $f1
	ld   de, rAUD1LEN                                   ; $69e0: $11 $11 $ff
	rst  $38                                         ; $69e3: $ff
	inc  de                                          ; $69e4: $13
	db   $f4                                         ; $69e5: $f4
	ld   sp, rAUD1LEN                                   ; $69e6: $31 $11 $ff
	rst  $38                                         ; $69e9: $ff
	jp   c, $1e81                                    ; $69ea: $da $81 $1e

	ld   l, a                                        ; $69ed: $6f
	pop  af                                          ; $69ee: $f1
	ld   de, $ff16                                   ; $69ef: $11 $16 $ff
	rst  $38                                         ; $69f2: $ff
	rla                                              ; $69f3: $17
	and  d                                           ; $69f4: $a2
	ld   sp, rAUD1LEN                                   ; $69f5: $31 $11 $ff
	rst  $38                                         ; $69f8: $ff
	ld   [hl], e                                     ; $69f9: $73

Call_0d0_69fa:
	ld   hl, $bf9f                                   ; $69fa: $21 $9f $bf
	and  c                                           ; $69fd: $a1
	ld   de, $ff1f                                   ; $69fe: $11 $1f $ff
	rst  $38                                         ; $6a01: $ff
	ld   d, $11                                      ; $6a02: $16 $11
	ld   d, c                                        ; $6a04: $51
	inc  d                                           ; $6a05: $14
	rst  $38                                         ; $6a06: $ff
	rst  $38                                         ; $6a07: $ff
	ld   de, rAUD1ENV                                   ; $6a08: $11 $12 $ff
	rst  $38                                         ; $6a0b: $ff
	ld   de, $1f11                                   ; $6a0c: $11 $11 $1f
	rst  $38                                         ; $6a0f: $ff
	pop  af                                          ; $6a10: $f1
	ld   d, $16                                      ; $6a11: $16 $16
	ld   de, $ff1d                                   ; $6a13: $11 $1d $ff
	db   $fc                                         ; $6a16: $fc
	ld   de, $ff1a                                   ; $6a17: $11 $1a $ff
	rst  $38                                         ; $6a1a: $ff
	ld   de, $cf11                                   ; $6a1b: $11 $11 $cf
	rst  $38                                         ; $6a1e: $ff
	pop  af                                          ; $6a1f: $f1
	ld   de, $1117                                   ; $6a20: $11 $17 $11
	cpl                                              ; $6a23: $2f
	rst  $38                                         ; $6a24: $ff
	pop  af                                          ; $6a25: $f1
	ld   de, $ff5f                                   ; $6a26: $11 $5f $ff
	pop  af                                          ; $6a29: $f1
	ld   de, rAUD1LEN                                   ; $6a2a: $11 $11 $ff
	rst  $38                                         ; $6a2d: $ff
	ld   de, $6111                                   ; $6a2e: $11 $11 $61
	inc  de                                          ; $6a31: $13
	rst  $38                                         ; $6a32: $ff
	rst  $38                                         ; $6a33: $ff
	add  c                                           ; $6a34: $81
	ld   de, $ffff                                   ; $6a35: $11 $ff $ff
	ld   [hl], c                                     ; $6a38: $71
	ld   de, $ff1f                                   ; $6a39: $11 $1f $ff
	cp   $11                                         ; $6a3c: $fe $11
	ld   de, $4761                                   ; $6a3e: $11 $61 $47
	rst  $38                                         ; $6a41: $ff
	rst  $38                                         ; $6a42: $ff
	ld   de, $ff1c                                   ; $6a43: $11 $1c $ff
	cp   $11                                         ; $6a46: $fe $11
	ld   de, $ff1f                                   ; $6a48: $11 $1f $ff
	pop  af                                          ; $6a4b: $f1
	ld   de, $1419                                   ; $6a4c: $11 $19 $14
	ld   e, a                                        ; $6a4f: $5f
	rst  $38                                         ; $6a50: $ff
	pop  af                                          ; $6a51: $f1
	ld   de, $ff5f                                   ; $6a52: $11 $5f $ff
	pop  af                                          ; $6a55: $f1
	ld   de, rAUD1LEN                                   ; $6a56: $11 $11 $ff
	rst  $38                                         ; $6a59: $ff
	ld   de, $6411                                   ; $6a5a: $11 $11 $64
	dec  [hl]                                        ; $6a5d: $35
	rst  $38                                         ; $6a5e: $ff
	rst  $38                                         ; $6a5f: $ff
	ld   h, c                                        ; $6a60: $61
	ld   de, $ffff                                   ; $6a61: $11 $ff $ff
	ld   sp, $1f11                                   ; $6a64: $31 $11 $1f
	rst  $38                                         ; $6a67: $ff
	push af                                          ; $6a68: $f5
	ld   de, $7112                                   ; $6a69: $11 $12 $71
	ld   l, e                                        ; $6a6c: $6b
	rst  $38                                         ; $6a6d: $ff
	cp   $11                                         ; $6a6e: $fe $11
	inc  e                                           ; $6a70: $1c
	rst  $38                                         ; $6a71: $ff
	ld   sp, hl                                      ; $6a72: $f9
	ld   de, $cf11                                   ; $6a73: $11 $11 $cf
	rst  $38                                         ; $6a76: $ff
	pop  af                                          ; $6a77: $f1
	ld   de, $171a                                   ; $6a78: $11 $1a $17
	ld   l, a                                        ; $6a7b: $6f
	rst  $38                                         ; $6a7c: $ff
	pop  af                                          ; $6a7d: $f1
	ld   de, $ff9f                                   ; $6a7e: $11 $9f $ff
	pop  af                                          ; $6a81: $f1
	ld   de, rAUD1LEN                                   ; $6a82: $11 $11 $ff
	rst  $38                                         ; $6a85: $ff
	ld   de, $a111                                   ; $6a86: $11 $11 $a1
	ld   [hl], l                                     ; $6a89: $75
	rst  $38                                         ; $6a8a: $ff
	rst  $38                                         ; $6a8b: $ff
	ld   d, c                                        ; $6a8c: $51
	ld   de, $ffff                                   ; $6a8d: $11 $ff $ff
	add  c                                           ; $6a90: $81
	ld   de, $ff1f                                   ; $6a91: $11 $1f $ff
	ld   a, [$1411]                                  ; $6a94: $fa $11 $14
	daa                                              ; $6a97: $27
	ld   e, b                                        ; $6a98: $58
	rst  $38                                         ; $6a99: $ff
	rst  $38                                         ; $6a9a: $ff
	ld   de, $ff18                                   ; $6a9b: $11 $18 $ff
	rst  $38                                         ; $6a9e: $ff
	ld   de, $1f11                                   ; $6a9f: $11 $11 $1f
	rst  $38                                         ; $6aa2: $ff
	pop  af                                          ; $6aa3: $f1
	ld   de, $5713                                   ; $6aa4: $11 $13 $57
	rra                                              ; $6aa7: $1f
	rst  $38                                         ; $6aa8: $ff
	di                                               ; $6aa9: $f3
	ld   de, $ff1d                                   ; $6aaa: $11 $1d $ff
	ld   sp, hl                                      ; $6aad: $f9
	ld   de, rAUD1LEN                                   ; $6aae: $11 $11 $ff
	rst  $38                                         ; $6ab1: $ff
	ld   de, $7411                                   ; $6ab2: $11 $11 $74
	and  c                                           ; $6ab5: $a1
	rst  $38                                         ; $6ab6: $ff
	rst  $38                                         ; $6ab7: $ff
	add  c                                           ; $6ab8: $81
	ld   de, $ffcf                                   ; $6ab9: $11 $cf $ff
	pop  hl                                          ; $6abc: $e1
	ld   de, rAUD1LEN                                   ; $6abd: $11 $11 $ff
	rst  $38                                         ; $6ac0: $ff
	ld   de, $2911                                   ; $6ac1: $11 $11 $29
	ld   b, d                                        ; $6ac4: $42
	rst  $38                                         ; $6ac5: $ff
	rst  $38                                         ; $6ac6: $ff
	ld   sp, $df11                                   ; $6ac7: $31 $11 $df
	rst  $38                                         ; $6aca: $ff
	sub  c                                           ; $6acb: $91
	ld   de, $ff1f                                   ; $6acc: $11 $1f $ff
	ld   hl, sp+$11                                  ; $6acf: $f8 $11
	ld   [de], a                                     ; $6ad1: $12
	ld   l, h                                        ; $6ad2: $6c
	inc  e                                           ; $6ad3: $1c
	rst  $38                                         ; $6ad4: $ff
	rst  $38                                         ; $6ad5: $ff
	ld   de, rAUD1LEN                                   ; $6ad6: $11 $11 $ff
	rst  $38                                         ; $6ad9: $ff
	ld   de, $1f11                                   ; $6ada: $11 $11 $1f
	rst  $38                                         ; $6add: $ff
	pop  af                                          ; $6ade: $f1
	ld   de, $a614                                   ; $6adf: $11 $14 $a6
	rra                                              ; $6ae2: $1f
	rst  $38                                         ; $6ae3: $ff
	db   $fd                                         ; $6ae4: $fd
	ld   de, $ff16                                   ; $6ae5: $11 $16 $ff
	db   $fd                                         ; $6ae8: $fd
	ld   de, $6f11                                   ; $6ae9: $11 $11 $6f
	rst  $38                                         ; $6aec: $ff
	pop  af                                          ; $6aed: $f1
	ld   de, $a117                                   ; $6aee: $11 $17 $a1
	ld   e, a                                        ; $6af1: $5f
	rst  $38                                         ; $6af2: $ff
	ei                                               ; $6af3: $fb
	ld   de, $ff1a                                   ; $6af4: $11 $1a $ff
	db   $f4                                         ; $6af7: $f4
	ld   de, rAUD1LEN                                   ; $6af8: $11 $11 $ff
	rst  $38                                         ; $6afb: $ff
	and  c                                           ; $6afc: $a1
	ld   de, $8149                                   ; $6afd: $11 $49 $81
	sbc  l                                           ; $6b00: $9d
	rst  $38                                         ; $6b01: $ff
	cp   $11                                         ; $6b02: $fe $11
	dec  de                                          ; $6b04: $1b
	rst  $38                                         ; $6b05: $ff
	pop  af                                          ; $6b06: $f1
	ld   de, rAUD1LEN                                   ; $6b07: $11 $11 $ff
	rst  $38                                         ; $6b0a: $ff
	ld   de, $9811                                   ; $6b0b: $11 $11 $98
	ld   b, c                                        ; $6b0e: $41
	xor  l                                           ; $6b0f: $ad
	rst  $38                                         ; $6b10: $ff
	db   $fc                                         ; $6b11: $fc
	ld   de, $ff1f                                   ; $6b12: $11 $1f $ff
	pop  bc                                          ; $6b15: $c1
	ld   de, rAUD1HIGH                                   ; $6b16: $11 $14 $ff
	rst  $38                                         ; $6b19: $ff
	ld   de, $9711                                   ; $6b1a: $11 $11 $97
	ld   [hl+], a                                    ; $6b1d: $22
	adc  a                                           ; $6b1e: $8f
	rst  $38                                         ; $6b1f: $ff
	push af                                          ; $6b20: $f5
	ld   de, $ff2f                                   ; $6b21: $11 $2f $ff
	ld   b, c                                        ; $6b24: $41
	ld   de, $ff1f                                   ; $6b25: $11 $1f $ff
	ld   hl, sp+$11                                  ; $6b28: $f8 $11
	jr   @+$68                                       ; $6b2a: $18 $66

	inc  d                                           ; $6b2c: $14
	ld   l, a                                        ; $6b2d: $6f
	rst  $38                                         ; $6b2e: $ff
	pop  af                                          ; $6b2f: $f1
	ld   de, $ff4f                                   ; $6b30: $11 $4f $ff
	ld   de, $1f11                                   ; $6b33: $11 $11 $1f
	rst  $38                                         ; $6b36: $ff
	pop  af                                          ; $6b37: $f1
	ld   de, $6419                                   ; $6b38: $11 $19 $64
	ld   [de], a                                     ; $6b3b: $12
	adc  a                                           ; $6b3c: $8f
	rst  $38                                         ; $6b3d: $ff
	pop  af                                          ; $6b3e: $f1
	ld   de, $f89f                                   ; $6b3f: $11 $9f $f8
	ld   de, $cf11                                   ; $6b42: $11 $11 $cf
	rst  $38                                         ; $6b45: $ff
	pop  af                                          ; $6b46: $f1
	ld   de, $6177                                   ; $6b47: $11 $77 $61
	ld   de, $ffff                                   ; $6b4a: $11 $ff $ff
	ld   [hl], c                                     ; $6b4d: $71
	ld   de, $f1df                                   ; $6b4e: $11 $df $f1
	ld   de, rAUD1LEN                                   ; $6b51: $11 $11 $ff
	rst  $38                                         ; $6b54: $ff
	ld   d, d                                        ; $6b55: $52
	ld   de, $5195                                   ; $6b56: $11 $95 $51
	ld   [de], a                                     ; $6b59: $12
	rst  $38                                         ; $6b5a: $ff
	rst  $38                                         ; $6b5b: $ff
	ld   hl, $ef11                                   ; $6b5c: $21 $11 $ef
	or   c                                           ; $6b5f: $b1
	ld   de, rAUD1LOW                                   ; $6b60: $11 $13 $ff
	rst  $38                                         ; $6b63: $ff
	ld   d, c                                        ; $6b64: $51
	inc  d                                           ; $6b65: $14
	ld   h, a                                        ; $6b66: $67
	ld   de, $ff18                                   ; $6b67: $11 $18 $ff
	rst  $38                                         ; $6b6a: $ff
	ld   hl, $ff15                                   ; $6b6b: $21 $15 $ff
	ld   b, c                                        ; $6b6e: $41
	ld   de, $ff1f                                   ; $6b6f: $11 $1f $ff
	rst  $38                                         ; $6b72: $ff
	ld   [hl], c                                     ; $6b73: $71
	jr   jr_0d0_6bde                                 ; $6b74: $18 $68

	ld   de, $ff1f                                   ; $6b76: $11 $1f $ff
	rst  $38                                         ; $6b79: $ff
	ld   sp, $fd17                                   ; $6b7a: $31 $17 $fd
	ld   de, $1f11                                   ; $6b7d: $11 $11 $1f
	rst  $38                                         ; $6b80: $ff
	rst  $38                                         ; $6b81: $ff
	ld   de, $a637                                   ; $6b82: $11 $37 $a6
	ld   de, $ff1f                                   ; $6b85: $11 $1f $ff
	rst  $38                                         ; $6b88: $ff
	ld   hl, $e71a                                   ; $6b89: $21 $1a $e7
	ld   de, $3f11                                   ; $6b8c: $11 $11 $3f
	rst  $38                                         ; $6b8f: $ff
	rst  $38                                         ; $6b90: $ff
	ld   de, $f179                                   ; $6b91: $11 $79 $f1
	ld   de, $ff1d                                   ; $6b94: $11 $1d $ff
	rst  $38                                         ; $6b97: $ff
	ld   de, $e63a                                   ; $6b98: $11 $3a $e6
	ld   de, $3f11                                   ; $6b9b: $11 $11 $3f
	rst  $38                                         ; $6b9e: $ff
	db   $fc                                         ; $6b9f: $fc
	ld   de, $fa4f                                   ; $6ba0: $11 $4f $fa
	ld   de, $ff18                                   ; $6ba3: $11 $18 $ff
	db   $fc                                         ; $6ba6: $fc
	ld   de, $5116                                   ; $6ba7: $11 $16 $51
	ld   de, $ff16                                   ; $6baa: $11 $16 $ff
	rst  $38                                         ; $6bad: $ff
	ld   de, $ff17                                   ; $6bae: $11 $17 $ff
	push af                                          ; $6bb1: $f5
	ld   sp, $ffef                                   ; $6bb2: $31 $ef $ff
	call nz, $1111                                   ; $6bb5: $c4 $11 $11
	ld   de, $ff19                                   ; $6bb8: $11 $19 $ff
	rst  $38                                         ; $6bbb: $ff
	ld   b, h                                        ; $6bbc: $44
	ld   e, e                                        ; $6bbd: $5b
	rst  JumpTable                                         ; $6bbe: $df
	or   [hl]                                        ; $6bbf: $b6
	ld   h, e                                        ; $6bc0: $63
	xor  a                                           ; $6bc1: $af
	rst  $38                                         ; $6bc2: $ff
	ld   a, [$1172]                                  ; $6bc3: $fa $72 $11
	ld   de, $df15                                   ; $6bc6: $11 $15 $df
	call c, $8a75                                    ; $6bc9: $dc $75 $8a
	cp   $e8                                         ; $6bcc: $fe $e8
	adc  b                                           ; $6bce: $88
	adc  l                                           ; $6bcf: $8d
	cp   l                                           ; $6bd0: $bd
	call c, $3196                                    ; $6bd1: $dc $96 $31
	ld   de, $9e15                                   ; $6bd4: $11 $15 $9e
	cp   b                                           ; $6bd7: $b8
	ld   d, e                                        ; $6bd8: $53
	ld   d, a                                        ; $6bd9: $57
	call z, Call_0d0_78da                            ; $6bda: $cc $da $78
	sbc  e                                           ; $6bdd: $9b

jr_0d0_6bde:
	db   $dd                                         ; $6bde: $dd
	call c, $98aa                                    ; $6bdf: $dc $aa $98
	ld   h, h                                        ; $6be2: $64
	inc  h                                           ; $6be3: $24
	ld   l, b                                        ; $6be4: $68
	and  a                                           ; $6be5: $a7
	ld   d, e                                        ; $6be6: $53
	inc  h                                           ; $6be7: $24
	ld   e, b                                        ; $6be8: $58
	sbc  b                                           ; $6be9: $98
	ld   [hl], l                                     ; $6bea: $75
	ld   l, b                                        ; $6beb: $68
	cp   l                                           ; $6bec: $bd
	xor  $cb                                         ; $6bed: $ee $cb
	call z, $a7cc                                    ; $6bef: $cc $cc $a7
	ld   d, [hl]                                     ; $6bf2: $56
	ld   a, b                                        ; $6bf3: $78
	ld   [hl], l                                     ; $6bf4: $75
	ld   sp, $4613                                   ; $6bf5: $31 $13 $46
	ld   h, l                                        ; $6bf8: $65
	ld   b, e                                        ; $6bf9: $43
	ld   b, a                                        ; $6bfa: $47
	xor  l                                           ; $6bfb: $ad
	db   $ed                                         ; $6bfc: $ed
	call $edcd                                       ; $6bfd: $cd $cd $ed
	jp   z, $8988                                    ; $6c00: $ca $88 $89

	add  [hl]                                        ; $6c03: $86
	ld   [hl-], a                                    ; $6c04: $32
	ld   [de], a                                     ; $6c05: $12
	inc  [hl]                                        ; $6c06: $34
	ld   d, e                                        ; $6c07: $53
	ld   [hl-], a                                    ; $6c08: $32
	ld   h, $9d                                      ; $6c09: $26 $9d
	sbc  $dc                                         ; $6c0b: $de $dc
	db   $ed                                         ; $6c0d: $ed
	db   $fd                                         ; $6c0e: $fd
	call c, $8999                                    ; $6c0f: $dc $99 $89
	add  a                                           ; $6c12: $87
	ld   h, h                                        ; $6c13: $64
	ld   [hl-], a                                    ; $6c14: $32
	ld   [hl+], a                                    ; $6c15: $22
	inc  hl                                          ; $6c16: $23
	inc  hl                                          ; $6c17: $23
	dec  [hl]                                        ; $6c18: $35
	ld   a, c                                        ; $6c19: $79
	cp   h                                           ; $6c1a: $bc
	db   $dd                                         ; $6c1b: $dd
	db   $ed                                         ; $6c1c: $ed
	db   $ed                                         ; $6c1d: $ed
	db   $dd                                         ; $6c1e: $dd
	cp   c                                           ; $6c1f: $b9
	adc  c                                           ; $6c20: $89
	xor  c                                           ; $6c21: $a9
	add  [hl]                                        ; $6c22: $86
	ld   b, d                                        ; $6c23: $42
	ld   [de], a                                     ; $6c24: $12
	ld   [de], a                                     ; $6c25: $12
	ld   [hl+], a                                    ; $6c26: $22
	inc  sp                                          ; $6c27: $33
	ld   h, a                                        ; $6c28: $67
	xor  e                                           ; $6c29: $ab
	db   $dd                                         ; $6c2a: $dd
	sbc  $dd                                         ; $6c2b: $de $dd
	db   $db                                         ; $6c2d: $db
	jp   z, $aa9a                                    ; $6c2e: $ca $9a $aa

	xor  c                                           ; $6c31: $a9
	ld   h, h                                        ; $6c32: $64
	ld   hl, $2211                                   ; $6c33: $21 $11 $22
	inc  sp                                          ; $6c36: $33
	ld   b, [hl]                                     ; $6c37: $46
	ld   a, e                                        ; $6c38: $7b
	adc  $ee                                         ; $6c39: $ce $ee
	call c, $bbbb                                    ; $6c3b: $dc $bb $bb
	xor  d                                           ; $6c3e: $aa
	sbc  e                                           ; $6c3f: $9b
	jp   z, Jump_0d0_4196                            ; $6c40: $ca $96 $41

	ld   de, $2412                                   ; $6c43: $11 $12 $24
	inc  [hl]                                        ; $6c46: $34
	ld   l, b                                        ; $6c47: $68
	cp   h                                           ; $6c48: $bc
	db   $ed                                         ; $6c49: $ed
	db   $db                                         ; $6c4a: $db
	xor  d                                           ; $6c4b: $aa
	xor  e                                           ; $6c4c: $ab
	xor  e                                           ; $6c4d: $ab
	xor  e                                           ; $6c4e: $ab
	res  4, a                                        ; $6c4f: $cb $a7
	ld   b, e                                        ; $6c51: $43
	ld   de, $3312                                   ; $6c52: $11 $12 $33
	ld   b, e                                        ; $6c55: $43
	ld   h, a                                        ; $6c56: $67
	xor  h                                           ; $6c57: $ac
	call $aabb                                       ; $6c58: $cd $bb $aa
	cp   d                                           ; $6c5b: $ba
	set  1, e                                        ; $6c5c: $cb $cb
	call Call_0d0_64b9                               ; $6c5e: $cd $b9 $64
	ld   hl, $3321                                   ; $6c61: $21 $21 $33
	ld   b, h                                        ; $6c64: $44
	ld   b, [hl]                                     ; $6c65: $46
	adc  e                                           ; $6c66: $8b
	call z, $bacb                                    ; $6c67: $cc $cb $ba
	sbc  d                                           ; $6c6a: $9a
	cp   e                                           ; $6c6b: $bb
	set  1, e                                        ; $6c6c: $cb $cb
	cp   d                                           ; $6c6e: $ba
	sub  [hl]                                        ; $6c6f: $96
	ld   b, e                                        ; $6c70: $43
	ld   [hl+], a                                    ; $6c71: $22
	inc  h                                           ; $6c72: $24
	inc  [hl]                                        ; $6c73: $34
	ld   b, h                                        ; $6c74: $44
	ld   a, c                                        ; $6c75: $79
	xor  e                                           ; $6c76: $ab
	cp   e                                           ; $6c77: $bb
	xor  d                                           ; $6c78: $aa
	xor  d                                           ; $6c79: $aa
	cp   e                                           ; $6c7a: $bb
	set  1, e                                        ; $6c7b: $cb $cb
	cp   e                                           ; $6c7d: $bb
	sbc  c                                           ; $6c7e: $99
	ld   h, l                                        ; $6c7f: $65
	inc  sp                                          ; $6c80: $33
	inc  sp                                          ; $6c81: $33
	ld   b, e                                        ; $6c82: $43
	ld   b, h                                        ; $6c83: $44
	ld   d, a                                        ; $6c84: $57
	adc  d                                           ; $6c85: $8a
	xor  e                                           ; $6c86: $ab
	xor  c                                           ; $6c87: $a9
	xor  d                                           ; $6c88: $aa
	xor  d                                           ; $6c89: $aa
	xor  e                                           ; $6c8a: $ab
	cp   h                                           ; $6c8b: $bc
	cp   h                                           ; $6c8c: $bc
	xor  c                                           ; $6c8d: $a9
	add  [hl]                                        ; $6c8e: $86
	ld   h, l                                        ; $6c8f: $65
	ld   b, h                                        ; $6c90: $44
	inc  [hl]                                        ; $6c91: $34
	ld   b, h                                        ; $6c92: $44
	ld   d, l                                        ; $6c93: $55
	ld   h, a                                        ; $6c94: $67
	adc  c                                           ; $6c95: $89
	xor  d                                           ; $6c96: $aa
	sbc  d                                           ; $6c97: $9a
	xor  c                                           ; $6c98: $a9
	xor  e                                           ; $6c99: $ab
	cp   d                                           ; $6c9a: $ba
	cp   d                                           ; $6c9b: $ba
	xor  d                                           ; $6c9c: $aa
	xor  c                                           ; $6c9d: $a9
	add  a                                           ; $6c9e: $87
	ld   h, l                                        ; $6c9f: $65
	ld   b, e                                        ; $6ca0: $43
	inc  [hl]                                        ; $6ca1: $34
	ld   b, h                                        ; $6ca2: $44
	ld   d, [hl]                                     ; $6ca3: $56
	ld   a, b                                        ; $6ca4: $78
	sbc  c                                           ; $6ca5: $99
	xor  c                                           ; $6ca6: $a9
	xor  d                                           ; $6ca7: $aa
	sbc  d                                           ; $6ca8: $9a
	xor  d                                           ; $6ca9: $aa
	xor  e                                           ; $6caa: $ab
	xor  e                                           ; $6cab: $ab
	cp   d                                           ; $6cac: $ba
	cp   d                                           ; $6cad: $ba
	add  a                                           ; $6cae: $87
	ld   d, h                                        ; $6caf: $54
	ld   b, e                                        ; $6cb0: $43
	inc  sp                                          ; $6cb1: $33
	ld   b, h                                        ; $6cb2: $44
	ld   d, [hl]                                     ; $6cb3: $56
	ld   a, c                                        ; $6cb4: $79
	sbc  d                                           ; $6cb5: $9a
	xor  d                                           ; $6cb6: $aa
	xor  c                                           ; $6cb7: $a9
	sbc  d                                           ; $6cb8: $9a
	xor  e                                           ; $6cb9: $ab
	xor  d                                           ; $6cba: $aa
	xor  d                                           ; $6cbb: $aa
	xor  d                                           ; $6cbc: $aa
	xor  c                                           ; $6cbd: $a9
	add  [hl]                                        ; $6cbe: $86
	ld   d, h                                        ; $6cbf: $54
	inc  sp                                          ; $6cc0: $33
	inc  [hl]                                        ; $6cc1: $34
	ld   b, l                                        ; $6cc2: $45
	ld   d, [hl]                                     ; $6cc3: $56
	ld   a, b                                        ; $6cc4: $78
	sbc  d                                           ; $6cc5: $9a
	xor  d                                           ; $6cc6: $aa
	xor  d                                           ; $6cc7: $aa
	xor  d                                           ; $6cc8: $aa
	xor  e                                           ; $6cc9: $ab
	xor  e                                           ; $6cca: $ab
	cp   d                                           ; $6ccb: $ba
	xor  d                                           ; $6ccc: $aa
	xor  c                                           ; $6ccd: $a9
	halt                                             ; $6cce: $76
	ld   d, h                                        ; $6ccf: $54
	ld   b, h                                        ; $6cd0: $44
	ld   b, h                                        ; $6cd1: $44
	ld   d, l                                        ; $6cd2: $55
	ld   h, a                                        ; $6cd3: $67
	ld   a, b                                        ; $6cd4: $78
	adc  d                                           ; $6cd5: $8a
	sbc  d                                           ; $6cd6: $9a
	xor  d                                           ; $6cd7: $aa
	cp   e                                           ; $6cd8: $bb
	xor  e                                           ; $6cd9: $ab
	cp   e                                           ; $6cda: $bb
	cp   d                                           ; $6cdb: $ba
	xor  c                                           ; $6cdc: $a9
	add  a                                           ; $6cdd: $87

jr_0d0_6cde:
	ld   h, l                                        ; $6cde: $65
	ld   b, h                                        ; $6cdf: $44
	inc  [hl]                                        ; $6ce0: $34
	ld   b, l                                        ; $6ce1: $45
	ld   d, [hl]                                     ; $6ce2: $56
	ld   [hl], a                                     ; $6ce3: $77
	adc  c                                           ; $6ce4: $89
	xor  c                                           ; $6ce5: $a9
	xor  d                                           ; $6ce6: $aa
	cp   d                                           ; $6ce7: $ba
	cp   e                                           ; $6ce8: $bb
	cp   e                                           ; $6ce9: $bb
	xor  d                                           ; $6cea: $aa
	cp   d                                           ; $6ceb: $ba
	cp   d                                           ; $6cec: $ba
	add  a                                           ; $6ced: $87
	ld   d, h                                        ; $6cee: $54
	inc  sp                                          ; $6cef: $33
	inc  sp                                          ; $6cf0: $33
	ld   b, h                                        ; $6cf1: $44
	ld   d, l                                        ; $6cf2: $55
	ld   h, a                                        ; $6cf3: $67
	adc  d                                           ; $6cf4: $8a
	xor  d                                           ; $6cf5: $aa
	xor  d                                           ; $6cf6: $aa
	xor  d                                           ; $6cf7: $aa
	xor  e                                           ; $6cf8: $ab
	xor  d                                           ; $6cf9: $aa
	xor  d                                           ; $6cfa: $aa
	xor  e                                           ; $6cfb: $ab
	xor  c                                           ; $6cfc: $a9
	add  [hl]                                        ; $6cfd: $86
	ld   b, e                                        ; $6cfe: $43
	inc  sp                                          ; $6cff: $33
	ld   b, h                                        ; $6d00: $44
	ld   d, l                                        ; $6d01: $55
	ld   h, a                                        ; $6d02: $67
	ld   a, c                                        ; $6d03: $79
	xor  d                                           ; $6d04: $aa
	cp   e                                           ; $6d05: $bb
	xor  d                                           ; $6d06: $aa
	cp   e                                           ; $6d07: $bb
	xor  e                                           ; $6d08: $ab
	cp   e                                           ; $6d09: $bb
	xor  c                                           ; $6d0a: $a9
	sbc  b                                           ; $6d0b: $98
	halt                                             ; $6d0c: $76
	ld   d, h                                        ; $6d0d: $54
	inc  sp                                          ; $6d0e: $33
	inc  [hl]                                        ; $6d0f: $34
	ld   d, l                                        ; $6d10: $55
	ld   h, a                                        ; $6d11: $67
	adc  d                                           ; $6d12: $8a
	adc  $eb                                         ; $6d13: $ce $eb
	call $9ab9                                       ; $6d15: $cd $b9 $9a
	sbc  b                                           ; $6d18: $98
	add  a                                           ; $6d19: $87
	halt                                             ; $6d1a: $76
	ld   b, e                                        ; $6d1b: $43
	ld   hl, $4523                                   ; $6d1c: $21 $23 $45
	ld   [hl], a                                     ; $6d1f: $77
	adc  c                                           ; $6d20: $89
	cp   l                                           ; $6d21: $bd
	db   $ed                                         ; $6d22: $ed
	cp   e                                           ; $6d23: $bb
	cp   d                                           ; $6d24: $ba
	adc  b                                           ; $6d25: $88
	xor  d                                           ; $6d26: $aa
	xor  d                                           ; $6d27: $aa
	sub  l                                           ; $6d28: $95
	ld   b, c                                        ; $6d29: $41
	ld   [de], a                                     ; $6d2a: $12
	ld   b, [hl]                                     ; $6d2b: $46
	ld   a, b                                        ; $6d2c: $78
	ld   h, a                                        ; $6d2d: $67
	sbc  h                                           ; $6d2e: $9c
	rst  $38                                         ; $6d2f: $ff
	rst  $38                                         ; $6d30: $ff
	cp   c                                           ; $6d31: $b9
	ld   [hl], e                                     ; $6d32: $73
	jr   z, jr_0d0_6cde                              ; $6d33: $28 $a9

	sub  $11                                         ; $6d35: $d6 $11
	ld   de, $ff4b                                   ; $6d37: $11 $4b $ff
	ei                                               ; $6d3a: $fb
	db   $dd                                         ; $6d3b: $dd
	rst  $38                                         ; $6d3c: $ff
	rst  $38                                         ; $6d3d: $ff
	ld   b, c                                        ; $6d3e: $41
	ld   de, $5f11                                   ; $6d3f: $11 $11 $5f
	db   $fc                                         ; $6d42: $fc
	or   c                                           ; $6d43: $b1
	dec  de                                          ; $6d44: $1b
	rst  $38                                         ; $6d45: $ff
	rst  $38                                         ; $6d46: $ff
	ld   h, [hl]                                     ; $6d47: $66
	ld   l, h                                        ; $6d48: $6c
	rst  $38                                         ; $6d49: $ff
	ld   [hl], c                                     ; $6d4a: $71
	ld   de, rAUD1LEN                                   ; $6d4b: $11 $11 $ff
	rst  $38                                         ; $6d4e: $ff
	pop  hl                                          ; $6d4f: $e1
	ld   e, $ff                                      ; $6d50: $1e $ff
	ldh  a, [c]                                      ; $6d52: $f2
	ld   de, $ff6f                                   ; $6d53: $11 $6f $ff
	ld   de, $1f11                                   ; $6d56: $11 $11 $1f
	rst  $38                                         ; $6d59: $ff
	db   $fd                                         ; $6d5a: $fd
	ld   de, $ffbf                                   ; $6d5b: $11 $bf $ff
	ld   de, $ff1c                                   ; $6d5e: $11 $1c $ff
	rst  $30                                         ; $6d61: $f7
	ld   de, rAUD1LEN                                   ; $6d62: $11 $11 $ff
	rst  $38                                         ; $6d65: $ff
	ld   h, [hl]                                     ; $6d66: $66
	inc  de                                          ; $6d67: $13
	rst  $38                                         ; $6d68: $ff
	pop  de                                          ; $6d69: $d1
	ld   de, $ffff                                   ; $6d6a: $11 $ff $ff
	and  c                                           ; $6d6d: $a1
	ld   de, $ff17                                   ; $6d6e: $11 $17 $ff
	cp   $a5                                         ; $6d71: $fe $a5
	rra                                              ; $6d73: $1f
	rst  $30                                         ; $6d74: $f7
	ld   de, $ff1f                                   ; $6d75: $11 $1f $ff
	rst  $38                                         ; $6d78: $ff
	ld   de, $1f11                                   ; $6d79: $11 $11 $1f
	rst  $38                                         ; $6d7c: $ff
	db   $fc                                         ; $6d7d: $fc
	pop  af                                          ; $6d7e: $f1
	xor  a                                           ; $6d7f: $af
	ld   d, c                                        ; $6d80: $51
	ld   de, $ff6f                                   ; $6d81: $11 $6f $ff
	pop  af                                          ; $6d84: $f1
	ld   de, rAUD1LEN                                   ; $6d85: $11 $11 $ff
	rst  $38                                         ; $6d88: $ff
	rst  $38                                         ; $6d89: $ff
	add  c                                           ; $6d8a: $81
	or   $11                                         ; $6d8b: $f6 $11
	ld   de, $ffff                                   ; $6d8d: $11 $ff $ff
	ld   de, $1911                                   ; $6d90: $11 $11 $19
	rst  $38                                         ; $6d93: $ff
	rst  $38                                         ; $6d94: $ff
	cp   $1a                                         ; $6d95: $fe $1a
	ld   h, c                                        ; $6d97: $61
	ld   de, $ff1f                                   ; $6d98: $11 $1f $ff
	di                                               ; $6d9b: $f3
	ld   de, $2f11                                   ; $6d9c: $11 $11 $2f
	rst  $38                                         ; $6d9f: $ff
	rst  $38                                         ; $6da0: $ff
	pop  af                                          ; $6da1: $f1
	ld   [hl+], a                                    ; $6da2: $22
	ld   de, rAUD1LEN                                   ; $6da3: $11 $11 $ff
	rst  $38                                         ; $6da6: $ff
	ld   h, c                                        ; $6da7: $61
	ld   de, rAUD1LEN                                   ; $6da8: $11 $11 $ff
	rst  $38                                         ; $6dab: $ff
	rst  $38                                         ; $6dac: $ff
	ld   de, $1111                                   ; $6dad: $11 $11 $11
	ld   l, a                                        ; $6db0: $6f
	rst  $38                                         ; $6db1: $ff
	or   $11                                         ; $6db2: $f6 $11
	ld   de, $ff1f                                   ; $6db4: $11 $1f $ff
	rst  $38                                         ; $6db7: $ff
	pop  af                                          ; $6db8: $f1
	ld   de, $1b11                                   ; $6db9: $11 $11 $1b
	rst  $38                                         ; $6dbc: $ff
	rst  $38                                         ; $6dbd: $ff
	ld   de, $1111                                   ; $6dbe: $11 $11 $11
	rst  $38                                         ; $6dc1: $ff
	rst  $38                                         ; $6dc2: $ff
	rst  $38                                         ; $6dc3: $ff
	ld   de, $1111                                   ; $6dc4: $11 $11 $11
	rst  $38                                         ; $6dc7: $ff
	rst  $38                                         ; $6dc8: $ff
	pop  af                                          ; $6dc9: $f1
	ld   de, $1f11                                   ; $6dca: $11 $11 $1f
	rst  $38                                         ; $6dcd: $ff
	rst  $38                                         ; $6dce: $ff
	pop  af                                          ; $6dcf: $f1
	ld   de, $4f11                                   ; $6dd0: $11 $11 $4f
	rst  $38                                         ; $6dd3: $ff
	rst  $38                                         ; $6dd4: $ff
	ld   de, $1111                                   ; $6dd5: $11 $11 $11
	rst  $38                                         ; $6dd8: $ff
	rst  $38                                         ; $6dd9: $ff
	rst  $38                                         ; $6dda: $ff
	ld   de, $1911                                   ; $6ddb: $11 $11 $19
	rst  $38                                         ; $6dde: $ff
	rst  $38                                         ; $6ddf: $ff
	pop  af                                          ; $6de0: $f1
	ld   de, $8f11                                   ; $6de1: $11 $11 $8f
	rst  $38                                         ; $6de4: $ff
	rst  $38                                         ; $6de5: $ff
	pop  af                                          ; $6de6: $f1
	ld   de, rAUD1LEN                                   ; $6de7: $11 $11 $ff
	rst  $38                                         ; $6dea: $ff
	rst  $38                                         ; $6deb: $ff
	ld   de, $1f11                                   ; $6dec: $11 $11 $1f
	rst  $38                                         ; $6def: $ff
	rst  $38                                         ; $6df0: $ff
	ld   a, [$1111]                                  ; $6df1: $fa $11 $11
	rra                                              ; $6df4: $1f
	rst  $38                                         ; $6df5: $ff
	rst  $38                                         ; $6df6: $ff
	ld   de, $1111                                   ; $6df7: $11 $11 $11
	rst  $38                                         ; $6dfa: $ff
	rst  $38                                         ; $6dfb: $ff
	rst  $38                                         ; $6dfc: $ff
	ld   de, $1911                                   ; $6dfd: $11 $11 $19
	rst  $38                                         ; $6e00: $ff
	rst  $38                                         ; $6e01: $ff
	pop  af                                          ; $6e02: $f1
	ld   de, $1f11                                   ; $6e03: $11 $11 $1f
	rst  $38                                         ; $6e06: $ff
	rst  $38                                         ; $6e07: $ff
	pop  bc                                          ; $6e08: $c1
	ld   de, rAUD1LEN                                   ; $6e09: $11 $11 $ff
	rst  $38                                         ; $6e0c: $ff
	rst  $30                                         ; $6e0d: $f7
	ld   de, $1f11                                   ; $6e0e: $11 $11 $1f
	rst  $38                                         ; $6e11: $ff
	rst  $38                                         ; $6e12: $ff
	ldh  a, [c]                                      ; $6e13: $f2
	ld   de, $2f11                                   ; $6e14: $11 $11 $2f
	rst  $38                                         ; $6e17: $ff
	rst  $38                                         ; $6e18: $ff
	ld   de, $1111                                   ; $6e19: $11 $11 $11
	rst  $38                                         ; $6e1c: $ff
	rst  $38                                         ; $6e1d: $ff
	db   $fc                                         ; $6e1e: $fc
	ld   de, $1f11                                   ; $6e1f: $11 $11 $1f
	rst  $38                                         ; $6e22: $ff
	rst  $38                                         ; $6e23: $ff
	ld   h, c                                        ; $6e24: $61
	ld   de, rAUD1LEN                                   ; $6e25: $11 $11 $ff
	rst  $38                                         ; $6e28: $ff
	rst  $38                                         ; $6e29: $ff
	ld   de, $1111                                   ; $6e2a: $11 $11 $11
	rst  $38                                         ; $6e2d: $ff
	rst  $38                                         ; $6e2e: $ff
	pop  af                                          ; $6e2f: $f1
	ld   de, $1f11                                   ; $6e30: $11 $11 $1f
	rst  $38                                         ; $6e33: $ff
	rst  $38                                         ; $6e34: $ff
	sub  c                                           ; $6e35: $91
	ld   de, rAUD1LEN                                   ; $6e36: $11 $11 $ff
	rst  $38                                         ; $6e39: $ff
	pop  af                                          ; $6e3a: $f1
	ld   de, $1f11                                   ; $6e3b: $11 $11 $1f
	rst  $38                                         ; $6e3e: $ff
	rst  $38                                         ; $6e3f: $ff
	pop  af                                          ; $6e40: $f1
	ld   de, $df11                                   ; $6e41: $11 $11 $df
	rst  $38                                         ; $6e44: $ff
	di                                               ; $6e45: $f3
	ld   de, $1f11                                   ; $6e46: $11 $11 $1f
	rst  $38                                         ; $6e49: $ff
	rst  $38                                         ; $6e4a: $ff
	pop  af                                          ; $6e4b: $f1
	ld   de, $7f11                                   ; $6e4c: $11 $11 $7f
	rst  $38                                         ; $6e4f: $ff
	ld   a, [$1111]                                  ; $6e50: $fa $11 $11
	rra                                              ; $6e53: $1f
	rst  $38                                         ; $6e54: $ff
	rst  $38                                         ; $6e55: $ff
	push af                                          ; $6e56: $f5
	ld   de, $4f11                                   ; $6e57: $11 $11 $4f
	rst  $38                                         ; $6e5a: $ff
	db   $fd                                         ; $6e5b: $fd
	ld   de, $1f11                                   ; $6e5c: $11 $11 $1f
	rst  $38                                         ; $6e5f: $ff
	rst  $38                                         ; $6e60: $ff
	ld   a, [$1111]                                  ; $6e61: $fa $11 $11
	adc  a                                           ; $6e64: $8f
	rst  $38                                         ; $6e65: $ff
	db   $fc                                         ; $6e66: $fc
	ld   de, $7f11                                   ; $6e67: $11 $11 $7f
	rst  $38                                         ; $6e6a: $ff
	rst  $38                                         ; $6e6b: $ff
	ld   a, [$1111]                                  ; $6e6c: $fa $11 $11
	xor  a                                           ; $6e6f: $af
	rst  $38                                         ; $6e70: $ff
	ld   hl, sp+$11                                  ; $6e71: $f8 $11
	ld   de, $ffff                                   ; $6e73: $11 $ff $ff
	rst  $38                                         ; $6e76: $ff
	rst  $30                                         ; $6e77: $f7
	ld   de, $cf15                                   ; $6e78: $11 $15 $cf
	rst  $38                                         ; $6e7b: $ff
	pop  af                                          ; $6e7c: $f1
	ld   de, rAUD1LEN                                   ; $6e7d: $11 $11 $ff
	rst  $38                                         ; $6e80: $ff
	rst  $38                                         ; $6e81: $ff
	ldh  a, [c]                                      ; $6e82: $f2
	ld   de, $7f1c                                   ; $6e83: $11 $1c $7f
	rst  $38                                         ; $6e86: $ff
	pop  af                                          ; $6e87: $f1
	ld   de, $ff1f                                   ; $6e88: $11 $1f $ff
	db   $fd                                         ; $6e8b: $fd
	rst  $38                                         ; $6e8c: $ff
	pop  af                                          ; $6e8d: $f1
	ld   de, $7fdb                                   ; $6e8e: $11 $db $7f
	rst  $38                                         ; $6e91: $ff
	ld   h, c                                        ; $6e92: $61
	ld   de, $fe3f                                   ; $6e93: $11 $3f $fe
	ld   a, a                                        ; $6e96: $7f
	rst  $38                                         ; $6e97: $ff
	and  c                                           ; $6e98: $a1
	inc  a                                           ; $6e99: $3c
	or   $9a                                         ; $6e9a: $f6 $9a
	rst  $38                                         ; $6e9c: $ff
	ld   de, rAUD1LEN                                   ; $6e9d: $11 $11 $ff
	sub  $7f                                         ; $6ea0: $d6 $7f
	rst  $38                                         ; $6ea2: $ff
	ld   [hl], l                                     ; $6ea3: $75
	sbc  a                                           ; $6ea4: $9f
	or   [hl]                                        ; $6ea5: $b6
	ld   a, b                                        ; $6ea6: $78
	push hl                                          ; $6ea7: $e5
	ld   de, $c91c                                   ; $6ea8: $11 $1c $c9
	halt                                             ; $6eab: $76
	adc  e                                           ; $6eac: $8b
	add  l                                           ; $6ead: $85
	ld   b, h                                        ; $6eae: $44
	ld   d, l                                        ; $6eaf: $55
	ld   l, b                                        ; $6eb0: $68
	sbc  e                                           ; $6eb1: $9b
	call $cccb                                       ; $6eb2: $cd $cb $cc
	call z, $aaba                                    ; $6eb5: $cc $ba $aa
	ld   [hl], h                                     ; $6eb8: $74
	ld   de, $4513                                   ; $6eb9: $11 $13 $45
	ld   l, b                                        ; $6ebc: $68
	xor  e                                           ; $6ebd: $ab
	xor  c                                           ; $6ebe: $a9
	xor  d                                           ; $6ebf: $aa
	cp   d                                           ; $6ec0: $ba
	xor  e                                           ; $6ec1: $ab
	res  4, [hl]                                     ; $6ec2: $cb $a6
	ld   b, h                                        ; $6ec4: $44
	ld   b, l                                        ; $6ec5: $45
	ld   d, l                                        ; $6ec6: $55
	ld   h, a                                        ; $6ec7: $67
	sbc  b                                           ; $6ec8: $98
	ld   [hl], a                                     ; $6ec9: $77
	adc  b                                           ; $6eca: $88
	sbc  c                                           ; $6ecb: $99
	xor  e                                           ; $6ecc: $ab
	db   $dd                                         ; $6ecd: $dd
	cp   b                                           ; $6ece: $b8
	ld   [hl], a                                     ; $6ecf: $77
	ld   [hl], a                                     ; $6ed0: $77
	ld   h, a                                        ; $6ed1: $67
	adc  b                                           ; $6ed2: $88
	halt                                             ; $6ed3: $76
	ld   d, [hl]                                     ; $6ed4: $56
	ld   h, [hl]                                     ; $6ed5: $66
	ld   h, [hl]                                     ; $6ed6: $66
	ld   a, c                                        ; $6ed7: $79
	xor  e                                           ; $6ed8: $ab
	xor  d                                           ; $6ed9: $aa
	sbc  b                                           ; $6eda: $98
	add  a                                           ; $6edb: $87
	adc  b                                           ; $6edc: $88
	xor  c                                           ; $6edd: $a9
	xor  c                                           ; $6ede: $a9
	adc  b                                           ; $6edf: $88
	ld   [hl], l                                     ; $6ee0: $75
	ld   d, l                                        ; $6ee1: $55
	ld   h, a                                        ; $6ee2: $67
	adc  b                                           ; $6ee3: $88
	sbc  c                                           ; $6ee4: $99
	adc  b                                           ; $6ee5: $88
	ld   [hl], a                                     ; $6ee6: $77
	adc  c                                           ; $6ee7: $89
	xor  c                                           ; $6ee8: $a9
	xor  d                                           ; $6ee9: $aa
	cp   d                                           ; $6eea: $ba
	sub  a                                           ; $6eeb: $97
	ld   h, [hl]                                     ; $6eec: $66
	ld   h, a                                        ; $6eed: $67
	ld   a, b                                        ; $6eee: $78
	adc  b                                           ; $6eef: $88
	sub  a                                           ; $6ef0: $97
	ld   h, l                                        ; $6ef1: $65
	ld   h, a                                        ; $6ef2: $67
	ld   [hl], a                                     ; $6ef3: $77
	sbc  d                                           ; $6ef4: $9a
	cp   e                                           ; $6ef5: $bb
	sbc  c                                           ; $6ef6: $99
	add  a                                           ; $6ef7: $87
	ld   [hl], a                                     ; $6ef8: $77
	adc  b                                           ; $6ef9: $88
	sbc  c                                           ; $6efa: $99
	add  a                                           ; $6efb: $87
	ld   h, l                                        ; $6efc: $65
	ld   b, h                                        ; $6efd: $44
	ld   d, [hl]                                     ; $6efe: $56
	adc  d                                           ; $6eff: $8a
	cp   d                                           ; $6f00: $ba
	xor  c                                           ; $6f01: $a9
	sub  a                                           ; $6f02: $97
	ld   [hl], a                                     ; $6f03: $77
	sbc  c                                           ; $6f04: $99
	cp   e                                           ; $6f05: $bb
	xor  c                                           ; $6f06: $a9
	halt                                             ; $6f07: $76
	ld   b, h                                        ; $6f08: $44
	ld   d, [hl]                                     ; $6f09: $56
	adc  c                                           ; $6f0a: $89
	xor  c                                           ; $6f0b: $a9
	sbc  c                                           ; $6f0c: $99
	halt                                             ; $6f0d: $76
	ld   d, [hl]                                     ; $6f0e: $56
	adc  c                                           ; $6f0f: $89
	cp   d                                           ; $6f10: $ba
	cp   d                                           ; $6f11: $ba
	sub  a                                           ; $6f12: $97
	ld   d, l                                        ; $6f13: $55
	ld   d, [hl]                                     ; $6f14: $56
	adc  b                                           ; $6f15: $88
	xor  d                                           ; $6f16: $aa
	sbc  b                                           ; $6f17: $98
	halt                                             ; $6f18: $76
	ld   d, [hl]                                     ; $6f19: $56
	ld   a, b                                        ; $6f1a: $78
	sbc  e                                           ; $6f1b: $9b
	xor  d                                           ; $6f1c: $aa
	sub  a                                           ; $6f1d: $97
	ld   h, [hl]                                     ; $6f1e: $66
	ld   h, a                                        ; $6f1f: $67
	adc  b                                           ; $6f20: $88
	sbc  d                                           ; $6f21: $9a
	sbc  c                                           ; $6f22: $99
	halt                                             ; $6f23: $76
	ld   d, [hl]                                     ; $6f24: $56
	ld   a, b                                        ; $6f25: $78
	sbc  d                                           ; $6f26: $9a
	cp   d                                           ; $6f27: $ba
	sbc  b                                           ; $6f28: $98
	ld   h, [hl]                                     ; $6f29: $66
	ld   h, a                                        ; $6f2a: $67
	ld   a, b                                        ; $6f2b: $78
	xor  c                                           ; $6f2c: $a9
	xor  b                                           ; $6f2d: $a8
	ld   [hl], a                                     ; $6f2e: $77
	ld   h, [hl]                                     ; $6f2f: $66
	ld   [hl], a                                     ; $6f30: $77
	sbc  d                                           ; $6f31: $9a
	xor  c                                           ; $6f32: $a9
	sbc  b                                           ; $6f33: $98
	ld   [hl], a                                     ; $6f34: $77
	ld   h, [hl]                                     ; $6f35: $66
	ld   a, b                                        ; $6f36: $78
	sbc  d                                           ; $6f37: $9a
	sbc  b                                           ; $6f38: $98
	add  a                                           ; $6f39: $87
	halt                                             ; $6f3a: $76
	ld   [hl], a                                     ; $6f3b: $77
	adc  c                                           ; $6f3c: $89
	sbc  c                                           ; $6f3d: $99
	sbc  b                                           ; $6f3e: $98
	add  a                                           ; $6f3f: $87
	ld   h, [hl]                                     ; $6f40: $66
	ld   a, c                                        ; $6f41: $79
	adc  c                                           ; $6f42: $89
	adc  b                                           ; $6f43: $88
	adc  b                                           ; $6f44: $88
	ld   [hl], a                                     ; $6f45: $77
	ld   [hl], a                                     ; $6f46: $77
	adc  b                                           ; $6f47: $88
	sbc  b                                           ; $6f48: $98
	sbc  c                                           ; $6f49: $99
	sub  a                                           ; $6f4a: $97
	ld   h, a                                        ; $6f4b: $67
	ld   a, b                                        ; $6f4c: $78
	adc  b                                           ; $6f4d: $88
	sbc  b                                           ; $6f4e: $98
	sbc  b                                           ; $6f4f: $98
	add  a                                           ; $6f50: $87
	adc  b                                           ; $6f51: $88
	adc  b                                           ; $6f52: $88
	adc  b                                           ; $6f53: $88
	sbc  c                                           ; $6f54: $99
	sub  a                                           ; $6f55: $97
	ld   [hl], a                                     ; $6f56: $77
	ld   [hl], a                                     ; $6f57: $77
	ld   [hl], a                                     ; $6f58: $77
	adc  b                                           ; $6f59: $88
	sbc  c                                           ; $6f5a: $99
	adc  b                                           ; $6f5b: $88
	adc  b                                           ; $6f5c: $88
	adc  b                                           ; $6f5d: $88
	adc  b                                           ; $6f5e: $88
	sbc  c                                           ; $6f5f: $99
	adc  b                                           ; $6f60: $88
	ld   a, b                                        ; $6f61: $78
	add  a                                           ; $6f62: $87
	ld   [hl], a                                     ; $6f63: $77
	adc  c                                           ; $6f64: $89
	sbc  b                                           ; $6f65: $98
	adc  b                                           ; $6f66: $88
	sbc  b                                           ; $6f67: $98
	ld   [hl], a                                     ; $6f68: $77
	adc  c                                           ; $6f69: $89
	sbc  c                                           ; $6f6a: $99
	adc  b                                           ; $6f6b: $88
	sbc  b                                           ; $6f6c: $98
	add  a                                           ; $6f6d: $87
	ld   [hl], a                                     ; $6f6e: $77
	adc  b                                           ; $6f6f: $88
	adc  b                                           ; $6f70: $88
	adc  c                                           ; $6f71: $89
	sbc  b                                           ; $6f72: $98
	ld   [hl], a                                     ; $6f73: $77
	adc  c                                           ; $6f74: $89
	adc  b                                           ; $6f75: $88
	adc  b                                           ; $6f76: $88
	adc  c                                           ; $6f77: $89
	adc  b                                           ; $6f78: $88
	ld   [hl], a                                     ; $6f79: $77
	adc  b                                           ; $6f7a: $88
	adc  b                                           ; $6f7b: $88
	sbc  b                                           ; $6f7c: $98
	adc  b                                           ; $6f7d: $88
	adc  b                                           ; $6f7e: $88
	adc  b                                           ; $6f7f: $88
	add  a                                           ; $6f80: $87
	adc  c                                           ; $6f81: $89
	adc  b                                           ; $6f82: $88
	adc  b                                           ; $6f83: $88
	add  a                                           ; $6f84: $87
	ld   [hl], a                                     ; $6f85: $77
	adc  b                                           ; $6f86: $88
	sbc  c                                           ; $6f87: $99
	sbc  c                                           ; $6f88: $99
	sbc  c                                           ; $6f89: $99
	adc  b                                           ; $6f8a: $88
	ld   [hl], a                                     ; $6f8b: $77
	adc  b                                           ; $6f8c: $88
	sbc  c                                           ; $6f8d: $99
	sbc  b                                           ; $6f8e: $98
	adc  b                                           ; $6f8f: $88
	ld   [hl], a                                     ; $6f90: $77
	ld   a, b                                        ; $6f91: $78
	adc  b                                           ; $6f92: $88
	sbc  b                                           ; $6f93: $98
	sbc  b                                           ; $6f94: $98
	adc  b                                           ; $6f95: $88
	ld   [hl], a                                     ; $6f96: $77
	adc  b                                           ; $6f97: $88
	adc  c                                           ; $6f98: $89
	sbc  c                                           ; $6f99: $99
	adc  b                                           ; $6f9a: $88
	ld   [hl], a                                     ; $6f9b: $77
	ld   [hl], a                                     ; $6f9c: $77
	adc  b                                           ; $6f9d: $88
	adc  c                                           ; $6f9e: $89
	sbc  b                                           ; $6f9f: $98
	adc  b                                           ; $6fa0: $88
	ld   [hl], a                                     ; $6fa1: $77
	ld   a, b                                        ; $6fa2: $78
	adc  c                                           ; $6fa3: $89
	adc  b                                           ; $6fa4: $88
	sbc  b                                           ; $6fa5: $98
	add  a                                           ; $6fa6: $87
	ld   [hl], a                                     ; $6fa7: $77
	ld   a, b                                        ; $6fa8: $78
	sbc  c                                           ; $6fa9: $99
	sbc  c                                           ; $6faa: $99
	add  a                                           ; $6fab: $87
	ld   [hl], a                                     ; $6fac: $77
	ld   a, b                                        ; $6fad: $78
	adc  c                                           ; $6fae: $89
	adc  b                                           ; $6faf: $88
	sbc  b                                           ; $6fb0: $98
	add  a                                           ; $6fb1: $87
	ld   [hl], a                                     ; $6fb2: $77
	ld   a, b                                        ; $6fb3: $78
	sbc  c                                           ; $6fb4: $99
	sbc  b                                           ; $6fb5: $98
	adc  b                                           ; $6fb6: $88
	ld   [hl], a                                     ; $6fb7: $77
	ld   [hl], a                                     ; $6fb8: $77
	adc  b                                           ; $6fb9: $88
	sbc  b                                           ; $6fba: $98
	sbc  b                                           ; $6fbb: $98
	add  a                                           ; $6fbc: $87
	ld   [hl], a                                     ; $6fbd: $77
	ld   a, b                                        ; $6fbe: $78
	sbc  b                                           ; $6fbf: $98
	sbc  b                                           ; $6fc0: $98
	sbc  b                                           ; $6fc1: $98
	add  a                                           ; $6fc2: $87
	ld   [hl], a                                     ; $6fc3: $77
	adc  b                                           ; $6fc4: $88
	sbc  c                                           ; $6fc5: $99
	sbc  b                                           ; $6fc6: $98
	adc  b                                           ; $6fc7: $88
	ld   [hl], a                                     ; $6fc8: $77
	ld   a, b                                        ; $6fc9: $78
	adc  c                                           ; $6fca: $89
	adc  b                                           ; $6fcb: $88
	sbc  b                                           ; $6fcc: $98
	add  a                                           ; $6fcd: $87
	ld   [hl], a                                     ; $6fce: $77
	adc  b                                           ; $6fcf: $88
	sbc  c                                           ; $6fd0: $99
	sbc  b                                           ; $6fd1: $98
	adc  b                                           ; $6fd2: $88
	ld   [hl], a                                     ; $6fd3: $77
	ld   a, b                                        ; $6fd4: $78
	adc  c                                           ; $6fd5: $89
	sbc  c                                           ; $6fd6: $99
	sbc  b                                           ; $6fd7: $98
	add  a                                           ; $6fd8: $87
	ld   [hl], a                                     ; $6fd9: $77
	adc  b                                           ; $6fda: $88
	adc  c                                           ; $6fdb: $89
	sbc  c                                           ; $6fdc: $99
	adc  b                                           ; $6fdd: $88
	ld   [hl], a                                     ; $6fde: $77
	ld   a, b                                        ; $6fdf: $78
	adc  b                                           ; $6fe0: $88
	sbc  c                                           ; $6fe1: $99
	sbc  b                                           ; $6fe2: $98
	add  a                                           ; $6fe3: $87
	ld   [hl], a                                     ; $6fe4: $77
	adc  b                                           ; $6fe5: $88
	adc  c                                           ; $6fe6: $89
	sbc  c                                           ; $6fe7: $99
	adc  b                                           ; $6fe8: $88
	ld   [hl], a                                     ; $6fe9: $77
	ld   a, b                                        ; $6fea: $78
	adc  b                                           ; $6feb: $88
	adc  c                                           ; $6fec: $89
	adc  b                                           ; $6fed: $88
	ld   [hl], a                                     ; $6fee: $77
	ld   [hl], a                                     ; $6fef: $77
	ld   a, b                                        ; $6ff0: $78
	adc  b                                           ; $6ff1: $88
	sbc  b                                           ; $6ff2: $98
	adc  b                                           ; $6ff3: $88
	ld   [hl], a                                     ; $6ff4: $77
	ld   a, b                                        ; $6ff5: $78
	adc  b                                           ; $6ff6: $88
	adc  c                                           ; $6ff7: $89
	adc  b                                           ; $6ff8: $88
	add  a                                           ; $6ff9: $87
	ld   [hl], a                                     ; $6ffa: $77
	adc  b                                           ; $6ffb: $88
	adc  b                                           ; $6ffc: $88
	adc  b                                           ; $6ffd: $88
	adc  b                                           ; $6ffe: $88
	ld   [hl], a                                     ; $6fff: $77
	ld   a, b                                        ; $7000: $78
	adc  b                                           ; $7001: $88
	adc  b                                           ; $7002: $88
	adc  b                                           ; $7003: $88
	add  a                                           ; $7004: $87
	ld   a, b                                        ; $7005: $78
	adc  b                                           ; $7006: $88
	adc  b                                           ; $7007: $88
	adc  b                                           ; $7008: $88
	add  a                                           ; $7009: $87
	ld   [hl], a                                     ; $700a: $77
	ld   a, b                                        ; $700b: $78
	adc  b                                           ; $700c: $88
	adc  b                                           ; $700d: $88
	adc  b                                           ; $700e: $88
	adc  b                                           ; $700f: $88
	adc  b                                           ; $7010: $88
	adc  b                                           ; $7011: $88
	adc  b                                           ; $7012: $88
	adc  b                                           ; $7013: $88
	adc  b                                           ; $7014: $88
	ld   [hl], a                                     ; $7015: $77
	adc  b                                           ; $7016: $88
	adc  b                                           ; $7017: $88
	adc  b                                           ; $7018: $88
	adc  b                                           ; $7019: $88
	adc  b                                           ; $701a: $88
	adc  b                                           ; $701b: $88
	adc  b                                           ; $701c: $88
	adc  b                                           ; $701d: $88
	adc  b                                           ; $701e: $88
	adc  b                                           ; $701f: $88
	adc  b                                           ; $7020: $88
	adc  b                                           ; $7021: $88
	adc  b                                           ; $7022: $88
	adc  b                                           ; $7023: $88
	adc  b                                           ; $7024: $88
	adc  b                                           ; $7025: $88
	adc  b                                           ; $7026: $88
	adc  b                                           ; $7027: $88
	adc  b                                           ; $7028: $88
	adc  b                                           ; $7029: $88
	adc  b                                           ; $702a: $88
	adc  b                                           ; $702b: $88
	adc  b                                           ; $702c: $88
	adc  b                                           ; $702d: $88
	adc  b                                           ; $702e: $88
	adc  b                                           ; $702f: $88
	adc  b                                           ; $7030: $88
	adc  b                                           ; $7031: $88
	adc  b                                           ; $7032: $88
	adc  b                                           ; $7033: $88
	adc  b                                           ; $7034: $88
	adc  b                                           ; $7035: $88
	adc  b                                           ; $7036: $88
	adc  b                                           ; $7037: $88
	adc  b                                           ; $7038: $88
	adc  b                                           ; $7039: $88
	adc  b                                           ; $703a: $88
	adc  b                                           ; $703b: $88
	adc  b                                           ; $703c: $88
	adc  b                                           ; $703d: $88
	adc  b                                           ; $703e: $88
	adc  b                                           ; $703f: $88
	adc  b                                           ; $7040: $88
	adc  b                                           ; $7041: $88
	adc  b                                           ; $7042: $88
	adc  b                                           ; $7043: $88
	adc  b                                           ; $7044: $88
	adc  b                                           ; $7045: $88
	adc  b                                           ; $7046: $88
	adc  b                                           ; $7047: $88
	adc  b                                           ; $7048: $88
	xor  d                                           ; $7049: $aa
	sbc  c                                           ; $704a: $99
	sbc  b                                           ; $704b: $98
	xor  e                                           ; $704c: $ab
	sub  a                                           ; $704d: $97
	ld   h, a                                        ; $704e: $67
	add  l                                           ; $704f: $85
	db   $db                                         ; $7050: $db
	ld   l, c                                        ; $7051: $69
	ld   d, l                                        ; $7052: $55
	ld   l, d                                        ; $7053: $6a
	cp   d                                           ; $7054: $ba
	ret  z                                           ; $7055: $c8

	call $da68                                       ; $7056: $cd $68 $da
	ld   b, [hl]                                     ; $7059: $46
	ret                                              ; $705a: $c9


	ld   b, h                                        ; $705b: $44
	ld   d, [hl]                                     ; $705c: $56
	ld   h, [hl]                                     ; $705d: $66
	ld   h, [hl]                                     ; $705e: $66
	ld   b, d                                        ; $705f: $42
	daa                                              ; $7060: $27
	sub  a                                           ; $7061: $97
	halt                                             ; $7062: $76
	ld   l, c                                        ; $7063: $69
	ld   [hl], a                                     ; $7064: $77
	adc  c                                           ; $7065: $89
	cp   c                                           ; $7066: $b9
	ld   h, [hl]                                     ; $7067: $66
	adc  b                                           ; $7068: $88
	ld   a, b                                        ; $7069: $78
	adc  b                                           ; $706a: $88
	ld   [hl], l                                     ; $706b: $75
	inc  [hl]                                        ; $706c: $34
	ld   d, a                                        ; $706d: $57
	sbc  d                                           ; $706e: $9a
	sbc  e                                           ; $706f: $9b
	cp   e                                           ; $7070: $bb
	cp   d                                           ; $7071: $ba
	call c, $6697                                    ; $7072: $dc $97 $66
	ld   sp, $1111                                   ; $7075: $31 $11 $11
	inc  d                                           ; $7078: $14
	adc  [hl]                                        ; $7079: $8e
	rst  $38                                         ; $707a: $ff
	rst  $38                                         ; $707b: $ff
	rst  $38                                         ; $707c: $ff
	ld   sp, hl                                      ; $707d: $f9
	ld   h, [hl]                                     ; $707e: $66
	ld   b, c                                        ; $707f: $41
	ld   de, $1111                                   ; $7080: $11 $11 $11
	rra                                              ; $7083: $1f
	rst  $38                                         ; $7084: $ff
	rst  $38                                         ; $7085: $ff
	rst  $38                                         ; $7086: $ff
	ld   hl, sp-$11                                  ; $7087: $f8 $ef
	pop  bc                                          ; $7089: $c1
	ld   de, $1111                                   ; $708a: $11 $11 $11
	rra                                              ; $708d: $1f
	rst  $38                                         ; $708e: $ff
	rst  $38                                         ; $708f: $ff
	rst  $38                                         ; $7090: $ff
	cp   $ac                                         ; $7091: $fe $ac
	pop  de                                          ; $7093: $d1
	ld   de, $1111                                   ; $7094: $11 $11 $11
	rra                                              ; $7097: $1f
	rst  $38                                         ; $7098: $ff
	rst  $38                                         ; $7099: $ff
	rst  $38                                         ; $709a: $ff
	ld   a, [$a133]                                  ; $709b: $fa $33 $a1
	ld   de, $1111                                   ; $709e: $11 $11 $11
	rra                                              ; $70a1: $1f
	rst  $38                                         ; $70a2: $ff
	rst  $38                                         ; $70a3: $ff
	rst  $38                                         ; $70a4: $ff
	rst  $30                                         ; $70a5: $f7
	inc  de                                          ; $70a6: $13
	ld   d, c                                        ; $70a7: $51
	ld   de, $1111                                   ; $70a8: $11 $11 $11
	rra                                              ; $70ab: $1f
	rst  $38                                         ; $70ac: $ff
	rst  $38                                         ; $70ad: $ff
	rst  $38                                         ; $70ae: $ff
	ldh  a, [c]                                      ; $70af: $f2
	inc  de                                          ; $70b0: $13
	ld   de, $1111                                   ; $70b1: $11 $11 $11
	ld   de, $ffaf                                   ; $70b4: $11 $af $ff
	rst  $38                                         ; $70b7: $ff
	rst  $38                                         ; $70b8: $ff
	jp   $1132                                       ; $70b9: $c3 $32 $11


	ld   de, $1111                                   ; $70bc: $11 $11 $11
	cp   a                                           ; $70bf: $bf
	rst  $38                                         ; $70c0: $ff
	rst  $38                                         ; $70c1: $ff
	rst  $38                                         ; $70c2: $ff
	sub  c                                           ; $70c3: $91
	ld   b, h                                        ; $70c4: $44
	ld   de, $1111                                   ; $70c5: $11 $11 $11
	ld   de, $ffff                                   ; $70c8: $11 $ff $ff
	rst  $38                                         ; $70cb: $ff
	rst  $38                                         ; $70cc: $ff
	and  d                                           ; $70cd: $a2
	ld   b, e                                        ; $70ce: $43
	ld   de, $1111                                   ; $70cf: $11 $11 $11
	ld   de, $ff9f                                   ; $70d2: $11 $9f $ff
	rst  $38                                         ; $70d5: $ff
	rst  $38                                         ; $70d6: $ff
	sub  h                                           ; $70d7: $94
	ld   h, h                                        ; $70d8: $64
	ld   de, $1111                                   ; $70d9: $11 $11 $11
	ld   de, $ff6f                                   ; $70dc: $11 $6f $ff
	rst  $38                                         ; $70df: $ff
	rst  $38                                         ; $70e0: $ff
	push bc                                          ; $70e1: $c5
	add  a                                           ; $70e2: $87
	ld   de, $1111                                   ; $70e3: $11 $11 $11
	ld   de, $ff1f                                   ; $70e6: $11 $1f $ff
	rst  $38                                         ; $70e9: $ff
	rst  $38                                         ; $70ea: $ff
	db   $f4                                         ; $70eb: $f4
	ld   l, c                                        ; $70ec: $69
	ld   d, c                                        ; $70ed: $51
	ld   de, $1111                                   ; $70ee: $11 $11 $11
	inc  d                                           ; $70f1: $14
	rst  $38                                         ; $70f2: $ff
	rst  $38                                         ; $70f3: $ff
	rst  $38                                         ; $70f4: $ff
	ld   a, [$935b]                                  ; $70f5: $fa $5b $93
	ld   de, $1111                                   ; $70f8: $11 $11 $11
	ld   de, $ffbf                                   ; $70fb: $11 $bf $ff
	rst  $38                                         ; $70fe: $ff
	rst  $38                                         ; $70ff: $ff
	adc  d                                           ; $7100: $8a
	reti                                             ; $7101: $d9


	ld   sp, $1111                                   ; $7102: $31 $11 $11
	ld   de, $ff19                                   ; $7105: $11 $19 $ff
	rst  $38                                         ; $7108: $ff
	rst  $38                                         ; $7109: $ff
	ld   sp, hl                                      ; $710a: $f9
	call $11c7                                       ; $710b: $cd $c7 $11
	ld   de, $1111                                   ; $710e: $11 $11 $11
	rra                                              ; $7111: $1f
	rst  $38                                         ; $7112: $ff
	rst  $38                                         ; $7113: $ff
	rst  $38                                         ; $7114: $ff
	jp   hl                                          ; $7115: $e9


	rst  $38                                         ; $7116: $ff
	and  l                                           ; $7117: $a5
	ld   de, $1111                                   ; $7118: $11 $11 $11
	ld   de, $ff1f                                   ; $711b: $11 $1f $ff
	rst  $38                                         ; $711e: $ff
	rst  $38                                         ; $711f: $ff
	db   $ec                                         ; $7120: $ec
	xor  $b7                                         ; $7121: $ee $b7
	ld   b, c                                        ; $7123: $41
	ld   de, $1111                                   ; $7124: $11 $11 $11
	inc  d                                           ; $7127: $14
	rst  $38                                         ; $7128: $ff
	rst  $38                                         ; $7129: $ff
	rst  $38                                         ; $712a: $ff
	ld   a, [$abac]                                  ; $712b: $fa $ac $ab
	xor  [hl]                                        ; $712e: $ae
	push af                                          ; $712f: $f5
	ld   de, $1111                                   ; $7130: $11 $11 $11
	ld   c, c                                        ; $7133: $49
	ld   d, e                                        ; $7134: $53
	xor  [hl]                                        ; $7135: $ae
	cp   d                                           ; $7136: $ba
	sbc  h                                           ; $7137: $9c
	call z, $ffac                                    ; $7138: $cc $ac $ff
	jp   Jump_0d0_517b                               ; $713b: $c3 $7b $51


	jr   jr_0d0_71b1                                 ; $713e: $18 $71

	inc  d                                           ; $7140: $14
	add  e                                           ; $7141: $83
	rla                                              ; $7142: $17
	cp   d                                           ; $7143: $ba
	sbc  e                                           ; $7144: $9b
	db   $dd                                         ; $7145: $dd
	sbc  l                                           ; $7146: $9d
	cp   $bf                                         ; $7147: $fe $bf
	push hl                                          ; $7149: $e5
	dec  sp                                          ; $714a: $3b
	ld   a, [$2521]                                  ; $714b: $fa $21 $25
	inc  sp                                          ; $714e: $33
	ld   d, l                                        ; $714f: $55
	ld   d, h                                        ; $7150: $54
	ld   b, [hl]                                     ; $7151: $46
	adc  b                                           ; $7152: $88
	sbc  b                                           ; $7153: $98
	sbc  h                                           ; $7154: $9c
	sbc  $ea                                         ; $7155: $de $ea
	adc  e                                           ; $7157: $8b
	rst  $38                                         ; $7158: $ff
	and  $5b                                         ; $7159: $e6 $5b
	push bc                                          ; $715b: $c5
	rla                                              ; $715c: $17
	or   e                                           ; $715d: $b3
	inc  d                                           ; $715e: $14
	sub  [hl]                                        ; $715f: $96
	ld   de, $4378                                   ; $7160: $11 $78 $43
	ld   a, e                                        ; $7163: $7b
	sbc  b                                           ; $7164: $98
	cp   h                                           ; $7165: $bc
	call $fbdd                                       ; $7166: $cd $dd $fb
	ld   a, c                                        ; $7169: $79
	call $13e9                                       ; $716a: $cd $e9 $13
	add  [hl]                                        ; $716d: $86
	ld   de, $4299                                   ; $716e: $11 $99 $42
	ld   a, c                                        ; $7171: $79
	ld   h, h                                        ; $7172: $64
	ld   l, c                                        ; $7173: $69
	xor  b                                           ; $7174: $a8
	adc  d                                           ; $7175: $8a
	sbc  b                                           ; $7176: $98
	adc  b                                           ; $7177: $88
	sbc  d                                           ; $7178: $9a
	sbc  d                                           ; $7179: $9a
	call z, $c9aa                                    ; $717a: $cc $aa $c9
	ld   b, [hl]                                     ; $717d: $46
	cp   e                                           ; $717e: $bb
	ld   h, l                                        ; $717f: $65
	adc  b                                           ; $7180: $88
	ld   b, d                                        ; $7181: $42
	ld   b, [hl]                                     ; $7182: $46
	ld   h, h                                        ; $7183: $64
	ld   d, a                                        ; $7184: $57
	add  a                                           ; $7185: $87
	ld   [hl], a                                     ; $7186: $77
	adc  d                                           ; $7187: $8a
	xor  d                                           ; $7188: $aa
	cp   e                                           ; $7189: $bb
	res  5, d                                        ; $718a: $cb $aa
	sbc  b                                           ; $718c: $98
	ld   [hl], a                                     ; $718d: $77
	sbc  c                                           ; $718e: $99
	add  [hl]                                        ; $718f: $86
	ld   d, [hl]                                     ; $7190: $56
	ld   h, [hl]                                     ; $7191: $66
	ld   d, a                                        ; $7192: $57
	sbc  c                                           ; $7193: $99
	ld   [hl], a                                     ; $7194: $77
	sbc  b                                           ; $7195: $98
	ld   h, l                                        ; $7196: $65
	ld   l, c                                        ; $7197: $69
	xor  b                                           ; $7198: $a8
	ld   a, b                                        ; $7199: $78
	add  a                                           ; $719a: $87
	ld   a, c                                        ; $719b: $79
	sub  [hl]                                        ; $719c: $96
	ld   a, d                                        ; $719d: $7a
	sub  a                                           ; $719e: $97
	ld   a, b                                        ; $719f: $78
	add  a                                           ; $71a0: $87
	ld   l, c                                        ; $71a1: $69
	xor  d                                           ; $71a2: $aa
	halt                                             ; $71a3: $76
	cp   c                                           ; $71a4: $b9
	ld   d, l                                        ; $71a5: $55
	sbc  d                                           ; $71a6: $9a
	ld   h, l                                        ; $71a7: $65
	ld   a, c                                        ; $71a8: $79
	add  [hl]                                        ; $71a9: $86
	ld   e, b                                        ; $71aa: $58
	add  a                                           ; $71ab: $87
	ld   a, c                                        ; $71ac: $79
	cp   d                                           ; $71ad: $ba
	halt                                             ; $71ae: $76
	sbc  d                                           ; $71af: $9a
	add  [hl]                                        ; $71b0: $86

jr_0d0_71b1:
	ld   a, d                                        ; $71b1: $7a
	or   a                                           ; $71b2: $b7
	ld   a, b                                        ; $71b3: $78
	ld   [hl], a                                     ; $71b4: $77
	ld   [hl], a                                     ; $71b5: $77
	ld   [hl], a                                     ; $71b6: $77
	sbc  b                                           ; $71b7: $98
	ld   [hl], a                                     ; $71b8: $77
	adc  c                                           ; $71b9: $89
	sub  a                                           ; $71ba: $97
	sbc  d                                           ; $71bb: $9a
	xor  b                                           ; $71bc: $a8
	ld   a, b                                        ; $71bd: $78
	sbc  b                                           ; $71be: $98
	ld   [hl], a                                     ; $71bf: $77
	adc  b                                           ; $71c0: $88
	ld   [hl], a                                     ; $71c1: $77
	add  a                                           ; $71c2: $87
	ld   l, b                                        ; $71c3: $68
	sbc  b                                           ; $71c4: $98
	ld   [hl], a                                     ; $71c5: $77
	sbc  b                                           ; $71c6: $98
	ld   [hl], a                                     ; $71c7: $77
	adc  b                                           ; $71c8: $88
	ld   a, b                                        ; $71c9: $78
	sub  a                                           ; $71ca: $97
	ld   a, b                                        ; $71cb: $78
	sub  a                                           ; $71cc: $97
	ld   a, b                                        ; $71cd: $78
	sbc  c                                           ; $71ce: $99
	add  a                                           ; $71cf: $87
	adc  b                                           ; $71d0: $88
	halt                                             ; $71d1: $76
	ld   a, b                                        ; $71d2: $78
	ld   [hl], a                                     ; $71d3: $77
	ld   a, b                                        ; $71d4: $78
	sbc  b                                           ; $71d5: $98
	ld   a, b                                        ; $71d6: $78
	adc  c                                           ; $71d7: $89
	adc  b                                           ; $71d8: $88
	sbc  c                                           ; $71d9: $99
	sbc  b                                           ; $71da: $98
	adc  b                                           ; $71db: $88
	ld   [hl], a                                     ; $71dc: $77
	ld   [hl], a                                     ; $71dd: $77
	add  a                                           ; $71de: $87
	ld   a, b                                        ; $71df: $78
	add  a                                           ; $71e0: $87
	ld   a, b                                        ; $71e1: $78
	sbc  c                                           ; $71e2: $99
	sbc  c                                           ; $71e3: $99
	sbc  c                                           ; $71e4: $99
	adc  b                                           ; $71e5: $88
	add  a                                           ; $71e6: $87
	ld   [hl], a                                     ; $71e7: $77
	ld   a, b                                        ; $71e8: $78
	adc  b                                           ; $71e9: $88
	adc  b                                           ; $71ea: $88
	adc  b                                           ; $71eb: $88
	adc  b                                           ; $71ec: $88
	adc  b                                           ; $71ed: $88
	adc  b                                           ; $71ee: $88
	ld   [hl], a                                     ; $71ef: $77
	ld   [hl], a                                     ; $71f0: $77
	ld   [hl], a                                     ; $71f1: $77
	ld   a, b                                        ; $71f2: $78
	adc  b                                           ; $71f3: $88
	adc  b                                           ; $71f4: $88
	sbc  b                                           ; $71f5: $98
	adc  b                                           ; $71f6: $88
	sbc  c                                           ; $71f7: $99
	sbc  b                                           ; $71f8: $98
	ld   [hl], a                                     ; $71f9: $77
	ld   [hl], a                                     ; $71fa: $77
	ld   [hl], a                                     ; $71fb: $77
	ld   [hl], a                                     ; $71fc: $77
	ld   a, b                                        ; $71fd: $78
	ld   a, b                                        ; $71fe: $78
	adc  b                                           ; $71ff: $88
	adc  b                                           ; $7200: $88
	adc  b                                           ; $7201: $88
	sbc  b                                           ; $7202: $98
	adc  b                                           ; $7203: $88
	add  a                                           ; $7204: $87
	ld   [hl], a                                     ; $7205: $77
	adc  b                                           ; $7206: $88
	adc  b                                           ; $7207: $88
	adc  b                                           ; $7208: $88
	adc  b                                           ; $7209: $88
	adc  b                                           ; $720a: $88
	adc  b                                           ; $720b: $88
	adc  b                                           ; $720c: $88
	adc  b                                           ; $720d: $88
	ld   [hl], a                                     ; $720e: $77
	ld   a, b                                        ; $720f: $78
	sbc  b                                           ; $7210: $98
	ld   [hl], a                                     ; $7211: $77
	sbc  b                                           ; $7212: $98
	ld   [hl], a                                     ; $7213: $77
	adc  b                                           ; $7214: $88
	add  a                                           ; $7215: $87
	ld   a, b                                        ; $7216: $78
	adc  b                                           ; $7217: $88
	ld   a, b                                        ; $7218: $78
	sbc  b                                           ; $7219: $98
	ld   [hl], a                                     ; $721a: $77
	sbc  c                                           ; $721b: $99
	adc  c                                           ; $721c: $89
	sbc  b                                           ; $721d: $98
	add  a                                           ; $721e: $87
	adc  b                                           ; $721f: $88
	add  a                                           ; $7220: $87
	adc  b                                           ; $7221: $88
	sub  a                                           ; $7222: $97
	ld   a, b                                        ; $7223: $78
	adc  b                                           ; $7224: $88
	ld   a, b                                        ; $7225: $78
	sbc  b                                           ; $7226: $98
	adc  b                                           ; $7227: $88
	sbc  c                                           ; $7228: $99
	sub  a                                           ; $7229: $97
	ld   a, c                                        ; $722a: $79
	add  a                                           ; $722b: $87
	ld   a, b                                        ; $722c: $78
	sbc  b                                           ; $722d: $98
	ld   [hl], a                                     ; $722e: $77
	adc  c                                           ; $722f: $89
	sbc  d                                           ; $7230: $9a
	sub  a                                           ; $7231: $97
	sbc  b                                           ; $7232: $98
	adc  c                                           ; $7233: $89
	adc  c                                           ; $7234: $89
	ld   l, b                                        ; $7235: $68
	sub  a                                           ; $7236: $97
	adc  d                                           ; $7237: $8a
	ld   [hl], h                                     ; $7238: $74
	ld   a, c                                        ; $7239: $79
	and  a                                           ; $723a: $a7
	cp   d                                           ; $723b: $ba
	ld   d, a                                        ; $723c: $57
	ld   a, c                                        ; $723d: $79
	adc  d                                           ; $723e: $8a
	rst  ToBoot                                         ; $723f: $c7
	ld   b, e                                        ; $7240: $43
	xor  d                                           ; $7241: $aa
	cp   a                                           ; $7242: $bf
	add  c                                           ; $7243: $81
	ld   a, [hl-]                                    ; $7244: $3a
	and  h                                           ; $7245: $a4
	ld   a, [hl]                                     ; $7246: $7e
	or   h                                           ; $7247: $b4
	ld   e, d                                        ; $7248: $5a
	sub  a                                           ; $7249: $97
	ld   a, c                                        ; $724a: $79
	sbc  c                                           ; $724b: $99
	ld   d, [hl]                                     ; $724c: $56
	xor  e                                           ; $724d: $ab
	add  l                                           ; $724e: $85
	ld   h, a                                        ; $724f: $67
	halt                                             ; $7250: $76
	adc  l                                           ; $7251: $8d
	add  $48                                         ; $7252: $c6 $48
	and  [hl]                                        ; $7254: $a6
	ld   de, $b1ff                                   ; $7255: $11 $ff $b1
	ld   e, $f6                                      ; $7258: $1e $f6
	rla                                              ; $725a: $17
	db   $fc                                         ; $725b: $fc
	ld   [hl+], a                                    ; $725c: $22
	cp   l                                           ; $725d: $bd
	add  d                                           ; $725e: $82
	ld   e, h                                        ; $725f: $5c
	and  [hl]                                        ; $7260: $a6
	ld   d, a                                        ; $7261: $57
	xor  e                                           ; $7262: $ab
	halt                                             ; $7263: $76
	adc  c                                           ; $7264: $89
	ld   h, [hl]                                     ; $7265: $66
	call c, $ab56                                    ; $7266: $dc $56 $ab
	ld   h, l                                        ; $7269: $65
	ld   a, e                                        ; $726a: $7b
	or   l                                           ; $726b: $b5
	add  hl, sp                                      ; $726c: $39
	and  a                                           ; $726d: $a7
	ld   b, l                                        ; $726e: $45
	call z, $8d76                                    ; $726f: $cc $76 $8d
	sub  [hl]                                        ; $7272: $96
	ld   e, c                                        ; $7273: $59
	and  a                                           ; $7274: $a7
	inc  h                                           ; $7275: $24
	cp   d                                           ; $7276: $ba
	ld   b, d                                        ; $7277: $42
	adc  e                                           ; $7278: $8b
	ld   [hl], l                                     ; $7279: $75
	ld   a, h                                        ; $727a: $7c
	cp   b                                           ; $727b: $b8
	ld   b, a                                        ; $727c: $47
	db   $db                                         ; $727d: $db
	halt                                             ; $727e: $76
	cp   [hl]                                        ; $727f: $be
	and  a                                           ; $7280: $a7
	ld   a, d                                        ; $7281: $7a
	cp   c                                           ; $7282: $b9
	ld   [hl], l                                     ; $7283: $75
	ld   d, [hl]                                     ; $7284: $56
	ld   sp, $3211                                   ; $7285: $31 $11 $32
	dec  h                                           ; $7288: $25
	add  a                                           ; $7289: $87
	adc  e                                           ; $728a: $8b
	xor  $cf                                         ; $728b: $ee $cf
	rst  $38                                         ; $728d: $ff
	cp   $ff                                         ; $728e: $fe $ff
	call nz, $3149                                   ; $7290: $c4 $49 $31
	ld   de, $1111                                   ; $7293: $11 $11 $11
	ld   de, $df12                                   ; $7296: $11 $12 $df
	rst  $38                                         ; $7299: $ff
	rst  $38                                         ; $729a: $ff
	rst  $38                                         ; $729b: $ff
	rst  $38                                         ; $729c: $ff
	rst  $38                                         ; $729d: $ff
	sub  d                                           ; $729e: $92
	ld   de, $1111                                   ; $729f: $11 $11 $11
	ld   de, $1711                                   ; $72a2: $11 $11 $17
	ld   a, e                                        ; $72a5: $7b
	rst  $38                                         ; $72a6: $ff
	rst  $38                                         ; $72a7: $ff
	rst  $38                                         ; $72a8: $ff
	rst  $38                                         ; $72a9: $ff
	rst  $38                                         ; $72aa: $ff
	ei                                               ; $72ab: $fb
	ld   hl, $1111                                   ; $72ac: $21 $11 $11
	ld   de, $1111                                   ; $72af: $11 $11 $11
	ld   a, a                                        ; $72b2: $7f
	rst  $38                                         ; $72b3: $ff
	rst  $38                                         ; $72b4: $ff
	rst  $38                                         ; $72b5: $ff
	rst  $38                                         ; $72b6: $ff
	rst  $38                                         ; $72b7: $ff
	rst  $38                                         ; $72b8: $ff
	or   $11                                         ; $72b9: $f6 $11
	ld   de, $1111                                   ; $72bb: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $72be: $11 $14 $ff
	rst  $38                                         ; $72c1: $ff
	rst  $38                                         ; $72c2: $ff
	rst  $38                                         ; $72c3: $ff
	rst  $38                                         ; $72c4: $ff
	rst  $38                                         ; $72c5: $ff
	ret                                              ; $72c6: $c9


	and  e                                           ; $72c7: $a3
	ld   de, $1111                                   ; $72c8: $11 $11 $11
	ld   de, $3911                                   ; $72cb: $11 $11 $39
	rst  $38                                         ; $72ce: $ff
	rst  $38                                         ; $72cf: $ff
	rst  $38                                         ; $72d0: $ff
	rst  $38                                         ; $72d1: $ff
	rst  $38                                         ; $72d2: $ff
	rst  $38                                         ; $72d3: $ff
	ret                                              ; $72d4: $c9


	ld   h, c                                        ; $72d5: $61
	ld   de, $1111                                   ; $72d6: $11 $11 $11
	ld   de, $4c11                                   ; $72d9: $11 $11 $4c
	rst  $38                                         ; $72dc: $ff
	rst  $38                                         ; $72dd: $ff
	rst  $38                                         ; $72de: $ff
	rst  $38                                         ; $72df: $ff
	rst  $38                                         ; $72e0: $ff
	rst  $38                                         ; $72e1: $ff
	or   l                                           ; $72e2: $b5
	ld   hl, $1111                                   ; $72e3: $21 $11 $11
	ld   de, $1511                                   ; $72e6: $11 $11 $15
	adc  [hl]                                        ; $72e9: $8e
	rst  $38                                         ; $72ea: $ff
	rst  $38                                         ; $72eb: $ff
	rst  $38                                         ; $72ec: $ff
	rst  $38                                         ; $72ed: $ff
	rst  $38                                         ; $72ee: $ff
	rst  $38                                         ; $72ef: $ff
	call nz, $1111                                   ; $72f0: $c4 $11 $11
	ld   de, $1111                                   ; $72f3: $11 $11 $11
	dec  d                                           ; $72f6: $15
	ld   a, [hl]                                     ; $72f7: $7e
	rst  $38                                         ; $72f8: $ff
	rst  $38                                         ; $72f9: $ff
	rst  $38                                         ; $72fa: $ff
	rst  $38                                         ; $72fb: $ff
	rst  $38                                         ; $72fc: $ff
	rst  $38                                         ; $72fd: $ff
	or   e                                           ; $72fe: $b3
	ld   hl, $1111                                   ; $72ff: $21 $11 $11
	ld   de, $2711                                   ; $7302: $11 $11 $27
	halt                                             ; $7305: $76
	rst  $38                                         ; $7306: $ff
	rst  $38                                         ; $7307: $ff
	rst  $38                                         ; $7308: $ff
	rst  $38                                         ; $7309: $ff
	rst  $38                                         ; $730a: $ff
	rst  $38                                         ; $730b: $ff
	db   $f4                                         ; $730c: $f4
	inc  hl                                          ; $730d: $23
	ld   de, $1111                                   ; $730e: $11 $11 $11
	ld   de, $7553                                   ; $7311: $11 $53 $75
	ld   l, [hl]                                     ; $7314: $6e
	rst  $38                                         ; $7315: $ff
	rst  $38                                         ; $7316: $ff
	rst  $28                                         ; $7317: $ef
	rst  $38                                         ; $7318: $ff
	rst  $38                                         ; $7319: $ff
	cp   $a7                                         ; $731a: $fe $a7
	ld   h, h                                        ; $731c: $64
	ld   [hl+], a                                    ; $731d: $22
	inc  [hl]                                        ; $731e: $34
	ld   sp, $8527                                   ; $731f: $31 $27 $85
	ld   d, c                                        ; $7322: $51
	inc  de                                          ; $7323: $13
	inc  sp                                          ; $7324: $33
	inc  sp                                          ; $7325: $33
	ld   c, b                                        ; $7326: $48
	sbc  d                                           ; $7327: $9a
	cp   h                                           ; $7328: $bc
	rst  $38                                         ; $7329: $ff
	rst  $38                                         ; $732a: $ff
	rst  $38                                         ; $732b: $ff
	rst  $38                                         ; $732c: $ff
	rst  $38                                         ; $732d: $ff
	xor  $ba                                         ; $732e: $ee $ba
	add  a                                           ; $7330: $87
	ld   d, e                                        ; $7331: $53
	ld   de, $1111                                   ; $7332: $11 $11 $11
	ld   de, $6813                                   ; $7335: $11 $13 $68
	sbc  h                                           ; $7338: $9c
	sbc  $ff                                         ; $7339: $de $ff
	rst  $38                                         ; $733b: $ff
	rst  $38                                         ; $733c: $ff
	rst  $38                                         ; $733d: $ff
	rst  $38                                         ; $733e: $ff
	db   $ec                                         ; $733f: $ec
	xor  c                                           ; $7340: $a9
	ld   [hl], l                                     ; $7341: $75
	ld   b, e                                        ; $7342: $43
	ld   hl, $1111                                   ; $7343: $21 $11 $11
	ld   [de], a                                     ; $7346: $12
	inc  hl                                          ; $7347: $23
	ld   b, l                                        ; $7348: $45
	ld   [hl], a                                     ; $7349: $77
	adc  b                                           ; $734a: $88
	sbc  e                                           ; $734b: $9b
	cp   e                                           ; $734c: $bb
	cp   h                                           ; $734d: $bc
	sbc  $ef                                         ; $734e: $de $ef
	rst  $38                                         ; $7350: $ff
	sbc  $dc                                         ; $7351: $de $dc
	cp   c                                           ; $7353: $b9
	add  a                                           ; $7354: $87
	ld   h, l                                        ; $7355: $65
	ld   b, e                                        ; $7356: $43
	ld   [hl+], a                                    ; $7357: $22
	ld   de, $2201                                   ; $7358: $11 $01 $22
	inc  [hl]                                        ; $735b: $34
	ld   d, [hl]                                     ; $735c: $56
	adc  b                                           ; $735d: $88
	xor  d                                           ; $735e: $aa
	call $eeed                                       ; $735f: $cd $ed $ee
	rst  $38                                         ; $7362: $ff
	xor  $ed                                         ; $7363: $ee $ed
	cp   c                                           ; $7365: $b9
	sub  a                                           ; $7366: $97
	ld   h, h                                        ; $7367: $64
	ld   b, e                                        ; $7368: $43
	ld   [hl+], a                                    ; $7369: $22
	ld   [hl+], a                                    ; $736a: $22
	ld   [hl+], a                                    ; $736b: $22
	inc  sp                                          ; $736c: $33
	ld   b, l                                        ; $736d: $45
	ld   h, a                                        ; $736e: $67
	adc  b                                           ; $736f: $88
	xor  d                                           ; $7370: $aa
	cp   d                                           ; $7371: $ba
	cp   e                                           ; $7372: $bb
	xor  e                                           ; $7373: $ab
	cp   e                                           ; $7374: $bb
	cp   d                                           ; $7375: $ba
	xor  d                                           ; $7376: $aa
	xor  d                                           ; $7377: $aa
	sbc  c                                           ; $7378: $99
	xor  c                                           ; $7379: $a9
	adc  b                                           ; $737a: $88
	ld   [hl], a                                     ; $737b: $77
	ld   h, a                                        ; $737c: $67
	halt                                             ; $737d: $76
	adc  b                                           ; $737e: $88
	ld   h, e                                        ; $737f: $63
	ld   b, h                                        ; $7380: $44
	ld   b, h                                        ; $7381: $44
	ld   b, l                                        ; $7382: $45
	ld   d, l                                        ; $7383: $55
	ld   d, [hl]                                     ; $7384: $56
	ld   l, b                                        ; $7385: $68
	sbc  c                                           ; $7386: $99
	sbc  d                                           ; $7387: $9a
	cp   e                                           ; $7388: $bb
	cp   h                                           ; $7389: $bc
	call z, $dddc                                    ; $738a: $cc $dc $dd
	db   $db                                         ; $738d: $db
	sub  [hl]                                        ; $738e: $96
	adc  b                                           ; $738f: $88
	ld   h, h                                        ; $7390: $64
	ld   b, l                                        ; $7391: $45
	ld   sp, $5533                                   ; $7392: $31 $33 $55
	inc  [hl]                                        ; $7395: $34
	ld   l, b                                        ; $7396: $68
	halt                                             ; $7397: $76
	xor  e                                           ; $7398: $ab
	cp   d                                           ; $7399: $ba
	adc  h                                           ; $739a: $8c
	db   $fd                                         ; $739b: $fd
	sbc  l                                           ; $739c: $9d
	call $dcba                                       ; $739d: $cd $ba $dc
	or   a                                           ; $73a0: $b7
	ld   d, [hl]                                     ; $73a1: $56
	ld   d, l                                        ; $73a2: $55
	ld   d, l                                        ; $73a3: $55
	ld   de, $2322                                   ; $73a4: $11 $22 $23
	ld   d, a                                        ; $73a7: $57
	ld   h, l                                        ; $73a8: $65
	ld   l, b                                        ; $73a9: $68
	call z, $cddc                                    ; $73aa: $cc $dc $cd
	call c, $abbb                                    ; $73ad: $dc $bb $ab
	sub  a                                           ; $73b0: $97
	halt                                             ; $73b1: $76
	ld   sp, $2311                                   ; $73b2: $31 $11 $23
	ld   de, $4611                                   ; $73b5: $11 $11 $46
	ld   h, a                                        ; $73b8: $67
	xor  [hl]                                        ; $73b9: $ae
	rst  $38                                         ; $73ba: $ff
	rst  $38                                         ; $73bb: $ff
	rst  $38                                         ; $73bc: $ff
	db   $fd                                         ; $73bd: $fd
	db   $db                                         ; $73be: $db
	sub  a                                           ; $73bf: $97
	ld   hl, $1111                                   ; $73c0: $21 $11 $11
	ld   de, $3315                                   ; $73c3: $11 $15 $33
	ld   c, l                                        ; $73c6: $4d
	rst  $38                                         ; $73c7: $ff
	rst  $38                                         ; $73c8: $ff
	rst  $38                                         ; $73c9: $ff
	rst  $38                                         ; $73ca: $ff
	rst  $38                                         ; $73cb: $ff
	rst  $38                                         ; $73cc: $ff
	ld   hl, sp-$68                                  ; $73cd: $f8 $98
	ld   b, c                                        ; $73cf: $41
	ld   de, $1111                                   ; $73d0: $11 $11 $11
	jr   @-$3f                                       ; $73d3: $18 $bf

	cp   a                                           ; $73d5: $bf
	rst  $38                                         ; $73d6: $ff
	rst  $38                                         ; $73d7: $ff
	rst  $38                                         ; $73d8: $ff
	db   $fc                                         ; $73d9: $fc
	rst  $38                                         ; $73da: $ff
	rst  $38                                         ; $73db: $ff
	jp   $1143                                       ; $73dc: $c3 $43 $11


	ld   de, $1111                                   ; $73df: $11 $11 $11
	rst  JumpTable                                         ; $73e2: $df
	rst  $38                                         ; $73e3: $ff
	rst  $38                                         ; $73e4: $ff
	rst  $38                                         ; $73e5: $ff
	ld   a, [$6fcb]                                  ; $73e6: $fa $cb $6f
	rst  $38                                         ; $73e9: $ff
	ld   a, [$1124]                                  ; $73ea: $fa $24 $11
	ld   de, $1111                                   ; $73ed: $11 $11 $11
	rra                                              ; $73f0: $1f
	rst  $38                                         ; $73f1: $ff
	rst  $38                                         ; $73f2: $ff
	rst  $38                                         ; $73f3: $ff
	rst  $30                                         ; $73f4: $f7
	ld   c, d                                        ; $73f5: $4a
	adc  d                                           ; $73f6: $8a
	rst  $38                                         ; $73f7: $ff
	rst  $38                                         ; $73f8: $ff
	ld   hl, $1111                                   ; $73f9: $21 $11 $11
	ld   de, $1f11                                   ; $73fc: $11 $11 $1f

Call_0d0_73ff:
	rst  $38                                         ; $73ff: $ff
	rst  $38                                         ; $7400: $ff
	rst  $38                                         ; $7401: $ff
	ldh  [c], a                                      ; $7402: $e2
	scf                                              ; $7403: $37
	xor  b                                           ; $7404: $a8
	rst  $38                                         ; $7405: $ff
	cp   $11                                         ; $7406: $fe $11
	ld   de, $1111                                   ; $7408: $11 $11 $11
	ld   de, $ff1f                                   ; $740b: $11 $1f $ff
	rst  $38                                         ; $740e: $ff
	rst  $38                                         ; $740f: $ff
	ld   [hl], c                                     ; $7410: $71
	ld   d, $9b                                      ; $7411: $16 $9b
	rst  $38                                         ; $7413: $ff
	ei                                               ; $7414: $fb
	ld   de, $1111                                   ; $7415: $11 $11 $11
	ld   de, $3f11                                   ; $7418: $11 $11 $3f
	rst  $38                                         ; $741b: $ff
	rst  $38                                         ; $741c: $ff
	rst  $38                                         ; $741d: $ff
	ld   [hl], c                                     ; $741e: $71
	ld   d, $9f                                      ; $741f: $16 $9f
	rst  $38                                         ; $7421: $ff
	ei                                               ; $7422: $fb
	ld   de, $1111                                   ; $7423: $11 $11 $11
	ld   de, $7f11                                   ; $7426: $11 $11 $7f
	rst  $38                                         ; $7429: $ff
	rst  $38                                         ; $742a: $ff
	rst  $38                                         ; $742b: $ff
	ld   de, $ff17                                   ; $742c: $11 $17 $ff
	rst  $38                                         ; $742f: $ff
	ld   a, [$1111]                                  ; $7430: $fa $11 $11
	ld   de, $1111                                   ; $7433: $11 $11 $11
	rst  $38                                         ; $7436: $ff
	rst  $38                                         ; $7437: $ff
	rst  $38                                         ; $7438: $ff
	pop  af                                          ; $7439: $f1
	ld   de, $ff9f                                   ; $743a: $11 $9f $ff
	rst  $38                                         ; $743d: $ff
	or   c                                           ; $743e: $b1
	ld   de, $1111                                   ; $743f: $11 $11 $11
	ld   de, $ff1f                                   ; $7442: $11 $1f $ff
	rst  $38                                         ; $7445: $ff
	ld   hl, sp+$11                                  ; $7446: $f8 $11
	rra                                              ; $7448: $1f
	rst  $38                                         ; $7449: $ff
	rst  $38                                         ; $744a: $ff
	or   $11                                         ; $744b: $f6 $11
	ld   de, $1111                                   ; $744d: $11 $11 $11
	ld   de, $ffff                                   ; $7450: $11 $ff $ff
	rst  $38                                         ; $7453: $ff
	ld   hl, rAUD1ENV                                   ; $7454: $21 $12 $ff
	rst  $38                                         ; $7457: $ff
	rst  $38                                         ; $7458: $ff
	ld   de, $1111                                   ; $7459: $11 $11 $11
	ld   de, $1f11                                   ; $745c: $11 $11 $1f
	rst  $38                                         ; $745f: $ff
	rst  $38                                         ; $7460: $ff
	pop  af                                          ; $7461: $f1
	ld   de, $ff1f                                   ; $7462: $11 $1f $ff
	rst  $38                                         ; $7465: $ff
	pop  af                                          ; $7466: $f1
	ld   de, $1111                                   ; $7467: $11 $11 $11
	ld   de, $ff1c                                   ; $746a: $11 $1c $ff
	rst  $38                                         ; $746d: $ff
	cp   $11                                         ; $746e: $fe $11
	inc  e                                           ; $7470: $1c
	rst  $38                                         ; $7471: $ff
	rst  $38                                         ; $7472: $ff
	db   $f4                                         ; $7473: $f4
	ld   de, $1111                                   ; $7474: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7477: $11 $11 $ff
	rst  $38                                         ; $747a: $ff
	rst  $38                                         ; $747b: $ff
	ld   de, rAUD1LEN                                   ; $747c: $11 $11 $ff
	rst  $38                                         ; $747f: $ff
	rst  $38                                         ; $7480: $ff
	ld   de, $1111                                   ; $7481: $11 $11 $11
	ld   de, $3f11                                   ; $7484: $11 $11 $3f
	rst  $38                                         ; $7487: $ff
	rst  $38                                         ; $7488: $ff
	pop  hl                                          ; $7489: $e1
	ld   de, $ff7f                                   ; $748a: $11 $7f $ff
	rst  $38                                         ; $748d: $ff
	ld   h, c                                        ; $748e: $61
	ld   de, $2115                                   ; $748f: $11 $15 $21
	ld   de, $ff1f                                   ; $7492: $11 $1f $ff
	rst  $38                                         ; $7495: $ff
	or   $11                                         ; $7496: $f6 $11
	dec  e                                           ; $7498: $1d
	rst  $38                                         ; $7499: $ff
	rst  $38                                         ; $749a: $ff
	pop  af                                          ; $749b: $f1
	ld   de, $6112                                   ; $749c: $11 $12 $61
	ld   de, rAUD1LEN                                   ; $749f: $11 $11 $ff
	rst  $38                                         ; $74a2: $ff
	rst  $38                                         ; $74a3: $ff
	ld   de, $ff19                                   ; $74a4: $11 $19 $ff
	rst  $38                                         ; $74a7: $ff
	ld   sp, hl                                      ; $74a8: $f9
	ld   de, $1311                                   ; $74a9: $11 $11 $13
	ld   bc, rAUD1LEN                                   ; $74ac: $01 $11 $ff
	rst  $38                                         ; $74af: $ff
	rst  $38                                         ; $74b0: $ff
	ld   d, c                                        ; $74b1: $51
	ld   de, $ffff                                   ; $74b2: $11 $ff $ff
	db   $fc                                         ; $74b5: $fc
	ld   de, $1211                                   ; $74b6: $11 $11 $12
	ld   d, c                                        ; $74b9: $51
	ld   de, $ff1f                                   ; $74ba: $11 $1f $ff
	rst  $38                                         ; $74bd: $ff
	pop  af                                          ; $74be: $f1
	ld   de, $ff2f                                   ; $74bf: $11 $2f $ff
	rst  $38                                         ; $74c2: $ff
	ld   [hl], c                                     ; $74c3: $71
	ld   de, $3511                                   ; $74c4: $11 $11 $35
	ld   de, $ff1f                                   ; $74c7: $11 $1f $ff
	rst  $38                                         ; $74ca: $ff
	cp   $11                                         ; $74cb: $fe $11
	rra                                              ; $74cd: $1f
	rst  $38                                         ; $74ce: $ff
	rst  $38                                         ; $74cf: $ff
	pop  af                                          ; $74d0: $f1
	ld   de, $2511                                   ; $74d1: $11 $11 $25
	ld   de, $ff16                                   ; $74d4: $11 $16 $ff
	rst  $38                                         ; $74d7: $ff
	rst  $38                                         ; $74d8: $ff
	ld   de, $af1c                                   ; $74d9: $11 $1c $af
	rst  $38                                         ; $74dc: $ff
	ei                                               ; $74dd: $fb
	ld   de, $1111                                   ; $74de: $11 $11 $11
	ld   de, $df11                                   ; $74e1: $11 $11 $df
	rst  $38                                         ; $74e4: $ff
	rst  $38                                         ; $74e5: $ff
	ldh  a, [c]                                      ; $74e6: $f2
	inc  d                                           ; $74e7: $14
	adc  c                                           ; $74e8: $89
	rst  $28                                         ; $74e9: $ef
	rst  $38                                         ; $74ea: $ff
	ld   d, c                                        ; $74eb: $51
	ld   de, $1111                                   ; $74ec: $11 $11 $11
	ld   de, $ff1f                                   ; $74ef: $11 $1f $ff
	rst  $38                                         ; $74f2: $ff
	and  l                                           ; $74f3: $a5
	inc  hl                                          ; $74f4: $23
	cp   a                                           ; $74f5: $bf
	rst  $38                                         ; $74f6: $ff
	rst  $38                                         ; $74f7: $ff
	and  c                                           ; $74f8: $a1
	ld   de, $1111                                   ; $74f9: $11 $11 $11
	ld   de, $fa1a                                   ; $74fc: $11 $1a $fa
	rst  $38                                         ; $74ff: $ff
	rst  $38                                         ; $7500: $ff
	ld   b, h                                        ; $7501: $44
	xor  [hl]                                        ; $7502: $ae
	sbc  l                                           ; $7503: $9d
	rst  $38                                         ; $7504: $ff
	pop  hl                                          ; $7505: $e1
	ld   de, $1111                                   ; $7506: $11 $11 $11
	ld   de, $6f16                                   ; $7509: $11 $16 $6f
	rst  $38                                         ; $750c: $ff
	rst  $38                                         ; $750d: $ff
	sub  [hl]                                        ; $750e: $96
	inc  b                                           ; $750f: $04
	ld   l, a                                        ; $7510: $6f
	rst  $38                                         ; $7511: $ff
	ei                                               ; $7512: $fb
	ld   sp, $1111                                   ; $7513: $31 $11 $11
	ld   de, $dd11                                   ; $7516: $11 $11 $dd
	rst  $38                                         ; $7519: $ff
	rst  $38                                         ; $751a: $ff
	db   $fc                                         ; $751b: $fc
	sub  [hl]                                        ; $751c: $96
	ld   l, h                                        ; $751d: $6c
	rst  $38                                         ; $751e: $ff
	ld   a, [$1194]                                  ; $751f: $fa $94 $11
	ld   de, $1111                                   ; $7522: $11 $11 $11
	ld   a, d                                        ; $7525: $7a
	rst  $38                                         ; $7526: $ff
	rst  $38                                         ; $7527: $ff
	rst  $38                                         ; $7528: $ff
	add  a                                           ; $7529: $87
	sbc  h                                           ; $752a: $9c
	ei                                               ; $752b: $fb
	rst  JumpTable                                         ; $752c: $df
	or   h                                           ; $752d: $b4
	ld   de, $1111                                   ; $752e: $11 $11 $11
	ld   de, $ef15                                   ; $7531: $11 $15 $ef
	rst  $38                                         ; $7534: $ff
	rst  $38                                         ; $7535: $ff
	rst  ToBoot                                         ; $7536: $c7
	ld   l, d                                        ; $7537: $6a
	db   $ec                                         ; $7538: $ec
	sbc  $fd                                         ; $7539: $de $fd
	ld   sp, $1111                                   ; $753b: $31 $11 $11
	ld   de, $9715                                   ; $753e: $11 $15 $97
	rst  $38                                         ; $7541: $ff
	rst  $38                                         ; $7542: $ff
	ld   a, [$a697]                                  ; $7543: $fa $97 $a6
	rst  JumpTable                                         ; $7546: $df
	db   $fc                                         ; $7547: $fc
	ld   [hl], c                                     ; $7548: $71
	ld   de, $1111                                   ; $7549: $11 $11 $11
	inc  d                                           ; $754c: $14
	xor  h                                           ; $754d: $ac
	xor  a                                           ; $754e: $af
	rst  $38                                         ; $754f: $ff
	ld   a, [$edd7]                                  ; $7550: $fa $d7 $ed
	call $94fe                                       ; $7553: $cd $fe $94
	ld   de, $1111                                   ; $7556: $11 $11 $11
	inc  d                                           ; $7559: $14
	dec  d                                           ; $755a: $15
	ld   e, l                                        ; $755b: $5d
	rst  $38                                         ; $755c: $ff
	rst  $38                                         ; $755d: $ff
	db   $fc                                         ; $755e: $fc
	adc  d                                           ; $755f: $8a
	call z, $d9ef                                    ; $7560: $cc $ef $d9
	ld   h, e                                        ; $7563: $63
	ld   [de], a                                     ; $7564: $12
	ld   de, $2211                                   ; $7565: $11 $11 $22
	ld   [hl-], a                                    ; $7568: $32
	adc  [hl]                                        ; $7569: $8e
	cp   $df                                         ; $756a: $fe $df
	ei                                               ; $756c: $fb
	adc  h                                           ; $756d: $8c
	cp   $aa                                         ; $756e: $fe $aa
	sbc  b                                           ; $7570: $98
	add  e                                           ; $7571: $83
	ld   h, l                                        ; $7572: $65
	dec  [hl]                                        ; $7573: $35
	ld   de, $6633                                   ; $7574: $11 $33 $66
	ld   h, a                                        ; $7577: $67
	sbc  c                                           ; $7578: $99
	cp   $ad                                         ; $7579: $fe $ad
	xor  c                                           ; $757b: $a9
	call z, $abbd                                    ; $757c: $cc $bd $ab
	jp   z, Jump_0d0_4784                            ; $757f: $ca $84 $47

	ld   h, c                                        ; $7582: $61
	dec  [hl]                                        ; $7583: $35
	ld   d, [hl]                                     ; $7584: $56
	ld   l, c                                        ; $7585: $69
	adc  e                                           ; $7586: $8b
	sub  h                                           ; $7587: $94
	sbc  e                                           ; $7588: $9b
	adc  b                                           ; $7589: $88
	sbc  c                                           ; $758a: $99
	cp   e                                           ; $758b: $bb
	sbc  e                                           ; $758c: $9b
	ret                                              ; $758d: $c9


	sbc  c                                           ; $758e: $99
	ld   [hl], a                                     ; $758f: $77
	ld   [hl], a                                     ; $7590: $77
	ld   a, b                                        ; $7591: $78
	sub  a                                           ; $7592: $97
	adc  c                                           ; $7593: $89
	and  a                                           ; $7594: $a7
	add  hl, hl                                      ; $7595: $29
	and  l                                           ; $7596: $a5
	ld   d, e                                        ; $7597: $53
	sbc  c                                           ; $7598: $99
	ld   [hl], a                                     ; $7599: $77
	xor  d                                           ; $759a: $aa
	adc  c                                           ; $759b: $89
	xor  c                                           ; $759c: $a9
	ld   l, c                                        ; $759d: $69
	add  a                                           ; $759e: $87
	sbc  c                                           ; $759f: $99
	cp   d                                           ; $75a0: $ba
	cp   c                                           ; $75a1: $b9
	adc  c                                           ; $75a2: $89
	add  l                                           ; $75a3: $85
	halt                                             ; $75a4: $76
	ld   h, a                                        ; $75a5: $67
	adc  c                                           ; $75a6: $89
	add  a                                           ; $75a7: $87
	ld   [hl], a                                     ; $75a8: $77
	sbc  b                                           ; $75a9: $98
	ld   [hl], a                                     ; $75aa: $77
	ld   l, c                                        ; $75ab: $69
	sbc  c                                           ; $75ac: $99
	xor  d                                           ; $75ad: $aa
	xor  e                                           ; $75ae: $ab
	adc  b                                           ; $75af: $88
	adc  d                                           ; $75b0: $8a
	add  [hl]                                        ; $75b1: $86
	ld   h, a                                        ; $75b2: $67
	sbc  b                                           ; $75b3: $98
	adc  c                                           ; $75b4: $89
	add  [hl]                                        ; $75b5: $86
	adc  b                                           ; $75b6: $88
	ld   h, [hl]                                     ; $75b7: $66
	ld   a, b                                        ; $75b8: $78
	ld   a, b                                        ; $75b9: $78
	ld   a, c                                        ; $75ba: $79
	cp   c                                           ; $75bb: $b9
	adc  b                                           ; $75bc: $88
	xor  c                                           ; $75bd: $a9
	halt                                             ; $75be: $76
	adc  b                                           ; $75bf: $88
	ld   a, c                                        ; $75c0: $79
	ld   a, b                                        ; $75c1: $78
	add  a                                           ; $75c2: $87
	ld   a, b                                        ; $75c3: $78
	ld   [hl], a                                     ; $75c4: $77
	ld   [hl], a                                     ; $75c5: $77
	halt                                             ; $75c6: $76
	sbc  b                                           ; $75c7: $98
	adc  d                                           ; $75c8: $8a
	sbc  b                                           ; $75c9: $98
	adc  b                                           ; $75ca: $88
	halt                                             ; $75cb: $76
	ld   a, c                                        ; $75cc: $79
	ld   h, a                                        ; $75cd: $67
	sbc  b                                           ; $75ce: $98
	ld   [hl], a                                     ; $75cf: $77
	ld   [hl], a                                     ; $75d0: $77
	adc  c                                           ; $75d1: $89
	ld   h, a                                        ; $75d2: $67
	adc  b                                           ; $75d3: $88
	ld   a, b                                        ; $75d4: $78
	ld   a, b                                        ; $75d5: $78
	xor  c                                           ; $75d6: $a9
	ld   a, b                                        ; $75d7: $78
	add  a                                           ; $75d8: $87
	halt                                             ; $75d9: $76
	ld   [hl], a                                     ; $75da: $77
	add  a                                           ; $75db: $87
	ld   [hl], a                                     ; $75dc: $77
	adc  b                                           ; $75dd: $88
	ld   [hl], a                                     ; $75de: $77
	ld   a, c                                        ; $75df: $79
	ld   [hl], a                                     ; $75e0: $77
	ld   l, c                                        ; $75e1: $69
	sbc  b                                           ; $75e2: $98
	xor  b                                           ; $75e3: $a8
	sbc  b                                           ; $75e4: $98
	add  a                                           ; $75e5: $87
	ld   a, b                                        ; $75e6: $78
	ld   [hl], a                                     ; $75e7: $77
	ld   [hl], a                                     ; $75e8: $77
	ld   a, b                                        ; $75e9: $78
	sbc  b                                           ; $75ea: $98
	add  a                                           ; $75eb: $87
	ld   a, b                                        ; $75ec: $78
	ld   [hl], a                                     ; $75ed: $77
	ld   a, b                                        ; $75ee: $78
	ld   [hl], a                                     ; $75ef: $77
	sbc  c                                           ; $75f0: $99
	sbc  c                                           ; $75f1: $99
	sbc  b                                           ; $75f2: $98
	ld   [hl], a                                     ; $75f3: $77
	adc  b                                           ; $75f4: $88
	ld   [hl], a                                     ; $75f5: $77
	adc  b                                           ; $75f6: $88
	ld   h, a                                        ; $75f7: $67
	adc  b                                           ; $75f8: $88
	halt                                             ; $75f9: $76
	ld   a, b                                        ; $75fa: $78
	sub  a                                           ; $75fb: $97
	ld   [hl], a                                     ; $75fc: $77
	adc  d                                           ; $75fd: $8a
	sbc  b                                           ; $75fe: $98
	adc  b                                           ; $75ff: $88
	add  a                                           ; $7600: $87
	sbc  b                                           ; $7601: $98
	ld   [hl], a                                     ; $7602: $77
	add  a                                           ; $7603: $87
	ld   a, c                                        ; $7604: $79
	add  a                                           ; $7605: $87
	ld   l, b                                        ; $7606: $68
	add  a                                           ; $7607: $87
	ld   h, a                                        ; $7608: $67
	add  a                                           ; $7609: $87
	ld   a, b                                        ; $760a: $78
	sbc  c                                           ; $760b: $99
	sub  a                                           ; $760c: $97
	sbc  b                                           ; $760d: $98
	sbc  c                                           ; $760e: $99
	ld   [hl], a                                     ; $760f: $77
	adc  c                                           ; $7610: $89
	sub  a                                           ; $7611: $97
	adc  c                                           ; $7612: $89
	ld   [hl], a                                     ; $7613: $77
	ld   a, b                                        ; $7614: $78
	add  a                                           ; $7615: $87
	halt                                             ; $7616: $76
	ld   a, c                                        ; $7617: $79
	adc  c                                           ; $7618: $89
	adc  c                                           ; $7619: $89
	sbc  b                                           ; $761a: $98
	ld   a, b                                        ; $761b: $78
	adc  b                                           ; $761c: $88
	adc  c                                           ; $761d: $89
	adc  b                                           ; $761e: $88
	sbc  c                                           ; $761f: $99
	sub  [hl]                                        ; $7620: $96
	ld   a, c                                        ; $7621: $79
	ld   a, b                                        ; $7622: $78
	ld   a, b                                        ; $7623: $78
	add  a                                           ; $7624: $87
	ld   [hl], a                                     ; $7625: $77
	adc  d                                           ; $7626: $8a
	add  a                                           ; $7627: $87
	adc  c                                           ; $7628: $89
	adc  b                                           ; $7629: $88
	adc  b                                           ; $762a: $88
	ld   a, b                                        ; $762b: $78
	adc  b                                           ; $762c: $88
	add  a                                           ; $762d: $87
	adc  b                                           ; $762e: $88
	ld   a, b                                        ; $762f: $78
	sub  a                                           ; $7630: $97
	ld   h, a                                        ; $7631: $67
	adc  b                                           ; $7632: $88
	adc  c                                           ; $7633: $89
	sub  a                                           ; $7634: $97
	adc  b                                           ; $7635: $88
	ld   a, b                                        ; $7636: $78
	add  a                                           ; $7637: $87
	sbc  c                                           ; $7638: $99
	adc  c                                           ; $7639: $89
	adc  b                                           ; $763a: $88
	ld   a, b                                        ; $763b: $78
	sub  a                                           ; $763c: $97
	ld   [hl], a                                     ; $763d: $77
	ld   a, b                                        ; $763e: $78
	ld   [hl], a                                     ; $763f: $77
	add  a                                           ; $7640: $87
	sbc  b                                           ; $7641: $98
	ld   a, b                                        ; $7642: $78
	sbc  c                                           ; $7643: $99
	ld   h, a                                        ; $7644: $67
	xor  c                                           ; $7645: $a9
	ld   [hl], a                                     ; $7646: $77
	sbc  c                                           ; $7647: $99
	add  a                                           ; $7648: $87
	ld   a, c                                        ; $7649: $79
	ld   [hl], a                                     ; $764a: $77
	ld   a, c                                        ; $764b: $79
	and  [hl]                                        ; $764c: $a6
	ld   a, b                                        ; $764d: $78
	ld   a, b                                        ; $764e: $78
	sbc  c                                           ; $764f: $99
	adc  c                                           ; $7650: $89
	sbc  b                                           ; $7651: $98
	ld   a, b                                        ; $7652: $78
	adc  b                                           ; $7653: $88
	sub  a                                           ; $7654: $97
	adc  b                                           ; $7655: $88
	ld   a, b                                        ; $7656: $78
	adc  b                                           ; $7657: $88
	ld   a, b                                        ; $7658: $78
	ld   a, b                                        ; $7659: $78
	add  a                                           ; $765a: $87
	ld   a, b                                        ; $765b: $78
	sbc  b                                           ; $765c: $98
	sbc  c                                           ; $765d: $99
	adc  b                                           ; $765e: $88
	sbc  b                                           ; $765f: $98
	adc  b                                           ; $7660: $88
	ld   a, b                                        ; $7661: $78
	sbc  b                                           ; $7662: $98
	ld   l, b                                        ; $7663: $68
	adc  b                                           ; $7664: $88
	ld   [hl], a                                     ; $7665: $77
	sub  a                                           ; $7666: $97
	ld   [hl], a                                     ; $7667: $77
	sbc  c                                           ; $7668: $99
	adc  b                                           ; $7669: $88
	adc  c                                           ; $766a: $89
	sbc  b                                           ; $766b: $98
	adc  c                                           ; $766c: $89
	adc  c                                           ; $766d: $89
	adc  b                                           ; $766e: $88
	sub  a                                           ; $766f: $97
	sbc  b                                           ; $7670: $98
	add  a                                           ; $7671: $87
	sub  a                                           ; $7672: $97
	add  a                                           ; $7673: $87
	ld   a, c                                        ; $7674: $79
	ld   a, b                                        ; $7675: $78
	sbc  b                                           ; $7676: $98
	ld   a, b                                        ; $7677: $78
	adc  c                                           ; $7678: $89
	adc  b                                           ; $7679: $88
	sbc  b                                           ; $767a: $98
	adc  b                                           ; $767b: $88
	ld   l, c                                        ; $767c: $69
	sub  a                                           ; $767d: $97
	adc  d                                           ; $767e: $8a
	sub  a                                           ; $767f: $97
	ld   [hl], a                                     ; $7680: $77
	sbc  c                                           ; $7681: $99
	add  a                                           ; $7682: $87
	adc  c                                           ; $7683: $89
	ld   [hl], a                                     ; $7684: $77
	adc  c                                           ; $7685: $89
	sub  a                                           ; $7686: $97
	ld   a, b                                        ; $7687: $78
	ld   a, b                                        ; $7688: $78
	sbc  c                                           ; $7689: $99
	ld   l, c                                        ; $768a: $69
	cp   b                                           ; $768b: $b8
	ld   l, b                                        ; $768c: $68
	sub  a                                           ; $768d: $97
	sub  a                                           ; $768e: $97
	ld   a, c                                        ; $768f: $79
	ld   a, b                                        ; $7690: $78
	add  a                                           ; $7691: $87
	xor  c                                           ; $7692: $a9
	ld   a, b                                        ; $7693: $78
	xor  b                                           ; $7694: $a8
	sbc  b                                           ; $7695: $98
	ld   a, b                                        ; $7696: $78
	ld   a, c                                        ; $7697: $79
	sbc  b                                           ; $7698: $98
	adc  b                                           ; $7699: $88
	ld   [hl], a                                     ; $769a: $77
	adc  d                                           ; $769b: $8a
	ld   [hl], a                                     ; $769c: $77
	adc  c                                           ; $769d: $89
	add  a                                           ; $769e: $87
	and  a                                           ; $769f: $a7
	adc  b                                           ; $76a0: $88
	sbc  c                                           ; $76a1: $99
	adc  c                                           ; $76a2: $89
	ld   a, c                                        ; $76a3: $79
	ld   a, c                                        ; $76a4: $79
	sbc  b                                           ; $76a5: $98
	ld   a, b                                        ; $76a6: $78
	cp   d                                           ; $76a7: $ba
	sub  [hl]                                        ; $76a8: $96
	ld   a, c                                        ; $76a9: $79
	ld   [hl], l                                     ; $76aa: $75
	cp   c                                           ; $76ab: $b9
	adc  b                                           ; $76ac: $88
	ld   [hl], a                                     ; $76ad: $77
	ld   a, d                                        ; $76ae: $7a
	ld   a, c                                        ; $76af: $79
	ld   a, b                                        ; $76b0: $78
	sub  a                                           ; $76b1: $97
	ld   [hl], a                                     ; $76b2: $77
	add  a                                           ; $76b3: $87
	adc  c                                           ; $76b4: $89
	ld   a, b                                        ; $76b5: $78
	sub  a                                           ; $76b6: $97
	add  a                                           ; $76b7: $87
	sbc  d                                           ; $76b8: $9a
	ld   a, d                                        ; $76b9: $7a
	ld   h, [hl]                                     ; $76ba: $66
	xor  b                                           ; $76bb: $a8
	adc  b                                           ; $76bc: $88
	and  [hl]                                        ; $76bd: $a6
	ld   [hl], a                                     ; $76be: $77
	ld   a, c                                        ; $76bf: $79
	ld   e, d                                        ; $76c0: $5a
	adc  b                                           ; $76c1: $88
	sub  a                                           ; $76c2: $97
	adc  b                                           ; $76c3: $88
	ld   [hl], a                                     ; $76c4: $77
	adc  b                                           ; $76c5: $88
	halt                                             ; $76c6: $76
	and  a                                           ; $76c7: $a7
	add  [hl]                                        ; $76c8: $86
	ld   e, b                                        ; $76c9: $58
	sbc  c                                           ; $76ca: $99
	adc  c                                           ; $76cb: $89
	sbc  c                                           ; $76cc: $99
	xor  b                                           ; $76cd: $a8
	adc  d                                           ; $76ce: $8a
	ld   a, d                                        ; $76cf: $7a
	xor  b                                           ; $76d0: $a8
	add  [hl]                                        ; $76d1: $86
	ld   d, l                                        ; $76d2: $55
	ld   d, a                                        ; $76d3: $57
	sub  a                                           ; $76d4: $97
	ld   [hl], a                                     ; $76d5: $77
	ld   [hl], a                                     ; $76d6: $77
	sbc  b                                           ; $76d7: $98
	ld   a, b                                        ; $76d8: $78
	sbc  b                                           ; $76d9: $98
	adc  c                                           ; $76da: $89
	sbc  c                                           ; $76db: $99
	ld   [hl], a                                     ; $76dc: $77
	ld   [hl], a                                     ; $76dd: $77
	ld   [hl], a                                     ; $76de: $77
	sub  a                                           ; $76df: $97
	adc  b                                           ; $76e0: $88
	adc  d                                           ; $76e1: $8a
	sbc  b                                           ; $76e2: $98
	sbc  c                                           ; $76e3: $99
	xor  c                                           ; $76e4: $a9
	sbc  b                                           ; $76e5: $98
	add  a                                           ; $76e6: $87
	halt                                             ; $76e7: $76
	ld   h, a                                        ; $76e8: $67
	adc  b                                           ; $76e9: $88
	adc  b                                           ; $76ea: $88
	adc  b                                           ; $76eb: $88
	adc  b                                           ; $76ec: $88
	adc  b                                           ; $76ed: $88
	adc  b                                           ; $76ee: $88
	adc  b                                           ; $76ef: $88
	adc  b                                           ; $76f0: $88
	adc  b                                           ; $76f1: $88
	adc  b                                           ; $76f2: $88
	adc  b                                           ; $76f3: $88
	adc  b                                           ; $76f4: $88
	adc  b                                           ; $76f5: $88
	sbc  d                                           ; $76f6: $9a
	sbc  b                                           ; $76f7: $98
	adc  b                                           ; $76f8: $88
	sbc  b                                           ; $76f9: $98
	adc  b                                           ; $76fa: $88
	sbc  b                                           ; $76fb: $98
	halt                                             ; $76fc: $76
	ld   d, l                                        ; $76fd: $55
	ld   b, h                                        ; $76fe: $44
	ld   l, b                                        ; $76ff: $68
	sbc  e                                           ; $7700: $9b
	cp   h                                           ; $7701: $bc
	res  5, c                                        ; $7702: $cb $a9
	ld   [hl], a                                     ; $7704: $77
	adc  c                                           ; $7705: $89
	xor  d                                           ; $7706: $aa
	sbc  c                                           ; $7707: $99
	add  l                                           ; $7708: $85
	ld   [hl-], a                                    ; $7709: $32
	ld   de, $bc49                                   ; $770a: $11 $49 $bc
	call $a8eb                                       ; $770d: $cd $eb $a8
	ld   h, [hl]                                     ; $7710: $66
	ld   a, c                                        ; $7711: $79
	db   $dd                                         ; $7712: $dd
	call c, Call_0d0_4197                            ; $7713: $dc $97 $41
	ld   de, $6b11                                   ; $7716: $11 $11 $6b
	rst  $28                                         ; $7719: $ef
	rst  $38                                         ; $771a: $ff
	res  2, l                                        ; $771b: $cb $95
	ld   d, a                                        ; $771d: $57
	cp   [hl]                                        ; $771e: $be
	xor  $eb                                         ; $771f: $ee $eb
	ld   h, d                                        ; $7721: $62
	ld   de, $1211                                   ; $7722: $11 $11 $12
	ld   a, a                                        ; $7725: $7f
	rst  $38                                         ; $7726: $ff
	rst  $38                                         ; $7727: $ff
	jp   z, Jump_0d0_6835                            ; $7728: $ca $35 $68

	rst  $28                                         ; $772b: $ef
	rst  $38                                         ; $772c: $ff
	ret  z                                           ; $772d: $c8

	ld   b, c                                        ; $772e: $41
	ld   de, $1311                                   ; $772f: $11 $11 $13
	rst  JumpTable                                         ; $7732: $df
	rst  $38                                         ; $7733: $ff
	rst  $38                                         ; $7734: $ff
	di                                               ; $7735: $f3
	ld   [de], a                                     ; $7736: $12
	ld   l, [hl]                                     ; $7737: $6e
	rst  $38                                         ; $7738: $ff
	rst  $38                                         ; $7739: $ff
	and  d                                           ; $773a: $a2
	ld   de, $1111                                   ; $773b: $11 $11 $11
	rla                                              ; $773e: $17
	rst  $38                                         ; $773f: $ff
	rst  $38                                         ; $7740: $ff
	ei                                               ; $7741: $fb
	ld   h, c                                        ; $7742: $61
	rla                                              ; $7743: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7744: $cf
	rst  $38                                         ; $7745: $ff
	db   $fd                                         ; $7746: $fd
	ld   sp, $1111                                   ; $7747: $31 $11 $11
	ld   de, $ff1f                                   ; $774a: $11 $1f $ff
	rst  $38                                         ; $774d: $ff
	ld   sp, hl                                      ; $774e: $f9
	ld   sp, $bf17                                   ; $774f: $31 $17 $bf
	rst  $38                                         ; $7752: $ff
	ld   a, [$1111]                                  ; $7753: $fa $11 $11
	ld   [de], a                                     ; $7756: $12
	ld   de, $ff1a                                   ; $7757: $11 $1a $ff
	rst  $38                                         ; $775a: $ff
	ld   [$1811], a                                  ; $775b: $ea $11 $18
	rst  $38                                         ; $775e: $ff
	rst  $38                                         ; $775f: $ff
	ld   a, [$1111]                                  ; $7760: $fa $11 $11
	ld   [hl+], a                                    ; $7763: $22
	ld   de, $ff1c                                   ; $7764: $11 $1c $ff
	rst  $38                                         ; $7767: $ff
	or   d                                           ; $7768: $b2
	ld   de, $ff1a                                   ; $7769: $11 $1a $ff
	rst  $38                                         ; $776c: $ff
	di                                               ; $776d: $f3
	ld   de, $2211                                   ; $776e: $11 $11 $22
	ld   de, $ff1e                                   ; $7771: $11 $1e $ff
	rst  $38                                         ; $7774: $ff
	pop  bc                                          ; $7775: $c1
	ld   de, $ff39                                   ; $7776: $11 $39 $ff
	rst  $38                                         ; $7779: $ff
	push af                                          ; $777a: $f5
	ld   de, $eb11                                   ; $777b: $11 $11 $eb
	ld   de, rAUD1ENV                                   ; $777e: $11 $12 $ff
	rst  $38                                         ; $7781: $ff
	pop  af                                          ; $7782: $f1
	ld   de, $ff19                                   ; $7783: $11 $19 $ff
	rst  $38                                         ; $7786: $ff
	ld   hl, sp+$11                                  ; $7787: $f8 $11
	ld   de, $11cf                                   ; $7789: $11 $cf $11
	ld   de, $ffff                                   ; $778c: $11 $ff $ff
	ldh  a, [c]                                      ; $778f: $f2
	ld   de, $ff1a                                   ; $7790: $11 $1a $ff
	rst  $38                                         ; $7793: $ff
	cp   $11                                         ; $7794: $fe $11
	ld   de, $11df                                   ; $7796: $11 $df $11
	ld   de, $ffff                                   ; $7799: $11 $ff $ff
	pop  af                                          ; $779c: $f1
	ld   de, $ff1d                                   ; $779d: $11 $1d $ff
	rst  $38                                         ; $77a0: $ff
	db   $fc                                         ; $77a1: $fc
	ld   de, $9f11                                   ; $77a2: $11 $11 $9f
	or   c                                           ; $77a5: $b1
	ld   de, $ffff                                   ; $77a6: $11 $ff $ff

Call_0d0_77a9:
	ld   sp, hl                                      ; $77a9: $f9
	ld   de, $ff17                                   ; $77aa: $11 $17 $ff
	rst  $38                                         ; $77ad: $ff
	cp   $11                                         ; $77ae: $fe $11
	ld   de, $c1af                                   ; $77b0: $11 $af $c1
	ld   de, $ffcf                                   ; $77b3: $11 $cf $ff
	db   $fc                                         ; $77b6: $fc
	ld   de, $ff18                                   ; $77b7: $11 $18 $ff

Jump_0d0_77ba:
	rst  $38                                         ; $77ba: $ff
	db   $fd                                         ; $77bb: $fd
	ld   de, $5f11                                   ; $77bc: $11 $11 $5f
	pop  de                                          ; $77bf: $d1
	ld   de, $ffdf                                   ; $77c0: $11 $df $ff
	ld   hl, sp+$11                                  ; $77c3: $f8 $11
	inc  e                                           ; $77c5: $1c
	rst  $38                                         ; $77c6: $ff
	rst  $38                                         ; $77c7: $ff
	ld   sp, hl                                      ; $77c8: $f9
	ld   de, $bf11                                   ; $77c9: $11 $11 $bf
	and  c                                           ; $77cc: $a1
	ld   de, $ffff                                   ; $77cd: $11 $ff $ff
	cp   $11                                         ; $77d0: $fe $11
	ld   a, [de]                                     ; $77d2: $1a
	rst  $38                                         ; $77d3: $ff
	rst  $38                                         ; $77d4: $ff
	ld   a, [$1111]                                  ; $77d5: $fa $11 $11
	cp   a                                           ; $77d8: $bf
	ld   b, c                                        ; $77d9: $41
	ld   de, $ffff                                   ; $77da: $11 $ff $ff
	ldh  a, [c]                                      ; $77dd: $f2
	ld   de, $ff1d                                   ; $77de: $11 $1d $ff
	rst  $38                                         ; $77e1: $ff
	ld   sp, hl                                      ; $77e2: $f9
	ld   de, $ef11                                   ; $77e3: $11 $11 $ef
	ld   de, rAUD1LEN                                   ; $77e6: $11 $11 $ff
	rst  $38                                         ; $77e9: $ff
	rst  $30                                         ; $77ea: $f7
	ld   de, $ff1f                                   ; $77eb: $11 $1f $ff
	rst  $38                                         ; $77ee: $ff
	ld   sp, hl                                      ; $77ef: $f9
	ld   de, $cf11                                   ; $77f0: $11 $11 $cf
	ld   de, rAUD1LEN                                   ; $77f3: $11 $11 $ff
	rst  $38                                         ; $77f6: $ff
	pop  af                                          ; $77f7: $f1
	ld   de, $ff4f                                   ; $77f8: $11 $4f $ff
	rst  $38                                         ; $77fb: $ff
	pop  af                                          ; $77fc: $f1
	ld   de, $cf11                                   ; $77fd: $11 $11 $cf
	ld   de, $ff1e                                   ; $7800: $11 $1e $ff
	rst  $38                                         ; $7803: $ff
	pop  de                                          ; $7804: $d1
	ld   de, $ffaf                                   ; $7805: $11 $af $ff
	rst  $38                                         ; $7808: $ff
	pop  af                                          ; $7809: $f1
	ld   de, $c514                                   ; $780a: $11 $14 $c5
	ld   de, $ff1f                                   ; $780d: $11 $1f $ff
	rst  $38                                         ; $7810: $ff
	or   c                                           ; $7811: $b1
	ld   de, $ffff                                   ; $7812: $11 $ff $ff
	rst  $38                                         ; $7815: $ff
	sub  c                                           ; $7816: $91
	ld   de, $d117                                   ; $7817: $11 $17 $d1
	ld   de, $ff1f                                   ; $781a: $11 $1f $ff
	rst  $38                                         ; $781d: $ff
	ld   h, c                                        ; $781e: $61
	ld   de, $ffff                                   ; $781f: $11 $ff $ff
	rst  $38                                         ; $7822: $ff
	ld   de, $1411                                   ; $7823: $11 $11 $14
	ld   [hl], c                                     ; $7826: $71
	ld   de, $ff1f                                   ; $7827: $11 $1f $ff
	rst  $38                                         ; $782a: $ff
	ld   d, c                                        ; $782b: $51
	ld   de, $ffff                                   ; $782c: $11 $ff $ff
	rst  $38                                         ; $782f: $ff
	ld   de, $1811                                   ; $7830: $11 $11 $18
	add  c                                           ; $7833: $81
	ld   de, $ff1f                                   ; $7834: $11 $1f $ff
	rst  $38                                         ; $7837: $ff
	ld   [hl], c                                     ; $7838: $71
	jr   @+$01                                       ; $7839: $18 $ff

	rst  $38                                         ; $783b: $ff
	rst  $38                                         ; $783c: $ff
	ld   de, $1211                                   ; $783d: $11 $11 $12
	ld   d, c                                        ; $7840: $51
	ld   de, $ff1f                                   ; $7841: $11 $1f $ff
	rst  $38                                         ; $7844: $ff
	ld   d, c                                        ; $7845: $51
	ld   [de], a                                     ; $7846: $12
	rst  $38                                         ; $7847: $ff
	rst  $38                                         ; $7848: $ff
	rst  $38                                         ; $7849: $ff
	ld   sp, $1511                                   ; $784a: $31 $11 $15
	ld   b, c                                        ; $784d: $41
	ld   de, $ff1f                                   ; $784e: $11 $1f $ff
	rst  $38                                         ; $7851: $ff
	pop  af                                          ; $7852: $f1
	ld   [de], a                                     ; $7853: $12
	rst  $28                                         ; $7854: $ef
	rst  $38                                         ; $7855: $ff
	rst  $38                                         ; $7856: $ff
	ld   b, c                                        ; $7857: $41
	ld   de, $8112                                   ; $7858: $11 $12 $81
	ld   de, $ff1f                                   ; $785b: $11 $1f $ff
	rst  $38                                         ; $785e: $ff
	pop  af                                          ; $785f: $f1
	inc  de                                          ; $7860: $13
	jp   hl                                          ; $7861: $e9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7862: $cf
	rst  $38                                         ; $7863: $ff
	or   d                                           ; $7864: $b2
	ld   de, $9511                                   ; $7865: $11 $11 $95
	ld   de, $ff1b                                   ; $7868: $11 $1b $ff
	rst  $38                                         ; $786b: $ff
	rst  $30                                         ; $786c: $f7
	ld   de, $6dfb                                   ; $786d: $11 $fb $6d
	rst  $38                                         ; $7870: $ff
	push af                                          ; $7871: $f5
	ld   de, $1711                                   ; $7872: $11 $11 $17
	ld   de, rAUD1LEN                                   ; $7875: $11 $11 $ff
	rst  $38                                         ; $7878: $ff
	rst  $38                                         ; $7879: $ff
	ld   b, c                                        ; $787a: $41
	xor  h                                           ; $787b: $ac
	ld   a, [de]                                     ; $787c: $1a
	rst  $38                                         ; $787d: $ff
	cp   $72                                         ; $787e: $fe $72
	ld   de, $5113                                   ; $7880: $11 $13 $51
	ld   de, $ff1f                                   ; $7883: $11 $1f $ff
	rst  $38                                         ; $7886: $ff
	rst  $30                                         ; $7887: $f7
	dec  hl                                          ; $7888: $2b
	ld   [hl], e                                     ; $7889: $73
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $788a: $cf
	rst  $38                                         ; $788b: $ff
	ld   sp, hl                                      ; $788c: $f9
	ld   de, $2111                                   ; $788d: $11 $11 $21
	ld   de, $fa13                                   ; $7890: $11 $13 $fa
	rst  $38                                         ; $7893: $ff
	rst  $38                                         ; $7894: $ff
	sbc  e                                           ; $7895: $9b
	db   $d3                                         ; $7896: $d3
	ld   a, $ff                                      ; $7897: $3e $ff
	rst  $38                                         ; $7899: $ff
	or   c                                           ; $789a: $b1
	ld   de, $1126                                   ; $789b: $11 $26 $11
	ld   de, $bf4e                                   ; $789e: $11 $4e $bf
	rst  $38                                         ; $78a1: $ff
	ld   sp, hl                                      ; $78a2: $f9
	rst  $38                                         ; $78a3: $ff
	dec  [hl]                                        ; $78a4: $35
	rst  $38                                         ; $78a5: $ff
	rst  $38                                         ; $78a6: $ff
	ei                                               ; $78a7: $fb
	ld   de, $2114                                   ; $78a8: $11 $14 $21
	ld   de, $ba11                                   ; $78ab: $11 $11 $ba
	rst  $38                                         ; $78ae: $ff
	rst  $38                                         ; $78af: $ff
	rst  $38                                         ; $78b0: $ff
	or   $8c                                         ; $78b1: $f6 $8c
	rst  $38                                         ; $78b3: $ff
	rst  $38                                         ; $78b4: $ff
	push hl                                          ; $78b5: $e5
	ld   de, $1141                                   ; $78b6: $11 $41 $11
	ld   de, $bf17                                   ; $78b9: $11 $17 $bf
	rst  $38                                         ; $78bc: $ff
	rst  $38                                         ; $78bd: $ff
	rst  $38                                         ; $78be: $ff
	sub  $cf                                         ; $78bf: $d6 $cf
	rst  $38                                         ; $78c1: $ff
	rst  $38                                         ; $78c2: $ff
	add  h                                           ; $78c3: $84
	inc  de                                          ; $78c4: $13
	ld   hl, $1111                                   ; $78c5: $21 $11 $11
	ld   c, b                                        ; $78c8: $48
	ccf                                              ; $78c9: $3f
	rst  $38                                         ; $78ca: $ff
	rst  $38                                         ; $78cb: $ff
	rst  $38                                         ; $78cc: $ff
	ld   h, l                                        ; $78cd: $65
	rst  $38                                         ; $78ce: $ff
	rst  $38                                         ; $78cf: $ff
	rst  $38                                         ; $78d0: $ff
	add  c                                           ; $78d1: $81
	dec  [hl]                                        ; $78d2: $35
	ld   hl, $1111                                   ; $78d3: $21 $11 $11
	ld   b, l                                        ; $78d6: $45
	ld   e, a                                        ; $78d7: $5f
	rst  $38                                         ; $78d8: $ff
	cp   a                                           ; $78d9: $bf

Call_0d0_78da:
	rst  $38                                         ; $78da: $ff
	ld   b, a                                        ; $78db: $47
	rst  $38                                         ; $78dc: $ff
	rst  $38                                         ; $78dd: $ff
	rst  $38                                         ; $78de: $ff
	or   h                                           ; $78df: $b4
	add  [hl]                                        ; $78e0: $86
	ld   b, c                                        ; $78e1: $41
	ld   de, $3611                                   ; $78e2: $11 $11 $36
	rra                                              ; $78e5: $1f
	rst  $38                                         ; $78e6: $ff
	call z, Call_0d0_56ff                            ; $78e7: $cc $ff $56
	rst  $38                                         ; $78ea: $ff
	rst  $38                                         ; $78eb: $ff
	rst  $38                                         ; $78ec: $ff
	xor  c                                           ; $78ed: $a9
	sbc  b                                           ; $78ee: $98
	ld   [hl], h                                     ; $78ef: $74
	ld   de, $1411                                   ; $78f0: $11 $11 $14
	dec  de                                          ; $78f3: $1b
	rst  $38                                         ; $78f4: $ff
	cp   a                                           ; $78f5: $bf
	cp   $b8                                         ; $78f6: $fe $b8
	db   $ec                                         ; $78f8: $ec
	rst  $38                                         ; $78f9: $ff
	rst  $38                                         ; $78fa: $ff
	db   $fd                                         ; $78fb: $fd
	xor  d                                           ; $78fc: $aa
	sub  a                                           ; $78fd: $97
	ld   de, $1311                                   ; $78fe: $11 $11 $13
	ld   de, $f8ce                                   ; $7901: $11 $ce $f8
	rst  $38                                         ; $7904: $ff
	jp   c, $deae                                    ; $7905: $da $ae $de

	rst  $38                                         ; $7908: $ff
	xor  $cb                                         ; $7909: $ee $cb
	cp   d                                           ; $790b: $ba
	sub  e                                           ; $790c: $93
	ld   de, $1111                                   ; $790d: $11 $11 $11
	dec  de                                          ; $7910: $1b
	xor  h                                           ; $7911: $ac
	rst  $28                                         ; $7912: $ef
	db   $fc                                         ; $7913: $fc
	call c, $ffcd                                    ; $7914: $dc $cd $ff
	rst  $38                                         ; $7917: $ff
	db   $fd                                         ; $7918: $fd
	call Call_0d0_51cb                               ; $7919: $cd $cb $51
	ld   de, $1111                                   ; $791c: $11 $11 $11
	ld   a, l                                        ; $791f: $7d
	cp   e                                           ; $7920: $bb
	rst  $38                                         ; $7921: $ff
	call c, $bffd                                    ; $7922: $dc $fd $bf
	rst  $38                                         ; $7925: $ff
	rst  $38                                         ; $7926: $ff
	rst  $38                                         ; $7927: $ff
	db   $fd                                         ; $7928: $fd
	rst  ToBoot                                         ; $7929: $c7
	ld   de, $1111                                   ; $792a: $11 $11 $11
	ld   de, $bcbb                                   ; $792d: $11 $bb $bc
	rst  $38                                         ; $7930: $ff
	db   $db                                         ; $7931: $db
	db   $ec                                         ; $7932: $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7933: $cf
	rst  $38                                         ; $7934: $ff
	rst  $38                                         ; $7935: $ff
	cp   $db                                         ; $7936: $fe $db
	sub  [hl]                                        ; $7938: $96
	ld   de, $1111                                   ; $7939: $11 $11 $11
	ld   de, $a889                                   ; $793c: $11 $89 $a8
	cp   $ac                                         ; $793f: $fe $ac
	ei                                               ; $7941: $fb
	rst  JumpTable                                         ; $7942: $df
	rst  $28                                         ; $7943: $ef
	rst  $38                                         ; $7944: $ff
	db   $fd                                         ; $7945: $fd
	db   $ec                                         ; $7946: $ec
	add  [hl]                                        ; $7947: $86
	ld   b, c                                        ; $7948: $41
	ld   de, $1111                                   ; $7949: $11 $11 $11
	ld   h, [hl]                                     ; $794c: $66
	ld   h, a                                        ; $794d: $67
	rst  $38                                         ; $794e: $ff
	adc  $fe                                         ; $794f: $ce $fe
	cp   a                                           ; $7951: $bf
	cp   $ff                                         ; $7952: $fe $ff
	db   $ed                                         ; $7954: $ed
	cp   $9a                                         ; $7955: $fe $9a
	sub  c                                           ; $7957: $91
	ld   de, $1111                                   ; $7958: $11 $11 $11
	rla                                              ; $795b: $17
	ld   e, c                                        ; $795c: $59
	sbc  a                                           ; $795d: $9f
	xor  $df                                         ; $795e: $ee $df
	jp   c, $dffc                                    ; $7960: $da $fc $df

	rst  $38                                         ; $7963: $ff
	rst  $38                                         ; $7964: $ff
	db   $eb                                         ; $7965: $eb
	sub  a                                           ; $7966: $97
	ld   de, $1211                                   ; $7967: $11 $11 $12
	ld   de, $9873                                   ; $796a: $11 $73 $98
	xor  $ac                                         ; $796d: $ee $ac
	db   $ed                                         ; $796f: $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7970: $cf
	db   $dd                                         ; $7971: $dd
	rst  $38                                         ; $7972: $ff
	rst  $38                                         ; $7973: $ff
	db   $fd                                         ; $7974: $fd
	cp   c                                           ; $7975: $b9
	add  l                                           ; $7976: $85
	ld   hl, $1111                                   ; $7977: $21 $11 $11
	inc  d                                           ; $797a: $14
	dec  d                                           ; $797b: $15
	ld   h, [hl]                                     ; $797c: $66
	jp   hl                                          ; $797d: $e9


	call z, $cedd                                    ; $797e: $cc $dd $ce
	db   $dd                                         ; $7981: $dd
	rst  $38                                         ; $7982: $ff
	rst  $38                                         ; $7983: $ff
	cp   $db                                         ; $7984: $fe $db
	sbc  b                                           ; $7986: $98
	inc  sp                                          ; $7987: $33
	ld   de, $1211                                   ; $7988: $11 $11 $12
	inc  [hl]                                        ; $798b: $34
	ld   b, l                                        ; $798c: $45
	xor  b                                           ; $798d: $a8
	cp   h                                           ; $798e: $bc
	db   $db                                         ; $798f: $db
	adc  $cf                                         ; $7990: $ce $cf
	rst  $38                                         ; $7992: $ff
	rst  $38                                         ; $7993: $ff
	cp   $db                                         ; $7994: $fe $db
	and  a                                           ; $7996: $a7
	ld   h, e                                        ; $7997: $63
	ld   de, $1111                                   ; $7998: $11 $11 $11
	ld   de, $8753                                   ; $799b: $11 $53 $87
	sbc  d                                           ; $799e: $9a
	xor  h                                           ; $799f: $ac
	db   $dd                                         ; $79a0: $dd
	sbc  $ef                                         ; $79a1: $de $ef
	rst  $38                                         ; $79a3: $ff
	rst  $38                                         ; $79a4: $ff
	db   $fd                                         ; $79a5: $fd
	cp   c                                           ; $79a6: $b9
	add  l                                           ; $79a7: $85
	ld   hl, $1111                                   ; $79a8: $21 $11 $11
	ld   de, $3824                                   ; $79ab: $11 $24 $38
	sbc  c                                           ; $79ae: $99
	sbc  e                                           ; $79af: $9b
	cp   e                                           ; $79b0: $bb
	call $ffef                                       ; $79b1: $cd $ef $ff
	rst  $38                                         ; $79b4: $ff
	rst  $38                                         ; $79b5: $ff
	jp   c, Jump_0d0_5397                            ; $79b6: $da $97 $53

	ld   de, $1111                                   ; $79b9: $11 $11 $11
	ld   sp, $6744                                   ; $79bc: $31 $44 $67
	ld   l, c                                        ; $79bf: $69
	sbc  c                                           ; $79c0: $99
	xor  h                                           ; $79c1: $ac
	call $ffff                                       ; $79c2: $cd $ff $ff
	rst  $38                                         ; $79c5: $ff
	db   $dd                                         ; $79c6: $dd
	ret                                              ; $79c7: $c9


	sub  a                                           ; $79c8: $97
	ld   h, l                                        ; $79c9: $65
	ld   [hl-], a                                    ; $79ca: $32
	ld   de, $2211                                   ; $79cb: $11 $11 $22
	inc  sp                                          ; $79ce: $33
	ld   b, l                                        ; $79cf: $45
	ld   d, [hl]                                     ; $79d0: $56
	adc  c                                           ; $79d1: $89
	sbc  h                                           ; $79d2: $9c
	call $efff                                       ; $79d3: $cd $ff $ef
	rst  $38                                         ; $79d6: $ff
	db   $ed                                         ; $79d7: $ed
	jp   z, $87a8                                    ; $79d8: $ca $a8 $87

	ld   d, h                                        ; $79db: $54
	ld   [hl+], a                                    ; $79dc: $22
	ld   hl, $1212                                   ; $79dd: $21 $12 $12
	inc  hl                                          ; $79e0: $23
	ld   d, l                                        ; $79e1: $55
	ld   l, b                                        ; $79e2: $68
	adc  c                                           ; $79e3: $89
	cp   e                                           ; $79e4: $bb
	db   $dd                                         ; $79e5: $dd
	rst  JumpTable                                         ; $79e6: $df
	xor  $fe                                         ; $79e7: $ee $fe
	call c, $a8cb                                    ; $79e9: $dc $cb $a8
	halt                                             ; $79ec: $76
	ld   d, h                                        ; $79ed: $54
	ld   [hl-], a                                    ; $79ee: $32
	ld   de, $1211                                   ; $79ef: $11 $11 $12
	inc  sp                                          ; $79f2: $33
	ld   b, [hl]                                     ; $79f3: $46
	ld   a, b                                        ; $79f4: $78
	sbc  d                                           ; $79f5: $9a
	cp   h                                           ; $79f6: $bc
	sbc  $ff                                         ; $79f7: $de $ff
	cp   $ee                                         ; $79f9: $fe $ee
	call z, $99b9                                    ; $79fb: $cc $b9 $99
	halt                                             ; $79fe: $76
	ld   d, e                                        ; $79ff: $53
	ld   [hl+], a                                    ; $7a00: $22
	ld   de, $2212                                   ; $7a01: $11 $12 $22
	inc  [hl]                                        ; $7a04: $34
	ld   h, a                                        ; $7a05: $67
	ld   a, c                                        ; $7a06: $79
	xor  d                                           ; $7a07: $aa
	cp   h                                           ; $7a08: $bc
	call $eede                                       ; $7a09: $cd $de $ee
	xor  $cb                                         ; $7a0c: $ee $cb
	xor  d                                           ; $7a0e: $aa
	adc  b                                           ; $7a0f: $88
	halt                                             ; $7a10: $76
	ld   b, e                                        ; $7a11: $43
	ld   [hl-], a                                    ; $7a12: $32
	ld   [hl+], a                                    ; $7a13: $22
	ld   [hl+], a                                    ; $7a14: $22
	ld   [hl+], a                                    ; $7a15: $22
	inc  [hl]                                        ; $7a16: $34
	ld   d, [hl]                                     ; $7a17: $56
	ld   a, b                                        ; $7a18: $78
	sbc  d                                           ; $7a19: $9a
	call $eede                                       ; $7a1a: $cd $de $ee
	cp   $ed                                         ; $7a1d: $fe $ed
	call z, $98b9                                    ; $7a1f: $cc $b9 $98
	ld   h, l                                        ; $7a22: $65
	ld   b, e                                        ; $7a23: $43
	inc  sp                                          ; $7a24: $33
	ld   [hl+], a                                    ; $7a25: $22
	ld   [hl+], a                                    ; $7a26: $22
	ld   [hl+], a                                    ; $7a27: $22
	inc  [hl]                                        ; $7a28: $34
	ld   d, [hl]                                     ; $7a29: $56
	ld   a, b                                        ; $7a2a: $78
	sbc  d                                           ; $7a2b: $9a
	cp   h                                           ; $7a2c: $bc
	db   $dd                                         ; $7a2d: $dd
	db   $dd                                         ; $7a2e: $dd
	xor  $dd                                         ; $7a2f: $ee $dd
	cp   e                                           ; $7a31: $bb
	cp   c                                           ; $7a32: $b9
	sbc  c                                           ; $7a33: $99
	halt                                             ; $7a34: $76
	ld   d, e                                        ; $7a35: $53
	ld   [hl-], a                                    ; $7a36: $32
	ld   [hl+], a                                    ; $7a37: $22
	ld   [hl+], a                                    ; $7a38: $22
	inc  hl                                          ; $7a39: $23
	ld   b, l                                        ; $7a3a: $45
	ld   h, [hl]                                     ; $7a3b: $66
	ld   a, b                                        ; $7a3c: $78
	sbc  d                                           ; $7a3d: $9a
	cp   h                                           ; $7a3e: $bc
	db   $dd                                         ; $7a3f: $dd
	xor  $ee                                         ; $7a40: $ee $ee
	db   $dd                                         ; $7a42: $dd
	res  7, c                                        ; $7a43: $cb $b9
	sbc  b                                           ; $7a45: $98
	halt                                             ; $7a46: $76
	ld   d, h                                        ; $7a47: $54
	inc  sp                                          ; $7a48: $33
	ld   [hl+], a                                    ; $7a49: $22
	ld   [hl+], a                                    ; $7a4a: $22
	ld   [hl+], a                                    ; $7a4b: $22
	inc  [hl]                                        ; $7a4c: $34
	ld   d, [hl]                                     ; $7a4d: $56
	ld   a, b                                        ; $7a4e: $78
	sbc  e                                           ; $7a4f: $9b
	cp   h                                           ; $7a50: $bc
	db   $dd                                         ; $7a51: $dd
	db   $dd                                         ; $7a52: $dd
	db   $dd                                         ; $7a53: $dd
	db   $dd                                         ; $7a54: $dd
	call z, $98aa                                    ; $7a55: $cc $aa $98
	halt                                             ; $7a58: $76
	ld   d, h                                        ; $7a59: $54
	inc  sp                                          ; $7a5a: $33
	ld   [hl+], a                                    ; $7a5b: $22
	ld   [hl+], a                                    ; $7a5c: $22
	inc  hl                                          ; $7a5d: $23
	inc  [hl]                                        ; $7a5e: $34
	ld   d, [hl]                                     ; $7a5f: $56
	ld   a, b                                        ; $7a60: $78
	adc  d                                           ; $7a61: $8a
	cp   h                                           ; $7a62: $bc
	call $edde                                       ; $7a63: $cd $de $ed
	call c, $b9cb                                    ; $7a66: $dc $cb $b9
	sbc  b                                           ; $7a69: $98
	add  a                                           ; $7a6a: $87
	ld   h, l                                        ; $7a6b: $65
	ld   b, e                                        ; $7a6c: $43
	ld   [hl-], a                                    ; $7a6d: $32
	ld   [hl+], a                                    ; $7a6e: $22
	inc  sp                                          ; $7a6f: $33
	inc  [hl]                                        ; $7a70: $34
	ld   d, [hl]                                     ; $7a71: $56
	ld   h, a                                        ; $7a72: $67
	adc  c                                           ; $7a73: $89
	xor  e                                           ; $7a74: $ab
	call z, $eecc                                    ; $7a75: $cc $cc $ee
	db   $ed                                         ; $7a78: $ed
	call z, $a9bb                                    ; $7a79: $cc $bb $a9
	add  a                                           ; $7a7c: $87
	ld   h, l                                        ; $7a7d: $65
	ld   b, h                                        ; $7a7e: $44
	inc  sp                                          ; $7a7f: $33
	ld   [hl+], a                                    ; $7a80: $22
	ld   [hl+], a                                    ; $7a81: $22
	inc  [hl]                                        ; $7a82: $34
	ld   b, l                                        ; $7a83: $45
	ld   h, a                                        ; $7a84: $67
	ld   a, b                                        ; $7a85: $78
	xor  e                                           ; $7a86: $ab
	cp   h                                           ; $7a87: $bc
	call $eede                                       ; $7a88: $cd $de $ee
	call c, $aaca                                    ; $7a8b: $dc $ca $aa
	sub  a                                           ; $7a8e: $97
	ld   h, l                                        ; $7a8f: $65
	ld   b, e                                        ; $7a90: $43
	inc  sp                                          ; $7a91: $33
	ld   [hl-], a                                    ; $7a92: $32
	ld   [hl+], a                                    ; $7a93: $22
	inc  sp                                          ; $7a94: $33
	ld   b, l                                        ; $7a95: $45
	ld   h, [hl]                                     ; $7a96: $66
	ld   a, c                                        ; $7a97: $79
	sbc  d                                           ; $7a98: $9a
	cp   h                                           ; $7a99: $bc
	call $eede                                       ; $7a9a: $cd $de $ee
	db   $dd                                         ; $7a9d: $dd
	cp   e                                           ; $7a9e: $bb
	xor  d                                           ; $7a9f: $aa
	adc  b                                           ; $7aa0: $88
	ld   [hl], l                                     ; $7aa1: $75
	ld   b, h                                        ; $7aa2: $44
	inc  sp                                          ; $7aa3: $33

Jump_0d0_7aa4:
	ld   [hl-], a                                    ; $7aa4: $32
	ld   [hl+], a                                    ; $7aa5: $22
	inc  sp                                          ; $7aa6: $33
	ld   b, l                                        ; $7aa7: $45
	ld   h, a                                        ; $7aa8: $67
	ld   a, c                                        ; $7aa9: $79
	sbc  d                                           ; $7aaa: $9a
	cp   h                                           ; $7aab: $bc
	call $eede                                       ; $7aac: $cd $de $ee
	db   $dd                                         ; $7aaf: $dd
	cp   d                                           ; $7ab0: $ba
	xor  c                                           ; $7ab1: $a9
	add  a                                           ; $7ab2: $87
	ld   [hl], l                                     ; $7ab3: $75
	ld   d, h                                        ; $7ab4: $54
	inc  sp                                          ; $7ab5: $33
	inc  sp                                          ; $7ab6: $33
	inc  hl                                          ; $7ab7: $23
	inc  sp                                          ; $7ab8: $33
	ld   b, l                                        ; $7ab9: $45
	ld   h, a                                        ; $7aba: $67
	ld   a, c                                        ; $7abb: $79
	xor  e                                           ; $7abc: $ab
	call z, $dddd                                    ; $7abd: $cc $dd $dd
	db   $dd                                         ; $7ac0: $dd
	call z, $a9ba                                    ; $7ac1: $cc $ba $a9
	adc  b                                           ; $7ac4: $88
	halt                                             ; $7ac5: $76
	ld   d, h                                        ; $7ac6: $54
	inc  sp                                          ; $7ac7: $33
	inc  sp                                          ; $7ac8: $33
	inc  sp                                          ; $7ac9: $33
	inc  sp                                          ; $7aca: $33
	ld   b, l                                        ; $7acb: $45
	ld   h, [hl]                                     ; $7acc: $66
	ld   a, c                                        ; $7acd: $79
	xor  d                                           ; $7ace: $aa
	cp   h                                           ; $7acf: $bc
	db   $dd                                         ; $7ad0: $dd
	db   $dd                                         ; $7ad1: $dd
	db   $dd                                         ; $7ad2: $dd
	call $a9bb                                       ; $7ad3: $cd $bb $a9
	add  a                                           ; $7ad6: $87
	halt                                             ; $7ad7: $76
	ld   d, h                                        ; $7ad8: $54
	ld   b, e                                        ; $7ad9: $43
	inc  sp                                          ; $7ada: $33
	inc  sp                                          ; $7adb: $33
	inc  sp                                          ; $7adc: $33
	ld   b, l                                        ; $7add: $45
	ld   h, [hl]                                     ; $7ade: $66
	ld   a, c                                        ; $7adf: $79
	xor  e                                           ; $7ae0: $ab
	cp   h                                           ; $7ae1: $bc
	call $dddd                                       ; $7ae2: $cd $dd $dd
	call z, $a9ca                                    ; $7ae5: $cc $ca $a9
	add  a                                           ; $7ae8: $87
	ld   h, l                                        ; $7ae9: $65
	ld   b, h                                        ; $7aea: $44
	inc  sp                                          ; $7aeb: $33
	ld   [hl-], a                                    ; $7aec: $32
	inc  sp                                          ; $7aed: $33
	inc  sp                                          ; $7aee: $33
	ld   b, l                                        ; $7aef: $45
	ld   h, a                                        ; $7af0: $67
	adc  c                                           ; $7af1: $89
	xor  e                                           ; $7af2: $ab
	cp   h                                           ; $7af3: $bc
	db   $dd                                         ; $7af4: $dd
	db   $dd                                         ; $7af5: $dd
	db   $dd                                         ; $7af6: $dd
	call z, $99bb                                    ; $7af7: $cc $bb $99
	add  a                                           ; $7afa: $87
	ld   h, l                                        ; $7afb: $65
	ld   b, e                                        ; $7afc: $43
	inc  sp                                          ; $7afd: $33
	ld   [hl+], a                                    ; $7afe: $22
	inc  sp                                          ; $7aff: $33
	inc  [hl]                                        ; $7b00: $34
	ld   b, l                                        ; $7b01: $45
	ld   h, a                                        ; $7b02: $67
	adc  h                                           ; $7b03: $8c
	call c, $ccdd                                    ; $7b04: $dc $dd $cc
	rst  JumpTable                                         ; $7b07: $df
	cp   $db                                         ; $7b08: $fe $db
	xor  c                                           ; $7b0a: $a9
	sub  a                                           ; $7b0b: $97
	ld   h, h                                        ; $7b0c: $64
	ld   hl, $1122                                   ; $7b0d: $21 $22 $11
	inc  hl                                          ; $7b10: $23
	dec  [hl]                                        ; $7b11: $35
	ld   h, a                                        ; $7b12: $67
	ld   a, c                                        ; $7b13: $79
	cp   h                                           ; $7b14: $bc
	call $dded                                       ; $7b15: $cd $ed $dd
	cp   $ec                                         ; $7b18: $fe $ec
	cp   e                                           ; $7b1a: $bb
	sub  a                                           ; $7b1b: $97
	ld   [hl], l                                     ; $7b1c: $75
	ld   hl, $1111                                   ; $7b1d: $21 $11 $11
	inc  d                                           ; $7b20: $14
	ld   b, h                                        ; $7b21: $44
	ld   l, b                                        ; $7b22: $68
	sbc  b                                           ; $7b23: $98
	sbc  e                                           ; $7b24: $9b
	cp   h                                           ; $7b25: $bc
	adc  $fe                                         ; $7b26: $ce $fe
	rst  $28                                         ; $7b28: $ef
	rst  $38                                         ; $7b29: $ff
	db   $dd                                         ; $7b2a: $dd
	ret                                              ; $7b2b: $c9


	halt                                             ; $7b2c: $76
	ld   sp, $1111                                   ; $7b2d: $31 $11 $11
	ld   [de], a                                     ; $7b30: $12
	ld   h, h                                        ; $7b31: $64
	ld   a, c                                        ; $7b32: $79
	cp   c                                           ; $7b33: $b9
	xor  h                                           ; $7b34: $ac
	set  1, [hl]                                     ; $7b35: $cb $ce
	xor  $ef                                         ; $7b37: $ee $ef
	rst  $38                                         ; $7b39: $ff
	db   $ed                                         ; $7b3a: $ed
	jp   z, $2186                                    ; $7b3b: $ca $86 $21

	ld   de, $1411                                   ; $7b3e: $11 $11 $14
	ld   h, [hl]                                     ; $7b41: $66
	sbc  e                                           ; $7b42: $9b
	cp   h                                           ; $7b43: $bc
	cp   e                                           ; $7b44: $bb
	set  3, [hl]                                     ; $7b45: $cb $de
	rst  $28                                         ; $7b47: $ef
	rst  $38                                         ; $7b48: $ff
	cp   $ed                                         ; $7b49: $fe $ed
	cp   c                                           ; $7b4b: $b9
	ld   h, h                                        ; $7b4c: $64
	ld   de, $1111                                   ; $7b4d: $11 $11 $11
	ld   c, b                                        ; $7b50: $48
	ld   l, e                                        ; $7b51: $6b
	cp   [hl]                                        ; $7b52: $be
	jp   z, $bbcd                                    ; $7b53: $ca $cd $bb

	xor  $ef                                         ; $7b56: $ee $ef
	cp   $dd                                         ; $7b58: $fe $dd
	db   $db                                         ; $7b5a: $db
	ld   [hl], l                                     ; $7b5b: $75
	ld   de, $1111                                   ; $7b5c: $11 $11 $11
	ld   a, [de]                                     ; $7b5f: $1a
	ld   l, e                                        ; $7b60: $6b
	adc  $fa                                         ; $7b61: $ce $fa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b63: $cf
	cp   d                                           ; $7b64: $ba
	rst  $38                                         ; $7b65: $ff
	cp   $ff                                         ; $7b66: $fe $ff
	cp   l                                           ; $7b68: $bd
	ld   [$1194], a                                  ; $7b69: $ea $94 $11
	ld   de, $1911                                   ; $7b6c: $11 $11 $19
	xor  e                                           ; $7b6f: $ab
	xor  a                                           ; $7b70: $af
	ld   a, [$dbcf]                                  ; $7b71: $fa $cf $db
	rst  $38                                         ; $7b74: $ff
	cp   $ef                                         ; $7b75: $fe $ef
	cp   h                                           ; $7b77: $bc
	ei                                               ; $7b78: $fb
	ld   [hl], e                                     ; $7b79: $73
	ld   de, $1111                                   ; $7b7a: $11 $11 $11
	ld   l, c                                        ; $7b7d: $69
	adc  l                                           ; $7b7e: $8d
	cp   a                                           ; $7b7f: $bf
	db   $eb                                         ; $7b80: $eb
	xor  $bf                                         ; $7b81: $ee $bf
	rst  $38                                         ; $7b83: $ff
	db   $fc                                         ; $7b84: $fc
	db   $ec                                         ; $7b85: $ec
	cp   l                                           ; $7b86: $bd
	cp   b                                           ; $7b87: $b8
	ld   sp, $1111                                   ; $7b88: $31 $11 $11
	dec  d                                           ; $7b8b: $15
	reti                                             ; $7b8c: $d9


	call $9efe                                       ; $7b8d: $cd $fe $9e
	add  sp, -$01                                    ; $7b90: $e8 $ff
	rst  $38                                         ; $7b92: $ff
	cp   a                                           ; $7b93: $bf
	sbc  d                                           ; $7b94: $9a
	jp   hl                                          ; $7b95: $e9


	ld   [hl], c                                     ; $7b96: $71
	ld   de, $1111                                   ; $7b97: $11 $11 $11
	ld   hl, sp-$02                                  ; $7b9a: $f8 $fe
	cp   a                                           ; $7b9c: $bf
	sbc  [hl]                                        ; $7b9d: $9e
	db   $db                                         ; $7b9e: $db
	rst  $28                                         ; $7b9f: $ef
	rst  $38                                         ; $7ba0: $ff
	db   $ed                                         ; $7ba1: $ed
	ret  z                                           ; $7ba2: $c8

	ld   [$1192], a                                  ; $7ba3: $ea $92 $11
	ld   de, $ce31                                   ; $7ba6: $11 $31 $ce
	cp   a                                           ; $7ba9: $bf
	rst  JumpTable                                         ; $7baa: $df
	db   $dd                                         ; $7bab: $dd
	ret  c                                           ; $7bac: $d8

	rst  $28                                         ; $7bad: $ef
	rst  $38                                         ; $7bae: $ff
	db   $fc                                         ; $7baf: $fc
	or   [hl]                                        ; $7bb0: $b6
	cp   h                                           ; $7bb1: $bc
	ld   h, c                                        ; $7bb2: $61
	ld   de, $1111                                   ; $7bb3: $11 $11 $11
	ld   sp, hl                                      ; $7bb6: $f9
	rst  $38                                         ; $7bb7: $ff
	rst  $28                                         ; $7bb8: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bb9: $cf
	cp   c                                           ; $7bba: $b9
	rst  $38                                         ; $7bbb: $ff
	rst  $38                                         ; $7bbc: $ff
	res  0, l                                        ; $7bbd: $cb $85
	xor  c                                           ; $7bbf: $a9
	ld   hl, $1111                                   ; $7bc0: $21 $11 $11
	rra                                              ; $7bc3: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bc4: $cf
	ei                                               ; $7bc5: $fb
	ei                                               ; $7bc6: $fb
	db   $fd                                         ; $7bc7: $fd
	cp   a                                           ; $7bc8: $bf
	rst  $38                                         ; $7bc9: $ff
	cp   $ab                                         ; $7bca: $fe $ab
	ld   d, [hl]                                     ; $7bcc: $56
	sub  c                                           ; $7bcd: $91
	ld   de, $1111                                   ; $7bce: $11 $11 $11
	db   $fd                                         ; $7bd1: $fd
	rst  $38                                         ; $7bd2: $ff
	sbc  a                                           ; $7bd3: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bd4: $cf
	db   $db                                         ; $7bd5: $db
	rst  $38                                         ; $7bd6: $ff
	rst  $38                                         ; $7bd7: $ff
	ei                                               ; $7bd8: $fb
	ld   [hl], h                                     ; $7bd9: $74
	add  [hl]                                        ; $7bda: $86
	ld   de, $1411                                   ; $7bdb: $11 $11 $14
	rra                                              ; $7bde: $1f
	rst  $38                                         ; $7bdf: $ff
	xor  $ff                                         ; $7be0: $ee $ff
	ld   sp, hl                                      ; $7be2: $f9
	rst  $38                                         ; $7be3: $ff
	rst  $38                                         ; $7be4: $ff
	cp   $86                                         ; $7be5: $fe $86
	ld   d, [hl]                                     ; $7be7: $56
	ld   de, $1511                                   ; $7be8: $11 $11 $15
	rra                                              ; $7beb: $1f
	rst  $38                                         ; $7bec: $ff
	cp   h                                           ; $7bed: $bc
	ei                                               ; $7bee: $fb
	call c, $ffff                                    ; $7bef: $dc $ff $ff
	db   $fc                                         ; $7bf2: $fc
	add  a                                           ; $7bf3: $87
	ld   b, [hl]                                     ; $7bf4: $46
	ld   de, $1811                                   ; $7bf5: $11 $11 $18
	rra                                              ; $7bf8: $1f
	rst  $38                                         ; $7bf9: $ff
	adc  e                                           ; $7bfa: $8b
	rst  $38                                         ; $7bfb: $ff
	cp   c                                           ; $7bfc: $b9
	rst  $38                                         ; $7bfd: $ff
	rst  $38                                         ; $7bfe: $ff
	db   $fc                                         ; $7bff: $fc
	ld   [hl], $25                                   ; $7c00: $36 $25
	ld   de, $3111                                   ; $7c02: $11 $11 $31
	ld   e, a                                        ; $7c05: $5f
	rst  $38                                         ; $7c06: $ff
	adc  [hl]                                        ; $7c07: $8e
	rst  $38                                         ; $7c08: $ff
	ld   [hl], a                                     ; $7c09: $77
	rst  $38                                         ; $7c0a: $ff
	rst  $38                                         ; $7c0b: $ff
	ld   hl, sp+$02                                  ; $7c0c: $f8 $02
	ld   b, c                                        ; $7c0e: $41
	ld   de, $3311                                   ; $7c0f: $11 $11 $33
	rst  $38                                         ; $7c12: $ff
	rst  $38                                         ; $7c13: $ff
	rst  $28                                         ; $7c14: $ef
	db   $dd                                         ; $7c15: $dd
	rst  $38                                         ; $7c16: $ff
	rst  $38                                         ; $7c17: $ff
	rst  $38                                         ; $7c18: $ff
	and  l                                           ; $7c19: $a5
	ld   b, c                                        ; $7c1a: $41
	ld   de, $1611                                   ; $7c1b: $11 $11 $16
	dec  de                                          ; $7c1e: $1b
	rst  $38                                         ; $7c1f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c20: $cf
	ei                                               ; $7c21: $fb
	sbc  l                                           ; $7c22: $9d
	rst  $38                                         ; $7c23: $ff
	rst  $38                                         ; $7c24: $ff
	ld   a, [$1146]                                  ; $7c25: $fa $46 $11
	ld   de, $1311                                   ; $7c28: $11 $11 $13
	rst  $38                                         ; $7c2b: $ff
	ei                                               ; $7c2c: $fb
	rst  $38                                         ; $7c2d: $ff
	ld   [hl], l                                     ; $7c2e: $75
	rst  $38                                         ; $7c2f: $ff
	rst  $38                                         ; $7c30: $ff
	rst  $38                                         ; $7c31: $ff
	and  a                                           ; $7c32: $a7
	ld   sp, $1111                                   ; $7c33: $31 $11 $11
	ld   d, $1f                                      ; $7c36: $16 $1f
	rst  $38                                         ; $7c38: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c39: $cf
	pop  af                                          ; $7c3a: $f1
	ld   a, a                                        ; $7c3b: $7f
	rst  $38                                         ; $7c3c: $ff
	rst  $38                                         ; $7c3d: $ff
	db   $e4                                         ; $7c3e: $e4
	ld   d, c                                        ; $7c3f: $51
	ld   de, $1311                                   ; $7c40: $11 $11 $13
	dec  de                                          ; $7c43: $1b
	rst  $38                                         ; $7c44: $ff
	xor  a                                           ; $7c45: $af
	pop  af                                          ; $7c46: $f1
	xor  [hl]                                        ; $7c47: $ae
	sbc  $ff                                         ; $7c48: $de $ff
	ld   sp, hl                                      ; $7c4a: $f9
	ld   [hl], c                                     ; $7c4b: $71
	ld   de, $1211                                   ; $7c4c: $11 $11 $12
	inc  l                                           ; $7c4f: $2c
	rst  $38                                         ; $7c50: $ff
	adc  a                                           ; $7c51: $8f
	pop  af                                          ; $7c52: $f1
	ld   a, l                                        ; $7c53: $7d
	rst  $38                                         ; $7c54: $ff
	rst  $38                                         ; $7c55: $ff
	and  $81                                         ; $7c56: $e6 $81
	ld   de, $1411                                   ; $7c58: $11 $11 $14
	ld   c, l                                        ; $7c5b: $4d
	rst  $38                                         ; $7c5c: $ff
	cp   a                                           ; $7c5d: $bf
	pop  af                                          ; $7c5e: $f1
	ld   l, h                                        ; $7c5f: $6c
	rst  $38                                         ; $7c60: $ff
	rst  $38                                         ; $7c61: $ff
	push de                                          ; $7c62: $d5
	ld   de, $1111                                   ; $7c63: $11 $11 $11
	pop  hl                                          ; $7c66: $e1
	ld   e, a                                        ; $7c67: $5f
	ei                                               ; $7c68: $fb
	rst  $38                                         ; $7c69: $ff
	ld   b, c                                        ; $7c6a: $41
	ld   a, a                                        ; $7c6b: $7f
	rst  $38                                         ; $7c6c: $ff
	rst  $38                                         ; $7c6d: $ff
	ld   [hl], e                                     ; $7c6e: $73
	ld   de, $1111                                   ; $7c6f: $11 $11 $11
	ld   d, h                                        ; $7c72: $54
	rst  $38                                         ; $7c73: $ff
	rst  $38                                         ; $7c74: $ff
	ld   sp, hl                                      ; $7c75: $f9
	inc  de                                          ; $7c76: $13
	adc  a                                           ; $7c77: $8f
	rst  $38                                         ; $7c78: $ff
	db   $fc                                         ; $7c79: $fc
	ld   b, c                                        ; $7c7a: $41
	ld   de, $1811                                   ; $7c7b: $11 $11 $18
	ld   l, h                                        ; $7c7e: $6c
	rst  $38                                         ; $7c7f: $ff
	rst  $38                                         ; $7c80: $ff
	or   $44                                         ; $7c81: $f6 $44
	rst  $38                                         ; $7c83: $ff
	rst  $38                                         ; $7c84: $ff
	and  [hl]                                        ; $7c85: $a6
	ld   de, $1311                                   ; $7c86: $11 $11 $13
	halt                                             ; $7c89: $76
	rst  $38                                         ; $7c8a: $ff
	ei                                               ; $7c8b: $fb
	rst  $30                                         ; $7c8c: $f7
	ld   de, $ffaf                                   ; $7c8d: $11 $af $ff
	cp   $11                                         ; $7c90: $fe $11
	ld   de, $1311                                   ; $7c92: $11 $11 $13
	rst  $38                                         ; $7c95: $ff
	rst  $38                                         ; $7c96: $ff
	call nc, $1b41                                   ; $7c97: $d4 $41 $1b
	rst  $38                                         ; $7c9a: $ff
	rst  $38                                         ; $7c9b: $ff
	and  c                                           ; $7c9c: $a1
	ld   de, $1511                                   ; $7c9d: $11 $11 $15
	rst  $38                                         ; $7ca0: $ff
	rst  $38                                         ; $7ca1: $ff
	ldh  a, [c]                                      ; $7ca2: $f2
	rla                                              ; $7ca3: $17
	dec  d                                           ; $7ca4: $15
	rst  $38                                         ; $7ca5: $ff
	db   $fd                                         ; $7ca6: $fd
	pop  hl                                          ; $7ca7: $e1
	ld   de, $1311                                   ; $7ca8: $11 $11 $13
	sbc  a                                           ; $7cab: $9f
	rst  $38                                         ; $7cac: $ff
	ei                                               ; $7cad: $fb
	ld   b, c                                        ; $7cae: $41
	ld   a, [de]                                     ; $7caf: $1a
	rst  $38                                         ; $7cb0: $ff
	rst  $38                                         ; $7cb1: $ff
	and  c                                           ; $7cb2: $a1
	ld   de, $1611                                   ; $7cb3: $11 $11 $16
	cpl                                              ; $7cb6: $2f
	rst  $38                                         ; $7cb7: $ff
	ld   sp, hl                                      ; $7cb8: $f9
	pop  hl                                          ; $7cb9: $e1
	dec  de                                          ; $7cba: $1b
	rst  $28                                         ; $7cbb: $ef
	rst  $38                                         ; $7cbc: $ff
	pop  af                                          ; $7cbd: $f1
	ld   de, $1611                                   ; $7cbe: $11 $11 $16
	rst  $28                                         ; $7cc1: $ef
	rst  $38                                         ; $7cc2: $ff
	ld   a, [$1111]                                  ; $7cc3: $fa $11 $11
	rst  JumpTable                                         ; $7cc6: $df
	rst  $38                                         ; $7cc7: $ff
	or   c                                           ; $7cc8: $b1
	ld   de, $1a11                                   ; $7cc9: $11 $11 $1a
	rst  $38                                         ; $7ccc: $ff
	rst  $38                                         ; $7ccd: $ff
	push af                                          ; $7cce: $f5
	ld   de, rAUD1HIGH                                   ; $7ccf: $11 $14 $ff
	rst  $38                                         ; $7cd2: $ff
	ld   de, $1111                                   ; $7cd3: $11 $11 $11
	db   $dd                                         ; $7cd6: $dd
	rst  $38                                         ; $7cd7: $ff
	rst  $38                                         ; $7cd8: $ff
	ld   d, c                                        ; $7cd9: $51
	ld   de, $ff9f                                   ; $7cda: $11 $9f $ff
	db   $fc                                         ; $7cdd: $fc
	ld   de, $1711                                   ; $7cde: $11 $11 $17
	rst  $38                                         ; $7ce1: $ff
	rst  $38                                         ; $7ce2: $ff
	rst  $38                                         ; $7ce3: $ff
	ld   de, rAUD1ENV                                   ; $7ce4: $11 $12 $ff
	rst  $38                                         ; $7ce7: $ff
	ld   [hl], c                                     ; $7ce8: $71
	ld   de, $5e11                                   ; $7ce9: $11 $11 $5e
	rst  $38                                         ; $7cec: $ff
	rst  $38                                         ; $7ced: $ff
	di                                               ; $7cee: $f3
	ld   de, $fb1f                                   ; $7cef: $11 $1f $fb
	db   $fc                                         ; $7cf2: $fc
	ld   de, $1911                                   ; $7cf3: $11 $11 $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cf6: $cf
	rst  $38                                         ; $7cf7: $ff
	push af                                          ; $7cf8: $f5
	ld   de, rAUD1LEN                                   ; $7cf9: $11 $11 $ff
	add  sp, -$7f                                    ; $7cfc: $e8 $81
	ld   de, $6f11                                   ; $7cfe: $11 $11 $6f
	rst  $38                                         ; $7d01: $ff
	rst  $38                                         ; $7d02: $ff
	ld   de, $fc11                                   ; $7d03: $11 $11 $fc
	db   $fd                                         ; $7d06: $fd
	dec  d                                           ; $7d07: $15
	ld   de, $9f11                                   ; $7d08: $11 $11 $9f
	rst  $38                                         ; $7d0b: $ff
	rst  $38                                         ; $7d0c: $ff
	pop  af                                          ; $7d0d: $f1
	ld   de, $8f1f                                   ; $7d0e: $11 $1f $8f
	ld   d, c                                        ; $7d11: $51
	ld   de, $4f11                                   ; $7d12: $11 $11 $4f
	rst  $38                                         ; $7d15: $ff
	rst  $38                                         ; $7d16: $ff
	pop  af                                          ; $7d17: $f1
	ld   de, $cf17                                   ; $7d18: $11 $17 $cf
	sub  d                                           ; $7d1b: $92
	ld   de, $ad11                                   ; $7d1c: $11 $11 $ad
	rst  $38                                         ; $7d1f: $ff
	rst  $38                                         ; $7d20: $ff
	ld   h, c                                        ; $7d21: $61
	ld   de, rAUD1LEN                                   ; $7d22: $11 $11 $ff
	ld   b, a                                        ; $7d25: $47
	ld   de, $2f11                                   ; $7d26: $11 $11 $2f
	rst  $38                                         ; $7d29: $ff
	rst  $38                                         ; $7d2a: $ff
	ld   de, $1e11                                   ; $7d2b: $11 $11 $1e
	rst  $38                                         ; $7d2e: $ff
	ld   [hl], a                                     ; $7d2f: $77
	ld   de, $9f14                                   ; $7d30: $11 $14 $9f
	rst  $38                                         ; $7d33: $ff
	rst  $38                                         ; $7d34: $ff
	ld   hl, $1d11                                   ; $7d35: $21 $11 $1d
	rst  $38                                         ; $7d38: $ff
	and  h                                           ; $7d39: $a4
	ld   de, $9f12                                   ; $7d3a: $11 $12 $9f
	rst  $38                                         ; $7d3d: $ff
	ei                                               ; $7d3e: $fb
	ld   de, $1f11                                   ; $7d3f: $11 $11 $1f
	cp   e                                           ; $7d42: $bb
	pop  de                                          ; $7d43: $d1
	ld   de, $3f15                                   ; $7d44: $11 $15 $3f
	rst  $38                                         ; $7d47: $ff
	or   $31                                         ; $7d48: $f6 $31
	ld   de, $c76c                                   ; $7d4a: $11 $6c $c7
	ld   d, c                                        ; $7d4d: $51
	ld   de, $7f37                                   ; $7d4e: $11 $37 $7f
	rst  $38                                         ; $7d51: $ff
	or   $61                                         ; $7d52: $f6 $61
	ld   de, $8aaf                                   ; $7d54: $11 $af $8a
	ld   [hl], c                                     ; $7d57: $71
	ld   de, $bf75                                   ; $7d58: $11 $75 $bf
	rst  $38                                         ; $7d5b: $ff
	db   $fc                                         ; $7d5c: $fc
	ld   de, $2f51                                   ; $7d5d: $11 $51 $2f
	di                                               ; $7d60: $f3
	dec  d                                           ; $7d61: $15
	ld   de, $dcdf                                   ; $7d62: $11 $df $dc
	rst  $38                                         ; $7d65: $ff
	jp   $1264                                       ; $7d66: $c3 $64 $12


	xor  a                                           ; $7d69: $af
	sub  c                                           ; $7d6a: $91
	ld   h, c                                        ; $7d6b: $61
	ld   d, $94                                      ; $7d6c: $16 $94
	rst  $38                                         ; $7d6e: $ff
	ld   e, a                                        ; $7d6f: $5f
	ei                                               ; $7d70: $fb
	rla                                              ; $7d71: $17

jr_0d0_7d72:
	pop  bc                                          ; $7d72: $c1

jr_0d0_7d73:
	xor  a                                           ; $7d73: $af
	ldh  a, [c]                                      ; $7d74: $f2
	inc  de                                          ; $7d75: $13
	ld   de, $bc2d                                   ; $7d76: $11 $2d $bc
	rst  $28                                         ; $7d79: $ef
	ei                                               ; $7d7a: $fb
	jp   $581a                                       ; $7d7b: $c3 $1a $58


	db   $db                                         ; $7d7e: $db
	ld   b, c                                        ; $7d7f: $41
	ld   de, $8f1a                                   ; $7d80: $11 $1a $8f
	db   $fd                                         ; $7d83: $fd
	db   $fd                                         ; $7d84: $fd
	ld   hl, sp+$1a                                  ; $7d85: $f8 $1a
	ld   [hl], $b9                                   ; $7d87: $36 $b9
	and  d                                           ; $7d89: $a2
	ld   de, $ad12                                   ; $7d8a: $11 $12 $ad
	cp   $af                                         ; $7d8d: $fe $af
	or   $4b                                         ; $7d8f: $f6 $4b
	ld   [hl], c                                     ; $7d91: $71
	ld   a, l                                        ; $7d92: $7d
	ld   sp, $3543                                   ; $7d93: $31 $43 $35
	ld   a, [$9fae]                                  ; $7d96: $fa $ae $9f
	cp   b                                           ; $7d99: $b8
	and  h                                           ; $7d9a: $a4
	ld   [hl], e                                     ; $7d9b: $73
	ld   a, e                                        ; $7d9c: $7b
	ld   b, [hl]                                     ; $7d9d: $46
	ld   b, d                                        ; $7d9e: $42
	adc  b                                           ; $7d9f: $88
	sbc  d                                           ; $7da0: $9a
	ld   l, c                                        ; $7da1: $69
	or   a                                           ; $7da2: $b7
	cp   e                                           ; $7da3: $bb
	reti                                             ; $7da4: $d9


	ld   a, e                                        ; $7da5: $7b
	ld   e, b                                        ; $7da6: $58
	cp   c                                           ; $7da7: $b9
	ld   d, c                                        ; $7da8: $51
	rla                                              ; $7da9: $17
	ld   [hl], c                                     ; $7daa: $71
	cp   a                                           ; $7dab: $bf
	ld   d, e                                        ; $7dac: $53
	ld   l, h                                        ; $7dad: $6c
	rst  $38                                         ; $7dae: $ff
	add  [hl]                                        ; $7daf: $86
	or   $57                                         ; $7db0: $f6 $57
	add  a                                           ; $7db2: $87
	ld   [de], a                                     ; $7db3: $12
	adc  d                                           ; $7db4: $8a
	adc  c                                           ; $7db5: $89
	ld   a, b                                        ; $7db6: $78
	add  h                                           ; $7db7: $84
	sbc  a                                           ; $7db8: $9f
	ld   a, [$57cc]                                  ; $7db9: $fa $cc $57
	add  $36                                         ; $7dbc: $c6 $36
	ld   d, l                                        ; $7dbe: $55
	ld   l, b                                        ; $7dbf: $68
	or   l                                           ; $7dc0: $b5
	jr   jr_0d0_7e2a                                 ; $7dc1: $18 $67

	call c, Call_0d0_48fa                            ; $7dc3: $dc $fa $48
	ld   d, a                                        ; $7dc6: $57
	ld   b, [hl]                                     ; $7dc7: $46
	add  [hl]                                        ; $7dc8: $86
	ld   l, c                                        ; $7dc9: $69
	ret                                              ; $7dca: $c9


	sub  l                                           ; $7dcb: $95
	dec  h                                           ; $7dcc: $25
	ld   a, h                                        ; $7dcd: $7c
	rst  $28                                         ; $7dce: $ef
	add  a                                           ; $7dcf: $87
	add  a                                           ; $7dd0: $87
	sub  a                                           ; $7dd1: $97
	call z, $9c32                                    ; $7dd2: $cc $32 $9c
	ld   h, l                                        ; $7dd5: $65
	ld   h, h                                        ; $7dd6: $64
	jr   z, jr_0d0_7d72                              ; $7dd7: $28 $99

	ret  z                                           ; $7dd9: $c8

	xor  c                                           ; $7dda: $a9
	ld   a, c                                        ; $7ddb: $79
	db   $db                                         ; $7ddc: $db
	ld   b, l                                        ; $7ddd: $45
	scf                                              ; $7dde: $37
	sub  [hl]                                        ; $7ddf: $96
	xor  b                                           ; $7de0: $a8
	add  h                                           ; $7de1: $84
	dec  hl                                          ; $7de2: $2b
	ret  c                                           ; $7de3: $d8

	ld   l, l                                        ; $7de4: $6d
	or   l                                           ; $7de5: $b5
	xor  b                                           ; $7de6: $a8
	and  a                                           ; $7de7: $a7
	ld   a, d                                        ; $7de8: $7a
	jr   c, jr_0d0_7d73                              ; $7de9: $38 $88

	add  l                                           ; $7deb: $85
	sub  a                                           ; $7dec: $97
	ld   b, a                                        ; $7ded: $47
	xor  b                                           ; $7dee: $a8
	ld   d, [hl]                                     ; $7def: $56
	cp   e                                           ; $7df0: $bb
	ld   l, l                                        ; $7df1: $6d
	jp   hl                                          ; $7df2: $e9


	ld   d, a                                        ; $7df3: $57
	sub  h                                           ; $7df4: $94
	ld   l, c                                        ; $7df5: $69
	xor  b                                           ; $7df6: $a8
	ld   [hl], l                                     ; $7df7: $75
	ld   [hl], l                                     ; $7df8: $75
	dec  sp                                          ; $7df9: $3b
	and  [hl]                                        ; $7dfa: $a6
	sbc  h                                           ; $7dfb: $9c
	or   [hl]                                        ; $7dfc: $b6
	xor  b                                           ; $7dfd: $a8
	and  [hl]                                        ; $7dfe: $a6
	ld   e, e                                        ; $7dff: $5b
	xor  c                                           ; $7e00: $a9
	ld   a, c                                        ; $7e01: $79
	halt                                             ; $7e02: $76
	xor  b                                           ; $7e03: $a8
	ld   [hl], l                                     ; $7e04: $75
	ld   d, a                                        ; $7e05: $57
	add  [hl]                                        ; $7e06: $86
	sbc  h                                           ; $7e07: $9c
	ld   a, d                                        ; $7e08: $7a
	ld   l, b                                        ; $7e09: $68
	rst  ToBoot                                         ; $7e0a: $c7
	adc  b                                           ; $7e0b: $88
	adc  c                                           ; $7e0c: $89
	ld   d, a                                        ; $7e0d: $57
	ld   l, b                                        ; $7e0e: $68
	add  a                                           ; $7e0f: $87
	and  e                                           ; $7e10: $a3
	ld   l, d                                        ; $7e11: $6a
	ld   l, c                                        ; $7e12: $69
	sbc  c                                           ; $7e13: $99
	xor  b                                           ; $7e14: $a8
	sbc  c                                           ; $7e15: $99
	cp   d                                           ; $7e16: $ba
	ld   d, l                                        ; $7e17: $55
	ld   [hl], a                                     ; $7e18: $77
	xor  b                                           ; $7e19: $a8
	xor  d                                           ; $7e1a: $aa
	ld   d, a                                        ; $7e1b: $57
	ld   h, [hl]                                     ; $7e1c: $66
	halt                                             ; $7e1d: $76
	halt                                             ; $7e1e: $76
	sbc  d                                           ; $7e1f: $9a
	xor  e                                           ; $7e20: $ab
	ld   a, b                                        ; $7e21: $78
	halt                                             ; $7e22: $76
	sub  a                                           ; $7e23: $97
	and  a                                           ; $7e24: $a7
	ld   e, b                                        ; $7e25: $58
	ld   l, b                                        ; $7e26: $68
	ld   h, [hl]                                     ; $7e27: $66
	sub  [hl]                                        ; $7e28: $96
	adc  b                                           ; $7e29: $88

jr_0d0_7e2a:
	adc  d                                           ; $7e2a: $8a
	add  a                                           ; $7e2b: $87
	sbc  c                                           ; $7e2c: $99
	sbc  e                                           ; $7e2d: $9b
	cp   b                                           ; $7e2e: $b8
	ld   a, b                                        ; $7e2f: $78
	adc  b                                           ; $7e30: $88
	ld   a, c                                        ; $7e31: $79
	sbc  b                                           ; $7e32: $98
	ld   h, [hl]                                     ; $7e33: $66
	sub  [hl]                                        ; $7e34: $96
	ld   a, b                                        ; $7e35: $78
	ld   a, d                                        ; $7e36: $7a
	sbc  c                                           ; $7e37: $99
	sbc  b                                           ; $7e38: $98
	sbc  b                                           ; $7e39: $98
	ld   a, c                                        ; $7e3a: $79
	ld   a, b                                        ; $7e3b: $78
	ld   [hl], a                                     ; $7e3c: $77
	sbc  c                                           ; $7e3d: $99
	sbc  b                                           ; $7e3e: $98
	ld   h, a                                        ; $7e3f: $67
	ld   a, b                                        ; $7e40: $78
	adc  b                                           ; $7e41: $88
	sbc  d                                           ; $7e42: $9a
	ld   [hl], a                                     ; $7e43: $77
	adc  b                                           ; $7e44: $88
	ld   h, [hl]                                     ; $7e45: $66
	sbc  b                                           ; $7e46: $98
	xor  c                                           ; $7e47: $a9
	sub  a                                           ; $7e48: $97
	ld   a, c                                        ; $7e49: $79
	ld   [hl], a                                     ; $7e4a: $77
	sub  a                                           ; $7e4b: $97
	halt                                             ; $7e4c: $76
	adc  c                                           ; $7e4d: $89
	sbc  c                                           ; $7e4e: $99
	ld   a, b                                        ; $7e4f: $78
	adc  b                                           ; $7e50: $88
	sbc  b                                           ; $7e51: $98
	add  a                                           ; $7e52: $87
	add  a                                           ; $7e53: $87
	adc  c                                           ; $7e54: $89
	adc  b                                           ; $7e55: $88
	adc  b                                           ; $7e56: $88
	ld   [hl], a                                     ; $7e57: $77
	adc  c                                           ; $7e58: $89
	xor  b                                           ; $7e59: $a8
	sub  a                                           ; $7e5a: $97
	ld   a, b                                        ; $7e5b: $78
	add  a                                           ; $7e5c: $87
	ld   a, c                                        ; $7e5d: $79
	adc  b                                           ; $7e5e: $88
	sbc  d                                           ; $7e5f: $9a
	add  a                                           ; $7e60: $87
	halt                                             ; $7e61: $76
	ld   a, b                                        ; $7e62: $78
	adc  b                                           ; $7e63: $88
	adc  c                                           ; $7e64: $89
	add  a                                           ; $7e65: $87
	ld   [hl], a                                     ; $7e66: $77
	adc  b                                           ; $7e67: $88
	sbc  c                                           ; $7e68: $99
	sbc  c                                           ; $7e69: $99
	ld   a, b                                        ; $7e6a: $78
	add  a                                           ; $7e6b: $87
	ld   [hl], a                                     ; $7e6c: $77
	adc  b                                           ; $7e6d: $88
	adc  c                                           ; $7e6e: $89
	add  a                                           ; $7e6f: $87
	ld   h, a                                        ; $7e70: $67
	adc  b                                           ; $7e71: $88
	adc  b                                           ; $7e72: $88
	sbc  c                                           ; $7e73: $99
	ld   [hl], a                                     ; $7e74: $77
	add  a                                           ; $7e75: $87
	ld   a, b                                        ; $7e76: $78
	adc  b                                           ; $7e77: $88
	adc  b                                           ; $7e78: $88
	sub  a                                           ; $7e79: $97
	add  a                                           ; $7e7a: $87
	ld   a, b                                        ; $7e7b: $78
	adc  c                                           ; $7e7c: $89
	adc  c                                           ; $7e7d: $89
	sbc  b                                           ; $7e7e: $98
	adc  c                                           ; $7e7f: $89
	add  a                                           ; $7e80: $87
	sbc  b                                           ; $7e81: $98
	adc  c                                           ; $7e82: $89
	sbc  c                                           ; $7e83: $99
	add  a                                           ; $7e84: $87
	adc  b                                           ; $7e85: $88
	adc  c                                           ; $7e86: $89
	sbc  b                                           ; $7e87: $98
	adc  b                                           ; $7e88: $88
	add  a                                           ; $7e89: $87
	ld   a, b                                        ; $7e8a: $78
	adc  b                                           ; $7e8b: $88
	sbc  c                                           ; $7e8c: $99
	sbc  b                                           ; $7e8d: $98
	adc  b                                           ; $7e8e: $88
	adc  b                                           ; $7e8f: $88
	adc  c                                           ; $7e90: $89
	sbc  b                                           ; $7e91: $98
	adc  b                                           ; $7e92: $88
	adc  b                                           ; $7e93: $88
	adc  b                                           ; $7e94: $88
	sbc  b                                           ; $7e95: $98
	adc  b                                           ; $7e96: $88
	sbc  b                                           ; $7e97: $98
	adc  b                                           ; $7e98: $88
	adc  b                                           ; $7e99: $88
	adc  b                                           ; $7e9a: $88
	adc  b                                           ; $7e9b: $88
	adc  b                                           ; $7e9c: $88
	adc  b                                           ; $7e9d: $88
	adc  b                                           ; $7e9e: $88
	adc  b                                           ; $7e9f: $88
	adc  b                                           ; $7ea0: $88
	adc  b                                           ; $7ea1: $88
	adc  b                                           ; $7ea2: $88
	adc  b                                           ; $7ea3: $88
	adc  b                                           ; $7ea4: $88
	adc  b                                           ; $7ea5: $88
	adc  b                                           ; $7ea6: $88
	adc  b                                           ; $7ea7: $88
	adc  b                                           ; $7ea8: $88
	adc  b                                           ; $7ea9: $88
	adc  b                                           ; $7eaa: $88
	adc  b                                           ; $7eab: $88
	adc  b                                           ; $7eac: $88
	adc  b                                           ; $7ead: $88
	adc  b                                           ; $7eae: $88
	adc  b                                           ; $7eaf: $88
	adc  b                                           ; $7eb0: $88
	adc  b                                           ; $7eb1: $88
	adc  b                                           ; $7eb2: $88
	adc  b                                           ; $7eb3: $88
	add  c                                           ; $7eb4: $81
	ld   de, $1111                                   ; $7eb5: $11 $11 $11
	ld   de, $1111                                   ; $7eb8: $11 $11 $11
	ld   de, $1111                                   ; $7ebb: $11 $11 $11
	ld   de, $1111                                   ; $7ebe: $11 $11 $11
	ld   de, $1111                                   ; $7ec1: $11 $11 $11
	ld   de, $1111                                   ; $7ec4: $11 $11 $11
	ld   de, $1111                                   ; $7ec7: $11 $11 $11
	nop                                              ; $7eca: $00
	ld   c, b                                        ; $7ecb: $48
	ld   de, $1111                                   ; $7ecc: $11 $11 $11
	ld   de, $1111                                   ; $7ecf: $11 $11 $11
	ld   de, $1111                                   ; $7ed2: $11 $11 $11
	ld   de, $5413                                   ; $7ed5: $11 $13 $54
	ld   d, h                                        ; $7ed8: $54
	ld   d, h                                        ; $7ed9: $54
	ld   b, c                                        ; $7eda: $41
	rra                                              ; $7edb: $1f
	rst  $38                                         ; $7edc: $ff
	pop  af                                          ; $7edd: $f1
	ld   de, $1311                                   ; $7ede: $11 $11 $13
	or   c                                           ; $7ee1: $b1
	ld   de, $d11c                                   ; $7ee2: $11 $1c $d1
	db   $ec                                         ; $7ee5: $ec
	pop  de                                          ; $7ee6: $d1
	pop  hl                                          ; $7ee7: $e1
	ld   de, $1111                                   ; $7ee8: $11 $11 $11
	ld   de, $1111                                   ; $7eeb: $11 $11 $11
	ld   de, $1111                                   ; $7eee: $11 $11 $11
	ld   de, $1111                                   ; $7ef1: $11 $11 $11
	ld   de, $5411                                   ; $7ef4: $11 $11 $54
	ld   b, h                                        ; $7ef7: $44
	or   e                                           ; $7ef8: $b3
	ld   de, $5454                                   ; $7ef9: $11 $54 $54
	ld   h, a                                        ; $7efc: $67
	ld   [hl], d                                     ; $7efd: $72
	ld   de, $1111                                   ; $7efe: $11 $11 $11
	ld   de, $1112                                   ; $7f01: $11 $12 $11
	ld   [de], a                                     ; $7f04: $12
	ld   de, $1111                                   ; $7f05: $11 $11 $11
	ld   h, [hl]                                     ; $7f08: $66
	halt                                             ; $7f09: $76
	sub  e                                           ; $7f0a: $93
	ld   de, $8888                                   ; $7f0b: $11 $88 $88
	sbc  c                                           ; $7f0e: $99
	call z, Call_0d0_64ab                            ; $7f0f: $cc $ab $64
	ld   d, c                                        ; $7f12: $51
	ld   d, d                                        ; $7f13: $52
	ld   [hl+], a                                    ; $7f14: $22
	ld   l, a                                        ; $7f15: $6f
	rst  $38                                         ; $7f16: $ff
	ld   b, c                                        ; $7f17: $41
	dec  d                                           ; $7f18: $15
	rst  JumpTable                                         ; $7f19: $df
	db   $db                                         ; $7f1a: $db
	add  [hl]                                        ; $7f1b: $86
	and  [hl]                                        ; $7f1c: $a6
	ld   d, a                                        ; $7f1d: $57
	sbc  a                                           ; $7f1e: $9f
	db   $fd                                         ; $7f1f: $fd
	ld   [hl], c                                     ; $7f20: $71
	ld   de, $ff1d                                   ; $7f21: $11 $1d $ff
	rst  $30                                         ; $7f24: $f7
	ld   de, $ef14                                   ; $7f25: $11 $14 $ef
	rst  $38                                         ; $7f28: $ff
	rst  $30                                         ; $7f29: $f7
	ld   de, rAUD1ENV                                   ; $7f2a: $11 $12 $ff
	cp   $84                                         ; $7f2d: $fe $84
	inc  h                                           ; $7f2f: $24
	ld   hl, $2413                                   ; $7f30: $21 $13 $24
	sbc  h                                           ; $7f33: $9c
	cp   a                                           ; $7f34: $bf
	rst  $30                                         ; $7f35: $f7
	ld   b, c                                        ; $7f36: $41
	ld   a, [de]                                     ; $7f37: $1a
	rst  $38                                         ; $7f38: $ff
	db   $fc                                         ; $7f39: $fc
	and  h                                           ; $7f3a: $a4
	dec  [hl]                                        ; $7f3b: $35
	scf                                              ; $7f3c: $37
	db   $ed                                         ; $7f3d: $ed
	and  c                                           ; $7f3e: $a1
	ld   de, $ff2f                                   ; $7f3f: $11 $2f $ff
	add  c                                           ; $7f42: $81
	ld   de, $ffaf                                   ; $7f43: $11 $af $ff
	rst  $38                                         ; $7f46: $ff
	add  c                                           ; $7f47: $81
	ld   de, $ff5f                                   ; $7f48: $11 $5f $ff
	pop  af                                          ; $7f4b: $f1
	ld   de, $1f11                                   ; $7f4c: $11 $11 $1f
	rst  $38                                         ; $7f4f: $ff
	pop  af                                          ; $7f50: $f1
	ld   de, $ff1a                                   ; $7f51: $11 $1a $ff
	rst  $38                                         ; $7f54: $ff
	rst  ToBoot                                         ; $7f55: $c7
	ld   de, $ff17                                   ; $7f56: $11 $17 $ff
	ld   sp, hl                                      ; $7f59: $f9
	ld   de, $1f11                                   ; $7f5a: $11 $11 $1f
	rst  $38                                         ; $7f5d: $ff
	pop  af                                          ; $7f5e: $f1
	ld   de, $ff1f                                   ; $7f5f: $11 $1f $ff
	rst  $38                                         ; $7f62: $ff
	ld   [hl], c                                     ; $7f63: $71
	ld   de, $ff1f                                   ; $7f64: $11 $1f $ff
	pop  af                                          ; $7f67: $f1
	ld   de, rAUD1LEN                                   ; $7f68: $11 $11 $ff
	rst  $38                                         ; $7f6b: $ff
	ld   de, rAUD1LEN                                   ; $7f6c: $11 $11 $ff
	rst  $38                                         ; $7f6f: $ff
	ei                                               ; $7f70: $fb
	ld   de, rAUD1LEN                                   ; $7f71: $11 $11 $ff
	rst  $38                                         ; $7f74: $ff
	ld   sp, $1f11                                   ; $7f75: $31 $11 $1f
	rst  $38                                         ; $7f78: $ff
	pop  af                                          ; $7f79: $f1
	ld   de, $ff19                                   ; $7f7a: $11 $19 $ff
	rst  $38                                         ; $7f7d: $ff
	pop  af                                          ; $7f7e: $f1
	ld   de, $ff17                                   ; $7f7f: $11 $17 $ff
	push af                                          ; $7f82: $f5
	ld   de, rAUD1LEN                                   ; $7f83: $11 $11 $ff
	rst  $38                                         ; $7f86: $ff
	ld   de, rAUD1LEN                                   ; $7f87: $11 $11 $ff
	rst  $38                                         ; $7f8a: $ff
	ei                                               ; $7f8b: $fb
	ld   de, rAUD1LEN                                   ; $7f8c: $11 $11 $ff
	rst  $38                                         ; $7f8f: $ff
	ld   de, rAUD1LEN                                   ; $7f90: $11 $11 $ff
	rst  $38                                         ; $7f93: $ff
	ld   de, $af11                                   ; $7f94: $11 $11 $af
	rst  $38                                         ; $7f97: $ff
	rst  $38                                         ; $7f98: $ff
	ld   de, $bf11                                   ; $7f99: $11 $11 $bf
	rst  $38                                         ; $7f9c: $ff
	ld   de, $1f11                                   ; $7f9d: $11 $11 $1f
	rst  $38                                         ; $7fa0: $ff
	pop  af                                          ; $7fa1: $f1
	ld   de, $ff1f                                   ; $7fa2: $11 $1f $ff
	rst  $38                                         ; $7fa5: $ff
	and  c                                           ; $7fa6: $a1
	ld   de, $ff1f                                   ; $7fa7: $11 $1f $ff
	pop  af                                          ; $7faa: $f1
	ld   de, $ff1f                                   ; $7fab: $11 $1f $ff
	pop  af                                          ; $7fae: $f1
	ld   de, $ff18                                   ; $7faf: $11 $18 $ff
	rst  $38                                         ; $7fb2: $ff
	pop  af                                          ; $7fb3: $f1
	ld   de, $ff1a                                   ; $7fb4: $11 $1a $ff
	db   $f4                                         ; $7fb7: $f4
	ld   de, rAUD1LEN                                   ; $7fb8: $11 $11 $ff
	rst  $38                                         ; $7fbb: $ff
	ld   de, rAUD1LEN                                   ; $7fbc: $11 $11 $ff
	rst  $38                                         ; $7fbf: $ff
	rst  $38                                         ; $7fc0: $ff
	ld   de, rAUD1LEN                                   ; $7fc1: $11 $11 $ff
	rst  $38                                         ; $7fc4: $ff
	ld   de, $5f11                                   ; $7fc5: $11 $11 $5f
	rst  $38                                         ; $7fc8: $ff
	pop  af                                          ; $7fc9: $f1
	ld   de, $ff1f                                   ; $7fca: $11 $1f $ff
	rst  $38                                         ; $7fcd: $ff
	and  c                                           ; $7fce: $a1
	ld   de, $ff1f                                   ; $7fcf: $11 $1f $ff
	pop  af                                          ; $7fd2: $f1
	ld   de, $ff1f                                   ; $7fd3: $11 $1f $ff
	pop  af                                          ; $7fd6: $f1
	ld   de, rAUD1LOW                                   ; $7fd7: $11 $13 $ff
	rst  $38                                         ; $7fda: $ff
	push af                                          ; $7fdb: $f5
	ld   de, $ff16                                   ; $7fdc: $11 $16 $ff
	ei                                               ; $7fdf: $fb
	ld   de, rAUD1LEN                                   ; $7fe0: $11 $11 $ff
	rst  $38                                         ; $7fe3: $ff
	ld   de, $1f11                                   ; $7fe4: $11 $11 $1f
	rst  $38                                         ; $7fe7: $ff
	rst  $38                                         ; $7fe8: $ff
	ld   hl, $bf11                                   ; $7fe9: $21 $11 $bf
	rst  $38                                         ; $7fec: $ff
	sub  c                                           ; $7fed: $91
	ld   de, $ff1f                                   ; $7fee: $11 $1f $ff
	ld   hl, sp+$11                                  ; $7ff1: $f8 $11
	ld   de, $ffff                                   ; $7ff3: $11 $ff $ff
	or   $11                                         ; $7ff6: $f6 $11
	ld   d, $ff                                      ; $7ff8: $16 $ff
	db   $fd                                         ; $7ffa: $fd
	ld   de, $1f11                                   ; $7ffb: $11 $11 $1f
	rst  $38                                         ; $7ffe: $ff
	pop  af                                          ; $7fff: $f1
