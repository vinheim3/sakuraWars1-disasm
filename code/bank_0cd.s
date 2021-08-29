; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0cd", ROMX[$4000], BANK[$cd]

	rst  $38                                         ; $4000: $ff
	pop  af                                          ; $4001: $f1
	ld   de, $ff1a                                   ; $4002: $11 $1a $ff
	rst  $38                                         ; $4005: $ff
	di                                               ; $4006: $f3
	ld   de, $ff1f                                   ; $4007: $11 $1f $ff
	db   $fd                                         ; $400a: $fd
	add  e                                           ; $400b: $83
	ld   de, $f819                                   ; $400c: $11 $19 $f8
	ld   de, $ffaf                                   ; $400f: $11 $af $ff
	ld   de, $a11f                                   ; $4012: $11 $1f $a1
	ld   c, a                                        ; $4015: $4f
	rst  $38                                         ; $4016: $ff
	ld   de, $fa12                                   ; $4017: $11 $12 $fa
	ld   a, a                                        ; $401a: $7f
	rst  $38                                         ; $401b: $ff
	or   c                                           ; $401c: $b1
	ld   de, $fe8f                                   ; $401d: $11 $8f $fe
	rst  $38                                         ; $4020: $ff
	pop  de                                          ; $4021: $d1
	ld   de, $ff5f                                   ; $4022: $11 $5f $ff
	call nc, $1511                                   ; $4025: $d4 $11 $15
	xor  a                                           ; $4028: $af
	db   $fc                                         ; $4029: $fc
	ld   de, rAUD1LEN                                   ; $402a: $11 $11 $ff
	rst  $38                                         ; $402d: $ff
	ld   de, $1116                                   ; $402e: $11 $16 $11
	rst  $38                                         ; $4031: $ff
	rst  $38                                         ; $4032: $ff
	ld   de, $6211                                   ; $4033: $11 $11 $62
	rst  $28                                         ; $4036: $ef
	rst  $38                                         ; $4037: $ff
	ld   d, c                                        ; $4038: $51
	ld   de, $df6c                                   ; $4039: $11 $6c $df
	rst  $38                                         ; $403c: $ff
	sub  c                                           ; $403d: $91
	ld   de, $ff7f                                   ; $403e: $11 $7f $ff
	rst  $38                                         ; $4041: $ff
	sub  c                                           ; $4042: $91
	ld   de, $ff7f                                   ; $4043: $11 $7f $ff
	ld   d, c                                        ; $4046: $51
	ld   de, $ff1f                                   ; $4047: $11 $1f $ff
	pop  de                                          ; $404a: $d1
	ld   de, $1f51                                   ; $404b: $11 $51 $1f
	rst  $38                                         ; $404e: $ff
	pop  af                                          ; $404f: $f1
	ld   de, $8f39                                   ; $4050: $11 $39 $8f
	rst  $38                                         ; $4053: $ff
	di                                               ; $4054: $f3
	ld   de, $ff19                                   ; $4055: $11 $19 $ff
	rst  $38                                         ; $4058: $ff
	rst  $30                                         ; $4059: $f7
	ld   de, $ff16                                   ; $405a: $11 $16 $ff
	rst  $38                                         ; $405d: $ff
	push af                                          ; $405e: $f5
	ld   de, $ff2b                                   ; $405f: $11 $2b $ff
	ei                                               ; $4062: $fb
	ld   d, c                                        ; $4063: $51
	ld   de, rAUD1LEN                                   ; $4064: $11 $11 $ff
	rst  $38                                         ; $4067: $ff
	ld   de, $2115                                   ; $4068: $11 $15 $21
	rst  $38                                         ; $406b: $ff
	rst  $38                                         ; $406c: $ff
	ld   de, $ef11                                   ; $406d: $11 $11 $ef
	rst  $38                                         ; $4070: $ff
	rst  $38                                         ; $4071: $ff
	ld   h, c                                        ; $4072: $61
	ld   de, $ff6f                                   ; $4073: $11 $6f $ff
	rst  $38                                         ; $4076: $ff
	sub  c                                           ; $4077: $91
	ld   de, $ff0f                                   ; $4078: $11 $0f $ff
	rst  $38                                         ; $407b: $ff
	add  c                                           ; $407c: $81
	ld   de, $ff7f                                   ; $407d: $11 $7f $ff
	or   c                                           ; $4080: $b1
	ld   de, $1111                                   ; $4081: $11 $11 $11
	rra                                              ; $4084: $1f
	rst  $38                                         ; $4085: $ff
	ld   hl, $f611                                   ; $4086: $21 $11 $f6
	sbc  a                                           ; $4089: $9f
	rst  $38                                         ; $408a: $ff
	and  c                                           ; $408b: $a1
	ld   de, $ff8f                                   ; $408c: $11 $8f $ff
	rst  $38                                         ; $408f: $ff
	pop  bc                                          ; $4090: $c1
	ld   de, $ff1f                                   ; $4091: $11 $1f $ff
	db   $fc                                         ; $4094: $fc
	ld   h, c                                        ; $4095: $61
	ld   de, $ff1b                                   ; $4096: $11 $1b $ff
	ei                                               ; $4099: $fb
	ld   sp, $6b14                                   ; $409a: $31 $14 $6b
	rst  $38                                         ; $409d: $ff
	db   $fd                                         ; $409e: $fd
	ld   de, $cd14                                   ; $409f: $11 $14 $cd
	ld   h, c                                        ; $40a2: $61
	ld   de, $f6ff                                   ; $40a3: $11 $ff $f6
	ld   de, $415f                                   ; $40a6: $11 $5f $41
	rst  $28                                         ; $40a9: $ef
	cp   $11                                         ; $40aa: $fe $11
	jr   @+$01                                       ; $40ac: $18 $ff

	rst  $38                                         ; $40ae: $ff
	db   $dd                                         ; $40af: $dd
	ld   b, c                                        ; $40b0: $41
	ld   de, $ffef                                   ; $40b1: $11 $ef $ff
	add  l                                           ; $40b4: $85
	ld   sp, $9f11                                   ; $40b5: $31 $11 $9f
	rst  $38                                         ; $40b8: $ff
	add  d                                           ; $40b9: $82
	ld   [de], a                                     ; $40ba: $12
	ld   a, d                                        ; $40bb: $7a
	sbc  l                                           ; $40bc: $9d
	rst  $38                                         ; $40bd: $ff
	rst  $30                                         ; $40be: $f7
	ld   de, $eb4a                                   ; $40bf: $11 $4a $eb
	ld   [hl], e                                     ; $40c2: $73
	ld   de, rAUD1LEN                                   ; $40c3: $11 $11 $ff
	rst  $30                                         ; $40c6: $f7
	ld   de, $143c                                   ; $40c7: $11 $3c $14
	rst  $38                                         ; $40ca: $ff
	cp   $11                                         ; $40cb: $fe $11
	add  hl, de                                      ; $40cd: $19
	rst  $38                                         ; $40ce: $ff
	rst  $38                                         ; $40cf: $ff
	db   $eb                                         ; $40d0: $eb
	ld   hl, $df11                                   ; $40d1: $21 $11 $df
	rst  $38                                         ; $40d4: $ff
	sub  l                                           ; $40d5: $95
	ld   hl, $8f11                                   ; $40d6: $21 $11 $8f
	rst  $38                                         ; $40d9: $ff
	sub  d                                           ; $40da: $92
	ld   de, $cf36                                   ; $40db: $11 $36 $cf
	rst  $38                                         ; $40de: $ff
	and  e                                           ; $40df: $a3
	dec  h                                           ; $40e0: $25
	cp   e                                           ; $40e1: $bb
	xor  h                                           ; $40e2: $ac
	cp   b                                           ; $40e3: $b8
	ld   b, c                                        ; $40e4: $41
	ld   de, rAUD1LEN                                   ; $40e5: $11 $11 $ff
	rst  $38                                         ; $40e8: $ff
	ld   de, $c91b                                   ; $40e9: $11 $1b $c9
	rst  $38                                         ; $40ec: $ff
	rst  $38                                         ; $40ed: $ff
	ld   sp, rAUD1LEN                                   ; $40ee: $31 $11 $ff
	rst  $38                                         ; $40f1: $ff
	reti                                             ; $40f2: $d9


	ld   b, c                                        ; $40f3: $41
	ld   de, $ff7f                                   ; $40f4: $11 $7f $ff
	or   e                                           ; $40f7: $b3
	ld   de, $7e13                                   ; $40f8: $11 $13 $7e
	rst  $38                                         ; $40fb: $ff
	call nc, $2711                                   ; $40fc: $d4 $11 $27
	cp   l                                           ; $40ff: $bd
	rst  $38                                         ; $4100: $ff
	or   $11                                         ; $4101: $f6 $11
	inc  a                                           ; $4103: $3c
	rst  $38                                         ; $4104: $ff
	ld   a, [$1161]                                  ; $4105: $fa $61 $11
	ld   [hl+], a                                    ; $4108: $22
	ld   de, $ff1f                                   ; $4109: $11 $1f $ff
	ld   b, c                                        ; $410c: $41
	ld   de, $9eff                                   ; $410d: $11 $ff $9e
	rst  $38                                         ; $4110: $ff
	pop  bc                                          ; $4111: $c1
	ld   de, $ff5f                                   ; $4112: $11 $5f $ff
	rst  $20                                         ; $4115: $e7
	ld   b, c                                        ; $4116: $41
	ld   de, $ff1e                                   ; $4117: $11 $1e $ff
	or   $11                                         ; $411a: $f6 $11
	inc  d                                           ; $411c: $14
	ld   a, h                                        ; $411d: $7c
	rst  $38                                         ; $411e: $ff
	ld   hl, sp+$11                                  ; $411f: $f8 $11
	inc  d                                           ; $4121: $14
	cp   a                                           ; $4122: $bf
	rst  $38                                         ; $4123: $ff
	res  2, h                                        ; $4124: $cb $94
	dec  d                                           ; $4126: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4127: $cf
	cp   $62                                         ; $4128: $fe $62
	inc  h                                           ; $412a: $24
	ld   h, a                                        ; $412b: $67
	ld   [hl], h                                     ; $412c: $74
	ld   de, $ff1f                                   ; $412d: $11 $1f $ff
	pop  af                                          ; $4130: $f1
	ld   de, $7bbf                                   ; $4131: $11 $bf $7b
	rst  $38                                         ; $4134: $ff
	or   $11                                         ; $4135: $f6 $11
	rra                                              ; $4137: $1f
	rst  $38                                         ; $4138: $ff
	ld   sp, hl                                      ; $4139: $f9
	ld   d, e                                        ; $413a: $53
	ld   de, $ff16                                   ; $413b: $11 $16 $ff
	ei                                               ; $413e: $fb
	ld   sp, $6913                                   ; $413f: $31 $13 $69
	rst  JumpTable                                         ; $4142: $df
	db   $fc                                         ; $4143: $fc
	ld   d, c                                        ; $4144: $51
	ld   [de], a                                     ; $4145: $12
	sbc  h                                           ; $4146: $9c
	db   $ed                                         ; $4147: $ed
	jp   c, $4498                                    ; $4148: $da $98 $44

	ld   a, l                                        ; $414b: $7d
	rst  $38                                         ; $414c: $ff
	push bc                                          ; $414d: $c5
	inc  hl                                          ; $414e: $23
	ld   d, a                                        ; $414f: $57
	add  [hl]                                        ; $4150: $86
	ld   sp, rAUD1LEN                                   ; $4151: $31 $11 $ff
	rst  $38                                         ; $4154: $ff
	ld   de, $ea17                                   ; $4155: $11 $17 $ea
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4158: $cf
	cp   $61                                         ; $4159: $fe $61
	ld   de, $ffdf                                   ; $415b: $11 $df $ff
	sub  h                                           ; $415e: $94
	ld   sp, $6f11                                   ; $415f: $31 $11 $6f
	rst  $38                                         ; $4162: $ff
	jp   $3711                                       ; $4163: $c3 $11 $37


	xor  [hl]                                        ; $4166: $ae
	rst  $38                                         ; $4167: $ff
	push de                                          ; $4168: $d5
	ld   de, $df28                                   ; $4169: $11 $28 $df
	db   $eb                                         ; $416c: $eb
	sub  [hl]                                        ; $416d: $96
	ld   e, b                                        ; $416e: $58
	sbc  c                                           ; $416f: $99
	adc  $fc                                         ; $4170: $ce $fc
	sub  h                                           ; $4172: $94
	inc  de                                          ; $4173: $13
	ld   a, d                                        ; $4174: $7a
	and  a                                           ; $4175: $a7
	ld   de, rAUD1LEN                                   ; $4176: $11 $11 $ff
	cp   $11                                         ; $4179: $fe $11
	inc  e                                           ; $417b: $1c
	ret                                              ; $417c: $c9


	rst  JumpTable                                         ; $417d: $df
	cp   $41                                         ; $417e: $fe $41
	ld   de, $ffff                                   ; $4180: $11 $ff $ff
	add  h                                           ; $4183: $84
	ld   hl, $7f11                                   ; $4184: $21 $11 $7f
	rst  $38                                         ; $4187: $ff
	or   d                                           ; $4188: $b2
	ld   de, $be48                                   ; $4189: $11 $48 $be
	rst  $38                                         ; $418c: $ff
	or   l                                           ; $418d: $b5
	ld   de, $ef28                                   ; $418e: $11 $28 $ef
	db   $db                                         ; $4191: $db
	add  l                                           ; $4192: $85
	ld   [hl-], a                                    ; $4193: $32
	ld   c, b                                        ; $4194: $48
	rst  $28                                         ; $4195: $ef
	rst  $38                                         ; $4196: $ff

Call_0cd_4197:
	ld   [hl], d                                     ; $4197: $72
	inc  d                                           ; $4198: $14
	adc  d                                           ; $4199: $8a
	cp   e                                           ; $419a: $bb
	xor  c                                           ; $419b: $a9
	ld   b, c                                        ; $419c: $41
	ld   de, $ff1f                                   ; $419d: $11 $1f $ff
	pop  af                                          ; $41a0: $f1
	ld   de, $ad3e                                   ; $41a1: $11 $3e $ad
	rst  $38                                         ; $41a4: $ff
	ld   hl, sp+$11                                  ; $41a5: $f8 $11
	add  hl, de                                      ; $41a7: $19
	rst  $38                                         ; $41a8: $ff
	db   $fd                                         ; $41a9: $fd
	ld   d, d                                        ; $41aa: $52
	ld   de, $ef14                                   ; $41ab: $11 $14 $ef
	cp   $51                                         ; $41ae: $fe $51
	ld   de, $ef7a                                   ; $41b0: $11 $7a $ef
	cp   $81                                         ; $41b3: $fe $81
	ld   de, $ff6c                                   ; $41b5: $11 $6c $ff
	jp   z, $2274                                    ; $41b8: $ca $74 $22

	ld   e, d                                        ; $41bb: $5a
	rst  $28                                         ; $41bc: $ef
	db   $db                                         ; $41bd: $db
	add  [hl]                                        ; $41be: $86
	ld   h, [hl]                                     ; $41bf: $66
	adc  e                                           ; $41c0: $8b
	sbc  $a6                                         ; $41c1: $de $a6
	ld   [hl-], a                                    ; $41c3: $32
	inc  [hl]                                        ; $41c4: $34
	ld   hl, rAUD1ENV                                   ; $41c5: $21 $12 $ff
	push af                                          ; $41c8: $f5
	ld   de, $fc1f                                   ; $41c9: $11 $1f $fc
	rst  JumpTable                                         ; $41cc: $df
	db   $fc                                         ; $41cd: $fc
	ld   hl, rAUD1ENV                                   ; $41ce: $21 $12 $ff
	cp   $31                                         ; $41d1: $fe $31
	inc  de                                          ; $41d3: $13
	inc  hl                                          ; $41d4: $23
	cp   a                                           ; $41d5: $bf
	rst  $38                                         ; $41d6: $ff
	add  c                                           ; $41d7: $81
	ld   de, $ee7c                                   ; $41d8: $11 $7c $ee
	db   $ed                                         ; $41db: $ed
	and  e                                           ; $41dc: $a3
	ld   de, $ff4b                                   ; $41dd: $11 $4b $ff
	ret  z                                           ; $41e0: $c8

	ld   h, h                                        ; $41e1: $64
	inc  sp                                          ; $41e2: $33
	ld   e, b                                        ; $41e3: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41e4: $cf
	reti                                             ; $41e5: $d9


	ld   d, e                                        ; $41e6: $53
	ld   b, a                                        ; $41e7: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41e8: $cf
	db   $fc                                         ; $41e9: $fc
	and  a                                           ; $41ea: $a7
	ld   b, e                                        ; $41eb: $43
	ld   b, l                                        ; $41ec: $45
	adc  e                                           ; $41ed: $8b
	sub  e                                           ; $41ee: $93
	ld   de, $ff1f                                   ; $41ef: $11 $1f $ff
	pop  bc                                          ; $41f2: $c1
	ld   de, $aacd                                   ; $41f3: $11 $cd $aa
	rst  $28                                         ; $41f6: $ef
	and  $11                                         ; $41f7: $e6 $11
	ld   e, $ff                                      ; $41f9: $1e $ff
	rst  $30                                         ; $41fb: $f7
	inc  sp                                          ; $41fc: $33
	ld   b, e                                        ; $41fd: $43
	ld   d, $ef                                      ; $41fe: $16 $ef
	db   $fc                                         ; $4200: $fc
	ld   sp, $9b15                                   ; $4201: $31 $15 $9b
	call Call_0cd_72cb                               ; $4204: $cd $cb $72
	ld   de, $ec7c                                   ; $4207: $11 $7c $ec
	and  a                                           ; $420a: $a7
	ld   h, l                                        ; $420b: $65
	ld   b, h                                        ; $420c: $44
	ld   l, c                                        ; $420d: $69
	rst  JumpTable                                         ; $420e: $df
	or   a                                           ; $420f: $b7
	ld   b, h                                        ; $4210: $44
	ld   e, b                                        ; $4211: $58

jr_0cd_4212:
	rst  $28                                         ; $4212: $ef
	db   $fc                                         ; $4213: $fc
	add  h                                           ; $4214: $84
	inc  [hl]                                        ; $4215: $34
	ld   a, b                                        ; $4216: $78
	xor  e                                           ; $4217: $ab
	add  e                                           ; $4218: $83
	ld   de, $ff18                                   ; $4219: $11 $18 $ff
	db   $f4                                         ; $421c: $f4
	ld   de, $ba1e                                   ; $421d: $11 $1e $ba
	rst  JumpTable                                         ; $4220: $df
	db   $fc                                         ; $4221: $fc
	ld   hl, rAUD1HIGH                                   ; $4222: $21 $14 $ff
	cp   $53                                         ; $4225: $fe $53
	inc  sp                                          ; $4227: $33
	ld   de, $ff9f                                   ; $4228: $11 $9f $ff
	and  c                                           ; $422b: $a1
	ld   de, $ac69                                   ; $422c: $11 $69 $ac
	call z, $11b6                                    ; $422f: $cc $b6 $11
	jr   c, jr_0cd_4212                              ; $4232: $38 $de

	ret                                              ; $4234: $c9


	add  [hl]                                        ; $4235: $86
	ld   d, h                                        ; $4236: $54
	ld   b, [hl]                                     ; $4237: $46
	cp   l                                           ; $4238: $bd
	db   $eb                                         ; $4239: $eb
	ld   a, b                                        ; $423a: $78
	xor  c                                           ; $423b: $a9
	xor  b                                           ; $423c: $a8
	adc  d                                           ; $423d: $8a
	db   $db                                         ; $423e: $db
	ld   h, d                                        ; $423f: $62
	inc  [hl]                                        ; $4240: $34
	halt                                             ; $4241: $76
	ld   de, $ff1f                                   ; $4242: $11 $1f $ff
	pop  af                                          ; $4245: $f1
	ld   de, $ccbf                                   ; $4246: $11 $bf $cc
	sbc  $fa                                         ; $4249: $de $fa
	ld   de, $ff1b                                   ; $424b: $11 $1b $ff
	ld   sp, hl                                      ; $424e: $f9
	ld   [de], a                                     ; $424f: $12
	ld   b, h                                        ; $4250: $44
	inc  h                                           ; $4251: $24
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4252: $cf
	rst  $38                                         ; $4253: $ff
	ld   [hl], c                                     ; $4254: $71
	ld   [de], a                                     ; $4255: $12
	sbc  h                                           ; $4256: $9c
	call c, $95dc                                    ; $4257: $dc $dc $95
	ld   de, $ef4a                                   ; $425a: $11 $4a $ef
	ret                                              ; $425d: $c9


	ld   h, l                                        ; $425e: $65
	ld   b, h                                        ; $425f: $44
	ld   d, a                                        ; $4260: $57
	cp   [hl]                                        ; $4261: $be
	db   $ed                                         ; $4262: $ed
	rst  ToBoot                                         ; $4263: $c7
	ld   d, l                                        ; $4264: $55
	ld   l, c                                        ; $4265: $69
	call Call_0cd_53b8                               ; $4266: $cd $b8 $53
	ld   [hl+], a                                    ; $4269: $22
	ld   de, $ff19                                   ; $426a: $11 $19 $ff
	di                                               ; $426d: $f3
	ld   de, $fd1f                                   ; $426e: $11 $1f $fd
	xor  $ff                                         ; $4271: $ee $ff
	ld   sp, rAUD1LEN                                   ; $4273: $31 $11 $ff
	rst  $38                                         ; $4276: $ff
	ld   d, c                                        ; $4277: $51
	inc  sp                                          ; $4278: $33
	ld   de, $ff6f                                   ; $4279: $11 $6f $ff
	di                                               ; $427c: $f3
	ld   de, $cc38                                   ; $427d: $11 $38 $cc
	db   $dd                                         ; $4280: $dd
	reti                                             ; $4281: $d9


	ld   hl, $bf15                                   ; $4282: $21 $15 $bf
	db   $fd                                         ; $4285: $fd
	sub  a                                           ; $4286: $97
	ld   d, h                                        ; $4287: $54
	inc  [hl]                                        ; $4288: $34
	adc  h                                           ; $4289: $8c
	xor  $ed                                         ; $428a: $ee $ed
	sub  [hl]                                        ; $428c: $96
	ld   b, l                                        ; $428d: $45
	adc  h                                           ; $428e: $8c
	ld   [$2174], a                                  ; $428f: $ea $74 $21
	ld   de, $ff19                                   ; $4292: $11 $19 $ff
	push af                                          ; $4295: $f5
	ld   de, $cc1d                                   ; $4296: $11 $1d $cc
	cp   $ff                                         ; $4299: $fe $ff
	ld   b, c                                        ; $429b: $41
	ld   de, $ffdf                                   ; $429c: $11 $df $ff
	ld   [hl], h                                     ; $429f: $74
	ld   b, e                                        ; $42a0: $43
	ld   de, $ff4b                                   ; $42a1: $11 $4b $ff
	or   $11                                         ; $42a4: $f6 $11
	ld   d, $9c                                      ; $42a6: $16 $9c
	rst  JumpTable                                         ; $42a8: $df
	db   $fc                                         ; $42a9: $fc
	ld   d, c                                        ; $42aa: $51
	ld   [de], a                                     ; $42ab: $12
	ld   a, h                                        ; $42ac: $7c
	xor  $ca                                         ; $42ad: $ee $ca
	ld   [hl], h                                     ; $42af: $74
	ld   [hl+], a                                    ; $42b0: $22
	ld   e, d                                        ; $42b1: $5a
	rst  $28                                         ; $42b2: $ef
	reti                                             ; $42b3: $d9


	sbc  d                                           ; $42b4: $9a
	sub  [hl]                                        ; $42b5: $96
	ld   d, a                                        ; $42b6: $57
	cp   [hl]                                        ; $42b7: $be
	rst  $10                                         ; $42b8: $d7
	ld   [hl-], a                                    ; $42b9: $32
	inc  hl                                          ; $42ba: $23

jr_0cd_42bb:
	ld   hl, $ff18                                   ; $42bb: $21 $18 $ff
	db   $f4                                         ; $42be: $f4
	ld   de, $ed1e                                   ; $42bf: $11 $1e $ed
	db   $ed                                         ; $42c2: $ed
	rst  $38                                         ; $42c3: $ff
	ld   d, c                                        ; $42c4: $51
	ld   de, $ffdf                                   ; $42c5: $11 $df $ff
	ld   [hl], h                                     ; $42c8: $74
	ld   d, e                                        ; $42c9: $53
	ld   de, $ff29                                   ; $42ca: $11 $29 $ff
	rst  $30                                         ; $42cd: $f7
	ld   de, $8a16                                   ; $42ce: $11 $16 $8a
	cp   l                                           ; $42d1: $bd
	db   $fd                                         ; $42d2: $fd
	ld   [hl], c                                     ; $42d3: $71
	ld   de, $ed6c                                   ; $42d4: $11 $6c $ed
	jp   z, $3285                                    ; $42d7: $ca $85 $32

	jr   c, jr_0cd_42bb                              ; $42da: $38 $df

	ei                                               ; $42dc: $fb
	xor  c                                           ; $42dd: $a9
	add  a                                           ; $42de: $87
	ld   l, b                                        ; $42df: $68
	xor  l                                           ; $42e0: $ad
	ret  z                                           ; $42e1: $c8

	ld   [hl-], a                                    ; $42e2: $32
	ld   [de], a                                     ; $42e3: $12
	ld   de, $ff1c                                   ; $42e4: $11 $1c $ff
	ldh  a, [c]                                      ; $42e7: $f2
	ld   de, $cd1d                                   ; $42e8: $11 $1d $cd
	call z, Call_0cd_51ff                            ; $42eb: $cc $ff $51
	ld   de, $ffcf                                   ; $42ee: $11 $cf $ff
	ld   [hl], l                                     ; $42f1: $75
	ld   d, h                                        ; $42f2: $54
	ld   hl, $ff19                                   ; $42f3: $21 $19 $ff
	ld   hl, sp+$21                                  ; $42f6: $f8 $21
	dec  d                                           ; $42f8: $15
	ld   a, b                                        ; $42f9: $78
	xor  h                                           ; $42fa: $ac
	db   $fd                                         ; $42fb: $fd
	sub  e                                           ; $42fc: $93
	ld   de, $dd5b                                   ; $42fd: $11 $5b $dd
	cp   e                                           ; $4300: $bb
	sub  a                                           ; $4301: $97
	ld   b, d                                        ; $4302: $42
	ld   [hl], $ae                                   ; $4303: $36 $ae
	call c, Call_0cd_7a86                            ; $4305: $dc $86 $7a
	cp   d                                           ; $4308: $ba
	sbc  c                                           ; $4309: $99
	xor  e                                           ; $430a: $ab
	sub  l                                           ; $430b: $95
	inc  sp                                          ; $430c: $33
	ld   b, h                                        ; $430d: $44
	ld   hl, $ff1e                                   ; $430e: $21 $1e $ff
	pop  af                                          ; $4311: $f1
	ld   de, $cc3d                                   ; $4312: $11 $3d $cc
	xor  e                                           ; $4315: $ab
	rst  $38                                         ; $4316: $ff
	ld   b, c                                        ; $4317: $41
	ld   de, $fecf                                   ; $4318: $11 $cf $fe
	ld   h, [hl]                                     ; $431b: $66
	halt                                             ; $431c: $76
	ld   sp, $ff17                                   ; $431d: $31 $17 $ff
	ld   sp, hl                                      ; $4320: $f9
	ld   b, c                                        ; $4321: $41
	ld   [hl], $67                                   ; $4322: $36 $67
	sbc  e                                           ; $4324: $9b
	db   $fd                                         ; $4325: $fd
	and  l                                           ; $4326: $a5
	ld   de, $bb59                                   ; $4327: $11 $59 $bb
	cp   h                                           ; $432a: $bc
	xor  b                                           ; $432b: $a8
	ld   h, e                                        ; $432c: $63
	dec  [hl]                                        ; $432d: $35
	sbc  h                                           ; $432e: $9c
	call c, $65a7                                    ; $432f: $dc $a7 $65
	ld   d, a                                        ; $4332: $57
	rst  JumpTable                                         ; $4333: $df
	db   $fd                                         ; $4334: $fd
	sub  [hl]                                        ; $4335: $96
	ld   d, l                                        ; $4336: $55
	ld   b, h                                        ; $4337: $44
	ld   d, l                                        ; $4338: $55
	ld   b, c                                        ; $4339: $41
	jr   @+$01                                       ; $433a: $18 $ff

	push af                                          ; $433c: $f5
	ld   de, $bb3c                                   ; $433d: $11 $3c $bb
	sbc  b                                           ; $4340: $98
	rst  $38                                         ; $4341: $ff
	add  c                                           ; $4342: $81
	ld   de, $ff9f                                   ; $4343: $11 $9f $ff
	ld   [hl], a                                     ; $4346: $77
	ld   [hl], a                                     ; $4347: $77
	ld   h, d                                        ; $4348: $62
	dec  d                                           ; $4349: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $434a: $cf
	ei                                               ; $434b: $fb
	ld   h, d                                        ; $434c: $62
	ld   [hl], $66                                   ; $434d: $36 $66
	ld   a, d                                        ; $434f: $7a
	xor  $d7                                         ; $4350: $ee $d7
	ld   hl, $ab47                                   ; $4352: $21 $47 $ab
	xor  d                                           ; $4355: $aa
	xor  e                                           ; $4356: $ab
	sub  l                                           ; $4357: $95
	inc  [hl]                                        ; $4358: $34
	ld   a, d                                        ; $4359: $7a
	cp   h                                           ; $435a: $bc
	xor  b                                           ; $435b: $a8
	add  a                                           ; $435c: $87
	ld   h, [hl]                                     ; $435d: $66
	ld   l, b                                        ; $435e: $68
	rst  $28                                         ; $435f: $ef
	db   $fc                                         ; $4360: $fc
	add  l                                           ; $4361: $85
	ld   b, l                                        ; $4362: $45
	ld   h, [hl]                                     ; $4363: $66
	ld   [hl], a                                     ; $4364: $77
	ld   h, d                                        ; $4365: $62
	ld   de, $ffcf                                   ; $4366: $11 $cf $ff
	ld   sp, $b917                                   ; $4369: $31 $17 $b9
	add  [hl]                                        ; $436c: $86
	xor  a                                           ; $436d: $af
	ld   sp, hl                                      ; $436e: $f9
	ld   de, $ff19                                   ; $436f: $11 $19 $ff
	or   a                                           ; $4372: $b7
	adc  d                                           ; $4373: $8a
	and  a                                           ; $4374: $a7
	ld   de, $fe4c                                   ; $4375: $11 $4c $fe
	and  [hl]                                        ; $4378: $a6
	ld   b, [hl]                                     ; $4379: $46
	halt                                             ; $437a: $76
	ld   d, l                                        ; $437b: $55
	adc  l                                           ; $437c: $8d
	db   $fd                                         ; $437d: $fd
	add  h                                           ; $437e: $84
	dec  [hl]                                        ; $437f: $35
	ld   a, c                                        ; $4380: $79
	sbc  c                                           ; $4381: $99
	xor  h                                           ; $4382: $ac
	cp   c                                           ; $4383: $b9
	ld   h, h                                        ; $4384: $64
	ld   b, [hl]                                     ; $4385: $46
	sbc  d                                           ; $4386: $9a
	xor  d                                           ; $4387: $aa
	sbc  c                                           ; $4388: $99
	sub  a                                           ; $4389: $97
	ld   h, a                                        ; $438a: $67
	cp   [hl]                                        ; $438b: $be
	call c, Call_0cd_7798                            ; $438c: $dc $98 $77
	ld   d, e                                        ; $438f: $53
	ld   b, h                                        ; $4390: $44
	ld   b, c                                        ; $4391: $41
	inc  d                                           ; $4392: $14
	rst  $38                                         ; $4393: $ff
	ld   a, [$1a11]                                  ; $4394: $fa $11 $1a

Jump_0cd_4397:
	jp   z, $df98                                    ; $4397: $ca $98 $df

	push de                                          ; $439a: $d5
	ld   de, $ff4c                                   ; $439b: $11 $4c $ff
	sbc  b                                           ; $439e: $98
	sbc  d                                           ; $439f: $9a
	sub  h                                           ; $43a0: $94
	ld   de, $ff6e                                   ; $43a1: $11 $6e $ff
	and  l                                           ; $43a4: $a5
	ld   d, a                                        ; $43a5: $57
	ld   h, l                                        ; $43a6: $65
	ld   d, l                                        ; $43a7: $55
	xor  [hl]                                        ; $43a8: $ae
	db   $fc                                         ; $43a9: $fc
	ld   [hl], h                                     ; $43aa: $74
	ld   b, l                                        ; $43ab: $45
	ld   a, b                                        ; $43ac: $78
	ld   a, c                                        ; $43ad: $79
	cp   h                                           ; $43ae: $bc
	jp   z, Jump_0cd_4664                            ; $43af: $ca $64 $46

	adc  d                                           ; $43b2: $8a
	xor  d                                           ; $43b3: $aa
	xor  d                                           ; $43b4: $aa
	sbc  b                                           ; $43b5: $98
	ld   h, [hl]                                     ; $43b6: $66
	cp   l                                           ; $43b7: $bd
	call c, $7697                                    ; $43b8: $dc $97 $76
	ld   b, e                                        ; $43bb: $43
	inc  sp                                          ; $43bc: $33
	ld   hl, $ff1c                                   ; $43bd: $21 $1c $ff
	push af                                          ; $43c0: $f5
	ld   de, $aa3a                                   ; $43c1: $11 $3a $aa
	adc  c                                           ; $43c4: $89
	rst  $38                                         ; $43c5: $ff
	and  e                                           ; $43c6: $a3
	ld   de, $fe6d                                   ; $43c7: $11 $6d $fe
	sbc  c                                           ; $43ca: $99
	xor  d                                           ; $43cb: $aa
	add  d                                           ; $43cc: $82
	ld   [de], a                                     ; $43cd: $12
	ld   a, a                                        ; $43ce: $7f
	db   $fd                                         ; $43cf: $fd
	sub  [hl]                                        ; $43d0: $96
	ld   h, a                                        ; $43d1: $67
	ld   h, l                                        ; $43d2: $65
	dec  [hl]                                        ; $43d3: $35
	xor  l                                           ; $43d4: $ad
	db   $ec                                         ; $43d5: $ec
	add  l                                           ; $43d6: $85
	ld   d, l                                        ; $43d7: $55
	halt                                             ; $43d8: $76
	ld   a, b                                        ; $43d9: $78
	xor  h                                           ; $43da: $ac
	jp   c, Jump_0cd_5675                            ; $43db: $da $75 $56

	ld   a, c                                        ; $43de: $79
	sbc  c                                           ; $43df: $99
	xor  e                                           ; $43e0: $ab
	xor  c                                           ; $43e1: $a9
	halt                                             ; $43e2: $76
	sbc  e                                           ; $43e3: $9b
	res  5, b                                        ; $43e4: $cb $a8
	add  a                                           ; $43e6: $87
	ld   d, e                                        ; $43e7: $53
	inc  sp                                          ; $43e8: $33
	ld   hl, $ff1b                                   ; $43e9: $21 $1b $ff
	or   $11                                         ; $43ec: $f6 $11
	add  hl, hl                                      ; $43ee: $29
	adc  b                                           ; $43ef: $88
	ld   a, c                                        ; $43f0: $79
	rst  $38                                         ; $43f1: $ff
	sub  $11                                         ; $43f2: $d6 $11
	ld   c, c                                        ; $43f4: $49
	db   $ed                                         ; $43f5: $ed
	sbc  d                                           ; $43f6: $9a
	cp   h                                           ; $43f7: $bc
	and  h                                           ; $43f8: $a4
	ld   de, $fe4c                                   ; $43f9: $11 $4c $fe
	xor  b                                           ; $43fc: $a8
	adc  b                                           ; $43fd: $88
	ld   [hl], l                                     ; $43fe: $75
	inc  sp                                          ; $43ff: $33
	ld   l, d                                        ; $4400: $6a
	sbc  $a7                                         ; $4401: $de $a7
	ld   h, [hl]                                     ; $4403: $66
	ld   h, [hl]                                     ; $4404: $66
	ld   d, [hl]                                     ; $4405: $56
	adc  e                                           ; $4406: $8b
	call z, Call_0cd_55a7                            ; $4407: $cc $a7 $55
	ld   h, a                                        ; $440a: $67
	ld   a, b                                        ; $440b: $78
	sbc  e                                           ; $440c: $9b
	res  2, a                                        ; $440d: $cb $97
	adc  c                                           ; $440f: $89
	xor  e                                           ; $4410: $ab
	xor  d                                           ; $4411: $aa
	sbc  c                                           ; $4412: $99
	add  l                                           ; $4413: $85
	ld   [hl-], a                                    ; $4414: $32
	ld   de, rAUD1LEN                                   ; $4415: $11 $11 $ff
	rst  $38                                         ; $4418: $ff
	ld   b, c                                        ; $4419: $41
	inc  d                                           ; $441a: $14
	add  a                                           ; $441b: $87
	ld   h, a                                        ; $441c: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $441d: $cf
	db   $fc                                         ; $441e: $fc
	ld   b, c                                        ; $441f: $41
	inc  d                                           ; $4420: $14
	sbc  l                                           ; $4421: $9d
	cp   c                                           ; $4422: $b9
	xor  h                                           ; $4423: $ac
	jp   c, $1541                                    ; $4424: $da $41 $15

	xor  h                                           ; $4427: $ac
	db   $db                                         ; $4428: $db
	sbc  c                                           ; $4429: $99
	xor  b                                           ; $442a: $a8
	ld   h, e                                        ; $442b: $63
	dec  [hl]                                        ; $442c: $35
	sbc  h                                           ; $442d: $9c
	res  0, a                                        ; $442e: $cb $87
	ld   [hl], a                                     ; $4430: $77
	ld   h, l                                        ; $4431: $65
	ld   d, a                                        ; $4432: $57
	xor  h                                           ; $4433: $ac
	db   $db                                         ; $4434: $db
	sub  a                                           ; $4435: $97
	ld   h, [hl]                                     ; $4436: $66
	ld   [hl], a                                     ; $4437: $77
	ld   a, b                                        ; $4438: $78
	xor  e                                           ; $4439: $ab
	jp   z, $bb99                                    ; $443a: $ca $99 $bb

	cp   c                                           ; $443d: $b9
	ld   [hl], a                                     ; $443e: $77
	ld   [hl], a                                     ; $443f: $77
	ld   h, h                                        ; $4440: $64
	ld   de, $df11                                   ; $4441: $11 $11 $df
	rst  $38                                         ; $4444: $ff
	ld   h, c                                        ; $4445: $61
	ld   d, $86                                      ; $4446: $16 $86
	ld   b, h                                        ; $4448: $44
	sbc  a                                           ; $4449: $9f
	rst  $38                                         ; $444a: $ff
	ld   [hl], c                                     ; $444b: $71
	inc  d                                           ; $444c: $14
	adc  e                                           ; $444d: $8b
	sub  a                                           ; $444e: $97
	adc  h                                           ; $444f: $8c
	db   $ec                                         ; $4450: $ec
	add  e                                           ; $4451: $83
	inc  de                                          ; $4452: $13
	ld   a, d                                        ; $4453: $7a
	cp   c                                           ; $4454: $b9
	adc  d                                           ; $4455: $8a
	cp   e                                           ; $4456: $bb
	sub  h                                           ; $4457: $94
	inc  [hl]                                        ; $4458: $34
	ld   a, d                                        ; $4459: $7a
	jp   z, $8998                                    ; $445a: $ca $98 $89

	add  [hl]                                        ; $445d: $86
	ld   b, l                                        ; $445e: $45
	ld   a, c                                        ; $445f: $79
	res  3, c                                        ; $4460: $cb $99
	ld   a, b                                        ; $4462: $78
	add  a                                           ; $4463: $87
	ld   h, [hl]                                     ; $4464: $66
	ld   a, d                                        ; $4465: $7a
	cp   h                                           ; $4466: $bc
	xor  $b9                                         ; $4467: $ee $b9
	ld   h, [hl]                                     ; $4469: $66
	ld   h, a                                        ; $446a: $67
	ld   [hl], l                                     ; $446b: $75
	ld   d, e                                        ; $446c: $53
	ld   de, $ff1c                                   ; $446d: $11 $1c $ff
	or   $11                                         ; $4470: $f6 $11
	ld   l, b                                        ; $4472: $68
	add  [hl]                                        ; $4473: $86
	ld   b, a                                        ; $4474: $47
	rst  JumpTable                                         ; $4475: $df
	add  sp, $21                                     ; $4476: $e8 $21
	ld   c, c                                        ; $4478: $49
	ret                                              ; $4479: $c9


	ld   [hl], a                                     ; $447a: $77
	xor  h                                           ; $447b: $ac
	jp   c, $3752                                    ; $447c: $da $52 $37

	xor  e                                           ; $447f: $ab
	sbc  b                                           ; $4480: $98
	sbc  c                                           ; $4481: $99
	cp   d                                           ; $4482: $ba
	ld   [hl], h                                     ; $4483: $74
	ld   b, [hl]                                     ; $4484: $46
	sbc  d                                           ; $4485: $9a
	xor  c                                           ; $4486: $a9
	adc  b                                           ; $4487: $88
	sbc  c                                           ; $4488: $99
	add  [hl]                                        ; $4489: $86
	ld   d, [hl]                                     ; $448a: $56
	adc  d                                           ; $448b: $8a
	cp   d                                           ; $448c: $ba
	sbc  b                                           ; $448d: $98
	adc  c                                           ; $448e: $89
	sbc  b                                           ; $448f: $98
	sbc  c                                           ; $4490: $99
	xor  l                                           ; $4491: $ad
	call z, Call_0cd_6697                            ; $4492: $cc $97 $66
	ld   d, h                                        ; $4495: $54
	ld   de, $af11                                   ; $4496: $11 $11 $af
	rst  $38                                         ; $4499: $ff
	or   d                                           ; $449a: $b2
	ld   [de], a                                     ; $449b: $12
	ld   h, [hl]                                     ; $449c: $66
	ld   d, h                                        ; $449d: $54
	ld   l, h                                        ; $449e: $6c
	rst  $38                                         ; $449f: $ff
	call nc, Call_0cd_4a11                           ; $44a0: $d4 $11 $4a
	sbc  b                                           ; $44a3: $98
	ld   a, b                                        ; $44a4: $78
	rst  JumpTable                                         ; $44a5: $df
	reti                                             ; $44a6: $d9


	ld   sp, $9b36                                   ; $44a7: $31 $36 $9b
	xor  d                                           ; $44aa: $aa
	xor  h                                           ; $44ab: $ac
	jp   c, $2553                                    ; $44ac: $da $53 $25

	sbc  d                                           ; $44af: $9a
	xor  d                                           ; $44b0: $aa
	sbc  d                                           ; $44b1: $9a
	xor  d                                           ; $44b2: $aa
	add  l                                           ; $44b3: $85
	ld   b, h                                        ; $44b4: $44
	ld   a, e                                        ; $44b5: $7b
	db   $dd                                         ; $44b6: $dd
	jp   z, $98aa                                    ; $44b7: $ca $aa $98

	ld   h, [hl]                                     ; $44ba: $66
	ld   h, a                                        ; $44bb: $67
	ld   [hl], h                                     ; $44bc: $74
	ld   de, rAUD1HIGH                                   ; $44bd: $11 $14 $ff
	db   $fc                                         ; $44c0: $fc
	ld   b, c                                        ; $44c1: $41
	add  hl, sp                                      ; $44c2: $39
	add  [hl]                                        ; $44c3: $86
	ld   [hl-], a                                    ; $44c4: $32
	ld   a, [hl]                                     ; $44c5: $7e
	rst  $38                                         ; $44c6: $ff
	add  e                                           ; $44c7: $83
	dec  h                                           ; $44c8: $25
	xor  d                                           ; $44c9: $aa
	halt                                             ; $44ca: $76
	ld   e, c                                        ; $44cb: $59
	sbc  $d7                                         ; $44cc: $de $d7
	inc  sp                                          ; $44ce: $33
	ld   e, b                                        ; $44cf: $58
	xor  b                                           ; $44d0: $a8
	ld   [hl], a                                     ; $44d1: $77
	xor  h                                           ; $44d2: $ac
	db   $db                                         ; $44d3: $db
	ld   [hl], h                                     ; $44d4: $74
	ld   b, a                                        ; $44d5: $47
	xor  e                                           ; $44d6: $ab
	xor  c                                           ; $44d7: $a9
	sbc  d                                           ; $44d8: $9a
	call z, Call_0cd_66b8                            ; $44d9: $cc $b8 $66
	adc  c                                           ; $44dc: $89
	sub  a                                           ; $44dd: $97
	ld   sp, $1c11                                   ; $44de: $31 $11 $1c
	rst  $38                                         ; $44e1: $ff
	ld   a, [$5753]                                  ; $44e2: $fa $53 $57
	ld   d, h                                        ; $44e5: $54
	inc  h                                           ; $44e6: $24
	sbc  [hl]                                        ; $44e7: $9e
	db   $fd                                         ; $44e8: $fd
	add  l                                           ; $44e9: $85
	ld   d, [hl]                                     ; $44ea: $56
	add  a                                           ; $44eb: $87
	ld   h, l                                        ; $44ec: $65
	ld   l, d                                        ; $44ed: $6a
	xor  $b7                                         ; $44ee: $ee $b7
	ld   b, h                                        ; $44f0: $44
	ld   h, a                                        ; $44f1: $67
	adc  b                                           ; $44f2: $88
	ld   a, c                                        ; $44f3: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44f4: $cf
	db   $fd                                         ; $44f5: $fd
	sub  a                                           ; $44f6: $97
	ld   l, b                                        ; $44f7: $68
	sbc  d                                           ; $44f8: $9a
	sub  a                                           ; $44f9: $97
	ld   a, b                                        ; $44fa: $78
	ld   [hl], e                                     ; $44fb: $73
	ld   de, $cf11                                   ; $44fc: $11 $11 $cf
	rst  $38                                         ; $44ff: $ff
	sub  h                                           ; $4500: $94
	ld   b, a                                        ; $4501: $47
	sub  [hl]                                        ; $4502: $96
	ld   sp, $ef38                                   ; $4503: $31 $38 $ef
	ret  c                                           ; $4506: $d8

	ld   h, [hl]                                     ; $4507: $66
	ld   a, d                                        ; $4508: $7a
	sub  [hl]                                        ; $4509: $96
	ld   d, l                                        ; $450a: $55
	sbc  l                                           ; $450b: $9d
	db   $ed                                         ; $450c: $ed
	xor  b                                           ; $450d: $a8
	ld   a, b                                        ; $450e: $78
	xor  h                                           ; $450f: $ac
	xor  d                                           ; $4510: $aa
	xor  d                                           ; $4511: $aa
	cp   d                                           ; $4512: $ba
	sub  [hl]                                        ; $4513: $96
	ld   sp, $1111                                   ; $4514: $31 $11 $11
	add  hl, hl                                      ; $4517: $29
	rst  $38                                         ; $4518: $ff
	cp   $95                                         ; $4519: $fe $95
	ld   b, l                                        ; $451b: $45
	ld   d, l                                        ; $451c: $55
	ld   d, l                                        ; $451d: $55
	sbc  h                                           ; $451e: $9c
	db   $dd                                         ; $451f: $dd
	cp   b                                           ; $4520: $b8
	ld   [hl], a                                     ; $4521: $77
	adc  c                                           ; $4522: $89
	sbc  c                                           ; $4523: $99
	sbc  e                                           ; $4524: $9b
	call $99cb                                       ; $4525: $cd $cb $99
	adc  d                                           ; $4528: $8a
	xor  d                                           ; $4529: $aa
	add  [hl]                                        ; $452a: $86
	ld   b, c                                        ; $452b: $41
	ld   de, $4911                                   ; $452c: $11 $11 $49
	rst  $28                                         ; $452f: $ef
	db   $fd                                         ; $4530: $fd
	cp   c                                           ; $4531: $b9
	halt                                             ; $4532: $76
	ld   d, l                                        ; $4533: $55
	ld   d, [hl]                                     ; $4534: $56
	ld   a, d                                        ; $4535: $7a
	cp   e                                           ; $4536: $bb
	call $b9cc                                       ; $4537: $cd $cc $b9
	sbc  d                                           ; $453a: $9a
	xor  e                                           ; $453b: $ab
	res  5, c                                        ; $453c: $cb $a9
	add  a                                           ; $453e: $87
	halt                                             ; $453f: $76
	ld   d, e                                        ; $4540: $53
	ld   de, $1311                                   ; $4541: $11 $11 $13
	ld   l, d                                        ; $4544: $6a
	call $a8fd                                       ; $4545: $cd $fd $a8
	ld   h, l                                        ; $4548: $65
	ld   d, [hl]                                     ; $4549: $56
	adc  b                                           ; $454a: $88
	xor  e                                           ; $454b: $ab
	cp   l                                           ; $454c: $bd
	db   $dd                                         ; $454d: $dd
	jp   z, $aaab                                    ; $454e: $ca $ab $aa

	xor  d                                           ; $4551: $aa
	cp   d                                           ; $4552: $ba
	sub  a                                           ; $4553: $97
	ld   d, e                                        ; $4554: $53
	ld   de, $2222                                   ; $4555: $11 $22 $22
	inc  [hl]                                        ; $4558: $34
	ld   l, c                                        ; $4559: $69
	sbc  $ca                                         ; $455a: $de $ca
	ld   h, l                                        ; $455c: $65
	ld   d, [hl]                                     ; $455d: $56
	adc  c                                           ; $455e: $89
	xor  d                                           ; $455f: $aa
	xor  e                                           ; $4560: $ab
	call z, $bbbb                                    ; $4561: $cc $bb $bb
	cp   e                                           ; $4564: $bb
	cp   d                                           ; $4565: $ba
	sbc  b                                           ; $4566: $98
	add  a                                           ; $4567: $87
	ld   d, l                                        ; $4568: $55
	inc  sp                                          ; $4569: $33
	inc  sp                                          ; $456a: $33
	ld   [hl+], a                                    ; $456b: $22
	inc  hl                                          ; $456c: $23
	ld   b, [hl]                                     ; $456d: $46
	ld   a, b                                        ; $456e: $78
	sbc  c                                           ; $456f: $99
	adc  b                                           ; $4570: $88
	adc  b                                           ; $4571: $88
	sbc  c                                           ; $4572: $99
	xor  d                                           ; $4573: $aa
	xor  e                                           ; $4574: $ab
	xor  e                                           ; $4575: $ab
	cp   h                                           ; $4576: $bc
	call z, $bbcb                                    ; $4577: $cc $cb $bb
	xor  c                                           ; $457a: $a9
	add  a                                           ; $457b: $87
	ld   h, l                                        ; $457c: $65
	ld   d, h                                        ; $457d: $54
	ld   b, h                                        ; $457e: $44
	ld   b, h                                        ; $457f: $44
	inc  sp                                          ; $4580: $33
	inc  [hl]                                        ; $4581: $34
	ld   d, [hl]                                     ; $4582: $56
	ld   [hl], a                                     ; $4583: $77
	ld   [hl], a                                     ; $4584: $77
	adc  b                                           ; $4585: $88
	xor  d                                           ; $4586: $aa
	cp   e                                           ; $4587: $bb
	xor  d                                           ; $4588: $aa
	cp   d                                           ; $4589: $ba
	cp   e                                           ; $458a: $bb
	xor  e                                           ; $458b: $ab
	cp   e                                           ; $458c: $bb
	cp   d                                           ; $458d: $ba
	sbc  c                                           ; $458e: $99
	add  a                                           ; $458f: $87
	ld   [hl], a                                     ; $4590: $77
	ld   h, [hl]                                     ; $4591: $66
	ld   h, l                                        ; $4592: $65
	ld   d, h                                        ; $4593: $54
	ld   b, h                                        ; $4594: $44
	ld   d, l                                        ; $4595: $55

Jump_0cd_4596:
	ld   d, l                                        ; $4596: $55
	ld   h, [hl]                                     ; $4597: $66
	ld   h, a                                        ; $4598: $67
	ld   a, b                                        ; $4599: $78
	sbc  c                                           ; $459a: $99
	xor  d                                           ; $459b: $aa
	xor  d                                           ; $459c: $aa
	xor  d                                           ; $459d: $aa
	xor  d                                           ; $459e: $aa
	cp   d                                           ; $459f: $ba
	cp   d                                           ; $45a0: $ba
	cp   d                                           ; $45a1: $ba
	xor  c                                           ; $45a2: $a9
	sbc  c                                           ; $45a3: $99
	add  a                                           ; $45a4: $87
	ld   [hl], a                                     ; $45a5: $77
	ld   [hl], a                                     ; $45a6: $77
	ld   h, [hl]                                     ; $45a7: $66
	ld   d, l                                        ; $45a8: $55
	ld   d, l                                        ; $45a9: $55
	ld   d, l                                        ; $45aa: $55
	ld   d, [hl]                                     ; $45ab: $56
	ld   h, [hl]                                     ; $45ac: $66
	ld   h, a                                        ; $45ad: $67
	ld   [hl], a                                     ; $45ae: $77
	adc  c                                           ; $45af: $89
	adc  c                                           ; $45b0: $89
	sbc  d                                           ; $45b1: $9a
	xor  d                                           ; $45b2: $aa
	xor  d                                           ; $45b3: $aa
	xor  c                                           ; $45b4: $a9
	xor  c                                           ; $45b5: $a9
	xor  c                                           ; $45b6: $a9
	sbc  c                                           ; $45b7: $99
	sbc  c                                           ; $45b8: $99
	sbc  b                                           ; $45b9: $98
	adc  b                                           ; $45ba: $88
	ld   [hl], a                                     ; $45bb: $77
	ld   [hl], a                                     ; $45bc: $77
	ld   h, [hl]                                     ; $45bd: $66
	ld   h, [hl]                                     ; $45be: $66
	ld   h, [hl]                                     ; $45bf: $66
	ld   h, [hl]                                     ; $45c0: $66
	ld   h, [hl]                                     ; $45c1: $66
	ld   [hl], a                                     ; $45c2: $77
	adc  b                                           ; $45c3: $88
	sbc  b                                           ; $45c4: $98
	sbc  c                                           ; $45c5: $99
	xor  d                                           ; $45c6: $aa
	sbc  d                                           ; $45c7: $9a
	xor  d                                           ; $45c8: $aa
	sbc  d                                           ; $45c9: $9a
	sbc  c                                           ; $45ca: $99
	xor  c                                           ; $45cb: $a9
	sbc  b                                           ; $45cc: $98
	sbc  b                                           ; $45cd: $98
	adc  b                                           ; $45ce: $88
	adc  b                                           ; $45cf: $88
	ld   [hl], a                                     ; $45d0: $77
	ld   [hl], a                                     ; $45d1: $77
	ld   h, [hl]                                     ; $45d2: $66
	ld   h, [hl]                                     ; $45d3: $66
	ld   h, [hl]                                     ; $45d4: $66
	ld   h, [hl]                                     ; $45d5: $66
	ld   h, a                                        ; $45d6: $67
	ld   [hl], a                                     ; $45d7: $77
	ld   a, b                                        ; $45d8: $78
	adc  c                                           ; $45d9: $89
	adc  b                                           ; $45da: $88
	sbc  c                                           ; $45db: $99
	sbc  c                                           ; $45dc: $99
	xor  d                                           ; $45dd: $aa
	xor  d                                           ; $45de: $aa
	xor  d                                           ; $45df: $aa
	sbc  c                                           ; $45e0: $99
	sbc  b                                           ; $45e1: $98
	adc  c                                           ; $45e2: $89
	sbc  b                                           ; $45e3: $98
	adc  b                                           ; $45e4: $88
	add  a                                           ; $45e5: $87
	ld   [hl], a                                     ; $45e6: $77
	ld   [hl], a                                     ; $45e7: $77
	ld   [hl], a                                     ; $45e8: $77
	ld   [hl], a                                     ; $45e9: $77
	ld   [hl], a                                     ; $45ea: $77
	ld   [hl], a                                     ; $45eb: $77
	ld   [hl], a                                     ; $45ec: $77
	ld   [hl], a                                     ; $45ed: $77
	adc  b                                           ; $45ee: $88
	sbc  b                                           ; $45ef: $98
	adc  c                                           ; $45f0: $89
	sbc  c                                           ; $45f1: $99
	sbc  c                                           ; $45f2: $99
	sbc  c                                           ; $45f3: $99
	sbc  c                                           ; $45f4: $99
	sbc  c                                           ; $45f5: $99
	adc  b                                           ; $45f6: $88
	sbc  c                                           ; $45f7: $99
	sbc  b                                           ; $45f8: $98
	adc  b                                           ; $45f9: $88
	adc  b                                           ; $45fa: $88
	add  a                                           ; $45fb: $87
	ld   [hl], a                                     ; $45fc: $77
	ld   [hl], a                                     ; $45fd: $77
	ld   [hl], a                                     ; $45fe: $77
	ld   [hl], a                                     ; $45ff: $77
	ld   [hl], a                                     ; $4600: $77
	ld   [hl], a                                     ; $4601: $77
	ld   a, b                                        ; $4602: $78
	adc  b                                           ; $4603: $88
	adc  b                                           ; $4604: $88
	adc  c                                           ; $4605: $89
	sbc  b                                           ; $4606: $98
	adc  b                                           ; $4607: $88
	adc  b                                           ; $4608: $88
	adc  b                                           ; $4609: $88
	adc  b                                           ; $460a: $88
	adc  b                                           ; $460b: $88
	sbc  c                                           ; $460c: $99
	adc  b                                           ; $460d: $88
	adc  b                                           ; $460e: $88
	adc  b                                           ; $460f: $88
	adc  b                                           ; $4610: $88
	adc  b                                           ; $4611: $88
	ld   [hl], a                                     ; $4612: $77
	ld   [hl], a                                     ; $4613: $77
	ld   [hl], a                                     ; $4614: $77
	ld   [hl], a                                     ; $4615: $77
	ld   [hl], a                                     ; $4616: $77
	ld   a, b                                        ; $4617: $78
	adc  b                                           ; $4618: $88
	adc  b                                           ; $4619: $88
	adc  b                                           ; $461a: $88
	adc  b                                           ; $461b: $88
	sbc  c                                           ; $461c: $99
	sbc  c                                           ; $461d: $99
	adc  c                                           ; $461e: $89
	sbc  c                                           ; $461f: $99
	sbc  c                                           ; $4620: $99
	sbc  c                                           ; $4621: $99
	adc  b                                           ; $4622: $88
	adc  b                                           ; $4623: $88
	adc  b                                           ; $4624: $88
	adc  b                                           ; $4625: $88
	adc  b                                           ; $4626: $88
	adc  b                                           ; $4627: $88
	add  a                                           ; $4628: $87
	ld   a, b                                        ; $4629: $78
	ld   [hl], a                                     ; $462a: $77
	adc  b                                           ; $462b: $88
	adc  b                                           ; $462c: $88
	adc  b                                           ; $462d: $88
	adc  b                                           ; $462e: $88
	adc  b                                           ; $462f: $88
	adc  b                                           ; $4630: $88
	adc  b                                           ; $4631: $88
	adc  b                                           ; $4632: $88
	adc  c                                           ; $4633: $89
	sbc  c                                           ; $4634: $99
	sbc  c                                           ; $4635: $99
	sbc  b                                           ; $4636: $98
	adc  b                                           ; $4637: $88
	adc  b                                           ; $4638: $88
	adc  b                                           ; $4639: $88
	adc  b                                           ; $463a: $88
	adc  b                                           ; $463b: $88
	adc  b                                           ; $463c: $88
	adc  b                                           ; $463d: $88
	adc  b                                           ; $463e: $88
	adc  b                                           ; $463f: $88
	adc  b                                           ; $4640: $88
	adc  b                                           ; $4641: $88
	adc  b                                           ; $4642: $88
	adc  b                                           ; $4643: $88
	adc  b                                           ; $4644: $88
	adc  b                                           ; $4645: $88
	adc  b                                           ; $4646: $88
	adc  b                                           ; $4647: $88
	adc  b                                           ; $4648: $88
	adc  b                                           ; $4649: $88
	adc  b                                           ; $464a: $88
	adc  b                                           ; $464b: $88
	adc  b                                           ; $464c: $88
	adc  b                                           ; $464d: $88
	adc  b                                           ; $464e: $88
	adc  b                                           ; $464f: $88
	adc  b                                           ; $4650: $88
	adc  b                                           ; $4651: $88
	adc  b                                           ; $4652: $88
	adc  b                                           ; $4653: $88
	adc  b                                           ; $4654: $88
	adc  b                                           ; $4655: $88
	adc  b                                           ; $4656: $88
	adc  b                                           ; $4657: $88
	adc  b                                           ; $4658: $88
	adc  b                                           ; $4659: $88
	adc  b                                           ; $465a: $88
	adc  b                                           ; $465b: $88
	adc  b                                           ; $465c: $88
	adc  b                                           ; $465d: $88
	adc  b                                           ; $465e: $88
	adc  b                                           ; $465f: $88
	adc  b                                           ; $4660: $88
	adc  b                                           ; $4661: $88
	adc  b                                           ; $4662: $88
	adc  b                                           ; $4663: $88

Jump_0cd_4664:
	adc  b                                           ; $4664: $88
	adc  b                                           ; $4665: $88
	adc  b                                           ; $4666: $88
	adc  b                                           ; $4667: $88
	adc  b                                           ; $4668: $88
	adc  b                                           ; $4669: $88
	adc  b                                           ; $466a: $88
	adc  b                                           ; $466b: $88
	adc  b                                           ; $466c: $88
	adc  b                                           ; $466d: $88
	adc  b                                           ; $466e: $88
	adc  b                                           ; $466f: $88
	adc  b                                           ; $4670: $88
	adc  b                                           ; $4671: $88
	adc  b                                           ; $4672: $88
	adc  b                                           ; $4673: $88

Call_0cd_4674:
	adc  b                                           ; $4674: $88
	adc  b                                           ; $4675: $88
	adc  b                                           ; $4676: $88
	adc  b                                           ; $4677: $88
	adc  b                                           ; $4678: $88
	adc  b                                           ; $4679: $88
	adc  b                                           ; $467a: $88
	adc  b                                           ; $467b: $88
	adc  b                                           ; $467c: $88
	adc  b                                           ; $467d: $88
	adc  b                                           ; $467e: $88
	adc  b                                           ; $467f: $88
	adc  b                                           ; $4680: $88
	adc  b                                           ; $4681: $88
	adc  b                                           ; $4682: $88
	adc  b                                           ; $4683: $88
	adc  b                                           ; $4684: $88
	adc  b                                           ; $4685: $88
	adc  b                                           ; $4686: $88
	adc  b                                           ; $4687: $88
	adc  b                                           ; $4688: $88
	adc  b                                           ; $4689: $88
	adc  b                                           ; $468a: $88
	adc  b                                           ; $468b: $88
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
	adc  b                                           ; $4698: $88
	adc  b                                           ; $4699: $88
	adc  b                                           ; $469a: $88
	adc  b                                           ; $469b: $88
	adc  b                                           ; $469c: $88
	adc  b                                           ; $469d: $88
	adc  b                                           ; $469e: $88
	adc  b                                           ; $469f: $88
	adc  b                                           ; $46a0: $88
	adc  b                                           ; $46a1: $88
	adc  b                                           ; $46a2: $88
	adc  b                                           ; $46a3: $88
	adc  b                                           ; $46a4: $88
	adc  b                                           ; $46a5: $88
	adc  b                                           ; $46a6: $88
	adc  b                                           ; $46a7: $88
	adc  b                                           ; $46a8: $88
	adc  b                                           ; $46a9: $88
	adc  b                                           ; $46aa: $88
	adc  b                                           ; $46ab: $88
	adc  b                                           ; $46ac: $88
	adc  b                                           ; $46ad: $88
	adc  b                                           ; $46ae: $88
	adc  b                                           ; $46af: $88
	adc  b                                           ; $46b0: $88
	adc  b                                           ; $46b1: $88
	adc  b                                           ; $46b2: $88
	adc  b                                           ; $46b3: $88
	adc  b                                           ; $46b4: $88
	adc  b                                           ; $46b5: $88
	adc  b                                           ; $46b6: $88
	adc  b                                           ; $46b7: $88

Call_0cd_46b8:
	adc  b                                           ; $46b8: $88
	adc  b                                           ; $46b9: $88
	adc  b                                           ; $46ba: $88
	adc  b                                           ; $46bb: $88
	adc  b                                           ; $46bc: $88
	adc  b                                           ; $46bd: $88
	adc  b                                           ; $46be: $88
	adc  b                                           ; $46bf: $88
	adc  b                                           ; $46c0: $88
	adc  b                                           ; $46c1: $88
	adc  b                                           ; $46c2: $88
	adc  b                                           ; $46c3: $88
	adc  b                                           ; $46c4: $88
	adc  b                                           ; $46c5: $88
	adc  b                                           ; $46c6: $88
	adc  b                                           ; $46c7: $88
	adc  b                                           ; $46c8: $88
	adc  b                                           ; $46c9: $88
	adc  b                                           ; $46ca: $88
	adc  b                                           ; $46cb: $88
	adc  b                                           ; $46cc: $88
	adc  b                                           ; $46cd: $88
	adc  b                                           ; $46ce: $88
	adc  b                                           ; $46cf: $88
	adc  b                                           ; $46d0: $88
	adc  b                                           ; $46d1: $88
	adc  b                                           ; $46d2: $88
	adc  b                                           ; $46d3: $88
	adc  b                                           ; $46d4: $88
	adc  b                                           ; $46d5: $88
	adc  b                                           ; $46d6: $88
	adc  b                                           ; $46d7: $88
	adc  b                                           ; $46d8: $88
	adc  b                                           ; $46d9: $88
	adc  b                                           ; $46da: $88
	adc  b                                           ; $46db: $88
	adc  b                                           ; $46dc: $88
	adc  b                                           ; $46dd: $88
	adc  b                                           ; $46de: $88
	adc  b                                           ; $46df: $88
	adc  b                                           ; $46e0: $88
	adc  b                                           ; $46e1: $88
	adc  b                                           ; $46e2: $88
	adc  b                                           ; $46e3: $88
	adc  b                                           ; $46e4: $88
	adc  b                                           ; $46e5: $88
	adc  b                                           ; $46e6: $88
	adc  b                                           ; $46e7: $88
	adc  b                                           ; $46e8: $88
	adc  b                                           ; $46e9: $88
	adc  b                                           ; $46ea: $88
	adc  b                                           ; $46eb: $88
	adc  b                                           ; $46ec: $88
	adc  b                                           ; $46ed: $88
	adc  b                                           ; $46ee: $88
	adc  b                                           ; $46ef: $88
	adc  b                                           ; $46f0: $88
	adc  b                                           ; $46f1: $88
	adc  b                                           ; $46f2: $88
	adc  b                                           ; $46f3: $88
	adc  b                                           ; $46f4: $88
	adc  b                                           ; $46f5: $88
	adc  b                                           ; $46f6: $88
	adc  b                                           ; $46f7: $88
	adc  b                                           ; $46f8: $88
	adc  b                                           ; $46f9: $88
	adc  b                                           ; $46fa: $88
	adc  b                                           ; $46fb: $88
	adc  b                                           ; $46fc: $88
	adc  b                                           ; $46fd: $88
	adc  b                                           ; $46fe: $88
	adc  b                                           ; $46ff: $88
	adc  b                                           ; $4700: $88
	adc  b                                           ; $4701: $88
	adc  b                                           ; $4702: $88
	adc  b                                           ; $4703: $88
	adc  b                                           ; $4704: $88
	adc  b                                           ; $4705: $88
	adc  b                                           ; $4706: $88
	adc  b                                           ; $4707: $88
	adc  b                                           ; $4708: $88
	adc  b                                           ; $4709: $88
	adc  b                                           ; $470a: $88
	adc  b                                           ; $470b: $88
	adc  b                                           ; $470c: $88
	adc  b                                           ; $470d: $88
	adc  b                                           ; $470e: $88
	adc  b                                           ; $470f: $88
	adc  b                                           ; $4710: $88
	adc  b                                           ; $4711: $88
	adc  b                                           ; $4712: $88
	adc  b                                           ; $4713: $88
	adc  b                                           ; $4714: $88
	adc  b                                           ; $4715: $88
	adc  b                                           ; $4716: $88
	adc  b                                           ; $4717: $88
	adc  b                                           ; $4718: $88
	adc  b                                           ; $4719: $88
	adc  b                                           ; $471a: $88
	adc  b                                           ; $471b: $88
	adc  b                                           ; $471c: $88
	adc  b                                           ; $471d: $88
	adc  b                                           ; $471e: $88
	adc  b                                           ; $471f: $88
	adc  b                                           ; $4720: $88
	adc  b                                           ; $4721: $88
	adc  b                                           ; $4722: $88
	adc  b                                           ; $4723: $88
	adc  b                                           ; $4724: $88
	adc  b                                           ; $4725: $88
	adc  b                                           ; $4726: $88
	adc  b                                           ; $4727: $88
	adc  b                                           ; $4728: $88
	adc  b                                           ; $4729: $88
	adc  b                                           ; $472a: $88
	adc  b                                           ; $472b: $88
	adc  b                                           ; $472c: $88
	adc  b                                           ; $472d: $88
	adc  b                                           ; $472e: $88
	adc  b                                           ; $472f: $88
	adc  b                                           ; $4730: $88
	adc  b                                           ; $4731: $88
	adc  b                                           ; $4732: $88
	adc  b                                           ; $4733: $88
	adc  b                                           ; $4734: $88
	adc  b                                           ; $4735: $88
	adc  b                                           ; $4736: $88
	adc  b                                           ; $4737: $88
	adc  b                                           ; $4738: $88
	adc  b                                           ; $4739: $88
	adc  b                                           ; $473a: $88
	adc  b                                           ; $473b: $88
	adc  b                                           ; $473c: $88
	adc  b                                           ; $473d: $88
	adc  b                                           ; $473e: $88
	adc  b                                           ; $473f: $88
	adc  b                                           ; $4740: $88
	adc  b                                           ; $4741: $88
	adc  b                                           ; $4742: $88
	adc  b                                           ; $4743: $88
	adc  b                                           ; $4744: $88
	adc  b                                           ; $4745: $88
	adc  b                                           ; $4746: $88
	adc  b                                           ; $4747: $88
	adc  b                                           ; $4748: $88
	adc  b                                           ; $4749: $88
	adc  b                                           ; $474a: $88
	adc  b                                           ; $474b: $88
	adc  b                                           ; $474c: $88
	adc  b                                           ; $474d: $88
	adc  b                                           ; $474e: $88
	adc  b                                           ; $474f: $88
	adc  b                                           ; $4750: $88

Jump_0cd_4751:
	adc  b                                           ; $4751: $88
	adc  b                                           ; $4752: $88
	adc  b                                           ; $4753: $88
	adc  b                                           ; $4754: $88
	adc  b                                           ; $4755: $88
	adc  b                                           ; $4756: $88
	adc  b                                           ; $4757: $88
	adc  b                                           ; $4758: $88
	adc  b                                           ; $4759: $88
	adc  b                                           ; $475a: $88
	adc  b                                           ; $475b: $88
	adc  b                                           ; $475c: $88
	adc  b                                           ; $475d: $88
	adc  b                                           ; $475e: $88
	adc  b                                           ; $475f: $88
	adc  b                                           ; $4760: $88
	adc  b                                           ; $4761: $88
	adc  b                                           ; $4762: $88
	adc  b                                           ; $4763: $88
	adc  b                                           ; $4764: $88
	adc  b                                           ; $4765: $88
	adc  b                                           ; $4766: $88
	adc  b                                           ; $4767: $88
	adc  b                                           ; $4768: $88
	adc  b                                           ; $4769: $88
	adc  b                                           ; $476a: $88
	adc  b                                           ; $476b: $88
	adc  b                                           ; $476c: $88
	adc  b                                           ; $476d: $88
	adc  b                                           ; $476e: $88
	adc  b                                           ; $476f: $88
	adc  b                                           ; $4770: $88
	adc  b                                           ; $4771: $88
	adc  b                                           ; $4772: $88
	adc  b                                           ; $4773: $88
	adc  b                                           ; $4774: $88
	adc  b                                           ; $4775: $88
	adc  b                                           ; $4776: $88
	adc  b                                           ; $4777: $88
	adc  b                                           ; $4778: $88
	adc  b                                           ; $4779: $88
	adc  b                                           ; $477a: $88
	adc  b                                           ; $477b: $88
	adc  b                                           ; $477c: $88
	adc  b                                           ; $477d: $88
	adc  b                                           ; $477e: $88
	adc  b                                           ; $477f: $88
	adc  b                                           ; $4780: $88
	adc  b                                           ; $4781: $88
	adc  b                                           ; $4782: $88
	adc  b                                           ; $4783: $88
	adc  b                                           ; $4784: $88
	adc  b                                           ; $4785: $88
	adc  b                                           ; $4786: $88
	adc  b                                           ; $4787: $88
	adc  b                                           ; $4788: $88
	adc  b                                           ; $4789: $88
	adc  b                                           ; $478a: $88
	adc  b                                           ; $478b: $88
	adc  b                                           ; $478c: $88
	adc  b                                           ; $478d: $88
	adc  b                                           ; $478e: $88
	adc  b                                           ; $478f: $88
	adc  b                                           ; $4790: $88
	adc  b                                           ; $4791: $88
	adc  b                                           ; $4792: $88
	adc  b                                           ; $4793: $88
	adc  b                                           ; $4794: $88
	adc  b                                           ; $4795: $88
	adc  b                                           ; $4796: $88
	adc  b                                           ; $4797: $88
	adc  b                                           ; $4798: $88
	adc  b                                           ; $4799: $88
	adc  b                                           ; $479a: $88
	adc  b                                           ; $479b: $88
	adc  b                                           ; $479c: $88
	adc  b                                           ; $479d: $88
	adc  b                                           ; $479e: $88
	adc  b                                           ; $479f: $88
	adc  b                                           ; $47a0: $88
	adc  b                                           ; $47a1: $88
	adc  b                                           ; $47a2: $88
	adc  b                                           ; $47a3: $88
	adc  b                                           ; $47a4: $88
	adc  b                                           ; $47a5: $88
	adc  b                                           ; $47a6: $88
	adc  b                                           ; $47a7: $88
	adc  b                                           ; $47a8: $88
	adc  b                                           ; $47a9: $88
	adc  b                                           ; $47aa: $88
	adc  b                                           ; $47ab: $88
	adc  b                                           ; $47ac: $88
	adc  b                                           ; $47ad: $88
	adc  b                                           ; $47ae: $88
	adc  b                                           ; $47af: $88
	adc  b                                           ; $47b0: $88
	adc  b                                           ; $47b1: $88
	adc  b                                           ; $47b2: $88
	adc  b                                           ; $47b3: $88
	adc  b                                           ; $47b4: $88
	adc  b                                           ; $47b5: $88
	adc  b                                           ; $47b6: $88
	adc  b                                           ; $47b7: $88
	adc  b                                           ; $47b8: $88
	adc  b                                           ; $47b9: $88
	adc  b                                           ; $47ba: $88
	adc  b                                           ; $47bb: $88
	adc  b                                           ; $47bc: $88
	adc  b                                           ; $47bd: $88
	adc  b                                           ; $47be: $88
	adc  b                                           ; $47bf: $88
	adc  b                                           ; $47c0: $88
	adc  b                                           ; $47c1: $88
	adc  b                                           ; $47c2: $88
	adc  b                                           ; $47c3: $88
	adc  b                                           ; $47c4: $88
	adc  b                                           ; $47c5: $88
	adc  b                                           ; $47c6: $88
	adc  b                                           ; $47c7: $88
	adc  b                                           ; $47c8: $88
	adc  b                                           ; $47c9: $88
	adc  b                                           ; $47ca: $88
	adc  b                                           ; $47cb: $88
	adc  b                                           ; $47cc: $88
	adc  b                                           ; $47cd: $88
	adc  b                                           ; $47ce: $88
	adc  b                                           ; $47cf: $88
	adc  b                                           ; $47d0: $88
	adc  b                                           ; $47d1: $88
	adc  b                                           ; $47d2: $88
	adc  b                                           ; $47d3: $88
	adc  b                                           ; $47d4: $88
	adc  b                                           ; $47d5: $88
	adc  b                                           ; $47d6: $88
	adc  b                                           ; $47d7: $88
	adc  b                                           ; $47d8: $88
	adc  b                                           ; $47d9: $88
	adc  b                                           ; $47da: $88
	adc  b                                           ; $47db: $88
	adc  b                                           ; $47dc: $88
	adc  b                                           ; $47dd: $88
	adc  b                                           ; $47de: $88
	adc  b                                           ; $47df: $88
	adc  b                                           ; $47e0: $88
	adc  b                                           ; $47e1: $88
	adc  b                                           ; $47e2: $88
	adc  b                                           ; $47e3: $88
	adc  b                                           ; $47e4: $88
	adc  b                                           ; $47e5: $88
	adc  b                                           ; $47e6: $88
	adc  b                                           ; $47e7: $88
	adc  b                                           ; $47e8: $88
	adc  b                                           ; $47e9: $88
	adc  b                                           ; $47ea: $88
	adc  b                                           ; $47eb: $88
	adc  b                                           ; $47ec: $88
	adc  b                                           ; $47ed: $88
	adc  b                                           ; $47ee: $88
	adc  b                                           ; $47ef: $88
	adc  b                                           ; $47f0: $88
	adc  b                                           ; $47f1: $88
	adc  b                                           ; $47f2: $88
	adc  b                                           ; $47f3: $88
	adc  b                                           ; $47f4: $88
	adc  b                                           ; $47f5: $88
	adc  b                                           ; $47f6: $88
	adc  b                                           ; $47f7: $88
	adc  b                                           ; $47f8: $88
	adc  b                                           ; $47f9: $88
	adc  b                                           ; $47fa: $88
	adc  b                                           ; $47fb: $88
	adc  b                                           ; $47fc: $88
	adc  b                                           ; $47fd: $88
	adc  b                                           ; $47fe: $88
	adc  b                                           ; $47ff: $88
	adc  b                                           ; $4800: $88
	adc  b                                           ; $4801: $88
	sbc  c                                           ; $4802: $99
	sbc  c                                           ; $4803: $99
	sbc  c                                           ; $4804: $99
	sbc  c                                           ; $4805: $99
	adc  b                                           ; $4806: $88
	adc  b                                           ; $4807: $88
	add  a                                           ; $4808: $87
	ld   [hl], a                                     ; $4809: $77
	ld   [hl], a                                     ; $480a: $77
	ld   [hl], a                                     ; $480b: $77
	ld   [hl], a                                     ; $480c: $77
	ld   [hl], a                                     ; $480d: $77
	ld   [hl], a                                     ; $480e: $77
	adc  b                                           ; $480f: $88
	sbc  b                                           ; $4810: $98
	sbc  c                                           ; $4811: $99
	xor  c                                           ; $4812: $a9
	sbc  d                                           ; $4813: $9a
	xor  c                                           ; $4814: $a9
	sbc  d                                           ; $4815: $9a
	sbc  c                                           ; $4816: $99
	sbc  b                                           ; $4817: $98
	add  a                                           ; $4818: $87
	halt                                             ; $4819: $76
	ld   h, [hl]                                     ; $481a: $66
	ld   d, l                                        ; $481b: $55
	ld   d, l                                        ; $481c: $55
	ld   h, [hl]                                     ; $481d: $66
	ld   h, a                                        ; $481e: $67
	ld   a, b                                        ; $481f: $78
	adc  c                                           ; $4820: $89
	sbc  d                                           ; $4821: $9a
	xor  e                                           ; $4822: $ab
	cp   e                                           ; $4823: $bb
	res  7, e                                        ; $4824: $cb $bb
	cp   c                                           ; $4826: $b9
	sbc  c                                           ; $4827: $99
	ld   [hl], a                                     ; $4828: $77
	ld   h, [hl]                                     ; $4829: $66
	ld   d, l                                        ; $482a: $55
	ld   b, h                                        ; $482b: $44
	ld   b, h                                        ; $482c: $44
	ld   b, l                                        ; $482d: $45
	ld   d, [hl]                                     ; $482e: $56
	ld   [hl], a                                     ; $482f: $77
	sbc  c                                           ; $4830: $99
	sbc  e                                           ; $4831: $9b
	cp   e                                           ; $4832: $bb
	call $ccdd                                       ; $4833: $cd $dd $cc
	cp   e                                           ; $4836: $bb
	xor  c                                           ; $4837: $a9
	add  a                                           ; $4838: $87
	ld   h, l                                        ; $4839: $65
	ld   d, h                                        ; $483a: $54
	inc  sp                                          ; $483b: $33
	inc  sp                                          ; $483c: $33
	inc  sp                                          ; $483d: $33
	ld   b, h                                        ; $483e: $44
	ld   d, [hl]                                     ; $483f: $56
	ld   a, b                                        ; $4840: $78
	sbc  e                                           ; $4841: $9b
	cp   h                                           ; $4842: $bc
	sbc  $ee                                         ; $4843: $de $ee
	db   $ed                                         ; $4845: $ed
	db   $ed                                         ; $4846: $ed
	jp   z, $76a8                                    ; $4847: $ca $a8 $76

	ld   d, h                                        ; $484a: $54
	ld   sp, $1111                                   ; $484b: $31 $11 $11
	ld   [hl+], a                                    ; $484e: $22
	inc  [hl]                                        ; $484f: $34
	ld   h, a                                        ; $4850: $67
	sbc  e                                           ; $4851: $9b
	call $ffde                                       ; $4852: $cd $de $ff
	rst  $38                                         ; $4855: $ff
	rst  $38                                         ; $4856: $ff
	db   $ec                                         ; $4857: $ec
	cp   c                                           ; $4858: $b9
	halt                                             ; $4859: $76
	ld   d, e                                        ; $485a: $53
	ld   hl, $1111                                   ; $485b: $21 $11 $11
	ld   de, $4612                                   ; $485e: $11 $12 $46
	sbc  d                                           ; $4861: $9a
	cp   h                                           ; $4862: $bc
	rst  $28                                         ; $4863: $ef
	rst  $38                                         ; $4864: $ff
	rst  $38                                         ; $4865: $ff
	rst  $38                                         ; $4866: $ff
	rst  $38                                         ; $4867: $ff
	jp   c, Jump_0cd_5396                            ; $4868: $da $96 $53

	ld   hl, $1111                                   ; $486b: $21 $11 $11
	ld   de, $3511                                   ; $486e: $11 $11 $35
	ld   a, c                                        ; $4871: $79
	call z, $ffdf                                    ; $4872: $cc $df $ff
	rst  $38                                         ; $4875: $ff
	rst  $38                                         ; $4876: $ff
	rst  $38                                         ; $4877: $ff
	db   $db                                         ; $4878: $db
	add  [hl]                                        ; $4879: $86
	ld   d, e                                        ; $487a: $53
	ld   hl, $1111                                   ; $487b: $21 $11 $11
	ld   de, $3511                                   ; $487e: $11 $11 $35
	adc  d                                           ; $4881: $8a
	call $ffef                                       ; $4882: $cd $ef $ff

Call_0cd_4885:
	rst  $38                                         ; $4885: $ff
	rst  $38                                         ; $4886: $ff
	cp   $ca                                         ; $4887: $fe $ca
	sub  [hl]                                        ; $4889: $96
	ld   b, e                                        ; $488a: $43
	ld   de, $1111                                   ; $488b: $11 $11 $11
	ld   de, $4612                                   ; $488e: $11 $12 $46
	adc  d                                           ; $4891: $8a
	sbc  $ef                                         ; $4892: $de $ef
	rst  $38                                         ; $4894: $ff
	rst  $38                                         ; $4895: $ff
	rst  $38                                         ; $4896: $ff
	cp   $c9                                         ; $4897: $fe $c9
	ld   [hl], l                                     ; $4899: $75
	ld   [hl-], a                                    ; $489a: $32
	ld   de, $1111                                   ; $489b: $11 $11 $11
	ld   de, $5803                                   ; $489e: $11 $03 $58
	xor  e                                           ; $48a1: $ab
	rst  $28                                         ; $48a2: $ef
	rst  $38                                         ; $48a3: $ff
	rst  $38                                         ; $48a4: $ff
	rst  $38                                         ; $48a5: $ff
	rst  $38                                         ; $48a6: $ff
	db   $fc                                         ; $48a7: $fc
	and  a                                           ; $48a8: $a7
	ld   d, e                                        ; $48a9: $53
	ld   hl, $1111                                   ; $48aa: $21 $11 $11
	ld   de, $2511                                   ; $48ad: $11 $11 $25
	ld   a, d                                        ; $48b0: $7a
	adc  $ff                                         ; $48b1: $ce $ff
	rst  $38                                         ; $48b3: $ff
	rst  $38                                         ; $48b4: $ff
	rst  $38                                         ; $48b5: $ff
	cp   $d9                                         ; $48b6: $fe $d9
	ld   [hl], h                                     ; $48b8: $74
	ld   hl, $1111                                   ; $48b9: $21 $11 $11
	ld   de, $1311                                   ; $48bc: $11 $11 $13
	ld   l, c                                        ; $48bf: $69
	cp   h                                           ; $48c0: $bc
	rst  $38                                         ; $48c1: $ff
	rst  $38                                         ; $48c2: $ff
	rst  $38                                         ; $48c3: $ff
	rst  $38                                         ; $48c4: $ff
	rst  $38                                         ; $48c5: $ff
	db   $eb                                         ; $48c6: $eb
	sub  [hl]                                        ; $48c7: $96
	ld   hl, $1111                                   ; $48c8: $21 $11 $11
	ld   de, $1211                                   ; $48cb: $11 $11 $12
	ld   l, c                                        ; $48ce: $69
	adc  $ff                                         ; $48cf: $ce $ff
	rst  $38                                         ; $48d1: $ff
	rst  $38                                         ; $48d2: $ff
	rst  $38                                         ; $48d3: $ff
	rst  $38                                         ; $48d4: $ff
	jp   c, $1173                                    ; $48d5: $da $73 $11

	ld   de, $1111                                   ; $48d8: $11 $11 $11
	ld   de, $9c25                                   ; $48db: $11 $25 $9c
	rst  $38                                         ; $48de: $ff
	rst  $38                                         ; $48df: $ff
	rst  $38                                         ; $48e0: $ff
	rst  $38                                         ; $48e1: $ff
	rst  $38                                         ; $48e2: $ff
	db   $ec                                         ; $48e3: $ec
	sub  l                                           ; $48e4: $95
	ld   hl, $1111                                   ; $48e5: $21 $11 $11
	ld   de, $1311                                   ; $48e8: $11 $11 $13
	ld   l, c                                        ; $48eb: $69
	rst  $28                                         ; $48ec: $ef
	rst  $38                                         ; $48ed: $ff
	rst  $38                                         ; $48ee: $ff
	rst  $38                                         ; $48ef: $ff
	rst  $38                                         ; $48f0: $ff
	cp   $b7                                         ; $48f1: $fe $b7
	ld   hl, $1111                                   ; $48f3: $21 $11 $11
	ld   de, $1212                                   ; $48f6: $11 $12 $12
	ld   l, c                                        ; $48f9: $69
	rst  $28                                         ; $48fa: $ef
	rst  $38                                         ; $48fb: $ff
	rst  $38                                         ; $48fc: $ff
	rst  $38                                         ; $48fd: $ff
	rst  $38                                         ; $48fe: $ff
	db   $fd                                         ; $48ff: $fd
	and  a                                           ; $4900: $a7
	ld   de, $1111                                   ; $4901: $11 $11 $11
	ld   [de], a                                     ; $4904: $12
	ld   b, l                                        ; $4905: $45
	inc  [hl]                                        ; $4906: $34
	ld   a, e                                        ; $4907: $7b
	rst  $38                                         ; $4908: $ff
	rst  $38                                         ; $4909: $ff
	rst  $38                                         ; $490a: $ff
	rst  $38                                         ; $490b: $ff
	rst  $38                                         ; $490c: $ff
	db   $ec                                         ; $490d: $ec
	add  e                                           ; $490e: $83
	ld   de, $1111                                   ; $490f: $11 $11 $11
	ld   d, $87                                      ; $4912: $16 $87
	ld   d, [hl]                                     ; $4914: $56
	xor  a                                           ; $4915: $af
	rst  $38                                         ; $4916: $ff
	rst  $38                                         ; $4917: $ff
	db   $fc                                         ; $4918: $fc
	rst  $38                                         ; $4919: $ff
	rst  $38                                         ; $491a: $ff
	or   a                                           ; $491b: $b7
	ld   hl, $1111                                   ; $491c: $21 $11 $11
	inc  de                                          ; $491f: $13
	adc  h                                           ; $4920: $8c
	and  a                                           ; $4921: $a7
	ld   a, h                                        ; $4922: $7c
	rst  $38                                         ; $4923: $ff
	rst  $38                                         ; $4924: $ff
	rst  $38                                         ; $4925: $ff
	adc  $ff                                         ; $4926: $ce $ff
	ld   [$1141], a                                  ; $4928: $ea $41 $11
	ld   de, $7e11                                   ; $492b: $11 $11 $7e
	db   $fc                                         ; $492e: $fc
	adc  c                                           ; $492f: $89
	rst  $38                                         ; $4930: $ff
	rst  $38                                         ; $4931: $ff
	rst  $38                                         ; $4932: $ff
	rst  $28                                         ; $4933: $ef
	rst  $38                                         ; $4934: $ff
	jp   hl                                          ; $4935: $e9


	ld   b, c                                        ; $4936: $41
	ld   de, $1411                                   ; $4937: $11 $11 $14
	rst  $38                                         ; $493a: $ff
	ei                                               ; $493b: $fb
	sbc  [hl]                                        ; $493c: $9e
	rst  $38                                         ; $493d: $ff
	rst  $38                                         ; $493e: $ff
	ei                                               ; $493f: $fb
	rst  $38                                         ; $4940: $ff
	cp   $72                                         ; $4941: $fe $72
	ld   de, $1111                                   ; $4943: $11 $11 $11
	rra                                              ; $4946: $1f
	rst  $38                                         ; $4947: $ff
	push de                                          ; $4948: $d5
	ld   a, a                                        ; $4949: $7f
	rst  $38                                         ; $494a: $ff
	rst  $38                                         ; $494b: $ff
	sbc  a                                           ; $494c: $9f
	rst  $38                                         ; $494d: $ff
	push af                                          ; $494e: $f5
	ld   de, $1111                                   ; $494f: $11 $11 $11
	ld   de, $feff                                   ; $4952: $11 $ff $fe
	ld   [hl], $ff                                   ; $4955: $36 $ff
	rst  $38                                         ; $4957: $ff
	jp   z, $fdff                                    ; $4958: $ca $ff $fd

	ld   de, $1111                                   ; $495b: $11 $11 $11
	ld   de, $ff5f                                   ; $495e: $11 $5f $ff
	sub  c                                           ; $4961: $91
	xor  a                                           ; $4962: $af
	rst  $38                                         ; $4963: $ff
	ld   sp, hl                                      ; $4964: $f9
	rst  JumpTable                                         ; $4965: $df
	rst  $38                                         ; $4966: $ff
	ld   b, c                                        ; $4967: $41
	ld   de, $1111                                   ; $4968: $11 $11 $11
	rra                                              ; $496b: $1f
	rst  $38                                         ; $496c: $ff
	and  c                                           ; $496d: $a1
	ld   l, a                                        ; $496e: $6f
	rst  $38                                         ; $496f: $ff
	ld   a, [$ffff]                                  ; $4970: $fa $ff $ff
	ld   de, $1111                                   ; $4973: $11 $11 $11
	ld   de, $ff9f                                   ; $4976: $11 $9f $ff
	ld   d, d                                        ; $4979: $52
	rst  JumpTable                                         ; $497a: $df
	rst  $38                                         ; $497b: $ff
	xor  $ff                                         ; $497c: $ee $ff
	rst  $30                                         ; $497e: $f7
	ld   de, $1111                                   ; $497f: $11 $11 $11
	add  hl, de                                      ; $4982: $19
	rst  $38                                         ; $4983: $ff
	ld   sp, hl                                      ; $4984: $f9
	ld   e, a                                        ; $4985: $5f
	rst  $38                                         ; $4986: $ff
	cp   $df                                         ; $4987: $fe $df
	rst  $38                                         ; $4989: $ff
	ld   b, c                                        ; $498a: $41
	ld   de, $1111                                   ; $498b: $11 $11 $11
	rst  $38                                         ; $498e: $ff
	rst  $38                                         ; $498f: $ff
	sbc  h                                           ; $4990: $9c
	rst  $38                                         ; $4991: $ff
	rst  $38                                         ; $4992: $ff
	rst  $38                                         ; $4993: $ff
	rst  $38                                         ; $4994: $ff
	and  c                                           ; $4995: $a1
	ld   de, $1111                                   ; $4996: $11 $11 $11
	rst  JumpTable                                         ; $4999: $df
	rst  $38                                         ; $499a: $ff
	rst  $38                                         ; $499b: $ff
	rst  $38                                         ; $499c: $ff
	rst  $38                                         ; $499d: $ff
	rst  $38                                         ; $499e: $ff
	rst  $38                                         ; $499f: $ff
	ld   [hl], c                                     ; $49a0: $71
	ld   de, $1211                                   ; $49a1: $11 $11 $12
	rst  $38                                         ; $49a4: $ff
	rst  $38                                         ; $49a5: $ff
	rst  $38                                         ; $49a6: $ff
	rst  $38                                         ; $49a7: $ff
	rst  $38                                         ; $49a8: $ff
	rst  $38                                         ; $49a9: $ff
	rst  $38                                         ; $49aa: $ff
	ld   hl, $1111                                   ; $49ab: $21 $11 $11
	ld   d, $ff                                      ; $49ae: $16 $ff
	rst  $38                                         ; $49b0: $ff
	rst  $38                                         ; $49b1: $ff
	rst  $38                                         ; $49b2: $ff
	rst  $38                                         ; $49b3: $ff
	rst  $38                                         ; $49b4: $ff
	ei                                               ; $49b5: $fb
	ld   de, $1111                                   ; $49b6: $11 $11 $11
	cpl                                              ; $49b9: $2f
	rst  $38                                         ; $49ba: $ff
	rst  $38                                         ; $49bb: $ff
	rst  $38                                         ; $49bc: $ff
	db   $eb                                         ; $49bd: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49be: $cf
	rst  $38                                         ; $49bf: $ff
	pop  af                                          ; $49c0: $f1
	ld   de, $1111                                   ; $49c1: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49c4: $cf
	rst  $38                                         ; $49c5: $ff
	rst  $38                                         ; $49c6: $ff
	rst  $38                                         ; $49c7: $ff
	xor  b                                           ; $49c8: $a8
	rst  $38                                         ; $49c9: $ff
	rst  $38                                         ; $49ca: $ff
	ld   hl, $1111                                   ; $49cb: $21 $11 $11
	add  hl, de                                      ; $49ce: $19
	rst  $38                                         ; $49cf: $ff
	rst  $38                                         ; $49d0: $ff
	rst  $38                                         ; $49d1: $ff
	ret  z                                           ; $49d2: $c8

	xor  a                                           ; $49d3: $af
	rst  $38                                         ; $49d4: $ff
	db   $f4                                         ; $49d5: $f4
	ld   de, $1111                                   ; $49d6: $11 $11 $11
	sbc  a                                           ; $49d9: $9f
	rst  $38                                         ; $49da: $ff
	rst  $38                                         ; $49db: $ff
	db   $fc                                         ; $49dc: $fc
	ld   a, c                                        ; $49dd: $79
	rst  $38                                         ; $49de: $ff
	rst  $38                                         ; $49df: $ff
	ld   sp, $1111                                   ; $49e0: $31 $11 $11
	ld   a, [de]                                     ; $49e3: $1a
	rst  $38                                         ; $49e4: $ff
	rst  $38                                         ; $49e5: $ff
	rst  $38                                         ; $49e6: $ff
	or   l                                           ; $49e7: $b5
	adc  a                                           ; $49e8: $8f
	rst  $38                                         ; $49e9: $ff
	ldh  a, [c]                                      ; $49ea: $f2
	ld   de, $1111                                   ; $49eb: $11 $11 $11
	sbc  a                                           ; $49ee: $9f
	rst  $38                                         ; $49ef: $ff
	rst  $38                                         ; $49f0: $ff
	ld   sp, hl                                      ; $49f1: $f9
	ld   e, d                                        ; $49f2: $5a
	rst  $38                                         ; $49f3: $ff
	rst  $38                                         ; $49f4: $ff
	ld   hl, $1111                                   ; $49f5: $21 $11 $11
	ld   a, [de]                                     ; $49f8: $1a
	rst  $28                                         ; $49f9: $ef
	rst  $38                                         ; $49fa: $ff
	rst  $38                                         ; $49fb: $ff
	ld   h, d                                        ; $49fc: $62
	cp   a                                           ; $49fd: $bf
	rst  $38                                         ; $49fe: $ff
	pop  hl                                          ; $49ff: $e1
	ld   de, $1111                                   ; $4a00: $11 $11 $11
	adc  [hl]                                        ; $4a03: $8e
	rst  $38                                         ; $4a04: $ff
	rst  $38                                         ; $4a05: $ff
	push af                                          ; $4a06: $f5
	ld   c, [hl]                                     ; $4a07: $4e
	rst  $38                                         ; $4a08: $ff
	rst  $30                                         ; $4a09: $f7
	ld   de, $1111                                   ; $4a0a: $11 $11 $11
	add  hl, hl                                      ; $4a0d: $29
	rst  $28                                         ; $4a0e: $ef
	rst  $38                                         ; $4a0f: $ff
	db   $fc                                         ; $4a10: $fc

Call_0cd_4a11:
	ld   d, [hl]                                     ; $4a11: $56
	rst  $38                                         ; $4a12: $ff
	rst  $38                                         ; $4a13: $ff
	ld   d, c                                        ; $4a14: $51
	ld   de, $1411                                   ; $4a15: $11 $11 $14
	xor  a                                           ; $4a18: $af
	rst  $38                                         ; $4a19: $ff
	rst  $38                                         ; $4a1a: $ff
	sub  e                                           ; $4a1b: $93
	sbc  a                                           ; $4a1c: $9f
	rst  $38                                         ; $4a1d: $ff
	or   c                                           ; $4a1e: $b1
	ld   de, $1111                                   ; $4a1f: $11 $11 $11
	ld   l, h                                        ; $4a22: $6c

Call_0cd_4a23:
	rst  $38                                         ; $4a23: $ff
	rst  $38                                         ; $4a24: $ff
	rst  $20                                         ; $4a25: $e7
	ld   e, e                                        ; $4a26: $5b
	rst  $38                                         ; $4a27: $ff
	rst  $30                                         ; $4a28: $f7
	ld   de, $1111                                   ; $4a29: $11 $11 $11
	add  hl, hl                                      ; $4a2c: $29
	rst  $38                                         ; $4a2d: $ff
	rst  $38                                         ; $4a2e: $ff
	ld   sp, hl                                      ; $4a2f: $f9
	ld   d, l                                        ; $4a30: $55
	rst  $28                                         ; $4a31: $ef
	ei                                               ; $4a32: $fb
	ld   hl, $1111                                   ; $4a33: $21 $11 $11
	ld   d, $af                                      ; $4a36: $16 $af
	rst  $38                                         ; $4a38: $ff
	ld   a, [$df46]                                  ; $4a39: $fa $46 $df
	db   $fd                                         ; $4a3c: $fd
	ld   d, c                                        ; $4a3d: $51
	ld   de, $1411                                   ; $4a3e: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a41: $cf
	rst  $38                                         ; $4a42: $ff
	ei                                               ; $4a43: $fb
	ld   h, a                                        ; $4a44: $67
	xor  [hl]                                        ; $4a45: $ae
	db   $fc                                         ; $4a46: $fc
	ld   [hl], c                                     ; $4a47: $71
	ld   de, $1311                                   ; $4a48: $11 $11 $13
	sbc  [hl]                                        ; $4a4b: $9e
	rst  $38                                         ; $4a4c: $ff
	db   $fd                                         ; $4a4d: $fd
	sub  [hl]                                        ; $4a4e: $96
	adc  a                                           ; $4a4f: $8f
	db   $ec                                         ; $4a50: $ec
	ld   h, c                                        ; $4a51: $61
	ld   de, $1311                                   ; $4a52: $11 $11 $13
	ld   a, e                                        ; $4a55: $7b
	rst  $38                                         ; $4a56: $ff
	rst  $38                                         ; $4a57: $ff
	or   a                                           ; $4a58: $b7
	ld   a, h                                        ; $4a59: $7c
	call c, $11a2                                    ; $4a5a: $dc $a2 $11
	ld   de, $7b13                                   ; $4a5d: $11 $13 $7b
	rst  $38                                         ; $4a60: $ff
	rst  $38                                         ; $4a61: $ff
	xor  b                                           ; $4a62: $a8
	xor  d                                           ; $4a63: $aa
	cp   e                                           ; $4a64: $bb
	sub  l                                           ; $4a65: $95
	ld   de, $1311                                   ; $4a66: $11 $11 $13
	ld   a, c                                        ; $4a69: $79
	rst  JumpTable                                         ; $4a6a: $df
	rst  $38                                         ; $4a6b: $ff
	cp   c                                           ; $4a6c: $b9
	sbc  d                                           ; $4a6d: $9a
	xor  d                                           ; $4a6e: $aa
	sub  h                                           ; $4a6f: $94
	ld   de, $1311                                   ; $4a70: $11 $11 $13
	ld   e, c                                        ; $4a73: $59
	rst  JumpTable                                         ; $4a74: $df
	rst  $38                                         ; $4a75: $ff
	jp   c, $bb88                                    ; $4a76: $da $88 $bb

	ld   [hl], l                                     ; $4a79: $75
	ld   sp, $1321                                   ; $4a7a: $31 $21 $13
	ld   a, c                                        ; $4a7d: $79
	cp   [hl]                                        ; $4a7e: $be
	rst  $38                                         ; $4a7f: $ff
	cp   d                                           ; $4a80: $ba
	sbc  e                                           ; $4a81: $9b
	cp   c                                           ; $4a82: $b9
	ld   [hl], l                                     ; $4a83: $75
	ld   b, e                                        ; $4a84: $43
	ld   sp, $7814                                   ; $4a85: $31 $14 $78
	xor  l                                           ; $4a88: $ad
	cp   $cb                                         ; $4a89: $fe $cb
	xor  d                                           ; $4a8b: $aa
	xor  b                                           ; $4a8c: $a8
	ld   h, l                                        ; $4a8d: $65
	ld   b, h                                        ; $4a8e: $44
	ld   b, e                                        ; $4a8f: $43
	inc  d                                           ; $4a90: $14
	ld   a, b                                        ; $4a91: $78
	sbc  d                                           ; $4a92: $9a
	adc  $cb                                         ; $4a93: $ce $cb
	adc  c                                           ; $4a95: $89
	cp   c                                           ; $4a96: $b9
	halt                                             ; $4a97: $76
	ld   h, [hl]                                     ; $4a98: $66
	ld   h, h                                        ; $4a99: $64
	inc  [hl]                                        ; $4a9a: $34
	ld   h, a                                        ; $4a9b: $67
	sbc  c                                           ; $4a9c: $99
	cp   h                                           ; $4a9d: $bc
	cp   c                                           ; $4a9e: $b9
	adc  b                                           ; $4a9f: $88
	sbc  c                                           ; $4aa0: $99
	add  a                                           ; $4aa1: $87
	halt                                             ; $4aa2: $76
	halt                                             ; $4aa3: $76
	ld   h, [hl]                                     ; $4aa4: $66
	ld   h, a                                        ; $4aa5: $67
	adc  b                                           ; $4aa6: $88
	adc  d                                           ; $4aa7: $8a
	sbc  b                                           ; $4aa8: $98
	adc  b                                           ; $4aa9: $88
	adc  c                                           ; $4aaa: $89
	add  a                                           ; $4aab: $87
	ld   a, b                                        ; $4aac: $78
	ld   [hl], a                                     ; $4aad: $77
	ld   a, b                                        ; $4aae: $78
	add  a                                           ; $4aaf: $87
	adc  c                                           ; $4ab0: $89
	adc  b                                           ; $4ab1: $88
	adc  b                                           ; $4ab2: $88
	adc  b                                           ; $4ab3: $88
	sbc  b                                           ; $4ab4: $98
	adc  b                                           ; $4ab5: $88
	adc  b                                           ; $4ab6: $88
	adc  c                                           ; $4ab7: $89
	adc  b                                           ; $4ab8: $88
	adc  b                                           ; $4ab9: $88
	adc  c                                           ; $4aba: $89
	sbc  c                                           ; $4abb: $99
	sbc  c                                           ; $4abc: $99
	sbc  c                                           ; $4abd: $99
	adc  b                                           ; $4abe: $88
	adc  b                                           ; $4abf: $88
	sbc  c                                           ; $4ac0: $99
	sbc  b                                           ; $4ac1: $98
	sbc  c                                           ; $4ac2: $99
	sbc  c                                           ; $4ac3: $99
	adc  b                                           ; $4ac4: $88
	add  a                                           ; $4ac5: $87
	ld   [hl], a                                     ; $4ac6: $77
	ld   [hl], a                                     ; $4ac7: $77
	ld   [hl], a                                     ; $4ac8: $77
	ld   a, b                                        ; $4ac9: $78
	adc  b                                           ; $4aca: $88
	adc  b                                           ; $4acb: $88
	adc  b                                           ; $4acc: $88
	adc  b                                           ; $4acd: $88
	add  a                                           ; $4ace: $87
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
	sbc  c                                           ; $4ada: $99
	sbc  c                                           ; $4adb: $99
	adc  b                                           ; $4adc: $88
	adc  b                                           ; $4add: $88
	adc  b                                           ; $4ade: $88
	adc  b                                           ; $4adf: $88
	adc  b                                           ; $4ae0: $88
	adc  b                                           ; $4ae1: $88
	adc  b                                           ; $4ae2: $88
	adc  b                                           ; $4ae3: $88
	adc  b                                           ; $4ae4: $88
	sbc  b                                           ; $4ae5: $98
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
	add  a                                           ; $4af2: $87
	ld   [hl], a                                     ; $4af3: $77
	ld   [hl], a                                     ; $4af4: $77
	adc  b                                           ; $4af5: $88
	adc  b                                           ; $4af6: $88
	adc  b                                           ; $4af7: $88
	adc  b                                           ; $4af8: $88
	adc  b                                           ; $4af9: $88
	adc  b                                           ; $4afa: $88
	adc  b                                           ; $4afb: $88
	add  a                                           ; $4afc: $87
	ld   [hl], a                                     ; $4afd: $77
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
	adc  b                                           ; $4b9d: $88
	adc  b                                           ; $4b9e: $88
	adc  b                                           ; $4b9f: $88
	adc  b                                           ; $4ba0: $88
	adc  b                                           ; $4ba1: $88
	adc  b                                           ; $4ba2: $88
	adc  b                                           ; $4ba3: $88
	adc  b                                           ; $4ba4: $88
	adc  b                                           ; $4ba5: $88
	adc  b                                           ; $4ba6: $88
	adc  b                                           ; $4ba7: $88
	adc  b                                           ; $4ba8: $88
	adc  b                                           ; $4ba9: $88
	adc  b                                           ; $4baa: $88
	adc  b                                           ; $4bab: $88
	adc  b                                           ; $4bac: $88
	adc  b                                           ; $4bad: $88
	adc  b                                           ; $4bae: $88
	adc  b                                           ; $4baf: $88
	adc  b                                           ; $4bb0: $88
	adc  b                                           ; $4bb1: $88
	adc  b                                           ; $4bb2: $88
	adc  b                                           ; $4bb3: $88
	adc  b                                           ; $4bb4: $88
	adc  b                                           ; $4bb5: $88
	adc  b                                           ; $4bb6: $88
	adc  b                                           ; $4bb7: $88
	adc  b                                           ; $4bb8: $88
	adc  b                                           ; $4bb9: $88
	adc  b                                           ; $4bba: $88
	adc  b                                           ; $4bbb: $88
	adc  b                                           ; $4bbc: $88
	adc  b                                           ; $4bbd: $88
	adc  b                                           ; $4bbe: $88
	adc  b                                           ; $4bbf: $88
	adc  b                                           ; $4bc0: $88
	adc  b                                           ; $4bc1: $88
	adc  b                                           ; $4bc2: $88
	adc  b                                           ; $4bc3: $88
	adc  b                                           ; $4bc4: $88
	adc  b                                           ; $4bc5: $88
	adc  b                                           ; $4bc6: $88
	adc  b                                           ; $4bc7: $88
	adc  b                                           ; $4bc8: $88
	adc  b                                           ; $4bc9: $88
	adc  b                                           ; $4bca: $88
	adc  b                                           ; $4bcb: $88
	adc  b                                           ; $4bcc: $88
	adc  b                                           ; $4bcd: $88
	adc  b                                           ; $4bce: $88
	adc  b                                           ; $4bcf: $88
	adc  b                                           ; $4bd0: $88
	adc  b                                           ; $4bd1: $88
	adc  b                                           ; $4bd2: $88
	adc  b                                           ; $4bd3: $88
	adc  b                                           ; $4bd4: $88
	adc  b                                           ; $4bd5: $88
	adc  b                                           ; $4bd6: $88
	adc  b                                           ; $4bd7: $88
	adc  b                                           ; $4bd8: $88
	adc  b                                           ; $4bd9: $88
	adc  b                                           ; $4bda: $88
	adc  b                                           ; $4bdb: $88
	adc  b                                           ; $4bdc: $88
	adc  b                                           ; $4bdd: $88
	adc  b                                           ; $4bde: $88
	adc  b                                           ; $4bdf: $88
	adc  b                                           ; $4be0: $88
	adc  b                                           ; $4be1: $88
	adc  b                                           ; $4be2: $88
	adc  b                                           ; $4be3: $88
	adc  b                                           ; $4be4: $88
	adc  b                                           ; $4be5: $88
	adc  b                                           ; $4be6: $88
	adc  b                                           ; $4be7: $88
	adc  b                                           ; $4be8: $88
	adc  b                                           ; $4be9: $88
	adc  b                                           ; $4bea: $88
	adc  b                                           ; $4beb: $88
	adc  b                                           ; $4bec: $88
	adc  b                                           ; $4bed: $88
	adc  b                                           ; $4bee: $88
	adc  b                                           ; $4bef: $88
	adc  b                                           ; $4bf0: $88
	adc  b                                           ; $4bf1: $88
	adc  b                                           ; $4bf2: $88
	adc  b                                           ; $4bf3: $88
	adc  b                                           ; $4bf4: $88
	adc  b                                           ; $4bf5: $88
	adc  b                                           ; $4bf6: $88
	adc  b                                           ; $4bf7: $88
	adc  b                                           ; $4bf8: $88
	adc  b                                           ; $4bf9: $88
	adc  b                                           ; $4bfa: $88
	adc  b                                           ; $4bfb: $88
	adc  b                                           ; $4bfc: $88
	adc  b                                           ; $4bfd: $88
	adc  b                                           ; $4bfe: $88
	adc  b                                           ; $4bff: $88
	adc  b                                           ; $4c00: $88
	adc  b                                           ; $4c01: $88
	adc  b                                           ; $4c02: $88
	adc  b                                           ; $4c03: $88
	adc  b                                           ; $4c04: $88
	adc  b                                           ; $4c05: $88
	adc  b                                           ; $4c06: $88
	adc  b                                           ; $4c07: $88
	adc  b                                           ; $4c08: $88
	adc  b                                           ; $4c09: $88
	adc  b                                           ; $4c0a: $88
	adc  b                                           ; $4c0b: $88
	adc  b                                           ; $4c0c: $88
	adc  b                                           ; $4c0d: $88
	adc  b                                           ; $4c0e: $88
	adc  b                                           ; $4c0f: $88
	sbc  b                                           ; $4c10: $98
	adc  b                                           ; $4c11: $88
	adc  b                                           ; $4c12: $88
	adc  b                                           ; $4c13: $88
	adc  b                                           ; $4c14: $88
	adc  b                                           ; $4c15: $88
	adc  b                                           ; $4c16: $88
	adc  b                                           ; $4c17: $88
	adc  b                                           ; $4c18: $88
	adc  b                                           ; $4c19: $88
	adc  b                                           ; $4c1a: $88
	adc  b                                           ; $4c1b: $88
	adc  b                                           ; $4c1c: $88
	adc  b                                           ; $4c1d: $88
	adc  b                                           ; $4c1e: $88
	adc  b                                           ; $4c1f: $88
	adc  b                                           ; $4c20: $88
	adc  b                                           ; $4c21: $88
	adc  b                                           ; $4c22: $88
	adc  b                                           ; $4c23: $88
	adc  b                                           ; $4c24: $88
	adc  b                                           ; $4c25: $88
	adc  b                                           ; $4c26: $88
	adc  b                                           ; $4c27: $88
	sbc  c                                           ; $4c28: $99
	adc  c                                           ; $4c29: $89
	adc  b                                           ; $4c2a: $88
	add  a                                           ; $4c2b: $87
	adc  b                                           ; $4c2c: $88
	ld   a, b                                        ; $4c2d: $78
	adc  c                                           ; $4c2e: $89
	adc  b                                           ; $4c2f: $88
	adc  b                                           ; $4c30: $88
	adc  b                                           ; $4c31: $88
	adc  c                                           ; $4c32: $89
	adc  b                                           ; $4c33: $88
	add  a                                           ; $4c34: $87
	add  a                                           ; $4c35: $87
	ld   [hl], a                                     ; $4c36: $77
	adc  b                                           ; $4c37: $88
	adc  b                                           ; $4c38: $88
	ld   a, b                                        ; $4c39: $78
	adc  b                                           ; $4c3a: $88
	adc  b                                           ; $4c3b: $88
	adc  c                                           ; $4c3c: $89
	sbc  b                                           ; $4c3d: $98
	sbc  b                                           ; $4c3e: $98
	ld   [hl], a                                     ; $4c3f: $77
	ld   [hl], a                                     ; $4c40: $77
	ld   [hl], a                                     ; $4c41: $77
	ld   a, b                                        ; $4c42: $78
	add  a                                           ; $4c43: $87
	adc  b                                           ; $4c44: $88
	ld   a, b                                        ; $4c45: $78
	add  a                                           ; $4c46: $87
	add  a                                           ; $4c47: $87
	ld   [hl], a                                     ; $4c48: $77
	ld   a, b                                        ; $4c49: $78
	adc  b                                           ; $4c4a: $88
	add  a                                           ; $4c4b: $87
	adc  b                                           ; $4c4c: $88
	ld   a, b                                        ; $4c4d: $78
	add  a                                           ; $4c4e: $87
	ld   [hl], a                                     ; $4c4f: $77
	adc  b                                           ; $4c50: $88
	adc  c                                           ; $4c51: $89
	ld   a, b                                        ; $4c52: $78
	sbc  b                                           ; $4c53: $98
	ld   a, b                                        ; $4c54: $78
	halt                                             ; $4c55: $76
	ld   a, b                                        ; $4c56: $78
	ld   [hl], a                                     ; $4c57: $77
	ld   a, b                                        ; $4c58: $78
	sbc  c                                           ; $4c59: $99
	adc  c                                           ; $4c5a: $89
	sbc  c                                           ; $4c5b: $99
	ld   [hl], a                                     ; $4c5c: $77
	sbc  c                                           ; $4c5d: $99
	adc  b                                           ; $4c5e: $88
	sbc  b                                           ; $4c5f: $98
	ld   [hl], a                                     ; $4c60: $77
	add  a                                           ; $4c61: $87
	ld   a, b                                        ; $4c62: $78
	add  a                                           ; $4c63: $87
	ld   a, b                                        ; $4c64: $78
	ld   [hl], a                                     ; $4c65: $77
	adc  c                                           ; $4c66: $89
	sbc  b                                           ; $4c67: $98
	sbc  b                                           ; $4c68: $98
	ld   [hl], a                                     ; $4c69: $77
	adc  b                                           ; $4c6a: $88
	ld   a, b                                        ; $4c6b: $78
	sbc  b                                           ; $4c6c: $98
	adc  b                                           ; $4c6d: $88
	sbc  c                                           ; $4c6e: $99
	ld   [hl], a                                     ; $4c6f: $77
	ld   a, b                                        ; $4c70: $78
	sub  a                                           ; $4c71: $97
	adc  b                                           ; $4c72: $88
	adc  c                                           ; $4c73: $89
	ld   [hl], a                                     ; $4c74: $77
	adc  b                                           ; $4c75: $88
	sub  a                                           ; $4c76: $97
	ld   a, d                                        ; $4c77: $7a
	and  a                                           ; $4c78: $a7
	ld   a, c                                        ; $4c79: $79
	adc  b                                           ; $4c7a: $88
	sbc  c                                           ; $4c7b: $99
	sbc  b                                           ; $4c7c: $98
	sbc  d                                           ; $4c7d: $9a
	add  a                                           ; $4c7e: $87
	ld   a, b                                        ; $4c7f: $78
	sub  [hl]                                        ; $4c80: $96
	ld   a, c                                        ; $4c81: $79
	add  a                                           ; $4c82: $87
	sub  a                                           ; $4c83: $97
	ld   l, c                                        ; $4c84: $69
	add  a                                           ; $4c85: $87
	ld   a, b                                        ; $4c86: $78
	sbc  e                                           ; $4c87: $9b
	ret                                              ; $4c88: $c9


	sbc  d                                           ; $4c89: $9a
	xor  d                                           ; $4c8a: $aa
	sbc  b                                           ; $4c8b: $98
	xor  e                                           ; $4c8c: $ab
	add  [hl]                                        ; $4c8d: $86
	ld   h, a                                        ; $4c8e: $67
	ld   h, [hl]                                     ; $4c8f: $66
	ld   d, d                                        ; $4c90: $52
	ld   b, l                                        ; $4c91: $45
	ld   h, [hl]                                     ; $4c92: $66
	ld   h, [hl]                                     ; $4c93: $66
	sbc  e                                           ; $4c94: $9b
	xor  e                                           ; $4c95: $ab
	cp   h                                           ; $4c96: $bc
	res  5, l                                        ; $4c97: $cb $ad
	db   $ed                                         ; $4c99: $ed
	cp   d                                           ; $4c9a: $ba
	sbc  c                                           ; $4c9b: $99
	sub  [hl]                                        ; $4c9c: $96
	inc  h                                           ; $4c9d: $24
	ld   [hl-], a                                    ; $4c9e: $32
	ld   sp, $3524                                   ; $4c9f: $31 $24 $35
	ld   a, c                                        ; $4ca2: $79
	db   $ed                                         ; $4ca3: $ed
	adc  $fc                                         ; $4ca4: $ce $fc
	sbc  l                                           ; $4ca6: $9d
	rst  $38                                         ; $4ca7: $ff
	res  5, d                                        ; $4ca8: $cb $aa
	ld   h, e                                        ; $4caa: $63
	inc  sp                                          ; $4cab: $33
	ld   sp, $1211                                   ; $4cac: $31 $11 $12
	inc  [hl]                                        ; $4caf: $34
	cp   a                                           ; $4cb0: $bf
	rst  $38                                         ; $4cb1: $ff
	db   $ec                                         ; $4cb2: $ec
	db   $db                                         ; $4cb3: $db
	cp   [hl]                                        ; $4cb4: $be
	rst  $38                                         ; $4cb5: $ff
	ei                                               ; $4cb6: $fb
	ld   h, [hl]                                     ; $4cb7: $66
	ld   b, c                                        ; $4cb8: $41
	ld   de, $1111                                   ; $4cb9: $11 $11 $11
	rla                                              ; $4cbc: $17
	adc  c                                           ; $4cbd: $89
	rst  JumpTable                                         ; $4cbe: $df
	rst  $38                                         ; $4cbf: $ff
	cp   h                                           ; $4cc0: $bc
	xor  a                                           ; $4cc1: $af
	cp   $ff                                         ; $4cc2: $fe $ff
	ld   sp, hl                                      ; $4cc4: $f9
	ld   sp, $1112                                   ; $4cc5: $31 $12 $11
	ld   de, $6c11                                   ; $4cc8: $11 $11 $6c
	xor  e                                           ; $4ccb: $ab
	rst  $38                                         ; $4ccc: $ff
	db   $fd                                         ; $4ccd: $fd
	sub  a                                           ; $4cce: $97
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ccf: $cf
	rst  $38                                         ; $4cd0: $ff
	rst  $38                                         ; $4cd1: $ff
	di                                               ; $4cd2: $f3
	ld   de, $1112                                   ; $4cd3: $11 $12 $11
	ld   de, $4814                                   ; $4cd6: $11 $14 $48
	sbc  a                                           ; $4cd9: $9f
	cp   $fc                                         ; $4cda: $fe $fc
	sbc  l                                           ; $4cdc: $9d
	xor  [hl]                                        ; $4cdd: $ae
	rst  $38                                         ; $4cde: $ff
	ld   sp, hl                                      ; $4cdf: $f9
	add  e                                           ; $4ce0: $83
	dec  d                                           ; $4ce1: $15
	ld   de, $1111                                   ; $4ce2: $11 $11 $11
	ld   d, $ab                                      ; $4ce5: $16 $ab
	ld   a, l                                        ; $4ce7: $7d
	rst  $38                                         ; $4ce8: $ff
	db   $fd                                         ; $4ce9: $fd
	ld   l, l                                        ; $4cea: $6d
	db   $ed                                         ; $4ceb: $ed
	rst  $28                                         ; $4cec: $ef
	cp   $b3                                         ; $4ced: $fe $b3
	ld   de, $1101                                   ; $4cef: $11 $01 $11
	ld   de, $5e11                                   ; $4cf2: $11 $11 $5e
	adc  h                                           ; $4cf5: $8c
	rst  $38                                         ; $4cf6: $ff
	jp   c, $ff79                                    ; $4cf7: $da $79 $ff

	db   $fd                                         ; $4cfa: $fd
	cp   $86                                         ; $4cfb: $fe $86
	ld   de, $1144                                   ; $4cfd: $11 $44 $11
	ld   de, $3c11                                   ; $4d00: $11 $11 $3c
	sbc  $df                                         ; $4d03: $de $df
	push af                                          ; $4d05: $f5
	ld   a, h                                        ; $4d06: $7c
	rst  JumpTable                                         ; $4d07: $df
	rst  $38                                         ; $4d08: $ff
	cp   $d8                                         ; $4d09: $fe $d8
	ld   [hl-], a                                    ; $4d0b: $32
	inc  d                                           ; $4d0c: $14
	ld   h, d                                        ; $4d0d: $62
	ld   de, $1311                                   ; $4d0e: $11 $11 $13
	xor  l                                           ; $4d11: $ad
	rst  $28                                         ; $4d12: $ef
	ei                                               ; $4d13: $fb
	ld   h, [hl]                                     ; $4d14: $66
	sbc  h                                           ; $4d15: $9c
	rst  $38                                         ; $4d16: $ff
	rst  $38                                         ; $4d17: $ff
	cp   $96                                         ; $4d18: $fe $96
	dec  h                                           ; $4d1a: $25
	ld   d, d                                        ; $4d1b: $52
	ld   bc, $1111                                   ; $4d1c: $01 $11 $11
	dec  d                                           ; $4d1f: $15
	rst  $28                                         ; $4d20: $ef
	cp   [hl]                                        ; $4d21: $be
	rst  JumpTable                                         ; $4d22: $df
	ret  z                                           ; $4d23: $c8

	ld   b, e                                        ; $4d24: $43
	rst  $38                                         ; $4d25: $ff
	rst  $38                                         ; $4d26: $ff
	rst  $38                                         ; $4d27: $ff
	ld   a, c                                        ; $4d28: $79
	ld   h, c                                        ; $4d29: $61
	ld   de, $1153                                   ; $4d2a: $11 $53 $11
	ld   de, $fd1e                                   ; $4d2d: $11 $1e $fd
	cp   l                                           ; $4d30: $bd
	ei                                               ; $4d31: $fb
	adc  d                                           ; $4d32: $8a
	xor  c                                           ; $4d33: $a9
	cp   a                                           ; $4d34: $bf
	rst  $38                                         ; $4d35: $ff
	ld   a, [$6762]                                  ; $4d36: $fa $62 $67
	ld   [hl], c                                     ; $4d39: $71
	inc  de                                          ; $4d3a: $13
	ld   de, $1911                                   ; $4d3b: $11 $11 $19
	cp   h                                           ; $4d3e: $bc
	rst  $28                                         ; $4d3f: $ef
	rst  $30                                         ; $4d40: $f7
	ld   d, $ef                                      ; $4d41: $16 $ef
	db   $fd                                         ; $4d43: $fd
	rst  $38                                         ; $4d44: $ff
	cp   $55                                         ; $4d45: $fe $55
	ld   e, e                                        ; $4d47: $5b
	ldh  [c], a                                      ; $4d48: $e2
	ld   de, $1111                                   ; $4d49: $11 $11 $11
	dec  de                                          ; $4d4c: $1b
	rst  $30                                         ; $4d4d: $f7
	dec  a                                           ; $4d4e: $3d
	ei                                               ; $4d4f: $fb
	cp   c                                           ; $4d50: $b9
	xor  a                                           ; $4d51: $af
	db   $fc                                         ; $4d52: $fc
	xor  a                                           ; $4d53: $af
	rst  $30                                         ; $4d54: $f7
	cp   e                                           ; $4d55: $bb
	ld   a, c                                        ; $4d56: $79
	or   h                                           ; $4d57: $b4
	ld   de, $1111                                   ; $4d58: $11 $11 $11
	ld   de, $b6bf                                   ; $4d5b: $11 $bf $b6
	ld   a, d                                        ; $4d5e: $7a
	rst  JumpTable                                         ; $4d5f: $df
	ret  c                                           ; $4d60: $d8

	rst  $38                                         ; $4d61: $ff
	db   $fc                                         ; $4d62: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d63: $cf
	rst  $38                                         ; $4d64: $ff
	ld   [hl], l                                     ; $4d65: $75
	sbc  c                                           ; $4d66: $99
	ld   b, c                                        ; $4d67: $41
	ld   de, $3112                                   ; $4d68: $11 $12 $31
	ld   de, $e9cf                                   ; $4d6b: $11 $cf $e9
	ld   l, a                                        ; $4d6e: $6f
	ld   a, [$ff9a]                                  ; $4d6f: $fa $9a $ff
	cp   a                                           ; $4d72: $bf
	set  7, h                                        ; $4d73: $cb $fc
	ld   d, l                                        ; $4d75: $55
	ld   a, b                                        ; $4d76: $78
	ld   sp, $1111                                   ; $4d77: $31 $11 $11
	dec  d                                           ; $4d7a: $15
	ld   de, $f8cf                                   ; $4d7b: $11 $cf $f8
	adc  [hl]                                        ; $4d7e: $8e
	sbc  $f8                                         ; $4d7f: $de $f8
	ld   l, e                                        ; $4d81: $6b
	rst  $38                                         ; $4d82: $ff
	cp   l                                           ; $4d83: $bd
	db   $fd                                         ; $4d84: $fd
	and  a                                           ; $4d85: $a7
	ld   b, e                                        ; $4d86: $43
	ld   b, e                                        ; $4d87: $43
	ld   de, $1111                                   ; $4d88: $11 $11 $11
	inc  l                                           ; $4d8b: $2c
	rst  $38                                         ; $4d8c: $ff
	sbc  b                                           ; $4d8d: $98
	adc  c                                           ; $4d8e: $89
	rst  $28                                         ; $4d8f: $ef
	ld   d, d                                        ; $4d90: $52
	rst  $38                                         ; $4d91: $ff
	jp   hl                                          ; $4d92: $e9


	ei                                               ; $4d93: $fb
	cp   a                                           ; $4d94: $bf
	or   $7c                                         ; $4d95: $f6 $7c
	ld   de, $2211                                   ; $4d97: $11 $11 $22
	ld   de, $9719                                   ; $4d9a: $11 $19 $97
	cp   l                                           ; $4d9d: $bd
	call z, $aba9                                    ; $4d9e: $cc $a9 $ab
	adc  e                                           ; $4da1: $8b
	rst  $38                                         ; $4da2: $ff
	rst  $38                                         ; $4da3: $ff
	rst  $20                                         ; $4da4: $e7
	adc  h                                           ; $4da5: $8c
	and  a                                           ; $4da6: $a7
	add  a                                           ; $4da7: $87
	ld   de, $1111                                   ; $4da8: $11 $11 $11
	ld   de, $f4af                                   ; $4dab: $11 $af $f4
	ld   b, h                                        ; $4dae: $44
	cp   a                                           ; $4daf: $bf
	reti                                             ; $4db0: $d9


	ld   l, a                                        ; $4db1: $6f
	cp   $7b                                         ; $4db2: $fe $7b
	rst  $28                                         ; $4db4: $ef
	db   $fc                                         ; $4db5: $fc
	and  l                                           ; $4db6: $a5
	cp   l                                           ; $4db7: $bd
	ld   de, $2211                                   ; $4db8: $11 $11 $22
	ld   de, $a916                                   ; $4dbb: $11 $16 $a9
	add  a                                           ; $4dbe: $87
	xor  a                                           ; $4dbf: $af
	db   $fd                                         ; $4dc0: $fd
	xor  h                                           ; $4dc1: $ac
	cp   d                                           ; $4dc2: $ba
	rst  $28                                         ; $4dc3: $ef
	rst  $38                                         ; $4dc4: $ff
	ei                                               ; $4dc5: $fb
	cp   l                                           ; $4dc6: $bd
	and  $33                                         ; $4dc7: $e6 $33
	ld   [de], a                                     ; $4dc9: $12
	ld   b, c                                        ; $4dca: $41
	ld   de, $2514                                   ; $4dcb: $11 $14 $25
	cp   c                                           ; $4dce: $b9
	adc  [hl]                                        ; $4dcf: $8e
	rst  $10                                         ; $4dd0: $d7
	sbc  a                                           ; $4dd1: $9f
	ld   a, [$ffaf]                                  ; $4dd2: $fa $af $ff
	ld   a, [$efde]                                  ; $4dd5: $fa $de $ef
	sub  [hl]                                        ; $4dd8: $96
	add  a                                           ; $4dd9: $87
	ld   sp, $1111                                   ; $4dda: $31 $11 $11
	ld   hl, $7e01                                   ; $4ddd: $21 $01 $7e
	cp   c                                           ; $4de0: $b9
	ld   l, c                                        ; $4de1: $69
	rst  $38                                         ; $4de2: $ff
	call z, $ff7b                                    ; $4de3: $cc $7b $ff
	ret  c                                           ; $4de6: $d8

	rst  $38                                         ; $4de7: $ff
	db   $fd                                         ; $4de8: $fd
	or   l                                           ; $4de9: $b5
	ld   a, e                                        ; $4dea: $7b
	ld   [hl], c                                     ; $4deb: $71
	ld   de, $1131                                   ; $4dec: $11 $31 $11
	ld   de, $a25e                                   ; $4def: $11 $5e $a2
	ld   e, [hl]                                     ; $4df2: $5e
	rst  $38                                         ; $4df3: $ff
	ld   [hl], e                                     ; $4df4: $73
	sbc  a                                           ; $4df5: $9f
	rst  $38                                         ; $4df6: $ff
	db   $ed                                         ; $4df7: $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4df8: $cf
	db   $ec                                         ; $4df9: $ec
	res  7, d                                        ; $4dfa: $cb $ba
	ld   d, h                                        ; $4dfc: $54
	ld   b, c                                        ; $4dfd: $41
	ld   de, $1122                                   ; $4dfe: $11 $22 $11
	ld   de, $de3a                                   ; $4e01: $11 $3a $de
	sub  c                                           ; $4e04: $91
	ld   l, a                                        ; $4e05: $6f
	db   $db                                         ; $4e06: $db
	xor  h                                           ; $4e07: $ac
	rst  $28                                         ; $4e08: $ef
	cp   $6b                                         ; $4e09: $fe $6b
	xor  $dd                                         ; $4e0b: $ee $dd
	rst  ToBoot                                         ; $4e0d: $c7
	ld   h, h                                        ; $4e0e: $64
	ld   de, $2142                                   ; $4e0f: $11 $42 $21
	ld   de, $2b11                                   ; $4e12: $11 $11 $2b
	sbc  $ea                                         ; $4e15: $de $ea
	sub  [hl]                                        ; $4e17: $96
	ld   a, h                                        ; $4e18: $7c
	adc  $ff                                         ; $4e19: $ce $ff
	ld   hl, sp+$59                                  ; $4e1b: $f8 $59
	rst  JumpTable                                         ; $4e1d: $df
	cp   $b7                                         ; $4e1e: $fe $b7
	sub  a                                           ; $4e20: $97
	ld   de, $3511                                   ; $4e21: $11 $11 $35
	ld   hl, $1611                                   ; $4e24: $21 $11 $16
	xor  $ef                                         ; $4e27: $ee $ef
	sub  e                                           ; $4e29: $93
	ld   l, h                                        ; $4e2a: $6c
	set  7, a                                        ; $4e2b: $cb $ff
	rst  $28                                         ; $4e2d: $ef
	jp   hl                                          ; $4e2e: $e9


	xor  [hl]                                        ; $4e2f: $ae
	db   $fd                                         ; $4e30: $fd
	db   $ec                                         ; $4e31: $ec
	halt                                             ; $4e32: $76
	ld   b, c                                        ; $4e33: $41
	ld   de, $5312                                   ; $4e34: $11 $12 $53
	ld   de, rAUD1LOW                                   ; $4e37: $11 $13 $ff
	sub  c                                           ; $4e3a: $91
	adc  a                                           ; $4e3b: $8f
	ld   a, [$cf45]                                  ; $4e3c: $fa $45 $cf
	db   $fd                                         ; $4e3f: $fd
	ld   h, a                                        ; $4e40: $67
	adc  $fe                                         ; $4e41: $ce $fe
	cp   d                                           ; $4e43: $ba
	db   $eb                                         ; $4e44: $eb
	ld   b, d                                        ; $4e45: $42
	inc  de                                          ; $4e46: $13
	ld   sp, $3211                                   ; $4e47: $31 $11 $32
	ld   de, wNameReplacementCharToReplace                                   ; $4e4a: $11 $14 $cb
	ld   a, e                                        ; $4e4d: $7b
	db   $ec                                         ; $4e4e: $ec
	sub  l                                           ; $4e4f: $95
	ld   a, [hl]                                     ; $4e50: $7e
	rst  $38                                         ; $4e51: $ff
	ld   a, [$c78d]                                  ; $4e52: $fa $8d $c7
	rst  JumpTable                                         ; $4e55: $df
	rst  $38                                         ; $4e56: $ff
	sub  $23                                         ; $4e57: $d6 $23
	ld   d, e                                        ; $4e59: $53
	ld   [de], a                                     ; $4e5a: $12
	ld   b, l                                        ; $4e5b: $45
	ld   hl, $1611                                   ; $4e5c: $21 $11 $16
	cp   a                                           ; $4e5f: $bf
	ret                                              ; $4e60: $c9


	bit  2, e                                        ; $4e61: $cb $53
	adc  a                                           ; $4e63: $8f
	rst  $38                                         ; $4e64: $ff
	db   $fc                                         ; $4e65: $fc
	ld   [hl], a                                     ; $4e66: $77
	adc  $df                                         ; $4e67: $ce $df
	ei                                               ; $4e69: $fb
	cp   c                                           ; $4e6a: $b9
	ld   d, e                                        ; $4e6b: $53
	ld   d, [hl]                                     ; $4e6c: $56
	inc  [hl]                                        ; $4e6d: $34
	ld   b, e                                        ; $4e6e: $43
	ld   sp, $1111                                   ; $4e6f: $31 $11 $11
	ld   l, a                                        ; $4e72: $6f
	db   $f4                                         ; $4e73: $f4
	scf                                              ; $4e74: $37
	cp   l                                           ; $4e75: $bd
	cp   d                                           ; $4e76: $ba
	sbc  a                                           ; $4e77: $9f
	rst  $38                                         ; $4e78: $ff
	sub  h                                           ; $4e79: $94
	ld   a, d                                        ; $4e7a: $7a
	rst  JumpTable                                         ; $4e7b: $df
	rst  $38                                         ; $4e7c: $ff
	cp   d                                           ; $4e7d: $ba
	ld   h, l                                        ; $4e7e: $65
	ld   h, a                                        ; $4e7f: $67
	add  a                                           ; $4e80: $87
	ld   b, d                                        ; $4e81: $42
	inc  sp                                          ; $4e82: $33
	ld   hl, $1211                                   ; $4e83: $21 $11 $12
	ld   h, [hl]                                     ; $4e86: $66
	ld   l, b                                        ; $4e87: $68
	sbc  [hl]                                        ; $4e88: $9e
	ld   hl, sp-$53                                  ; $4e89: $f8 $ad
	sbc  e                                           ; $4e8b: $9b
	rst  $38                                         ; $4e8c: $ff
	call z, $ecdd                                    ; $4e8d: $cc $dd $ec
	set  1, [hl]                                     ; $4e90: $cb $ce
	ret                                              ; $4e92: $c9


	ld   [hl], l                                     ; $4e93: $75
	ld   h, [hl]                                     ; $4e94: $66
	ld   sp, $4434                                   ; $4e95: $31 $34 $44
	ld   de, $2511                                   ; $4e98: $11 $11 $25
	sbc  l                                           ; $4e9b: $9d
	db   $ec                                         ; $4e9c: $ec
	ld   [hl], l                                     ; $4e9d: $75
	ld   a, b                                        ; $4e9e: $78
	xor  a                                           ; $4e9f: $af
	rst  $38                                         ; $4ea0: $ff
	ei                                               ; $4ea1: $fb
	and  a                                           ; $4ea2: $a7
	adc  h                                           ; $4ea3: $8c
	xor  $ff                                         ; $4ea4: $ee $ff
	and  [hl]                                        ; $4ea6: $a6
	inc  [hl]                                        ; $4ea7: $34
	ld   l, h                                        ; $4ea8: $6c
	reti                                             ; $4ea9: $d9


	ld   sp, $3211                                   ; $4eaa: $31 $11 $32
	ld   de, $2711                                   ; $4ead: $11 $11 $27
	sbc  d                                           ; $4eb0: $9a
	jp   z, $df55                                    ; $4eb1: $ca $55 $df

	sbc  e                                           ; $4eb4: $9b
	db   $fc                                         ; $4eb5: $fc
	xor  a                                           ; $4eb6: $af
	rst  ToBoot                                         ; $4eb7: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4eb8: $cf
	xor  $fe                                         ; $4eb9: $ee $fe
	halt                                             ; $4ebb: $76
	sub  a                                           ; $4ebc: $97
	adc  e                                           ; $4ebd: $8b
	ld   [hl], d                                     ; $4ebe: $72
	ld   [hl], $42                                   ; $4ebf: $36 $42
	ld   de, $1112                                   ; $4ec1: $11 $12 $11
	inc  de                                          ; $4ec4: $13
	rst  JumpTable                                         ; $4ec5: $df
	ei                                               ; $4ec6: $fb
	ld   h, e                                        ; $4ec7: $63
	ld   c, d                                        ; $4ec8: $4a
	call z, $ecff                                    ; $4ec9: $cc $ff $ec
	and  a                                           ; $4ecc: $a7
	sbc  l                                           ; $4ecd: $9d
	rst  $38                                         ; $4ece: $ff
	rst  $38                                         ; $4ecf: $ff
	and  [hl]                                        ; $4ed0: $a6
	ld   h, l                                        ; $4ed1: $65
	ld   e, b                                        ; $4ed2: $58
	and  a                                           ; $4ed3: $a7
	ld   d, [hl]                                     ; $4ed4: $56
	ld   hl, $1311                                   ; $4ed5: $21 $11 $13
	ld   b, c                                        ; $4ed8: $41
	ld   de, $fe2a                                   ; $4ed9: $11 $2a $fe
	add  a                                           ; $4edc: $87
	add  [hl]                                        ; $4edd: $86
	sbc  a                                           ; $4ede: $9f
	call c, $bbff                                    ; $4edf: $dc $ff $bb
	db   $db                                         ; $4ee2: $db
	xor  a                                           ; $4ee3: $af
	rst  $38                                         ; $4ee4: $ff
	db   $db                                         ; $4ee5: $db
	ld   h, e                                        ; $4ee6: $63
	ld   d, a                                        ; $4ee7: $57
	ld   a, c                                        ; $4ee8: $79
	sub  h                                           ; $4ee9: $94
	ld   bc, $4522                                   ; $4eea: $01 $22 $45
	ld   de, $2911                                   ; $4eed: $11 $11 $29
	halt                                             ; $4ef0: $76
	xor  d                                           ; $4ef1: $aa
	halt                                             ; $4ef2: $76
	cp   l                                           ; $4ef3: $bd
	cp   a                                           ; $4ef4: $bf
	ld   a, [$aabf]                                  ; $4ef5: $fa $bf $aa
	call $fcdf                                       ; $4ef8: $cd $df $fc
	ld   h, [hl]                                     ; $4efb: $66
	ld   [hl], a                                     ; $4efc: $77
	adc  b                                           ; $4efd: $88
	ld   d, l                                        ; $4efe: $55
	ld   h, l                                        ; $4eff: $65
	ld   sp, $7714                                   ; $4f00: $31 $14 $77
	ld   hl, $1711                                   ; $4f03: $21 $11 $17
	xor  [hl]                                        ; $4f06: $ae
	ld   a, [$b935]                                  ; $4f07: $fa $35 $b9
	xor  l                                           ; $4f0a: $ad
	rst  JumpTable                                         ; $4f0b: $df
	cp   $74                                         ; $4f0c: $fe $74
	ld   c, h                                        ; $4f0e: $4c
	rst  $38                                         ; $4f0f: $ff
	db   $fc                                         ; $4f10: $fc
	halt                                             ; $4f11: $76
	ld   d, h                                        ; $4f12: $54
	ld   l, b                                        ; $4f13: $68
	cp   e                                           ; $4f14: $bb
	sub  [hl]                                        ; $4f15: $96
	ld   de, $3523                                   ; $4f16: $11 $23 $35
	ld   h, l                                        ; $4f19: $65
	ld   sp, $1611                                   ; $4f1a: $31 $11 $16
	rst  JumpTable                                         ; $4f1d: $df
	jp   z, $56c8                                    ; $4f1e: $ca $c8 $56

	xor  l                                           ; $4f21: $ad
	rst  $38                                         ; $4f22: $ff
	rst  $10                                         ; $4f23: $d7
	sbc  d                                           ; $4f24: $9a
	xor  h                                           ; $4f25: $ac
	db   $ec                                         ; $4f26: $ec
	sbc  $c5                                         ; $4f27: $de $c5
	ld   b, h                                        ; $4f29: $44
	ld   l, c                                        ; $4f2a: $69
	sbc  b                                           ; $4f2b: $98
	ld   h, d                                        ; $4f2c: $62
	ld   [de], a                                     ; $4f2d: $12
	ld   b, [hl]                                     ; $4f2e: $46
	halt                                             ; $4f2f: $76
	ld   b, d                                        ; $4f30: $42
	ld   de, $3911                                   ; $4f31: $11 $11 $39
	rst  JumpTable                                         ; $4f34: $df
	db   $ec                                         ; $4f35: $ec
	and  h                                           ; $4f36: $a4
	ld   e, l                                        ; $4f37: $5d
	adc  $fd                                         ; $4f38: $ce $fd
	cp   l                                           ; $4f3a: $bd
	ret                                              ; $4f3b: $c9


	adc  d                                           ; $4f3c: $8a
	sbc  $fd                                         ; $4f3d: $de $fd
	ld   h, l                                        ; $4f3f: $65
	ld   h, h                                        ; $4f40: $64
	ld   e, b                                        ; $4f41: $58
	sbc  b                                           ; $4f42: $98
	ld   [hl], l                                     ; $4f43: $75
	ld   hl, $7836                                   ; $4f44: $21 $36 $78
	ld   [hl], h                                     ; $4f47: $74
	ld   de, $5e11                                   ; $4f48: $11 $11 $5e
	db   $fd                                         ; $4f4b: $fd
	add  a                                           ; $4f4c: $87
	adc  d                                           ; $4f4d: $8a
	cp   d                                           ; $4f4e: $ba
	sbc  l                                           ; $4f4f: $9d
	rst  $38                                         ; $4f50: $ff
	rst  ToBoot                                         ; $4f51: $c7
	ld   l, d                                        ; $4f52: $6a
	sbc  $fb                                         ; $4f53: $de $fb
	sbc  d                                           ; $4f55: $9a
	and  [hl]                                        ; $4f56: $a6
	ld   d, [hl]                                     ; $4f57: $56
	ld   a, b                                        ; $4f58: $78
	cp   d                                           ; $4f59: $ba
	ld   d, h                                        ; $4f5a: $54
	ld   b, d                                        ; $4f5b: $42
	ld   [hl], $77                                   ; $4f5c: $36 $77
	ld   h, l                                        ; $4f5e: $65
	ld   de, $6813                                   ; $4f5f: $11 $13 $68
	sbc  l                                           ; $4f62: $9d
	db   $fc                                         ; $4f63: $fc
	and  h                                           ; $4f64: $a4
	add  hl, de                                      ; $4f65: $19
	rst  $38                                         ; $4f66: $ff
	db   $fd                                         ; $4f67: $fd
	xor  c                                           ; $4f68: $a9
	xor  d                                           ; $4f69: $aa
	adc  d                                           ; $4f6a: $8a
	db   $dd                                         ; $4f6b: $dd
	rst  $38                                         ; $4f6c: $ff
	and  [hl]                                        ; $4f6d: $a6
	ld   d, h                                        ; $4f6e: $54
	ld   l, b                                        ; $4f6f: $68
	xor  e                                           ; $4f70: $ab
	sub  [hl]                                        ; $4f71: $96
	ld   hl, $9a26                                   ; $4f72: $21 $26 $9a
	ld   [hl], h                                     ; $4f75: $74
	ld   sp, $1311                                   ; $4f76: $31 $11 $13
	cp   a                                           ; $4f79: $bf
	rst  $38                                         ; $4f7a: $ff
	ld   [hl], c                                     ; $4f7b: $71
	ld   a, [de]                                     ; $4f7c: $1a
	cp   l                                           ; $4f7d: $bd
	rst  $38                                         ; $4f7e: $ff
	jp   z, $3874                                    ; $4f7f: $ca $74 $38

	rst  $38                                         ; $4f82: $ff
	cp   $95                                         ; $4f83: $fe $95
	ld   d, [hl]                                     ; $4f85: $56
	ld   h, a                                        ; $4f86: $67
	call $4185                                       ; $4f87: $cd $85 $41
	ld   d, $78                                      ; $4f8a: $16 $78
	add  [hl]                                        ; $4f8c: $86
	ld   sp, $3413                                   ; $4f8d: $31 $13 $34
	ld   a, d                                        ; $4f90: $7a
	sbc  [hl]                                        ; $4f91: $9e
	rst  $20                                         ; $4f92: $e7
	ld   b, l                                        ; $4f93: $45
	ld   l, d                                        ; $4f94: $6a
	rst  $38                                         ; $4f95: $ff
	jp   hl                                          ; $4f96: $e9


	halt                                             ; $4f97: $76
	sbc  h                                           ; $4f98: $9c
	db   $db                                         ; $4f99: $db
	xor  l                                           ; $4f9a: $ad
	jp   c, Jump_0cd_5775                            ; $4f9b: $da $75 $57

	cp   h                                           ; $4f9e: $bc
	sub  [hl]                                        ; $4f9f: $96
	ld   d, e                                        ; $4fa0: $53
	ld   [hl], $76                                   ; $4fa1: $36 $76
	ld   h, h                                        ; $4fa3: $64
	inc  sp                                          ; $4fa4: $33
	ld   hl, $ce14                                   ; $4fa5: $21 $14 $ce
	and  a                                           ; $4fa8: $a7
	ld   b, e                                        ; $4fa9: $43
	xor  [hl]                                        ; $4faa: $ae
	and  [hl]                                        ; $4fab: $a6
	cp   l                                           ; $4fac: $bd
	xor  $c7                                         ; $4fad: $ee $c7
	ld   e, h                                        ; $4faf: $5c
	ei                                               ; $4fb0: $fb
	call $a7b9                                       ; $4fb1: $cd $b9 $a7
	ld   b, [hl]                                     ; $4fb4: $46
	xor  d                                           ; $4fb5: $aa
	add  a                                           ; $4fb6: $87
	ld   h, l                                        ; $4fb7: $65
	ld   b, h                                        ; $4fb8: $44
	ld   b, h                                        ; $4fb9: $44
	ld   a, c                                        ; $4fba: $79
	ld   h, d                                        ; $4fbb: $62
	ld   de, $7813                                   ; $4fbc: $11 $13 $78
	ld   a, c                                        ; $4fbf: $79
	jp   c, $8678                                    ; $4fc0: $da $78 $86

	sbc  [hl]                                        ; $4fc3: $9e
	db   $fd                                         ; $4fc4: $fd
	res  3, b                                        ; $4fc5: $cb $98
	xor  d                                           ; $4fc7: $aa
	sbc  h                                           ; $4fc8: $9c
	cp   $a8                                         ; $4fc9: $fe $a8
	ld   [hl], h                                     ; $4fcb: $74
	ld   e, b                                        ; $4fcc: $58
	and  a                                           ; $4fcd: $a7
	add  a                                           ; $4fce: $87
	ld   b, e                                        ; $4fcf: $43
	ld   h, [hl]                                     ; $4fd0: $66
	inc  sp                                          ; $4fd1: $33
	ld   b, h                                        ; $4fd2: $44
	inc  hl                                          ; $4fd3: $23
	ld   hl, $a95d                                   ; $4fd4: $21 $5d $a9
	and  [hl]                                        ; $4fd7: $a6
	adc  l                                           ; $4fd8: $8d
	ret  z                                           ; $4fd9: $c8

	ld   a, e                                        ; $4fda: $7b
	rst  $38                                         ; $4fdb: $ff
	reti                                             ; $4fdc: $d9


	ld   c, b                                        ; $4fdd: $48
	rst  JumpTable                                         ; $4fde: $df
	ei                                               ; $4fdf: $fb
	ld   a, e                                        ; $4fe0: $7b
	cp   c                                           ; $4fe1: $b9
	halt                                             ; $4fe2: $76
	ld   l, c                                        ; $4fe3: $69
	cp   d                                           ; $4fe4: $ba
	ld   h, e                                        ; $4fe5: $63
	ld   b, h                                        ; $4fe6: $44
	ld   d, [hl]                                     ; $4fe7: $56
	ld   h, h                                        ; $4fe8: $64
	ld   hl, $1621                                   ; $4fe9: $21 $21 $16
	ld   l, c                                        ; $4fec: $69
	rst  $38                                         ; $4fed: $ff
	sub  e                                           ; $4fee: $93
	ld   e, d                                        ; $4fef: $5a
	sbc  l                                           ; $4ff0: $9d
	ld   a, [$daaf]                                  ; $4ff1: $fa $af $da
	add  a                                           ; $4ff4: $87
	xor  e                                           ; $4ff5: $ab
	rst  $38                                         ; $4ff6: $ff
	cp   b                                           ; $4ff7: $b8
	sub  a                                           ; $4ff8: $97
	ld   d, a                                        ; $4ff9: $57
	adc  d                                           ; $4ffa: $8a
	sbc  b                                           ; $4ffb: $98
	ld   [hl], d                                     ; $4ffc: $72
	inc  d                                           ; $4ffd: $14
	ld   d, [hl]                                     ; $4ffe: $56
	ld   h, h                                        ; $4fff: $64
	ld   hl, $1511                                   ; $5000: $21 $11 $15
	rst  JumpTable                                         ; $5003: $df
	cp   d                                           ; $5004: $ba
	ld   [hl], l                                     ; $5005: $75
	adc  $9b                                         ; $5006: $ce $9b
	jp   c, $b9ef                                    ; $5008: $da $ef $b9

	sbc  e                                           ; $500b: $9b
	call z, $99ec                                    ; $500c: $cc $ec $99
	sub  [hl]                                        ; $500f: $96
	ld   h, [hl]                                     ; $5010: $66
	ld   a, b                                        ; $5011: $78
	sub  a                                           ; $5012: $97
	ld   sp, $5624                                   ; $5013: $31 $24 $56
	ld   h, c                                        ; $5016: $61
	ld   de, $9f11                                   ; $5017: $11 $11 $9f
	cp   $74                                         ; $501a: $fe $74
	ld   e, b                                        ; $501c: $58
	cp   h                                           ; $501d: $bc
	xor  $ff                                         ; $501e: $ee $ff
	ret  c                                           ; $5020: $d8

	ld   d, [hl]                                     ; $5021: $56
	cp   a                                           ; $5022: $bf
	rst  $38                                         ; $5023: $ff
	add  $55                                         ; $5024: $c6 $55
	ld   l, b                                        ; $5026: $68
	sbc  c                                           ; $5027: $99
	sub  a                                           ; $5028: $97
	ld   sp, $6612                                   ; $5029: $31 $12 $66
	ld   d, c                                        ; $502c: $51
	ld   de, $4412                                   ; $502d: $11 $12 $44
	xor  a                                           ; $5030: $af
	cp   $61                                         ; $5031: $fe $61
	dec  sp                                          ; $5033: $3b
	rst  $38                                         ; $5034: $ff
	db   $ed                                         ; $5035: $ed
	sbc  $d7                                         ; $5036: $de $d7
	ld   e, c                                        ; $5038: $59
	rst  $28                                         ; $5039: $ef
	cp   $95                                         ; $503a: $fe $95
	ld   b, e                                        ; $503c: $43
	ld   b, [hl]                                     ; $503d: $46
	xor  h                                           ; $503e: $ac
	ld   [hl], e                                     ; $503f: $73
	ld   de, $4115                                   ; $5040: $11 $15 $41
	ld   de, $ba15                                   ; $5043: $11 $15 $ba
	call $cd87                                       ; $5046: $cd $87 $cd
	adc  b                                           ; $5049: $88
	xor  $ef                                         ; $504a: $ee $ef
	push af                                          ; $504c: $f5
	ld   l, h                                        ; $504d: $6c
	db   $dd                                         ; $504e: $dd
	cp   $88                                         ; $504f: $fe $88
	or   l                                           ; $5051: $b5
	ld   d, $97                                      ; $5052: $16 $97
	ld   h, [hl]                                     ; $5054: $66
	ld   de, $4216                                   ; $5055: $11 $16 $42
	ld   de, $6d11                                   ; $5058: $11 $11 $6d
	ei                                               ; $505b: $fb
	adc  e                                           ; $505c: $8b
	sbc  h                                           ; $505d: $9c
	ld   a, [$ff6d]                                  ; $505e: $fa $6d $ff
	db   $fd                                         ; $5061: $fd
	ld   d, [hl]                                     ; $5062: $56
	rst  JumpTable                                         ; $5063: $df
	cp   $ca                                         ; $5064: $fe $ca
	sbc  c                                           ; $5066: $99
	ld   d, d                                        ; $5067: $52
	scf                                              ; $5068: $37
	sub  a                                           ; $5069: $97
	ld   d, c                                        ; $506a: $51
	ld   de, $1121                                   ; $506b: $11 $21 $11
	ld   de, $dc5c                                   ; $506e: $11 $5c $dc
	and  h                                           ; $5071: $a4
	ld   a, l                                        ; $5072: $7d
	rst  $38                                         ; $5073: $ff
	ret  z                                           ; $5074: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5075: $cf
	rst  $38                                         ; $5076: $ff
	xor  b                                           ; $5077: $a8
	cp   a                                           ; $5078: $bf
	rst  $38                                         ; $5079: $ff
	cp   d                                           ; $507a: $ba
	add  a                                           ; $507b: $87
	ld   [hl], l                                     ; $507c: $75
	ld   h, a                                        ; $507d: $67
	ld   h, h                                        ; $507e: $64
	ld   hl, $1111                                   ; $507f: $21 $11 $11
	ld   de, $7613                                   ; $5082: $11 $13 $76
	xor  [hl]                                        ; $5085: $ae
	call c, $9ca7                                    ; $5086: $dc $a7 $9c
	rst  $38                                         ; $5089: $ff
	rst  $38                                         ; $508a: $ff
	db   $ed                                         ; $508b: $ed
	res  7, h                                        ; $508c: $cb $bc
	rst  $28                                         ; $508e: $ef
	db   $fd                                         ; $508f: $fd
	and  [hl]                                        ; $5090: $a6
	ld   b, e                                        ; $5091: $43
	dec  [hl]                                        ; $5092: $35
	ld   h, h                                        ; $5093: $64
	ld   hl, $0111                                   ; $5094: $21 $11 $01
	ld   de, $dd14                                   ; $5097: $11 $14 $dd
	sbc  l                                           ; $509a: $9d
	push de                                          ; $509b: $d5
	ld   l, e                                        ; $509c: $6b
	rst  JumpTable                                         ; $509d: $df
	rst  $38                                         ; $509e: $ff
	call z, $beec                                    ; $509f: $cc $ec $be
	db   $ed                                         ; $50a2: $ed
	rst  $38                                         ; $50a3: $ff
	rst  ToBoot                                         ; $50a4: $c7
	ld   d, h                                        ; $50a5: $54
	ld   b, l                                        ; $50a6: $45
	sub  [hl]                                        ; $50a7: $96
	ld   hl, $1111                                   ; $50a8: $21 $11 $11
	ld   de, $c91b                                   ; $50ab: $11 $1b $c9
	rst  ToBoot                                         ; $50ae: $c7
	dec  sp                                          ; $50af: $3b
	jp   c, $ffbf                                    ; $50b0: $da $bf $ff

	rst  $38                                         ; $50b3: $ff
	set  5, [hl]                                     ; $50b4: $cb $ee
	rst  JumpTable                                         ; $50b6: $df
	rst  $38                                         ; $50b7: $ff
	db   $db                                         ; $50b8: $db
	add  l                                           ; $50b9: $85
	ld   l, b                                        ; $50ba: $68
	ld   h, h                                        ; $50bb: $64
	ld   sp, $1111                                   ; $50bc: $31 $11 $11
	ld   de, $9d11                                   ; $50bf: $11 $11 $9d
	reti                                             ; $50c2: $d9


	ld   b, [hl]                                     ; $50c3: $46
	sbc  h                                           ; $50c4: $9c
	adc  $de                                         ; $50c5: $ce $de
	rst  $38                                         ; $50c7: $ff
	call c, $ffbb                                    ; $50c8: $dc $bb $ff
	cp   $ec                                         ; $50cb: $fe $ec
	sub  a                                           ; $50cd: $97
	ld   [hl], a                                     ; $50ce: $77
	ld   h, a                                        ; $50cf: $67
	ld   d, c                                        ; $50d0: $51
	ld   de, $1111                                   ; $50d1: $11 $11 $11
	inc  d                                           ; $50d4: $14
	xor  e                                           ; $50d5: $ab
	xor  d                                           ; $50d6: $aa
	add  e                                           ; $50d7: $83
	ld   a, e                                        ; $50d8: $7b
	xor  a                                           ; $50d9: $af
	rst  $38                                         ; $50da: $ff
	rst  $28                                         ; $50db: $ef
	db   $ed                                         ; $50dc: $ed
	rst  JumpTable                                         ; $50dd: $df
	rst  $38                                         ; $50de: $ff
	rst  $38                                         ; $50df: $ff
	call c, Call_0cd_68a6                            ; $50e0: $dc $a6 $68
	sub  [hl]                                        ; $50e3: $96
	ld   d, c                                        ; $50e4: $51
	ld   de, $1111                                   ; $50e5: $11 $11 $11
	ld   [de], a                                     ; $50e8: $12
	call c, Call_0cd_46b8                            ; $50e9: $dc $b8 $46
	sub  a                                           ; $50ec: $97
	cp   [hl]                                        ; $50ed: $be
	rst  $28                                         ; $50ee: $ef
	cp   $dd                                         ; $50ef: $fe $dd
	sbc  $ff                                         ; $50f1: $de $ff
	rst  $38                                         ; $50f3: $ff
	db   $fc                                         ; $50f4: $fc
	add  a                                           ; $50f5: $87
	adc  c                                           ; $50f6: $89
	ld   a, b                                        ; $50f7: $78
	add  d                                           ; $50f8: $82
	ld   de, $1111                                   ; $50f9: $11 $11 $11
	inc  de                                          ; $50fc: $13
	ld   d, a                                        ; $50fd: $57
	cp   e                                           ; $50fe: $bb
	sub  a                                           ; $50ff: $97
	ld   b, l                                        ; $5100: $45
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5101: $cf
	cp   $ed                                         ; $5102: $fe $ed
	rst  $28                                         ; $5104: $ef
	db   $ec                                         ; $5105: $ec
	rst  $28                                         ; $5106: $ef
	rst  $38                                         ; $5107: $ff
	db   $fd                                         ; $5108: $fd
	cp   d                                           ; $5109: $ba
	add  [hl]                                        ; $510a: $86
	ld   a, b                                        ; $510b: $78
	add  e                                           ; $510c: $83
	ld   de, $1111                                   ; $510d: $11 $11 $11
	ld   de, $ef37                                   ; $5110: $11 $37 $ef
	sbc  d                                           ; $5113: $9a
	ld   d, d                                        ; $5114: $52
	ld   l, l                                        ; $5115: $6d
	rst  $38                                         ; $5116: $ff
	rst  $38                                         ; $5117: $ff
	cp   $fc                                         ; $5118: $fe $fc
	cp   l                                           ; $511a: $bd
	rst  $38                                         ; $511b: $ff
	rst  $38                                         ; $511c: $ff
	ret  c                                           ; $511d: $d8

	ld   d, l                                        ; $511e: $55
	ld   b, a                                        ; $511f: $47
	and  [hl]                                        ; $5120: $a6
	ld   de, $1111                                   ; $5121: $11 $11 $11
	ld   de, $ff7f                                   ; $5124: $11 $7f $ff
	or   l                                           ; $5127: $b5
	inc  [hl]                                        ; $5128: $34
	ld   e, c                                        ; $5129: $59
	rst  $38                                         ; $512a: $ff
	rst  $38                                         ; $512b: $ff
	db   $fc                                         ; $512c: $fc
	adc  $cd                                         ; $512d: $ce $cd
	rst  $38                                         ; $512f: $ff
	rst  $38                                         ; $5130: $ff
	rst  $20                                         ; $5131: $e7
	ld   b, [hl]                                     ; $5132: $46
	ld   d, [hl]                                     ; $5133: $56
	sbc  b                                           ; $5134: $98
	ld   hl, $1111                                   ; $5135: $21 $11 $11
	ld   de, $ff79                                   ; $5138: $11 $79 $ff
	xor  d                                           ; $513b: $aa
	ld   h, c                                        ; $513c: $61
	ld   e, d                                        ; $513d: $5a
	rst  $28                                         ; $513e: $ef
	rst  $38                                         ; $513f: $ff
	rst  $28                                         ; $5140: $ef
	ei                                               ; $5141: $fb
	xor  $ff                                         ; $5142: $ee $ff
	rst  $38                                         ; $5144: $ff
	reti                                             ; $5145: $d9


	ld   d, e                                        ; $5146: $53
	ld   d, a                                        ; $5147: $57
	ld   [hl], h                                     ; $5148: $74
	ld   hl, $1111                                   ; $5149: $21 $11 $11
	ld   d, $fb                                      ; $514c: $16 $fb
	rst  $38                                         ; $514e: $ff
	and  a                                           ; $514f: $a7
	ld   h, c                                        ; $5150: $61
	dec  a                                           ; $5151: $3d
	rst  $38                                         ; $5152: $ff
	rst  $38                                         ; $5153: $ff
	sbc  $fd                                         ; $5154: $de $fd
	cp   a                                           ; $5156: $bf
	rst  $38                                         ; $5157: $ff
	rst  $38                                         ; $5158: $ff
	sub  [hl]                                        ; $5159: $96
	ld   h, h                                        ; $515a: $64
	ld   d, [hl]                                     ; $515b: $56
	ld   d, c                                        ; $515c: $51
	ld   de, $1111                                   ; $515d: $11 $11 $11
	add  hl, de                                      ; $5160: $19
	rst  $28                                         ; $5161: $ef
	ei                                               ; $5162: $fb
	sub  [hl]                                        ; $5163: $96
	dec  [hl]                                        ; $5164: $35
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5165: $cf
	rst  $38                                         ; $5166: $ff
	cp   $ff                                         ; $5167: $fe $ff
	call $ffef                                       ; $5169: $cd $ef $ff
	db   $fc                                         ; $516c: $fc
	and  l                                           ; $516d: $a5
	ld   b, l                                        ; $516e: $45
	ld   [hl-], a                                    ; $516f: $32
	ld   de, $1111                                   ; $5170: $11 $11 $11
	ld   de, $ffcf                                   ; $5173: $11 $cf $ff
	rst  $10                                         ; $5176: $d7
	ld   h, [hl]                                     ; $5177: $66
	ld   e, c                                        ; $5178: $59
	rst  $38                                         ; $5179: $ff
	rst  $38                                         ; $517a: $ff
	cp   $fe                                         ; $517b: $fe $fe
	call $ffff                                       ; $517d: $cd $ff $ff
	rst  ToBoot                                         ; $5180: $c7
	ld   h, l                                        ; $5181: $65
	ld   [hl-], a                                    ; $5182: $32
	ld   bc, $1111                                   ; $5183: $01 $11 $11
	ld   de, $ef7a                                   ; $5186: $11 $7a $ef
	rst  $38                                         ; $5189: $ff
	add  h                                           ; $518a: $84
	scf                                              ; $518b: $37
	rst  $28                                         ; $518c: $ef
	rst  $38                                         ; $518d: $ff
	rst  $28                                         ; $518e: $ef
	cp   $de                                         ; $518f: $fe $de
	rst  $38                                         ; $5191: $ff
	rst  $38                                         ; $5192: $ff
	jp   c, $3584                                    ; $5193: $da $84 $35

	ld   sp, $1111                                   ; $5196: $31 $11 $11
	ld   de, $ef3a                                   ; $5199: $11 $3a $ef
	rst  $38                                         ; $519c: $ff
	add  $26                                         ; $519d: $c6 $26
	sbc  e                                           ; $519f: $9b
	rst  $38                                         ; $51a0: $ff
	rst  $28                                         ; $51a1: $ef
	rst  $38                                         ; $51a2: $ff
	rst  JumpTable                                         ; $51a3: $df
	xor  $ff                                         ; $51a4: $ee $ff
	cp   $b6                                         ; $51a6: $fe $b6
	ld   b, h                                        ; $51a8: $44
	ld   [hl-], a                                    ; $51a9: $32
	ld   de, $1111                                   ; $51aa: $11 $11 $11
	ld   d, $9d                                      ; $51ad: $16 $9d
	rst  $38                                         ; $51af: $ff
	db   $fc                                         ; $51b0: $fc
	ld   d, h                                        ; $51b1: $54
	ld   l, b                                        ; $51b2: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51b3: $cf
	xor  $ff                                         ; $51b4: $ee $ff
	rst  $38                                         ; $51b6: $ff
	db   $ed                                         ; $51b7: $ed
	rst  $28                                         ; $51b8: $ef
	rst  $38                                         ; $51b9: $ff
	reti                                             ; $51ba: $d9


	halt                                             ; $51bb: $76
	inc  sp                                          ; $51bc: $33
	ld   hl, $1111                                   ; $51bd: $21 $11 $11
	ld   de, $ff5a                                   ; $51c0: $11 $5a $ff
	rst  $38                                         ; $51c3: $ff
	and  l                                           ; $51c4: $a5
	ld   b, l                                        ; $51c5: $45
	ld   e, c                                        ; $51c6: $59
	rst  $38                                         ; $51c7: $ff
	rst  $28                                         ; $51c8: $ef
	rst  JumpTable                                         ; $51c9: $df
	rst  $38                                         ; $51ca: $ff
	db   $dd                                         ; $51cb: $dd
	rst  $38                                         ; $51cc: $ff
	db   $ed                                         ; $51cd: $ed
	cp   b                                           ; $51ce: $b8
	ld   [hl], l                                     ; $51cf: $75
	inc  [hl]                                        ; $51d0: $34
	ld   de, $1111                                   ; $51d1: $11 $11 $11
	ld   de, $ff9d                                   ; $51d4: $11 $9d $ff
	rst  $38                                         ; $51d7: $ff
	sub  e                                           ; $51d8: $93
	ld   b, l                                        ; $51d9: $45
	ld   c, e                                        ; $51da: $4b
	rst  $38                                         ; $51db: $ff
	xor  $ef                                         ; $51dc: $ee $ef
	cp   $ce                                         ; $51de: $fe $ce
	rst  $38                                         ; $51e0: $ff
	xor  $ca                                         ; $51e1: $ee $ca
	ld   h, l                                        ; $51e3: $65
	ld   [hl-], a                                    ; $51e4: $32
	ld   hl, $1111                                   ; $51e5: $21 $11 $11
	inc  de                                          ; $51e8: $13
	ld   e, [hl]                                     ; $51e9: $5e
	rst  $38                                         ; $51ea: $ff
	rst  $38                                         ; $51eb: $ff
	sub  h                                           ; $51ec: $94
	ld   b, h                                        ; $51ed: $44
	ld   a, [hl+]                                    ; $51ee: $2a
	db   $fd                                         ; $51ef: $fd
	rst  JumpTable                                         ; $51f0: $df
	rst  $38                                         ; $51f1: $ff
	rst  $38                                         ; $51f2: $ff
	rst  $28                                         ; $51f3: $ef
	rst  $38                                         ; $51f4: $ff
	xor  $ba                                         ; $51f5: $ee $ba
	ld   d, d                                        ; $51f7: $52
	ld   sp, $1111                                   ; $51f8: $31 $11 $11
	ld   de, $af16                                   ; $51fb: $11 $16 $af
	rst  $38                                         ; $51fe: $ff

Call_0cd_51ff:
	db   $fd                                         ; $51ff: $fd
	add  d                                           ; $5200: $82
	inc  [hl]                                        ; $5201: $34
	dec  hl                                          ; $5202: $2b
	cp   $ef                                         ; $5203: $fe $ef
	rst  $38                                         ; $5205: $ff
	cp   $df                                         ; $5206: $fe $df
	rst  $38                                         ; $5208: $ff
	rst  $28                                         ; $5209: $ef
	cp   c                                           ; $520a: $b9
	ld   d, c                                        ; $520b: $51
	ld   hl, $1111                                   ; $520c: $21 $11 $11
	ld   de, $cf27                                   ; $520f: $11 $27 $cf
	rst  $38                                         ; $5212: $ff
	db   $fd                                         ; $5213: $fd
	ld   h, h                                        ; $5214: $64
	ld   b, c                                        ; $5215: $41
	dec  a                                           ; $5216: $3d
	xor  $ef                                         ; $5217: $ee $ef
	rst  $38                                         ; $5219: $ff
	cp   $ef                                         ; $521a: $fe $ef
	cp   $ec                                         ; $521c: $fe $ec
	and  a                                           ; $521e: $a7
	ld   de, $1111                                   ; $521f: $11 $11 $11
	ld   de, $7a11                                   ; $5222: $11 $11 $7a
	rst  $38                                         ; $5225: $ff
	rst  $38                                         ; $5226: $ff
	ld   sp, hl                                      ; $5227: $f9
	ld   h, e                                        ; $5228: $63
	ld   de, $ce6c                                   ; $5229: $11 $6c $ce
	rst  $38                                         ; $522c: $ff
	rst  $38                                         ; $522d: $ff
	rst  $38                                         ; $522e: $ff
	rst  $38                                         ; $522f: $ff
	db   $ed                                         ; $5230: $ed
	db   $ec                                         ; $5231: $ec
	add  l                                           ; $5232: $85
	ld   sp, $1111                                   ; $5233: $31 $11 $11
	ld   de, $8b14                                   ; $5236: $11 $14 $8b
	rst  $38                                         ; $5239: $ff
	rst  $38                                         ; $523a: $ff
	jp   hl                                          ; $523b: $e9


	ld   h, d                                        ; $523c: $62
	ld   de, $be6b                                   ; $523d: $11 $6b $be
	rst  $38                                         ; $5240: $ff
	rst  $38                                         ; $5241: $ff
	rst  $38                                         ; $5242: $ff
	db   $fd                                         ; $5243: $fd
	cp   e                                           ; $5244: $bb
	call c, $2185                                    ; $5245: $dc $85 $21
	ld   de, $1111                                   ; $5248: $11 $11 $11
	inc  d                                           ; $524b: $14
	ld   l, l                                        ; $524c: $6d
	rst  $38                                         ; $524d: $ff
	rst  $38                                         ; $524e: $ff
	db   $eb                                         ; $524f: $eb
	ld   [hl], c                                     ; $5250: $71
	ld   de, $9e59                                   ; $5251: $11 $59 $9e
	rst  $38                                         ; $5254: $ff
	rst  $38                                         ; $5255: $ff
	rst  $38                                         ; $5256: $ff
	db   $fd                                         ; $5257: $fd
	cp   e                                           ; $5258: $bb
	jp   z, $2186                                    ; $5259: $ca $86 $21

	ld   de, $1111                                   ; $525c: $11 $11 $11
	dec  d                                           ; $525f: $15
	ld   e, [hl]                                     ; $5260: $5e
	rst  $38                                         ; $5261: $ff
	rst  $38                                         ; $5262: $ff
	db   $ed                                         ; $5263: $ed
	ld   h, c                                        ; $5264: $61
	ld   de, $7c37                                   ; $5265: $11 $37 $7c
	rst  $38                                         ; $5268: $ff
	rst  $38                                         ; $5269: $ff
	rst  $38                                         ; $526a: $ff
	cp   $ab                                         ; $526b: $fe $ab
	cp   c                                           ; $526d: $b9
	halt                                             ; $526e: $76
	ld   b, c                                        ; $526f: $41
	ld   de, $1111                                   ; $5270: $11 $11 $11
	inc  d                                           ; $5273: $14
	ld   e, e                                        ; $5274: $5b
	rst  $38                                         ; $5275: $ff
	rst  $38                                         ; $5276: $ff
	db   $fd                                         ; $5277: $fd
	and  c                                           ; $5278: $a1
	ld   de, $6a15                                   ; $5279: $11 $15 $6a
	rst  $38                                         ; $527c: $ff
	rst  $38                                         ; $527d: $ff
	rst  $38                                         ; $527e: $ff
	cp   $cb                                         ; $527f: $fe $cb
	cp   c                                           ; $5281: $b9
	ld   h, a                                        ; $5282: $67
	ld   b, c                                        ; $5283: $41
	ld   de, $1111                                   ; $5284: $11 $11 $11
	ld   [de], a                                     ; $5287: $12
	jr   c, @+$01                                    ; $5288: $38 $ff

	rst  $38                                         ; $528a: $ff
	rst  $38                                         ; $528b: $ff
	push bc                                          ; $528c: $c5
	ld   de, $5712                                   ; $528d: $11 $12 $57
	rst  JumpTable                                         ; $5290: $df
	rst  $38                                         ; $5291: $ff
	rst  $38                                         ; $5292: $ff
	rst  $38                                         ; $5293: $ff
	db   $eb                                         ; $5294: $eb
	xor  c                                           ; $5295: $a9
	ld   h, [hl]                                     ; $5296: $66
	ld   h, d                                        ; $5297: $62
	ld   de, $1111                                   ; $5298: $11 $11 $11
	ld   de, $ef36                                   ; $529b: $11 $36 $ef
	rst  $38                                         ; $529e: $ff
	rst  $38                                         ; $529f: $ff
	jp   hl                                          ; $52a0: $e9


	ld   de, $3611                                   ; $52a1: $11 $11 $36
	sbc  a                                           ; $52a4: $9f
	rst  $38                                         ; $52a5: $ff
	rst  $38                                         ; $52a6: $ff
	rst  $38                                         ; $52a7: $ff
	db   $fc                                         ; $52a8: $fc
	xor  b                                           ; $52a9: $a8
	ld   h, l                                        ; $52aa: $65
	ld   [hl], e                                     ; $52ab: $73
	ld   de, $1111                                   ; $52ac: $11 $11 $11
	ld   de, $af35                                   ; $52af: $11 $35 $af
	rst  $38                                         ; $52b2: $ff
	rst  $38                                         ; $52b3: $ff
	db   $fc                                         ; $52b4: $fc
	ld   b, c                                        ; $52b5: $41
	ld   de, $6d25                                   ; $52b6: $11 $25 $6d
	rst  $38                                         ; $52b9: $ff
	rst  $38                                         ; $52ba: $ff
	rst  $38                                         ; $52bb: $ff
	cp   $b9                                         ; $52bc: $fe $b9
	ld   [hl], h                                     ; $52be: $74
	ld   d, l                                        ; $52bf: $55
	ld   de, $1111                                   ; $52c0: $11 $11 $11
	ld   de, $9f44                                   ; $52c3: $11 $44 $9f
	rst  $38                                         ; $52c6: $ff
	rst  $38                                         ; $52c7: $ff

Call_0cd_52c8:
	db   $fd                                         ; $52c8: $fd
	ld   d, c                                        ; $52c9: $51
	ld   de, $7a14                                   ; $52ca: $11 $14 $7a
	rst  $38                                         ; $52cd: $ff
	rst  $38                                         ; $52ce: $ff
	rst  $38                                         ; $52cf: $ff
	cp   $b9                                         ; $52d0: $fe $b9
	ld   [hl], l                                     ; $52d2: $75
	ld   d, l                                        ; $52d3: $55
	ld   de, $1111                                   ; $52d4: $11 $11 $11
	ld   de, $8f24                                   ; $52d7: $11 $24 $8f
	rst  $38                                         ; $52da: $ff
	rst  $38                                         ; $52db: $ff
	rst  $38                                         ; $52dc: $ff
	sub  d                                           ; $52dd: $92
	ld   de, $7812                                   ; $52de: $11 $12 $78
	rst  $28                                         ; $52e1: $ef
	rst  $38                                         ; $52e2: $ff
	rst  $38                                         ; $52e3: $ff
	rst  $38                                         ; $52e4: $ff
	jp   c, $4376                                    ; $52e5: $da $76 $43

	ld   de, $1111                                   ; $52e8: $11 $11 $11
	ld   de, $bf55                                   ; $52eb: $11 $55 $bf
	rst  $38                                         ; $52ee: $ff
	rst  $38                                         ; $52ef: $ff
	db   $fd                                         ; $52f0: $fd
	ld   [hl], c                                     ; $52f1: $71
	ld   de, $8a11                                   ; $52f2: $11 $11 $8a
	rst  $38                                         ; $52f5: $ff
	rst  $38                                         ; $52f6: $ff
	rst  $38                                         ; $52f7: $ff
	rst  $38                                         ; $52f8: $ff
	ret                                              ; $52f9: $c9


	ld   h, [hl]                                     ; $52fa: $66
	ld   b, e                                        ; $52fb: $43
	ld   de, $1111                                   ; $52fc: $11 $11 $11
	ld   de, $bf55                                   ; $52ff: $11 $55 $bf
	rst  $38                                         ; $5302: $ff
	rst  $38                                         ; $5303: $ff
	db   $fd                                         ; $5304: $fd
	add  d                                           ; $5305: $82
	ld   de, $7912                                   ; $5306: $11 $12 $79
	rst  JumpTable                                         ; $5309: $df
	rst  $38                                         ; $530a: $ff
	rst  $38                                         ; $530b: $ff
	rst  $38                                         ; $530c: $ff
	reti                                             ; $530d: $d9


	ld   h, l                                        ; $530e: $65
	ld   [hl-], a                                    ; $530f: $32
	ld   de, $1111                                   ; $5310: $11 $11 $11
	ld   [de], a                                     ; $5313: $12
	ld   d, a                                        ; $5314: $57
	rst  $28                                         ; $5315: $ef
	rst  $38                                         ; $5316: $ff
	rst  $38                                         ; $5317: $ff
	ld   a, [$1161]                                  ; $5318: $fa $61 $11
	ld   [de], a                                     ; $531b: $12
	sbc  d                                           ; $531c: $9a
	rst  $28                                         ; $531d: $ef
	rst  $38                                         ; $531e: $ff
	rst  $38                                         ; $531f: $ff
	rst  $38                                         ; $5320: $ff
	rst  ToBoot                                         ; $5321: $c7
	ld   h, l                                        ; $5322: $65
	ld   hl, $1111                                   ; $5323: $21 $11 $11
	ld   de, $6a13                                   ; $5326: $11 $13 $6a
	rst  $38                                         ; $5329: $ff
	rst  $38                                         ; $532a: $ff
	rst  $38                                         ; $532b: $ff
	add  sp, $41                                     ; $532c: $e8 $41
	ld   de, $9b13                                   ; $532e: $11 $13 $9b
	rst  $38                                         ; $5331: $ff
	rst  $38                                         ; $5332: $ff
	rst  $38                                         ; $5333: $ff
	rst  $38                                         ; $5334: $ff
	or   a                                           ; $5335: $b7
	ld   h, h                                        ; $5336: $64
	ld   de, $1111                                   ; $5337: $11 $11 $11
	ld   de, $7d15                                   ; $533a: $11 $15 $7d
	rst  $38                                         ; $533d: $ff
	rst  $38                                         ; $533e: $ff
	rst  $38                                         ; $533f: $ff
	reti                                             ; $5340: $d9


Call_0cd_5341:
	ld   sp, $1311                                   ; $5341: $31 $11 $13
	sbc  l                                           ; $5344: $9d
	rst  $38                                         ; $5345: $ff
	rst  $38                                         ; $5346: $ff
	rst  $38                                         ; $5347: $ff
	rst  $38                                         ; $5348: $ff
	and  a                                           ; $5349: $a7
	ld   h, e                                        ; $534a: $63
	ld   de, $1111                                   ; $534b: $11 $11 $11
	ld   de, $7f36                                   ; $534e: $11 $36 $7f
	rst  $38                                         ; $5351: $ff
	rst  $38                                         ; $5352: $ff
	rst  $38                                         ; $5353: $ff
	rst  ToBoot                                         ; $5354: $c7
	ld   hl, $1311                                   ; $5355: $21 $11 $13
	adc  l                                           ; $5358: $8d
	rst  $38                                         ; $5359: $ff
	rst  $38                                         ; $535a: $ff
	rst  $38                                         ; $535b: $ff
	cp   $97                                         ; $535c: $fe $97
	ld   d, d                                        ; $535e: $52
	ld   de, $1111                                   ; $535f: $11 $11 $11
	ld   de, $8f47                                   ; $5362: $11 $47 $8f
	rst  $38                                         ; $5365: $ff
	rst  $38                                         ; $5366: $ff
	rst  $38                                         ; $5367: $ff
	and  [hl]                                        ; $5368: $a6
	ld   de, $1211                                   ; $5369: $11 $11 $12
	adc  [hl]                                        ; $536c: $8e
	rst  $38                                         ; $536d: $ff
	rst  $38                                         ; $536e: $ff
	rst  $38                                         ; $536f: $ff
	rst  $38                                         ; $5370: $ff
	and  a                                           ; $5371: $a7
	ld   b, d                                        ; $5372: $42
	ld   de, $1111                                   ; $5373: $11 $11 $11
	ld   de, $cf67                                   ; $5376: $11 $67 $cf
	rst  $38                                         ; $5379: $ff
	rst  $38                                         ; $537a: $ff
	db   $fc                                         ; $537b: $fc
	add  h                                           ; $537c: $84
	ld   de, $1111                                   ; $537d: $11 $11 $11
	adc  [hl]                                        ; $5380: $8e
	rst  $38                                         ; $5381: $ff
	rst  $38                                         ; $5382: $ff
	rst  $38                                         ; $5383: $ff
	db   $fd                                         ; $5384: $fd
	and  a                                           ; $5385: $a7
	ld   hl, $1111                                   ; $5386: $21 $11 $11
	ld   de, $6712                                   ; $5389: $11 $12 $67
	rst  $38                                         ; $538c: $ff
	rst  $38                                         ; $538d: $ff
	rst  $38                                         ; $538e: $ff
	ei                                               ; $538f: $fb
	add  e                                           ; $5390: $83
	ld   de, $1111                                   ; $5391: $11 $11 $11
	adc  a                                           ; $5394: $8f
	rst  $38                                         ; $5395: $ff

Jump_0cd_5396:
	rst  $38                                         ; $5396: $ff

Call_0cd_5397:
	rst  $38                                         ; $5397: $ff
	cp   $a7                                         ; $5398: $fe $a7
	ld   hl, $1111                                   ; $539a: $21 $11 $11
	ld   de, $7812                                   ; $539d: $11 $12 $78
	rst  $38                                         ; $53a0: $ff
	rst  $38                                         ; $53a1: $ff
	rst  $38                                         ; $53a2: $ff
	ld   sp, hl                                      ; $53a3: $f9
	ld   [hl], d                                     ; $53a4: $72
	ld   de, $1111                                   ; $53a5: $11 $11 $11
	adc  a                                           ; $53a8: $8f
	rst  $38                                         ; $53a9: $ff
	rst  $38                                         ; $53aa: $ff
	rst  $38                                         ; $53ab: $ff
	cp   $a6                                         ; $53ac: $fe $a6
	ld   hl, $1111                                   ; $53ae: $21 $11 $11
	ld   de, $7b13                                   ; $53b1: $11 $13 $7b
	rst  $38                                         ; $53b4: $ff
	rst  $38                                         ; $53b5: $ff
	rst  $38                                         ; $53b6: $ff
	jp   hl                                          ; $53b7: $e9


Call_0cd_53b8:
	ld   h, c                                        ; $53b8: $61
	ld   de, $1111                                   ; $53b9: $11 $11 $11
	adc  a                                           ; $53bc: $8f
	rst  $38                                         ; $53bd: $ff
	rst  $38                                         ; $53be: $ff
	rst  $38                                         ; $53bf: $ff
	rst  $38                                         ; $53c0: $ff
	sub  [hl]                                        ; $53c1: $96
	ld   hl, $1111                                   ; $53c2: $21 $11 $11
	ld   de, $6c15                                   ; $53c5: $11 $15 $6c
	rst  $38                                         ; $53c8: $ff
	rst  $38                                         ; $53c9: $ff
	rst  $38                                         ; $53ca: $ff
	ld   [$1161], a                                  ; $53cb: $ea $61 $11
	ld   de, $7e11                                   ; $53ce: $11 $11 $7e
	rst  $38                                         ; $53d1: $ff
	rst  $38                                         ; $53d2: $ff
	rst  $38                                         ; $53d3: $ff
	rst  $38                                         ; $53d4: $ff
	or   [hl]                                        ; $53d5: $b6
	ld   hl, $1111                                   ; $53d6: $21 $11 $11
	ld   de, $5d15                                   ; $53d9: $11 $15 $5d
	rst  $38                                         ; $53dc: $ff
	rst  $38                                         ; $53dd: $ff
	rst  $38                                         ; $53de: $ff
	ld   [$1161], a                                  ; $53df: $ea $61 $11
	ld   de, $6c11                                   ; $53e2: $11 $11 $6c
	rst  $38                                         ; $53e5: $ff
	rst  $38                                         ; $53e6: $ff
	rst  $38                                         ; $53e7: $ff
	rst  $38                                         ; $53e8: $ff
	add  $31                                         ; $53e9: $c6 $31
	ld   de, $1111                                   ; $53eb: $11 $11 $11
	inc  d                                           ; $53ee: $14
	ld   c, l                                        ; $53ef: $4d
	rst  $38                                         ; $53f0: $ff
	rst  $38                                         ; $53f1: $ff
	rst  $38                                         ; $53f2: $ff
	db   $eb                                         ; $53f3: $eb
	ld   [hl], d                                     ; $53f4: $72
	ld   de, $1111                                   ; $53f5: $11 $11 $11
	ld   e, e                                        ; $53f8: $5b
	rst  $38                                         ; $53f9: $ff

Jump_0cd_53fa:
	rst  $38                                         ; $53fa: $ff
	rst  $38                                         ; $53fb: $ff
	rst  $38                                         ; $53fc: $ff
	add  sp, $31                                     ; $53fd: $e8 $31
	ld   de, $1111                                   ; $53ff: $11 $11 $11
	inc  d                                           ; $5402: $14
	ld   a, [hl-]                                    ; $5403: $3a
	rst  $38                                         ; $5404: $ff
	rst  $38                                         ; $5405: $ff
	rst  $38                                         ; $5406: $ff
	db   $fc                                         ; $5407: $fc
	sub  e                                           ; $5408: $93
	ld   de, $1111                                   ; $5409: $11 $11 $11
	jr   c, @+$01                                    ; $540c: $38 $ff

	rst  $38                                         ; $540e: $ff
	rst  $38                                         ; $540f: $ff
	rst  $38                                         ; $5410: $ff
	ld   sp, hl                                      ; $5411: $f9
	ld   b, d                                        ; $5412: $42
	ld   de, $1111                                   ; $5413: $11 $11 $11
	inc  de                                          ; $5416: $13
	daa                                              ; $5417: $27
	rst  $38                                         ; $5418: $ff
	rst  $38                                         ; $5419: $ff
	rst  $38                                         ; $541a: $ff
	db   $fd                                         ; $541b: $fd
	and  h                                           ; $541c: $a4
	ld   de, $1111                                   ; $541d: $11 $11 $11
	dec  d                                           ; $5420: $15
	rst  $28                                         ; $5421: $ef
	rst  $38                                         ; $5422: $ff
	rst  $38                                         ; $5423: $ff
	rst  $38                                         ; $5424: $ff
	db   $fc                                         ; $5425: $fc
	ld   d, e                                        ; $5426: $53
	ld   de, $1111                                   ; $5427: $11 $11 $11
	ld   de, $ff15                                   ; $542a: $11 $15 $ff
	rst  $38                                         ; $542d: $ff
	rst  $38                                         ; $542e: $ff
	rst  $38                                         ; $542f: $ff
	or   [hl]                                        ; $5430: $b6
	ld   de, $1111                                   ; $5431: $11 $11 $11
	inc  de                                          ; $5434: $13
	rst  JumpTable                                         ; $5435: $df
	rst  $38                                         ; $5436: $ff
	rst  $38                                         ; $5437: $ff
	rst  $38                                         ; $5438: $ff
	rst  $38                                         ; $5439: $ff
	ld   [hl], h                                     ; $543a: $74
	ld   de, $1111                                   ; $543b: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $543e: $11 $12 $ff
	rst  $38                                         ; $5441: $ff
	rst  $38                                         ; $5442: $ff
	rst  $38                                         ; $5443: $ff
	add  sp, $31                                     ; $5444: $e8 $31
	ld   de, $1111                                   ; $5446: $11 $11 $11
	xor  a                                           ; $5449: $af
	rst  $38                                         ; $544a: $ff
	rst  $38                                         ; $544b: $ff
	rst  $38                                         ; $544c: $ff
	rst  $38                                         ; $544d: $ff
	and  [hl]                                        ; $544e: $a6
	ld   de, $1111                                   ; $544f: $11 $11 $11
	ld   de, $cf11                                   ; $5452: $11 $11 $cf
	rst  $38                                         ; $5455: $ff
	rst  $38                                         ; $5456: $ff
	rst  $38                                         ; $5457: $ff
	ei                                               ; $5458: $fb
	ld   h, c                                        ; $5459: $61
	ld   de, $1111                                   ; $545a: $11 $11 $11
	ld   e, [hl]                                     ; $545d: $5e
	rst  $38                                         ; $545e: $ff
	rst  $38                                         ; $545f: $ff
	rst  $38                                         ; $5460: $ff
	rst  $38                                         ; $5461: $ff
	jp   hl                                          ; $5462: $e9


	ld   sp, $1111                                   ; $5463: $31 $11 $11
	ld   de, $8f11                                   ; $5466: $11 $11 $8f
	rst  $38                                         ; $5469: $ff
	rst  $38                                         ; $546a: $ff
	rst  $38                                         ; $546b: $ff
	db   $fd                                         ; $546c: $fd
	add  e                                           ; $546d: $83
	ld   de, $1111                                   ; $546e: $11 $11 $11
	ld   a, [hl+]                                    ; $5471: $2a
	rst  JumpTable                                         ; $5472: $df
	rst  $38                                         ; $5473: $ff
	rst  $38                                         ; $5474: $ff
	rst  $38                                         ; $5475: $ff
	ei                                               ; $5476: $fb
	ld   h, c                                        ; $5477: $61
	ld   de, $1111                                   ; $5478: $11 $11 $11
	ld   de, $ff4e                                   ; $547b: $11 $4e $ff
	rst  $38                                         ; $547e: $ff
	rst  $38                                         ; $547f: $ff
	rst  $38                                         ; $5480: $ff
	rst  ToBoot                                         ; $5481: $c7
	ld   de, $1111                                   ; $5482: $11 $11 $11
	rla                                              ; $5485: $17
	xor  l                                           ; $5486: $ad
	rst  $38                                         ; $5487: $ff
	rst  $38                                         ; $5488: $ff
	rst  $38                                         ; $5489: $ff
	cp   $91                                         ; $548a: $fe $91
	ld   de, $1111                                   ; $548c: $11 $11 $11
	ld   de, $ff1b                                   ; $548f: $11 $1b $ff
	rst  $38                                         ; $5492: $ff
	rst  $38                                         ; $5493: $ff
	rst  $38                                         ; $5494: $ff
	db   $fc                                         ; $5495: $fc
	ld   hl, $1111                                   ; $5496: $21 $11 $11
	inc  de                                          ; $5499: $13
	ld   a, e                                        ; $549a: $7b
	rst  $38                                         ; $549b: $ff
	rst  $38                                         ; $549c: $ff
	rst  $38                                         ; $549d: $ff
	rst  $38                                         ; $549e: $ff
	and  e                                           ; $549f: $a3
	ld   de, $1111                                   ; $54a0: $11 $11 $11
	ld   de, $cf27                                   ; $54a3: $11 $27 $cf
	rst  $38                                         ; $54a6: $ff
	rst  $38                                         ; $54a7: $ff
	rst  $38                                         ; $54a8: $ff
	ei                                               ; $54a9: $fb
	ld   [hl], l                                     ; $54aa: $75
	ld   [hl+], a                                    ; $54ab: $22
	ld   de, $5813                                   ; $54ac: $11 $13 $58
	xor  [hl]                                        ; $54af: $ae
	rst  $38                                         ; $54b0: $ff
	rst  $38                                         ; $54b1: $ff
	ret                                              ; $54b2: $c9


	ld   sp, $1112                                   ; $54b3: $31 $12 $11
	ld   de, $5924                                   ; $54b6: $11 $24 $59
	rst  $28                                         ; $54b9: $ef
	cp   $ff                                         ; $54ba: $fe $ff
	db   $ec                                         ; $54bc: $ec
	xor  c                                           ; $54bd: $a9
	cp   b                                           ; $54be: $b8
	ld   d, l                                        ; $54bf: $55
	ld   l, b                                        ; $54c0: $68
	add  a                                           ; $54c1: $87
	sbc  d                                           ; $54c2: $9a
	jp   z, Jump_0cd_74a9                            ; $54c3: $ca $a9 $74

	dec  [hl]                                        ; $54c6: $35
	ld   h, e                                        ; $54c7: $63
	ld   de, $5525                                   ; $54c8: $11 $25 $55
	ld   l, b                                        ; $54cb: $68
	cp   h                                           ; $54cc: $bc
	cp   e                                           ; $54cd: $bb
	cp   h                                           ; $54ce: $bc
	ret                                              ; $54cf: $c9


	sbc  c                                           ; $54d0: $99
	adc  b                                           ; $54d1: $88
	halt                                             ; $54d2: $76
	ld   a, b                                        ; $54d3: $78
	adc  b                                           ; $54d4: $88
	sbc  d                                           ; $54d5: $9a
	xor  h                                           ; $54d6: $ac
	cp   h                                           ; $54d7: $bc
	cp   d                                           ; $54d8: $ba
	xor  c                                           ; $54d9: $a9
	add  a                                           ; $54da: $87
	ld   h, l                                        ; $54db: $65
	ld   b, h                                        ; $54dc: $44
	ld   b, h                                        ; $54dd: $44
	ld   b, h                                        ; $54de: $44
	ld   d, l                                        ; $54df: $55
	ld   h, a                                        ; $54e0: $67
	ld   a, b                                        ; $54e1: $78
	adc  b                                           ; $54e2: $88
	adc  b                                           ; $54e3: $88
	add  a                                           ; $54e4: $87
	ld   [hl], a                                     ; $54e5: $77
	ld   a, b                                        ; $54e6: $78
	adc  c                                           ; $54e7: $89
	sbc  e                                           ; $54e8: $9b
	cp   h                                           ; $54e9: $bc
	db   $dd                                         ; $54ea: $dd
	db   $dd                                         ; $54eb: $dd
	call z, $98bb                                    ; $54ec: $cc $bb $98
	halt                                             ; $54ef: $76
	ld   d, h                                        ; $54f0: $54
	ld   b, h                                        ; $54f1: $44
	ld   b, h                                        ; $54f2: $44
	ld   b, h                                        ; $54f3: $44
	ld   d, l                                        ; $54f4: $55
	ld   h, [hl]                                     ; $54f5: $66
	ld   h, a                                        ; $54f6: $67
	ld   [hl], a                                     ; $54f7: $77
	ld   [hl], a                                     ; $54f8: $77
	ld   [hl], a                                     ; $54f9: $77
	ld   [hl], a                                     ; $54fa: $77
	adc  b                                           ; $54fb: $88
	xor  d                                           ; $54fc: $aa
	xor  e                                           ; $54fd: $ab
	cp   l                                           ; $54fe: $bd
	call $ccdc                                       ; $54ff: $cd $dc $cc
	cp   d                                           ; $5502: $ba
	xor  b                                           ; $5503: $a8
	add  a                                           ; $5504: $87
	ld   h, l                                        ; $5505: $65
	ld   d, l                                        ; $5506: $55
	ld   b, h                                        ; $5507: $44
	ld   b, h                                        ; $5508: $44
	ld   d, l                                        ; $5509: $55
	ld   d, l                                        ; $550a: $55
	ld   d, [hl]                                     ; $550b: $56
	ld   h, [hl]                                     ; $550c: $66
	ld   h, [hl]                                     ; $550d: $66
	ld   h, a                                        ; $550e: $67
	ld   a, b                                        ; $550f: $78
	sbc  c                                           ; $5510: $99
	sbc  e                                           ; $5511: $9b
	cp   h                                           ; $5512: $bc
	cp   e                                           ; $5513: $bb
	call z, $cbcb                                    ; $5514: $cc $cb $cb
	cp   e                                           ; $5517: $bb
	xor  d                                           ; $5518: $aa
	sbc  b                                           ; $5519: $98
	adc  b                                           ; $551a: $88
	halt                                             ; $551b: $76
	ld   h, l                                        ; $551c: $65
	ld   d, l                                        ; $551d: $55
	ld   b, h                                        ; $551e: $44
	ld   b, h                                        ; $551f: $44
	ld   d, l                                        ; $5520: $55
	ld   d, l                                        ; $5521: $55
	ld   h, [hl]                                     ; $5522: $66
	ld   h, a                                        ; $5523: $67
	ld   a, b                                        ; $5524: $78
	adc  c                                           ; $5525: $89
	xor  d                                           ; $5526: $aa
	xor  e                                           ; $5527: $ab
	xor  d                                           ; $5528: $aa
	xor  e                                           ; $5529: $ab
	cp   d                                           ; $552a: $ba
	xor  d                                           ; $552b: $aa
	cp   d                                           ; $552c: $ba
	cp   e                                           ; $552d: $bb
	xor  d                                           ; $552e: $aa
	sbc  c                                           ; $552f: $99
	adc  b                                           ; $5530: $88
	halt                                             ; $5531: $76
	ld   h, l                                        ; $5532: $65
	ld   d, h                                        ; $5533: $54
	ld   b, h                                        ; $5534: $44
	ld   b, h                                        ; $5535: $44
	ld   d, l                                        ; $5536: $55
	ld   h, [hl]                                     ; $5537: $66
	ld   [hl], a                                     ; $5538: $77
	ld   a, b                                        ; $5539: $78
	sbc  b                                           ; $553a: $98
	sbc  c                                           ; $553b: $99
	sbc  d                                           ; $553c: $9a
	sbc  c                                           ; $553d: $99
	sbc  c                                           ; $553e: $99
	xor  d                                           ; $553f: $aa
	xor  d                                           ; $5540: $aa
	cp   d                                           ; $5541: $ba
	xor  d                                           ; $5542: $aa
	cp   d                                           ; $5543: $ba

jr_0cd_5544:
	xor  d                                           ; $5544: $aa
	sbc  c                                           ; $5545: $99
	add  a                                           ; $5546: $87
	halt                                             ; $5547: $76
	ld   d, l                                        ; $5548: $55
	ld   b, h                                        ; $5549: $44
	ld   b, h                                        ; $554a: $44
	ld   d, l                                        ; $554b: $55
	ld   d, [hl]                                     ; $554c: $56
	ld   h, a                                        ; $554d: $67
	ld   [hl], a                                     ; $554e: $77
	adc  b                                           ; $554f: $88
	sbc  b                                           ; $5550: $98
	adc  b                                           ; $5551: $88
	adc  c                                           ; $5552: $89
	sbc  c                                           ; $5553: $99
	sbc  d                                           ; $5554: $9a
	sbc  d                                           ; $5555: $9a
	xor  d                                           ; $5556: $aa
	cp   d                                           ; $5557: $ba
	xor  d                                           ; $5558: $aa
	xor  e                                           ; $5559: $ab
	xor  c                                           ; $555a: $a9
	xor  c                                           ; $555b: $a9
	sub  a                                           ; $555c: $97
	halt                                             ; $555d: $76
	ld   d, l                                        ; $555e: $55
	ld   d, h                                        ; $555f: $54
	ld   b, l                                        ; $5560: $45
	ld   d, l                                        ; $5561: $55
	ld   h, [hl]                                     ; $5562: $66
	ld   h, a                                        ; $5563: $67
	ld   [hl], a                                     ; $5564: $77
	adc  b                                           ; $5565: $88
	adc  b                                           ; $5566: $88
	sbc  c                                           ; $5567: $99
	sbc  b                                           ; $5568: $98
	sbc  d                                           ; $5569: $9a
	sbc  c                                           ; $556a: $99
	xor  d                                           ; $556b: $aa
	db   $dd                                         ; $556c: $dd
	cp   c                                           ; $556d: $b9
	xor  e                                           ; $556e: $ab
	ret                                              ; $556f: $c9


	sbc  c                                           ; $5570: $99
	halt                                             ; $5571: $76
	halt                                             ; $5572: $76
	ld   d, l                                        ; $5573: $55
	ld   b, h                                        ; $5574: $44
	ld   b, l                                        ; $5575: $45
	ld   d, h                                        ; $5576: $54
	ld   d, [hl]                                     ; $5577: $56
	ld   [hl], a                                     ; $5578: $77
	ld   [hl], a                                     ; $5579: $77
	adc  d                                           ; $557a: $8a
	sbc  c                                           ; $557b: $99
	sbc  c                                           ; $557c: $99
	cp   e                                           ; $557d: $bb
	sbc  e                                           ; $557e: $9b
	cp   h                                           ; $557f: $bc
	cp   e                                           ; $5580: $bb
	set  1, e                                        ; $5581: $cb $cb
	adc  c                                           ; $5583: $89
	sub  [hl]                                        ; $5584: $96
	ld   b, d                                        ; $5585: $42
	ld   b, a                                        ; $5586: $47
	ld   sp, $5513                                   ; $5587: $31 $13 $55
	inc  [hl]                                        ; $558a: $34
	adc  e                                           ; $558b: $8b
	xor  b                                           ; $558c: $a8
	cp   e                                           ; $558d: $bb
	call c, $cdaa                                    ; $558e: $dc $aa $cd
	cp   c                                           ; $5591: $b9
	adc  e                                           ; $5592: $8b
	res  3, c                                        ; $5593: $cb $99
	jp   z, $1285                                    ; $5595: $ca $85 $12

	ld   d, h                                        ; $5598: $54
	ld   hl, $5514                                   ; $5599: $21 $14 $55
	ld   b, [hl]                                     ; $559c: $46
	cp   h                                           ; $559d: $bc
	cp   e                                           ; $559e: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $559f: $cf
	db   $ec                                         ; $55a0: $ec
	xor  l                                           ; $55a1: $ad
	db   $ec                                         ; $55a2: $ec
	adc  b                                           ; $55a3: $88
	xor  d                                           ; $55a4: $aa
	sub  a                                           ; $55a5: $97
	ld   l, c                                        ; $55a6: $69

Call_0cd_55a7:
	add  d                                           ; $55a7: $82
	ld   de, $1156                                   ; $55a8: $11 $56 $11
	jr   jr_0cd_5544                                 ; $55ab: $18 $97

	ld   e, c                                        ; $55ad: $59
	rst  $38                                         ; $55ae: $ff
	db   $db                                         ; $55af: $db
	rst  $38                                         ; $55b0: $ff
	ei                                               ; $55b1: $fb
	sbc  e                                           ; $55b2: $9b
	db   $eb                                         ; $55b3: $eb
	ld   h, [hl]                                     ; $55b4: $66
	adc  c                                           ; $55b5: $89
	ld   h, d                                        ; $55b6: $62
	ld   de, $2111                                   ; $55b7: $11 $11 $21
	ld   [de], a                                     ; $55ba: $12
	ld   l, b                                        ; $55bb: $68
	xor  d                                           ; $55bc: $aa
	rst  JumpTable                                         ; $55bd: $df
	rst  $38                                         ; $55be: $ff
	rst  $38                                         ; $55bf: $ff
	rst  $38                                         ; $55c0: $ff
	ld   [$a69b], a                                  ; $55c1: $ea $9b $a6
	ld   d, h                                        ; $55c4: $54
	ld   d, h                                        ; $55c5: $54
	ld   de, $5111                                   ; $55c6: $11 $11 $51
	ld   de, $c87e                                   ; $55c9: $11 $7e $c8
	rst  JumpTable                                         ; $55cc: $df
	rst  $38                                         ; $55cd: $ff
	rst  JumpTable                                         ; $55ce: $df
	rst  $38                                         ; $55cf: $ff
	push bc                                          ; $55d0: $c5
	sbc  l                                           ; $55d1: $9d
	and  h                                           ; $55d2: $a4
	inc  h                                           ; $55d3: $24
	ld   [hl], d                                     ; $55d4: $72
	ld   de, $111a                                   ; $55d5: $11 $1a $11
	rla                                              ; $55d8: $17
	rst  $38                                         ; $55d9: $ff
	adc  d                                           ; $55da: $8a
	rst  $38                                         ; $55db: $ff
	db   $fc                                         ; $55dc: $fc
	rst  $38                                         ; $55dd: $ff
	db   $fc                                         ; $55de: $fc
	ld   [hl], $e9                                   ; $55df: $36 $e9
	ld   hl, $1126                                   ; $55e1: $21 $26 $11
	inc  de                                          ; $55e4: $13
	or   c                                           ; $55e5: $b1
	ld   de, $f7bf                                   ; $55e6: $11 $bf $f7
	rst  JumpTable                                         ; $55e9: $df
	rst  $38                                         ; $55ea: $ff
	cp   a                                           ; $55eb: $bf
	rst  $38                                         ; $55ec: $ff
	ld   [hl], c                                     ; $55ed: $71
	sbc  a                                           ; $55ee: $9f
	ld   h, c                                        ; $55ef: $61
	inc  de                                          ; $55f0: $13
	ld   b, c                                        ; $55f1: $41
	ld   de, $11a3                                   ; $55f2: $11 $a3 $11
	ld   a, a                                        ; $55f5: $7f
	ld   a, [$ff9f]                                  ; $55f6: $fa $9f $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55f9: $cf
	rst  $38                                         ; $55fa: $ff
	or   c                                           ; $55fb: $b1
	ld   e, a                                        ; $55fc: $5f
	sub  c                                           ; $55fd: $91
	ld   de, $1111                                   ; $55fe: $11 $11 $11
	ld   d, c                                        ; $5601: $51
	ld   de, $ff9f                                   ; $5602: $11 $9f $ff
	rst  JumpTable                                         ; $5605: $df
	rst  $38                                         ; $5606: $ff
	rst  $38                                         ; $5607: $ff
	rst  $38                                         ; $5608: $ff
	add  c                                           ; $5609: $81
	adc  e                                           ; $560a: $8b
	ld   d, c                                        ; $560b: $51
	ld   de, $1111                                   ; $560c: $11 $11 $11
	ld   [de], a                                     ; $560f: $12
	ld   c, e                                        ; $5610: $4b
	rst  $38                                         ; $5611: $ff
	rst  $38                                         ; $5612: $ff
	rst  $38                                         ; $5613: $ff
	rst  $38                                         ; $5614: $ff
	cp   $c6                                         ; $5615: $fe $c6
	ld   c, d                                        ; $5617: $4a
	ld   h, d                                        ; $5618: $62
	ld   de, $1411                                   ; $5619: $11 $11 $14
	ld   de, $ff37                                   ; $561c: $11 $37 $ff
	rst  $38                                         ; $561f: $ff
	rst  $38                                         ; $5620: $ff
	rst  $38                                         ; $5621: $ff
	rst  $38                                         ; $5622: $ff
	jp   c, $a337                                    ; $5623: $da $37 $a3

	ld   de, $1211                                   ; $5626: $11 $11 $12
	ld   de, $ff49                                   ; $5629: $11 $49 $ff
	rst  $38                                         ; $562c: $ff
	rst  $38                                         ; $562d: $ff
	rst  $38                                         ; $562e: $ff
	rst  $38                                         ; $562f: $ff
	ret  c                                           ; $5630: $d8

	ld   e, c                                        ; $5631: $59
	add  c                                           ; $5632: $81
	ld   de, $1111                                   ; $5633: $11 $11 $11
	ld   de, $ff6e                                   ; $5636: $11 $6e $ff
	rst  $38                                         ; $5639: $ff
	rst  $38                                         ; $563a: $ff
	rst  $38                                         ; $563b: $ff
	cp   $b4                                         ; $563c: $fe $b4
	ld   l, d                                        ; $563e: $6a
	ld   sp, $1111                                   ; $563f: $31 $11 $11
	ld   de, $ff17                                   ; $5642: $11 $17 $ff
	rst  $38                                         ; $5645: $ff
	rst  $38                                         ; $5646: $ff
	rst  $38                                         ; $5647: $ff
	rst  $38                                         ; $5648: $ff
	ld   [$8234], a                                  ; $5649: $ea $34 $82
	ld   de, $3111                                   ; $564c: $11 $11 $31
	ld   de, $ffcf                                   ; $564f: $11 $cf $ff
	rst  $38                                         ; $5652: $ff
	rst  $38                                         ; $5653: $ff
	rst  $38                                         ; $5654: $ff
	cp   $82                                         ; $5655: $fe $82
	ld   d, l                                        ; $5657: $55
	ld   de, $1111                                   ; $5658: $11 $11 $11
	ld   de, $ff9f                                   ; $565b: $11 $9f $ff
	rst  $38                                         ; $565e: $ff
	rst  $38                                         ; $565f: $ff
	rst  $38                                         ; $5660: $ff
	rst  $38                                         ; $5661: $ff
	sub  d                                           ; $5662: $92
	inc  de                                          ; $5663: $13
	ld   de, $1111                                   ; $5664: $11 $11 $11
	ld   de, $ffcf                                   ; $5667: $11 $cf $ff
	rst  $38                                         ; $566a: $ff
	rst  $38                                         ; $566b: $ff
	rst  $38                                         ; $566c: $ff
	rst  $38                                         ; $566d: $ff
	ld   d, c                                        ; $566e: $51
	ld   de, $1111                                   ; $566f: $11 $11 $11
	ld   de, $ff16                                   ; $5672: $11 $16 $ff

Jump_0cd_5675:
	rst  $38                                         ; $5675: $ff
	rst  $38                                         ; $5676: $ff
	rst  $38                                         ; $5677: $ff
	rst  $38                                         ; $5678: $ff
	ld   hl, sp+$11                                  ; $5679: $f8 $11
	ld   de, $1111                                   ; $567b: $11 $11 $11
	ld   de, $ff7f                                   ; $567e: $11 $7f $ff
	rst  $38                                         ; $5681: $ff
	rst  $38                                         ; $5682: $ff
	rst  $38                                         ; $5683: $ff
	db   $fd                                         ; $5684: $fd
	ld   d, c                                        ; $5685: $51
	ld   de, $1111                                   ; $5686: $11 $11 $11
	ld   de, $ff6f                                   ; $5689: $11 $6f $ff
	rst  $38                                         ; $568c: $ff
	rst  $38                                         ; $568d: $ff
	rst  $38                                         ; $568e: $ff
	db   $fc                                         ; $568f: $fc
	ld   sp, $1111                                   ; $5690: $31 $11 $11
	ld   de, $5f11                                   ; $5693: $11 $11 $5f
	rst  $38                                         ; $5696: $ff
	rst  $38                                         ; $5697: $ff
	rst  $38                                         ; $5698: $ff
	rst  $38                                         ; $5699: $ff
	db   $fd                                         ; $569a: $fd
	ld   h, c                                        ; $569b: $61
	ld   de, $1111                                   ; $569c: $11 $11 $11
	ld   de, $ff5e                                   ; $569f: $11 $5e $ff
	rst  $38                                         ; $56a2: $ff
	rst  $38                                         ; $56a3: $ff
	rst  $38                                         ; $56a4: $ff
	ld   a, [$1141]                                  ; $56a5: $fa $41 $11
	ld   de, $1211                                   ; $56a8: $11 $11 $12
	cp   a                                           ; $56ab: $bf
	rst  $38                                         ; $56ac: $ff
	rst  $38                                         ; $56ad: $ff
	rst  $38                                         ; $56ae: $ff
	rst  $38                                         ; $56af: $ff
	add  $11                                         ; $56b0: $c6 $11
	ld   de, $1111                                   ; $56b2: $11 $11 $11
	rla                                              ; $56b5: $17
	rst  $38                                         ; $56b6: $ff
	rst  $38                                         ; $56b7: $ff
	rst  $38                                         ; $56b8: $ff
	rst  $38                                         ; $56b9: $ff
	db   $fc                                         ; $56ba: $fc
	ld   [hl], c                                     ; $56bb: $71
	ld   de, $1111                                   ; $56bc: $11 $11 $11
	ld   [de], a                                     ; $56bf: $12
	adc  a                                           ; $56c0: $8f
	rst  $38                                         ; $56c1: $ff
	rst  $38                                         ; $56c2: $ff
	rst  $38                                         ; $56c3: $ff
	rst  $38                                         ; $56c4: $ff
	push bc                                          ; $56c5: $c5
	ld   de, $1111                                   ; $56c6: $11 $11 $11
	ld   de, $ff2a                                   ; $56c9: $11 $2a $ff
	rst  $38                                         ; $56cc: $ff
	rst  $38                                         ; $56cd: $ff
	rst  $38                                         ; $56ce: $ff
	ei                                               ; $56cf: $fb
	ld   sp, $1111                                   ; $56d0: $31 $11 $11
	ld   de, $df16                                   ; $56d3: $11 $16 $df
	rst  $38                                         ; $56d6: $ff
	rst  $38                                         ; $56d7: $ff
	rst  $38                                         ; $56d8: $ff
	rst  $38                                         ; $56d9: $ff
	ld   [hl], c                                     ; $56da: $71
	ld   de, $1111                                   ; $56db: $11 $11 $11
	ld   de, $ffbf                                   ; $56de: $11 $bf $ff
	rst  $38                                         ; $56e1: $ff
	rst  $38                                         ; $56e2: $ff
	rst  $38                                         ; $56e3: $ff
	db   $d3                                         ; $56e4: $d3
	ld   de, $1111                                   ; $56e5: $11 $11 $11
	ld   de, $ff8f                                   ; $56e8: $11 $8f $ff
	rst  $38                                         ; $56eb: $ff
	rst  $38                                         ; $56ec: $ff
	rst  $38                                         ; $56ed: $ff
	push bc                                          ; $56ee: $c5
	ld   de, $1111                                   ; $56ef: $11 $11 $11
	ld   de, $ff3d                                   ; $56f2: $11 $3d $ff
	rst  $38                                         ; $56f5: $ff
	rst  $38                                         ; $56f6: $ff
	rst  $38                                         ; $56f7: $ff
	ret  z                                           ; $56f8: $c8

	ld   de, $1111                                   ; $56f9: $11 $11 $11
	ld   de, $ff3b                                   ; $56fc: $11 $3b $ff
	rst  $38                                         ; $56ff: $ff
	rst  $38                                         ; $5700: $ff
	rst  $38                                         ; $5701: $ff
	rst  ToBoot                                         ; $5702: $c7
	ld   de, $1111                                   ; $5703: $11 $11 $11
	ld   de, $ef39                                   ; $5706: $11 $39 $ef
	rst  $38                                         ; $5709: $ff
	rst  $38                                         ; $570a: $ff
	rst  $38                                         ; $570b: $ff
	or   [hl]                                        ; $570c: $b6
	ld   hl, $1111                                   ; $570d: $21 $11 $11
	ld   de, $ff4b                                   ; $5710: $11 $4b $ff
	rst  $38                                         ; $5713: $ff
	rst  $38                                         ; $5714: $ff
	db   $fd                                         ; $5715: $fd
	add  [hl]                                        ; $5716: $86
	ld   sp, $1111                                   ; $5717: $31 $11 $11
	ld   [de], a                                     ; $571a: $12
	ld   l, l                                        ; $571b: $6d
	rst  $38                                         ; $571c: $ff
	rst  $38                                         ; $571d: $ff
	rst  $38                                         ; $571e: $ff
	add  sp, $74                                     ; $571f: $e8 $74
	ld   de, $1111                                   ; $5721: $11 $11 $11
	dec  h                                           ; $5724: $25
	xor  a                                           ; $5725: $af
	rst  $38                                         ; $5726: $ff
	rst  $38                                         ; $5727: $ff
	cp   $96                                         ; $5728: $fe $96
	ld   d, h                                        ; $572a: $54
	ld   hl, $1211                                   ; $572b: $21 $11 $12
	ld   e, c                                        ; $572e: $59
	adc  $ff                                         ; $572f: $ce $ff
	rst  $38                                         ; $5731: $ff
	ld   [$6375], a                                  ; $5732: $ea $75 $63
	ld   hl, $3613                                   ; $5735: $21 $13 $36
	ld   l, e                                        ; $5738: $6b
	cp   l                                           ; $5739: $bd
	cp   $ec                                         ; $573a: $fe $ec
	and  a                                           ; $573c: $a7
	halt                                             ; $573d: $76
	ld   d, l                                        ; $573e: $55
	inc  [hl]                                        ; $573f: $34
	ld   d, h                                        ; $5740: $54
	ld   e, b                                        ; $5741: $58
	sbc  d                                           ; $5742: $9a
	xor  h                                           ; $5743: $ac
	db   $eb                                         ; $5744: $eb
	cp   d                                           ; $5745: $ba
	add  a                                           ; $5746: $87
	ld   h, [hl]                                     ; $5747: $66
	ld   [hl], e                                     ; $5748: $73
	ld   [hl], l                                     ; $5749: $75
	ld   c, b                                        ; $574a: $48
	ld   [hl], a                                     ; $574b: $77
	cp   c                                           ; $574c: $b9
	xor  l                                           ; $574d: $ad
	xor  h                                           ; $574e: $ac
	sbc  c                                           ; $574f: $99
	ld   [hl], l                                     ; $5750: $75
	halt                                             ; $5751: $76
	ld   d, l                                        ; $5752: $55
	ld   [hl], h                                     ; $5753: $74
	ld   h, a                                        ; $5754: $67
	ld   a, b                                        ; $5755: $78
	xor  d                                           ; $5756: $aa
	sbc  h                                           ; $5757: $9c
	cp   e                                           ; $5758: $bb
	sbc  b                                           ; $5759: $98
	ld   [hl], a                                     ; $575a: $77
	add  [hl]                                        ; $575b: $86
	ld   d, [hl]                                     ; $575c: $56
	ld   h, a                                        ; $575d: $67
	ld   d, a                                        ; $575e: $57
	add  a                                           ; $575f: $87
	sbc  b                                           ; $5760: $98
	res  5, d                                        ; $5761: $cb $aa
	sbc  b                                           ; $5763: $98
	sub  a                                           ; $5764: $97
	ld   h, a                                        ; $5765: $67
	ld   l, b                                        ; $5766: $68
	ld   c, b                                        ; $5767: $48
	ld   h, a                                        ; $5768: $67
	sub  [hl]                                        ; $5769: $96
	sbc  c                                           ; $576a: $99
	xor  e                                           ; $576b: $ab
	sbc  b                                           ; $576c: $98
	xor  d                                           ; $576d: $aa
	add  [hl]                                        ; $576e: $86
	adc  b                                           ; $576f: $88
	ld   h, a                                        ; $5770: $67
	halt                                             ; $5771: $76
	add  a                                           ; $5772: $87
	ld   l, b                                        ; $5773: $68
	sbc  d                                           ; $5774: $9a

Jump_0cd_5775:
	adc  c                                           ; $5775: $89
	sbc  b                                           ; $5776: $98
	sbc  b                                           ; $5777: $98
	sub  a                                           ; $5778: $97
	sub  a                                           ; $5779: $97
	ld   a, b                                        ; $577a: $78
	ld   [hl], a                                     ; $577b: $77
	sub  a                                           ; $577c: $97
	ld   a, c                                        ; $577d: $79
	adc  b                                           ; $577e: $88
	adc  b                                           ; $577f: $88
	adc  d                                           ; $5780: $8a
	adc  c                                           ; $5781: $89
	adc  c                                           ; $5782: $89
	ld   [hl], a                                     ; $5783: $77
	add  [hl]                                        ; $5784: $86
	sub  a                                           ; $5785: $97
	ld   l, b                                        ; $5786: $68
	sbc  b                                           ; $5787: $98
	ld   a, b                                        ; $5788: $78
	xor  c                                           ; $5789: $a9
	xor  c                                           ; $578a: $a9
	adc  d                                           ; $578b: $8a
	adc  b                                           ; $578c: $88
	adc  b                                           ; $578d: $88
	ld   l, c                                        ; $578e: $69
	halt                                             ; $578f: $76
	ld   [hl], a                                     ; $5790: $77
	sub  [hl]                                        ; $5791: $96
	and  a                                           ; $5792: $a7
	sbc  d                                           ; $5793: $9a
	sbc  b                                           ; $5794: $98
	adc  c                                           ; $5795: $89
	adc  b                                           ; $5796: $88
	ld   e, c                                        ; $5797: $59
	add  a                                           ; $5798: $87
	add  [hl]                                        ; $5799: $86
	ld   a, b                                        ; $579a: $78
	sub  l                                           ; $579b: $95
	xor  d                                           ; $579c: $aa
	adc  c                                           ; $579d: $89
	ld   l, d                                        ; $579e: $6a
	or   [hl]                                        ; $579f: $b6
	ld   a, b                                        ; $57a0: $78
	adc  c                                           ; $57a1: $89
	ld   h, a                                        ; $57a2: $67
	add  a                                           ; $57a3: $87
	sbc  b                                           ; $57a4: $98
	ld   l, b                                        ; $57a5: $68
	sbc  c                                           ; $57a6: $99
	xor  c                                           ; $57a7: $a9
	sub  a                                           ; $57a8: $97
	adc  c                                           ; $57a9: $89
	ld   a, c                                        ; $57aa: $79
	ld   [hl], l                                     ; $57ab: $75
	adc  b                                           ; $57ac: $88
	add  a                                           ; $57ad: $87
	sbc  b                                           ; $57ae: $98
	ld   a, c                                        ; $57af: $79
	ld   a, b                                        ; $57b0: $78
	and  a                                           ; $57b1: $a7
	ld   a, b                                        ; $57b2: $78
	adc  c                                           ; $57b3: $89
	add  a                                           ; $57b4: $87
	sub  [hl]                                        ; $57b5: $96
	ld   a, c                                        ; $57b6: $79
	ld   l, d                                        ; $57b7: $6a
	add  a                                           ; $57b8: $87
	adc  c                                           ; $57b9: $89
	ld   a, c                                        ; $57ba: $79
	sub  a                                           ; $57bb: $97
	add  a                                           ; $57bc: $87
	sub  a                                           ; $57bd: $97
	adc  b                                           ; $57be: $88
	adc  b                                           ; $57bf: $88
	ld   h, [hl]                                     ; $57c0: $66
	sbc  b                                           ; $57c1: $98
	ld   l, b                                        ; $57c2: $68
	adc  d                                           ; $57c3: $8a
	ld   a, c                                        ; $57c4: $79
	adc  b                                           ; $57c5: $88
	add  a                                           ; $57c6: $87
	adc  b                                           ; $57c7: $88
	adc  b                                           ; $57c8: $88
	add  [hl]                                        ; $57c9: $86
	sbc  b                                           ; $57ca: $98
	ld   h, [hl]                                     ; $57cb: $66
	sbc  b                                           ; $57cc: $98
	ld   [hl], a                                     ; $57cd: $77
	adc  c                                           ; $57ce: $89
	ld   a, c                                        ; $57cf: $79
	ld   a, c                                        ; $57d0: $79
	sbc  b                                           ; $57d1: $98
	ld   a, b                                        ; $57d2: $78
	sbc  c                                           ; $57d3: $99
	ld   [hl], l                                     ; $57d4: $75
	and  a                                           ; $57d5: $a7
	sbc  b                                           ; $57d6: $98
	ld   [hl], a                                     ; $57d7: $77
	adc  c                                           ; $57d8: $89
	ld   l, c                                        ; $57d9: $69
	sbc  c                                           ; $57da: $99
	ld   a, b                                        ; $57db: $78
	sbc  b                                           ; $57dc: $98
	ld   [hl], a                                     ; $57dd: $77
	add  a                                           ; $57de: $87
	add  a                                           ; $57df: $87
	adc  c                                           ; $57e0: $89
	ld   a, b                                        ; $57e1: $78
	ld   l, c                                        ; $57e2: $69
	adc  b                                           ; $57e3: $88
	sbc  c                                           ; $57e4: $99
	and  a                                           ; $57e5: $a7
	add  a                                           ; $57e6: $87
	ld   a, b                                        ; $57e7: $78
	add  a                                           ; $57e8: $87
	adc  c                                           ; $57e9: $89
	ld   a, b                                        ; $57ea: $78
	ld   l, b                                        ; $57eb: $68
	add  a                                           ; $57ec: $87
	and  [hl]                                        ; $57ed: $a6
	xor  c                                           ; $57ee: $a9
	ld   a, b                                        ; $57ef: $78
	sbc  c                                           ; $57f0: $99
	ld   [hl], a                                     ; $57f1: $77
	ld   a, c                                        ; $57f2: $79
	adc  c                                           ; $57f3: $89
	ld   [hl], a                                     ; $57f4: $77
	sub  a                                           ; $57f5: $97
	ld   [hl], a                                     ; $57f6: $77
	ld   a, d                                        ; $57f7: $7a
	add  a                                           ; $57f8: $87
	sbc  c                                           ; $57f9: $99
	add  a                                           ; $57fa: $87
	add  a                                           ; $57fb: $87
	sbc  b                                           ; $57fc: $98
	add  a                                           ; $57fd: $87
	ld   l, c                                        ; $57fe: $69
	ld   l, b                                        ; $57ff: $68
	add  a                                           ; $5800: $87
	adc  d                                           ; $5801: $8a
	ld   a, b                                        ; $5802: $78
	add  a                                           ; $5803: $87
	add  a                                           ; $5804: $87
	sub  a                                           ; $5805: $97
	sbc  b                                           ; $5806: $98
	sub  a                                           ; $5807: $97
	adc  b                                           ; $5808: $88
	ld   a, b                                        ; $5809: $78
	ld   a, c                                        ; $580a: $79
	adc  c                                           ; $580b: $89
	sbc  b                                           ; $580c: $98
	adc  c                                           ; $580d: $89
	ld   a, b                                        ; $580e: $78
	adc  b                                           ; $580f: $88
	sub  a                                           ; $5810: $97
	add  a                                           ; $5811: $87
	add  a                                           ; $5812: $87
	ld   a, c                                        ; $5813: $79
	adc  c                                           ; $5814: $89
	ld   a, d                                        ; $5815: $7a
	adc  b                                           ; $5816: $88
	ld   l, b                                        ; $5817: $68
	sub  a                                           ; $5818: $97
	adc  b                                           ; $5819: $88
	ld   l, b                                        ; $581a: $68
	halt                                             ; $581b: $76
	sub  [hl]                                        ; $581c: $96
	xor  b                                           ; $581d: $a8
	adc  d                                           ; $581e: $8a
	ld   a, c                                        ; $581f: $79
	ld   a, b                                        ; $5820: $78
	ld   a, c                                        ; $5821: $79
	adc  c                                           ; $5822: $89
	add  [hl]                                        ; $5823: $86
	halt                                             ; $5824: $76
	add  [hl]                                        ; $5825: $86
	xor  b                                           ; $5826: $a8
	sub  a                                           ; $5827: $97
	adc  b                                           ; $5828: $88
	adc  b                                           ; $5829: $88
	ld   a, c                                        ; $582a: $79
	ld   a, c                                        ; $582b: $79
	ld   a, d                                        ; $582c: $7a
	ld   a, c                                        ; $582d: $79
	add  a                                           ; $582e: $87
	ld   a, b                                        ; $582f: $78
	sub  [hl]                                        ; $5830: $96
	sbc  b                                           ; $5831: $98
	sub  [hl]                                        ; $5832: $96
	and  a                                           ; $5833: $a7
	adc  b                                           ; $5834: $88
	ld   l, d                                        ; $5835: $6a
	adc  b                                           ; $5836: $88
	ld   a, c                                        ; $5837: $79
	sub  a                                           ; $5838: $97
	add  a                                           ; $5839: $87
	ld   a, b                                        ; $583a: $78
	sub  a                                           ; $583b: $97
	add  a                                           ; $583c: $87
	sbc  c                                           ; $583d: $99
	ld   a, b                                        ; $583e: $78
	ld   a, c                                        ; $583f: $79
	adc  b                                           ; $5840: $88
	adc  b                                           ; $5841: $88
	sub  [hl]                                        ; $5842: $96
	ld   a, c                                        ; $5843: $79
	adc  b                                           ; $5844: $88
	ld   a, b                                        ; $5845: $78
	add  a                                           ; $5846: $87
	sub  a                                           ; $5847: $97
	adc  b                                           ; $5848: $88
	ld   a, b                                        ; $5849: $78
	adc  b                                           ; $584a: $88
	sbc  b                                           ; $584b: $98
	ld   a, b                                        ; $584c: $78
	sub  [hl]                                        ; $584d: $96
	and  [hl]                                        ; $584e: $a6
	adc  c                                           ; $584f: $89
	ld   a, b                                        ; $5850: $78
	adc  c                                           ; $5851: $89
	ld   a, d                                        ; $5852: $7a
	ld   l, b                                        ; $5853: $68
	or   a                                           ; $5854: $b7
	adc  c                                           ; $5855: $89
	ld   [hl], a                                     ; $5856: $77
	add  [hl]                                        ; $5857: $86
	xor  b                                           ; $5858: $a8
	add  a                                           ; $5859: $87
	ld   a, d                                        ; $585a: $7a
	ld   e, c                                        ; $585b: $59
	add  a                                           ; $585c: $87
	add  a                                           ; $585d: $87
	add  a                                           ; $585e: $87
	ld   a, b                                        ; $585f: $78
	ld   [hl], a                                     ; $5860: $77
	xor  b                                           ; $5861: $a8
	ld   [hl], a                                     ; $5862: $77
	add  a                                           ; $5863: $87
	sub  a                                           ; $5864: $97
	xor  b                                           ; $5865: $a8
	ld   l, c                                        ; $5866: $69
	ld   l, c                                        ; $5867: $69
	adc  b                                           ; $5868: $88
	ld   a, c                                        ; $5869: $79
	add  a                                           ; $586a: $87
	add  a                                           ; $586b: $87
	or   l                                           ; $586c: $b5
	ld   a, c                                        ; $586d: $79
	ld   a, c                                        ; $586e: $79
	ld   [hl], a                                     ; $586f: $77
	and  a                                           ; $5870: $a7
	ld   l, d                                        ; $5871: $6a
	ld   h, a                                        ; $5872: $67
	sub  a                                           ; $5873: $97
	adc  d                                           ; $5874: $8a
	ld   [hl], a                                     ; $5875: $77
	adc  b                                           ; $5876: $88
	sub  [hl]                                        ; $5877: $96
	sub  a                                           ; $5878: $97
	adc  b                                           ; $5879: $88
	ld   a, b                                        ; $587a: $78
	adc  b                                           ; $587b: $88
	ld   a, b                                        ; $587c: $78
	ld   a, c                                        ; $587d: $79
	ld   a, b                                        ; $587e: $78
	add  a                                           ; $587f: $87
	and  [hl]                                        ; $5880: $a6
	sub  [hl]                                        ; $5881: $96
	sbc  b                                           ; $5882: $98
	ld   a, c                                        ; $5883: $79
	ld   l, c                                        ; $5884: $69
	ld   a, b                                        ; $5885: $78
	ld   a, c                                        ; $5886: $79
	adc  c                                           ; $5887: $89
	adc  b                                           ; $5888: $88
	sub  a                                           ; $5889: $97
	sbc  c                                           ; $588a: $99
	ld   a, b                                        ; $588b: $78
	sub  a                                           ; $588c: $97
	add  a                                           ; $588d: $87
	sub  a                                           ; $588e: $97
	ld   a, c                                        ; $588f: $79
	ld   l, e                                        ; $5890: $6b
	ld   h, a                                        ; $5891: $67
	sbc  b                                           ; $5892: $98
	sub  [hl]                                        ; $5893: $96
	and  a                                           ; $5894: $a7
	add  a                                           ; $5895: $87
	adc  c                                           ; $5896: $89
	adc  b                                           ; $5897: $88
	ld   a, c                                        ; $5898: $79
	ld   a, c                                        ; $5899: $79
	add  a                                           ; $589a: $87
	adc  c                                           ; $589b: $89
	sbc  b                                           ; $589c: $98
	sub  a                                           ; $589d: $97
	sub  a                                           ; $589e: $97
	adc  b                                           ; $589f: $88
	ld   a, c                                        ; $58a0: $79
	ld   l, b                                        ; $58a1: $68
	xor  b                                           ; $58a2: $a8
	ld   a, b                                        ; $58a3: $78
	adc  b                                           ; $58a4: $88
	sub  a                                           ; $58a5: $97

Call_0cd_58a6:
	add  a                                           ; $58a6: $87
	adc  c                                           ; $58a7: $89
	ld   [hl], a                                     ; $58a8: $77
	adc  c                                           ; $58a9: $89
	sub  a                                           ; $58aa: $97
	sbc  c                                           ; $58ab: $99
	ld   l, c                                        ; $58ac: $69
	ld   a, c                                        ; $58ad: $79
	sbc  c                                           ; $58ae: $99
	add  a                                           ; $58af: $87
	sub  [hl]                                        ; $58b0: $96
	sub  a                                           ; $58b1: $97
	sub  a                                           ; $58b2: $97
	ld   a, b                                        ; $58b3: $78
	ld   a, d                                        ; $58b4: $7a
	ld   a, b                                        ; $58b5: $78
	ld   a, c                                        ; $58b6: $79
	add  a                                           ; $58b7: $87
	ld   a, b                                        ; $58b8: $78
	sbc  b                                           ; $58b9: $98
	ld   a, b                                        ; $58ba: $78
	and  a                                           ; $58bb: $a7
	ld   a, c                                        ; $58bc: $79
	ld   a, c                                        ; $58bd: $79
	ld   [hl], a                                     ; $58be: $77
	sub  a                                           ; $58bf: $97
	sub  a                                           ; $58c0: $97
	adc  c                                           ; $58c1: $89
	sbc  b                                           ; $58c2: $98
	ld   a, c                                        ; $58c3: $79
	adc  c                                           ; $58c4: $89
	ld   l, d                                        ; $58c5: $6a
	ld   a, b                                        ; $58c6: $78
	sub  [hl]                                        ; $58c7: $96
	xor  b                                           ; $58c8: $a8
	ld   a, c                                        ; $58c9: $79
	sub  [hl]                                        ; $58ca: $96
	xor  c                                           ; $58cb: $a9
	ld   l, c                                        ; $58cc: $69
	sub  a                                           ; $58cd: $97
	ld   a, c                                        ; $58ce: $79
	ld   a, b                                        ; $58cf: $78
	add  a                                           ; $58d0: $87
	ld   a, c                                        ; $58d1: $79
	adc  c                                           ; $58d2: $89
	ld   a, d                                        ; $58d3: $7a
	ld   a, c                                        ; $58d4: $79
	sub  a                                           ; $58d5: $97
	add  a                                           ; $58d6: $87
	sub  a                                           ; $58d7: $97
	and  a                                           ; $58d8: $a7
	and  [hl]                                        ; $58d9: $a6
	sub  a                                           ; $58da: $97
	adc  c                                           ; $58db: $89
	ld   l, e                                        ; $58dc: $6b
	ld   e, h                                        ; $58dd: $5c
	ld   l, c                                        ; $58de: $69
	add  a                                           ; $58df: $87
	sub  a                                           ; $58e0: $97
	add  a                                           ; $58e1: $87
	or   [hl]                                        ; $58e2: $b6
	sub  a                                           ; $58e3: $97
	sub  a                                           ; $58e4: $97
	ld   l, c                                        ; $58e5: $69
	adc  c                                           ; $58e6: $89
	ld   l, d                                        ; $58e7: $6a
	ld   l, d                                        ; $58e8: $6a
	ld   a, b                                        ; $58e9: $78
	add  a                                           ; $58ea: $87
	sub  a                                           ; $58eb: $97
	and  l                                           ; $58ec: $a5
	and  [hl]                                        ; $58ed: $a6
	xor  d                                           ; $58ee: $aa
	ld   l, c                                        ; $58ef: $69
	ld   a, d                                        ; $58f0: $7a
	ld   l, c                                        ; $58f1: $69
	ld   a, d                                        ; $58f2: $7a
	add  l                                           ; $58f3: $85
	sub  a                                           ; $58f4: $97
	sub  [hl]                                        ; $58f5: $96
	sub  a                                           ; $58f6: $97
	adc  b                                           ; $58f7: $88
	sub  a                                           ; $58f8: $97
	ld   a, d                                        ; $58f9: $7a
	ld   l, d                                        ; $58fa: $6a
	ld   e, c                                        ; $58fb: $59
	sbc  c                                           ; $58fc: $99
	add  a                                           ; $58fd: $87
	sub  a                                           ; $58fe: $97
	sub  a                                           ; $58ff: $97
	adc  b                                           ; $5900: $88
	sub  a                                           ; $5901: $97
	adc  c                                           ; $5902: $89
	ld   a, c                                        ; $5903: $79
	adc  b                                           ; $5904: $88
	add  a                                           ; $5905: $87
	adc  c                                           ; $5906: $89
	ld   a, b                                        ; $5907: $78
	ld   a, c                                        ; $5908: $79
	adc  b                                           ; $5909: $88
	sub  a                                           ; $590a: $97
	sub  a                                           ; $590b: $97
	adc  b                                           ; $590c: $88
	add  [hl]                                        ; $590d: $86
	adc  b                                           ; $590e: $88
	ld   a, d                                        ; $590f: $7a
	ld   a, c                                        ; $5910: $79
	ld   a, d                                        ; $5911: $7a
	adc  b                                           ; $5912: $88
	add  a                                           ; $5913: $87
	sub  a                                           ; $5914: $97
	sub  [hl]                                        ; $5915: $96
	sbc  b                                           ; $5916: $98
	add  a                                           ; $5917: $87
	sub  a                                           ; $5918: $97
	ld   l, c                                        ; $5919: $69
	ld   a, c                                        ; $591a: $79
	adc  c                                           ; $591b: $89
	ld   l, d                                        ; $591c: $6a
	ld   d, a                                        ; $591d: $57
	and  a                                           ; $591e: $a7
	sub  [hl]                                        ; $591f: $96
	sub  [hl]                                        ; $5920: $96
	and  [hl]                                        ; $5921: $a6
	adc  c                                           ; $5922: $89
	ld   a, c                                        ; $5923: $79
	ld   a, c                                        ; $5924: $79
	ld   l, e                                        ; $5925: $6b
	ld   a, c                                        ; $5926: $79
	add  a                                           ; $5927: $87
	add  a                                           ; $5928: $87
	add  [hl]                                        ; $5929: $86
	and  a                                           ; $592a: $a7
	ld   [hl], a                                     ; $592b: $77
	sbc  b                                           ; $592c: $98
	ld   a, c                                        ; $592d: $79
	ld   a, c                                        ; $592e: $79
	ld   a, c                                        ; $592f: $79
	ld   l, c                                        ; $5930: $69
	add  a                                           ; $5931: $87
	sbc  b                                           ; $5932: $98
	ld   [hl], a                                     ; $5933: $77
	or   [hl]                                        ; $5934: $b6
	sub  a                                           ; $5935: $97
	ld   a, d                                        ; $5936: $7a
	adc  c                                           ; $5937: $89
	ld   l, d                                        ; $5938: $6a
	ld   a, c                                        ; $5939: $79
	ld   a, b                                        ; $593a: $78
	add  a                                           ; $593b: $87
	sub  l                                           ; $593c: $95
	sbc  b                                           ; $593d: $98
	add  a                                           ; $593e: $87
	adc  b                                           ; $593f: $88
	adc  b                                           ; $5940: $88
	ld   a, d                                        ; $5941: $7a
	ld   l, c                                        ; $5942: $69
	add  a                                           ; $5943: $87
	or   a                                           ; $5944: $b7
	ld   a, c                                        ; $5945: $79
	ld   l, c                                        ; $5946: $69
	ld   a, b                                        ; $5947: $78
	sub  a                                           ; $5948: $97
	and  [hl]                                        ; $5949: $a6
	sbc  b                                           ; $594a: $98
	ld   l, b                                        ; $594b: $68
	sub  a                                           ; $594c: $97
	adc  d                                           ; $594d: $8a
	ld   l, c                                        ; $594e: $69
	adc  b                                           ; $594f: $88
	sbc  b                                           ; $5950: $98
	ld   a, c                                        ; $5951: $79
	adc  b                                           ; $5952: $88
	add  [hl]                                        ; $5953: $86
	adc  c                                           ; $5954: $89
	add  [hl]                                        ; $5955: $86
	and  a                                           ; $5956: $a7
	adc  b                                           ; $5957: $88
	ld   a, c                                        ; $5958: $79
	ld   a, c                                        ; $5959: $79
	ld   l, b                                        ; $595a: $68
	xor  b                                           ; $595b: $a8
	ld   a, b                                        ; $595c: $78
	sub  a                                           ; $595d: $97
	add  a                                           ; $595e: $87
	ld   a, b                                        ; $595f: $78
	ld   a, c                                        ; $5960: $79
	ld   [hl], a                                     ; $5961: $77
	sub  a                                           ; $5962: $97
	adc  b                                           ; $5963: $88
	ld   l, d                                        ; $5964: $6a
	add  a                                           ; $5965: $87
	sub  a                                           ; $5966: $97
	ld   a, b                                        ; $5967: $78
	and  [hl]                                        ; $5968: $a6
	adc  b                                           ; $5969: $88
	ld   a, d                                        ; $596a: $7a
	ld   a, b                                        ; $596b: $78
	ld   a, d                                        ; $596c: $7a
	ld   l, b                                        ; $596d: $68
	add  a                                           ; $596e: $87
	and  [hl]                                        ; $596f: $a6
	xor  b                                           ; $5970: $a8
	sbc  b                                           ; $5971: $98
	ld   a, c                                        ; $5972: $79
	ld   [hl], a                                     ; $5973: $77
	sbc  c                                           ; $5974: $99
	ld   l, b                                        ; $5975: $68
	adc  d                                           ; $5976: $8a
	ld   [hl], a                                     ; $5977: $77
	sub  a                                           ; $5978: $97
	sub  a                                           ; $5979: $97
	sbc  c                                           ; $597a: $99
	ld   a, c                                        ; $597b: $79
	ld   [hl], a                                     ; $597c: $77
	sub  a                                           ; $597d: $97
	sub  a                                           ; $597e: $97
	sbc  b                                           ; $597f: $98
	adc  d                                           ; $5980: $8a
	ld   e, d                                        ; $5981: $5a
	sbc  b                                           ; $5982: $98
	add  a                                           ; $5983: $87
	or   a                                           ; $5984: $b7
	ld   [hl], a                                     ; $5985: $77
	or   [hl]                                        ; $5986: $b6
	ld   a, c                                        ; $5987: $79
	ld   a, b                                        ; $5988: $78
	ld   a, c                                        ; $5989: $79
	adc  b                                           ; $598a: $88
	adc  b                                           ; $598b: $88
	add  a                                           ; $598c: $87
	ld   a, b                                        ; $598d: $78
	and  a                                           ; $598e: $a7
	ld   a, c                                        ; $598f: $79
	add  [hl]                                        ; $5990: $86
	ld   a, c                                        ; $5991: $79
	add  a                                           ; $5992: $87
	adc  c                                           ; $5993: $89
	sub  [hl]                                        ; $5994: $96
	ld   a, d                                        ; $5995: $7a
	ld   a, b                                        ; $5996: $78
	sbc  b                                           ; $5997: $98
	adc  b                                           ; $5998: $88
	add  a                                           ; $5999: $87
	adc  b                                           ; $599a: $88
	ld   a, b                                        ; $599b: $78
	sub  a                                           ; $599c: $97
	adc  c                                           ; $599d: $89
	and  [hl]                                        ; $599e: $a6
	adc  e                                           ; $599f: $8b
	ld   l, b                                        ; $59a0: $68
	and  a                                           ; $59a1: $a7
	adc  c                                           ; $59a2: $89
	ld   l, b                                        ; $59a3: $68
	and  a                                           ; $59a4: $a7
	ld   l, c                                        ; $59a5: $69
	sbc  b                                           ; $59a6: $98
	adc  c                                           ; $59a7: $89
	adc  c                                           ; $59a8: $89
	add  l                                           ; $59a9: $85
	and  a                                           ; $59aa: $a7
	ld   a, b                                        ; $59ab: $78
	adc  b                                           ; $59ac: $88
	adc  b                                           ; $59ad: $88
	ld   l, c                                        ; $59ae: $69
	ld   a, b                                        ; $59af: $78
	adc  c                                           ; $59b0: $89
	ld   a, d                                        ; $59b1: $7a
	add  [hl]                                        ; $59b2: $86
	adc  b                                           ; $59b3: $88
	and  [hl]                                        ; $59b4: $a6
	sbc  c                                           ; $59b5: $99
	sbc  b                                           ; $59b6: $98
	ld   l, d                                        ; $59b7: $6a
	add  a                                           ; $59b8: $87
	ld   a, c                                        ; $59b9: $79
	sbc  b                                           ; $59ba: $98
	ld   a, b                                        ; $59bb: $78
	add  a                                           ; $59bc: $87
	sub  a                                           ; $59bd: $97
	ld   a, b                                        ; $59be: $78
	ld   [hl], a                                     ; $59bf: $77
	sub  a                                           ; $59c0: $97
	adc  c                                           ; $59c1: $89
	ld   l, b                                        ; $59c2: $68
	sub  a                                           ; $59c3: $97
	ld   a, c                                        ; $59c4: $79
	add  a                                           ; $59c5: $87
	sbc  d                                           ; $59c6: $9a
	adc  e                                           ; $59c7: $8b
	sbc  b                                           ; $59c8: $98
	cp   c                                           ; $59c9: $b9
	adc  c                                           ; $59ca: $89
	adc  b                                           ; $59cb: $88
	ld   [hl], a                                     ; $59cc: $77
	halt                                             ; $59cd: $76
	ld   h, l                                        ; $59ce: $65
	ld   d, [hl]                                     ; $59cf: $56
	ld   [hl], h                                     ; $59d0: $74
	ld   e, b                                        ; $59d1: $58
	ld   h, a                                        ; $59d2: $67
	ld   a, c                                        ; $59d3: $79
	xor  c                                           ; $59d4: $a9
	xor  e                                           ; $59d5: $ab
	xor  h                                           ; $59d6: $ac
	xor  h                                           ; $59d7: $ac
	jp   c, $a9cc                                    ; $59d8: $da $cc $a9

	and  [hl]                                        ; $59db: $a6
	ld   h, l                                        ; $59dc: $65
	ld   b, e                                        ; $59dd: $43
	ld   [hl+], a                                    ; $59de: $22
	ld   de, $3522                                   ; $59df: $11 $22 $35
	ld   l, b                                        ; $59e2: $68
	xor  e                                           ; $59e3: $ab
	db   $dd                                         ; $59e4: $dd
	rst  $28                                         ; $59e5: $ef
	rst  $38                                         ; $59e6: $ff
	rst  $38                                         ; $59e7: $ff
	db   $fd                                         ; $59e8: $fd
	xor  d                                           ; $59e9: $aa
	add  a                                           ; $59ea: $87
	ld   d, e                                        ; $59eb: $53
	ld   hl, $1111                                   ; $59ec: $21 $11 $11
	ld   de, $4824                                   ; $59ef: $11 $24 $48
	sbc  h                                           ; $59f2: $9c
	rst  JumpTable                                         ; $59f3: $df
	rst  $38                                         ; $59f4: $ff
	rst  $38                                         ; $59f5: $ff
	rst  $38                                         ; $59f6: $ff
	cp   $cb                                         ; $59f7: $fe $cb
	sub  a                                           ; $59f9: $97
	ld   d, e                                        ; $59fa: $53
	ld   de, $1111                                   ; $59fb: $11 $11 $11
	ld   de, $4723                                   ; $59fe: $11 $23 $47
	sbc  d                                           ; $5a01: $9a
	rst  $28                                         ; $5a02: $ef
	rst  $28                                         ; $5a03: $ef
	rst  $38                                         ; $5a04: $ff
	rst  $38                                         ; $5a05: $ff
	cp   $db                                         ; $5a06: $fe $db
	sbc  c                                           ; $5a08: $99
	ld   [hl], e                                     ; $5a09: $73
	inc  sp                                          ; $5a0a: $33
	ld   de, $1111                                   ; $5a0b: $11 $11 $11
	ld   [de], a                                     ; $5a0e: $12
	ld   b, h                                        ; $5a0f: $44
	ld   a, d                                        ; $5a10: $7a
	cp   [hl]                                        ; $5a11: $be
	rst  $38                                         ; $5a12: $ff
	rst  $38                                         ; $5a13: $ff
	rst  $38                                         ; $5a14: $ff
	rst  $38                                         ; $5a15: $ff
	call $76c8                                       ; $5a16: $cd $c8 $76
	ld   [hl-], a                                    ; $5a19: $32
	ld   de, $1111                                   ; $5a1a: $11 $11 $11
	ld   de, $6825                                   ; $5a1d: $11 $25 $68
	xor  l                                           ; $5a20: $ad
	rst  JumpTable                                         ; $5a21: $df
	rst  $38                                         ; $5a22: $ff
	rst  $38                                         ; $5a23: $ff
	rst  $38                                         ; $5a24: $ff
	db   $ed                                         ; $5a25: $ed
	jp   c, Jump_0cd_4397                            ; $5a26: $da $97 $43

	ld   sp, $1111                                   ; $5a29: $31 $11 $11
	ld   de, $6614                                   ; $5a2c: $11 $14 $66
	sbc  l                                           ; $5a2f: $9d
	db   $dd                                         ; $5a30: $dd
	rst  $38                                         ; $5a31: $ff
	rst  $38                                         ; $5a32: $ff
	rst  $38                                         ; $5a33: $ff
	db   $fd                                         ; $5a34: $fd
	res  2, a                                        ; $5a35: $cb $97
	ld   d, e                                        ; $5a37: $53
	ld   sp, $1111                                   ; $5a38: $31 $11 $11
	ld   de, $5723                                   ; $5a3b: $11 $23 $57
	adc  d                                           ; $5a3e: $8a
	sbc  $ff                                         ; $5a3f: $de $ff
	rst  $38                                         ; $5a41: $ff
	rst  $38                                         ; $5a42: $ff
	db   $ed                                         ; $5a43: $ed
	db   $eb                                         ; $5a44: $eb
	xor  c                                           ; $5a45: $a9
	ld   h, h                                        ; $5a46: $64
	ld   b, e                                        ; $5a47: $43
	ld   de, $1111                                   ; $5a48: $11 $11 $11
	ld   [de], a                                     ; $5a4b: $12
	ld   b, [hl]                                     ; $5a4c: $46
	ld   l, b                                        ; $5a4d: $68
	xor  h                                           ; $5a4e: $ac
	rst  JumpTable                                         ; $5a4f: $df
	rst  $38                                         ; $5a50: $ff
	rst  $38                                         ; $5a51: $ff
	rst  $38                                         ; $5a52: $ff
	db   $ed                                         ; $5a53: $ed
	db   $db                                         ; $5a54: $db
	sbc  b                                           ; $5a55: $98
	ld   h, h                                        ; $5a56: $64
	ld   [hl-], a                                    ; $5a57: $32
	ld   de, $1111                                   ; $5a58: $11 $11 $11
	inc  hl                                          ; $5a5b: $23
	ld   d, [hl]                                     ; $5a5c: $56
	adc  d                                           ; $5a5d: $8a
	cp   h                                           ; $5a5e: $bc
	xor  $ff                                         ; $5a5f: $ee $ff
	rst  $38                                         ; $5a61: $ff
	rst  $38                                         ; $5a62: $ff
	db   $ed                                         ; $5a63: $ed
	cp   d                                           ; $5a64: $ba
	add  a                                           ; $5a65: $87
	ld   d, h                                        ; $5a66: $54
	ld   hl, $1111                                   ; $5a67: $21 $11 $11
	ld   de, $5724                                   ; $5a6a: $11 $24 $57
	sbc  d                                           ; $5a6d: $9a
	call $ffef                                       ; $5a6e: $cd $ef $ff
	rst  $38                                         ; $5a71: $ff
	cp   $ec                                         ; $5a72: $fe $ec
	cp   c                                           ; $5a74: $b9
	add  [hl]                                        ; $5a75: $86
	ld   b, e                                        ; $5a76: $43
	ld   hl, $1111                                   ; $5a77: $21 $11 $11
	ld   de, $5724                                   ; $5a7a: $11 $24 $57
	xor  e                                           ; $5a7d: $ab
	adc  $ff                                         ; $5a7e: $ce $ff
	rst  $38                                         ; $5a80: $ff
	rst  $38                                         ; $5a81: $ff
	rst  $38                                         ; $5a82: $ff
	db   $ed                                         ; $5a83: $ed
	cp   c                                           ; $5a84: $b9
	ld   h, h                                        ; $5a85: $64
	ld   [hl-], a                                    ; $5a86: $32
	ld   de, $1111                                   ; $5a87: $11 $11 $11
	ld   [de], a                                     ; $5a8a: $12
	dec  [hl]                                        ; $5a8b: $35
	ld   a, c                                        ; $5a8c: $79
	cp   l                                           ; $5a8d: $bd
	rst  $28                                         ; $5a8e: $ef
	rst  $38                                         ; $5a8f: $ff
	rst  $38                                         ; $5a90: $ff
	rst  $38                                         ; $5a91: $ff
	rst  $38                                         ; $5a92: $ff
	db   $db                                         ; $5a93: $db
	sub  a                                           ; $5a94: $97
	ld   d, e                                        ; $5a95: $53
	ld   hl, $1111                                   ; $5a96: $21 $11 $11
	ld   de, $4612                                   ; $5a99: $11 $12 $46
	adc  e                                           ; $5a9c: $8b
	adc  $ff                                         ; $5a9d: $ce $ff
	rst  $38                                         ; $5a9f: $ff
	rst  $38                                         ; $5aa0: $ff
	rst  $38                                         ; $5aa1: $ff
	cp   $b9                                         ; $5aa2: $fe $b9
	ld   [hl], l                                     ; $5aa4: $75
	ld   [hl-], a                                    ; $5aa5: $32
	ld   de, $1111                                   ; $5aa6: $11 $11 $11
	ld   de, $6724                                   ; $5aa9: $11 $24 $67
	xor  e                                           ; $5aac: $ab
	sbc  $ff                                         ; $5aad: $de $ff
	rst  $38                                         ; $5aaf: $ff
	rst  $38                                         ; $5ab0: $ff
	rst  $38                                         ; $5ab1: $ff
	call c, $53a7                                    ; $5ab2: $dc $a7 $53
	ld   hl, $1111                                   ; $5ab5: $21 $11 $11
	ld   de, $3512                                   ; $5ab8: $11 $12 $35
	ld   a, c                                        ; $5abb: $79
	call $ffff                                       ; $5abc: $cd $ff $ff
	rst  $38                                         ; $5abf: $ff
	rst  $38                                         ; $5ac0: $ff
	cp   $db                                         ; $5ac1: $fe $db
	add  [hl]                                        ; $5ac3: $86
	ld   b, d                                        ; $5ac4: $42
	ld   de, $1111                                   ; $5ac5: $11 $11 $11
	ld   de, $5713                                   ; $5ac8: $11 $13 $57
	sbc  e                                           ; $5acb: $9b
	sbc  $ff                                         ; $5acc: $de $ff
	rst  $38                                         ; $5ace: $ff
	rst  $38                                         ; $5acf: $ff
	rst  $38                                         ; $5ad0: $ff
	db   $fd                                         ; $5ad1: $fd
	cp   c                                           ; $5ad2: $b9
	ld   h, h                                        ; $5ad3: $64
	ld   sp, $1111                                   ; $5ad4: $31 $11 $11
	ld   de, $2411                                   ; $5ad7: $11 $11 $24
	ld   l, b                                        ; $5ada: $68
	cp   h                                           ; $5adb: $bc
	rst  $28                                         ; $5adc: $ef
	rst  $38                                         ; $5add: $ff
	rst  $38                                         ; $5ade: $ff
	rst  $38                                         ; $5adf: $ff
	cp   $db                                         ; $5ae0: $fe $db
	add  [hl]                                        ; $5ae2: $86
	ld   b, d                                        ; $5ae3: $42
	ld   de, $1111                                   ; $5ae4: $11 $11 $11
	ld   de, $4612                                   ; $5ae7: $11 $12 $46
	adc  d                                           ; $5aea: $8a
	db   $dd                                         ; $5aeb: $dd
	rst  $38                                         ; $5aec: $ff
	rst  $38                                         ; $5aed: $ff
	rst  $38                                         ; $5aee: $ff
	rst  $38                                         ; $5aef: $ff
	db   $ed                                         ; $5af0: $ed
	cp   c                                           ; $5af1: $b9
	ld   h, h                                        ; $5af2: $64
	ld   hl, $1111                                   ; $5af3: $21 $11 $11
	ld   de, $2411                                   ; $5af6: $11 $11 $24
	ld   l, b                                        ; $5af9: $68
	cp   h                                           ; $5afa: $bc
	rst  $28                                         ; $5afb: $ef
	rst  $38                                         ; $5afc: $ff
	rst  $38                                         ; $5afd: $ff
	rst  $38                                         ; $5afe: $ff
	rst  $38                                         ; $5aff: $ff
	call c, Call_0cd_5397                            ; $5b00: $dc $97 $53
	ld   hl, $1111                                   ; $5b03: $21 $11 $11
	ld   de, $3512                                   ; $5b06: $11 $12 $35
	ld   a, c                                        ; $5b09: $79
	cp   l                                           ; $5b0a: $bd
	rst  $38                                         ; $5b0b: $ff
	rst  $38                                         ; $5b0c: $ff
	rst  $38                                         ; $5b0d: $ff
	rst  $38                                         ; $5b0e: $ff
	cp   $ca                                         ; $5b0f: $fe $ca
	add  [hl]                                        ; $5b11: $86
	ld   b, d                                        ; $5b12: $42
	ld   de, $1111                                   ; $5b13: $11 $11 $11
	ld   de, $4723                                   ; $5b16: $11 $23 $47
	sbc  e                                           ; $5b19: $9b
	adc  $ff                                         ; $5b1a: $ce $ff
	rst  $38                                         ; $5b1c: $ff
	rst  $38                                         ; $5b1d: $ff
	rst  $38                                         ; $5b1e: $ff
	db   $fd                                         ; $5b1f: $fd
	cp   b                                           ; $5b20: $b8
	ld   h, h                                        ; $5b21: $64
	ld   sp, $1111                                   ; $5b22: $31 $11 $11
	ld   de, $2411                                   ; $5b25: $11 $11 $24
	ld   l, c                                        ; $5b28: $69
	xor  h                                           ; $5b29: $ac
	rst  JumpTable                                         ; $5b2a: $df
	rst  $38                                         ; $5b2b: $ff
	rst  $38                                         ; $5b2c: $ff
	rst  $38                                         ; $5b2d: $ff
	rst  $38                                         ; $5b2e: $ff
	db   $ec                                         ; $5b2f: $ec
	and  a                                           ; $5b30: $a7
	ld   d, e                                        ; $5b31: $53
	ld   hl, $1111                                   ; $5b32: $21 $11 $11
	ld   de, $3612                                   ; $5b35: $11 $12 $36
	adc  c                                           ; $5b38: $89
	call $ffff                                       ; $5b39: $cd $ff $ff
	rst  $38                                         ; $5b3c: $ff
	rst  $38                                         ; $5b3d: $ff
	cp   $ca                                         ; $5b3e: $fe $ca
	add  [hl]                                        ; $5b40: $86
	ld   b, d                                        ; $5b41: $42
	ld   de, $1111                                   ; $5b42: $11 $11 $11
	ld   de, $5723                                   ; $5b45: $11 $23 $57
	sbc  e                                           ; $5b48: $9b
	sbc  $ff                                         ; $5b49: $de $ff
	rst  $38                                         ; $5b4b: $ff
	rst  $38                                         ; $5b4c: $ff
	rst  $38                                         ; $5b4d: $ff
	db   $ec                                         ; $5b4e: $ec
	cp   c                                           ; $5b4f: $b9
	ld   h, l                                        ; $5b50: $65
	ld   [hl-], a                                    ; $5b51: $32
	ld   de, $1111                                   ; $5b52: $11 $11 $11
	ld   de, $6824                                   ; $5b55: $11 $24 $68
	xor  e                                           ; $5b58: $ab
	rst  JumpTable                                         ; $5b59: $df
	rst  $38                                         ; $5b5a: $ff
	rst  $38                                         ; $5b5b: $ff
	rst  $38                                         ; $5b5c: $ff
	rst  $38                                         ; $5b5d: $ff
	db   $ec                                         ; $5b5e: $ec
	xor  b                                           ; $5b5f: $a8
	ld   h, h                                        ; $5b60: $64
	ld   sp, $1111                                   ; $5b61: $31 $11 $11
	ld   de, $3512                                   ; $5b64: $11 $12 $35
	ld   a, c                                        ; $5b67: $79
	cp   h                                           ; $5b68: $bc
	rst  $28                                         ; $5b69: $ef
	rst  $38                                         ; $5b6a: $ff
	rst  $38                                         ; $5b6b: $ff
	rst  $38                                         ; $5b6c: $ff
	cp   $cb                                         ; $5b6d: $fe $cb
	add  [hl]                                        ; $5b6f: $86
	ld   b, e                                        ; $5b70: $43
	ld   hl, $1111                                   ; $5b71: $21 $11 $11
	ld   de, $4613                                   ; $5b74: $11 $13 $46
	adc  e                                           ; $5b77: $8b
	adc  $ef                                         ; $5b78: $ce $ef
	rst  $38                                         ; $5b7a: $ff
	rst  $38                                         ; $5b7b: $ff
	rst  $38                                         ; $5b7c: $ff
	db   $fd                                         ; $5b7d: $fd
	jp   z, $3275                                    ; $5b7e: $ca $75 $32

	ld   de, $1111                                   ; $5b81: $11 $11 $11
	ld   de, $6724                                   ; $5b84: $11 $24 $67
	xor  e                                           ; $5b87: $ab
	rst  JumpTable                                         ; $5b88: $df
	rst  $38                                         ; $5b89: $ff
	rst  $38                                         ; $5b8a: $ff
	rst  $38                                         ; $5b8b: $ff
	rst  $38                                         ; $5b8c: $ff
	call c, Call_0cd_64a8                            ; $5b8d: $dc $a8 $64
	ld   sp, $1111                                   ; $5b90: $31 $11 $11
	ld   de, $3502                                   ; $5b93: $11 $02 $35
	ld   a, c                                        ; $5b96: $79
	cp   l                                           ; $5b97: $bd
	rst  $28                                         ; $5b98: $ef
	rst  $38                                         ; $5b99: $ff
	rst  $38                                         ; $5b9a: $ff
	rst  $38                                         ; $5b9b: $ff
	cp   $db                                         ; $5b9c: $fe $db
	add  [hl]                                        ; $5b9e: $86
	ld   b, e                                        ; $5b9f: $43
	ld   hl, $1111                                   ; $5ba0: $21 $11 $11
	ld   de, $5723                                   ; $5ba3: $11 $23 $57
	sbc  e                                           ; $5ba6: $9b
	adc  $ff                                         ; $5ba7: $ce $ff
	rst  $38                                         ; $5ba9: $ff
	rst  $38                                         ; $5baa: $ff
	rst  $38                                         ; $5bab: $ff
	db   $fd                                         ; $5bac: $fd
	cp   c                                           ; $5bad: $b9
	ld   h, h                                        ; $5bae: $64
	ld   sp, $1111                                   ; $5baf: $31 $11 $11
	ld   de, $3511                                   ; $5bb2: $11 $11 $35
	ld   l, c                                        ; $5bb5: $69
	xor  l                                           ; $5bb6: $ad
	rst  $28                                         ; $5bb7: $ef
	rst  $38                                         ; $5bb8: $ff
	rst  $38                                         ; $5bb9: $ff
	rst  $38                                         ; $5bba: $ff
	rst  $38                                         ; $5bbb: $ff
	res  4, a                                        ; $5bbc: $cb $a7
	ld   b, d                                        ; $5bbe: $42
	ld   de, $1111                                   ; $5bbf: $11 $11 $11
	ld   de, $6824                                   ; $5bc2: $11 $24 $68
	cp   l                                           ; $5bc5: $bd
	rst  $38                                         ; $5bc6: $ff
	rst  $38                                         ; $5bc7: $ff
	rst  $38                                         ; $5bc8: $ff
	rst  $38                                         ; $5bc9: $ff
	rst  $38                                         ; $5bca: $ff
	jp   c, $3185                                    ; $5bcb: $da $85 $31

	ld   de, $1111                                   ; $5bce: $11 $11 $11
	ld   de, $9c36                                   ; $5bd1: $11 $36 $9c
	rst  JumpTable                                         ; $5bd4: $df
	rst  $38                                         ; $5bd5: $ff
	rst  $38                                         ; $5bd6: $ff
	rst  $38                                         ; $5bd7: $ff
	rst  $38                                         ; $5bd8: $ff
	db   $db                                         ; $5bd9: $db
	sub  a                                           ; $5bda: $97
	ld   b, c                                        ; $5bdb: $41
	ld   de, $1111                                   ; $5bdc: $11 $11 $11
	ld   de, $7a14                                   ; $5bdf: $11 $14 $7a
	sbc  $ff                                         ; $5be2: $de $ff
	rst  $38                                         ; $5be4: $ff
	rst  $38                                         ; $5be5: $ff
	rst  $38                                         ; $5be6: $ff
	cp   $b9                                         ; $5be7: $fe $b9
	ld   h, d                                        ; $5be9: $62
	ld   de, $1111                                   ; $5bea: $11 $11 $11
	ld   de, $6b24                                   ; $5bed: $11 $24 $6b
	rst  $28                                         ; $5bf0: $ef
	rst  $38                                         ; $5bf1: $ff
	rst  $38                                         ; $5bf2: $ff
	rst  $38                                         ; $5bf3: $ff
	rst  $38                                         ; $5bf4: $ff
	cp   $c9                                         ; $5bf5: $fe $c9
	ld   d, c                                        ; $5bf7: $51
	ld   de, $1111                                   ; $5bf8: $11 $11 $11
	ld   de, $ad15                                   ; $5bfb: $11 $15 $ad
	rst  $38                                         ; $5bfe: $ff
	rst  $38                                         ; $5bff: $ff
	rst  $38                                         ; $5c00: $ff
	rst  $38                                         ; $5c01: $ff
	rst  $38                                         ; $5c02: $ff
	cp   $b9                                         ; $5c03: $fe $b9
	ld   b, c                                        ; $5c05: $41
	ld   de, $1111                                   ; $5c06: $11 $11 $11
	ld   de, $bf59                                   ; $5c09: $11 $59 $bf
	rst  $38                                         ; $5c0c: $ff
	rst  $38                                         ; $5c0d: $ff
	rst  $38                                         ; $5c0e: $ff
	rst  $38                                         ; $5c0f: $ff
	rst  $38                                         ; $5c10: $ff
	cp   $a5                                         ; $5c11: $fe $a5
	ld   de, $1111                                   ; $5c13: $11 $11 $11
	ld   de, $7b13                                   ; $5c16: $11 $13 $7b
	rst  $38                                         ; $5c19: $ff
	rst  $38                                         ; $5c1a: $ff
	rst  $38                                         ; $5c1b: $ff
	rst  $38                                         ; $5c1c: $ff
	rst  $38                                         ; $5c1d: $ff
	rst  $38                                         ; $5c1e: $ff
	ld   [$1141], a                                  ; $5c1f: $ea $41 $11
	ld   de, $1111                                   ; $5c22: $11 $11 $11
	ld   e, c                                        ; $5c25: $59
	rst  $28                                         ; $5c26: $ef
	rst  $38                                         ; $5c27: $ff
	rst  $38                                         ; $5c28: $ff
	rst  $38                                         ; $5c29: $ff
	rst  $38                                         ; $5c2a: $ff
	rst  $38                                         ; $5c2b: $ff
	cp   $91                                         ; $5c2c: $fe $91
	ld   de, $1111                                   ; $5c2e: $11 $11 $11
	ld   de, $cf38                                   ; $5c31: $11 $38 $cf
	rst  $38                                         ; $5c34: $ff
	rst  $38                                         ; $5c35: $ff
	rst  $38                                         ; $5c36: $ff
	rst  $38                                         ; $5c37: $ff
	rst  $38                                         ; $5c38: $ff
	cp   $c4                                         ; $5c39: $fe $c4
	ld   de, $1111                                   ; $5c3b: $11 $11 $11
	ld   de, $bf27                                   ; $5c3e: $11 $27 $bf
	rst  $38                                         ; $5c41: $ff
	rst  $38                                         ; $5c42: $ff
	rst  $38                                         ; $5c43: $ff
	rst  $38                                         ; $5c44: $ff
	rst  $38                                         ; $5c45: $ff
	cp   $c6                                         ; $5c46: $fe $c6
	ld   de, $1111                                   ; $5c48: $11 $11 $11
	ld   de, $df39                                   ; $5c4b: $11 $39 $df
	rst  $38                                         ; $5c4e: $ff
	rst  $38                                         ; $5c4f: $ff
	rst  $38                                         ; $5c50: $ff
	rst  $38                                         ; $5c51: $ff
	db   $ed                                         ; $5c52: $ed
	db   $fd                                         ; $5c53: $fd
	and  c                                           ; $5c54: $a1
	ld   de, $1111                                   ; $5c55: $11 $11 $11
	ld   de, $ff5a                                   ; $5c58: $11 $5a $ff
	rst  $38                                         ; $5c5b: $ff
	rst  $38                                         ; $5c5c: $ff
	rst  $38                                         ; $5c5d: $ff
	rst  $38                                         ; $5c5e: $ff
	rst  $38                                         ; $5c5f: $ff
	db   $fc                                         ; $5c60: $fc
	ld   h, c                                        ; $5c61: $61
	ld   de, $1111                                   ; $5c62: $11 $11 $11
	ld   [de], a                                     ; $5c65: $12
	ld   a, l                                        ; $5c66: $7d
	rst  $38                                         ; $5c67: $ff
	rst  $38                                         ; $5c68: $ff
	rst  $38                                         ; $5c69: $ff
	rst  $38                                         ; $5c6a: $ff
	rst  $38                                         ; $5c6b: $ff
	db   $ed                                         ; $5c6c: $ed
	reti                                             ; $5c6d: $d9


	ld   hl, $1111                                   ; $5c6e: $21 $11 $11
	ld   de, $bf17                                   ; $5c71: $11 $17 $bf
	rst  $38                                         ; $5c74: $ff
	rst  $38                                         ; $5c75: $ff
	rst  $38                                         ; $5c76: $ff
	rst  $38                                         ; $5c77: $ff
	rst  $38                                         ; $5c78: $ff
	xor  $91                                         ; $5c79: $ee $91
	ld   de, $1111                                   ; $5c7b: $11 $11 $11
	inc  de                                          ; $5c7e: $13
	ld   a, e                                        ; $5c7f: $7b
	rst  $38                                         ; $5c80: $ff
	rst  $38                                         ; $5c81: $ff
	rst  $38                                         ; $5c82: $ff
	rst  $38                                         ; $5c83: $ff
	rst  $38                                         ; $5c84: $ff
	rst  $38                                         ; $5c85: $ff
	push bc                                          ; $5c86: $c5
	ld   de, $1111                                   ; $5c87: $11 $11 $11
	inc  de                                          ; $5c8a: $13
	ld   b, h                                        ; $5c8b: $44
	xor  a                                           ; $5c8c: $af
	rst  $38                                         ; $5c8d: $ff
	rst  $38                                         ; $5c8e: $ff
	rst  $38                                         ; $5c8f: $ff
	rst  $38                                         ; $5c90: $ff
	rst  $38                                         ; $5c91: $ff
	add  sp, $21                                     ; $5c92: $e8 $21
	ld   de, $1111                                   ; $5c94: $11 $11 $11
	ld   d, l                                        ; $5c97: $55
	adc  a                                           ; $5c98: $8f
	rst  $38                                         ; $5c99: $ff
	rst  $38                                         ; $5c9a: $ff
	rst  $38                                         ; $5c9b: $ff
	rst  $38                                         ; $5c9c: $ff
	rst  $38                                         ; $5c9d: $ff
	reti                                             ; $5c9e: $d9


	ld   hl, $1111                                   ; $5c9f: $21 $11 $11
	inc  de                                          ; $5ca2: $13
	add  d                                           ; $5ca3: $82
	ld   l, a                                        ; $5ca4: $6f
	rst  $38                                         ; $5ca5: $ff
	db   $fc                                         ; $5ca6: $fc
	rst  $38                                         ; $5ca7: $ff
	rst  $38                                         ; $5ca8: $ff
	rst  $28                                         ; $5ca9: $ef
	rst  ToBoot                                         ; $5caa: $c7
	ld   de, $1111                                   ; $5cab: $11 $11 $11
	dec  d                                           ; $5cae: $15
	sbc  c                                           ; $5caf: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cb0: $cf
	rst  $38                                         ; $5cb1: $ff
	rst  $38                                         ; $5cb2: $ff
	rst  $38                                         ; $5cb3: $ff
	rst  $38                                         ; $5cb4: $ff
	call c, $11a4                                    ; $5cb5: $dc $a4 $11
	ld   de, $3511                                   ; $5cb8: $11 $11 $35
	ld   l, a                                        ; $5cbb: $6f
	rst  $38                                         ; $5cbc: $ff
	rst  $38                                         ; $5cbd: $ff
	rst  $38                                         ; $5cbe: $ff
	rst  $38                                         ; $5cbf: $ff
	rst  $38                                         ; $5cc0: $ff
	or   [hl]                                        ; $5cc1: $b6
	ld   hl, $1111                                   ; $5cc2: $21 $11 $11
	dec  d                                           ; $5cc5: $15
	xor  d                                           ; $5cc6: $aa
	sbc  a                                           ; $5cc7: $9f
	rst  $38                                         ; $5cc8: $ff
	db   $fd                                         ; $5cc9: $fd
	rst  JumpTable                                         ; $5cca: $df
	rst  $38                                         ; $5ccb: $ff
	jp   hl                                          ; $5ccc: $e9


	ld   [hl], e                                     ; $5ccd: $73
	ld   de, $1111                                   ; $5cce: $11 $11 $11
	dec  [hl]                                        ; $5cd1: $35
	adc  [hl]                                        ; $5cd2: $8e
	rst  $38                                         ; $5cd3: $ff
	rst  $38                                         ; $5cd4: $ff
	rst  $38                                         ; $5cd5: $ff
	rst  $38                                         ; $5cd6: $ff
	cp   $b4                                         ; $5cd7: $fe $b4
	ld   de, $1111                                   ; $5cd9: $11 $11 $11
	ld   d, $56                                      ; $5cdc: $16 $56
	rst  $38                                         ; $5cde: $ff
	rst  $38                                         ; $5cdf: $ff
	xor  l                                           ; $5ce0: $ad
	rst  $38                                         ; $5ce1: $ff
	cp   $b7                                         ; $5ce2: $fe $b7
	ld   d, c                                        ; $5ce4: $51
	ld   de, $1111                                   ; $5ce5: $11 $11 $11
	ld   e, d                                        ; $5ce8: $5a
	rst  $28                                         ; $5ce9: $ef
	rst  $38                                         ; $5cea: $ff
	db   $fd                                         ; $5ceb: $fd
	rst  $38                                         ; $5cec: $ff
	rst  $38                                         ; $5ced: $ff
	push bc                                          ; $5cee: $c5
	ld   hl, $1111                                   ; $5cef: $21 $11 $11
	ld   d, $c7                                      ; $5cf2: $16 $c7
	xor  a                                           ; $5cf4: $af
	rst  $38                                         ; $5cf5: $ff
	ld   sp, hl                                      ; $5cf6: $f9
	rst  JumpTable                                         ; $5cf7: $df
	rst  $38                                         ; $5cf8: $ff
	add  c                                           ; $5cf9: $81
	ld   de, $1111                                   ; $5cfa: $11 $11 $11
	add  hl, de                                      ; $5cfd: $19
	push de                                          ; $5cfe: $d5
	xor  a                                           ; $5cff: $af
	rst  $38                                         ; $5d00: $ff
	push hl                                          ; $5d01: $e5
	rst  $38                                         ; $5d02: $ff
	rst  $38                                         ; $5d03: $ff
	ld   de, $1111                                   ; $5d04: $11 $11 $11
	ld   de, $797c                                   ; $5d07: $11 $7c $79
	rst  $38                                         ; $5d0a: $ff
	rst  $38                                         ; $5d0b: $ff
	xor  a                                           ; $5d0c: $af
	rst  $38                                         ; $5d0d: $ff
	push af                                          ; $5d0e: $f5
	ld   de, $1111                                   ; $5d0f: $11 $11 $11
	ld   d, $cb                                      ; $5d12: $16 $cb
	ld   l, a                                        ; $5d14: $6f
	rst  $38                                         ; $5d15: $ff
	db   $fd                                         ; $5d16: $fd
	cp   a                                           ; $5d17: $bf
	rst  $38                                         ; $5d18: $ff
	ld   [hl], c                                     ; $5d19: $71
	ld   de, $1111                                   ; $5d1a: $11 $11 $11
	ld   c, h                                        ; $5d1d: $4c
	reti                                             ; $5d1e: $d9


	rst  $38                                         ; $5d1f: $ff
	rst  $38                                         ; $5d20: $ff
	reti                                             ; $5d21: $d9


	rst  $38                                         ; $5d22: $ff
	ld   sp, hl                                      ; $5d23: $f9
	ld   de, $1111                                   ; $5d24: $11 $11 $11
	dec  d                                           ; $5d27: $15
	cp   $9f                                         ; $5d28: $fe $9f
	rst  $38                                         ; $5d2a: $ff
	ld   sp, hl                                      ; $5d2b: $f9
	xor  a                                           ; $5d2c: $af
	rst  $38                                         ; $5d2d: $ff
	ld   de, $1111                                   ; $5d2e: $11 $11 $11
	ld   de, $c7cf                                   ; $5d31: $11 $cf $c7
	rst  $38                                         ; $5d34: $ff
	rst  $38                                         ; $5d35: $ff
	ld   l, l                                        ; $5d36: $6d
	rst  $38                                         ; $5d37: $ff
	pop  af                                          ; $5d38: $f1
	ld   de, $1111                                   ; $5d39: $11 $11 $11
	inc  e                                           ; $5d3c: $1c
	rst  $38                                         ; $5d3d: $ff
	cp   a                                           ; $5d3e: $bf
	rst  $38                                         ; $5d3f: $ff
	cp   e                                           ; $5d40: $bb
	rst  $38                                         ; $5d41: $ff
	push af                                          ; $5d42: $f5
	ld   de, $1111                                   ; $5d43: $11 $11 $11
	add  hl, de                                      ; $5d46: $19
	adc  $ff                                         ; $5d47: $ce $ff
	rst  $38                                         ; $5d49: $ff
	reti                                             ; $5d4a: $d9


	rst  $38                                         ; $5d4b: $ff
	push af                                          ; $5d4c: $f5
	ld   de, $1111                                   ; $5d4d: $11 $11 $11
	jr   @+$01                                       ; $5d50: $18 $ff

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d52: $cf
	rst  $38                                         ; $5d53: $ff
	ei                                               ; $5d54: $fb
	rst  $38                                         ; $5d55: $ff
	db   $fc                                         ; $5d56: $fc
	ld   de, $1111                                   ; $5d57: $11 $11 $11
	ld   [de], a                                     ; $5d5a: $12
	rst  $38                                         ; $5d5b: $ff
	rst  $38                                         ; $5d5c: $ff
	rst  $38                                         ; $5d5d: $ff
	ld   a, [$f7ff]                                  ; $5d5e: $fa $ff $f7
	ld   de, $1111                                   ; $5d61: $11 $11 $11
	inc  de                                          ; $5d64: $13
	rst  $38                                         ; $5d65: $ff
	rst  $38                                         ; $5d66: $ff
	rst  $38                                         ; $5d67: $ff
	cp   [hl]                                        ; $5d68: $be
	rst  $38                                         ; $5d69: $ff
	pop  de                                          ; $5d6a: $d1
	ld   de, $1111                                   ; $5d6b: $11 $11 $11
	ld   a, [de]                                     ; $5d6e: $1a
	rst  $38                                         ; $5d6f: $ff
	rst  $38                                         ; $5d70: $ff
	db   $fd                                         ; $5d71: $fd
	rst  $28                                         ; $5d72: $ef
	rst  $38                                         ; $5d73: $ff
	ld   sp, $1111                                   ; $5d74: $31 $11 $11
	ld   de, $ff3f                                   ; $5d77: $11 $3f $ff
	rst  $38                                         ; $5d7a: $ff
	rst  $38                                         ; $5d7b: $ff
	rst  $38                                         ; $5d7c: $ff
	rst  $30                                         ; $5d7d: $f7
	ld   de, $1111                                   ; $5d7e: $11 $11 $11
	ld   de, $ffff                                   ; $5d81: $11 $ff $ff
	rst  $38                                         ; $5d84: $ff
	rst  $38                                         ; $5d85: $ff
	rst  $38                                         ; $5d86: $ff
	ldh  a, [c]                                      ; $5d87: $f2
	ld   de, $1111                                   ; $5d88: $11 $11 $11
	ld   de, $ffbf                                   ; $5d8b: $11 $bf $ff
	sub  $ef                                         ; $5d8e: $d6 $ef
	cp   $11                                         ; $5d90: $fe $11
	ld   de, $1151                                   ; $5d92: $11 $51 $11
	sbc  a                                           ; $5d95: $9f
	rst  $38                                         ; $5d96: $ff
	rst  $38                                         ; $5d97: $ff
	cp   $ff                                         ; $5d98: $fe $ff
	db   $f4                                         ; $5d9a: $f4
	ld   de, $1111                                   ; $5d9b: $11 $11 $11
	inc  d                                           ; $5d9e: $14
	ld   a, a                                        ; $5d9f: $7f
	rst  $38                                         ; $5da0: $ff
	ei                                               ; $5da1: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5da2: $cf
	rst  $38                                         ; $5da3: $ff
	ld   de, $2111                                   ; $5da4: $11 $11 $21
	ld   de, $ffaf                                   ; $5da7: $11 $af $ff
	rst  $38                                         ; $5daa: $ff
	cp   $ff                                         ; $5dab: $fe $ff
	pop  hl                                          ; $5dad: $e1
	ld   de, $1121                                   ; $5dae: $11 $21 $11
	rra                                              ; $5db1: $1f
	rst  $38                                         ; $5db2: $ff
	rst  $38                                         ; $5db3: $ff
	rst  $38                                         ; $5db4: $ff
	rst  $38                                         ; $5db5: $ff
	ld   sp, hl                                      ; $5db6: $f9
	ld   de, $1111                                   ; $5db7: $11 $11 $11
	ld   de, $ffaf                                   ; $5dba: $11 $af $ff
	db   $fd                                         ; $5dbd: $fd
	cp   a                                           ; $5dbe: $bf
	rst  $38                                         ; $5dbf: $ff
	ld   b, c                                        ; $5dc0: $41
	ld   de, $1134                                   ; $5dc1: $11 $34 $11
	ccf                                              ; $5dc4: $3f
	rst  $38                                         ; $5dc5: $ff
	cp   $ef                                         ; $5dc6: $fe $ef
	rst  $38                                         ; $5dc8: $ff
	ld   hl, $1111                                   ; $5dc9: $21 $11 $11
	ld   de, $ff3a                                   ; $5dcc: $11 $3a $ff
	rst  $38                                         ; $5dcf: $ff
	adc  [hl]                                        ; $5dd0: $8e
	rst  $38                                         ; $5dd1: $ff
	ld   b, c                                        ; $5dd2: $41
	ld   de, $1171                                   ; $5dd3: $11 $71 $11
	adc  a                                           ; $5dd6: $8f
	rst  $38                                         ; $5dd7: $ff
	rst  $38                                         ; $5dd8: $ff
	push af                                          ; $5dd9: $f5
	rst  $38                                         ; $5dda: $ff
	pop  af                                          ; $5ddb: $f1
	ld   de, $6115                                   ; $5ddc: $11 $15 $61
	dec  de                                          ; $5ddf: $1b
	rst  $38                                         ; $5de0: $ff
	rst  $38                                         ; $5de1: $ff
	xor  h                                           ; $5de2: $ac
	rst  $38                                         ; $5de3: $ff
	ld   de, $4111                                   ; $5de4: $11 $11 $41
	ld   de, $bfaf                                   ; $5de7: $11 $af $bf
	rst  $38                                         ; $5dea: $ff
	db   $fc                                         ; $5deb: $fc
	cp   $41                                         ; $5dec: $fe $41
	ld   de, $3114                                   ; $5dee: $11 $14 $31
	ld   a, $ff                                      ; $5df1: $3e $ff
	rst  $38                                         ; $5df3: $ff
	ld   l, c                                        ; $5df4: $69
	rst  $38                                         ; $5df5: $ff
	add  c                                           ; $5df6: $81
	ld   de, $5119                                   ; $5df7: $11 $19 $51
	ld   a, [hl+]                                    ; $5dfa: $2a
	rst  $38                                         ; $5dfb: $ff
	rst  $38                                         ; $5dfc: $ff
	dec  hl                                          ; $5dfd: $2b
	rst  $38                                         ; $5dfe: $ff
	ld   de, $5411                                   ; $5dff: $11 $11 $54
	ld   de, $ff9f                                   ; $5e02: $11 $9f $ff
	ld   a, [$f84f]                                  ; $5e05: $fa $4f $f8
	ld   de, $2a11                                   ; $5e08: $11 $11 $2a
	ld   de, $ffbf                                   ; $5e0b: $11 $bf $ff
	db   $f4                                         ; $5e0e: $f4
	ld   l, a                                        ; $5e0f: $6f
	pop  af                                          ; $5e10: $f1
	ld   de, $5113                                   ; $5e11: $11 $13 $51
	dec  de                                          ; $5e14: $1b
	rst  $38                                         ; $5e15: $ff
	ei                                               ; $5e16: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e17: $cf
	rst  $38                                         ; $5e18: $ff
	ld   de, $4412                                   ; $5e19: $11 $12 $44
	ld   hl, $ff2f                                   ; $5e1c: $21 $2f $ff
	ld   [$f9bf], a                                  ; $5e1f: $ea $bf $f9
	ld   de, $9418                                   ; $5e22: $11 $18 $94
	inc  d                                           ; $5e25: $14
	rst  $28                                         ; $5e26: $ef
	cp   $9a                                         ; $5e27: $fe $9a
	rst  $38                                         ; $5e29: $ff
	ld   h, c                                        ; $5e2a: $61
	ld   de, $8416                                   ; $5e2b: $11 $16 $84
	ld   c, d                                        ; $5e2e: $4a
	rst  $38                                         ; $5e2f: $ff
	db   $fc                                         ; $5e30: $fc
	add  hl, de                                      ; $5e31: $19
	rst  $38                                         ; $5e32: $ff
	ld   de, $fe13                                   ; $5e33: $11 $13 $fe
	ld   de, $ff8f                                   ; $5e36: $11 $8f $ff
	ld   sp, $91ef                                   ; $5e39: $31 $ef $91
	ld   de, $724c                                   ; $5e3c: $11 $4c $72
	ld   l, a                                        ; $5e3f: $6f
	rst  $38                                         ; $5e40: $ff
	ei                                               ; $5e41: $fb
	xor  a                                           ; $5e42: $af
	sub  c                                           ; $5e43: $91
	ld   [de], a                                     ; $5e44: $12
	ld   de, $ad17                                   ; $5e45: $11 $17 $ad
	rst  $38                                         ; $5e48: $ff
	rst  $38                                         ; $5e49: $ff
	rst  $20                                         ; $5e4a: $e7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e4b: $cf
	ld   b, c                                        ; $5e4c: $41
	ld   de, $914e                                   ; $5e4d: $11 $4e $91
	cpl                                              ; $5e50: $2f
	rst  $38                                         ; $5e51: $ff
	ld   [hl], d                                     ; $5e52: $72
	cp   [hl]                                        ; $5e53: $be
	pop  af                                          ; $5e54: $f1
	ld   de, $a44f                                   ; $5e55: $11 $4f $a4
	ld   e, d                                        ; $5e58: $5a
	rst  $38                                         ; $5e59: $ff
	push af                                          ; $5e5a: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e5b: $cf
	pop  de                                          ; $5e5c: $d1
	ld   de, $816e                                   ; $5e5d: $11 $6e $81
	dec  de                                          ; $5e60: $1b
	rst  $38                                         ; $5e61: $ff
	ei                                               ; $5e62: $fb
	adc  l                                           ; $5e63: $8d
	ld   hl, sp+$11                                  ; $5e64: $f8 $11
	inc  e                                           ; $5e66: $1c
	ld   [hl], e                                     ; $5e67: $73
	ld   de, $fbff                                   ; $5e68: $11 $ff $fb
	ld   a, a                                        ; $5e6b: $7f
	ei                                               ; $5e6c: $fb
	ld   hl, $c612                                   ; $5e6d: $21 $12 $c6
	ld   [de], a                                     ; $5e70: $12
	cp   a                                           ; $5e71: $bf
	rst  $38                                         ; $5e72: $ff
	xor  e                                           ; $5e73: $ab
	rst  $38                                         ; $5e74: $ff
	ld   b, c                                        ; $5e75: $41
	inc  d                                           ; $5e76: $14
	or   h                                           ; $5e77: $b4
	ld   de, $ff9f                                   ; $5e78: $11 $9f $ff
	sbc  h                                           ; $5e7b: $9c
	rst  $38                                         ; $5e7c: $ff
	ld   h, c                                        ; $5e7d: $61
	ld   de, $1177                                   ; $5e7e: $11 $77 $11
	ld   d, a                                        ; $5e81: $57
	rst  $38                                         ; $5e82: $ff
	ld   a, [$c3cf]                                  ; $5e83: $fa $cf $c3
	ld   de, $a318                                   ; $5e86: $11 $18 $a3
	ld   d, $ff                                      ; $5e89: $16 $ff
	db   $fc                                         ; $5e8b: $fc
	ld   a, l                                        ; $5e8c: $7d
	db   $fd                                         ; $5e8d: $fd
	ld   de, $f619                                   ; $5e8e: $11 $19 $f6
	ld   de, $ff7f                                   ; $5e91: $11 $7f $ff
	rst  $20                                         ; $5e94: $e7
	rst  JumpTable                                         ; $5e95: $df
	sub  c                                           ; $5e96: $91
	ld   de, $61bd                                   ; $5e97: $11 $bd $61
	inc  e                                           ; $5e9a: $1c
	rst  $38                                         ; $5e9b: $ff
	or   a                                           ; $5e9c: $b7
	ld   l, h                                        ; $5e9d: $6c
	push de                                          ; $5e9e: $d5
	ld   de, $432b                                   ; $5e9f: $11 $2b $43
	inc  l                                           ; $5ea2: $2c
	rst  $38                                         ; $5ea3: $ff
	rst  $38                                         ; $5ea4: $ff
	rst  $38                                         ; $5ea5: $ff
	ld   h, c                                        ; $5ea6: $61
	ld   de, $818a                                   ; $5ea7: $11 $8a $81
	inc  d                                           ; $5eaa: $14
	rst  $38                                         ; $5eab: $ff
	rst  $38                                         ; $5eac: $ff
	ld   h, a                                        ; $5ead: $67
	rst  $38                                         ; $5eae: $ff
	ld   d, c                                        ; $5eaf: $51
	ld   de, $31df                                   ; $5eb0: $11 $df $31
	ld   a, $ff                                      ; $5eb3: $3e $ff
	rst  $38                                         ; $5eb5: $ff
	cp   h                                           ; $5eb6: $bc
	ld   b, c                                        ; $5eb7: $41
	inc  d                                           ; $5eb8: $14
	add  a                                           ; $5eb9: $87
	ld   d, c                                        ; $5eba: $51
	add  hl, sp                                      ; $5ebb: $39
	rst  $38                                         ; $5ebc: $ff
	db   $ec                                         ; $5ebd: $ec
	sbc  $95                                         ; $5ebe: $de $95
	ld   de, $b16e                                   ; $5ec0: $11 $6e $b1
	ld   de, $f5ff                                   ; $5ec3: $11 $ff $f5
	ld   a, l                                        ; $5ec6: $7d
	db   $fd                                         ; $5ec7: $fd
	ld   sp, $f81a                                   ; $5ec8: $31 $1a $f8
	ld   de, $fd6f                                   ; $5ecb: $11 $6f $fd
	ld   l, c                                        ; $5ece: $69
	rst  $38                                         ; $5ecf: $ff
	ld   h, c                                        ; $5ed0: $61
	ld   de, $61df                                   ; $5ed1: $11 $df $61
	inc  e                                           ; $5ed4: $1c
	rst  $38                                         ; $5ed5: $ff
	cp   c                                           ; $5ed6: $b9
	rst  $28                                         ; $5ed7: $ef
	pop  bc                                          ; $5ed8: $c1
	scf                                              ; $5ed9: $37

jr_0cd_5eda:
	ld   b, d                                        ; $5eda: $42
	ld   d, h                                        ; $5edb: $54
	jr   z, jr_0cd_5eda                              ; $5edc: $28 $fc

	adc  h                                           ; $5ede: $8c
	cp   c                                           ; $5edf: $b9
	rst  JumpTable                                         ; $5ee0: $df
	ld   h, c                                        ; $5ee1: $61
	inc  d                                           ; $5ee2: $14
	sbc  d                                           ; $5ee3: $9a
	and  h                                           ; $5ee4: $a4
	add  hl, hl                                      ; $5ee5: $29
	rst  $38                                         ; $5ee6: $ff
	sbc  h                                           ; $5ee7: $9c
	ei                                               ; $5ee8: $fb
	ld   [hl], h                                     ; $5ee9: $74
	ld   [hl], c                                     ; $5eea: $71
	ld   a, [de]                                     ; $5eeb: $1a
	or   [hl]                                        ; $5eec: $b6
	dec  [hl]                                        ; $5eed: $35
	adc  c                                           ; $5eee: $89
	rst  $38                                         ; $5eef: $ff
	add  a                                           ; $5ef0: $87
	jp   z, $1166                                    ; $5ef1: $ca $66 $11

	ld   e, $f7                                      ; $5ef4: $1e $f7
	ld   de, $ff5f                                   ; $5ef6: $11 $5f $ff
	ld   d, c                                        ; $5ef9: $51
	xor  [hl]                                        ; $5efa: $ae
	sub  d                                           ; $5efb: $92
	jr   z, jr_0cd_5f79                              ; $5efc: $28 $7b

	ld   [hl], h                                     ; $5efe: $74
	ld   c, d                                        ; $5eff: $4a
	add  sp, -$67                                    ; $5f00: $e8 $99
	cp   h                                           ; $5f02: $bc
	add  h                                           ; $5f03: $84
	ld   [de], a                                     ; $5f04: $12
	sbc  [hl]                                        ; $5f05: $9e
	and  $13                                         ; $5f06: $e6 $13
	cp   a                                           ; $5f08: $bf
	db   $eb                                         ; $5f09: $eb
	ld   b, h                                        ; $5f0a: $44
	rst  JumpTable                                         ; $5f0b: $df
	ld   d, c                                        ; $5f0c: $51
	ld   e, h                                        ; $5f0d: $5c
	cp   c                                           ; $5f0e: $b9
	ld   h, h                                        ; $5f0f: $64
	ld   c, h                                        ; $5f10: $4c
	ret                                              ; $5f11: $c9


	adc  e                                           ; $5f12: $8b
	ld   [hl], h                                     ; $5f13: $74
	sbc  c                                           ; $5f14: $99
	ld   h, l                                        ; $5f15: $65
	halt                                             ; $5f16: $76
	ld   a, d                                        ; $5f17: $7a
	and  e                                           ; $5f18: $a3
	dec  sp                                          ; $5f19: $3b
	call $3ba4                                       ; $5f1a: $cd $a4 $3b
	rst  $10                                         ; $5f1d: $d7
	ld   d, h                                        ; $5f1e: $54
	sbc  e                                           ; $5f1f: $9b
	and  h                                           ; $5f20: $a4
	add  hl, hl                                      ; $5f21: $29
	db   $fd                                         ; $5f22: $fd
	add  hl, sp                                      ; $5f23: $39
	rst  ToBoot                                         ; $5f24: $c7
	ld   l, b                                        ; $5f25: $68
	sub  a                                           ; $5f26: $97
	sbc  b                                           ; $5f27: $98
	ld   sp, $76bd                                   ; $5f28: $31 $bd $76
	sub  a                                           ; $5f2b: $97
	ld   e, d                                        ; $5f2c: $5a
	cp   c                                           ; $5f2d: $b9
	ld   b, [hl]                                     ; $5f2e: $46
	cp   c                                           ; $5f2f: $b9
	ret  z                                           ; $5f30: $c8

	inc  [hl]                                        ; $5f31: $34

jr_0cd_5f32:
	xor  h                                           ; $5f32: $ac
	ld   d, a                                        ; $5f33: $57
	xor  c                                           ; $5f34: $a9
	adc  h                                           ; $5f35: $8c
	ld   [hl], c                                     ; $5f36: $71
	ld   e, a                                        ; $5f37: $5f
	ld   sp, hl                                      ; $5f38: $f9
	ld   d, h                                        ; $5f39: $54
	add  hl, hl                                      ; $5f3a: $29
	ei                                               ; $5f3b: $fb
	ld   e, b                                        ; $5f3c: $58
	cp   c                                           ; $5f3d: $b9
	ld   d, d                                        ; $5f3e: $52
	ld   l, c                                        ; $5f3f: $69
	bit  2, e                                        ; $5f40: $cb $53
	ld   e, h                                        ; $5f42: $5c
	ld   [$ab58], a                                  ; $5f43: $ea $58 $ab
	or   l                                           ; $5f46: $b5
	daa                                              ; $5f47: $27
	rst  $38                                         ; $5f48: $ff
	ld   d, c                                        ; $5f49: $51
	ld   c, b                                        ; $5f4a: $48
	rst  JumpTable                                         ; $5f4b: $df
	sub  l                                           ; $5f4c: $95
	ld   h, a                                        ; $5f4d: $67
	ld   [hl], a                                     ; $5f4e: $77
	ld   [hl], l                                     ; $5f4f: $75
	ld   b, a                                        ; $5f50: $47
	sub  [hl]                                        ; $5f51: $96
	cp   [hl]                                        ; $5f52: $be
	add  e                                           ; $5f53: $83
	daa                                              ; $5f54: $27
	xor  l                                           ; $5f55: $ad
	or   [hl]                                        ; $5f56: $b6
	ld   h, a                                        ; $5f57: $67
	xor  b                                           ; $5f58: $a8
	sbc  e                                           ; $5f59: $9b
	sbc  b                                           ; $5f5a: $98
	adc  d                                           ; $5f5b: $8a
	add  a                                           ; $5f5c: $87
	ld   h, [hl]                                     ; $5f5d: $66
	add  a                                           ; $5f5e: $87
	ld   a, c                                        ; $5f5f: $79
	ret                                              ; $5f60: $c9


	inc  sp                                          ; $5f61: $33
	adc  e                                           ; $5f62: $8b
	sbc  c                                           ; $5f63: $99
	sub  h                                           ; $5f64: $94
	jr   c, jr_0cd_5f32                              ; $5f65: $38 $cb

	sub  [hl]                                        ; $5f67: $96
	ld   [hl], $be                                   ; $5f68: $36 $be
	or   l                                           ; $5f6a: $b5
	ld   d, h                                        ; $5f6b: $54
	sbc  l                                           ; $5f6c: $9d
	cp   b                                           ; $5f6d: $b8
	ld   b, h                                        ; $5f6e: $44
	adc  [hl]                                        ; $5f6f: $8e
	rst  $20                                         ; $5f70: $e7
	ld   d, $cc                                      ; $5f71: $16 $cc
	and  l                                           ; $5f73: $a5
	ld   [hl], $b9                                   ; $5f74: $36 $b9
	ld   [hl], l                                     ; $5f76: $75
	ld   [hl], a                                     ; $5f77: $77
	adc  c                                           ; $5f78: $89

jr_0cd_5f79:
	ld   [hl], l                                     ; $5f79: $75
	sbc  a                                           ; $5f7a: $9f
	sub  h                                           ; $5f7b: $94
	ld   d, a                                        ; $5f7c: $57
	sbc  d                                           ; $5f7d: $9a
	db   $eb                                         ; $5f7e: $eb
	ld   b, d                                        ; $5f7f: $42
	ld   a, d                                        ; $5f80: $7a
	rst  $38                                         ; $5f81: $ff
	ld   h, c                                        ; $5f82: $61
	add  hl, de                                      ; $5f83: $19
	call c, $2b93                                    ; $5f84: $dc $93 $2b
	ld   sp, hl                                      ; $5f87: $f9
	ld   b, h                                        ; $5f88: $44
	sbc  l                                           ; $5f89: $9d
	cp   c                                           ; $5f8a: $b9
	ld   b, e                                        ; $5f8b: $43
	ld   a, c                                        ; $5f8c: $79
	sbc  b                                           ; $5f8d: $98
	sbc  c                                           ; $5f8e: $99
	sbc  c                                           ; $5f8f: $99
	sub  [hl]                                        ; $5f90: $96
	ld   l, b                                        ; $5f91: $68
	adc  c                                           ; $5f92: $89
	and  a                                           ; $5f93: $a7
	ld   h, $b8                                      ; $5f94: $26 $b8
	ld   d, a                                        ; $5f96: $57
	sbc  b                                           ; $5f97: $98
	sbc  b                                           ; $5f98: $98
	dec  [hl]                                        ; $5f99: $35
	xor  $73                                         ; $5f9a: $ee $73
	ld   c, b                                        ; $5f9c: $48
	call z, $6886                                    ; $5f9d: $cc $86 $68
	add  a                                           ; $5fa0: $87
	sbc  c                                           ; $5fa1: $99
	ld   d, [hl]                                     ; $5fa2: $56
	xor  d                                           ; $5fa3: $aa
	halt                                             ; $5fa4: $76
	ld   d, l                                        ; $5fa5: $55
	sbc  d                                           ; $5fa6: $9a
	sbc  d                                           ; $5fa7: $9a
	sub  [hl]                                        ; $5fa8: $96
	ld   [hl], $cb                                   ; $5fa9: $36 $cb
	ld   [hl], l                                     ; $5fab: $75
	ld   e, d                                        ; $5fac: $5a
	ret  c                                           ; $5fad: $d8

	dec  [hl]                                        ; $5fae: $35
	adc  $a4                                         ; $5faf: $ce $a4
	scf                                              ; $5fb1: $37
	db   $ed                                         ; $5fb2: $ed
	ld   d, e                                        ; $5fb3: $53
	adc  [hl]                                        ; $5fb4: $8e
	or   l                                           ; $5fb5: $b5
	scf                                              ; $5fb6: $37
	sbc  $72                                         ; $5fb7: $de $72
	add  hl, sp                                      ; $5fb9: $39
	db   $fc                                         ; $5fba: $fc
	ld   b, e                                        ; $5fbb: $43
	ld   l, e                                        ; $5fbc: $6b
	cp   b                                           ; $5fbd: $b8
	ld   b, h                                        ; $5fbe: $44
	adc  d                                           ; $5fbf: $8a
	sbc  b                                           ; $5fc0: $98
	ld   h, a                                        ; $5fc1: $67
	adc  d                                           ; $5fc2: $8a
	and  a                                           ; $5fc3: $a7
	ld   d, [hl]                                     ; $5fc4: $56
	ld   a, c                                        ; $5fc5: $79
	sbc  h                                           ; $5fc6: $9c
	and  [hl]                                        ; $5fc7: $a6
	ld   h, [hl]                                     ; $5fc8: $66
	xor  h                                           ; $5fc9: $ac
	rst  ToBoot                                         ; $5fca: $c7
	ld   b, l                                        ; $5fcb: $45
	ld   a, b                                        ; $5fcc: $78
	sbc  c                                           ; $5fcd: $99
	ld   [hl], l                                     ; $5fce: $75
	ld   l, b                                        ; $5fcf: $68
	cp   c                                           ; $5fd0: $b9
	ld   h, l                                        ; $5fd1: $65
	adc  d                                           ; $5fd2: $8a
	add  l                                           ; $5fd3: $85
	ld   l, b                                        ; $5fd4: $68
	add  a                                           ; $5fd5: $87
	ld   a, c                                        ; $5fd6: $79
	ld   [hl], a                                     ; $5fd7: $77
	ld   a, b                                        ; $5fd8: $78
	sbc  c                                           ; $5fd9: $99
	sub  [hl]                                        ; $5fda: $96
	ld   a, c                                        ; $5fdb: $79
	add  a                                           ; $5fdc: $87
	ld   a, b                                        ; $5fdd: $78
	sbc  c                                           ; $5fde: $99
	sub  a                                           ; $5fdf: $97
	ld   l, c                                        ; $5fe0: $69
	xor  c                                           ; $5fe1: $a9
	ld   [hl], a                                     ; $5fe2: $77
	add  a                                           ; $5fe3: $87
	ld   h, a                                        ; $5fe4: $67
	adc  d                                           ; $5fe5: $8a
	or   a                                           ; $5fe6: $b7
	ld   d, a                                        ; $5fe7: $57
	cp   e                                           ; $5fe8: $bb
	ld   [hl], l                                     ; $5fe9: $75
	ld   l, b                                        ; $5fea: $68
	xor  b                                           ; $5feb: $a8
	ld   h, [hl]                                     ; $5fec: $66
	adc  c                                           ; $5fed: $89
	ld   [hl], a                                     ; $5fee: $77
	adc  b                                           ; $5fef: $88
	ld   [hl], a                                     ; $5ff0: $77
	ld   a, b                                        ; $5ff1: $78
	sbc  d                                           ; $5ff2: $9a
	halt                                             ; $5ff3: $76
	sbc  d                                           ; $5ff4: $9a
	add  [hl]                                        ; $5ff5: $86
	ld   h, a                                        ; $5ff6: $67
	adc  c                                           ; $5ff7: $89
	ld   [hl], a                                     ; $5ff8: $77
	xor  e                                           ; $5ff9: $ab
	add  [hl]                                        ; $5ffa: $86
	ld   a, c                                        ; $5ffb: $79
	cp   d                                           ; $5ffc: $ba
	ld   [hl], l                                     ; $5ffd: $75
	ld   a, d                                        ; $5ffe: $7a
	xor  b                                           ; $5fff: $a8
	ld   d, [hl]                                     ; $6000: $56
	adc  e                                           ; $6001: $8b
	and  [hl]                                        ; $6002: $a6
	ld   l, c                                        ; $6003: $69
	xor  b                                           ; $6004: $a8
	ld   h, [hl]                                     ; $6005: $66
	adc  e                                           ; $6006: $8b
	sub  [hl]                                        ; $6007: $96
	ld   e, b                                        ; $6008: $58
	xor  d                                           ; $6009: $aa
	ld   [hl], l                                     ; $600a: $75
	ld   e, b                                        ; $600b: $58
	xor  b                                           ; $600c: $a8
	ld   h, [hl]                                     ; $600d: $66
	ld   a, c                                        ; $600e: $79
	adc  b                                           ; $600f: $88
	ld   h, [hl]                                     ; $6010: $66
	adc  d                                           ; $6011: $8a
	sub  [hl]                                        ; $6012: $96
	ld   h, a                                        ; $6013: $67
	sbc  c                                           ; $6014: $99
	adc  b                                           ; $6015: $88
	ld   [hl], a                                     ; $6016: $77
	sbc  c                                           ; $6017: $99
	adc  c                                           ; $6018: $89
	ld   [hl], a                                     ; $6019: $77
	ld   a, b                                        ; $601a: $78
	adc  b                                           ; $601b: $88
	sbc  c                                           ; $601c: $99
	adc  b                                           ; $601d: $88
	ld   [hl], a                                     ; $601e: $77
	ld   a, d                                        ; $601f: $7a
	sub  a                                           ; $6020: $97
	ld   h, [hl]                                     ; $6021: $66
	adc  c                                           ; $6022: $89
	add  a                                           ; $6023: $87
	ld   a, b                                        ; $6024: $78
	sbc  c                                           ; $6025: $99
	ld   [hl], a                                     ; $6026: $77
	adc  c                                           ; $6027: $89
	sub  a                                           ; $6028: $97
	adc  c                                           ; $6029: $89
	add  a                                           ; $602a: $87
	ld   [hl], a                                     ; $602b: $77
	sbc  c                                           ; $602c: $99
	adc  b                                           ; $602d: $88
	adc  c                                           ; $602e: $89
	sbc  b                                           ; $602f: $98
	adc  b                                           ; $6030: $88
	sbc  c                                           ; $6031: $99
	add  a                                           ; $6032: $87
	ld   a, b                                        ; $6033: $78
	adc  b                                           ; $6034: $88
	ld   a, c                                        ; $6035: $79
	adc  b                                           ; $6036: $88
	adc  c                                           ; $6037: $89
	sbc  c                                           ; $6038: $99
	add  [hl]                                        ; $6039: $86
	ld   a, c                                        ; $603a: $79
	xor  c                                           ; $603b: $a9
	halt                                             ; $603c: $76
	ld   l, b                                        ; $603d: $68
	sbc  c                                           ; $603e: $99
	sub  a                                           ; $603f: $97
	ld   a, c                                        ; $6040: $79
	sbc  c                                           ; $6041: $99
	add  a                                           ; $6042: $87
	ld   a, b                                        ; $6043: $78
	sbc  c                                           ; $6044: $99
	sub  a                                           ; $6045: $97
	ld   a, b                                        ; $6046: $78
	adc  c                                           ; $6047: $89
	add  a                                           ; $6048: $87
	ld   a, b                                        ; $6049: $78
	sbc  b                                           ; $604a: $98
	ld   [hl], a                                     ; $604b: $77
	sbc  d                                           ; $604c: $9a
	sbc  b                                           ; $604d: $98
	ld   [hl], a                                     ; $604e: $77
	sbc  d                                           ; $604f: $9a
	add  a                                           ; $6050: $87
	ld   a, b                                        ; $6051: $78
	sbc  b                                           ; $6052: $98
	ld   [hl], a                                     ; $6053: $77
	adc  c                                           ; $6054: $89
	sbc  b                                           ; $6055: $98
	ld   a, b                                        ; $6056: $78
	adc  c                                           ; $6057: $89
	add  a                                           ; $6058: $87
	ld   a, b                                        ; $6059: $78
	sbc  b                                           ; $605a: $98
	adc  b                                           ; $605b: $88
	ld   a, b                                        ; $605c: $78
	adc  b                                           ; $605d: $88
	sbc  c                                           ; $605e: $99
	adc  c                                           ; $605f: $89
	adc  b                                           ; $6060: $88
	add  a                                           ; $6061: $87
	adc  c                                           ; $6062: $89
	add  a                                           ; $6063: $87
	ld   a, b                                        ; $6064: $78
	sbc  b                                           ; $6065: $98
	add  a                                           ; $6066: $87
	adc  b                                           ; $6067: $88
	sbc  b                                           ; $6068: $98
	ld   [hl], a                                     ; $6069: $77
	adc  c                                           ; $606a: $89
	add  a                                           ; $606b: $87
	ld   a, b                                        ; $606c: $78
	sbc  c                                           ; $606d: $99
	adc  b                                           ; $606e: $88
	adc  b                                           ; $606f: $88
	sbc  b                                           ; $6070: $98
	add  a                                           ; $6071: $87
	adc  c                                           ; $6072: $89
	add  a                                           ; $6073: $87
	ld   a, b                                        ; $6074: $78
	adc  b                                           ; $6075: $88
	adc  b                                           ; $6076: $88
	adc  b                                           ; $6077: $88
	sbc  c                                           ; $6078: $99
	adc  b                                           ; $6079: $88
	adc  c                                           ; $607a: $89
	sbc  b                                           ; $607b: $98
	ld   [hl], a                                     ; $607c: $77
	adc  b                                           ; $607d: $88
	adc  b                                           ; $607e: $88
	adc  c                                           ; $607f: $89
	sbc  b                                           ; $6080: $98
	adc  b                                           ; $6081: $88
	adc  b                                           ; $6082: $88
	sbc  b                                           ; $6083: $98
	adc  b                                           ; $6084: $88
	adc  b                                           ; $6085: $88
	adc  b                                           ; $6086: $88
	adc  b                                           ; $6087: $88
	adc  c                                           ; $6088: $89
	sbc  b                                           ; $6089: $98
	adc  b                                           ; $608a: $88
	sbc  c                                           ; $608b: $99
	adc  b                                           ; $608c: $88
	adc  b                                           ; $608d: $88
	adc  b                                           ; $608e: $88
	adc  b                                           ; $608f: $88
	adc  b                                           ; $6090: $88
	adc  b                                           ; $6091: $88
	adc  b                                           ; $6092: $88
	adc  b                                           ; $6093: $88
	adc  b                                           ; $6094: $88
	adc  b                                           ; $6095: $88
	adc  b                                           ; $6096: $88
	adc  b                                           ; $6097: $88
	adc  b                                           ; $6098: $88
	adc  b                                           ; $6099: $88
	adc  b                                           ; $609a: $88
	adc  b                                           ; $609b: $88
	sbc  b                                           ; $609c: $98
	adc  b                                           ; $609d: $88
	adc  b                                           ; $609e: $88
	adc  b                                           ; $609f: $88
	adc  b                                           ; $60a0: $88
	adc  b                                           ; $60a1: $88
	adc  b                                           ; $60a2: $88
	adc  b                                           ; $60a3: $88
	adc  b                                           ; $60a4: $88
	adc  b                                           ; $60a5: $88
	adc  b                                           ; $60a6: $88
	adc  b                                           ; $60a7: $88
	adc  b                                           ; $60a8: $88
	adc  b                                           ; $60a9: $88
	adc  b                                           ; $60aa: $88
	adc  b                                           ; $60ab: $88
	adc  b                                           ; $60ac: $88
	adc  b                                           ; $60ad: $88
	adc  b                                           ; $60ae: $88
	adc  b                                           ; $60af: $88
	adc  b                                           ; $60b0: $88
	adc  b                                           ; $60b1: $88
	adc  b                                           ; $60b2: $88
	adc  b                                           ; $60b3: $88
	adc  b                                           ; $60b4: $88
	adc  b                                           ; $60b5: $88
	adc  b                                           ; $60b6: $88
	adc  b                                           ; $60b7: $88
	adc  b                                           ; $60b8: $88
	adc  b                                           ; $60b9: $88
	adc  b                                           ; $60ba: $88
	adc  b                                           ; $60bb: $88
	adc  b                                           ; $60bc: $88
	adc  b                                           ; $60bd: $88
	adc  b                                           ; $60be: $88
	adc  b                                           ; $60bf: $88
	adc  b                                           ; $60c0: $88
	adc  b                                           ; $60c1: $88
	adc  b                                           ; $60c2: $88
	adc  b                                           ; $60c3: $88
	adc  b                                           ; $60c4: $88
	adc  b                                           ; $60c5: $88
	adc  b                                           ; $60c6: $88
	adc  b                                           ; $60c7: $88
	adc  b                                           ; $60c8: $88
	adc  b                                           ; $60c9: $88
	adc  b                                           ; $60ca: $88
	adc  b                                           ; $60cb: $88
	adc  b                                           ; $60cc: $88
	adc  b                                           ; $60cd: $88
	adc  b                                           ; $60ce: $88
	adc  b                                           ; $60cf: $88
	adc  b                                           ; $60d0: $88
	adc  b                                           ; $60d1: $88
	adc  b                                           ; $60d2: $88
	adc  b                                           ; $60d3: $88
	adc  b                                           ; $60d4: $88
	adc  b                                           ; $60d5: $88
	adc  b                                           ; $60d6: $88
	adc  b                                           ; $60d7: $88
	adc  b                                           ; $60d8: $88
	adc  b                                           ; $60d9: $88
	adc  b                                           ; $60da: $88
	adc  b                                           ; $60db: $88
	adc  b                                           ; $60dc: $88
	adc  b                                           ; $60dd: $88
	adc  b                                           ; $60de: $88
	adc  b                                           ; $60df: $88
	adc  b                                           ; $60e0: $88
	adc  b                                           ; $60e1: $88
	adc  b                                           ; $60e2: $88
	adc  b                                           ; $60e3: $88
	adc  b                                           ; $60e4: $88
	adc  b                                           ; $60e5: $88
	adc  b                                           ; $60e6: $88
	adc  b                                           ; $60e7: $88
	adc  b                                           ; $60e8: $88
	adc  b                                           ; $60e9: $88
	adc  b                                           ; $60ea: $88
	adc  b                                           ; $60eb: $88
	adc  b                                           ; $60ec: $88
	adc  b                                           ; $60ed: $88
	adc  b                                           ; $60ee: $88
	adc  b                                           ; $60ef: $88
	adc  b                                           ; $60f0: $88
	adc  b                                           ; $60f1: $88
	adc  b                                           ; $60f2: $88
	adc  b                                           ; $60f3: $88
	adc  b                                           ; $60f4: $88
	adc  b                                           ; $60f5: $88
	adc  b                                           ; $60f6: $88
	adc  b                                           ; $60f7: $88
	adc  b                                           ; $60f8: $88
	ld   de, $1111                                   ; $60f9: $11 $11 $11
	ld   de, $1111                                   ; $60fc: $11 $11 $11
	ld   de, $1111                                   ; $60ff: $11 $11 $11
	ld   de, $1111                                   ; $6102: $11 $11 $11
	ld   de, $1111                                   ; $6105: $11 $11 $11
	ld   de, $1111                                   ; $6108: $11 $11 $11
	ld   de, $1111                                   ; $610b: $11 $11 $11
	ld   de, $1111                                   ; $610e: $11 $11 $11
	ld   de, $1111                                   ; $6111: $11 $11 $11
	ld   de, $1111                                   ; $6114: $11 $11 $11
	ld   de, $1111                                   ; $6117: $11 $11 $11
	ld   de, $1111                                   ; $611a: $11 $11 $11
	ld   de, $1111                                   ; $611d: $11 $11 $11
	ld   de, $1111                                   ; $6120: $11 $11 $11
	ld   de, $1111                                   ; $6123: $11 $11 $11
	ld   de, $1111                                   ; $6126: $11 $11 $11
	ld   de, $1111                                   ; $6129: $11 $11 $11
	ld   de, $0011                                   ; $612c: $11 $11 $00
	ld   c, b                                        ; $612f: $48
	ld   de, $1111                                   ; $6130: $11 $11 $11
	ld   de, $1111                                   ; $6133: $11 $11 $11
	ld   de, $1111                                   ; $6136: $11 $11 $11
	ld   de, $5413                                   ; $6139: $11 $13 $54
	ld   d, h                                        ; $613c: $54
	ld   d, h                                        ; $613d: $54
	ld   b, c                                        ; $613e: $41
	rra                                              ; $613f: $1f
	rst  $38                                         ; $6140: $ff
	pop  af                                          ; $6141: $f1
	ld   de, $1b11                                   ; $6142: $11 $11 $1b
	ld   [hl], c                                     ; $6145: $71
	ld   de, $de1c                                   ; $6146: $11 $1c $de
	call z, $c1de                                    ; $6149: $cc $de $c1
	ld   de, $1111                                   ; $614c: $11 $11 $11
	ld   de, $1111                                   ; $614f: $11 $11 $11
	ld   de, $1111                                   ; $6152: $11 $11 $11
	ld   de, $1111                                   ; $6155: $11 $11 $11
	ld   de, $5411                                   ; $6158: $11 $11 $54
	ld   b, h                                        ; $615b: $44
	ld   l, e                                        ; $615c: $6b
	ld   de, $5454                                   ; $615d: $11 $54 $54
	ld   h, a                                        ; $6160: $67
	ld   [hl], d                                     ; $6161: $72
	ld   de, $1111                                   ; $6162: $11 $11 $11
	ld   de, $1112                                   ; $6165: $11 $12 $11
	ld   [de], a                                     ; $6168: $12
	ld   de, $1111                                   ; $6169: $11 $11 $11
	ld   h, [hl]                                     ; $616c: $66
	halt                                             ; $616d: $76
	ld   c, e                                        ; $616e: $4b
	ld   de, $9988                                   ; $616f: $11 $88 $99
	sbc  b                                           ; $6172: $98
	ld   [hl], a                                     ; $6173: $77
	ld   [hl], a                                     ; $6174: $77
	adc  c                                           ; $6175: $89
	adc  c                                           ; $6176: $89
	adc  b                                           ; $6177: $88
	adc  b                                           ; $6178: $88
	ld   [hl], a                                     ; $6179: $77
	adc  c                                           ; $617a: $89
	sbc  b                                           ; $617b: $98
	adc  c                                           ; $617c: $89
	adc  b                                           ; $617d: $88
	add  a                                           ; $617e: $87
	halt                                             ; $617f: $76
	ld   [hl], a                                     ; $6180: $77
	adc  b                                           ; $6181: $88
	adc  b                                           ; $6182: $88
	adc  b                                           ; $6183: $88
	adc  b                                           ; $6184: $88
	add  a                                           ; $6185: $87
	adc  b                                           ; $6186: $88
	sbc  d                                           ; $6187: $9a
	xor  e                                           ; $6188: $ab
	jp   z, Jump_0cd_4596                            ; $6189: $ca $96 $45

	ld   e, c                                        ; $618c: $59
	xor  e                                           ; $618d: $ab
	and  a                                           ; $618e: $a7
	ld   [hl], a                                     ; $618f: $77
	adc  c                                           ; $6190: $89
	sbc  c                                           ; $6191: $99
	adc  b                                           ; $6192: $88
	ld   h, a                                        ; $6193: $67
	ld   h, a                                        ; $6194: $67
	adc  c                                           ; $6195: $89
	add  a                                           ; $6196: $87
	halt                                             ; $6197: $76
	ld   h, [hl]                                     ; $6198: $66
	ld   [hl], a                                     ; $6199: $77
	sbc  c                                           ; $619a: $99
	adc  b                                           ; $619b: $88
	sbc  d                                           ; $619c: $9a
	cp   d                                           ; $619d: $ba
	add  a                                           ; $619e: $87
	ld   d, e                                        ; $619f: $53
	dec  [hl]                                        ; $61a0: $35
	ld   a, b                                        ; $61a1: $78
	adc  c                                           ; $61a2: $89
	sbc  e                                           ; $61a3: $9b
	cp   d                                           ; $61a4: $ba
	xor  d                                           ; $61a5: $aa
	sub  a                                           ; $61a6: $97
	ld   h, [hl]                                     ; $61a7: $66
	ld   b, h                                        ; $61a8: $44
	ld   e, b                                        ; $61a9: $58
	xor  h                                           ; $61aa: $ac
	call c, $76a9                                    ; $61ab: $dc $a9 $76
	ld   h, [hl]                                     ; $61ae: $66
	ld   d, h                                        ; $61af: $54
	inc  sp                                          ; $61b0: $33
	ld   d, [hl]                                     ; $61b1: $56
	adc  d                                           ; $61b2: $8a
	cp   d                                           ; $61b3: $ba
	sbc  d                                           ; $61b4: $9a
	sub  a                                           ; $61b5: $97
	ld   h, h                                        ; $61b6: $64
	ld   l, d                                        ; $61b7: $6a
	rst  $38                                         ; $61b8: $ff
	db   $fc                                         ; $61b9: $fc
	ld   h, c                                        ; $61ba: $61
	ld   [de], a                                     ; $61bb: $12
	ld   l, c                                        ; $61bc: $69
	cp   e                                           ; $61bd: $bb
	sbc  b                                           ; $61be: $98
	ld   a, c                                        ; $61bf: $79
	xor  e                                           ; $61c0: $ab
	xor  d                                           ; $61c1: $aa
	halt                                             ; $61c2: $76
	ld   d, l                                        ; $61c3: $55
	ld   d, [hl]                                     ; $61c4: $56
	ld   d, h                                        ; $61c5: $54
	inc  sp                                          ; $61c6: $33
	inc  sp                                          ; $61c7: $33
	inc  [hl]                                        ; $61c8: $34
	ld   h, [hl]                                     ; $61c9: $66
	ld   a, b                                        ; $61ca: $78
	sbc  d                                           ; $61cb: $9a
	cp   h                                           ; $61cc: $bc
	db   $dd                                         ; $61cd: $dd
	set  1, e                                        ; $61ce: $cb $cb
	call $bacc                                       ; $61d0: $cd $cc $ba
	sbc  b                                           ; $61d3: $98
	add  a                                           ; $61d4: $87
	add  a                                           ; $61d5: $87
	ld   h, l                                        ; $61d6: $65
	ld   [hl-], a                                    ; $61d7: $32

Call_0cd_61d8:
	ld   de, $1111                                   ; $61d8: $11 $11 $11
	ld   [hl], $9b                                   ; $61db: $36 $9b
	sbc  $ff                                         ; $61dd: $de $ff
	rst  $28                                         ; $61df: $ef
	rst  $28                                         ; $61e0: $ef
	db   $ed                                         ; $61e1: $ed
	ld   [$78a9], a                                  ; $61e2: $ea $a9 $78
	sbc  d                                           ; $61e5: $9a
	cp   c                                           ; $61e6: $b9
	sub  a                                           ; $61e7: $97
	ld   d, h                                        ; $61e8: $54
	ld   hl, $1111                                   ; $61e9: $21 $11 $11
	ld   de, $ac36                                   ; $61ec: $11 $36 $ac
	adc  $dd                                         ; $61ef: $ce $dd
	db   $dd                                         ; $61f1: $dd
	sbc  $fe                                         ; $61f2: $de $fe
	db   $ec                                         ; $61f4: $ec
	sbc  c                                           ; $61f5: $99
	ld   a, c                                        ; $61f6: $79
	xor  e                                           ; $61f7: $ab
	set  1, h                                        ; $61f8: $cb $cc
	jp   z, $2196                                    ; $61fa: $ca $96 $21

	ld   de, $1511                                   ; $61fd: $11 $11 $15
	sbc  [hl]                                        ; $6200: $9e
	rst  $38                                         ; $6201: $ff
	rst  $38                                         ; $6202: $ff
	rst  $38                                         ; $6203: $ff
	rst  $28                                         ; $6204: $ef
	rst  $38                                         ; $6205: $ff
	reti                                             ; $6206: $d9


	halt                                             ; $6207: $76
	ld   b, [hl]                                     ; $6208: $46
	ld   a, b                                        ; $6209: $78
	res  7, d                                        ; $620a: $cb $ba
	sub  a                                           ; $620c: $97
	ld   sp, $1111                                   ; $620d: $31 $11 $11
	ld   de, $ff7f                                   ; $6210: $11 $7f $ff
	rst  $38                                         ; $6213: $ff
	db   $ed                                         ; $6214: $ed
	rst  $38                                         ; $6215: $ff
	rst  $38                                         ; $6216: $ff
	ei                                               ; $6217: $fb
	ld   h, e                                        ; $6218: $63
	inc  hl                                          ; $6219: $23
	ld   e, b                                        ; $621a: $58
	db   $dd                                         ; $621b: $dd
	db   $db                                         ; $621c: $db
	add  e                                           ; $621d: $83
	ld   de, $1111                                   ; $621e: $11 $11 $11
	ld   a, a                                        ; $6221: $7f
	rst  $38                                         ; $6222: $ff
	rst  $38                                         ; $6223: $ff
	db   $db                                         ; $6224: $db
	rst  JumpTable                                         ; $6225: $df
	rst  $38                                         ; $6226: $ff
	cp   $72                                         ; $6227: $fe $72
	ld   de, $cd59                                   ; $6229: $11 $59 $cd
	bit  0, c                                        ; $622c: $cb $41
	ld   de, $1911                                   ; $622e: $11 $11 $19
	rst  $38                                         ; $6231: $ff
	rst  $38                                         ; $6232: $ff
	bit  2, a                                        ; $6233: $cb $57
	rst  $28                                         ; $6235: $ef
	rst  $38                                         ; $6236: $ff
	rst  $38                                         ; $6237: $ff
	ld   h, e                                        ; $6238: $63
	ld   de, $ce57                                   ; $6239: $11 $57 $ce
	and  h                                           ; $623c: $a4
	ld   de, $1811                                   ; $623d: $11 $11 $18
	rst  $38                                         ; $6240: $ff
	rst  $38                                         ; $6241: $ff
	db   $eb                                         ; $6242: $eb
	inc  sp                                          ; $6243: $33
	xor  l                                           ; $6244: $ad
	rst  $38                                         ; $6245: $ff
	rst  $38                                         ; $6246: $ff
	sub  e                                           ; $6247: $93
	ld   de, $bf15                                   ; $6248: $11 $15 $bf
	db   $e4                                         ; $624b: $e4
	ld   de, $1e11                                   ; $624c: $11 $11 $1e
	rst  $38                                         ; $624f: $ff
	rst  $38                                         ; $6250: $ff
	rst  $30                                         ; $6251: $f7
	inc  [hl]                                        ; $6252: $34
	dec  l                                           ; $6253: $2d
	rst  $38                                         ; $6254: $ff
	rst  $38                                         ; $6255: $ff
	add  d                                           ; $6256: $82
	ld   de, $ff38                                   ; $6257: $11 $38 $ff
	sub  c                                           ; $625a: $91
	ld   de, $5f11                                   ; $625b: $11 $11 $5f
	rst  $38                                         ; $625e: $ff
	rst  $38                                         ; $625f: $ff
	push af                                          ; $6260: $f5
	ld   h, [hl]                                     ; $6261: $66
	ld   e, a                                        ; $6262: $5f
	rst  $38                                         ; $6263: $ff
	ld   hl, sp+$11                                  ; $6264: $f8 $11
	ld   [de], a                                     ; $6266: $12
	ld   a, a                                        ; $6267: $7f
	db   $fc                                         ; $6268: $fc
	ld   de, $1211                                   ; $6269: $11 $11 $12
	rst  $38                                         ; $626c: $ff
	rst  $38                                         ; $626d: $ff
	rst  $38                                         ; $626e: $ff
	ld   h, l                                        ; $626f: $65
	ld   [de], a                                     ; $6270: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6271: $cf
	rst  $38                                         ; $6272: $ff
	ld   sp, hl                                      ; $6273: $f9
	ld   de, $b912                                   ; $6274: $11 $12 $b9
	ld   b, c                                        ; $6277: $41
	ld   de, $ac11                                   ; $6278: $11 $11 $ac
	rst  $38                                         ; $627b: $ff
	rst  $38                                         ; $627c: $ff
	bit  4, c                                        ; $627d: $cb $61
	xor  d                                           ; $627f: $aa
	rst  JumpTable                                         ; $6280: $df
	swap c                                           ; $6281: $cb $31
	ld   b, l                                        ; $6283: $45
	xor  e                                           ; $6284: $ab
	ld   sp, $1111                                   ; $6285: $31 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6288: $cf
	rst  $38                                         ; $6289: $ff
	rst  $38                                         ; $628a: $ff
	ld   a, c                                        ; $628b: $79
	ld   d, c                                        ; $628c: $51
	cp   d                                           ; $628d: $ba
	rst  $38                                         ; $628e: $ff
	call Call_0cd_5341                               ; $628f: $cd $41 $53
	sbc  h                                           ; $6292: $9c
	ld   hl, $1111                                   ; $6293: $21 $11 $11
	db   $dd                                         ; $6296: $dd
	rst  $38                                         ; $6297: $ff
	rst  $38                                         ; $6298: $ff
	adc  c                                           ; $6299: $89
	ld   h, c                                        ; $629a: $61
	or   a                                           ; $629b: $b7
	cp   a                                           ; $629c: $bf
	sbc  [hl]                                        ; $629d: $9e
	sub  c                                           ; $629e: $91
	add  l                                           ; $629f: $85
	ld   l, b                                        ; $62a0: $68
	ld   de, $1211                                   ; $62a1: $11 $11 $12
	cp   a                                           ; $62a4: $bf
	rst  $38                                         ; $62a5: $ff
	rst  $38                                         ; $62a6: $ff
	xor  [hl]                                        ; $62a7: $ae
	ld   d, c                                        ; $62a8: $51
	or   a                                           ; $62a9: $b7
	rst  $28                                         ; $62aa: $ef
	ld   a, d                                        ; $62ab: $7a
	ld   d, d                                        ; $62ac: $52
	sub  a                                           ; $62ad: $97
	ld   h, d                                        ; $62ae: $62
	ld   de, $1f11                                   ; $62af: $11 $11 $1f
	ld   a, a                                        ; $62b2: $7f
	rst  $38                                         ; $62b3: $ff
	rst  $30                                         ; $62b4: $f7
	jp   c, Jump_0cd_6b1f                            ; $62b5: $da $1f $6b

	rst  $30                                         ; $62b8: $f7
	ret  c                                           ; $62b9: $d8

	ld   l, c                                        ; $62ba: $69
	add  [hl]                                        ; $62bb: $86
	ld   de, $1111                                   ; $62bc: $11 $11 $11
	db   $fc                                         ; $62bf: $fc
	rst  $38                                         ; $62c0: $ff
	rst  $38                                         ; $62c1: $ff
	call z, $fad4                                    ; $62c2: $cc $d4 $fa
	cp   l                                           ; $62c5: $bd
	ld   b, [hl]                                     ; $62c6: $46
	ld   [hl], $cd                                   ; $62c7: $36 $cd
	pop  af                                          ; $62c9: $f1
	ld   de, $1f11                                   ; $62ca: $11 $11 $1f
	rst  $38                                         ; $62cd: $ff
	rst  $38                                         ; $62ce: $ff
	db   $f4                                         ; $62cf: $f4
	add  a                                           ; $62d0: $87
	rra                                              ; $62d1: $1f
	cp   a                                           ; $62d2: $bf
	push af                                          ; $62d3: $f5
	sub  c                                           ; $62d4: $91
	jr   c, @-$60                                    ; $62d5: $38 $9e

	ld   de, $1211                                   ; $62d7: $11 $11 $12
	rst  $28                                         ; $62da: $ef
	rst  $38                                         ; $62db: $ff
	rst  $38                                         ; $62dc: $ff
	ld   e, h                                        ; $62dd: $5c
	inc  de                                          ; $62de: $13
	ld   hl, sp-$02                                  ; $62df: $f8 $fe
	sbc  c                                           ; $62e1: $99
	rla                                              ; $62e2: $17
	ld   a, e                                        ; $62e3: $7b
	add  c                                           ; $62e4: $81
	ld   de, $bf11                                   ; $62e5: $11 $11 $bf
	rst  $38                                         ; $62e8: $ff
	rst  $38                                         ; $62e9: $ff
	pop  af                                          ; $62ea: $f1
	pop  de                                          ; $62eb: $d1
	cp   a                                           ; $62ec: $bf
	cp   a                                           ; $62ed: $bf
	and  l                                           ; $62ee: $a5
	ld   [hl], c                                     ; $62ef: $71
	xor  d                                           ; $62f0: $aa
	and  l                                           ; $62f1: $a5
	ld   de, $1f11                                   ; $62f2: $11 $11 $1f
	rst  $38                                         ; $62f5: $ff
	rst  $38                                         ; $62f6: $ff
	di                                               ; $62f7: $f3
	ld   e, c                                        ; $62f8: $59
	rra                                              ; $62f9: $1f
	rst  $38                                         ; $62fa: $ff
	or   $74                                         ; $62fb: $f6 $74
	sbc  [hl]                                        ; $62fd: $9e
	rl   c                                           ; $62fe: $cb $11
	ld   de, $ff1b                                   ; $6300: $11 $1b $ff
	rst  $38                                         ; $6303: $ff
	db   $fc                                         ; $6304: $fc
	ld   a, [de]                                     ; $6305: $1a
	dec  de                                          ; $6306: $1b
	ei                                               ; $6307: $fb
	ld   sp, hl                                      ; $6308: $f9
	ld   c, b                                        ; $6309: $48
	ld   a, $ec                                      ; $630a: $3e $ec
	ld   hl, $1111                                   ; $630c: $21 $11 $11
	rst  $38                                         ; $630f: $ff
	rst  $38                                         ; $6310: $ff
	rst  $38                                         ; $6311: $ff
	inc  hl                                          ; $6312: $23
	add  c                                           ; $6313: $81
	rst  $38                                         ; $6314: $ff
	rst  $38                                         ; $6315: $ff
	ld   [hl], $69                                   ; $6316: $36 $69
	ei                                               ; $6318: $fb
	ld   d, c                                        ; $6319: $51
	ld   de, rAUD1LEN                                   ; $631a: $11 $11 $ff
	rst  $38                                         ; $631d: $ff
	rst  $38                                         ; $631e: $ff
	ld   d, e                                        ; $631f: $53
	jp   $ffff                                       ; $6320: $c3 $ff $ff


	ld   [de], a                                     ; $6323: $12
	ld   c, c                                        ; $6324: $49
	cp   $b1                                         ; $6325: $fe $b1
	ld   de, rAUD1LEN                                   ; $6327: $11 $11 $ff
	rst  $38                                         ; $632a: $ff
	rst  $38                                         ; $632b: $ff
	ld   h, c                                        ; $632c: $61
	jp   $ffff                                       ; $632d: $c3 $ff $ff


	ld   sp, $ff49                                   ; $6330: $31 $49 $ff
	add  c                                           ; $6333: $81
	ld   de, rAUD1LEN                                   ; $6334: $11 $11 $ff
	rst  $38                                         ; $6337: $ff
	db   $fd                                         ; $6338: $fd
	ld   b, c                                        ; $6339: $41
	ret  z                                           ; $633a: $c8

	rst  $38                                         ; $633b: $ff
	rst  $38                                         ; $633c: $ff
	ld   de, $ff2c                                   ; $633d: $11 $2c $ff
	add  c                                           ; $6340: $81
	ld   de, rAUD1LEN                                   ; $6341: $11 $11 $ff
	rst  $38                                         ; $6344: $ff
	ld   [$fd22], a                                  ; $6345: $ea $22 $fd
	rst  $38                                         ; $6348: $ff
	db   $fc                                         ; $6349: $fc
	ld   de, $ff5f                                   ; $634a: $11 $5f $ff
	ld   d, c                                        ; $634d: $51
	ld   de, rAUD1LEN                                   ; $634e: $11 $11 $ff
	rst  $38                                         ; $6351: $ff
	add  [hl]                                        ; $6352: $86
	dec  d                                           ; $6353: $15
	rst  $38                                         ; $6354: $ff
	rst  $38                                         ; $6355: $ff
	ret  c                                           ; $6356: $d8

	ld   de, $ff8f                                   ; $6357: $11 $8f $ff
	ld   de, $1211                                   ; $635a: $11 $11 $12
	rst  $38                                         ; $635d: $ff
	rst  $38                                         ; $635e: $ff
	ld   d, l                                        ; $635f: $55
	dec  e                                           ; $6360: $1d
	rst  $38                                         ; $6361: $ff
	rst  $38                                         ; $6362: $ff
	ldh  [c], a                                      ; $6363: $e2
	inc  de                                          ; $6364: $13
	sbc  a                                           ; $6365: $9f
	db   $fc                                         ; $6366: $fc
	ld   de, $1911                                   ; $6367: $11 $11 $19
	rst  $38                                         ; $636a: $ff
	rst  $38                                         ; $636b: $ff
	ld   b, h                                        ; $636c: $44
	rra                                              ; $636d: $1f
	rst  $38                                         ; $636e: $ff
	rst  $38                                         ; $636f: $ff
	and  c                                           ; $6370: $a1
	inc  de                                          ; $6371: $13
	rst  JumpTable                                         ; $6372: $df
	db   $fc                                         ; $6373: $fc
	ld   de, $1f11                                   ; $6374: $11 $11 $1f
	rst  $38                                         ; $6377: $ff
	ld   sp, hl                                      ; $6378: $f9
	ld   hl, $ff2f                                   ; $6379: $21 $2f $ff
	rst  $38                                         ; $637c: $ff
	and  c                                           ; $637d: $a1
	inc  d                                           ; $637e: $14
	rst  $38                                         ; $637f: $ff
	rst  $30                                         ; $6380: $f7
	ld   de, $1f11                                   ; $6381: $11 $11 $1f
	rst  $38                                         ; $6384: $ff
	di                                               ; $6385: $f3
	ld   sp, $ff9f                                   ; $6386: $31 $9f $ff
	rst  $38                                         ; $6389: $ff
	ld   b, c                                        ; $638a: $41
	rla                                              ; $638b: $17
	rst  $38                                         ; $638c: $ff
	pop  af                                          ; $638d: $f1
	ld   de, $6f11                                   ; $638e: $11 $11 $6f
	rst  $38                                         ; $6391: $ff
	pop  de                                          ; $6392: $d1
	ld   hl, $ffff                                   ; $6393: $21 $ff $ff
	db   $fc                                         ; $6396: $fc
	ld   de, $ff4f                                   ; $6397: $11 $4f $ff
	sub  c                                           ; $639a: $91
	ld   de, $df11                                   ; $639b: $11 $11 $df
	rst  $38                                         ; $639e: $ff
	ld   sp, $ff38                                   ; $639f: $31 $38 $ff
	rst  $38                                         ; $63a2: $ff
	ld   sp, hl                                      ; $63a3: $f9
	dec  d                                           ; $63a4: $15
	sbc  a                                           ; $63a5: $9f
	cp   $31                                         ; $63a6: $fe $31
	ld   de, $be12                                   ; $63a8: $11 $12 $be
	adc  c                                           ; $63ab: $89
	inc  de                                          ; $63ac: $13
	daa                                              ; $63ad: $27
	rst  $38                                         ; $63ae: $ff
	rst  $38                                         ; $63af: $ff
	ld   a, [$bf59]                                  ; $63b0: $fa $59 $bf
	cp   $61                                         ; $63b3: $fe $61
	ld   de, $8855                                   ; $63b5: $11 $55 $88
	inc  sp                                          ; $63b8: $33
	ld   de, $aa13                                   ; $63b9: $11 $13 $aa
	rst  JumpTable                                         ; $63bc: $df
	db   $fc                                         ; $63bd: $fc
	xor  l                                           ; $63be: $ad
	rst  $28                                         ; $63bf: $ef
	rst  $38                                         ; $63c0: $ff
	cp   c                                           ; $63c1: $b9
	ld   [hl], h                                     ; $63c2: $74
	ld   a, b                                        ; $63c3: $78
	ld   b, h                                        ; $63c4: $44
	ld   hl, $1111                                   ; $63c5: $21 $11 $11
	ld   d, a                                        ; $63c8: $57
	adc  d                                           ; $63c9: $8a
	call z, $ffbe                                    ; $63ca: $cc $be $ff
	rst  $38                                         ; $63cd: $ff
	db   $fd                                         ; $63ce: $fd
	cp   b                                           ; $63cf: $b8
	ld   e, b                                        ; $63d0: $58
	add  e                                           ; $63d1: $83
	ld   [hl+], a                                    ; $63d2: $22
	ld   de, $1311                                   ; $63d3: $11 $11 $13
	ld   h, [hl]                                     ; $63d6: $66
	adc  h                                           ; $63d7: $8c
	set  7, a                                        ; $63d8: $cb $ff
	rst  $38                                         ; $63da: $ff
	rst  $38                                         ; $63db: $ff
	call c, Call_0cd_6996                            ; $63dc: $dc $96 $69
	ld   b, d                                        ; $63df: $42
	ld   b, c                                        ; $63e0: $41
	ld   de, $2611                                   ; $63e1: $11 $11 $26
	ld   l, b                                        ; $63e4: $68
	adc  $be                                         ; $63e5: $ce $be
	cp   $ff                                         ; $63e7: $fe $ff
	db   $fd                                         ; $63e9: $fd
	jp   z, $9666                                    ; $63ea: $ca $66 $96

	inc  h                                           ; $63ed: $24
	ld   de, $1111                                   ; $63ee: $11 $11 $11
	ld   h, a                                        ; $63f1: $67
	adc  h                                           ; $63f2: $8c
	db   $db                                         ; $63f3: $db
	adc  $de                                         ; $63f4: $ce $de
	rst  $38                                         ; $63f6: $ff
	call c, Call_0cd_58a6                            ; $63f7: $dc $a6 $58
	ld   [hl], e                                     ; $63fa: $73
	ld   b, h                                        ; $63fb: $44
	ld   de, $1511                                   ; $63fc: $11 $11 $15
	ld   [hl], a                                     ; $63ff: $77
	call $edaa                                       ; $6400: $cd $aa $ed
	rst  $28                                         ; $6403: $ef
	cp   $db                                         ; $6404: $fe $db
	ld   [hl], l                                     ; $6406: $75
	ld   a, c                                        ; $6407: $79
	ld   b, h                                        ; $6408: $44
	ld   d, c                                        ; $6409: $51
	ld   de, $4811                                   ; $640a: $11 $11 $48
	adc  d                                           ; $640d: $8a
	db   $db                                         ; $640e: $db
	sbc  h                                           ; $640f: $9c
	adc  $ff                                         ; $6410: $ce $ff
	ei                                               ; $6412: $fb
	cp   b                                           ; $6413: $b8
	ld   d, a                                        ; $6414: $57
	sub  [hl]                                        ; $6415: $96
	ld   d, l                                        ; $6416: $55
	ld   hl, $1411                                   ; $6417: $21 $11 $14
	adc  b                                           ; $641a: $88
	sbc  e                                           ; $641b: $9b
	xor  c                                           ; $641c: $a9
	call $fedf                                       ; $641d: $cd $df $fe
	cp   d                                           ; $6420: $ba
	sub  [hl]                                        ; $6421: $96
	ld   a, d                                        ; $6422: $7a
	ld   [hl], l                                     ; $6423: $75
	ld   d, d                                        ; $6424: $52
	ld   de, $3711                                   ; $6425: $11 $11 $37
	adc  b                                           ; $6428: $88
	cp   d                                           ; $6429: $ba
	sbc  e                                           ; $642a: $9b
	call c, $fcef                                    ; $642b: $dc $ef $fc
	cp   c                                           ; $642e: $b9
	ld   [hl], a                                     ; $642f: $77
	xor  c                                           ; $6430: $a9
	ld   d, l                                        ; $6431: $55
	ld   sp, $1311                                   ; $6432: $31 $11 $13
	ld   l, b                                        ; $6435: $68
	ld   a, c                                        ; $6436: $79
	jp   z, $ddbc                                    ; $6437: $ca $bc $dd

	rst  $38                                         ; $643a: $ff
	call c, Call_0cd_78b8                            ; $643b: $dc $b8 $78
	sub  l                                           ; $643e: $95
	ld   b, h                                        ; $643f: $44
	ld   de, $2411                                   ; $6440: $11 $11 $24
	ld   [hl], a                                     ; $6443: $77
	sbc  h                                           ; $6444: $9c
	xor  c                                           ; $6445: $a9
	call z, $ffcf                                    ; $6446: $cc $cf $ff
	res  2, a                                        ; $6449: $cb $97
	ld   a, c                                        ; $644b: $79
	ld   h, h                                        ; $644c: $64
	ld   d, c                                        ; $644d: $51
	ld   de, $3711                                   ; $644e: $11 $11 $37
	adc  b                                           ; $6451: $88
	cp   d                                           ; $6452: $ba
	sbc  d                                           ; $6453: $9a
	call z, $fdff                                    ; $6454: $cc $ff $fd
	cp   d                                           ; $6457: $ba
	ld   [hl], a                                     ; $6458: $77
	adc  b                                           ; $6459: $88
	ld   d, l                                        ; $645a: $55
	ld   b, c                                        ; $645b: $41
	ld   de, $5812                                   ; $645c: $11 $12 $58
	adc  d                                           ; $645f: $8a
	cp   d                                           ; $6460: $ba
	sbc  e                                           ; $6461: $9b
	cp   l                                           ; $6462: $bd
	rst  $38                                         ; $6463: $ff
	ei                                               ; $6464: $fb
	cp   b                                           ; $6465: $b8
	ld   [hl], a                                     ; $6466: $77
	sub  a                                           ; $6467: $97
	ld   b, l                                        ; $6468: $45
	ld   hl, $2311                                   ; $6469: $21 $11 $23
	ld   a, c                                        ; $646c: $79
	adc  d                                           ; $646d: $8a
	xor  b                                           ; $646e: $a8
	cp   h                                           ; $646f: $bc
	cp   [hl]                                        ; $6470: $be
	rst  $38                                         ; $6471: $ff
	res  5, b                                        ; $6472: $cb $a8
	ld   a, b                                        ; $6474: $78
	and  [hl]                                        ; $6475: $a6
	ld   d, l                                        ; $6476: $55
	ld   de, $2411                                   ; $6477: $11 $11 $24
	ld   a, c                                        ; $647a: $79
	xor  e                                           ; $647b: $ab
	xor  b                                           ; $647c: $a8
	cp   h                                           ; $647d: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $647e: $cf
	cp   $cb                                         ; $647f: $fe $cb
	xor  b                                           ; $6481: $a8
	ld   [hl], a                                     ; $6482: $77
	sub  [hl]                                        ; $6483: $96
	ld   d, h                                        ; $6484: $54
	ld   de, $3511                                   ; $6485: $11 $11 $35
	adc  c                                           ; $6488: $89
	xor  e                                           ; $6489: $ab
	xor  c                                           ; $648a: $a9
	cp   e                                           ; $648b: $bb
	adc  $fe                                         ; $648c: $ce $fe
	cp   h                                           ; $648e: $bc
	xor  c                                           ; $648f: $a9
	ld   [hl], a                                     ; $6490: $77
	and  [hl]                                        ; $6491: $a6
	ld   d, h                                        ; $6492: $54
	ld   bc, $3511                                   ; $6493: $01 $11 $35
	adc  c                                           ; $6496: $89
	xor  h                                           ; $6497: $ac
	xor  c                                           ; $6498: $a9
	cp   d                                           ; $6499: $ba
	adc  $ff                                         ; $649a: $ce $ff
	call z, Call_0cd_7798                            ; $649c: $cc $98 $77
	and  [hl]                                        ; $649f: $a6
	ld   d, h                                        ; $64a0: $54
	ld   de, $3411                                   ; $64a1: $11 $11 $34
	adc  c                                           ; $64a4: $89
	sbc  e                                           ; $64a5: $9b
	sbc  c                                           ; $64a6: $99
	cp   d                                           ; $64a7: $ba

Call_0cd_64a8:
	adc  $fe                                         ; $64a8: $ce $fe
	call z, $87a9                                    ; $64aa: $cc $a9 $87
	sub  a                                           ; $64ad: $97
	ld   d, l                                        ; $64ae: $55
	ld   de, $2411                                   ; $64af: $11 $11 $24
	ld   a, c                                        ; $64b2: $79
	xor  d                                           ; $64b3: $aa
	sbc  c                                           ; $64b4: $99
	xor  d                                           ; $64b5: $aa
	cp   l                                           ; $64b6: $bd
	rst  $38                                         ; $64b7: $ff
	call c, $87a9                                    ; $64b8: $dc $a9 $87
	xor  b                                           ; $64bb: $a8
	ld   d, l                                        ; $64bc: $55
	ld   hl, $2311                                   ; $64bd: $21 $11 $23
	ld   l, b                                        ; $64c0: $68
	adc  d                                           ; $64c1: $8a
	xor  b                                           ; $64c2: $a8
	sbc  c                                           ; $64c3: $99
	xor  h                                           ; $64c4: $ac
	rst  $28                                         ; $64c5: $ef
	db   $ec                                         ; $64c6: $ec
	jp   z, $99a7                                    ; $64c7: $ca $a7 $99

	ld   d, l                                        ; $64ca: $55
	ld   sp, $1211                                   ; $64cb: $31 $11 $12
	ld   b, a                                        ; $64ce: $47
	sbc  d                                           ; $64cf: $9a
	cp   c                                           ; $64d0: $b9
	sbc  d                                           ; $64d1: $9a
	sbc  e                                           ; $64d2: $9b
	rst  JumpTable                                         ; $64d3: $df
	cp   $da                                         ; $64d4: $fe $da
	xor  b                                           ; $64d6: $a8
	adc  d                                           ; $64d7: $8a
	ld   h, l                                        ; $64d8: $65
	ld   d, c                                        ; $64d9: $51
	ld   de, $3612                                   ; $64da: $11 $12 $36
	ld   a, b                                        ; $64dd: $78
	cp   d                                           ; $64de: $ba
	sbc  e                                           ; $64df: $9b
	sbc  e                                           ; $64e0: $9b
	sbc  $fe                                         ; $64e1: $de $fe
	call c, Call_0cd_7aba                            ; $64e3: $dc $ba $7a
	ld   [hl], l                                     ; $64e6: $75
	ld   h, e                                        ; $64e7: $63
	ld   de, $1411                                   ; $64e8: $11 $11 $14
	ld   h, a                                        ; $64eb: $67
	xor  e                                           ; $64ec: $ab
	xor  e                                           ; $64ed: $ab
	cp   d                                           ; $64ee: $ba
	call $eeff                                       ; $64ef: $cd $ff $ee
	cp   e                                           ; $64f2: $bb
	ld   a, c                                        ; $64f3: $79
	and  l                                           ; $64f4: $a5
	ld   d, h                                        ; $64f5: $54
	ld   de, $1311                                   ; $64f6: $11 $11 $13
	ld   d, [hl]                                     ; $64f9: $56
	sbc  e                                           ; $64fa: $9b
	xor  d                                           ; $64fb: $aa
	cp   h                                           ; $64fc: $bc
	db   $fc                                         ; $64fd: $fc
	rst  $38                                         ; $64fe: $ff
	rst  JumpTable                                         ; $64ff: $df
	cp   c                                           ; $6500: $b9
	ld   [hl], l                                     ; $6501: $75
	ld   d, d                                        ; $6502: $52
	ld   b, h                                        ; $6503: $44
	ld   d, h                                        ; $6504: $54
	ld   de, $3511                                   ; $6505: $11 $11 $35
	cp   a                                           ; $6508: $bf
	rst  $38                                         ; $6509: $ff
	ld   [$ff7d], a                                  ; $650a: $ea $7d $ff
	rst  $38                                         ; $650d: $ff
	ld   h, c                                        ; $650e: $61
	ld   de, $4511                                   ; $650f: $11 $11 $45
	ld   a, b                                        ; $6512: $78
	dec  [hl]                                        ; $6513: $35
	dec  d                                           ; $6514: $15
	xor  h                                           ; $6515: $ac
	rst  $38                                         ; $6516: $ff
	rst  $38                                         ; $6517: $ff
	jp   hl                                          ; $6518: $e9


	ld   l, l                                        ; $6519: $6d
	rst  JumpTable                                         ; $651a: $df
	rst  $10                                         ; $651b: $d7
	ld   de, $1311                                   ; $651c: $11 $11 $13
	rst  $28                                         ; $651f: $ef
	ei                                               ; $6520: $fb
	sub  [hl]                                        ; $6521: $96
	ld   l, a                                        ; $6522: $6f
	rst  $38                                         ; $6523: $ff
	rst  $38                                         ; $6524: $ff
	push af                                          ; $6525: $f5
	ld   b, c                                        ; $6526: $41
	xor  [hl]                                        ; $6527: $ae
	rst  $38                                         ; $6528: $ff
	ld   b, c                                        ; $6529: $41
	ld   de, $df11                                   ; $652a: $11 $11 $df
	rst  $38                                         ; $652d: $ff
	sbc  b                                           ; $652e: $98
	inc  e                                           ; $652f: $1c
	rst  $38                                         ; $6530: $ff
	rst  $38                                         ; $6531: $ff
	ld   hl, sp+$21                                  ; $6532: $f8 $21
	dec  e                                           ; $6534: $1d
	rst  $38                                         ; $6535: $ff
	pop  de                                          ; $6536: $d1
	ld   de, $6f11                                   ; $6537: $11 $11 $6f
	rst  $38                                         ; $653a: $ff
	reti                                             ; $653b: $d9


	inc  de                                          ; $653c: $13
	rst  $38                                         ; $653d: $ff
	rst  $38                                         ; $653e: $ff
	cp   $11                                         ; $653f: $fe $11
	ld   a, [de]                                     ; $6541: $1a
	rst  $38                                         ; $6542: $ff
	push af                                          ; $6543: $f5
	ld   de, $1f11                                   ; $6544: $11 $11 $1f
	rst  $38                                         ; $6547: $ff
	rst  $30                                         ; $6548: $f7
	ld   d, c                                        ; $6549: $51
	sbc  a                                           ; $654a: $9f
	rst  $38                                         ; $654b: $ff
	rst  $38                                         ; $654c: $ff
	ld   d, c                                        ; $654d: $51
	ld   de, $ffff                                   ; $654e: $11 $ff $ff
	ld   de, $1711                                   ; $6551: $11 $11 $17
	rst  $38                                         ; $6554: $ff
	db   $fd                                         ; $6555: $fd
	ld   h, c                                        ; $6556: $61
	rra                                              ; $6557: $1f
	rst  $38                                         ; $6558: $ff
	rst  $38                                         ; $6559: $ff
	pop  hl                                          ; $655a: $e1
	ld   de, $ff8f                                   ; $655b: $11 $8f $ff
	and  c                                           ; $655e: $a1
	ld   de, rAUD1LEN                                   ; $655f: $11 $11 $ff
	rst  $38                                         ; $6562: $ff
	ld   h, e                                        ; $6563: $63
	inc  de                                          ; $6564: $13
	rst  $38                                         ; $6565: $ff
	rst  $38                                         ; $6566: $ff
	or   $11                                         ; $6567: $f6 $11
	rra                                              ; $6569: $1f
	rst  $38                                         ; $656a: $ff
	push af                                          ; $656b: $f5
	ld   de, $1f11                                   ; $656c: $11 $11 $1f
	rst  $38                                         ; $656f: $ff
	ldh  a, [c]                                      ; $6570: $f2
	ld   de, $ffaf                                   ; $6571: $11 $af $ff
	rst  $38                                         ; $6574: $ff
	ld   de, rAUD1LEN                                   ; $6575: $11 $11 $ff
	rst  $38                                         ; $6578: $ff
	ld   hl, $1311                                   ; $6579: $21 $11 $13
	rst  $38                                         ; $657c: $ff
	cp   $11                                         ; $657d: $fe $11
	ld   e, $ff                                      ; $657f: $1e $ff
	rst  $38                                         ; $6581: $ff
	sub  c                                           ; $6582: $91
	ld   de, $ff4f                                   ; $6583: $11 $4f $ff
	pop  af                                          ; $6586: $f1
	ld   de, $3f11                                   ; $6587: $11 $11 $3f
	rst  $38                                         ; $658a: $ff
	pop  hl                                          ; $658b: $e1
	ld   de, $ffef                                   ; $658c: $11 $ef $ff
	or   $11                                         ; $658f: $f6 $11
	inc  h                                           ; $6591: $24
	rst  $38                                         ; $6592: $ff
	rst  $38                                         ; $6593: $ff
	ld   de, $1111                                   ; $6594: $11 $11 $11
	rst  $38                                         ; $6597: $ff
	db   $fd                                         ; $6598: $fd
	ld   de, $ff49                                   ; $6599: $11 $49 $ff
	rst  $38                                         ; $659c: $ff
	ld   hl, $5f14                                   ; $659d: $21 $14 $5f
	rst  $38                                         ; $65a0: $ff
	db   $f4                                         ; $65a1: $f4
	ld   de, $1811                                   ; $65a2: $11 $11 $18
	rst  $38                                         ; $65a5: $ff
	jp   z, $9f16                                    ; $65a6: $ca $16 $9f

Call_0cd_65a9:
	rst  $38                                         ; $65a9: $ff
	di                                               ; $65aa: $f3
	ld   hl, $bf19                                   ; $65ab: $21 $19 $bf
	rst  $38                                         ; $65ae: $ff
	di                                               ; $65af: $f3
	ld   de, $1611                                   ; $65b0: $11 $11 $16
	rst  $38                                         ; $65b3: $ff
	call z, $af0d                                    ; $65b4: $cc $0d $af
	rst  $38                                         ; $65b7: $ff
	pop  af                                          ; $65b8: $f1
	ld   d, c                                        ; $65b9: $51
	add  hl, sp                                      ; $65ba: $39
	rst  JumpTable                                         ; $65bb: $df
	rst  $38                                         ; $65bc: $ff
	add  $11                                         ; $65bd: $c6 $11
	ld   de, rAUD1LEN                                   ; $65bf: $11 $11 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65c2: $cf
	cpl                                              ; $65c3: $2f
	sbc  a                                           ; $65c4: $9f
	cp   $f1                                         ; $65c5: $fe $f1
	ld   d, c                                        ; $65c7: $51
	add  hl, hl                                      ; $65c8: $29
	cp   a                                           ; $65c9: $bf
	rst  $38                                         ; $65ca: $ff
	ld   [$1121], a                                  ; $65cb: $ea $21 $11
	ld   de, $afdf                                   ; $65ce: $11 $df $af
	ld   a, $cf                                      ; $65d1: $3e $cf
	ei                                               ; $65d3: $fb
	ldh  a, [c]                                      ; $65d4: $f2
	ld   hl, $5f1b                                   ; $65d5: $21 $1b $5f
	rst  $38                                         ; $65d8: $ff
	ei                                               ; $65d9: $fb
	or   c                                           ; $65da: $b1
	ld   de, $1f11                                   ; $65db: $11 $11 $1f
	rst  JumpTable                                         ; $65de: $df
	db   $f4                                         ; $65df: $f4
	rst  $30                                         ; $65e0: $f7
	rst  $38                                         ; $65e1: $ff
	rst  JumpTable                                         ; $65e2: $df
	inc  d                                           ; $65e3: $14
	ld   [de], a                                     ; $65e4: $12
	sbc  e                                           ; $65e5: $9b
	rst  $38                                         ; $65e6: $ff
	rst  $38                                         ; $65e7: $ff
	sub  $11                                         ; $65e8: $d6 $11
	ld   de, $fd11                                   ; $65ea: $11 $11 $fd
	cp   $8f                                         ; $65ed: $fe $8f
	sbc  a                                           ; $65ef: $9f
	db   $fc                                         ; $65f0: $fc
	pop  bc                                          ; $65f1: $c1
	ld   sp, $ff59                                   ; $65f2: $31 $59 $ff
	rst  $38                                         ; $65f5: $ff
	rst  $38                                         ; $65f6: $ff
	ld   [hl], c                                     ; $65f7: $71
	ld   de, $1f11                                   ; $65f8: $11 $11 $1f
	rst  $38                                         ; $65fb: $ff
	ld   sp, hl                                      ; $65fc: $f9
	ld   a, [$7dff]                                  ; $65fd: $fa $ff $7d
	inc  de                                          ; $6600: $13
	ld   [de], a                                     ; $6601: $12
	jp   c, $ffff                                    ; $6602: $da $ff $ff

	db   $ed                                         ; $6605: $ed
	ld   de, $1111                                   ; $6606: $11 $11 $11
	ccf                                              ; $6609: $3f
	rst  $38                                         ; $660a: $ff
	db   $fd                                         ; $660b: $fd
	ld   hl, sp-$03                                  ; $660c: $f8 $fd
	xor  b                                           ; $660e: $a8
	inc  d                                           ; $660f: $14
	add  hl, de                                      ; $6610: $19
	cp   a                                           ; $6611: $bf
	rst  $38                                         ; $6612: $ff
	rst  $38                                         ; $6613: $ff
	rst  $30                                         ; $6614: $f7
	ld   de, $1111                                   ; $6615: $11 $11 $11
	cpl                                              ; $6618: $2f
	rst  $38                                         ; $6619: $ff
	ei                                               ; $661a: $fb
	rst  $30                                         ; $661b: $f7
	ei                                               ; $661c: $fb
	cp   c                                           ; $661d: $b9
	dec  d                                           ; $661e: $15
	dec  de                                          ; $661f: $1b
	xor  a                                           ; $6620: $af
	rst  $38                                         ; $6621: $ff
	cp   $f6                                         ; $6622: $fe $f6
	ld   de, $1111                                   ; $6624: $11 $11 $11
	rra                                              ; $6627: $1f
	rst  $38                                         ; $6628: $ff
	ld   sp, hl                                      ; $6629: $f9
	or   $ff                                         ; $662a: $f6 $ff
	ld   e, a                                        ; $662c: $5f
	rla                                              ; $662d: $17
	dec  d                                           ; $662e: $15
	ld   sp, hl                                      ; $662f: $f9
	rst  $38                                         ; $6630: $ff
	rst  $38                                         ; $6631: $ff
	db   $fd                                         ; $6632: $fd
	ld   a, [de]                                     ; $6633: $1a
	ld   de, $1111                                   ; $6634: $11 $11 $11
	cp   $ff                                         ; $6637: $fe $ff
	xor  a                                           ; $6639: $af
	cpl                                              ; $663a: $2f
	sbc  e                                           ; $663b: $9b
	and  c                                           ; $663c: $a1
	sub  c                                           ; $663d: $91
	sub  $ff                                         ; $663e: $d6 $ff
	rst  $38                                         ; $6640: $ff
	cp   a                                           ; $6641: $bf
	ld   [hl], l                                     ; $6642: $75
	and  c                                           ; $6643: $a1
	ld   de, $1f11                                   ; $6644: $11 $11 $1f
	rst  $38                                         ; $6647: $ff
	ld   sp, hl                                      ; $6648: $f9
	pop  af                                          ; $6649: $f1
	db   $fd                                         ; $664a: $fd
	adc  a                                           ; $664b: $8f
	dec  e                                           ; $664c: $1d
	rla                                              ; $664d: $17
	add  a                                           ; $664e: $87
	db   $fc                                         ; $664f: $fc
	rst  $38                                         ; $6650: $ff
	cp   $3e                                         ; $6651: $fe $3e
	ld   de, $1111                                   ; $6653: $11 $11 $11
	ld   a, a                                        ; $6656: $7f
	rst  $38                                         ; $6657: $ff
	rst  JumpTable                                         ; $6658: $df
	call nz, $f7f6                                   ; $6659: $c4 $f6 $f7
	jr   jr_0cd_667b                                 ; $665c: $18 $1d

	rra                                              ; $665e: $1f
	rst  $38                                         ; $665f: $ff
	ld   a, [$acf6]                                  ; $6660: $fa $f6 $ac
	rla                                              ; $6663: $17
	ld   de, $1d11                                   ; $6664: $11 $11 $1d
	rst  $38                                         ; $6667: $ff
	rst  $30                                         ; $6668: $f7
	ldh  [c], a                                      ; $6669: $e2
	cp   $8f                                         ; $666a: $fe $8f
	ld   e, $15                                      ; $666c: $1e $15
	ld   [hl], h                                     ; $666e: $74
	ld   hl, sp-$03                                  ; $666f: $f8 $fd
	cp   $4f                                         ; $6671: $fe $4f
	dec  a                                           ; $6673: $3d
	ld   de, $1111                                   ; $6674: $11 $11 $11
	ld   a, [$1cda]                                  ; $6677: $fa $da $1c
	rra                                              ; $667a: $1f

jr_0cd_667b:
	db   $dd                                         ; $667b: $dd
	db   $f4                                         ; $667c: $f4
	pop  af                                          ; $667d: $f1
	add  $7f                                         ; $667e: $c6 $7f
	ld   c, a                                        ; $6680: $4f
	ld   a, a                                        ; $6681: $7f
	or   a                                           ; $6682: $b7
	or   $f2                                         ; $6683: $f6 $f2
	ld   de, $1d16                                   ; $6685: $11 $16 $1d
	ld   h, e                                        ; $6688: $63
	ld   d, c                                        ; $6689: $51
	ld   h, c                                        ; $668a: $61
	xor  a                                           ; $668b: $af
	adc  a                                           ; $668c: $8f
	adc  a                                           ; $668d: $8f
	adc  b                                           ; $668e: $88
	push hl                                          ; $668f: $e5
	ei                                               ; $6690: $fb
	db   $fd                                         ; $6691: $fd
	xor  [hl]                                        ; $6692: $ae
	ld   e, [hl]                                     ; $6693: $5e
	xor  h                                           ; $6694: $ac
	add  $61                                         ; $6695: $c6 $61

Call_0cd_6697:
	ld   h, $39                                      ; $6697: $26 $39
	ld   de, $2111                                   ; $6699: $11 $11 $21
	xor  e                                           ; $669c: $ab
	xor  a                                           ; $669d: $af
	cp   a                                           ; $669e: $bf
	sbc  l                                           ; $669f: $9d
	ld   [$fbfb], a                                  ; $66a0: $ea $fb $fb
	cp   e                                           ; $66a3: $bb
	ld   a, a                                        ; $66a4: $7f
	xor  l                                           ; $66a5: $ad
	jp   c, $1281                                    ; $66a6: $da $81 $12

	inc  hl                                          ; $66a9: $23
	ld   de, $1111                                   ; $66aa: $11 $11 $11
	ld   c, h                                        ; $66ad: $4c
	xor  a                                           ; $66ae: $af
	rst  JumpTable                                         ; $66af: $df
	jp   hl                                          ; $66b0: $e9


	ld   hl, sp-$03                                  ; $66b1: $f8 $fd
	xor  $bf                                         ; $66b3: $ee $bf
	sbc  a                                           ; $66b5: $9f
	db   $ed                                         ; $66b6: $ed
	jp   hl                                          ; $66b7: $e9


Call_0cd_66b8:
	add  c                                           ; $66b8: $81
	ld   de, $1114                                   ; $66b9: $11 $14 $11
	ld   de, $2511                                   ; $66bc: $11 $11 $25
	db   $db                                         ; $66bf: $db
	call c, $9ccb                                    ; $66c0: $dc $cb $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66c3: $cf
	rst  $38                                         ; $66c4: $ff
	db   $ec                                         ; $66c5: $ec
	db   $eb                                         ; $66c6: $eb
	xor  $ed                                         ; $66c7: $ee $ed
	and  a                                           ; $66c9: $a7
	ld   sp, $4311                                   ; $66ca: $31 $11 $43
	ld   hl, $1211                                   ; $66cd: $21 $11 $12
	add  hl, hl                                      ; $66d0: $29
	sbc  e                                           ; $66d1: $9b
	set  1, c                                        ; $66d2: $cb $c9
	db   $ed                                         ; $66d4: $ed
	rst  $38                                         ; $66d5: $ff
	xor  $bc                                         ; $66d6: $ee $bc
	xor  l                                           ; $66d8: $ad
	cp   $eb                                         ; $66d9: $fe $eb
	sub  [hl]                                        ; $66db: $96
	ld   sp, $7314                                   ; $66dc: $31 $14 $73
	ld   hl, $1211                                   ; $66df: $21 $11 $12
	dec  e                                           ; $66e2: $1d
	xor  h                                           ; $66e3: $ac
	jp   c, $dce7                                    ; $66e4: $da $e7 $dc

	rst  $28                                         ; $66e7: $ef
	db   $dd                                         ; $66e8: $dd
	xor  e                                           ; $66e9: $ab
	xor  e                                           ; $66ea: $ab
	cp   $fc                                         ; $66eb: $fe $fc
	and  a                                           ; $66ed: $a7
	ld   b, e                                        ; $66ee: $43
	ld   de, $3185                                   ; $66ef: $11 $85 $31
	ld   de, $1713                                   ; $66f2: $11 $13 $17
	ld   hl, sp-$05                                  ; $66f5: $f8 $fb
	ret                                              ; $66f7: $c9


	adc  a                                           ; $66f8: $8f
	cp   a                                           ; $66f9: $bf
	db   $fd                                         ; $66fa: $fd
	cp   b                                           ; $66fb: $b8
	xor  b                                           ; $66fc: $a8
	rst  $28                                         ; $66fd: $ef
	rst  $38                                         ; $66fe: $ff
	cp   c                                           ; $66ff: $b9
	ld   h, e                                        ; $6700: $63
	ld   de, $6619                                   ; $6701: $11 $19 $66
	ld   de, $4111                                   ; $6704: $11 $11 $41
	xor  a                                           ; $6707: $af
	sbc  a                                           ; $6708: $9f
	xor  e                                           ; $6709: $ab
	add  a                                           ; $670a: $87
	ld   [$dbfe], a                                  ; $670b: $ea $fe $db
	adc  c                                           ; $670e: $89
	sbc  a                                           ; $670f: $9f
	rst  $38                                         ; $6710: $ff
	ld   a, [$2196]                                  ; $6711: $fa $96 $21
	ld   de, $aa78                                   ; $6714: $11 $78 $aa
	ld   [de], a                                     ; $6717: $12
	ld   de, $faa5                                   ; $6718: $11 $a5 $fa
	db   $fc                                         ; $671b: $fc
	dec  hl                                          ; $671c: $2b
	dec  e                                           ; $671d: $1d
	sbc  a                                           ; $671e: $9f
	ld   sp, hl                                      ; $671f: $f9
	jp   nc, $ff88                                   ; $6720: $d2 $88 $ff

	rst  $38                                         ; $6723: $ff
	sub  l                                           ; $6724: $95
	ld   de, $1111                                   ; $6725: $11 $11 $11
	sub  [hl]                                        ; $6728: $96
	ld   a, [$1e59]                                  ; $6729: $fa $59 $1e
	ld   c, a                                        ; $672c: $4f
	db   $f4                                         ; $672d: $f4
	pop  hl                                          ; $672e: $e1
	ld   d, c                                        ; $672f: $51
	adc  a                                           ; $6730: $8f
	rst  $38                                         ; $6731: $ff
	xor  e                                           ; $6732: $ab
	ld   [de], a                                     ; $6733: $12
	ld   a, l                                        ; $6734: $7d
	rst  $38                                         ; $6735: $ff
	rst  $38                                         ; $6736: $ff
	ld   [hl], d                                     ; $6737: $72
	ld   de, $1111                                   ; $6738: $11 $11 $11
	dec  [hl]                                        ; $673b: $35
	rst  $38                                         ; $673c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $673d: $cf
	ld   e, $4f                                      ; $673e: $1e $4f
	di                                               ; $6740: $f3
	pop  de                                          ; $6741: $d1
	ld   d, c                                        ; $6742: $51
	sbc  a                                           ; $6743: $9f
	rst  $38                                         ; $6744: $ff
	call z, Call_0cd_4a23                            ; $6745: $cc $23 $4a
	rst  $38                                         ; $6748: $ff
	rst  $38                                         ; $6749: $ff
	or   l                                           ; $674a: $b5
	ld   de, $1111                                   ; $674b: $11 $11 $11
	dec  [hl]                                        ; $674e: $35
	rst  $38                                         ; $674f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6750: $cf
	ld   a, [de]                                     ; $6751: $1a
	add  l                                           ; $6752: $85
	pop  af                                          ; $6753: $f1
	pop  bc                                          ; $6754: $c1
	inc  d                                           ; $6755: $14
	ld   c, a                                        ; $6756: $4f
	rst  $38                                         ; $6757: $ff
	ld   sp, hl                                      ; $6758: $f9
	ld   sp, $ff38                                   ; $6759: $31 $38 $ff
	rst  $38                                         ; $675c: $ff
	sub  $41                                         ; $675d: $d6 $41
	ld   de, $1711                                   ; $675f: $11 $11 $17
	ld   c, a                                        ; $6762: $4f
	rst  $38                                         ; $6763: $ff
	pop  af                                          ; $6764: $f1
	pop  bc                                          ; $6765: $c1
	adc  a                                           ; $6766: $8f
	rra                                              ; $6767: $1f
	ld   de, $ff27                                   ; $6768: $11 $27 $ff
	db   $fd                                         ; $676b: $fd
	and  c                                           ; $676c: $a1
	ld   [de], a                                     ; $676d: $12
	sbc  a                                           ; $676e: $9f
	rst  $38                                         ; $676f: $ff
	db   $fd                                         ; $6770: $fd
	ld   h, h                                        ; $6771: $64
	ld   de, $1111                                   ; $6772: $11 $11 $11
	ld   d, e                                        ; $6775: $53
	rst  $38                                         ; $6776: $ff
	rst  $38                                         ; $6777: $ff
	ld   de, $f211                                   ; $6778: $11 $11 $f2
	call nz, $2f14                                   ; $677b: $c4 $14 $2f
	rst  $38                                         ; $677e: $ff
	ld   a, [$1521]                                  ; $677f: $fa $21 $15
	rst  $38                                         ; $6782: $ff
	rst  $38                                         ; $6783: $ff
	rst  $20                                         ; $6784: $e7
	ld   h, c                                        ; $6785: $61
	ld   de, $1111                                   ; $6786: $11 $11 $11
	ld   l, c                                        ; $6789: $69
	rst  $38                                         ; $678a: $ff
	rst  $38                                         ; $678b: $ff
	ld   d, $17                                      ; $678c: $16 $17
	ldh  a, [c]                                      ; $678e: $f2
	pop  af                                          ; $678f: $f1
	ld   [hl+], a                                    ; $6790: $22
	ld   a, a                                        ; $6791: $7f
	rst  $38                                         ; $6792: $ff
	ld   sp, hl                                      ; $6793: $f9
	ld   de, $ff17                                   ; $6794: $11 $17 $ff
	rst  $38                                         ; $6797: $ff
	rst  $10                                         ; $6798: $d7
	ld   b, c                                        ; $6799: $41
	ld   de, $1111                                   ; $679a: $11 $11 $11
	dec  a                                           ; $679d: $3d
	rst  $38                                         ; $679e: $ff
	rst  $38                                         ; $679f: $ff
	inc  d                                           ; $67a0: $14
	rla                                              ; $67a1: $17
	and  h                                           ; $67a2: $a4
	pop  de                                          ; $67a3: $d1
	ld   b, c                                        ; $67a4: $41
	sbc  [hl]                                        ; $67a5: $9e
	rst  $38                                         ; $67a6: $ff
	db   $fc                                         ; $67a7: $fc
	ld   de, $ff16                                   ; $67a8: $11 $16 $ff
	rst  $38                                         ; $67ab: $ff
	reti                                             ; $67ac: $d9


	ld   de, $1111                                   ; $67ad: $11 $11 $11
	ld   de, $ff16                                   ; $67b0: $11 $16 $ff
	rst  $38                                         ; $67b3: $ff
	inc  hl                                          ; $67b4: $23
	ld   de, $d6b1                                   ; $67b5: $11 $b1 $d6
	ld   d, l                                        ; $67b8: $55
	ld   c, e                                        ; $67b9: $4b
	rst  $38                                         ; $67ba: $ff
	rst  $38                                         ; $67bb: $ff
	ld   [hl], c                                     ; $67bc: $71
	ld   de, $ffaf                                   ; $67bd: $11 $af $ff
	cp   $71                                         ; $67c0: $fe $71
	ld   de, $1111                                   ; $67c2: $11 $11 $11
	ld   [de], a                                     ; $67c5: $12
	ld   e, a                                        ; $67c6: $5f
	rst  $38                                         ; $67c7: $ff
	ldh  a, [c]                                      ; $67c8: $f2
	ld   hl, $1e19                                   ; $67c9: $21 $19 $1e
	add  a                                           ; $67cc: $87
	ld   b, h                                        ; $67cd: $44
	sbc  l                                           ; $67ce: $9d
	rst  $38                                         ; $67cf: $ff
	ld   hl, sp+$41                                  ; $67d0: $f8 $41
	jr   @-$0f                                       ; $67d2: $18 $ef

	rst  $38                                         ; $67d4: $ff
	ld   sp, hl                                      ; $67d5: $f9
	ld   de, $1111                                   ; $67d6: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $67d9: $11 $13 $ff
	rst  $38                                         ; $67dc: $ff
	pop  af                                          ; $67dd: $f1
	ld   de, $8d34                                   ; $67de: $11 $34 $8d
	sbc  b                                           ; $67e1: $98
	ld   b, a                                        ; $67e2: $47
	sbc  a                                           ; $67e3: $9f
	rst  $38                                         ; $67e4: $ff
	ld   hl, sp+$41                                  ; $67e5: $f8 $41
	add  hl, hl                                      ; $67e7: $29
	rst  $38                                         ; $67e8: $ff
	rst  $38                                         ; $67e9: $ff
	push af                                          ; $67ea: $f5
	ld   de, $1111                                   ; $67eb: $11 $11 $11
	ld   de, $ff43                                   ; $67ee: $11 $43 $ff
	rst  $38                                         ; $67f1: $ff
	halt                                             ; $67f2: $76
	ld   de, $aa61                                   ; $67f3: $11 $61 $aa
	xor  d                                           ; $67f6: $aa
	ld   a, d                                        ; $67f7: $7a
	cp   a                                           ; $67f8: $bf
	rst  $38                                         ; $67f9: $ff
	jp   z, Jump_0cd_4751                            ; $67fa: $ca $51 $47

	rst  $28                                         ; $67fd: $ef
	rst  $38                                         ; $67fe: $ff
	or   $21                                         ; $67ff: $f6 $21
	ld   de, $1111                                   ; $6801: $11 $11 $11
	inc  sp                                          ; $6804: $33
	rst  $38                                         ; $6805: $ff
	rst  $38                                         ; $6806: $ff
	sbc  e                                           ; $6807: $9b
	ld   de, $8751                                   ; $6808: $11 $51 $87
	sbc  d                                           ; $680b: $9a
	adc  h                                           ; $680c: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $680d: $cf
	rst  $38                                         ; $680e: $ff
	db   $eb                                         ; $680f: $eb
	ld   h, d                                        ; $6810: $62
	inc  h                                           ; $6811: $24
	xor  a                                           ; $6812: $af
	rst  $38                                         ; $6813: $ff
	ei                                               ; $6814: $fb
	ld   h, c                                        ; $6815: $61
	ld   de, $1111                                   ; $6816: $11 $11 $11
	ld   de, $ffff                                   ; $6819: $11 $ff $ff
	cp   $51                                         ; $681c: $fe $51
	ld   h, c                                        ; $681e: $61
	ld   b, h                                        ; $681f: $44
	ld   a, e                                        ; $6820: $7b
	ld   l, l                                        ; $6821: $6d
	cp   a                                           ; $6822: $bf
	rst  $38                                         ; $6823: $ff
	db   $fc                                         ; $6824: $fc
	add  e                                           ; $6825: $83
	ld   [hl+], a                                    ; $6826: $22
	ld   a, l                                        ; $6827: $7d
	rst  $38                                         ; $6828: $ff
	rst  $38                                         ; $6829: $ff
	call nz, $1111                                   ; $682a: $c4 $11 $11
	ld   de, $5f12                                   ; $682d: $11 $12 $5f
	rst  $38                                         ; $6830: $ff
	db   $fd                                         ; $6831: $fd
	pop  af                                          ; $6832: $f1
	ld   sp, $1915                                   ; $6833: $31 $15 $19
	ld   l, c                                        ; $6836: $69
	call c, $ffff                                    ; $6837: $dc $ff $ff
	ret  c                                           ; $683a: $d8

	ld   b, e                                        ; $683b: $43
	ld   b, a                                        ; $683c: $47
	rst  JumpTable                                         ; $683d: $df
	rst  $38                                         ; $683e: $ff
	ei                                               ; $683f: $fb
	ld   sp, $1111                                   ; $6840: $31 $11 $11
	ld   de, $ff29                                   ; $6843: $11 $29 $ff
	rst  $38                                         ; $6846: $ff
	db   $ec                                         ; $6847: $ec
	jr   jr_0cd_685c                                 ; $6848: $18 $12

	ld   [hl-], a                                    ; $684a: $32
	add  e                                           ; $684b: $83
	xor  c                                           ; $684c: $a9
	rst  JumpTable                                         ; $684d: $df
	rst  $38                                         ; $684e: $ff
	cp   $75                                         ; $684f: $fe $75
	inc  [hl]                                        ; $6851: $34
	adc  h                                           ; $6852: $8c
	rst  $38                                         ; $6853: $ff
	cp   $94                                         ; $6854: $fe $94
	ld   de, $1111                                   ; $6856: $11 $11 $11
	ld   de, $ff9f                                   ; $6859: $11 $9f $ff

jr_0cd_685c:
	rst  $38                                         ; $685c: $ff
	call nc, $62b1                                   ; $685d: $d4 $b1 $62
	ld   b, [hl]                                     ; $6860: $46
	ld   a, [hl+]                                    ; $6861: $2a
	ld   a, [hl]                                     ; $6862: $7e
	rst  $38                                         ; $6863: $ff
	cp   $e9                                         ; $6864: $fe $e9
	halt                                             ; $6866: $76
	ld   l, b                                        ; $6867: $68
	cp   l                                           ; $6868: $bd
	rst  $38                                         ; $6869: $ff
	ld   [$1151], a                                  ; $686a: $ea $51 $11
	ld   de, $1711                                   ; $686d: $11 $11 $17
	rst  $38                                         ; $6870: $ff
	rst  $38                                         ; $6871: $ff
	cp   $8d                                         ; $6872: $fe $8d
	add  hl, sp                                      ; $6874: $39
	ld   [hl], $61                                   ; $6875: $36 $61
	add  h                                           ; $6877: $84
	set  7, a                                        ; $6878: $cb $ff
	rst  JumpTable                                         ; $687a: $df
	xor  e                                           ; $687b: $ab
	add  a                                           ; $687c: $87
	sbc  c                                           ; $687d: $99
	sbc  $ed                                         ; $687e: $de $ed
	sub  a                                           ; $6880: $97
	ld   sp, $1111                                   ; $6881: $31 $11 $11
	ld   de, $cf1c                                   ; $6884: $11 $1c $cf
	rst  $38                                         ; $6887: $ff
	ld   a, [$a9fa]                                  ; $6888: $fa $fa $a9
	ld   c, d                                        ; $688b: $4a
	ld   d, $36                                      ; $688c: $16 $36
	sub  a                                           ; $688e: $97
	ei                                               ; $688f: $fb
	db   $fd                                         ; $6890: $fd
	call z, $ab9c                                    ; $6891: $cc $9c $ab
	db   $dd                                         ; $6894: $dd
	jp   z, $1185                                    ; $6895: $ca $85 $11

	ld   de, $1111                                   ; $6898: $11 $11 $11
	add  hl, sp                                      ; $689b: $39
	cp   a                                           ; $689c: $bf
	xor  $fc                                         ; $689d: $ee $fc
	db   $fc                                         ; $689f: $fc
	res  1, e                                        ; $68a0: $cb $8b
	ld   b, a                                        ; $68a2: $47
	ld   h, $66                                      ; $68a3: $26 $66
	ret  z                                           ; $68a5: $c8

Call_0cd_68a6:
	db   $db                                         ; $68a6: $db

Call_0cd_68a7:
	call c, $bebc                                    ; $68a7: $dc $bc $be
	cp   h                                           ; $68aa: $bc
	xor  c                                           ; $68ab: $a9
	ld   [hl], h                                     ; $68ac: $74
	ld   [hl-], a                                    ; $68ad: $32
	ld   [hl+], a                                    ; $68ae: $22
	ld   de, $1211                                   ; $68af: $11 $11 $12
	ld   h, [hl]                                     ; $68b2: $66
	jp   z, $cfdd                                    ; $68b3: $ca $dd $cf

	cp   [hl]                                        ; $68b6: $be
	xor  h                                           ; $68b7: $ac
	cp   c                                           ; $68b8: $b9
	add  l                                           ; $68b9: $85
	add  h                                           ; $68ba: $84
	halt                                             ; $68bb: $76
	sbc  d                                           ; $68bc: $9a
	xor  h                                           ; $68bd: $ac
	xor  h                                           ; $68be: $ac
	cp   d                                           ; $68bf: $ba
	xor  d                                           ; $68c0: $aa
	xor  c                                           ; $68c1: $a9
	sbc  b                                           ; $68c2: $98
	add  a                                           ; $68c3: $87
	halt                                             ; $68c4: $76
	ld   h, l                                        ; $68c5: $65
	ld   b, d                                        ; $68c6: $42
	ld   de, $2411                                   ; $68c7: $11 $11 $24
	ld   a, b                                        ; $68ca: $78
	sbc  e                                           ; $68cb: $9b
	cp   l                                           ; $68cc: $bd
	call z, $cacd                                    ; $68cd: $cc $cd $ca
	sbc  c                                           ; $68d0: $99
	add  a                                           ; $68d1: $87
	adc  c                                           ; $68d2: $89
	sbc  d                                           ; $68d3: $9a
	sbc  d                                           ; $68d4: $9a
	sbc  b                                           ; $68d5: $98
	sbc  b                                           ; $68d6: $98
	adc  c                                           ; $68d7: $89
	xor  c                                           ; $68d8: $a9
	cp   h                                           ; $68d9: $bc
	cp   e                                           ; $68da: $bb
	sub  a                                           ; $68db: $97
	ld   h, h                                        ; $68dc: $64
	ld   b, e                                        ; $68dd: $43
	ld   hl, $1222                                   ; $68de: $21 $22 $12
	ld   b, [hl]                                     ; $68e1: $46
	ld   a, c                                        ; $68e2: $79
	xor  d                                           ; $68e3: $aa
	cp   e                                           ; $68e4: $bb
	set  1, e                                        ; $68e5: $cb $cb
	cp   e                                           ; $68e7: $bb
	cp   e                                           ; $68e8: $bb
	xor  c                                           ; $68e9: $a9
	adc  c                                           ; $68ea: $89
	add  a                                           ; $68eb: $87
	adc  b                                           ; $68ec: $88
	sbc  b                                           ; $68ed: $98
	adc  c                                           ; $68ee: $89
	sbc  d                                           ; $68ef: $9a
	sbc  c                                           ; $68f0: $99
	xor  d                                           ; $68f1: $aa
	sbc  b                                           ; $68f2: $98
	add  a                                           ; $68f3: $87
	halt                                             ; $68f4: $76
	ld   d, h                                        ; $68f5: $54
	inc  sp                                          ; $68f6: $33
	ld   [hl-], a                                    ; $68f7: $32
	inc  hl                                          ; $68f8: $23
	ld   b, l                                        ; $68f9: $45
	ld   d, a                                        ; $68fa: $57
	adc  c                                           ; $68fb: $89
	cp   e                                           ; $68fc: $bb
	call z, $bbcb                                    ; $68fd: $cc $cb $bb
	cp   d                                           ; $6900: $ba
	xor  d                                           ; $6901: $aa
	sbc  b                                           ; $6902: $98
	adc  b                                           ; $6903: $88
	adc  b                                           ; $6904: $88
	sbc  c                                           ; $6905: $99
	sbc  c                                           ; $6906: $99
	sbc  c                                           ; $6907: $99
	sbc  c                                           ; $6908: $99
	sbc  b                                           ; $6909: $98
	adc  c                                           ; $690a: $89
	sbc  b                                           ; $690b: $98
	ld   [hl], a                                     ; $690c: $77
	ld   h, l                                        ; $690d: $65
	ld   b, e                                        ; $690e: $43
	inc  [hl]                                        ; $690f: $34
	ld   b, h                                        ; $6910: $44
	ld   d, l                                        ; $6911: $55
	ld   h, a                                        ; $6912: $67
	adc  c                                           ; $6913: $89
	sbc  d                                           ; $6914: $9a
	cp   e                                           ; $6915: $bb
	cp   d                                           ; $6916: $ba
	xor  d                                           ; $6917: $aa
	xor  c                                           ; $6918: $a9
	xor  c                                           ; $6919: $a9
	sbc  c                                           ; $691a: $99
	sbc  c                                           ; $691b: $99
	sbc  c                                           ; $691c: $99
	sbc  b                                           ; $691d: $98
	adc  b                                           ; $691e: $88
	adc  c                                           ; $691f: $89
	sbc  c                                           ; $6920: $99
	sbc  c                                           ; $6921: $99
	sbc  b                                           ; $6922: $98
	adc  b                                           ; $6923: $88
	adc  b                                           ; $6924: $88
	ld   [hl], a                                     ; $6925: $77
	ld   [hl], a                                     ; $6926: $77
	ld   h, [hl]                                     ; $6927: $66
	ld   d, l                                        ; $6928: $55
	ld   d, l                                        ; $6929: $55
	ld   d, l                                        ; $692a: $55
	ld   h, [hl]                                     ; $692b: $66
	ld   h, a                                        ; $692c: $67
	adc  b                                           ; $692d: $88
	adc  c                                           ; $692e: $89
	xor  d                                           ; $692f: $aa
	sbc  c                                           ; $6930: $99
	sbc  d                                           ; $6931: $9a
	sbc  c                                           ; $6932: $99
	xor  d                                           ; $6933: $aa
	sbc  c                                           ; $6934: $99
	sbc  c                                           ; $6935: $99
	sbc  c                                           ; $6936: $99
	sbc  c                                           ; $6937: $99
	adc  b                                           ; $6938: $88
	adc  c                                           ; $6939: $89
	sbc  b                                           ; $693a: $98
	adc  b                                           ; $693b: $88
	add  a                                           ; $693c: $87
	ld   [hl], a                                     ; $693d: $77
	ld   [hl], a                                     ; $693e: $77
	adc  b                                           ; $693f: $88
	adc  b                                           ; $6940: $88
	ld   [hl], a                                     ; $6941: $77
	ld   [hl], a                                     ; $6942: $77
	ld   h, [hl]                                     ; $6943: $66
	ld   h, [hl]                                     ; $6944: $66
	ld   h, [hl]                                     ; $6945: $66
	ld   h, [hl]                                     ; $6946: $66
	ld   [hl], a                                     ; $6947: $77
	ld   a, b                                        ; $6948: $78
	sbc  b                                           ; $6949: $98
	sbc  c                                           ; $694a: $99
	sbc  c                                           ; $694b: $99
	xor  d                                           ; $694c: $aa
	xor  d                                           ; $694d: $aa
	xor  c                                           ; $694e: $a9
	sbc  c                                           ; $694f: $99
	sbc  b                                           ; $6950: $98
	adc  c                                           ; $6951: $89
	adc  b                                           ; $6952: $88
	adc  b                                           ; $6953: $88
	adc  b                                           ; $6954: $88
	adc  c                                           ; $6955: $89
	adc  b                                           ; $6956: $88
	adc  b                                           ; $6957: $88
	adc  b                                           ; $6958: $88
	adc  b                                           ; $6959: $88
	adc  b                                           ; $695a: $88
	adc  b                                           ; $695b: $88
	adc  b                                           ; $695c: $88
	ld   [hl], a                                     ; $695d: $77
	ld   [hl], a                                     ; $695e: $77
	ld   [hl], a                                     ; $695f: $77
	ld   [hl], a                                     ; $6960: $77
	ld   [hl], a                                     ; $6961: $77
	ld   [hl], a                                     ; $6962: $77
	ld   [hl], a                                     ; $6963: $77
	ld   [hl], a                                     ; $6964: $77
	ld   a, b                                        ; $6965: $78
	adc  b                                           ; $6966: $88
	adc  c                                           ; $6967: $89
	sbc  c                                           ; $6968: $99
	sbc  b                                           ; $6969: $98
	adc  c                                           ; $696a: $89
	sbc  b                                           ; $696b: $98
	adc  b                                           ; $696c: $88
	adc  b                                           ; $696d: $88
	adc  b                                           ; $696e: $88
	adc  c                                           ; $696f: $89
	sbc  c                                           ; $6970: $99
	sbc  c                                           ; $6971: $99
	sbc  c                                           ; $6972: $99
	sbc  c                                           ; $6973: $99
	sbc  c                                           ; $6974: $99

Jump_0cd_6975:
	adc  b                                           ; $6975: $88
	adc  b                                           ; $6976: $88
	adc  b                                           ; $6977: $88
	adc  b                                           ; $6978: $88
	adc  b                                           ; $6979: $88
	adc  b                                           ; $697a: $88
	adc  b                                           ; $697b: $88
	adc  b                                           ; $697c: $88
	adc  b                                           ; $697d: $88
	adc  b                                           ; $697e: $88
	adc  b                                           ; $697f: $88
	adc  b                                           ; $6980: $88
	add  a                                           ; $6981: $87
	ld   [hl], a                                     ; $6982: $77
	ld   [hl], a                                     ; $6983: $77
	ld   [hl], a                                     ; $6984: $77
	ld   [hl], a                                     ; $6985: $77
	ld   [hl], a                                     ; $6986: $77
	ld   a, b                                        ; $6987: $78
	adc  b                                           ; $6988: $88
	adc  b                                           ; $6989: $88
	adc  c                                           ; $698a: $89
	sbc  b                                           ; $698b: $98
	adc  b                                           ; $698c: $88
	adc  b                                           ; $698d: $88
	adc  b                                           ; $698e: $88
	adc  b                                           ; $698f: $88
	adc  b                                           ; $6990: $88
	adc  b                                           ; $6991: $88
	adc  b                                           ; $6992: $88
	adc  b                                           ; $6993: $88
	adc  c                                           ; $6994: $89
	sbc  c                                           ; $6995: $99

Call_0cd_6996:
	sbc  b                                           ; $6996: $98
	adc  b                                           ; $6997: $88
	adc  b                                           ; $6998: $88
	adc  b                                           ; $6999: $88
	adc  b                                           ; $699a: $88
	adc  b                                           ; $699b: $88
	adc  b                                           ; $699c: $88
	adc  b                                           ; $699d: $88
	adc  b                                           ; $699e: $88
	adc  b                                           ; $699f: $88
	adc  b                                           ; $69a0: $88
	adc  b                                           ; $69a1: $88
	adc  b                                           ; $69a2: $88
	adc  b                                           ; $69a3: $88
	adc  b                                           ; $69a4: $88
	adc  b                                           ; $69a5: $88
	adc  b                                           ; $69a6: $88
	adc  b                                           ; $69a7: $88
	adc  b                                           ; $69a8: $88
	adc  b                                           ; $69a9: $88
	adc  b                                           ; $69aa: $88
	adc  b                                           ; $69ab: $88
	adc  b                                           ; $69ac: $88
	adc  b                                           ; $69ad: $88
	adc  b                                           ; $69ae: $88
	adc  b                                           ; $69af: $88
	adc  b                                           ; $69b0: $88
	adc  b                                           ; $69b1: $88
	adc  b                                           ; $69b2: $88
	adc  b                                           ; $69b3: $88
	adc  b                                           ; $69b4: $88
	adc  b                                           ; $69b5: $88
	adc  b                                           ; $69b6: $88
	adc  b                                           ; $69b7: $88
	adc  b                                           ; $69b8: $88
	adc  b                                           ; $69b9: $88
	adc  b                                           ; $69ba: $88
	adc  b                                           ; $69bb: $88
	adc  b                                           ; $69bc: $88
	adc  b                                           ; $69bd: $88
	adc  b                                           ; $69be: $88
	adc  b                                           ; $69bf: $88
	adc  b                                           ; $69c0: $88
	adc  b                                           ; $69c1: $88
	adc  b                                           ; $69c2: $88
	adc  b                                           ; $69c3: $88
	adc  b                                           ; $69c4: $88
	adc  b                                           ; $69c5: $88
	adc  b                                           ; $69c6: $88
	adc  b                                           ; $69c7: $88
	adc  b                                           ; $69c8: $88
	adc  b                                           ; $69c9: $88
	adc  b                                           ; $69ca: $88
	adc  b                                           ; $69cb: $88
	adc  b                                           ; $69cc: $88
	adc  b                                           ; $69cd: $88
	adc  b                                           ; $69ce: $88
	adc  b                                           ; $69cf: $88
	adc  b                                           ; $69d0: $88
	adc  b                                           ; $69d1: $88
	adc  b                                           ; $69d2: $88
	adc  b                                           ; $69d3: $88
	adc  b                                           ; $69d4: $88
	adc  b                                           ; $69d5: $88
	adc  b                                           ; $69d6: $88
	adc  b                                           ; $69d7: $88
	adc  b                                           ; $69d8: $88
	adc  b                                           ; $69d9: $88
	adc  b                                           ; $69da: $88
	adc  b                                           ; $69db: $88
	adc  b                                           ; $69dc: $88
	adc  b                                           ; $69dd: $88
	adc  b                                           ; $69de: $88
	adc  b                                           ; $69df: $88
	adc  b                                           ; $69e0: $88
	adc  b                                           ; $69e1: $88
	adc  b                                           ; $69e2: $88
	adc  b                                           ; $69e3: $88
	adc  b                                           ; $69e4: $88
	adc  b                                           ; $69e5: $88
	adc  b                                           ; $69e6: $88
	adc  b                                           ; $69e7: $88
	adc  b                                           ; $69e8: $88
	adc  b                                           ; $69e9: $88
	adc  b                                           ; $69ea: $88
	adc  b                                           ; $69eb: $88
	adc  b                                           ; $69ec: $88
	adc  b                                           ; $69ed: $88
	adc  b                                           ; $69ee: $88
	adc  b                                           ; $69ef: $88
	adc  b                                           ; $69f0: $88
	adc  b                                           ; $69f1: $88
	adc  b                                           ; $69f2: $88
	adc  b                                           ; $69f3: $88
	adc  b                                           ; $69f4: $88
	adc  b                                           ; $69f5: $88
	adc  b                                           ; $69f6: $88
	adc  b                                           ; $69f7: $88
	adc  b                                           ; $69f8: $88
	adc  b                                           ; $69f9: $88
	adc  b                                           ; $69fa: $88
	adc  b                                           ; $69fb: $88
	adc  b                                           ; $69fc: $88
	adc  b                                           ; $69fd: $88
	adc  b                                           ; $69fe: $88
	adc  b                                           ; $69ff: $88
	adc  b                                           ; $6a00: $88
	adc  b                                           ; $6a01: $88
	adc  b                                           ; $6a02: $88
	adc  b                                           ; $6a03: $88
	adc  b                                           ; $6a04: $88
	adc  b                                           ; $6a05: $88
	adc  b                                           ; $6a06: $88
	adc  b                                           ; $6a07: $88
	adc  b                                           ; $6a08: $88
	adc  b                                           ; $6a09: $88
	adc  b                                           ; $6a0a: $88
	adc  b                                           ; $6a0b: $88
	adc  b                                           ; $6a0c: $88
	adc  b                                           ; $6a0d: $88
	sbc  c                                           ; $6a0e: $99
	sbc  b                                           ; $6a0f: $98
	add  a                                           ; $6a10: $87
	ld   [hl], a                                     ; $6a11: $77
	ld   a, b                                        ; $6a12: $78
	adc  c                                           ; $6a13: $89
	adc  c                                           ; $6a14: $89
	add  a                                           ; $6a15: $87
	ld   [hl], a                                     ; $6a16: $77
	ld   a, b                                        ; $6a17: $78
	sbc  b                                           ; $6a18: $98
	adc  b                                           ; $6a19: $88
	sbc  b                                           ; $6a1a: $98
	ld   [hl], a                                     ; $6a1b: $77
	ld   [hl], a                                     ; $6a1c: $77
	ld   a, b                                        ; $6a1d: $78
	sbc  c                                           ; $6a1e: $99
	sbc  b                                           ; $6a1f: $98
	halt                                             ; $6a20: $76
	ld   [hl], a                                     ; $6a21: $77
	adc  c                                           ; $6a22: $89
	sbc  d                                           ; $6a23: $9a
	sbc  b                                           ; $6a24: $98
	adc  b                                           ; $6a25: $88
	halt                                             ; $6a26: $76
	ld   h, [hl]                                     ; $6a27: $66
	ld   a, b                                        ; $6a28: $78
	sbc  d                                           ; $6a29: $9a
	sbc  b                                           ; $6a2a: $98
	sbc  b                                           ; $6a2b: $98
	sbc  b                                           ; $6a2c: $98
	add  a                                           ; $6a2d: $87
	ld   [hl], a                                     ; $6a2e: $77
	ld   [hl], a                                     ; $6a2f: $77
	ld   a, b                                        ; $6a30: $78
	sbc  b                                           ; $6a31: $98
	adc  b                                           ; $6a32: $88
	adc  b                                           ; $6a33: $88
	adc  c                                           ; $6a34: $89
	xor  d                                           ; $6a35: $aa
	sbc  b                                           ; $6a36: $98
	halt                                             ; $6a37: $76
	ld   [hl], a                                     ; $6a38: $77
	ld   a, b                                        ; $6a39: $78
	adc  b                                           ; $6a3a: $88
	adc  c                                           ; $6a3b: $89
	sbc  b                                           ; $6a3c: $98
	sbc  c                                           ; $6a3d: $99
	xor  e                                           ; $6a3e: $ab
	and  a                                           ; $6a3f: $a7
	ld   d, e                                        ; $6a40: $53
	dec  h                                           ; $6a41: $25
	ld   a, c                                        ; $6a42: $79
	xor  d                                           ; $6a43: $aa
	add  a                                           ; $6a44: $87
	halt                                             ; $6a45: $76
	ld   a, c                                        ; $6a46: $79
	xor  l                                           ; $6a47: $ad
	call Call_0cd_65a9                               ; $6a48: $cd $a9 $65
	ld   d, [hl]                                     ; $6a4b: $56
	sbc  c                                           ; $6a4c: $99
	xor  c                                           ; $6a4d: $a9
	sub  [hl]                                        ; $6a4e: $96
	ld   b, e                                        ; $6a4f: $43
	ld   [hl], $ad                                   ; $6a50: $36 $ad
	rst  $38                                         ; $6a52: $ff
	reti                                             ; $6a53: $d9


	ld   b, c                                        ; $6a54: $41
	ld   de, $bb58                                   ; $6a55: $11 $58 $bb
	cp   b                                           ; $6a58: $b8
	ld   h, l                                        ; $6a59: $65
	dec  [hl]                                        ; $6a5a: $35
	ld   h, [hl]                                     ; $6a5b: $66
	sbc  h                                           ; $6a5c: $9c
	xor  $eb                                         ; $6a5d: $ee $eb
	ld   [hl], h                                     ; $6a5f: $74
	ld   b, l                                        ; $6a60: $45
	adc  e                                           ; $6a61: $8b
	call z, Call_0cd_55a7                            ; $6a62: $cc $a7 $55
	ld   d, a                                        ; $6a65: $57
	sbc  e                                           ; $6a66: $9b
	call c, Call_0cd_52c8                            ; $6a67: $dc $c8 $52
	ld   de, $be38                                   ; $6a6a: $11 $38 $be
	call c, $2184                                    ; $6a6d: $dc $84 $21
	dec  h                                           ; $6a70: $25
	adc  e                                           ; $6a71: $8b
	xor  $dc                                         ; $6a72: $ee $dc
	sub  [hl]                                        ; $6a74: $96
	ld   d, l                                        ; $6a75: $55
	ld   h, a                                        ; $6a76: $67
	sbc  c                                           ; $6a77: $99
	sbc  c                                           ; $6a78: $99
	halt                                             ; $6a79: $76
	inc  sp                                          ; $6a7a: $33
	ld   b, l                                        ; $6a7b: $45
	adc  h                                           ; $6a7c: $8c
	rst  $28                                         ; $6a7d: $ef
	rst  $38                                         ; $6a7e: $ff
	db   $fc                                         ; $6a7f: $fc
	ld   [hl], e                                     ; $6a80: $73
	ld   de, $ef38                                   ; $6a81: $11 $38 $ef
	rst  $38                                         ; $6a84: $ff
	sub  e                                           ; $6a85: $93
	ld   de, $7813                                   ; $6a86: $11 $13 $78
	ld   [hl], h                                     ; $6a89: $74
	ld   hl, $7924                                   ; $6a8a: $21 $24 $79
	call z, $98dc                                    ; $6a8d: $cc $dc $98
	ld   h, [hl]                                     ; $6a90: $66
	ld   a, c                                        ; $6a91: $79
	call $97ec                                       ; $6a92: $cd $ec $97
	ld   d, l                                        ; $6a95: $55
	ld   d, a                                        ; $6a96: $57
	adc  e                                           ; $6a97: $8b
	db   $dd                                         ; $6a98: $dd
	db   $ed                                         ; $6a99: $ed
	cp   c                                           ; $6a9a: $b9
	ld   h, l                                        ; $6a9b: $65
	ld   b, l                                        ; $6a9c: $45
	ld   a, b                                        ; $6a9d: $78
	add  a                                           ; $6a9e: $87
	ld   sp, $2611                                   ; $6a9f: $31 $11 $26
	xor  e                                           ; $6aa2: $ab
	cp   d                                           ; $6aa3: $ba
	add  a                                           ; $6aa4: $87
	ld   [hl], a                                     ; $6aa5: $77
	adc  c                                           ; $6aa6: $89
	adc  c                                           ; $6aa7: $89
	xor  c                                           ; $6aa8: $a9
	xor  c                                           ; $6aa9: $a9
	sbc  d                                           ; $6aaa: $9a
	xor  e                                           ; $6aab: $ab
	cp   h                                           ; $6aac: $bc
	call z, $99aa                                    ; $6aad: $cc $aa $99
	sbc  d                                           ; $6ab0: $9a
	xor  e                                           ; $6ab1: $ab
	cp   c                                           ; $6ab2: $b9
	sbc  b                                           ; $6ab3: $98
	halt                                             ; $6ab4: $76
	ld   d, h                                        ; $6ab5: $54
	inc  sp                                          ; $6ab6: $33
	ld   b, l                                        ; $6ab7: $45
	ld   b, h                                        ; $6ab8: $44
	ld   b, h                                        ; $6ab9: $44
	ld   d, [hl]                                     ; $6aba: $56
	ld   [hl], a                                     ; $6abb: $77
	ld   h, l                                        ; $6abc: $65
	ld   b, h                                        ; $6abd: $44
	ld   d, a                                        ; $6abe: $57
	sbc  d                                           ; $6abf: $9a
	call z, $bacb                                    ; $6ac0: $cc $cb $ba
	cp   e                                           ; $6ac3: $bb
	res  7, d                                        ; $6ac4: $cb $ba
	sub  a                                           ; $6ac6: $97
	ld   a, b                                        ; $6ac7: $78
	adc  d                                           ; $6ac8: $8a
	cp   h                                           ; $6ac9: $bc
	cp   d                                           ; $6aca: $ba
	add  a                                           ; $6acb: $87
	ld   [hl], a                                     ; $6acc: $77
	ld   [hl], a                                     ; $6acd: $77
	halt                                             ; $6ace: $76
	ld   d, h                                        ; $6acf: $54
	inc  sp                                          ; $6ad0: $33
	inc  sp                                          ; $6ad1: $33
	inc  [hl]                                        ; $6ad2: $34
	ld   d, l                                        ; $6ad3: $55
	ld   d, l                                        ; $6ad4: $55
	ld   d, l                                        ; $6ad5: $55
	ld   h, [hl]                                     ; $6ad6: $66
	sbc  c                                           ; $6ad7: $99
	cp   l                                           ; $6ad8: $bd
	call $badc                                       ; $6ad9: $cd $dc $ba
	xor  d                                           ; $6adc: $aa
	cp   e                                           ; $6add: $bb
	xor  c                                           ; $6ade: $a9
	sbc  c                                           ; $6adf: $99
	adc  c                                           ; $6ae0: $89
	adc  c                                           ; $6ae1: $89
	sbc  c                                           ; $6ae2: $99
	sbc  d                                           ; $6ae3: $9a
	sbc  c                                           ; $6ae4: $99
	xor  b                                           ; $6ae5: $a8
	halt                                             ; $6ae6: $76
	ld   d, h                                        ; $6ae7: $54
	ld   [hl-], a                                    ; $6ae8: $32
	ld   de, $1111                                   ; $6ae9: $11 $11 $11
	ld   [hl], $ad                                   ; $6aec: $36 $ad
	rst  $38                                         ; $6aee: $ff
	db   $fd                                         ; $6aef: $fd
	res  5, c                                        ; $6af0: $cb $a9
	xor  e                                           ; $6af2: $ab
	cp   e                                           ; $6af3: $bb
	cp   d                                           ; $6af4: $ba
	sbc  b                                           ; $6af5: $98
	adc  b                                           ; $6af6: $88
	xor  e                                           ; $6af7: $ab
	xor  h                                           ; $6af8: $ac
	xor  d                                           ; $6af9: $aa
	cp   d                                           ; $6afa: $ba
	cp   e                                           ; $6afb: $bb
	cp   d                                           ; $6afc: $ba
	ld   [hl], h                                     ; $6afd: $74
	ld   hl, $1111                                   ; $6afe: $21 $11 $11
	ld   de, $af15                                   ; $6b01: $11 $15 $af
	rst  $38                                         ; $6b04: $ff
	rst  $38                                         ; $6b05: $ff
	db   $ec                                         ; $6b06: $ec
	cp   d                                           ; $6b07: $ba
	sbc  c                                           ; $6b08: $99
	xor  c                                           ; $6b09: $a9
	sbc  b                                           ; $6b0a: $98
	adc  b                                           ; $6b0b: $88
	ld   a, c                                        ; $6b0c: $79
	sbc  e                                           ; $6b0d: $9b
	call $dcdd                                       ; $6b0e: $cd $dd $dc
	jp   z, $41a6                                    ; $6b11: $ca $a6 $41

	ld   de, $1111                                   ; $6b14: $11 $11 $11
	ld   de, $ff4d                                   ; $6b17: $11 $4d $ff
	rst  $38                                         ; $6b1a: $ff
	rst  $38                                         ; $6b1b: $ff
	ret                                              ; $6b1c: $c9


	ld   h, [hl]                                     ; $6b1d: $66
	ld   l, b                                        ; $6b1e: $68

Jump_0cd_6b1f:
	adc  c                                           ; $6b1f: $89
	xor  c                                           ; $6b20: $a9
	sbc  c                                           ; $6b21: $99
	xor  e                                           ; $6b22: $ab
	cp   l                                           ; $6b23: $bd
	db   $ed                                         ; $6b24: $ed
	db   $ed                                         ; $6b25: $ed
	call c, $3196                                    ; $6b26: $dc $96 $31
	ld   de, $1111                                   ; $6b29: $11 $11 $11
	ld   de, $ff3a                                   ; $6b2c: $11 $3a $ff
	rst  $38                                         ; $6b2f: $ff
	rst  $38                                         ; $6b30: $ff
	ret  z                                           ; $6b31: $c8

	ld   b, e                                        ; $6b32: $43
	ld   b, [hl]                                     ; $6b33: $46
	adc  c                                           ; $6b34: $89
	cp   e                                           ; $6b35: $bb
	cp   h                                           ; $6b36: $bc
	res  7, e                                        ; $6b37: $cb $bb
	cp   e                                           ; $6b39: $bb
	cp   l                                           ; $6b3a: $bd
	call z, Call_0cd_4197                            ; $6b3b: $cc $97 $41
	ld   de, $1111                                   ; $6b3e: $11 $11 $11
	ld   de, $ff2a                                   ; $6b41: $11 $2a $ff
	rst  $38                                         ; $6b44: $ff
	rst  $38                                         ; $6b45: $ff
	db   $eb                                         ; $6b46: $eb
	halt                                             ; $6b47: $76
	ld   d, a                                        ; $6b48: $57
	adc  d                                           ; $6b49: $8a
	cp   e                                           ; $6b4a: $bb
	cp   c                                           ; $6b4b: $b9
	xor  b                                           ; $6b4c: $a8
	adc  b                                           ; $6b4d: $88
	sbc  d                                           ; $6b4e: $9a
	adc  $ff                                         ; $6b4f: $ce $ff
	db   $db                                         ; $6b51: $db
	ld   [hl], e                                     ; $6b52: $73
	ld   de, $1111                                   ; $6b53: $11 $11 $11
	ld   de, $ef14                                   ; $6b56: $11 $14 $ef
	rst  $38                                         ; $6b59: $ff
	rst  $38                                         ; $6b5a: $ff
	db   $fd                                         ; $6b5b: $fd
	ld   h, e                                        ; $6b5c: $63
	ld   [de], a                                     ; $6b5d: $12
	ld   b, l                                        ; $6b5e: $45
	adc  c                                           ; $6b5f: $89
	cp   c                                           ; $6b60: $b9
	xor  e                                           ; $6b61: $ab
	cp   e                                           ; $6b62: $bb
	adc  $ef                                         ; $6b63: $ce $ef
	cp   $b8                                         ; $6b65: $fe $b8
	ld   sp, $1111                                   ; $6b67: $31 $11 $11
	ld   de, $1a11                                   ; $6b6a: $11 $11 $1a
	rst  $38                                         ; $6b6d: $ff
	rst  $38                                         ; $6b6e: $ff
	rst  $38                                         ; $6b6f: $ff
	rst  $38                                         ; $6b70: $ff
	add  [hl]                                        ; $6b71: $86
	inc  de                                          ; $6b72: $13
	inc  hl                                          ; $6b73: $23
	ld   d, [hl]                                     ; $6b74: $56
	add  a                                           ; $6b75: $87
	xor  e                                           ; $6b76: $ab
	call $ffef                                       ; $6b77: $cd $ef $ff
	rst  $38                                         ; $6b7a: $ff
	ret  z                                           ; $6b7b: $c8

	ld   sp, $1111                                   ; $6b7c: $31 $11 $11
	ld   de, $2b11                                   ; $6b7f: $11 $11 $2b
	rst  $38                                         ; $6b82: $ff
	rst  $38                                         ; $6b83: $ff
	rst  $38                                         ; $6b84: $ff
	db   $fd                                         ; $6b85: $fd
	add  h                                           ; $6b86: $84
	inc  de                                          ; $6b87: $13
	inc  h                                           ; $6b88: $24
	ld   h, a                                        ; $6b89: $67
	sub  a                                           ; $6b8a: $97
	sbc  c                                           ; $6b8b: $99
	xor  h                                           ; $6b8c: $ac
	rst  $38                                         ; $6b8d: $ff
	rst  $38                                         ; $6b8e: $ff
	rst  $38                                         ; $6b8f: $ff
	add  $11                                         ; $6b90: $c6 $11
	ld   de, $1111                                   ; $6b92: $11 $11 $11
	ld   de, $ff2f                                   ; $6b95: $11 $2f $ff
	rst  $38                                         ; $6b98: $ff
	rst  $38                                         ; $6b99: $ff
	ld   hl, sp+$11                                  ; $6b9a: $f8 $11
	ld   de, $ac16                                   ; $6b9c: $11 $16 $ac
	db   $eb                                         ; $6b9f: $eb
	db   $db                                         ; $6ba0: $db
	xor  e                                           ; $6ba1: $ab
	rst  $28                                         ; $6ba2: $ef
	rst  $38                                         ; $6ba3: $ff
	rst  $38                                         ; $6ba4: $ff
	and  e                                           ; $6ba5: $a3
	ld   de, $1111                                   ; $6ba6: $11 $11 $11
	ld   de, $7f11                                   ; $6ba9: $11 $11 $7f
	rst  $38                                         ; $6bac: $ff
	rst  $38                                         ; $6bad: $ff
	rst  $38                                         ; $6bae: $ff
	jp   nc, $1111                                   ; $6baf: $d2 $11 $11

	rla                                              ; $6bb2: $17
	sbc  [hl]                                        ; $6bb3: $9e
	xor  $fd                                         ; $6bb4: $ee $fd
	db   $dd                                         ; $6bb6: $dd
	rst  $28                                         ; $6bb7: $ef
	rst  $38                                         ; $6bb8: $ff
	db   $fd                                         ; $6bb9: $fd
	add  d                                           ; $6bba: $82
	ld   de, $1111                                   ; $6bbb: $11 $11 $11
	ld   de, $bf11                                   ; $6bbe: $11 $11 $bf
	rst  $38                                         ; $6bc1: $ff
	rst  $38                                         ; $6bc2: $ff
	rst  $38                                         ; $6bc3: $ff
	add  c                                           ; $6bc4: $81
	ld   de, $2811                                   ; $6bc5: $11 $11 $28
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bc8: $cf
	rst  $28                                         ; $6bc9: $ef
	cp   $fe                                         ; $6bca: $fe $fe
	rst  $38                                         ; $6bcc: $ff
	rst  $38                                         ; $6bcd: $ff
	ld   [$1151], a                                  ; $6bce: $ea $51 $11
	ld   de, $1111                                   ; $6bd1: $11 $11 $11
	ld   de, $ffdf                                   ; $6bd4: $11 $df $ff
	rst  $38                                         ; $6bd7: $ff
	rst  $38                                         ; $6bd8: $ff
	ld   h, c                                        ; $6bd9: $61
	ld   de, $3711                                   ; $6bda: $11 $11 $37
	cp   a                                           ; $6bdd: $bf
	rst  $38                                         ; $6bde: $ff
	rst  $38                                         ; $6bdf: $ff
	rst  $38                                         ; $6be0: $ff
	rst  $38                                         ; $6be1: $ff
	rst  $38                                         ; $6be2: $ff
	reti                                             ; $6be3: $d9


	ld   hl, $1111                                   ; $6be4: $21 $11 $11
	ld   de, $1511                                   ; $6be7: $11 $11 $15
	rst  $38                                         ; $6bea: $ff
	rst  $38                                         ; $6beb: $ff
	rst  $38                                         ; $6bec: $ff
	rst  $38                                         ; $6bed: $ff
	ld   de, $1111                                   ; $6bee: $11 $11 $11
	ld   h, a                                        ; $6bf1: $67
	db   $dd                                         ; $6bf2: $dd
	rst  $38                                         ; $6bf3: $ff
	rst  $38                                         ; $6bf4: $ff
	rst  $38                                         ; $6bf5: $ff
	rst  $38                                         ; $6bf6: $ff
	rst  $38                                         ; $6bf7: $ff
	and  a                                           ; $6bf8: $a7
	ld   de, $1111                                   ; $6bf9: $11 $11 $11
	ld   de, $1b11                                   ; $6bfc: $11 $11 $1b
	rst  $38                                         ; $6bff: $ff
	rst  $38                                         ; $6c00: $ff
	rst  $38                                         ; $6c01: $ff
	ld   hl, sp+$11                                  ; $6c02: $f8 $11
	ld   de, $6711                                   ; $6c04: $11 $11 $67
	db   $ed                                         ; $6c07: $ed
	rst  $38                                         ; $6c08: $ff
	rst  $38                                         ; $6c09: $ff
	rst  $38                                         ; $6c0a: $ff
	rst  $38                                         ; $6c0b: $ff
	ld   a, [$1182]                                  ; $6c0c: $fa $82 $11
	ld   de, $1111                                   ; $6c0f: $11 $11 $11
	ld   de, $ff7f                                   ; $6c12: $11 $7f $ff
	rst  $38                                         ; $6c15: $ff
	db   $fd                                         ; $6c16: $fd
	pop  bc                                          ; $6c17: $c1
	ld   de, $1411                                   ; $6c18: $11 $11 $14
	ld   a, [hl-]                                    ; $6c1b: $3a
	call $ffff                                       ; $6c1c: $cd $ff $ff
	rst  $38                                         ; $6c1f: $ff
	sbc  $a6                                         ; $6c20: $de $a6
	ld   d, c                                        ; $6c22: $51
	ld   bc, $1111                                   ; $6c23: $01 $11 $11
	ld   de, rAUD1LEN                                   ; $6c26: $11 $11 $ff
	rst  $38                                         ; $6c29: $ff
	rst  $38                                         ; $6c2a: $ff
	xor  d                                           ; $6c2b: $aa
	ld   hl, $4111                                   ; $6c2c: $21 $11 $41
	inc  de                                          ; $6c2f: $13
	dec  hl                                          ; $6c30: $2b
	cp   a                                           ; $6c31: $bf
	rst  $38                                         ; $6c32: $ff
	rst  $38                                         ; $6c33: $ff
	db   $fd                                         ; $6c34: $fd
	ld   a, c                                        ; $6c35: $79
	ld   b, [hl]                                     ; $6c36: $46
	ld   [hl-], a                                    ; $6c37: $32
	ld   de, $1111                                   ; $6c38: $11 $11 $11
	ld   de, $ff3f                                   ; $6c3b: $11 $3f $ff
	rst  $38                                         ; $6c3e: $ff
	ld   a, [$1798]                                  ; $6c3f: $fa $98 $17
	inc  de                                          ; $6c42: $13
	ld   de, $9c11                                   ; $6c43: $11 $11 $9c
	rst  $38                                         ; $6c46: $ff
	rst  $38                                         ; $6c47: $ff
	rst  $38                                         ; $6c48: $ff
	push bc                                          ; $6c49: $c5
	cp   b                                           ; $6c4a: $b8
	cp   c                                           ; $6c4b: $b9
	ld   hl, $1111                                   ; $6c4c: $21 $11 $11
	ld   de, $ff5a                                   ; $6c4f: $11 $5a $ff
	rst  $38                                         ; $6c52: $ff
	rst  $38                                         ; $6c53: $ff
	call $b1f9                                       ; $6c54: $cd $f9 $b1
	ld   de, $1f11                                   ; $6c57: $11 $11 $1f
	rst  $38                                         ; $6c5a: $ff
	rst  $38                                         ; $6c5b: $ff
	ld   a, [$dfae]                                  ; $6c5c: $fa $ae $df
	cp   $71                                         ; $6c5f: $fe $71
	ld   de, $1111                                   ; $6c61: $11 $11 $11
	inc  d                                           ; $6c64: $14
	ccf                                              ; $6c65: $3f
	rst  $38                                         ; $6c66: $ff
	rst  $38                                         ; $6c67: $ff
	rst  $38                                         ; $6c68: $ff
	cp   $26                                         ; $6c69: $fe $26
	ld   de, $6511                                   ; $6c6b: $11 $11 $65
	rst  $38                                         ; $6c6e: $ff
	rst  $38                                         ; $6c6f: $ff
	rst  $38                                         ; $6c70: $ff
	rst  $28                                         ; $6c71: $ef
	rst  $38                                         ; $6c72: $ff
	cp   $93                                         ; $6c73: $fe $93
	ld   de, $1111                                   ; $6c75: $11 $11 $11
	ld   de, rAUDVOL                                   ; $6c78: $11 $24 $ff
	rst  $38                                         ; $6c7b: $ff
	rst  $38                                         ; $6c7c: $ff
	jp   z, $a1e3                                    ; $6c7d: $ca $e3 $a1

	ld   de, $4f14                                   ; $6c80: $11 $14 $4f
	rst  $38                                         ; $6c83: $ff
	rst  $38                                         ; $6c84: $ff
	ei                                               ; $6c85: $fb
	cp   a                                           ; $6c86: $bf
	rst  JumpTable                                         ; $6c87: $df
	ld   a, [$1141]                                  ; $6c88: $fa $41 $11
	ld   de, $1511                                   ; $6c8b: $11 $11 $15
	xor  a                                           ; $6c8e: $af
	rst  $38                                         ; $6c8f: $ff
	rst  $38                                         ; $6c90: $ff
	ld   a, [$43f7]                                  ; $6c91: $fa $f7 $43
	inc  d                                           ; $6c94: $14
	ld   de, $fdcb                                   ; $6c95: $11 $cb $fd
	rst  $38                                         ; $6c98: $ff
	cp   a                                           ; $6c99: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c9a: $cf
	cp   $f8                                         ; $6c9b: $fe $f8
	ld   [hl], c                                     ; $6c9d: $71
	ld   de, $1111                                   ; $6c9e: $11 $11 $11
	inc  de                                          ; $6ca1: $13
	rst  $38                                         ; $6ca2: $ff
	rst  $38                                         ; $6ca3: $ff
	ld   sp, hl                                      ; $6ca4: $f9
	db   $fd                                         ; $6ca5: $fd
	rst  $38                                         ; $6ca6: $ff
	halt                                             ; $6ca7: $76
	ld   de, $cf11                                   ; $6ca8: $11 $11 $cf
	rst  $38                                         ; $6cab: $ff
	rst  JumpTable                                         ; $6cac: $df
	sbc  e                                           ; $6cad: $9b
	rst  $28                                         ; $6cae: $ef
	rst  $38                                         ; $6caf: $ff
	ld   hl, sp+$11                                  ; $6cb0: $f8 $11
	ld   [de], a                                     ; $6cb2: $12
	ld   de, $1111                                   ; $6cb3: $11 $11 $11
	cpl                                              ; $6cb6: $2f
	rst  $38                                         ; $6cb7: $ff
	ld   sp, hl                                      ; $6cb8: $f9
	db   $ed                                         ; $6cb9: $ed
	xor  a                                           ; $6cba: $af
	cp   h                                           ; $6cbb: $bc
	ld   de, $6f11                                   ; $6cbc: $11 $11 $6f
	rst  $38                                         ; $6cbf: $ff
	rst  $38                                         ; $6cc0: $ff
	or   [hl]                                        ; $6cc1: $b6
	rst  $28                                         ; $6cc2: $ef
	rst  $38                                         ; $6cc3: $ff
	db   $fc                                         ; $6cc4: $fc
	ld   de, $4112                                   ; $6cc5: $11 $12 $41
	ld   de, $1f11                                   ; $6cc8: $11 $11 $1f
	rst  $38                                         ; $6ccb: $ff
	ld   sp, hl                                      ; $6ccc: $f9
	ld   a, a                                        ; $6ccd: $7f
	rst  $28                                         ; $6cce: $ef
	push af                                          ; $6ccf: $f5
	ld   de, $7f11                                   ; $6cd0: $11 $11 $7f
	rst  $38                                         ; $6cd3: $ff
	and  l                                           ; $6cd4: $a5
	db   $ec                                         ; $6cd5: $ec
	rst  $38                                         ; $6cd6: $ff
	rst  $38                                         ; $6cd7: $ff
	ld   b, [hl]                                     ; $6cd8: $46
	inc  [hl]                                        ; $6cd9: $34
	add  l                                           ; $6cda: $85
	ld   sp, $1411                                   ; $6cdb: $31 $11 $14
	rst  $38                                         ; $6cde: $ff
	ld   sp, hl                                      ; $6cdf: $f9
	db   $f4                                         ; $6ce0: $f4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ce1: $cf
	rst  $38                                         ; $6ce2: $ff
	ld   h, c                                        ; $6ce3: $61
	ld   de, $ff7e                                   ; $6ce4: $11 $7e $ff
	ld   d, [hl]                                     ; $6ce7: $56
	inc  a                                           ; $6ce8: $3c
	rst  $38                                         ; $6ce9: $ff
	rst  $38                                         ; $6cea: $ff
	adc  c                                           ; $6ceb: $89
	ld   c, a                                        ; $6cec: $4f
	db   $fc                                         ; $6ced: $fc
	ld   d, c                                        ; $6cee: $51
	ld   de, $1c11                                   ; $6cef: $11 $11 $1c
	sbc  d                                           ; $6cf2: $9a
	push af                                          ; $6cf3: $f5
	rst  $38                                         ; $6cf4: $ff
	rst  $38                                         ; $6cf5: $ff
	cp   [hl]                                        ; $6cf6: $be
	ld   de, $f811                                   ; $6cf7: $11 $11 $f8
	daa                                              ; $6cfa: $27
	ccf                                              ; $6cfb: $3f
	rst  $38                                         ; $6cfc: $ff
	db   $fc                                         ; $6cfd: $fc
	adc  c                                           ; $6cfe: $89
	rst  $28                                         ; $6cff: $ef
	rst  $38                                         ; $6d00: $ff
	and  c                                           ; $6d01: $a1
	ld   de, $1111                                   ; $6d02: $11 $11 $11
	add  hl, de                                      ; $6d05: $19
	adc  a                                           ; $6d06: $8f
	ei                                               ; $6d07: $fb
	ld   sp, hl                                      ; $6d08: $f9
	rst  $38                                         ; $6d09: $ff
	rst  $28                                         ; $6d0a: $ef
	ld   de, $f311                                   ; $6d0b: $11 $11 $f3
	ld   [hl], l                                     ; $6d0e: $75
	ld   l, a                                        ; $6d0f: $6f
	rst  $28                                         ; $6d10: $ef
	rst  $30                                         ; $6d11: $f7
	cp   e                                           ; $6d12: $bb
	rst  $38                                         ; $6d13: $ff
	rst  $38                                         ; $6d14: $ff
	ld   de, $1111                                   ; $6d15: $11 $11 $11
	ld   de, $ff5b                                   ; $6d18: $11 $5b $ff
	ld   a, a                                        ; $6d1b: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d1c: $cf
	ei                                               ; $6d1d: $fb
	pop  de                                          ; $6d1e: $d1
	ld   [de], a                                     ; $6d1f: $12
	rra                                              ; $6d20: $1f
	ld   h, c                                        ; $6d21: $61
	ld   h, l                                        ; $6d22: $65
	rst  $38                                         ; $6d23: $ff
	rst  $38                                         ; $6d24: $ff
	ld   b, a                                        ; $6d25: $47
	rst  $38                                         ; $6d26: $ff
	cp   $b3                                         ; $6d27: $fe $b3
	ld   [de], a                                     ; $6d29: $12
	ld   hl, $1911                                   ; $6d2a: $21 $11 $19
	xor  $f4                                         ; $6d2d: $ee $f4
	rst  $38                                         ; $6d2f: $ff
	rst  $38                                         ; $6d30: $ff
	sub  l                                           ; $6d31: $95
	ld   de, $f591                                   ; $6d32: $11 $91 $f5
	rla                                              ; $6d35: $17
	rst  $28                                         ; $6d36: $ef
	db   $fd                                         ; $6d37: $fd
	push af                                          ; $6d38: $f5
	sbc  a                                           ; $6d39: $9f
	rst  $38                                         ; $6d3a: $ff
	ld   h, l                                        ; $6d3b: $65
	add  h                                           ; $6d3c: $84
	ld   [hl], d                                     ; $6d3d: $72
	ld   de, $fd11                                   ; $6d3e: $11 $11 $fd
	sub  l                                           ; $6d41: $95
	rra                                              ; $6d42: $1f
	rst  $38                                         ; $6d43: $ff
	pop  af                                          ; $6d44: $f1
	ld   de, $16be                                   ; $6d45: $11 $be $16
	ld   de, $f8ff                                   ; $6d48: $11 $ff $f8
	ld   l, a                                        ; $6d4b: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d4c: $cf
	rst  $38                                         ; $6d4d: $ff
	ld   d, e                                        ; $6d4e: $53
	rst  $28                                         ; $6d4f: $ef
	ld   h, c                                        ; $6d50: $61
	ld   de, rAUD1LEN                                   ; $6d51: $11 $11 $ff
	inc  d                                           ; $6d54: $14
	ld   e, a                                        ; $6d55: $5f
	rst  $38                                         ; $6d56: $ff
	db   $f4                                         ; $6d57: $f4
	inc  e                                           ; $6d58: $1c
	adc  a                                           ; $6d59: $8f
	ld   de, $bf21                                   ; $6d5a: $11 $21 $bf
	ld   sp, hl                                      ; $6d5d: $f9
	ld   l, a                                        ; $6d5e: $6f
	rst  $38                                         ; $6d5f: $ff
	rst  $38                                         ; $6d60: $ff
	and  a                                           ; $6d61: $a7
	rst  $28                                         ; $6d62: $ef
	ld   sp, $1111                                   ; $6d63: $31 $11 $11
	ld   e, a                                        ; $6d66: $5f
	ld   [de], a                                     ; $6d67: $12
	cp   a                                           ; $6d68: $bf
	rst  $38                                         ; $6d69: $ff
	rst  $38                                         ; $6d6a: $ff
	rra                                              ; $6d6b: $1f
	xor  h                                           ; $6d6c: $ac
	ld   de, $6f81                                   ; $6d6d: $11 $81 $6f
	ld   hl, sp+$6f                                  ; $6d70: $f8 $6f
	cp   $df                                         ; $6d72: $fe $df
	ld   a, [$41de]                                  ; $6d74: $fa $de $41
	ld   de, $1f11                                   ; $6d77: $11 $11 $1f
	ld   de, $ffcf                                   ; $6d7a: $11 $cf $ff
	rst  $38                                         ; $6d7d: $ff
	rra                                              ; $6d7e: $1f
	db   $fc                                         ; $6d7f: $fc
	ld   de, $5e84                                   ; $6d80: $11 $84 $5e
	push af                                          ; $6d83: $f5
	sbc  a                                           ; $6d84: $9f
	db   $fc                                         ; $6d85: $fc
	sbc  a                                           ; $6d86: $9f
	ld   a, [$31db]                                  ; $6d87: $fa $db $31
	ld   de, $8f11                                   ; $6d8a: $11 $11 $8f
	ld   de, $fedf                                   ; $6d8d: $11 $df $fe
	ld   sp, hl                                      ; $6d90: $f9
	rra                                              ; $6d91: $1f
	ld   hl, sp+$11                                  ; $6d92: $f8 $11
	push de                                          ; $6d94: $d5
	ld   e, h                                        ; $6d95: $5c
	push af                                          ; $6d96: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d97: $cf
	rst  $30                                         ; $6d98: $f7
	sbc  a                                           ; $6d99: $9f
	ld   hl, sp-$35                                  ; $6d9a: $f8 $cb
	ld   sp, $1111                                   ; $6d9c: $31 $11 $11
	db   $fc                                         ; $6d9f: $fc
	ld   [de], a                                     ; $6da0: $12
	rst  $38                                         ; $6da1: $ff
	cp   $f3                                         ; $6da2: $fe $f3
	sbc  a                                           ; $6da4: $9f
	pop  af                                          ; $6da5: $f1
	dec  de                                          ; $6da6: $1b
	call nc, $f52d                                   ; $6da7: $d4 $2d $f5
	rst  $38                                         ; $6daa: $ff
	push bc                                          ; $6dab: $c5
	rst  $38                                         ; $6dac: $ff
	add  $ea                                         ; $6dad: $c6 $ea
	ld   hl, $1111                                   ; $6daf: $21 $11 $11
	pop  af                                          ; $6db2: $f1
	dec  de                                          ; $6db3: $1b
	rst  $38                                         ; $6db4: $ff
	sbc  a                                           ; $6db5: $9f
	pop  af                                          ; $6db6: $f1
	rst  $38                                         ; $6db7: $ff
	or   c                                           ; $6db8: $b1
	rra                                              ; $6db9: $1f
	ld   h, c                                        ; $6dba: $61
	ccf                                              ; $6dbb: $3f
	db   $e3                                         ; $6dbc: $e3
	rst  $38                                         ; $6dbd: $ff
	xor  d                                           ; $6dbe: $aa
	rst  $38                                         ; $6dbf: $ff
	dec  hl                                          ; $6dc0: $2b
	ld   hl, sp+$11                                  ; $6dc1: $f8 $11
	ld   de, $f116                                   ; $6dc3: $11 $16 $f1
	rra                                              ; $6dc6: $1f
	rst  $38                                         ; $6dc7: $ff
	ld   c, a                                        ; $6dc8: $4f
	db   $f4                                         ; $6dc9: $f4
	ei                                               ; $6dca: $fb
	ld   d, c                                        ; $6dcb: $51
	adc  a                                           ; $6dcc: $8f
	ld   de, $768f                                   ; $6dcd: $11 $8f $76
	db   $fc                                         ; $6dd0: $fc
	cp   a                                           ; $6dd1: $bf
	rst  $38                                         ; $6dd2: $ff
	rra                                              ; $6dd3: $1f
	di                                               ; $6dd4: $f3
	ld   de, $1f11                                   ; $6dd5: $11 $11 $1f
	ld   sp, $fd8f                                   ; $6dd8: $31 $8f $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ddb: $cf
	adc  l                                           ; $6ddc: $8d
	push af                                          ; $6ddd: $f5
	ld   de, $18f6                                   ; $6dde: $11 $f6 $18
	rst  $38                                         ; $6de1: $ff
	ld   e, $fa                                      ; $6de2: $1e $fa
	rst  JumpTable                                         ; $6de4: $df
	rst  $30                                         ; $6de5: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6de6: $cf
	ld   h, c                                        ; $6de7: $61
	ld   de, $1f11                                   ; $6de8: $11 $11 $1f
	ld   de, $f5ff                                   ; $6deb: $11 $ff $f5
	rst  $38                                         ; $6dee: $ff
	ld   e, a                                        ; $6def: $5f
	add  [hl]                                        ; $6df0: $86
	rla                                              ; $6df1: $17
	pop  af                                          ; $6df2: $f1
	inc  l                                           ; $6df3: $2c
	ld   hl, sp+$3f                                  ; $6df4: $f8 $3f
	db   $db                                         ; $6df6: $db
	rst  $38                                         ; $6df7: $ff
	or   $ff                                         ; $6df8: $f6 $ff
	ld   de, $1111                                   ; $6dfa: $11 $11 $11
	pop  af                                          ; $6dfd: $f1
	rla                                              ; $6dfe: $17
	rst  $38                                         ; $6dff: $ff
	ld   c, [hl]                                     ; $6e00: $4e
	ld   hl, sp-$05                                  ; $6e01: $f8 $fb
	add  c                                           ; $6e03: $81
	rra                                              ; $6e04: $1f
	ld   de, $e18f                                   ; $6e05: $11 $8f $e1
	rst  $38                                         ; $6e08: $ff
	cp   h                                           ; $6e09: $bc
	rst  $38                                         ; $6e0a: $ff
	adc  a                                           ; $6e0b: $8f
	db   $f4                                         ; $6e0c: $f4
	ld   de, $1911                                   ; $6e0d: $11 $11 $19
	pop  hl                                          ; $6e10: $e1
	rra                                              ; $6e11: $1f
	rst  $38                                         ; $6e12: $ff
	ld   l, a                                        ; $6e13: $6f
	db   $db                                         ; $6e14: $db
	push af                                          ; $6e15: $f5
	ld   hl, $19fb                                   ; $6e16: $21 $fb $19
	rst  $38                                         ; $6e19: $ff
	add  hl, de                                      ; $6e1a: $19
	ld   sp, hl                                      ; $6e1b: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e1c: $cf
	ld   a, [$81ef]                                  ; $6e1d: $fa $ef $81
	ld   de, $1f11                                   ; $6e20: $11 $11 $1f
	ld   de, $f2ff                                   ; $6e23: $11 $ff $f2
	rst  $38                                         ; $6e26: $ff
	sbc  a                                           ; $6e27: $9f
	ld   b, l                                        ; $6e28: $45
	ld   e, $f1                                      ; $6e29: $1e $f1
	ld   l, l                                        ; $6e2b: $6d
	push af                                          ; $6e2c: $f5
	cpl                                              ; $6e2d: $2f
	xor  [hl]                                        ; $6e2e: $ae
	rst  $38                                         ; $6e2f: $ff
	db   $eb                                         ; $6e30: $eb
	ei                                               ; $6e31: $fb
	ld   de, $1111                                   ; $6e32: $11 $11 $11
	pop  af                                          ; $6e35: $f1
	inc  e                                           ; $6e36: $1c
	rst  $38                                         ; $6e37: $ff
	adc  a                                           ; $6e38: $8f
	or   $fa                                         ; $6e39: $f6 $fa
	ld   hl, $139f                                   ; $6e3b: $21 $9f $13
	rst  $38                                         ; $6e3e: $ff
	sub  c                                           ; $6e3f: $91
	ld   sp, hl                                      ; $6e40: $f9
	sbc  a                                           ; $6e41: $9f
	rst  $38                                         ; $6e42: $ff
	xor  a                                           ; $6e43: $af
	pop  hl                                          ; $6e44: $e1
	ld   de, $1f11                                   ; $6e45: $11 $11 $1f
	ld   de, $f7af                                   ; $6e48: $11 $af $f7
	rst  $38                                         ; $6e4b: $ff
	sbc  a                                           ; $6e4c: $9f
	call nz, $f138                                   ; $6e4d: $c4 $38 $f1
	rra                                              ; $6e50: $1f
	ld   sp, hl                                      ; $6e51: $f9
	rra                                              ; $6e52: $1f
	ret                                              ; $6e53: $c9


	rst  $38                                         ; $6e54: $ff
	db   $fc                                         ; $6e55: $fc
	cp   $11                                         ; $6e56: $fe $11
	ld   de, $f111                                   ; $6e58: $11 $11 $f1
	rla                                              ; $6e5b: $17
	rst  $38                                         ; $6e5c: $ff
	jp   z, $fff7                                    ; $6e5d: $ca $f7 $ff

	dec  d                                           ; $6e60: $15
	ld   e, a                                        ; $6e61: $5f
	ld   de, $f1ff                                   ; $6e62: $11 $ff $f1
	db   $db                                         ; $6e65: $db

jr_0cd_6e66:
	xor  a                                           ; $6e66: $af
	rst  $38                                         ; $6e67: $ff
	cp   a                                           ; $6e68: $bf
	pop  af                                          ; $6e69: $f1
	ld   de, $1f11                                   ; $6e6a: $11 $11 $1f
	ld   de, $f99f                                   ; $6e6d: $11 $9f $f9
	rst  $38                                         ; $6e70: $ff
	ld   a, a                                        ; $6e71: $7f
	db   $d3                                         ; $6e72: $d3
	jr   c, jr_0cd_6e66                              ; $6e73: $38 $f1

	ld   l, $fb                                      ; $6e75: $2e $fb
	ld   e, $9a                                      ; $6e77: $1e $9a
	rst  $38                                         ; $6e79: $ff
	ei                                               ; $6e7a: $fb
	cp   $11                                         ; $6e7b: $fe $11
	ld   de, $f111                                   ; $6e7d: $11 $11 $f1
	ld   a, [de]                                     ; $6e80: $1a
	rst  $38                                         ; $6e81: $ff
	ld   e, a                                        ; $6e82: $5f
	ei                                               ; $6e83: $fb
	rst  $30                                         ; $6e84: $f7
	ld   d, d                                        ; $6e85: $52
	rst  JumpTable                                         ; $6e86: $df
	ld   d, $cf                                      ; $6e87: $16 $cf
	and  d                                           ; $6e89: $a2
	or   [hl]                                        ; $6e8a: $b6
	rst  $38                                         ; $6e8b: $ff
	rst  $38                                         ; $6e8c: $ff
	cp   a                                           ; $6e8d: $bf
	or   d                                           ; $6e8e: $b2
	ld   de, $1e11                                   ; $6e8f: $11 $11 $1e
	ld   de, $f4bf                                   ; $6e92: $11 $bf $f4
	db   $fc                                         ; $6e95: $fc
	rst  $38                                         ; $6e96: $ff
	ld   c, b                                        ; $6e97: $48
	rra                                              ; $6e98: $1f
	pop  de                                          ; $6e99: $d1
	sbc  c                                           ; $6e9a: $99
	or   $77                                         ; $6e9b: $f6 $77
	ld   a, a                                        ; $6e9d: $7f
	rst  $38                                         ; $6e9e: $ff
	rst  JumpTable                                         ; $6e9f: $df
	ld   sp, hl                                      ; $6ea0: $f9
	ld   d, c                                        ; $6ea1: $51
	ld   de, $5119                                   ; $6ea2: $11 $19 $51
	add  hl, de                                      ; $6ea5: $19
	rst  $38                                         ; $6ea6: $ff
	ld   l, a                                        ; $6ea7: $6f
	ld   l, a                                        ; $6ea8: $6f
	di                                               ; $6ea9: $f3
	add  e                                           ; $6eaa: $83
	push af                                          ; $6eab: $f5
	ld   e, b                                        ; $6eac: $58
	sbc  a                                           ; $6ead: $9f
	ld   l, e                                        ; $6eae: $6b
	ld   a, [de]                                     ; $6eaf: $1a
	rst  $38                                         ; $6eb0: $ff
	ei                                               ; $6eb1: $fb
	db   $fd                                         ; $6eb2: $fd
	sub  h                                           ; $6eb3: $94
	ld   de, $d111                                   ; $6eb4: $11 $11 $d1
	inc  d                                           ; $6eb7: $14
	sbc  a                                           ; $6eb8: $9f
	cp   h                                           ; $6eb9: $bc
	jp   hl                                          ; $6eba: $e9


	db   $fc                                         ; $6ebb: $fc
	ld   h, e                                        ; $6ebc: $63
	xor  a                                           ; $6ebd: $af
	dec  sp                                          ; $6ebe: $3b
	ld   c, d                                        ; $6ebf: $4a
	jp   hl                                          ; $6ec0: $e9


	or   c                                           ; $6ec1: $b1
	rst  $38                                         ; $6ec2: $ff
	rst  $38                                         ; $6ec3: $ff
	xor  a                                           ; $6ec4: $af
	sbc  h                                           ; $6ec5: $9c
	ld   de, $5a11                                   ; $6ec6: $11 $11 $5a
	ld   de, $fb1f                                   ; $6ec9: $11 $1f $fb
	db   $e4                                         ; $6ecc: $e4
	rst  $38                                         ; $6ecd: $ff
	or   a                                           ; $6ece: $b7
	rra                                              ; $6ecf: $1f
	ld   a, [$bbc1]                                  ; $6ed0: $fa $c1 $bb
	rst  $30                                         ; $6ed3: $f7
	rra                                              ; $6ed4: $1f
	rst  $38                                         ; $6ed5: $ff
	ei                                               ; $6ed6: $fb
	sub  [hl]                                        ; $6ed7: $96
	or   c                                           ; $6ed8: $b1
	ld   de, $111d                                   ; $6ed9: $11 $1d $11
	ld   de, $f7ff                                   ; $6edc: $11 $ff $f7
	ld   c, a                                        ; $6edf: $4f
	rst  $38                                         ; $6ee0: $ff
	ld   h, l                                        ; $6ee1: $65
	jp   z, Jump_0cd_53fa                            ; $6ee2: $ca $fa $53

	sbc  a                                           ; $6ee5: $9f
	adc  e                                           ; $6ee6: $8b
	cp   [hl]                                        ; $6ee7: $be
	rst  $38                                         ; $6ee8: $ff
	db   $f4                                         ; $6ee9: $f4
	ld   d, e                                        ; $6eea: $53
	ld   de, $1111                                   ; $6eeb: $11 $11 $11
	ld   de, $ff6c                                   ; $6eee: $11 $6c $ff
	ld   a, a                                        ; $6ef1: $7f
	rst  $38                                         ; $6ef2: $ff
	db   $fc                                         ; $6ef3: $fc
	push de                                          ; $6ef4: $d5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ef5: $cf
	ret                                              ; $6ef6: $c9


	ld   c, c                                        ; $6ef7: $49
	ld   a, e                                        ; $6ef8: $7b
	xor  $fe                                         ; $6ef9: $ee $fe
	db   $fc                                         ; $6efb: $fc
	add  l                                           ; $6efc: $85
	ld   de, $4111                                   ; $6efd: $11 $11 $41
	ld   de, $cf19                                   ; $6f00: $11 $19 $cf
	adc  c                                           ; $6f03: $89
	rst  $38                                         ; $6f04: $ff
	cp   $f9                                         ; $6f05: $fe $f9
	adc  a                                           ; $6f07: $8f
	cp   $76                                         ; $6f08: $fe $76
	ld   l, c                                        ; $6f0a: $69
	xor  $fc                                         ; $6f0b: $ee $fc
	call z, $31b9                                    ; $6f0d: $cc $b9 $31
	ld   de, $1121                                   ; $6f10: $11 $21 $11
	ld   [de], a                                     ; $6f13: $12
	ld   e, h                                        ; $6f14: $5c
	ret                                              ; $6f15: $c9


	xor  e                                           ; $6f16: $ab
	rst  $38                                         ; $6f17: $ff
	cp   $9b                                         ; $6f18: $fe $9b
	rst  JumpTable                                         ; $6f1a: $df
	db   $db                                         ; $6f1b: $db
	add  [hl]                                        ; $6f1c: $86
	xor  h                                           ; $6f1d: $ac
	rst  $38                                         ; $6f1e: $ff
	db   $db                                         ; $6f1f: $db
	adc  d                                           ; $6f20: $8a
	sub  l                                           ; $6f21: $95
	ld   de, $1112                                   ; $6f22: $11 $12 $11
	ld   de, $7712                                   ; $6f25: $11 $12 $77
	adc  b                                           ; $6f28: $88
	xor  h                                           ; $6f29: $ac
	rst  $28                                         ; $6f2a: $ef
	db   $db                                         ; $6f2b: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f2c: $cf
	db   $ed                                         ; $6f2d: $ed
	db   $fc                                         ; $6f2e: $fc
	call c, $ffef                                    ; $6f2f: $dc $ef $ff
	jp   z, $3196                                    ; $6f32: $ca $96 $31

	ld   de, $1111                                   ; $6f35: $11 $11 $11
	ld   de, $5713                                   ; $6f38: $11 $13 $57
	sbc  e                                           ; $6f3b: $9b
	rst  $28                                         ; $6f3c: $ef
	sbc  $ef                                         ; $6f3d: $de $ef
	rst  $38                                         ; $6f3f: $ff
	db   $fd                                         ; $6f40: $fd
	db   $dd                                         ; $6f41: $dd
	rst  $38                                         ; $6f42: $ff
	rst  $38                                         ; $6f43: $ff
	db   $db                                         ; $6f44: $db
	and  a                                           ; $6f45: $a7
	ld   sp, $1111                                   ; $6f46: $31 $11 $11
	ld   de, $1311                                   ; $6f49: $11 $11 $13
	ld   b, [hl]                                     ; $6f4c: $46
	adc  e                                           ; $6f4d: $8b
	rst  JumpTable                                         ; $6f4e: $df
	cp   $ef                                         ; $6f4f: $fe $ef
	rst  $38                                         ; $6f51: $ff
	rst  $38                                         ; $6f52: $ff
	xor  $df                                         ; $6f53: $ee $df
	rst  $38                                         ; $6f55: $ff
	ei                                               ; $6f56: $fb
	cp   c                                           ; $6f57: $b9
	ld   d, c                                        ; $6f58: $51
	ld   de, $1111                                   ; $6f59: $11 $11 $11
	ld   de, $4512                                   ; $6f5c: $11 $12 $45
	adc  c                                           ; $6f5f: $89
	adc  $ff                                         ; $6f60: $ce $ff
	xor  $ff                                         ; $6f62: $ee $ff
	rst  $38                                         ; $6f64: $ff
	db   $ed                                         ; $6f65: $ed
	adc  $ff                                         ; $6f66: $ce $ff
	db   $fc                                         ; $6f68: $fc
	cp   d                                           ; $6f69: $ba
	ld   [hl], h                                     ; $6f6a: $74
	ld   de, $1111                                   ; $6f6b: $11 $11 $11
	ld   de, $3411                                   ; $6f6e: $11 $11 $34
	ld   a, d                                        ; $6f71: $7a
	cp   l                                           ; $6f72: $bd
	rst  $38                                         ; $6f73: $ff
	rst  $28                                         ; $6f74: $ef
	rst  $38                                         ; $6f75: $ff
	rst  $38                                         ; $6f76: $ff
	db   $fd                                         ; $6f77: $fd
	db   $dd                                         ; $6f78: $dd
	rst  $38                                         ; $6f79: $ff
	cp   $ba                                         ; $6f7a: $fe $ba
	add  l                                           ; $6f7c: $85
	ld   de, $1111                                   ; $6f7d: $11 $11 $11
	ld   de, $1411                                   ; $6f80: $11 $11 $14
	ld   e, b                                        ; $6f83: $58
	xor  l                                           ; $6f84: $ad
	rst  $38                                         ; $6f85: $ff
	rst  $38                                         ; $6f86: $ff
	rst  $38                                         ; $6f87: $ff
	rst  $38                                         ; $6f88: $ff
	cp   $cd                                         ; $6f89: $fe $cd
	rst  JumpTable                                         ; $6f8b: $df
	rst  $38                                         ; $6f8c: $ff
	jp   c, $31a7                                    ; $6f8d: $da $a7 $31

	ld   de, $1111                                   ; $6f90: $11 $11 $11
	ld   de, $4613                                   ; $6f93: $11 $13 $46
	sbc  e                                           ; $6f96: $9b
	rst  $28                                         ; $6f97: $ef
	rst  $38                                         ; $6f98: $ff
	rst  $38                                         ; $6f99: $ff
	rst  $38                                         ; $6f9a: $ff
	rst  $38                                         ; $6f9b: $ff
	db   $ec                                         ; $6f9c: $ec
	sbc  $ff                                         ; $6f9d: $de $ff
	ei                                               ; $6f9f: $fb
	xor  c                                           ; $6fa0: $a9
	ld   d, d                                        ; $6fa1: $52
	ld   de, $1111                                   ; $6fa2: $11 $11 $11
	ld   de, $4511                                   ; $6fa5: $11 $11 $45
	ld   a, c                                        ; $6fa8: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fa9: $cf
	rst  $38                                         ; $6faa: $ff
	rst  $28                                         ; $6fab: $ef
	rst  $38                                         ; $6fac: $ff
	rst  $38                                         ; $6fad: $ff
	cp   $cc                                         ; $6fae: $fe $cc
	rst  $28                                         ; $6fb0: $ef
	cp   $ba                                         ; $6fb1: $fe $ba
	add  h                                           ; $6fb3: $84
	ld   de, $1111                                   ; $6fb4: $11 $11 $11
	ld   de, $2511                                   ; $6fb7: $11 $11 $25
	ld   e, c                                        ; $6fba: $59
	cp   l                                           ; $6fbb: $bd
	rst  $38                                         ; $6fbc: $ff
	cp   $ff                                         ; $6fbd: $fe $ff
	rst  $38                                         ; $6fbf: $ff
	rst  $38                                         ; $6fc0: $ff
	db   $dd                                         ; $6fc1: $dd
	rst  JumpTable                                         ; $6fc2: $df
	rst  $38                                         ; $6fc3: $ff
	ld   [$31a6], a                                  ; $6fc4: $ea $a6 $31
	ld   de, $1111                                   ; $6fc7: $11 $11 $11
	ld   de, $5613                                   ; $6fca: $11 $13 $56
	sbc  e                                           ; $6fcd: $9b
	rst  JumpTable                                         ; $6fce: $df
	rst  $38                                         ; $6fcf: $ff
	rst  $38                                         ; $6fd0: $ff
	rst  $38                                         ; $6fd1: $ff
	rst  $38                                         ; $6fd2: $ff
	db   $ed                                         ; $6fd3: $ed
	db   $dd                                         ; $6fd4: $dd
	rst  $38                                         ; $6fd5: $ff
	db   $fd                                         ; $6fd6: $fd
	xor  c                                           ; $6fd7: $a9
	ld   d, e                                        ; $6fd8: $53
	ld   de, $1111                                   ; $6fd9: $11 $11 $11
	ld   de, $4511                                   ; $6fdc: $11 $11 $45
	ld   a, d                                        ; $6fdf: $7a
	cp   [hl]                                        ; $6fe0: $be
	rst  $38                                         ; $6fe1: $ff
	rst  $38                                         ; $6fe2: $ff
	rst  $38                                         ; $6fe3: $ff
	rst  $38                                         ; $6fe4: $ff
	cp   $ec                                         ; $6fe5: $fe $ec
	sbc  $ff                                         ; $6fe7: $de $ff
	db   $db                                         ; $6fe9: $db
	add  l                                           ; $6fea: $85
	ld   hl, $1111                                   ; $6feb: $21 $11 $11
	ld   de, $1511                                   ; $6fee: $11 $11 $15
	ld   d, a                                        ; $6ff1: $57
	xor  d                                           ; $6ff2: $aa
	rst  $28                                         ; $6ff3: $ef
	rst  $38                                         ; $6ff4: $ff
	rst  $38                                         ; $6ff5: $ff
	rst  $38                                         ; $6ff6: $ff
	rst  $38                                         ; $6ff7: $ff
	db   $ed                                         ; $6ff8: $ed
	call $fdef                                       ; $6ff9: $cd $ef $fd
	cp   c                                           ; $6ffc: $b9
	ld   b, c                                        ; $6ffd: $41
	ld   de, $1111                                   ; $6ffe: $11 $11 $11
	ld   de, $6611                                   ; $7001: $11 $11 $66
	adc  c                                           ; $7004: $89
	xor  l                                           ; $7005: $ad
	rst  $38                                         ; $7006: $ff
	rst  $38                                         ; $7007: $ff
	rst  $38                                         ; $7008: $ff
	rst  $38                                         ; $7009: $ff
	rst  $38                                         ; $700a: $ff
	db   $ed                                         ; $700b: $ed
	db   $dd                                         ; $700c: $dd
	rst  $38                                         ; $700d: $ff
	call z, $1194                                    ; $700e: $cc $94 $11
	ld   de, $1111                                   ; $7011: $11 $11 $11
	ld   de, $7916                                   ; $7014: $11 $16 $79
	sbc  e                                           ; $7017: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7018: $cf
	rst  $38                                         ; $7019: $ff
	rst  $38                                         ; $701a: $ff
	cp   $ff                                         ; $701b: $fe $ff
	cp   $ed                                         ; $701d: $fe $ed
	sbc  $dd                                         ; $701f: $de $dd
	ret                                              ; $7021: $c9


	ld   d, c                                        ; $7022: $51
	ld   de, $1111                                   ; $7023: $11 $11 $11
	ld   de, $5711                                   ; $7026: $11 $11 $57
	xor  e                                           ; $7029: $ab
	xor  h                                           ; $702a: $ac
	rst  $38                                         ; $702b: $ff
	rst  $38                                         ; $702c: $ff
	rst  $38                                         ; $702d: $ff
	rst  $28                                         ; $702e: $ef
	xor  $ff                                         ; $702f: $ee $ff
	db   $ed                                         ; $7031: $ed
	call c, $a7cd                                    ; $7032: $dc $cd $a7
	ld   hl, $1111                                   ; $7035: $21 $11 $11
	ld   de, $1411                                   ; $7038: $11 $11 $14
	ld   l, d                                        ; $703b: $6a
	call c, $ffce                                    ; $703c: $dc $ce $ff
	rst  $38                                         ; $703f: $ff
	cp   $fe                                         ; $7040: $fe $fe
	adc  $ef                                         ; $7042: $ce $ef
	db   $ec                                         ; $7044: $ec
	cp   d                                           ; $7045: $ba
	res  2, l                                        ; $7046: $cb $95
	ld   de, $1111                                   ; $7048: $11 $11 $11
	ld   de, $1511                                   ; $704b: $11 $11 $15
	ld   a, l                                        ; $704e: $7d
	call c, $ffef                                    ; $704f: $dc $ef $ff
	rst  $38                                         ; $7052: $ff
	rst  $38                                         ; $7053: $ff
	db   $fc                                         ; $7054: $fc
	sbc  $ff                                         ; $7055: $de $ff
	db   $ed                                         ; $7057: $ed
	xor  d                                           ; $7058: $aa
	cp   b                                           ; $7059: $b8
	ld   h, d                                        ; $705a: $62
	ld   de, $1111                                   ; $705b: $11 $11 $11
	ld   de, $5511                                   ; $705e: $11 $11 $55
	cp   h                                           ; $7061: $bc
	adc  $ff                                         ; $7062: $ce $ff
	rst  $38                                         ; $7064: $ff
	rst  $38                                         ; $7065: $ff
	rst  $38                                         ; $7066: $ff
	db   $db                                         ; $7067: $db
	sbc  $ef                                         ; $7068: $de $ef
	jp   c, $a7ab                                    ; $706a: $da $ab $a7

	ld   d, c                                        ; $706d: $51
	ld   de, $1111                                   ; $706e: $11 $11 $11
	ld   de, $5813                                   ; $7071: $11 $13 $58
	call $ffdf                                       ; $7074: $cd $df $ff
	rst  $38                                         ; $7077: $ff
	rst  $38                                         ; $7078: $ff
	cp   $bc                                         ; $7079: $fe $bc
	sbc  $ff                                         ; $707b: $de $ff
	ret                                              ; $707d: $c9


	xor  d                                           ; $707e: $aa
	add  [hl]                                        ; $707f: $86
	ld   hl, $1111                                   ; $7080: $21 $11 $11
	ld   de, $1411                                   ; $7083: $11 $11 $14
	ld   a, l                                        ; $7086: $7d
	sbc  $ff                                         ; $7087: $de $ff
	rst  $38                                         ; $7089: $ff
	rst  $38                                         ; $708a: $ff
	cp   $ca                                         ; $708b: $fe $ca
	adc  h                                           ; $708d: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $708e: $cf
	db   $fd                                         ; $708f: $fd
	cp   c                                           ; $7090: $b9
	sub  a                                           ; $7091: $97
	ld   d, c                                        ; $7092: $51
	ld   de, $1312                                   ; $7093: $11 $12 $13
	ld   de, $eb12                                   ; $7096: $11 $12 $eb
	rst  $38                                         ; $7099: $ff
	xor  d                                           ; $709a: $aa
	ld   a, [hl]                                     ; $709b: $7e
	xor  a                                           ; $709c: $af
	ei                                               ; $709d: $fb
	push bc                                          ; $709e: $c5
	add  [hl]                                        ; $709f: $86
	cp   [hl]                                        ; $70a0: $be
	rst  $28                                         ; $70a1: $ef
	xor  $cb                                         ; $70a2: $ee $cb
	call nz, $1111                                   ; $70a4: $c4 $11 $11
	ld   [de], a                                     ; $70a7: $12
	ld   c, l                                        ; $70a8: $4d
	inc  bc                                          ; $70a9: $03
	add  hl, hl                                      ; $70aa: $29
	rst  $38                                         ; $70ab: $ff
	cp   $74                                         ; $70ac: $fe $74
	ld   e, $9f                                      ; $70ae: $1e $9f
	rst  $10                                         ; $70b0: $d7
	ld   d, c                                        ; $70b1: $51
	add  a                                           ; $70b2: $87
	rst  $38                                         ; $70b3: $ff
	rst  $38                                         ; $70b4: $ff
	xor  a                                           ; $70b5: $af
	rst  JumpTable                                         ; $70b6: $df
	pop  bc                                          ; $70b7: $c1
	ld   de, $1711                                   ; $70b8: $11 $11 $17
	xor  a                                           ; $70bb: $af
	rla                                              ; $70bc: $17
	ld   e, a                                        ; $70bd: $5f
	rst  $38                                         ; $70be: $ff
	pop  af                                          ; $70bf: $f1
	ld   sp, $ef6f                                   ; $70c0: $31 $6f $ef
	inc  hl                                          ; $70c3: $23
	inc  de                                          ; $70c4: $13
	cp   $fc                                         ; $70c5: $fe $fc
	rst  $38                                         ; $70c7: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70c8: $cf
	db   $fd                                         ; $70c9: $fd
	ld   hl, $1111                                   ; $70ca: $21 $11 $11
	add  $f1                                         ; $70cd: $c6 $f1
	ld   e, $ff                                      ; $70cf: $1e $ff
	rst  $38                                         ; $70d1: $ff
	add  c                                           ; $70d2: $81
	add  c                                           ; $70d3: $81
	db   $fd                                         ; $70d4: $fd
	ld   sp, hl                                      ; $70d5: $f9
	inc  e                                           ; $70d6: $1c
	cpl                                              ; $70d7: $2f
	db   $fd                                         ; $70d8: $fd
	jp   nc, $ffff                                   ; $70d9: $d2 $ff $ff

	ld   h, h                                        ; $70dc: $64
	ld   de, $1511                                   ; $70dd: $11 $11 $15
	ld   l, d                                        ; $70e0: $6a
	pop  af                                          ; $70e1: $f1
	rst  $38                                         ; $70e2: $ff
	rst  $38                                         ; $70e3: $ff
	cp   a                                           ; $70e4: $bf
	ld   de, $f772                                   ; $70e5: $11 $72 $f7
	ldh  a, [c]                                      ; $70e8: $f2
	ld   c, [hl]                                     ; $70e9: $4e
	ld   l, a                                        ; $70ea: $6f
	xor  e                                           ; $70eb: $ab
	sbc  e                                           ; $70ec: $9b
	rst  $38                                         ; $70ed: $ff
	db   $fd                                         ; $70ee: $fd
	ld   de, $1111                                   ; $70ef: $11 $11 $11
	jr   @+$71                                       ; $70f2: $18 $6f

	rst  $10                                         ; $70f4: $d7
	db   $fc                                         ; $70f5: $fc
	rst  $38                                         ; $70f6: $ff
	ei                                               ; $70f7: $fb
	rla                                              ; $70f8: $17
	dec  e                                           ; $70f9: $1d
	cp   $f1                                         ; $70fa: $fe $f1
	rst  $10                                         ; $70fc: $d7
	rst  JumpTable                                         ; $70fd: $df
	sbc  h                                           ; $70fe: $9c
	ld   a, a                                        ; $70ff: $7f
	rst  $38                                         ; $7100: $ff
	rst  $30                                         ; $7101: $f7
	ld   sp, $1111                                   ; $7102: $31 $11 $11
	ld   c, d                                        ; $7105: $4a
	rst  JumpTable                                         ; $7106: $df
	ld   l, [hl]                                     ; $7107: $6e
	rst  $38                                         ; $7108: $ff
	ld   sp, hl                                      ; $7109: $f9
	pop  af                                          ; $710a: $f1
	ld   d, $1f                                      ; $710b: $16 $1f
	rst  JumpTable                                         ; $710d: $df
	or   c                                           ; $710e: $b1
	di                                               ; $710f: $f3
	db   $fd                                         ; $7110: $fd
	xor  h                                           ; $7111: $ac
	ld   l, a                                        ; $7112: $6f
	rst  $38                                         ; $7113: $ff
	di                                               ; $7114: $f3
	ld   sp, $1111                                   ; $7115: $31 $11 $11
	cp   c                                           ; $7118: $b9
	rst  $38                                         ; $7119: $ff
	ld   e, a                                        ; $711a: $5f
	cp   a                                           ; $711b: $bf
	ld   sp, hl                                      ; $711c: $f9
	pop  af                                          ; $711d: $f1
	ld   de, $bf4f                                   ; $711e: $11 $4f $bf
	ld   b, a                                        ; $7121: $47
	call nz, $c8f9                                   ; $7122: $c4 $f9 $c8
	xor  a                                           ; $7125: $af
	rst  $38                                         ; $7126: $ff
	db   $e4                                         ; $7127: $e4
	ld   de, $1111                                   ; $7128: $11 $11 $11
	ld   [$5fff], a                                  ; $712b: $ea $ff $5f
	xor  a                                           ; $712e: $af
	ld   [$41f1], a                                  ; $712f: $ea $f1 $41
	adc  a                                           ; $7132: $8f
	cp   a                                           ; $7133: $bf
	dec  hl                                          ; $7134: $2b
	sub  l                                           ; $7135: $95
	rst  $30                                         ; $7136: $f7
	rst  $10                                         ; $7137: $d7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7138: $cf
	rst  $38                                         ; $7139: $ff
	jp   $1111                                       ; $713a: $c3 $11 $11


	inc  de                                          ; $713d: $13
	db   $ed                                         ; $713e: $ed
	cp   $8f                                         ; $713f: $fe $8f
	sbc  a                                           ; $7141: $9f
	xor  h                                           ; $7142: $ac
	ld   h, c                                        ; $7143: $61
	ld   h, c                                        ; $7144: $61
	rst  $28                                         ; $7145: $ef
	rst  $28                                         ; $7146: $ef
	inc  e                                           ; $7147: $1c
	ld   [hl], a                                     ; $7148: $77
	rst  $30                                         ; $7149: $f7
	rst  $10                                         ; $714a: $d7
	rst  JumpTable                                         ; $714b: $df
	rst  $38                                         ; $714c: $ff
	and  e                                           ; $714d: $a3
	ld   de, $1611                                   ; $714e: $11 $11 $16
	rst  $38                                         ; $7151: $ff
	ei                                               ; $7152: $fb
	xor  a                                           ; $7153: $af
	sbc  a                                           ; $7154: $9f
	adc  h                                           ; $7155: $8c
	ld   hl, $ff61                                   ; $7156: $21 $61 $ff
	rst  $38                                         ; $7159: $ff
	inc  e                                           ; $715a: $1c
	ld   l, b                                        ; $715b: $68
	or   $b7                                         ; $715c: $f6 $b7
	rst  $28                                         ; $715e: $ef
	rst  $38                                         ; $715f: $ff
	and  e                                           ; $7160: $a3
	ld   de, $1511                                   ; $7161: $11 $11 $15
	rst  $38                                         ; $7164: $ff
	db   $fd                                         ; $7165: $fd
	xor  a                                           ; $7166: $af
	ld   a, a                                        ; $7167: $7f
	adc  d                                           ; $7168: $8a
	ld   hl, $ff61                                   ; $7169: $21 $61 $ff
	rst  $38                                         ; $716c: $ff
	ld   c, h                                        ; $716d: $4c
	ld   e, c                                        ; $716e: $59
	rst  $30                                         ; $716f: $f7
	or   a                                           ; $7170: $b7
	rst  $28                                         ; $7171: $ef
	rst  $38                                         ; $7172: $ff
	sub  l                                           ; $7173: $95
	ld   de, $1511                                   ; $7174: $11 $11 $15
	rst  $38                                         ; $7177: $ff
	db   $fd                                         ; $7178: $fd
	sbc  a                                           ; $7179: $9f
	ld   a, a                                        ; $717a: $7f
	adc  d                                           ; $717b: $8a
	ld   hl, $ff51                                   ; $717c: $21 $51 $ff
	rst  $38                                         ; $717f: $ff
	ld   a, [hl-]                                    ; $7180: $3a
	ld   e, b                                        ; $7181: $58
	ld   sp, hl                                      ; $7182: $f9
	add  $ef                                         ; $7183: $c6 $ef
	rst  $38                                         ; $7185: $ff
	or   [hl]                                        ; $7186: $b6
	ld   de, $1311                                   ; $7187: $11 $11 $13
	rst  $38                                         ; $718a: $ff
	rst  $38                                         ; $718b: $ff
	ld   a, a                                        ; $718c: $7f
	ld   l, a                                        ; $718d: $6f
	cp   b                                           ; $718e: $b8
	ld   d, c                                        ; $718f: $51
	ld   sp, $ffdf                                   ; $7190: $31 $df $ff
	ld   c, d                                        ; $7193: $4a
	ld   h, a                                        ; $7194: $67
	ld   hl, sp-$3a                                  ; $7195: $f8 $c6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7197: $cf
	rst  $38                                         ; $7198: $ff
	rst  $10                                         ; $7199: $d7
	ld   de, $1111                                   ; $719a: $11 $11 $11
	rst  $38                                         ; $719d: $ff
	rst  $38                                         ; $719e: $ff
	ld   e, a                                        ; $719f: $5f
	ld   c, a                                        ; $71a0: $4f
	db   $f4                                         ; $71a1: $f4
	or   c                                           ; $71a2: $b1
	ld   de, $ff6f                                   ; $71a3: $11 $6f $ff
	adc  c                                           ; $71a6: $89
	sub  h                                           ; $71a7: $94
	ld   sp, hl                                      ; $71a8: $f9
	cp   b                                           ; $71a9: $b8
	sbc  a                                           ; $71aa: $9f
	rst  $38                                         ; $71ab: $ff
	rst  $30                                         ; $71ac: $f7
	ld   de, $1111                                   ; $71ad: $11 $11 $11
	rst  $38                                         ; $71b0: $ff
	rst  $38                                         ; $71b1: $ff
	ccf                                              ; $71b2: $3f
	sbc  a                                           ; $71b3: $9f
	pop  af                                          ; $71b4: $f1
	pop  af                                          ; $71b5: $f1
	ld   [de], a                                     ; $71b6: $12
	rra                                              ; $71b7: $1f
	rst  $38                                         ; $71b8: $ff
	or   $c3                                         ; $71b9: $f6 $c3
	db   $fc                                         ; $71bb: $fc
	xor  d                                           ; $71bc: $aa
	ld   a, a                                        ; $71bd: $7f
	rst  $38                                         ; $71be: $ff
	ld   hl, sp+$41                                  ; $71bf: $f8 $41
	ld   de, $cf11                                   ; $71c1: $11 $11 $cf
	rst  $38                                         ; $71c4: $ff
	ld   a, a                                        ; $71c5: $7f
	ld   a, [$e1f1]                                  ; $71c6: $fa $f1 $e1
	inc  d                                           ; $71c9: $14
	rra                                              ; $71ca: $1f
	rst  $38                                         ; $71cb: $ff
	di                                               ; $71cc: $f3
	push bc                                          ; $71cd: $c5
	rst  JumpTable                                         ; $71ce: $df
	sbc  e                                           ; $71cf: $9b
	ld   e, [hl]                                     ; $71d0: $5e
	rst  $38                                         ; $71d1: $ff
	ld   a, [$1161]                                  ; $71d2: $fa $61 $11
	ld   de, $df2f                                   ; $71d5: $11 $2f $df
	rst  $30                                         ; $71d8: $f7
	push af                                          ; $71d9: $f5
	ld   a, [$1256]                                  ; $71da: $fa $56 $12
	rra                                              ; $71dd: $1f
	cp   $f4                                         ; $71de: $fe $f4
	xor  d                                           ; $71e0: $aa
	cp   a                                           ; $71e1: $bf
	ld   l, e                                        ; $71e2: $6b
	ld   e, e                                        ; $71e3: $5b
	rst  $38                                         ; $71e4: $ff
	db   $fc                                         ; $71e5: $fc
	ld   h, c                                        ; $71e6: $61
	ld   de, $1f11                                   ; $71e7: $11 $11 $1f
	rst  $28                                         ; $71ea: $ef
	or   $fc                                         ; $71eb: $f6 $fc
	rst  $38                                         ; $71ed: $ff
	ld   e, $11                                      ; $71ee: $1e $11
	ld   hl, $ffff                                   ; $71f0: $21 $ff $ff
	ld   a, a                                        ; $71f3: $7f
	sbc  a                                           ; $71f4: $9f
	or   a                                           ; $71f5: $b7
	add  l                                           ; $71f6: $85
	rst  $38                                         ; $71f7: $ff
	rst  $38                                         ; $71f8: $ff
	ld   [hl], e                                     ; $71f9: $73
	ld   de, $1111                                   ; $71fa: $11 $11 $11
	ld   sp, hl                                      ; $71fd: $f9
	rst  $38                                         ; $71fe: $ff
	cp   a                                           ; $71ff: $bf
	ld   e, a                                        ; $7200: $5f
	add  [hl]                                        ; $7201: $86
	ld   [hl], c                                     ; $7202: $71
	ld   de, $ffbf                                   ; $7203: $11 $bf $ff
	xor  l                                           ; $7206: $ad
	cp   l                                           ; $7207: $bd
	rst  $30                                         ; $7208: $f7
	add  [hl]                                        ; $7209: $86
	cp   a                                           ; $720a: $bf
	rst  $38                                         ; $720b: $ff
	or   l                                           ; $720c: $b5
	ld   de, $1111                                   ; $720d: $11 $11 $11
	adc  $ff                                         ; $7210: $ce $ff
	sbc  a                                           ; $7212: $9f
	xor  a                                           ; $7213: $af
	pop  af                                          ; $7214: $f1
	pop  af                                          ; $7215: $f1
	ld   de, $cf1f                                   ; $7216: $11 $1f $cf
	ld   hl, sp-$05                                  ; $7219: $f8 $fb
	ei                                               ; $721b: $fb
	ld   h, a                                        ; $721c: $67
	ld   l, a                                        ; $721d: $6f
	rst  $38                                         ; $721e: $ff
	or   $31                                         ; $721f: $f6 $31
	ld   de, $1f11                                   ; $7221: $11 $11 $1f
	xor  a                                           ; $7224: $af
	or   $f3                                         ; $7225: $f6 $f3
	rst  $38                                         ; $7227: $ff
	ld   a, l                                        ; $7228: $7d
	ld   de, $fb16                                   ; $7229: $11 $16 $fb
	or   $bf                                         ; $722c: $f6 $bf
	rst  $38                                         ; $722e: $ff
	add  a                                           ; $722f: $87
	ld   a, [hl-]                                    ; $7230: $3a
	rst  $38                                         ; $7231: $ff
	ei                                               ; $7232: $fb
	ld   b, c                                        ; $7233: $41
	ld   de, $1111                                   ; $7234: $11 $11 $11
	ld   sp, hl                                      ; $7237: $f9
	rst  $38                                         ; $7238: $ff
	xor  a                                           ; $7239: $af
	ld   e, a                                        ; $723a: $5f
	cp   $91                                         ; $723b: $fe $91
	ld   de, $bfaf                                   ; $723d: $11 $af $bf
	ld   c, l                                        ; $7240: $4d
	rst  $38                                         ; $7241: $ff
	ld   sp, hl                                      ; $7242: $f9
	add  h                                           ; $7243: $84
	rst  JumpTable                                         ; $7244: $df
	rst  $38                                         ; $7245: $ff
	add  e                                           ; $7246: $83
	ld   de, $1111                                   ; $7247: $11 $11 $11
	rra                                              ; $724a: $1f
	rst  $28                                         ; $724b: $ef
	sbc  d                                           ; $724c: $9a
	cp   a                                           ; $724d: $bf
	rst  $38                                         ; $724e: $ff
	pop  de                                          ; $724f: $d1
	ld   de, $e61f                                   ; $7250: $11 $1f $e6
	ld   b, e                                        ; $7253: $43
	rst  $38                                         ; $7254: $ff
	rst  $38                                         ; $7255: $ff
	ld   b, h                                        ; $7256: $44
	adc  a                                           ; $7257: $8f
	rst  $38                                         ; $7258: $ff
	ldh  [c], a                                      ; $7259: $e2
	ld   de, $1141                                   ; $725a: $11 $41 $11
	ld   de, $f8ff                                   ; $725d: $11 $ff $f8
	inc  a                                           ; $7260: $3c
	rst  $38                                         ; $7261: $ff
	db   $fd                                         ; $7262: $fd
	ld   de, $fd23                                   ; $7263: $11 $23 $fd
	ld   de, $ff1f                                   ; $7266: $11 $1f $ff
	db   $f4                                         ; $7269: $f4
	ld   c, b                                        ; $726a: $48
	rst  $38                                         ; $726b: $ff
	ei                                               ; $726c: $fb
	ld   [bc], a                                     ; $726d: $02
	ld   d, a                                        ; $726e: $57
	ld   de, $1f11                                   ; $726f: $11 $11 $1f
	cp   $71                                         ; $7272: $fe $71
	rst  $28                                         ; $7274: $ef
	rst  $38                                         ; $7275: $ff
	sub  e                                           ; $7276: $93
	dec  d                                           ; $7277: $15
	cp   a                                           ; $7278: $bf
	and  c                                           ; $7279: $a1
	ld   de, $faff                                   ; $727a: $11 $ff $fa
	ld   d, $ef                                      ; $727d: $16 $ef
	rst  $38                                         ; $727f: $ff
	ld   h, c                                        ; $7280: $61
	ld   a, e                                        ; $7281: $7b
	and  c                                           ; $7282: $a1
	ld   de, $cf11                                   ; $7283: $11 $11 $cf
	ld   b, d                                        ; $7286: $42
	dec  de                                          ; $7287: $1b
	rst  $38                                         ; $7288: $ff
	ld   a, [$7f51]                                  ; $7289: $fa $51 $7f
	push bc                                          ; $728c: $c5
	ld   de, $ff4f                                   ; $728d: $11 $4f $ff
	ld   h, c                                        ; $7290: $61
	xor  a                                           ; $7291: $af
	rst  $38                                         ; $7292: $ff
	or   $6c                                         ; $7293: $f6 $6c
	jp   hl                                          ; $7295: $e9


	ld   de, $1111                                   ; $7296: $11 $11 $11
	ld   d, c                                        ; $7299: $51
	add  hl, de                                      ; $729a: $19
	ld   a, a                                        ; $729b: $7f
	rst  $38                                         ; $729c: $ff
	db   $fc                                         ; $729d: $fc
	ld   sp, hl                                      ; $729e: $f9
	ret  c                                           ; $729f: $d8

	ld   h, e                                        ; $72a0: $63
	ld   d, $5a                                      ; $72a1: $16 $5a
	sbc  d                                           ; $72a3: $9a
	sbc  d                                           ; $72a4: $9a
	rst  $38                                         ; $72a5: $ff
	rst  $38                                         ; $72a6: $ff
	cp   $cc                                         ; $72a7: $fe $cc
	and  [hl]                                        ; $72a9: $a6
	ld   de, $1111                                   ; $72aa: $11 $11 $11
	ld   d, c                                        ; $72ad: $51
	ld   d, d                                        ; $72ae: $52
	ld   c, a                                        ; $72af: $4f
	rst  $38                                         ; $72b0: $ff
	rst  $38                                         ; $72b1: $ff
	ei                                               ; $72b2: $fb
	db   $fd                                         ; $72b3: $fd
	db   $f4                                         ; $72b4: $f4
	inc  hl                                          ; $72b5: $23
	ld   a, d                                        ; $72b6: $7a
	adc  c                                           ; $72b7: $89
	ld   c, b                                        ; $72b8: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72b9: $cf
	rst  $38                                         ; $72ba: $ff
	jp   c, $a4cb                                    ; $72bb: $da $cb $a4

	ld   hl, $1111                                   ; $72be: $21 $11 $11
	ld   hl, $4721                                   ; $72c1: $21 $21 $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72c4: $cf
	xor  e                                           ; $72c5: $ab
	call $daff                                       ; $72c6: $cd $ff $da
	sbc  d                                           ; $72c9: $9a
	cp   e                                           ; $72ca: $bb

Call_0cd_72cb:
	xor  b                                           ; $72cb: $a8
	adc  b                                           ; $72cc: $88
	cp   e                                           ; $72cd: $bb
	cp   e                                           ; $72ce: $bb
	sbc  c                                           ; $72cf: $99
	sbc  c                                           ; $72d0: $99
	sub  a                                           ; $72d1: $97
	ld   [hl], a                                     ; $72d2: $77
	halt                                             ; $72d3: $76
	ld   d, l                                        ; $72d4: $55
	ld   b, h                                        ; $72d5: $44
	ld   [hl-], a                                    ; $72d6: $32
	ld   [hl-], a                                    ; $72d7: $32
	ld   b, h                                        ; $72d8: $44
	ld   b, l                                        ; $72d9: $45
	ld   d, a                                        ; $72da: $57
	adc  c                                           ; $72db: $89
	xor  c                                           ; $72dc: $a9
	xor  d                                           ; $72dd: $aa
	call z, $cbdd                                    ; $72de: $cc $dd $cb
	call c, $cbdc                                    ; $72e1: $dc $dc $cb
	cp   d                                           ; $72e4: $ba
	xor  d                                           ; $72e5: $aa
	adc  b                                           ; $72e6: $88
	ld   [hl], a                                     ; $72e7: $77
	ld   h, [hl]                                     ; $72e8: $66
	ld   d, l                                        ; $72e9: $55
	ld   b, h                                        ; $72ea: $44
	ld   [hl+], a                                    ; $72eb: $22
	ld   hl, $3422                                   ; $72ec: $21 $22 $34
	ld   b, [hl]                                     ; $72ef: $46
	ld   a, b                                        ; $72f0: $78
	sbc  c                                           ; $72f1: $99
	xor  e                                           ; $72f2: $ab
	cp   e                                           ; $72f3: $bb
	call z, $dccd                                    ; $72f4: $cc $cd $dc
	call $cbcc                                       ; $72f7: $cd $cc $cb
	cp   d                                           ; $72fa: $ba
	xor  b                                           ; $72fb: $a8
	adc  b                                           ; $72fc: $88
	ld   [hl], a                                     ; $72fd: $77
	ld   h, [hl]                                     ; $72fe: $66
	ld   d, l                                        ; $72ff: $55
	ld   b, e                                        ; $7300: $43
	ld   [hl-], a                                    ; $7301: $32
	ld   [hl+], a                                    ; $7302: $22
	inc  sp                                          ; $7303: $33
	inc  [hl]                                        ; $7304: $34
	ld   d, [hl]                                     ; $7305: $56
	ld   a, b                                        ; $7306: $78
	sbc  d                                           ; $7307: $9a
	xor  d                                           ; $7308: $aa
	cp   d                                           ; $7309: $ba
	cp   e                                           ; $730a: $bb
	cp   e                                           ; $730b: $bb
	set  1, h                                        ; $730c: $cb $cc
	res  7, e                                        ; $730e: $cb $bb
	cp   e                                           ; $7310: $bb
	xor  c                                           ; $7311: $a9
	adc  c                                           ; $7312: $89
	add  a                                           ; $7313: $87
	halt                                             ; $7314: $76
	ld   h, [hl]                                     ; $7315: $66
	ld   d, l                                        ; $7316: $55
	ld   b, h                                        ; $7317: $44
	ld   b, h                                        ; $7318: $44
	ld   b, h                                        ; $7319: $44
	ld   b, h                                        ; $731a: $44
	ld   d, [hl]                                     ; $731b: $56
	ld   h, a                                        ; $731c: $67
	ld   a, b                                        ; $731d: $78
	sbc  c                                           ; $731e: $99
	xor  c                                           ; $731f: $a9
	sbc  c                                           ; $7320: $99
	xor  d                                           ; $7321: $aa
	cp   d                                           ; $7322: $ba
	cp   e                                           ; $7323: $bb
	xor  e                                           ; $7324: $ab
	xor  e                                           ; $7325: $ab
	xor  d                                           ; $7326: $aa
	sbc  d                                           ; $7327: $9a
	xor  c                                           ; $7328: $a9
	adc  b                                           ; $7329: $88
	add  a                                           ; $732a: $87
	ld   [hl], a                                     ; $732b: $77
	ld   [hl], a                                     ; $732c: $77
	halt                                             ; $732d: $76
	ld   h, [hl]                                     ; $732e: $66
	ld   h, [hl]                                     ; $732f: $66
	ld   h, l                                        ; $7330: $65
	ld   d, l                                        ; $7331: $55
	ld   d, [hl]                                     ; $7332: $56
	ld   h, [hl]                                     ; $7333: $66
	ld   h, a                                        ; $7334: $67
	ld   a, b                                        ; $7335: $78
	sbc  b                                           ; $7336: $98
	sbc  c                                           ; $7337: $99
	sbc  c                                           ; $7338: $99
	xor  d                                           ; $7339: $aa
	xor  d                                           ; $733a: $aa
	xor  d                                           ; $733b: $aa
	sbc  d                                           ; $733c: $9a
	xor  c                                           ; $733d: $a9
	adc  b                                           ; $733e: $88
	adc  b                                           ; $733f: $88
	adc  b                                           ; $7340: $88
	adc  c                                           ; $7341: $89
	sbc  b                                           ; $7342: $98
	adc  b                                           ; $7343: $88
	ld   [hl], a                                     ; $7344: $77
	ld   [hl], a                                     ; $7345: $77
	ld   a, b                                        ; $7346: $78
	add  a                                           ; $7347: $87
	ld   [hl], a                                     ; $7348: $77
	ld   [hl], a                                     ; $7349: $77
	ld   [hl], a                                     ; $734a: $77
	ld   [hl], a                                     ; $734b: $77
	ld   [hl], a                                     ; $734c: $77
	ld   [hl], a                                     ; $734d: $77
	ld   [hl], a                                     ; $734e: $77
	ld   [hl], a                                     ; $734f: $77
	adc  b                                           ; $7350: $88
	sbc  c                                           ; $7351: $99
	sbc  b                                           ; $7352: $98
	sbc  c                                           ; $7353: $99
	sbc  c                                           ; $7354: $99
	adc  b                                           ; $7355: $88
	sbc  c                                           ; $7356: $99
	adc  b                                           ; $7357: $88
	adc  b                                           ; $7358: $88
	adc  c                                           ; $7359: $89
	sbc  c                                           ; $735a: $99
	sbc  c                                           ; $735b: $99
	adc  b                                           ; $735c: $88
	adc  b                                           ; $735d: $88
	sbc  b                                           ; $735e: $98
	adc  b                                           ; $735f: $88
	sbc  b                                           ; $7360: $98
	sbc  b                                           ; $7361: $98
	add  a                                           ; $7362: $87
	ld   [hl], a                                     ; $7363: $77
	ld   [hl], a                                     ; $7364: $77
	ld   [hl], a                                     ; $7365: $77
	ld   [hl], a                                     ; $7366: $77
	ld   [hl], a                                     ; $7367: $77
	adc  b                                           ; $7368: $88
	adc  b                                           ; $7369: $88
	add  a                                           ; $736a: $87
	ld   a, b                                        ; $736b: $78
	adc  b                                           ; $736c: $88
	adc  b                                           ; $736d: $88
	ld   [hl], a                                     ; $736e: $77
	ld   a, b                                        ; $736f: $78
	adc  b                                           ; $7370: $88
	adc  b                                           ; $7371: $88
	adc  b                                           ; $7372: $88
	sbc  c                                           ; $7373: $99
	adc  b                                           ; $7374: $88
	adc  b                                           ; $7375: $88
	adc  b                                           ; $7376: $88
	sbc  c                                           ; $7377: $99
	sbc  c                                           ; $7378: $99
	sbc  b                                           ; $7379: $98
	adc  b                                           ; $737a: $88
	ld   [hl], a                                     ; $737b: $77
	adc  b                                           ; $737c: $88
	adc  b                                           ; $737d: $88
	ld   [hl], a                                     ; $737e: $77
	adc  b                                           ; $737f: $88
	adc  b                                           ; $7380: $88
	adc  b                                           ; $7381: $88
	adc  b                                           ; $7382: $88
	adc  b                                           ; $7383: $88
	sbc  c                                           ; $7384: $99
	adc  b                                           ; $7385: $88
	add  a                                           ; $7386: $87
	ld   a, b                                        ; $7387: $78
	adc  b                                           ; $7388: $88
	adc  b                                           ; $7389: $88
	adc  b                                           ; $738a: $88
	adc  b                                           ; $738b: $88
	adc  c                                           ; $738c: $89
	sbc  c                                           ; $738d: $99
	sbc  b                                           ; $738e: $98
	adc  b                                           ; $738f: $88
	adc  b                                           ; $7390: $88
	add  a                                           ; $7391: $87
	ld   [hl], a                                     ; $7392: $77
	ld   a, b                                        ; $7393: $78
	adc  b                                           ; $7394: $88
	adc  b                                           ; $7395: $88
	adc  b                                           ; $7396: $88
	adc  b                                           ; $7397: $88
	adc  c                                           ; $7398: $89
	sbc  c                                           ; $7399: $99
	sbc  c                                           ; $739a: $99
	adc  b                                           ; $739b: $88
	adc  b                                           ; $739c: $88
	adc  b                                           ; $739d: $88
	adc  b                                           ; $739e: $88
	adc  b                                           ; $739f: $88
	adc  b                                           ; $73a0: $88
	adc  b                                           ; $73a1: $88
	adc  c                                           ; $73a2: $89
	sbc  c                                           ; $73a3: $99
	sbc  c                                           ; $73a4: $99
	sbc  b                                           ; $73a5: $98
	adc  b                                           ; $73a6: $88
	adc  b                                           ; $73a7: $88
	adc  b                                           ; $73a8: $88
	adc  b                                           ; $73a9: $88
	adc  b                                           ; $73aa: $88
	adc  b                                           ; $73ab: $88
	adc  b                                           ; $73ac: $88
	adc  b                                           ; $73ad: $88
	adc  b                                           ; $73ae: $88
	adc  b                                           ; $73af: $88
	adc  b                                           ; $73b0: $88
	adc  b                                           ; $73b1: $88
	adc  b                                           ; $73b2: $88
	adc  b                                           ; $73b3: $88
	adc  b                                           ; $73b4: $88
	adc  b                                           ; $73b5: $88
	adc  b                                           ; $73b6: $88
	adc  b                                           ; $73b7: $88
	adc  b                                           ; $73b8: $88
	adc  b                                           ; $73b9: $88
	adc  b                                           ; $73ba: $88
	adc  b                                           ; $73bb: $88
	adc  b                                           ; $73bc: $88
	adc  b                                           ; $73bd: $88
	adc  b                                           ; $73be: $88
	adc  b                                           ; $73bf: $88
	adc  b                                           ; $73c0: $88
	adc  b                                           ; $73c1: $88
	adc  b                                           ; $73c2: $88
	adc  b                                           ; $73c3: $88
	adc  b                                           ; $73c4: $88
	adc  b                                           ; $73c5: $88
	adc  b                                           ; $73c6: $88
	adc  b                                           ; $73c7: $88
	adc  b                                           ; $73c8: $88
	adc  b                                           ; $73c9: $88
	adc  b                                           ; $73ca: $88
	adc  b                                           ; $73cb: $88
	adc  b                                           ; $73cc: $88
	adc  b                                           ; $73cd: $88
	adc  b                                           ; $73ce: $88
	adc  b                                           ; $73cf: $88
	adc  b                                           ; $73d0: $88
	adc  b                                           ; $73d1: $88
	adc  b                                           ; $73d2: $88
	adc  b                                           ; $73d3: $88
	adc  b                                           ; $73d4: $88
	adc  b                                           ; $73d5: $88
	adc  b                                           ; $73d6: $88
	adc  b                                           ; $73d7: $88
	adc  b                                           ; $73d8: $88
	adc  b                                           ; $73d9: $88
	adc  b                                           ; $73da: $88
	adc  b                                           ; $73db: $88
	adc  b                                           ; $73dc: $88
	adc  b                                           ; $73dd: $88
	adc  b                                           ; $73de: $88
	adc  b                                           ; $73df: $88
	adc  b                                           ; $73e0: $88
	adc  b                                           ; $73e1: $88
	adc  b                                           ; $73e2: $88
	adc  b                                           ; $73e3: $88
	adc  b                                           ; $73e4: $88
	adc  b                                           ; $73e5: $88
	adc  b                                           ; $73e6: $88
	adc  b                                           ; $73e7: $88
	adc  b                                           ; $73e8: $88
	adc  b                                           ; $73e9: $88
	adc  b                                           ; $73ea: $88
	adc  b                                           ; $73eb: $88
	adc  b                                           ; $73ec: $88
	adc  b                                           ; $73ed: $88
	adc  b                                           ; $73ee: $88
	adc  b                                           ; $73ef: $88
	adc  b                                           ; $73f0: $88
	adc  b                                           ; $73f1: $88
	adc  b                                           ; $73f2: $88
	adc  b                                           ; $73f3: $88
	adc  b                                           ; $73f4: $88
	adc  b                                           ; $73f5: $88
	adc  b                                           ; $73f6: $88
	adc  b                                           ; $73f7: $88
	adc  b                                           ; $73f8: $88
	adc  b                                           ; $73f9: $88
	adc  b                                           ; $73fa: $88
	adc  b                                           ; $73fb: $88
	adc  b                                           ; $73fc: $88
	adc  b                                           ; $73fd: $88
	adc  b                                           ; $73fe: $88
	adc  b                                           ; $73ff: $88
	adc  b                                           ; $7400: $88
	adc  b                                           ; $7401: $88
	adc  b                                           ; $7402: $88
	adc  b                                           ; $7403: $88
	adc  b                                           ; $7404: $88
	adc  b                                           ; $7405: $88
	adc  b                                           ; $7406: $88
	adc  b                                           ; $7407: $88
	adc  b                                           ; $7408: $88
	adc  b                                           ; $7409: $88
	adc  b                                           ; $740a: $88
	adc  b                                           ; $740b: $88
	adc  b                                           ; $740c: $88
	adc  b                                           ; $740d: $88
	adc  b                                           ; $740e: $88
	adc  b                                           ; $740f: $88
	adc  b                                           ; $7410: $88
	adc  b                                           ; $7411: $88
	adc  b                                           ; $7412: $88
	adc  b                                           ; $7413: $88
	adc  b                                           ; $7414: $88
	adc  b                                           ; $7415: $88
	adc  b                                           ; $7416: $88
	adc  b                                           ; $7417: $88
	adc  b                                           ; $7418: $88
	adc  b                                           ; $7419: $88
	adc  b                                           ; $741a: $88
	adc  b                                           ; $741b: $88
	adc  b                                           ; $741c: $88
	adc  b                                           ; $741d: $88
	adc  b                                           ; $741e: $88
	adc  b                                           ; $741f: $88
	adc  b                                           ; $7420: $88
	adc  b                                           ; $7421: $88
	adc  b                                           ; $7422: $88
	adc  b                                           ; $7423: $88
	adc  b                                           ; $7424: $88
	adc  b                                           ; $7425: $88
	adc  b                                           ; $7426: $88
	adc  b                                           ; $7427: $88
	adc  b                                           ; $7428: $88
	adc  b                                           ; $7429: $88
	adc  b                                           ; $742a: $88
	adc  b                                           ; $742b: $88
	adc  b                                           ; $742c: $88
	adc  b                                           ; $742d: $88
	adc  b                                           ; $742e: $88
	adc  c                                           ; $742f: $89
	adc  b                                           ; $7430: $88
	adc  b                                           ; $7431: $88
	adc  b                                           ; $7432: $88
	adc  b                                           ; $7433: $88
	adc  b                                           ; $7434: $88
	adc  b                                           ; $7435: $88
	adc  b                                           ; $7436: $88
	adc  b                                           ; $7437: $88
	adc  b                                           ; $7438: $88
	adc  b                                           ; $7439: $88
	adc  b                                           ; $743a: $88
	adc  b                                           ; $743b: $88
	adc  b                                           ; $743c: $88
	sbc  b                                           ; $743d: $98
	adc  b                                           ; $743e: $88
	adc  b                                           ; $743f: $88
	adc  b                                           ; $7440: $88
	adc  b                                           ; $7441: $88
	adc  b                                           ; $7442: $88
	adc  b                                           ; $7443: $88
	adc  b                                           ; $7444: $88
	add  a                                           ; $7445: $87
	add  a                                           ; $7446: $87
	adc  b                                           ; $7447: $88
	adc  b                                           ; $7448: $88
	adc  b                                           ; $7449: $88
	adc  b                                           ; $744a: $88
	adc  b                                           ; $744b: $88
	adc  b                                           ; $744c: $88
	adc  b                                           ; $744d: $88
	adc  b                                           ; $744e: $88
	adc  b                                           ; $744f: $88
	ld   a, b                                        ; $7450: $78
	add  a                                           ; $7451: $87
	sub  a                                           ; $7452: $97
	adc  b                                           ; $7453: $88
	ld   a, c                                        ; $7454: $79
	adc  b                                           ; $7455: $88
	adc  b                                           ; $7456: $88
	adc  b                                           ; $7457: $88
	adc  b                                           ; $7458: $88
	sbc  b                                           ; $7459: $98
	adc  b                                           ; $745a: $88
	adc  b                                           ; $745b: $88
	adc  b                                           ; $745c: $88
	adc  b                                           ; $745d: $88
	adc  b                                           ; $745e: $88
	adc  b                                           ; $745f: $88
	adc  b                                           ; $7460: $88
	adc  b                                           ; $7461: $88
	adc  b                                           ; $7462: $88
	adc  b                                           ; $7463: $88
	add  a                                           ; $7464: $87
	adc  b                                           ; $7465: $88
	adc  b                                           ; $7466: $88
	adc  b                                           ; $7467: $88
	adc  b                                           ; $7468: $88
	add  a                                           ; $7469: $87
	sbc  b                                           ; $746a: $98
	sub  a                                           ; $746b: $97
	ld   a, c                                        ; $746c: $79
	ld   a, c                                        ; $746d: $79
	sub  a                                           ; $746e: $97
	sbc  b                                           ; $746f: $98
	adc  b                                           ; $7470: $88
	ld   a, c                                        ; $7471: $79
	adc  b                                           ; $7472: $88
	sub  a                                           ; $7473: $97
	adc  b                                           ; $7474: $88
	ld   a, b                                        ; $7475: $78
	sub  [hl]                                        ; $7476: $96
	xor  b                                           ; $7477: $a8
	ld   a, c                                        ; $7478: $79
	ld   a, c                                        ; $7479: $79
	sbc  b                                           ; $747a: $98
	ld   a, c                                        ; $747b: $79
	add  a                                           ; $747c: $87
	add  a                                           ; $747d: $87
	adc  b                                           ; $747e: $88
	adc  b                                           ; $747f: $88
	adc  b                                           ; $7480: $88
	sub  a                                           ; $7481: $97
	sub  a                                           ; $7482: $97
	adc  b                                           ; $7483: $88
	adc  c                                           ; $7484: $89
	ld   a, b                                        ; $7485: $78
	ld   a, c                                        ; $7486: $79
	ld   a, b                                        ; $7487: $78
	sub  a                                           ; $7488: $97
	adc  b                                           ; $7489: $88
	ld   a, b                                        ; $748a: $78
	sub  a                                           ; $748b: $97
	ld   a, c                                        ; $748c: $79
	add  a                                           ; $748d: $87
	sbc  b                                           ; $748e: $98
	adc  d                                           ; $748f: $8a
	adc  b                                           ; $7490: $88
	ld   a, c                                        ; $7491: $79
	ld   a, b                                        ; $7492: $78
	ld   [hl], a                                     ; $7493: $77
	and  [hl]                                        ; $7494: $a6
	sub  a                                           ; $7495: $97
	sbc  c                                           ; $7496: $99
	ld   a, c                                        ; $7497: $79
	ld   a, d                                        ; $7498: $7a
	ld   e, b                                        ; $7499: $58
	sub  [hl]                                        ; $749a: $96
	and  [hl]                                        ; $749b: $a6
	and  [hl]                                        ; $749c: $a6
	sbc  c                                           ; $749d: $99
	ld   [hl], a                                     ; $749e: $77
	sbc  c                                           ; $749f: $99
	ld   l, c                                        ; $74a0: $69
	ld   a, b                                        ; $74a1: $78
	and  a                                           ; $74a2: $a7
	ld   a, c                                        ; $74a3: $79
	add  a                                           ; $74a4: $87
	and  a                                           ; $74a5: $a7
	add  [hl]                                        ; $74a6: $86
	sbc  b                                           ; $74a7: $98
	ld   a, c                                        ; $74a8: $79

Jump_0cd_74a9:
	ld   l, d                                        ; $74a9: $6a
	add  a                                           ; $74aa: $87
	ld   l, c                                        ; $74ab: $69
	add  [hl]                                        ; $74ac: $86
	and  l                                           ; $74ad: $a5
	xor  b                                           ; $74ae: $a8
	ld   l, b                                        ; $74af: $68
	adc  b                                           ; $74b0: $88
	ld   a, d                                        ; $74b1: $7a
	ld   a, b                                        ; $74b2: $78
	add  a                                           ; $74b3: $87
	add  a                                           ; $74b4: $87
	ld   a, c                                        ; $74b5: $79
	sub  l                                           ; $74b6: $95
	xor  b                                           ; $74b7: $a8
	ld   a, c                                        ; $74b8: $79
	ld   e, e                                        ; $74b9: $5b
	ld   [hl], a                                     ; $74ba: $77
	or   l                                           ; $74bb: $b5
	adc  c                                           ; $74bc: $89
	sub  [hl]                                        ; $74bd: $96
	adc  d                                           ; $74be: $8a
	ld   [hl], a                                     ; $74bf: $77
	sbc  c                                           ; $74c0: $99
	ld   l, b                                        ; $74c1: $68
	and  [hl]                                        ; $74c2: $a6
	adc  b                                           ; $74c3: $88
	ld   a, d                                        ; $74c4: $7a
	adc  b                                           ; $74c5: $88
	and  [hl]                                        ; $74c6: $a6
	adc  h                                           ; $74c7: $8c
	ld   d, a                                        ; $74c8: $57
	ld   a, d                                        ; $74c9: $7a
	sub  h                                           ; $74ca: $94
	adc  d                                           ; $74cb: $8a
	halt                                             ; $74cc: $76
	xor  b                                           ; $74cd: $a8
	add  a                                           ; $74ce: $87
	ld   a, e                                        ; $74cf: $7b
	ld   l, b                                        ; $74d0: $68
	sub  a                                           ; $74d1: $97
	adc  c                                           ; $74d2: $89
	ld   a, b                                        ; $74d3: $78
	ld   a, b                                        ; $74d4: $78
	sub  a                                           ; $74d5: $97
	ld   [hl], a                                     ; $74d6: $77
	sub  [hl]                                        ; $74d7: $96
	ld   a, c                                        ; $74d8: $79
	ld   a, c                                        ; $74d9: $79
	ld   h, a                                        ; $74da: $67
	sbc  b                                           ; $74db: $98
	halt                                             ; $74dc: $76
	adc  b                                           ; $74dd: $88
	sub  a                                           ; $74de: $97
	ld   l, b                                        ; $74df: $68
	sbc  c                                           ; $74e0: $99
	halt                                             ; $74e1: $76
	sbc  d                                           ; $74e2: $9a
	ld   [hl], h                                     ; $74e3: $74
	ld   a, c                                        ; $74e4: $79
	ld   [hl], l                                     ; $74e5: $75
	ld   l, d                                        ; $74e6: $6a
	sub  l                                           ; $74e7: $95
	ld   l, c                                        ; $74e8: $69
	xor  b                                           ; $74e9: $a8
	ld   a, c                                        ; $74ea: $79
	xor  b                                           ; $74eb: $a8
	adc  b                                           ; $74ec: $88
	sbc  b                                           ; $74ed: $98
	ld   [hl], a                                     ; $74ee: $77
	ld   h, [hl]                                     ; $74ef: $66
	sbc  e                                           ; $74f0: $9b
	ld   h, [hl]                                     ; $74f1: $66
	sbc  d                                           ; $74f2: $9a
	xor  b                                           ; $74f3: $a8
	add  a                                           ; $74f4: $87
	adc  c                                           ; $74f5: $89
	cp   d                                           ; $74f6: $ba
	adc  c                                           ; $74f7: $89
	adc  c                                           ; $74f8: $89
	ld   a, c                                        ; $74f9: $79
	sbc  b                                           ; $74fa: $98
	adc  c                                           ; $74fb: $89
	adc  b                                           ; $74fc: $88
	adc  b                                           ; $74fd: $88
	sbc  b                                           ; $74fe: $98
	sbc  b                                           ; $74ff: $98
	adc  c                                           ; $7500: $89
	sbc  b                                           ; $7501: $98
	adc  b                                           ; $7502: $88
	sbc  c                                           ; $7503: $99
	ld   a, c                                        ; $7504: $79
	sbc  b                                           ; $7505: $98
	ld   a, b                                        ; $7506: $78
	sbc  b                                           ; $7507: $98
	adc  b                                           ; $7508: $88
	sbc  b                                           ; $7509: $98
	adc  b                                           ; $750a: $88
	adc  c                                           ; $750b: $89
	adc  b                                           ; $750c: $88
	adc  c                                           ; $750d: $89
	adc  c                                           ; $750e: $89
	adc  c                                           ; $750f: $89
	adc  b                                           ; $7510: $88
	adc  b                                           ; $7511: $88
	adc  b                                           ; $7512: $88
	adc  b                                           ; $7513: $88
	adc  b                                           ; $7514: $88
	adc  b                                           ; $7515: $88
	adc  b                                           ; $7516: $88
	adc  b                                           ; $7517: $88
	adc  b                                           ; $7518: $88
	adc  b                                           ; $7519: $88
	adc  b                                           ; $751a: $88
	adc  b                                           ; $751b: $88
	adc  b                                           ; $751c: $88
	adc  b                                           ; $751d: $88
	adc  b                                           ; $751e: $88
	adc  b                                           ; $751f: $88
	adc  b                                           ; $7520: $88
	adc  b                                           ; $7521: $88
	adc  b                                           ; $7522: $88
	adc  b                                           ; $7523: $88
	adc  b                                           ; $7524: $88
	adc  b                                           ; $7525: $88
	adc  b                                           ; $7526: $88
	adc  b                                           ; $7527: $88
	adc  b                                           ; $7528: $88
	adc  b                                           ; $7529: $88
	adc  b                                           ; $752a: $88
	adc  b                                           ; $752b: $88
	adc  b                                           ; $752c: $88
	adc  b                                           ; $752d: $88
	adc  b                                           ; $752e: $88
	adc  b                                           ; $752f: $88
	adc  b                                           ; $7530: $88
	adc  b                                           ; $7531: $88
	adc  b                                           ; $7532: $88
	adc  b                                           ; $7533: $88
	adc  b                                           ; $7534: $88
	adc  b                                           ; $7535: $88
	adc  b                                           ; $7536: $88
	adc  b                                           ; $7537: $88
	adc  b                                           ; $7538: $88
	adc  b                                           ; $7539: $88
	adc  b                                           ; $753a: $88
	adc  b                                           ; $753b: $88
	adc  b                                           ; $753c: $88
	adc  b                                           ; $753d: $88
	adc  b                                           ; $753e: $88
	adc  b                                           ; $753f: $88
	adc  b                                           ; $7540: $88
	adc  b                                           ; $7541: $88
	adc  b                                           ; $7542: $88
	adc  b                                           ; $7543: $88
	adc  b                                           ; $7544: $88
	adc  b                                           ; $7545: $88
	adc  b                                           ; $7546: $88
	adc  b                                           ; $7547: $88
	adc  b                                           ; $7548: $88
	adc  b                                           ; $7549: $88
	adc  b                                           ; $754a: $88
	adc  b                                           ; $754b: $88
	adc  b                                           ; $754c: $88
	adc  b                                           ; $754d: $88
	adc  b                                           ; $754e: $88
	adc  b                                           ; $754f: $88
	adc  b                                           ; $7550: $88
	adc  b                                           ; $7551: $88
	adc  b                                           ; $7552: $88
	adc  b                                           ; $7553: $88
	adc  b                                           ; $7554: $88
	adc  b                                           ; $7555: $88
	adc  b                                           ; $7556: $88
	adc  b                                           ; $7557: $88
	adc  b                                           ; $7558: $88
	adc  b                                           ; $7559: $88
	adc  b                                           ; $755a: $88
	adc  b                                           ; $755b: $88
	adc  b                                           ; $755c: $88
	adc  b                                           ; $755d: $88
	adc  b                                           ; $755e: $88
	adc  b                                           ; $755f: $88
	adc  b                                           ; $7560: $88
	adc  b                                           ; $7561: $88
	adc  b                                           ; $7562: $88
	adc  b                                           ; $7563: $88
	adc  b                                           ; $7564: $88
	adc  b                                           ; $7565: $88
	adc  b                                           ; $7566: $88
	adc  b                                           ; $7567: $88
	adc  b                                           ; $7568: $88
	adc  b                                           ; $7569: $88
	adc  b                                           ; $756a: $88
	adc  b                                           ; $756b: $88
	adc  b                                           ; $756c: $88
	adc  b                                           ; $756d: $88
	adc  b                                           ; $756e: $88
	adc  b                                           ; $756f: $88
	adc  b                                           ; $7570: $88
	adc  b                                           ; $7571: $88
	adc  b                                           ; $7572: $88
	adc  b                                           ; $7573: $88
	adc  b                                           ; $7574: $88
	adc  b                                           ; $7575: $88
	adc  b                                           ; $7576: $88
	adc  b                                           ; $7577: $88
	adc  b                                           ; $7578: $88

jr_0cd_7579:
	adc  b                                           ; $7579: $88
	adc  b                                           ; $757a: $88
	adc  b                                           ; $757b: $88
	adc  b                                           ; $757c: $88
	adc  b                                           ; $757d: $88
	adc  b                                           ; $757e: $88
	adc  b                                           ; $757f: $88
	adc  b                                           ; $7580: $88
	adc  b                                           ; $7581: $88
	adc  b                                           ; $7582: $88
	adc  b                                           ; $7583: $88
	adc  b                                           ; $7584: $88
	adc  b                                           ; $7585: $88
	adc  b                                           ; $7586: $88
	adc  b                                           ; $7587: $88
	adc  b                                           ; $7588: $88
	adc  b                                           ; $7589: $88
	adc  b                                           ; $758a: $88
	adc  b                                           ; $758b: $88
	adc  b                                           ; $758c: $88
	adc  b                                           ; $758d: $88
	adc  b                                           ; $758e: $88
	adc  b                                           ; $758f: $88
	adc  b                                           ; $7590: $88
	adc  b                                           ; $7591: $88
	adc  b                                           ; $7592: $88
	adc  b                                           ; $7593: $88
	adc  b                                           ; $7594: $88
	adc  b                                           ; $7595: $88
	adc  b                                           ; $7596: $88
	adc  b                                           ; $7597: $88
	adc  b                                           ; $7598: $88
	adc  b                                           ; $7599: $88
	adc  b                                           ; $759a: $88
	adc  b                                           ; $759b: $88
	adc  b                                           ; $759c: $88
	adc  b                                           ; $759d: $88
	adc  b                                           ; $759e: $88
	adc  b                                           ; $759f: $88
	adc  b                                           ; $75a0: $88
	adc  b                                           ; $75a1: $88
	adc  b                                           ; $75a2: $88
	adc  b                                           ; $75a3: $88
	adc  b                                           ; $75a4: $88
	adc  b                                           ; $75a5: $88
	adc  b                                           ; $75a6: $88
	adc  b                                           ; $75a7: $88
	ld   a, c                                        ; $75a8: $79
	sub  a                                           ; $75a9: $97
	adc  c                                           ; $75aa: $89
	ld   [hl], a                                     ; $75ab: $77
	adc  b                                           ; $75ac: $88
	adc  b                                           ; $75ad: $88
	adc  b                                           ; $75ae: $88
	adc  c                                           ; $75af: $89
	ld   a, b                                        ; $75b0: $78
	and  a                                           ; $75b1: $a7
	ld   l, d                                        ; $75b2: $6a
	and  [hl]                                        ; $75b3: $a6
	ld   a, c                                        ; $75b4: $79
	add  [hl]                                        ; $75b5: $86
	sbc  e                                           ; $75b6: $9b
	add  [hl]                                        ; $75b7: $86
	sbc  c                                           ; $75b8: $99
	ld   h, a                                        ; $75b9: $67
	add  a                                           ; $75ba: $87
	sbc  b                                           ; $75bb: $98
	ld   l, c                                        ; $75bc: $69
	or   a                                           ; $75bd: $b7
	ld   e, b                                        ; $75be: $58
	add  [hl]                                        ; $75bf: $86
	ld   e, c                                        ; $75c0: $59
	or   a                                           ; $75c1: $b7
	ld   a, d                                        ; $75c2: $7a
	add  [hl]                                        ; $75c3: $86
	ld   a, d                                        ; $75c4: $7a
	sbc  d                                           ; $75c5: $9a
	cp   b                                           ; $75c6: $b8
	ld   l, b                                        ; $75c7: $68
	add  l                                           ; $75c8: $85
	ld   c, c                                        ; $75c9: $49
	add  h                                           ; $75ca: $84
	sbc  d                                           ; $75cb: $9a
	dec  h                                           ; $75cc: $25
	call z, $b756                                    ; $75cd: $cc $56 $b7
	jr   c, jr_0cd_7579                              ; $75d0: $38 $a7

	cp   l                                           ; $75d2: $bd
	ret  z                                           ; $75d3: $c8

	sbc  e                                           ; $75d4: $9b
	call z, Call_0cd_4885                            ; $75d5: $cc $85 $48
	ld   [hl], a                                     ; $75d8: $77
	ld   [hl], l                                     ; $75d9: $75
	ld   d, l                                        ; $75da: $55
	add  l                                           ; $75db: $85
	ld   h, a                                        ; $75dc: $67
	ld   [hl], a                                     ; $75dd: $77
	adc  l                                           ; $75de: $8d
	sub  a                                           ; $75df: $97
	sbc  e                                           ; $75e0: $9b
	and  a                                           ; $75e1: $a7
	cp   e                                           ; $75e2: $bb
	ld   h, l                                        ; $75e3: $65
	and  a                                           ; $75e4: $a7
	ld   b, a                                        ; $75e5: $47
	sub  a                                           ; $75e6: $97
	ld   c, c                                        ; $75e7: $49
	push bc                                          ; $75e8: $c5
	ld   a, h                                        ; $75e9: $7c
	sub  a                                           ; $75ea: $97
	cp   d                                           ; $75eb: $ba
	add  a                                           ; $75ec: $87
	add  a                                           ; $75ed: $87
	ld   d, a                                        ; $75ee: $57
	ld   d, h                                        ; $75ef: $54
	ld   d, [hl]                                     ; $75f0: $56
	ld   d, h                                        ; $75f1: $54
	add  a                                           ; $75f2: $87
	ld   h, a                                        ; $75f3: $67
	xor  d                                           ; $75f4: $aa
	sbc  e                                           ; $75f5: $9b
	cp   e                                           ; $75f6: $bb
	xor  h                                           ; $75f7: $ac
	ret                                              ; $75f8: $c9


	adc  b                                           ; $75f9: $88
	sbc  c                                           ; $75fa: $99
	xor  c                                           ; $75fb: $a9
	dec  [hl]                                        ; $75fc: $35
	ld   d, e                                        ; $75fd: $53
	ld   h, a                                        ; $75fe: $67
	ld   sp, $3269                                   ; $75ff: $31 $69 $32
	xor  h                                           ; $7602: $ac
	ld   d, a                                        ; $7603: $57
	xor  $ab                                         ; $7604: $ee $ab
	rst  $28                                         ; $7606: $ef
	call z, $b6cc                                    ; $7607: $cc $cc $b6
	ld   a, e                                        ; $760a: $7b
	add  h                                           ; $760b: $84
	ld   b, h                                        ; $760c: $44
	ld   de, $113b                                   ; $760d: $11 $3b $11
	cp   e                                           ; $7610: $bb
	ld   hl, $57ff                                   ; $7611: $21 $ff $57
	rst  $38                                         ; $7614: $ff
	db   $db                                         ; $7615: $db
	rst  $28                                         ; $7616: $ef
	ld   a, [$f6be]                                  ; $7617: $fa $be $f6
	ld   e, e                                        ; $761a: $5b
	and  c                                           ; $761b: $a1
	ld   de, $9111                                   ; $761c: $11 $11 $91
	dec  de                                          ; $761f: $1b
	and  c                                           ; $7620: $a1
	rra                                              ; $7621: $1f
	pop  af                                          ; $7622: $f1
	sbc  a                                           ; $7623: $9f
	rst  $38                                         ; $7624: $ff
	rst  $38                                         ; $7625: $ff
	cp   $7e                                         ; $7626: $fe $7e
	call nz, $3111                                   ; $7628: $c4 $11 $31
	ld   de, $e11b                                   ; $762b: $11 $1b $e1
	rra                                              ; $762e: $1f
	pop  af                                          ; $762f: $f1
	rra                                              ; $7630: $1f
	pop  af                                          ; $7631: $f1
	ld   a, a                                        ; $7632: $7f
	ld   a, [$f51f]                                  ; $7633: $fa $1f $f5
	rla                                              ; $7636: $17
	sub  $11                                         ; $7637: $d6 $11
	add  [hl]                                        ; $7639: $86
	ld   de, $f11f                                   ; $763a: $11 $1f $f1
	rra                                              ; $763d: $1f
	pop  af                                          ; $763e: $f1
	rra                                              ; $763f: $1f
	pop  af                                          ; $7640: $f1
	ld   e, a                                        ; $7641: $5f
	db   $fc                                         ; $7642: $fc
	rra                                              ; $7643: $1f
	ld   sp, hl                                      ; $7644: $f9
	ld   de, $11ab                                   ; $7645: $11 $ab $11
	xor  a                                           ; $7648: $af
	ld   de, $f11b                                   ; $7649: $11 $1b $f1
	rra                                              ; $764c: $1f
	db   $f4                                         ; $764d: $f4
	rra                                              ; $764e: $1f
	rst  $30                                         ; $764f: $f7
	rra                                              ; $7650: $1f
	rst  $38                                         ; $7651: $ff
	ld   d, [hl]                                     ; $7652: $56
	rst  JumpTable                                         ; $7653: $df
	ld   [hl], c                                     ; $7654: $71
	rra                                              ; $7655: $1f
	pop  hl                                          ; $7656: $e1
	rra                                              ; $7657: $1f
	pop  de                                          ; $7658: $d1
	ld   de, $11fc                                   ; $7659: $11 $fc $11
	rst  $38                                         ; $765c: $ff
	ld   de, $1cff                                   ; $765d: $11 $ff $1c
	rst  $38                                         ; $7660: $ff
	push af                                          ; $7661: $f5
	ld   c, l                                        ; $7662: $4d
	or   $13                                         ; $7663: $f6 $13
	ld   sp, hl                                      ; $7665: $f9
	dec  d                                           ; $7666: $15
	ld   sp, hl                                      ; $7667: $f9
	ld   de, $d11f                                   ; $7668: $11 $1f $d1
	rra                                              ; $766b: $1f
	pop  af                                          ; $766c: $f1
	rra                                              ; $766d: $1f
	db   $f4                                         ; $766e: $f4
	xor  a                                           ; $766f: $af
	rst  $38                                         ; $7670: $ff
	ld   b, c                                        ; $7671: $41
	xor  a                                           ; $7672: $af
	ld   h, c                                        ; $7673: $61
	rra                                              ; $7674: $1f
	pop  de                                          ; $7675: $d1
	ld   e, a                                        ; $7676: $5f
	or   c                                           ; $7677: $b1
	ld   de, $11ff                                   ; $7678: $11 $ff $11
	rst  $38                                         ; $767b: $ff
	ld   de, $c9ff                                   ; $767c: $11 $ff $c9
	rst  JumpTable                                         ; $767f: $df
	rst  $30                                         ; $7680: $f7
	inc  d                                           ; $7681: $14
	ld   a, [rAUD1LEN]                                  ; $7682: $fa $11 $ff
	ld   b, h                                        ; $7685: $44
	rst  $38                                         ; $7686: $ff
	ld   de, $f118                                   ; $7687: $11 $18 $f1
	dec  de                                          ; $768a: $1b
	db   $fd                                         ; $768b: $fd
	rra                                              ; $768c: $1f
	rst  $38                                         ; $768d: $ff
	db   $ec                                         ; $768e: $ec
	rst  $38                                         ; $768f: $ff
	di                                               ; $7690: $f3
	ld   a, [de]                                     ; $7691: $1a
	pop  af                                          ; $7692: $f1
	rla                                              ; $7693: $17
	db   $fc                                         ; $7694: $fc
	ld   l, h                                        ; $7695: $6c
	ld   hl, sp+$11                                  ; $7696: $f8 $11
	rra                                              ; $7698: $1f
	add  c                                           ; $7699: $81
	rra                                              ; $769a: $1f
	pop  af                                          ; $769b: $f1
	ld   c, a                                        ; $769c: $4f
	rst  $38                                         ; $769d: $ff
	ei                                               ; $769e: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $769f: $cf
	pop  af                                          ; $76a0: $f1
	dec  e                                           ; $76a1: $1d
	or   c                                           ; $76a2: $b1
	rra                                              ; $76a3: $1f
	db   $fd                                         ; $76a4: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76a5: $cf
	push bc                                          ; $76a6: $c5
	ld   de, $111f                                   ; $76a7: $11 $1f $11
	rra                                              ; $76aa: $1f
	pop  af                                          ; $76ab: $f1
	rst  $28                                         ; $76ac: $ef
	rst  $38                                         ; $76ad: $ff
	ld   a, [$b19f]                                  ; $76ae: $fa $9f $b1
	dec  e                                           ; $76b1: $1d
	add  c                                           ; $76b2: $81
	ccf                                              ; $76b3: $3f
	cp   $fe                                         ; $76b4: $fe $fe
	ld   [hl], l                                     ; $76b6: $75
	ld   de, $113f                                   ; $76b7: $11 $3f $11
	ld   e, a                                        ; $76ba: $5f
	pop  af                                          ; $76bb: $f1
	rst  $38                                         ; $76bc: $ff
	rst  $38                                         ; $76bd: $ff
	rst  $30                                         ; $76be: $f7
	ld   e, a                                        ; $76bf: $5f
	and  c                                           ; $76c0: $a1
	inc  e                                           ; $76c1: $1c
	ld   h, c                                        ; $76c2: $61
	ld   l, a                                        ; $76c3: $6f
	rst  $38                                         ; $76c4: $ff
	rst  $38                                         ; $76c5: $ff
	ld   a, d                                        ; $76c6: $7a
	ld   de, $111f                                   ; $76c7: $11 $1f $11
	rra                                              ; $76ca: $1f
	di                                               ; $76cb: $f3
	rst  $38                                         ; $76cc: $ff
	rst  $28                                         ; $76cd: $ef
	ld   hl, sp+$2f                                  ; $76ce: $f8 $2f
	pop  af                                          ; $76d0: $f1
	ld   a, [de]                                     ; $76d1: $1a
	ld   h, c                                        ; $76d2: $61
	ld   l, [hl]                                     ; $76d3: $6e
	cp   a                                           ; $76d4: $bf
	rst  $38                                         ; $76d5: $ff
	inc  [hl]                                        ; $76d6: $34
	ld   de, $111f                                   ; $76d7: $11 $1f $11
	rra                                              ; $76da: $1f
	di                                               ; $76db: $f3
	rst  $38                                         ; $76dc: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76dd: $cf
	ei                                               ; $76de: $fb
	ld   e, $f1                                      ; $76df: $1e $f1
	ld   d, $51                                      ; $76e1: $16 $51
	ld   a, l                                        ; $76e3: $7d
	adc  a                                           ; $76e4: $8f
	rst  $38                                         ; $76e5: $ff
	inc  [hl]                                        ; $76e6: $34
	ld   sp, $811a                                   ; $76e7: $31 $1a $81
	dec  de                                          ; $76ea: $1b
	ld   a, [$cfff]                                  ; $76eb: $fa $ff $cf
	rst  $38                                         ; $76ee: $ff
	rla                                              ; $76ef: $17
	di                                               ; $76f0: $f3
	inc  de                                          ; $76f1: $13
	ld   d, c                                        ; $76f2: $51
	ld   c, [hl]                                     ; $76f3: $4e
	xor  d                                           ; $76f4: $aa
	rst  $38                                         ; $76f5: $ff
	push bc                                          ; $76f6: $c5
	ld   d, c                                        ; $76f7: $51
	ld   de, $11f1                                   ; $76f8: $11 $f1 $11
	cp   a                                           ; $76fb: $bf
	xor  a                                           ; $76fc: $af
	ei                                               ; $76fd: $fb
	rst  $38                                         ; $76fe: $ff
	ldh  [c], a                                      ; $76ff: $e2
	adc  $11                                         ; $7700: $ce $11
	ld   b, c                                        ; $7702: $41
	add  hl, de                                      ; $7703: $19
	rst  $10                                         ; $7704: $d7
	cp   a                                           ; $7705: $bf
	db   $fc                                         ; $7706: $fc
	ld   [hl], e                                     ; $7707: $73
	ld   de, $115e                                   ; $7708: $11 $5e $11
	dec  de                                          ; $770b: $1b
	xor  $fa                                         ; $770c: $ee $fa
	rst  JumpTable                                         ; $770e: $df
	db   $fc                                         ; $770f: $fc
	ld   e, l                                        ; $7710: $5d
	or   [hl]                                        ; $7711: $b6
	ld   [hl], h                                     ; $7712: $74
	ld   de, $5aab                                   ; $7713: $11 $ab $5a
	rst  $38                                         ; $7716: $ff
	ret                                              ; $7717: $c9


	ld   de, $d11b                                   ; $7718: $11 $1b $d1
	ld   de, $ff9e                                   ; $771b: $11 $9e $ff
	ld   e, d                                        ; $771e: $5a
	rst  $38                                         ; $771f: $ff
	ld   hl, sp-$57                                  ; $7720: $f8 $a9
	xor  l                                           ; $7722: $ad
	sub  c                                           ; $7723: $91
	dec  d                                           ; $7724: $15
	cp   d                                           ; $7725: $ba
	xor  d                                           ; $7726: $aa
	cp   e                                           ; $7727: $bb
	and  $11                                         ; $7728: $e6 $11
	rra                                              ; $772a: $1f
	ld   b, c                                        ; $772b: $41
	ld   de, $fb6d                                   ; $772c: $11 $6d $fb
	dec  sp                                          ; $772f: $3b
	rst  $38                                         ; $7730: $ff
	rst  $38                                         ; $7731: $ff
	sub  l                                           ; $7732: $95
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7733: $cf
	and  c                                           ; $7734: $a1
	ld   de, $d87c                                   ; $7735: $11 $7c $d8
	dec  [hl]                                        ; $7738: $35
	ld   [hl], e                                     ; $7739: $73
	inc  de                                          ; $773a: $13
	and  h                                           ; $773b: $a4
	inc  hl                                          ; $773c: $23
	inc  sp                                          ; $773d: $33
	ld   l, a                                        ; $773e: $6f
	rst  $10                                         ; $773f: $d7
	xor  [hl]                                        ; $7740: $ae
	rst  $38                                         ; $7741: $ff
	cp   $78                                         ; $7742: $fe $78
	jp   c, $3374                                    ; $7744: $da $74 $33

	ld   a, e                                        ; $7747: $7b
	cp   b                                           ; $7748: $b8
	ld   h, a                                        ; $7749: $67
	halt                                             ; $774a: $76
	ld   [hl+], a                                    ; $774b: $22
	adc  b                                           ; $774c: $88
	ld   h, e                                        ; $774d: $63
	ld   [de], a                                     ; $774e: $12
	add  hl, hl                                      ; $774f: $29
	ret  z                                           ; $7750: $c8

	adc  b                                           ; $7751: $88
	adc  $ff                                         ; $7752: $ce $ff
	and  a                                           ; $7754: $a7
	sbc  e                                           ; $7755: $9b
	sbc  c                                           ; $7756: $99
	ld   h, l                                        ; $7757: $65
	ld   l, c                                        ; $7758: $69
	cp   e                                           ; $7759: $bb
	sbc  c                                           ; $775a: $99
	sbc  b                                           ; $775b: $98
	sbc  b                                           ; $775c: $98
	ld   a, b                                        ; $775d: $78
	ld   [hl], l                                     ; $775e: $75
	ld   [hl-], a                                    ; $775f: $32
	inc  sp                                          ; $7760: $33
	ld   d, a                                        ; $7761: $57
	halt                                             ; $7762: $76
	ld   a, c                                        ; $7763: $79
	sbc  c                                           ; $7764: $99
	xor  c                                           ; $7765: $a9
	add  a                                           ; $7766: $87
	adc  c                                           ; $7767: $89
	sbc  c                                           ; $7768: $99
	sbc  c                                           ; $7769: $99
	xor  e                                           ; $776a: $ab
	db   $db                                         ; $776b: $db
	res  7, e                                        ; $776c: $cb $bb
	xor  c                                           ; $776e: $a9
	ld   [hl], a                                     ; $776f: $77
	ld   [hl], l                                     ; $7770: $75
	ld   d, l                                        ; $7771: $55
	ld   b, e                                        ; $7772: $43
	ld   b, [hl]                                     ; $7773: $46
	ld   h, h                                        ; $7774: $64
	ld   b, [hl]                                     ; $7775: $46
	ld   h, [hl]                                     ; $7776: $66
	ld   h, a                                        ; $7777: $67
	ld   [hl], a                                     ; $7778: $77
	adc  c                                           ; $7779: $89
	xor  e                                           ; $777a: $ab
	cp   e                                           ; $777b: $bb
	cp   h                                           ; $777c: $bc
	call z, $bbcc                                    ; $777d: $cc $cc $bb
	xor  d                                           ; $7780: $aa
	xor  d                                           ; $7781: $aa
	sub  a                                           ; $7782: $97
	ld   [hl], a                                     ; $7783: $77
	ld   h, l                                        ; $7784: $65
	ld   b, e                                        ; $7785: $43
	inc  sp                                          ; $7786: $33
	inc  sp                                          ; $7787: $33
	ld   b, h                                        ; $7788: $44
	ld   d, l                                        ; $7789: $55
	ld   l, b                                        ; $778a: $68
	sbc  c                                           ; $778b: $99
	adc  d                                           ; $778c: $8a
	sbc  d                                           ; $778d: $9a
	xor  d                                           ; $778e: $aa
	xor  e                                           ; $778f: $ab
	cp   e                                           ; $7790: $bb
	cp   h                                           ; $7791: $bc
	cp   h                                           ; $7792: $bc
	call z, $a9cb                                    ; $7793: $cc $cb $a9
	add  a                                           ; $7796: $87
	ld   h, l                                        ; $7797: $65

Call_0cd_7798:
	ld   d, h                                        ; $7798: $54
	ld   [hl-], a                                    ; $7799: $32
	inc  [hl]                                        ; $779a: $34
	ld   b, h                                        ; $779b: $44
	ld   d, [hl]                                     ; $779c: $56
	ld   h, [hl]                                     ; $779d: $66
	ld   [hl], a                                     ; $779e: $77
	adc  b                                           ; $779f: $88
	add  a                                           ; $77a0: $87
	adc  c                                           ; $77a1: $89
	xor  c                                           ; $77a2: $a9
	cp   d                                           ; $77a3: $ba
	cp   d                                           ; $77a4: $ba
	cp   h                                           ; $77a5: $bc
	call z, $aabb                                    ; $77a6: $cc $bb $aa
	xor  c                                           ; $77a9: $a9
	adc  b                                           ; $77aa: $88
	ld   [hl], a                                     ; $77ab: $77
	halt                                             ; $77ac: $76
	ld   d, h                                        ; $77ad: $54
	ld   b, h                                        ; $77ae: $44
	inc  [hl]                                        ; $77af: $34
	ld   d, l                                        ; $77b0: $55
	ld   d, l                                        ; $77b1: $55
	ld   h, [hl]                                     ; $77b2: $66
	ld   a, b                                        ; $77b3: $78
	sbc  b                                           ; $77b4: $98
	sbc  c                                           ; $77b5: $99
	xor  d                                           ; $77b6: $aa
	xor  d                                           ; $77b7: $aa
	xor  d                                           ; $77b8: $aa
	xor  d                                           ; $77b9: $aa
	xor  e                                           ; $77ba: $ab
	xor  e                                           ; $77bb: $ab
	cp   d                                           ; $77bc: $ba
	cp   e                                           ; $77bd: $bb
	cp   c                                           ; $77be: $b9
	sbc  c                                           ; $77bf: $99
	ld   [hl], a                                     ; $77c0: $77
	ld   h, [hl]                                     ; $77c1: $66
	ld   d, h                                        ; $77c2: $54
	ld   b, h                                        ; $77c3: $44
	ld   b, h                                        ; $77c4: $44
	ld   d, l                                        ; $77c5: $55
	ld   d, [hl]                                     ; $77c6: $56
	ld   h, a                                        ; $77c7: $67
	ld   [hl], a                                     ; $77c8: $77
	adc  b                                           ; $77c9: $88
	sbc  c                                           ; $77ca: $99
	adc  c                                           ; $77cb: $89
	sbc  d                                           ; $77cc: $9a
	xor  d                                           ; $77cd: $aa
	xor  d                                           ; $77ce: $aa
	cp   e                                           ; $77cf: $bb
	cp   e                                           ; $77d0: $bb
	xor  c                                           ; $77d1: $a9
	sbc  d                                           ; $77d2: $9a
	sbc  c                                           ; $77d3: $99
	xor  c                                           ; $77d4: $a9
	sbc  c                                           ; $77d5: $99
	add  a                                           ; $77d6: $87
	ld   [hl], a                                     ; $77d7: $77
	ld   h, l                                        ; $77d8: $65
	ld   d, l                                        ; $77d9: $55
	ld   d, l                                        ; $77da: $55
	ld   d, l                                        ; $77db: $55
	ld   d, [hl]                                     ; $77dc: $56
	ld   h, a                                        ; $77dd: $67
	ld   a, b                                        ; $77de: $78
	adc  c                                           ; $77df: $89
	sbc  b                                           ; $77e0: $98
	sbc  c                                           ; $77e1: $99
	sbc  d                                           ; $77e2: $9a
	sbc  d                                           ; $77e3: $9a
	xor  d                                           ; $77e4: $aa
	sbc  d                                           ; $77e5: $9a
	xor  c                                           ; $77e6: $a9
	xor  c                                           ; $77e7: $a9
	xor  c                                           ; $77e8: $a9
	adc  b                                           ; $77e9: $88
	adc  c                                           ; $77ea: $89
	add  a                                           ; $77eb: $87
	ld   [hl], a                                     ; $77ec: $77
	ld   [hl], a                                     ; $77ed: $77
	ld   [hl], a                                     ; $77ee: $77
	ld   [hl], a                                     ; $77ef: $77
	ld   [hl], a                                     ; $77f0: $77
	halt                                             ; $77f1: $76
	ld   h, [hl]                                     ; $77f2: $66
	ld   h, [hl]                                     ; $77f3: $66
	ld   h, [hl]                                     ; $77f4: $66
	ld   h, a                                        ; $77f5: $67
	ld   a, b                                        ; $77f6: $78
	adc  b                                           ; $77f7: $88
	sbc  c                                           ; $77f8: $99
	xor  d                                           ; $77f9: $aa
	sbc  d                                           ; $77fa: $9a
	sbc  d                                           ; $77fb: $9a
	sbc  c                                           ; $77fc: $99
	sbc  c                                           ; $77fd: $99
	sbc  b                                           ; $77fe: $98
	sbc  c                                           ; $77ff: $99
	adc  b                                           ; $7800: $88
	adc  b                                           ; $7801: $88
	ld   [hl], a                                     ; $7802: $77
	ld   [hl], a                                     ; $7803: $77
	ld   [hl], a                                     ; $7804: $77
	ld   [hl], a                                     ; $7805: $77
	ld   [hl], a                                     ; $7806: $77
	adc  b                                           ; $7807: $88
	adc  b                                           ; $7808: $88
	sbc  c                                           ; $7809: $99
	sbc  c                                           ; $780a: $99
	sbc  c                                           ; $780b: $99
	sbc  c                                           ; $780c: $99
	sbc  c                                           ; $780d: $99
	adc  c                                           ; $780e: $89
	adc  b                                           ; $780f: $88
	adc  c                                           ; $7810: $89
	adc  b                                           ; $7811: $88
	sbc  c                                           ; $7812: $99
	adc  b                                           ; $7813: $88
	adc  b                                           ; $7814: $88
	add  a                                           ; $7815: $87
	ld   [hl], a                                     ; $7816: $77
	ld   [hl], a                                     ; $7817: $77
	add  a                                           ; $7818: $87
	ld   [hl], a                                     ; $7819: $77
	ld   [hl], a                                     ; $781a: $77
	add  a                                           ; $781b: $87
	ld   [hl], a                                     ; $781c: $77
	ld   [hl], a                                     ; $781d: $77
	ld   [hl], a                                     ; $781e: $77
	ld   [hl], a                                     ; $781f: $77
	ld   a, b                                        ; $7820: $78
	adc  b                                           ; $7821: $88
	sbc  c                                           ; $7822: $99
	sbc  c                                           ; $7823: $99
	adc  b                                           ; $7824: $88
	adc  b                                           ; $7825: $88
	sbc  c                                           ; $7826: $99
	sbc  b                                           ; $7827: $98
	adc  b                                           ; $7828: $88
	adc  b                                           ; $7829: $88
	adc  b                                           ; $782a: $88
	adc  b                                           ; $782b: $88
	sbc  b                                           ; $782c: $98
	adc  b                                           ; $782d: $88
	ld   [hl], a                                     ; $782e: $77
	ld   [hl], a                                     ; $782f: $77
	ld   a, b                                        ; $7830: $78
	adc  b                                           ; $7831: $88
	adc  b                                           ; $7832: $88
	adc  b                                           ; $7833: $88
	adc  b                                           ; $7834: $88
	adc  b                                           ; $7835: $88
	adc  b                                           ; $7836: $88
	adc  b                                           ; $7837: $88
	adc  c                                           ; $7838: $89
	sbc  c                                           ; $7839: $99
	sbc  b                                           ; $783a: $98
	adc  b                                           ; $783b: $88
	adc  c                                           ; $783c: $89
	sbc  b                                           ; $783d: $98
	adc  b                                           ; $783e: $88
	adc  b                                           ; $783f: $88
	adc  b                                           ; $7840: $88
	adc  b                                           ; $7841: $88
	adc  b                                           ; $7842: $88
	adc  b                                           ; $7843: $88
	adc  b                                           ; $7844: $88
	add  a                                           ; $7845: $87
	ld   [hl], a                                     ; $7846: $77
	ld   [hl], a                                     ; $7847: $77
	ld   a, b                                        ; $7848: $78
	adc  b                                           ; $7849: $88
	adc  b                                           ; $784a: $88
	adc  b                                           ; $784b: $88
	sbc  c                                           ; $784c: $99
	adc  b                                           ; $784d: $88
	adc  b                                           ; $784e: $88
	adc  b                                           ; $784f: $88
	adc  b                                           ; $7850: $88
	adc  b                                           ; $7851: $88
	adc  b                                           ; $7852: $88
	sbc  c                                           ; $7853: $99
	sbc  b                                           ; $7854: $98
	adc  b                                           ; $7855: $88
	adc  b                                           ; $7856: $88
	adc  b                                           ; $7857: $88
	adc  b                                           ; $7858: $88
	adc  b                                           ; $7859: $88
	adc  b                                           ; $785a: $88
	adc  b                                           ; $785b: $88
	adc  b                                           ; $785c: $88
	adc  b                                           ; $785d: $88
	adc  b                                           ; $785e: $88
	adc  b                                           ; $785f: $88
	adc  b                                           ; $7860: $88
	adc  b                                           ; $7861: $88
	adc  b                                           ; $7862: $88
	adc  c                                           ; $7863: $89
	sbc  c                                           ; $7864: $99
	adc  b                                           ; $7865: $88
	adc  b                                           ; $7866: $88
	adc  b                                           ; $7867: $88
	adc  b                                           ; $7868: $88
	adc  b                                           ; $7869: $88
	adc  b                                           ; $786a: $88
	adc  b                                           ; $786b: $88
	adc  b                                           ; $786c: $88
	adc  b                                           ; $786d: $88
	adc  b                                           ; $786e: $88
	adc  b                                           ; $786f: $88
	ld   a, b                                        ; $7870: $78
	adc  b                                           ; $7871: $88
	adc  b                                           ; $7872: $88
	adc  b                                           ; $7873: $88
	adc  b                                           ; $7874: $88
	adc  b                                           ; $7875: $88
	adc  b                                           ; $7876: $88
	adc  b                                           ; $7877: $88
	adc  b                                           ; $7878: $88
	adc  c                                           ; $7879: $89
	sbc  b                                           ; $787a: $98
	adc  b                                           ; $787b: $88
	adc  b                                           ; $787c: $88
	adc  b                                           ; $787d: $88
	adc  b                                           ; $787e: $88
	adc  b                                           ; $787f: $88
	adc  b                                           ; $7880: $88
	adc  b                                           ; $7881: $88
	adc  b                                           ; $7882: $88
	adc  b                                           ; $7883: $88
	adc  b                                           ; $7884: $88
	adc  b                                           ; $7885: $88
	adc  b                                           ; $7886: $88
	adc  b                                           ; $7887: $88
	adc  b                                           ; $7888: $88
	adc  b                                           ; $7889: $88
	adc  b                                           ; $788a: $88
	adc  b                                           ; $788b: $88
	adc  b                                           ; $788c: $88
	adc  b                                           ; $788d: $88
	adc  b                                           ; $788e: $88
	adc  b                                           ; $788f: $88
	adc  b                                           ; $7890: $88
	adc  b                                           ; $7891: $88
	adc  b                                           ; $7892: $88
	adc  b                                           ; $7893: $88
	adc  b                                           ; $7894: $88
	adc  b                                           ; $7895: $88
	adc  b                                           ; $7896: $88
	adc  b                                           ; $7897: $88
	adc  b                                           ; $7898: $88
	adc  b                                           ; $7899: $88
	adc  b                                           ; $789a: $88
	adc  b                                           ; $789b: $88
	adc  b                                           ; $789c: $88
	adc  b                                           ; $789d: $88
	adc  b                                           ; $789e: $88
	adc  b                                           ; $789f: $88
	adc  b                                           ; $78a0: $88
	adc  b                                           ; $78a1: $88
	adc  b                                           ; $78a2: $88
	adc  b                                           ; $78a3: $88
	adc  b                                           ; $78a4: $88
	adc  b                                           ; $78a5: $88
	adc  b                                           ; $78a6: $88
	adc  b                                           ; $78a7: $88
	adc  b                                           ; $78a8: $88
	adc  b                                           ; $78a9: $88
	adc  b                                           ; $78aa: $88
	adc  b                                           ; $78ab: $88
	adc  b                                           ; $78ac: $88
	adc  b                                           ; $78ad: $88
	adc  b                                           ; $78ae: $88
	adc  b                                           ; $78af: $88
	adc  b                                           ; $78b0: $88
	adc  b                                           ; $78b1: $88
	adc  b                                           ; $78b2: $88
	adc  b                                           ; $78b3: $88
	adc  b                                           ; $78b4: $88
	adc  b                                           ; $78b5: $88
	adc  b                                           ; $78b6: $88
	adc  b                                           ; $78b7: $88

Call_0cd_78b8:
	adc  b                                           ; $78b8: $88
	adc  b                                           ; $78b9: $88
	adc  b                                           ; $78ba: $88
	adc  b                                           ; $78bb: $88
	adc  b                                           ; $78bc: $88
	adc  b                                           ; $78bd: $88
	adc  b                                           ; $78be: $88
	adc  b                                           ; $78bf: $88
	adc  b                                           ; $78c0: $88
	adc  b                                           ; $78c1: $88
	adc  b                                           ; $78c2: $88
	adc  b                                           ; $78c3: $88
	adc  b                                           ; $78c4: $88
	adc  b                                           ; $78c5: $88
	adc  b                                           ; $78c6: $88
	adc  b                                           ; $78c7: $88
	adc  b                                           ; $78c8: $88
	adc  b                                           ; $78c9: $88
	adc  b                                           ; $78ca: $88
	adc  b                                           ; $78cb: $88
	adc  b                                           ; $78cc: $88
	adc  b                                           ; $78cd: $88
	adc  b                                           ; $78ce: $88
	adc  b                                           ; $78cf: $88
	adc  b                                           ; $78d0: $88
	adc  b                                           ; $78d1: $88
	adc  b                                           ; $78d2: $88
	adc  b                                           ; $78d3: $88
	adc  b                                           ; $78d4: $88
	adc  b                                           ; $78d5: $88
	adc  b                                           ; $78d6: $88
	adc  b                                           ; $78d7: $88
	adc  b                                           ; $78d8: $88
	adc  b                                           ; $78d9: $88
	adc  b                                           ; $78da: $88
	adc  b                                           ; $78db: $88
	adc  b                                           ; $78dc: $88
	adc  b                                           ; $78dd: $88
	adc  b                                           ; $78de: $88
	adc  b                                           ; $78df: $88
	adc  b                                           ; $78e0: $88
	adc  b                                           ; $78e1: $88
	adc  b                                           ; $78e2: $88
	adc  b                                           ; $78e3: $88
	adc  b                                           ; $78e4: $88
	adc  b                                           ; $78e5: $88
	adc  b                                           ; $78e6: $88
	adc  b                                           ; $78e7: $88
	adc  b                                           ; $78e8: $88
	adc  b                                           ; $78e9: $88
	adc  b                                           ; $78ea: $88
	adc  b                                           ; $78eb: $88
	adc  b                                           ; $78ec: $88
	adc  b                                           ; $78ed: $88
	adc  b                                           ; $78ee: $88
	adc  b                                           ; $78ef: $88
	adc  b                                           ; $78f0: $88
	adc  b                                           ; $78f1: $88
	adc  b                                           ; $78f2: $88
	adc  b                                           ; $78f3: $88
	adc  b                                           ; $78f4: $88
	adc  b                                           ; $78f5: $88
	adc  b                                           ; $78f6: $88
	adc  b                                           ; $78f7: $88
	sbc  c                                           ; $78f8: $99
	ld   a, b                                        ; $78f9: $78
	adc  b                                           ; $78fa: $88
	adc  c                                           ; $78fb: $89
	sbc  c                                           ; $78fc: $99
	sub  a                                           ; $78fd: $97
	ld   a, b                                        ; $78fe: $78
	sbc  b                                           ; $78ff: $98
	ld   [hl], a                                     ; $7900: $77
	ld   [hl], a                                     ; $7901: $77
	ld   a, b                                        ; $7902: $78
	cp   c                                           ; $7903: $b9
	ld   a, c                                        ; $7904: $79
	ld   h, a                                        ; $7905: $67
	sbc  c                                           ; $7906: $99
	sub  a                                           ; $7907: $97
	ld   a, b                                        ; $7908: $78
	xor  c                                           ; $7909: $a9
	adc  c                                           ; $790a: $89
	add  a                                           ; $790b: $87
	adc  b                                           ; $790c: $88
	adc  b                                           ; $790d: $88
	ld   a, b                                        ; $790e: $78
	ld   a, b                                        ; $790f: $78
	sbc  c                                           ; $7910: $99
	xor  d                                           ; $7911: $aa
	adc  b                                           ; $7912: $88
	sbc  b                                           ; $7913: $98
	adc  b                                           ; $7914: $88
	sub  a                                           ; $7915: $97
	ld   d, l                                        ; $7916: $55
	ld   b, h                                        ; $7917: $44
	ld   b, [hl]                                     ; $7918: $46
	ld   h, [hl]                                     ; $7919: $66
	ld   [hl], a                                     ; $791a: $77
	ld   [hl], a                                     ; $791b: $77
	ld   a, b                                        ; $791c: $78
	sbc  c                                           ; $791d: $99
	cp   c                                           ; $791e: $b9
	sbc  b                                           ; $791f: $98
	sbc  d                                           ; $7920: $9a
	xor  d                                           ; $7921: $aa
	xor  d                                           ; $7922: $aa
	xor  d                                           ; $7923: $aa
	sbc  d                                           ; $7924: $9a
	xor  d                                           ; $7925: $aa
	xor  d                                           ; $7926: $aa
	xor  c                                           ; $7927: $a9
	add  a                                           ; $7928: $87
	ld   b, c                                        ; $7929: $41
	ld   de, $3711                                   ; $792a: $11 $11 $37
	sbc  c                                           ; $792d: $99
	sbc  b                                           ; $792e: $98
	sbc  d                                           ; $792f: $9a
	adc  $ec                                         ; $7930: $ce $ec
	and  a                                           ; $7932: $a7
	ld   b, h                                        ; $7933: $44
	ld   l, b                                        ; $7934: $68
	sbc  d                                           ; $7935: $9a
	xor  c                                           ; $7936: $a9
	adc  d                                           ; $7937: $8a
	xor  l                                           ; $7938: $ad
	rst  $28                                         ; $7939: $ef
	call c, Call_0cd_5397                            ; $793a: $dc $97 $53
	ld   de, $1111                                   ; $793d: $11 $11 $11
	dec  sp                                          ; $7940: $3b
	rst  JumpTable                                         ; $7941: $df
	xor  $fe                                         ; $7942: $ee $fe
	rst  $38                                         ; $7944: $ff
	ei                                               ; $7945: $fb
	ld   [hl], e                                     ; $7946: $73
	ld   de, $6914                                   ; $7947: $11 $14 $69
	cp   d                                           ; $794a: $ba
	xor  h                                           ; $794b: $ac
	rst  $38                                         ; $794c: $ff
	rst  $38                                         ; $794d: $ff
	db   $fc                                         ; $794e: $fc
	sub  l                                           ; $794f: $95
	ld   hl, $1111                                   ; $7950: $21 $11 $11
	ld   de, $ff18                                   ; $7953: $11 $18 $ff
	rst  $38                                         ; $7956: $ff
	rst  $38                                         ; $7957: $ff
	rst  $38                                         ; $7958: $ff
	rst  $38                                         ; $7959: $ff
	add  h                                           ; $795a: $84
	ld   de, $3711                                   ; $795b: $11 $11 $37
	cp   l                                           ; $795e: $bd
	xor  $ff                                         ; $795f: $ee $ff
	rst  $38                                         ; $7961: $ff
	rst  $38                                         ; $7962: $ff
	ret  z                                           ; $7963: $c8

	ld   sp, $1111                                   ; $7964: $31 $11 $11
	ld   de, $5f11                                   ; $7967: $11 $11 $5f
	rst  $38                                         ; $796a: $ff
	rst  $38                                         ; $796b: $ff
	rst  $38                                         ; $796c: $ff
	rst  $38                                         ; $796d: $ff
	ld   [$1141], a                                  ; $796e: $ea $41 $11
	ld   de, $ff6b                                   ; $7971: $11 $6b $ff
	rst  $38                                         ; $7974: $ff
	rst  $38                                         ; $7975: $ff
	rst  $38                                         ; $7976: $ff
	rst  $38                                         ; $7977: $ff
	and  l                                           ; $7978: $a5
	ld   de, $1111                                   ; $7979: $11 $11 $11
	ld   de, $af11                                   ; $797c: $11 $11 $af
	rst  $38                                         ; $797f: $ff
	rst  $38                                         ; $7980: $ff
	cp   $ee                                         ; $7981: $fe $ee
	reti                                             ; $7983: $d9


	ld   sp, $1311                                   ; $7984: $31 $11 $13
	sbc  a                                           ; $7987: $9f
	rst  $38                                         ; $7988: $ff
	rst  $38                                         ; $7989: $ff
	rst  $38                                         ; $798a: $ff
	rst  $38                                         ; $798b: $ff
	ld   a, [$1173]                                  ; $798c: $fa $73 $11
	ld   de, $1111                                   ; $798f: $11 $11 $11
	ld   d, $ef                                      ; $7992: $16 $ef
	rst  $38                                         ; $7994: $ff
	rst  $38                                         ; $7995: $ff
	cp   $ed                                         ; $7996: $fe $ed
	sub  h                                           ; $7998: $94
	ld   de, $2811                                   ; $7999: $11 $11 $28
	rst  JumpTable                                         ; $799c: $df
	rst  $38                                         ; $799d: $ff
	rst  $38                                         ; $799e: $ff
	rst  $38                                         ; $799f: $ff
	rst  $38                                         ; $79a0: $ff
	or   a                                           ; $79a1: $b7
	ld   b, d                                        ; $79a2: $42
	ld   de, $1111                                   ; $79a3: $11 $11 $11
	ld   de, $ff17                                   ; $79a6: $11 $17 $ff
	rst  $38                                         ; $79a9: $ff
	rst  $38                                         ; $79aa: $ff
	rst  $28                                         ; $79ab: $ef
	db   $ed                                         ; $79ac: $ed
	add  l                                           ; $79ad: $85
	ld   de, $5811                                   ; $79ae: $11 $11 $58
	rst  $28                                         ; $79b1: $ef
	rst  $38                                         ; $79b2: $ff
	rst  $38                                         ; $79b3: $ff
	rst  $38                                         ; $79b4: $ff
	db   $fd                                         ; $79b5: $fd
	sub  a                                           ; $79b6: $97
	ld   d, e                                        ; $79b7: $53
	ld   [hl+], a                                    ; $79b8: $22
	ld   de, $1111                                   ; $79b9: $11 $11 $11
	ld   de, $ff9f                                   ; $79bc: $11 $9f $ff
	rst  $38                                         ; $79bf: $ff
	db   $fc                                         ; $79c0: $fc
	call Call_0cd_61d8                               ; $79c1: $cd $d8 $61
	ld   de, $af13                                   ; $79c4: $11 $13 $af
	rst  $38                                         ; $79c7: $ff
	rst  $38                                         ; $79c8: $ff
	res  5, e                                        ; $79c9: $cb $ab
	cp   d                                           ; $79cb: $ba
	sub  l                                           ; $79cc: $95
	ld   sp, $2121                                   ; $79cd: $31 $21 $21
	ld   de, $1111                                   ; $79d0: $11 $11 $11
	sbc  a                                           ; $79d3: $9f
	rst  $38                                         ; $79d4: $ff
	rst  $38                                         ; $79d5: $ff
	cp   $ee                                         ; $79d6: $fe $ee
	cp   d                                           ; $79d8: $ba
	ld   [hl], d                                     ; $79d9: $72
	ld   de, $cf35                                   ; $79da: $11 $35 $cf
	rst  $38                                         ; $79dd: $ff
	cp   $aa                                         ; $79de: $fe $aa
	sbc  e                                           ; $79e0: $9b
	sbc  e                                           ; $79e1: $9b
	add  [hl]                                        ; $79e2: $86
	inc  sp                                          ; $79e3: $33
	ld   hl, $1111                                   ; $79e4: $21 $11 $11
	ld   de, $bf11                                   ; $79e7: $11 $11 $bf
	rst  $38                                         ; $79ea: $ff
	rst  $38                                         ; $79eb: $ff
	rst  $38                                         ; $79ec: $ff
	rst  $28                                         ; $79ed: $ef
	xor  e                                           ; $79ee: $ab
	ld   [hl], e                                     ; $79ef: $73
	ld   de, $ae24                                   ; $79f0: $11 $24 $ae
	rst  $38                                         ; $79f3: $ff
	db   $fd                                         ; $79f4: $fd
	cp   c                                           ; $79f5: $b9
	xor  d                                           ; $79f6: $aa
	xor  d                                           ; $79f7: $aa
	add  a                                           ; $79f8: $87
	inc  sp                                          ; $79f9: $33
	ld   de, $1101                                   ; $79fa: $11 $01 $11
	ld   de, $8b11                                   ; $79fd: $11 $11 $8b
	rst  $38                                         ; $7a00: $ff
	xor  $ee                                         ; $7a01: $ee $ee
	rst  JumpTable                                         ; $7a03: $df
	rst  $28                                         ; $7a04: $ef
	bit  6, [hl]                                     ; $7a05: $cb $76
	ld   h, [hl]                                     ; $7a07: $66
	ld   a, b                                        ; $7a08: $78
	sbc  c                                           ; $7a09: $99
	xor  e                                           ; $7a0a: $ab
	cp   h                                           ; $7a0b: $bc
	call c, $87aa                                    ; $7a0c: $dc $aa $87
	ld   d, l                                        ; $7a0f: $55
	ld   b, e                                        ; $7a10: $43
	ld   de, $1111                                   ; $7a11: $11 $11 $11
	inc  de                                          ; $7a14: $13
	adc  l                                           ; $7a15: $8d
	rst  $38                                         ; $7a16: $ff
	rst  $38                                         ; $7a17: $ff
	call c, $ddde                                    ; $7a18: $dc $de $dd
	xor  b                                           ; $7a1b: $a8
	ld   d, l                                        ; $7a1c: $55
	ld   d, a                                        ; $7a1d: $57
	sbc  h                                           ; $7a1e: $9c
	call c, $aabb                                    ; $7a1f: $dc $bb $aa
	res  7, c                                        ; $7a22: $cb $b9
	sub  a                                           ; $7a24: $97
	ld   d, l                                        ; $7a25: $55
	ld   b, h                                        ; $7a26: $44
	inc  sp                                          ; $7a27: $33
	ld   de, $1111                                   ; $7a28: $11 $11 $11
	ld   h, $9c                                      ; $7a2b: $26 $9c
	db   $dd                                         ; $7a2d: $dd
	call z, $eecc                                    ; $7a2e: $cc $cc $ee
	db   $fd                                         ; $7a31: $fd
	cp   c                                           ; $7a32: $b9
	ld   h, [hl]                                     ; $7a33: $66
	ld   a, c                                        ; $7a34: $79
	sbc  c                                           ; $7a35: $99
	sbc  c                                           ; $7a36: $99
	adc  c                                           ; $7a37: $89
	xor  e                                           ; $7a38: $ab
	cp   e                                           ; $7a39: $bb
	xor  c                                           ; $7a3a: $a9
	adc  b                                           ; $7a3b: $88
	ld   [hl], a                                     ; $7a3c: $77
	halt                                             ; $7a3d: $76
	ld   d, h                                        ; $7a3e: $54
	ld   [hl-], a                                    ; $7a3f: $32
	ld   hl, $1311                                   ; $7a40: $21 $11 $13
	ld   e, b                                        ; $7a43: $58
	sbc  e                                           ; $7a44: $9b
	xor  e                                           ; $7a45: $ab
	cp   h                                           ; $7a46: $bc
	sbc  $ed                                         ; $7a47: $de $ed
	cp   d                                           ; $7a49: $ba
	sbc  b                                           ; $7a4a: $98
	adc  b                                           ; $7a4b: $88
	adc  c                                           ; $7a4c: $89
	sbc  b                                           ; $7a4d: $98
	ld   a, b                                        ; $7a4e: $78
	adc  c                                           ; $7a4f: $89
	xor  e                                           ; $7a50: $ab
	sbc  c                                           ; $7a51: $99
	sbc  c                                           ; $7a52: $99
	xor  d                                           ; $7a53: $aa
	xor  b                                           ; $7a54: $a8
	sbc  b                                           ; $7a55: $98
	halt                                             ; $7a56: $76
	ld   d, l                                        ; $7a57: $55
	ld   d, h                                        ; $7a58: $54
	inc  sp                                          ; $7a59: $33
	inc  hl                                          ; $7a5a: $23
	inc  [hl]                                        ; $7a5b: $34
	ld   h, a                                        ; $7a5c: $67
	adc  b                                           ; $7a5d: $88
	adc  b                                           ; $7a5e: $88
	sbc  d                                           ; $7a5f: $9a
	cp   h                                           ; $7a60: $bc
	res  7, d                                        ; $7a61: $cb $ba
	sbc  c                                           ; $7a63: $99
	sbc  d                                           ; $7a64: $9a
	sbc  b                                           ; $7a65: $98
	adc  b                                           ; $7a66: $88
	adc  b                                           ; $7a67: $88
	sbc  c                                           ; $7a68: $99
	sbc  d                                           ; $7a69: $9a
	cp   e                                           ; $7a6a: $bb
	xor  c                                           ; $7a6b: $a9
	sbc  d                                           ; $7a6c: $9a
	xor  c                                           ; $7a6d: $a9
	sbc  c                                           ; $7a6e: $99
	adc  b                                           ; $7a6f: $88
	ld   [hl], a                                     ; $7a70: $77
	ld   h, [hl]                                     ; $7a71: $66
	ld   h, l                                        ; $7a72: $65
	ld   d, l                                        ; $7a73: $55
	ld   d, h                                        ; $7a74: $54
	ld   b, l                                        ; $7a75: $45
	ld   d, l                                        ; $7a76: $55
	ld   h, a                                        ; $7a77: $67
	ld   [hl], a                                     ; $7a78: $77
	ld   a, b                                        ; $7a79: $78
	adc  b                                           ; $7a7a: $88
	xor  c                                           ; $7a7b: $a9
	xor  d                                           ; $7a7c: $aa
	sbc  d                                           ; $7a7d: $9a
	xor  c                                           ; $7a7e: $a9
	xor  d                                           ; $7a7f: $aa
	cp   d                                           ; $7a80: $ba
	sbc  c                                           ; $7a81: $99
	sbc  c                                           ; $7a82: $99
	sbc  d                                           ; $7a83: $9a
	sbc  c                                           ; $7a84: $99
	sbc  c                                           ; $7a85: $99

Call_0cd_7a86:
	sbc  c                                           ; $7a86: $99
	sbc  c                                           ; $7a87: $99
	adc  b                                           ; $7a88: $88
	add  a                                           ; $7a89: $87
	ld   a, b                                        ; $7a8a: $78
	adc  b                                           ; $7a8b: $88
	ld   a, b                                        ; $7a8c: $78
	sub  a                                           ; $7a8d: $97
	ld   [hl], a                                     ; $7a8e: $77
	halt                                             ; $7a8f: $76
	ld   h, [hl]                                     ; $7a90: $66
	ld   h, [hl]                                     ; $7a91: $66
	ld   d, l                                        ; $7a92: $55
	ld   d, [hl]                                     ; $7a93: $56
	ld   h, [hl]                                     ; $7a94: $66
	ld   [hl], a                                     ; $7a95: $77
	ld   a, b                                        ; $7a96: $78
	sbc  b                                           ; $7a97: $98
	sbc  c                                           ; $7a98: $99
	xor  c                                           ; $7a99: $a9
	xor  c                                           ; $7a9a: $a9
	xor  c                                           ; $7a9b: $a9
	xor  d                                           ; $7a9c: $aa
	sbc  c                                           ; $7a9d: $99
	sbc  c                                           ; $7a9e: $99
	sbc  b                                           ; $7a9f: $98
	adc  c                                           ; $7aa0: $89
	sbc  c                                           ; $7aa1: $99
	adc  b                                           ; $7aa2: $88
	adc  c                                           ; $7aa3: $89
	sbc  b                                           ; $7aa4: $98
	adc  b                                           ; $7aa5: $88
	sbc  b                                           ; $7aa6: $98
	adc  b                                           ; $7aa7: $88
	sub  a                                           ; $7aa8: $97
	adc  b                                           ; $7aa9: $88
	adc  b                                           ; $7aaa: $88
	adc  b                                           ; $7aab: $88
	ld   a, b                                        ; $7aac: $78
	add  a                                           ; $7aad: $87
	ld   [hl], a                                     ; $7aae: $77
	ld   [hl], a                                     ; $7aaf: $77
	ld   [hl], a                                     ; $7ab0: $77
	ld   [hl], a                                     ; $7ab1: $77
	ld   [hl], a                                     ; $7ab2: $77
	ld   [hl], a                                     ; $7ab3: $77
	ld   h, [hl]                                     ; $7ab4: $66
	ld   [hl], a                                     ; $7ab5: $77
	halt                                             ; $7ab6: $76
	ld   [hl], a                                     ; $7ab7: $77
	ld   [hl], a                                     ; $7ab8: $77
	adc  b                                           ; $7ab9: $88

Call_0cd_7aba:
	adc  b                                           ; $7aba: $88
	adc  c                                           ; $7abb: $89
	sbc  c                                           ; $7abc: $99
	xor  c                                           ; $7abd: $a9
	sbc  c                                           ; $7abe: $99
	sbc  c                                           ; $7abf: $99
	sbc  c                                           ; $7ac0: $99
	xor  b                                           ; $7ac1: $a8
	adc  c                                           ; $7ac2: $89
	adc  b                                           ; $7ac3: $88
	sbc  b                                           ; $7ac4: $98
	adc  c                                           ; $7ac5: $89
	sbc  b                                           ; $7ac6: $98
	sbc  c                                           ; $7ac7: $99
	sbc  b                                           ; $7ac8: $98
	adc  c                                           ; $7ac9: $89
	adc  c                                           ; $7aca: $89
	adc  b                                           ; $7acb: $88
	ld   [hl], a                                     ; $7acc: $77
	ld   [hl], a                                     ; $7acd: $77
	ld   [hl], a                                     ; $7ace: $77
	ld   [hl], a                                     ; $7acf: $77
	ld   h, a                                        ; $7ad0: $67
	ld   [hl], a                                     ; $7ad1: $77
	ld   [hl], a                                     ; $7ad2: $77
	halt                                             ; $7ad3: $76
	halt                                             ; $7ad4: $76
	halt                                             ; $7ad5: $76
	add  a                                           ; $7ad6: $87
	ld   h, a                                        ; $7ad7: $67
	ld   [hl], a                                     ; $7ad8: $77
	adc  b                                           ; $7ad9: $88
	ld   a, c                                        ; $7ada: $79
	adc  b                                           ; $7adb: $88
	adc  d                                           ; $7adc: $8a
	xor  b                                           ; $7add: $a8
	sbc  c                                           ; $7ade: $99
	xor  d                                           ; $7adf: $aa
	sbc  b                                           ; $7ae0: $98
	adc  c                                           ; $7ae1: $89
	sbc  b                                           ; $7ae2: $98
	sbc  c                                           ; $7ae3: $99
	adc  b                                           ; $7ae4: $88
	adc  c                                           ; $7ae5: $89
	adc  c                                           ; $7ae6: $89
	adc  c                                           ; $7ae7: $89
	sbc  b                                           ; $7ae8: $98
	sub  a                                           ; $7ae9: $97
	adc  b                                           ; $7aea: $88
	adc  b                                           ; $7aeb: $88
	sbc  b                                           ; $7aec: $98
	add  a                                           ; $7aed: $87
	ld   [hl], a                                     ; $7aee: $77
	ld   a, b                                        ; $7aef: $78
	ld   [hl], a                                     ; $7af0: $77
	ld   [hl], a                                     ; $7af1: $77
	add  a                                           ; $7af2: $87
	ld   [hl], a                                     ; $7af3: $77
	add  a                                           ; $7af4: $87
	halt                                             ; $7af5: $76
	ld   [hl], a                                     ; $7af6: $77
	ld   [hl], a                                     ; $7af7: $77
	ld   [hl], a                                     ; $7af8: $77
	ld   [hl], a                                     ; $7af9: $77
	ld   a, b                                        ; $7afa: $78
	adc  b                                           ; $7afb: $88
	adc  c                                           ; $7afc: $89
	adc  c                                           ; $7afd: $89
	adc  c                                           ; $7afe: $89
	sbc  c                                           ; $7aff: $99
	sbc  c                                           ; $7b00: $99
	sbc  c                                           ; $7b01: $99
	adc  c                                           ; $7b02: $89
	sbc  b                                           ; $7b03: $98
	adc  c                                           ; $7b04: $89
	adc  b                                           ; $7b05: $88
	sbc  c                                           ; $7b06: $99
	sbc  b                                           ; $7b07: $98
	adc  b                                           ; $7b08: $88
	adc  c                                           ; $7b09: $89
	adc  c                                           ; $7b0a: $89
	sbc  b                                           ; $7b0b: $98
	adc  b                                           ; $7b0c: $88
	adc  b                                           ; $7b0d: $88
	adc  c                                           ; $7b0e: $89
	add  a                                           ; $7b0f: $87
	ld   [hl], a                                     ; $7b10: $77
	ld   [hl], a                                     ; $7b11: $77
	halt                                             ; $7b12: $76
	halt                                             ; $7b13: $76
	ld   h, [hl]                                     ; $7b14: $66
	ld   h, a                                        ; $7b15: $67
	ld   h, [hl]                                     ; $7b16: $66
	ld   h, a                                        ; $7b17: $67
	ld   [hl], a                                     ; $7b18: $77
	ld   [hl], a                                     ; $7b19: $77
	ld   a, b                                        ; $7b1a: $78
	adc  b                                           ; $7b1b: $88
	adc  c                                           ; $7b1c: $89
	xor  c                                           ; $7b1d: $a9
	xor  c                                           ; $7b1e: $a9
	sbc  d                                           ; $7b1f: $9a
	xor  c                                           ; $7b20: $a9
	sbc  b                                           ; $7b21: $98
	sbc  c                                           ; $7b22: $99
	sbc  c                                           ; $7b23: $99
	xor  b                                           ; $7b24: $a8
	sbc  c                                           ; $7b25: $99
	sbc  c                                           ; $7b26: $99
	sbc  c                                           ; $7b27: $99
	sbc  b                                           ; $7b28: $98
	sbc  b                                           ; $7b29: $98
	adc  b                                           ; $7b2a: $88
	adc  b                                           ; $7b2b: $88
	add  a                                           ; $7b2c: $87
	adc  b                                           ; $7b2d: $88
	ld   [hl], a                                     ; $7b2e: $77
	ld   [hl], a                                     ; $7b2f: $77
	ld   h, [hl]                                     ; $7b30: $66
	ld   [hl], l                                     ; $7b31: $75
	ld   d, l                                        ; $7b32: $55
	ld   b, l                                        ; $7b33: $45
	ld   h, [hl]                                     ; $7b34: $66
	ld   d, [hl]                                     ; $7b35: $56
	ld   h, a                                        ; $7b36: $67
	ld   a, b                                        ; $7b37: $78
	adc  c                                           ; $7b38: $89
	sbc  d                                           ; $7b39: $9a
	xor  d                                           ; $7b3a: $aa
	xor  d                                           ; $7b3b: $aa
	xor  d                                           ; $7b3c: $aa
	xor  c                                           ; $7b3d: $a9
	sbc  d                                           ; $7b3e: $9a
	sbc  c                                           ; $7b3f: $99
	sbc  c                                           ; $7b40: $99
	sbc  c                                           ; $7b41: $99
	xor  c                                           ; $7b42: $a9
	adc  c                                           ; $7b43: $89
	sbc  c                                           ; $7b44: $99
	adc  d                                           ; $7b45: $8a
	sbc  c                                           ; $7b46: $99
	adc  c                                           ; $7b47: $89
	adc  c                                           ; $7b48: $89
	adc  b                                           ; $7b49: $88
	adc  b                                           ; $7b4a: $88
	halt                                             ; $7b4b: $76
	ld   h, l                                        ; $7b4c: $65
	ld   d, l                                        ; $7b4d: $55
	ld   b, e                                        ; $7b4e: $43
	inc  hl                                          ; $7b4f: $23
	dec  [hl]                                        ; $7b50: $35
	ld   d, a                                        ; $7b51: $57
	ld   [hl], a                                     ; $7b52: $77
	adc  d                                           ; $7b53: $8a
	xor  d                                           ; $7b54: $aa
	cp   e                                           ; $7b55: $bb
	cp   e                                           ; $7b56: $bb
	cp   d                                           ; $7b57: $ba
	xor  d                                           ; $7b58: $aa
	xor  d                                           ; $7b59: $aa
	xor  c                                           ; $7b5a: $a9
	sbc  c                                           ; $7b5b: $99
	xor  d                                           ; $7b5c: $aa
	sbc  d                                           ; $7b5d: $9a
	adc  b                                           ; $7b5e: $88
	adc  c                                           ; $7b5f: $89
	sbc  d                                           ; $7b60: $9a
	xor  d                                           ; $7b61: $aa
	sbc  c                                           ; $7b62: $99
	sbc  c                                           ; $7b63: $99
	add  a                                           ; $7b64: $87
	ld   [hl], a                                     ; $7b65: $77
	ld   h, [hl]                                     ; $7b66: $66
	ld   h, h                                        ; $7b67: $64
	ld   hl, $1111                                   ; $7b68: $21 $11 $11
	ld   b, [hl]                                     ; $7b6b: $46
	sbc  d                                           ; $7b6c: $9a
	cp   e                                           ; $7b6d: $bb
	cp   h                                           ; $7b6e: $bc
	call z, $a9ca                                    ; $7b6f: $cc $ca $a9
	xor  c                                           ; $7b72: $a9
	sbc  c                                           ; $7b73: $99
	adc  c                                           ; $7b74: $89
	sbc  c                                           ; $7b75: $99
	sbc  c                                           ; $7b76: $99
	xor  d                                           ; $7b77: $aa
	xor  d                                           ; $7b78: $aa
	cp   e                                           ; $7b79: $bb
	res  7, c                                        ; $7b7a: $cb $b9
	sbc  c                                           ; $7b7c: $99
	sbc  b                                           ; $7b7d: $98
	add  [hl]                                        ; $7b7e: $86
	ld   d, h                                        ; $7b7f: $54
	ld   [hl-], a                                    ; $7b80: $32
	ld   bc, $1111                                   ; $7b81: $01 $11 $11
	ld   a, d                                        ; $7b84: $7a
	adc  $cc                                         ; $7b85: $ce $cc
	db   $dd                                         ; $7b87: $dd
	call c, $66a8                                    ; $7b88: $dc $a8 $66
	ld   a, b                                        ; $7b8b: $78
	xor  d                                           ; $7b8c: $aa
	cp   d                                           ; $7b8d: $ba
	cp   e                                           ; $7b8e: $bb
	res  3, c                                        ; $7b8f: $cb $99
	adc  b                                           ; $7b91: $88
	adc  d                                           ; $7b92: $8a
	cp   h                                           ; $7b93: $bc
	call c, $98ba                                    ; $7b94: $dc $ba $98
	add  [hl]                                        ; $7b97: $86
	ld   d, h                                        ; $7b98: $54
	ld   sp, $1111                                   ; $7b99: $31 $11 $11
	ld   de, $ff8f                                   ; $7b9c: $11 $8f $ff
	cp   $de                                         ; $7b9f: $fe $de
	db   $eb                                         ; $7ba1: $eb
	sub  h                                           ; $7ba2: $94
	ld   hl, $ce49                                   ; $7ba3: $21 $49 $ce
	call c, $ccbb                                    ; $7ba6: $dc $bb $cc
	sbc  b                                           ; $7ba9: $98
	ld   d, l                                        ; $7baa: $55
	ld   e, b                                        ; $7bab: $58
	cp   h                                           ; $7bac: $bc
	call c, $aaca                                    ; $7bad: $dc $ca $aa
	add  l                                           ; $7bb0: $85
	ld   b, e                                        ; $7bb1: $43
	ld   [hl+], a                                    ; $7bb2: $22
	ld   de, $1111                                   ; $7bb3: $11 $11 $11
	cp   a                                           ; $7bb6: $bf
	rst  $38                                         ; $7bb7: $ff
	ei                                               ; $7bb8: $fb
	adc  h                                           ; $7bb9: $8c
	db   $eb                                         ; $7bba: $eb
	ld   d, c                                        ; $7bbb: $51
	ld   de, $ff1b                                   ; $7bbc: $11 $1b $ff
	rst  $38                                         ; $7bbf: $ff
	jp   z, $84cb                                    ; $7bc0: $ca $cb $84

	ld   de, $ae26                                   ; $7bc3: $11 $26 $ae
	xor  $ee                                         ; $7bc6: $ee $ee
	call c, $2195                                    ; $7bc8: $dc $95 $21
	inc  hl                                          ; $7bcb: $23
	ld   [hl-], a                                    ; $7bcc: $32
	ld   de, $1d11                                   ; $7bcd: $11 $11 $1d
	rst  $38                                         ; $7bd0: $ff
	rst  $38                                         ; $7bd1: $ff
	ld   d, c                                        ; $7bd2: $51
	ld   a, l                                        ; $7bd3: $7d
	call nz, $1511                                   ; $7bd4: $c4 $11 $15
	rst  $38                                         ; $7bd7: $ff
	rst  $38                                         ; $7bd8: $ff
	add  $36                                         ; $7bd9: $c6 $36
	sub  [hl]                                        ; $7bdb: $96
	ld   hl, $9f12                                   ; $7bdc: $21 $12 $9f
	rst  $38                                         ; $7bdf: $ff
	db   $fd                                         ; $7be0: $fd
	add  a                                           ; $7be1: $87
	adc  b                                           ; $7be2: $88
	ld   d, d                                        ; $7be3: $52
	dec  h                                           ; $7be4: $25
	ld   a, b                                        ; $7be5: $78
	ld   [hl], h                                     ; $7be6: $74
	ld   de, $1f11                                   ; $7be7: $11 $11 $1f
	rst  $38                                         ; $7bea: $ff
	or   $52                                         ; $7beb: $f6 $52
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bed: $cf
	pop  bc                                          ; $7bee: $c1
	ld   de, $ff2e                                   ; $7bef: $11 $2e $ff
	ld   hl, sp+$46                                  ; $7bf2: $f8 $46
	ld   a, c                                        ; $7bf4: $79
	sub  d                                           ; $7bf5: $92
	ld   de, $ff9c                                   ; $7bf6: $11 $9c $ff
	ld   a, [$7868]                                  ; $7bf9: $fa $68 $78
	ld   l, b                                        ; $7bfc: $68
	ld   h, a                                        ; $7bfd: $67
	sbc  e                                           ; $7bfe: $9b
	sub  a                                           ; $7bff: $97
	ld   [hl], h                                     ; $7c00: $74
	ld   de, $1111                                   ; $7c01: $11 $11 $11
	adc  a                                           ; $7c04: $8f
	rst  $38                                         ; $7c05: $ff
	ld   sp, hl                                      ; $7c06: $f9
	inc  de                                          ; $7c07: $13
	or   h                                           ; $7c08: $b4
	ld   de, rAUD1LEN                                   ; $7c09: $11 $11 $ff
	rst  $38                                         ; $7c0c: $ff
	and  h                                           ; $7c0d: $a4
	ld   [de], a                                     ; $7c0e: $12
	ld   l, e                                        ; $7c0f: $6b
	ld   hl, $ef16                                   ; $7c10: $21 $16 $ef
	rst  $38                                         ; $7c13: $ff
	ld   [hl], c                                     ; $7c14: $71
	ld   b, [hl]                                     ; $7c15: $46
	xor  h                                           ; $7c16: $ac
	sub  h                                           ; $7c17: $94
	daa                                              ; $7c18: $27
	sbc  d                                           ; $7c19: $9a
	add  a                                           ; $7c1a: $87
	inc  sp                                          ; $7c1b: $33
	ld   d, [hl]                                     ; $7c1c: $56
	ld   hl, $af11                                   ; $7c1d: $21 $11 $af
	rst  $38                                         ; $7c20: $ff
	ld   h, c                                        ; $7c21: $61
	inc  d                                           ; $7c22: $14
	ei                                               ; $7c23: $fb
	ld   sp, $ff16                                   ; $7c24: $31 $16 $ff
	ei                                               ; $7c27: $fb
	ld   de, $dc19                                   ; $7c28: $11 $19 $dc
	ld   sp, $ff5e                                   ; $7c2b: $31 $5e $ff
	jp   nc, $8d11                                   ; $7c2e: $d2 $11 $8d

	jp   c, $9b67                                    ; $7c31: $da $67 $9b

	sub  [hl]                                        ; $7c34: $96
	ld   d, [hl]                                     ; $7c35: $56
	ld   a, b                                        ; $7c36: $78
	sbc  b                                           ; $7c37: $98
	ld   h, e                                        ; $7c38: $63
	ld   hl, $1f11                                   ; $7c39: $21 $11 $1f
	rst  $38                                         ; $7c3c: $ff
	or   c                                           ; $7c3d: $b1
	inc  de                                          ; $7c3e: $13
	db   $ec                                         ; $7c3f: $ec
	ld   d, c                                        ; $7c40: $51
	inc  d                                           ; $7c41: $14
	rst  $38                                         ; $7c42: $ff
	db   $fc                                         ; $7c43: $fc
	ld   de, $dc27                                   ; $7c44: $11 $27 $dc
	ld   d, c                                        ; $7c47: $51
	ld   c, h                                        ; $7c48: $4c
	rst  $38                                         ; $7c49: $ff
	push bc                                          ; $7c4a: $c5
	inc  d                                           ; $7c4b: $14
	xor  h                                           ; $7c4c: $ac
	cp   b                                           ; $7c4d: $b8
	ld   h, [hl]                                     ; $7c4e: $66
	sbc  e                                           ; $7c4f: $9b
	and  a                                           ; $7c50: $a7
	ld   h, l                                        ; $7c51: $65
	ld   l, b                                        ; $7c52: $68
	xor  e                                           ; $7c53: $ab
	add  [hl]                                        ; $7c54: $86
	ld   l, b                                        ; $7c55: $68
	add  a                                           ; $7c56: $87
	ld   h, e                                        ; $7c57: $63
	ld   de, rAUD1LEN                                   ; $7c58: $11 $11 $ff
	rst  $38                                         ; $7c5b: $ff
	ld   de, $f713                                   ; $7c5c: $11 $13 $f7
	ld   d, c                                        ; $7c5f: $51
	ld   e, $ff                                      ; $7c60: $1e $ff
	push hl                                          ; $7c62: $e5
	ld   de, $ea3a                                   ; $7c63: $11 $3a $ea
	ld   d, l                                        ; $7c66: $55
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c67: $cf
	ei                                               ; $7c68: $fb
	ld   [hl], d                                     ; $7c69: $72
	scf                                              ; $7c6a: $37
	xor  e                                           ; $7c6b: $ab
	sub  [hl]                                        ; $7c6c: $96
	ld   l, b                                        ; $7c6d: $68
	xor  e                                           ; $7c6e: $ab
	sub  [hl]                                        ; $7c6f: $96
	ld   d, [hl]                                     ; $7c70: $56
	adc  d                                           ; $7c71: $8a
	cp   b                                           ; $7c72: $b8
	ld   h, [hl]                                     ; $7c73: $66
	ld   l, c                                        ; $7c74: $69
	sbc  c                                           ; $7c75: $99
	ld   b, e                                        ; $7c76: $43
	ld   d, [hl]                                     ; $7c77: $56
	ld   b, c                                        ; $7c78: $41
	ld   de, $ffef                                   ; $7c79: $11 $ef $ff
	ld   de, $fa14                                   ; $7c7c: $11 $14 $fa
	ld   [hl], c                                     ; $7c7f: $71
	ccf                                              ; $7c80: $3f
	rst  $38                                         ; $7c81: $ff
	add  c                                           ; $7c82: $81
	ld   de, $fa7f                                   ; $7c83: $11 $7f $fa
	ld   d, [hl]                                     ; $7c86: $56
	adc  $d8                                         ; $7c87: $ce $d8
	ld   b, d                                        ; $7c89: $42
	ld   e, e                                        ; $7c8a: $5b
	db   $ed                                         ; $7c8b: $ed
	sub  l                                           ; $7c8c: $95
	ld   b, [hl]                                     ; $7c8d: $46
	ld   a, b                                        ; $7c8e: $78
	ld   [hl], a                                     ; $7c8f: $77
	ld   h, a                                        ; $7c90: $67
	xor  h                                           ; $7c91: $ac
	or   a                                           ; $7c92: $b7
	ld   h, l                                        ; $7c93: $65
	ld   h, a                                        ; $7c94: $67
	sbc  d                                           ; $7c95: $9a
	sub  a                                           ; $7c96: $97
	ld   h, a                                        ; $7c97: $67
	add  [hl]                                        ; $7c98: $86
	ld   sp, $df11                                   ; $7c99: $31 $11 $df
	rst  $38                                         ; $7c9c: $ff
	ld   de, $fc14                                   ; $7c9d: $11 $14 $fc
	sub  d                                           ; $7ca0: $92
	cpl                                              ; $7ca1: $2f
	rst  $38                                         ; $7ca2: $ff
	sub  c                                           ; $7ca3: $91
	ld   de, $fc7f                                   ; $7ca4: $11 $7f $fc
	ld   h, l                                        ; $7ca7: $65
	sbc  e                                           ; $7ca8: $9b
	cp   b                                           ; $7ca9: $b8
	ld   b, e                                        ; $7caa: $43
	ld   e, e                                        ; $7cab: $5b
	bit  4, h                                        ; $7cac: $cb $64
	ld   d, a                                        ; $7cae: $57
	xor  d                                           ; $7caf: $aa
	add  [hl]                                        ; $7cb0: $86
	ld   a, b                                        ; $7cb1: $78
	cp   d                                           ; $7cb2: $ba
	add  a                                           ; $7cb3: $87
	ld   a, b                                        ; $7cb4: $78
	sbc  c                                           ; $7cb5: $99
	adc  b                                           ; $7cb6: $88
	adc  d                                           ; $7cb7: $8a
	sub  a                                           ; $7cb8: $97
	ld   d, h                                        ; $7cb9: $54
	ld   d, l                                        ; $7cba: $55
	ld   b, h                                        ; $7cbb: $44
	ld   b, h                                        ; $7cbc: $44
	ld   d, [hl]                                     ; $7cbd: $56
	ld   a, a                                        ; $7cbe: $7f
	db   $fd                                         ; $7cbf: $fd
	ld   [hl], c                                     ; $7cc0: $71
	ld   [hl], $8d                                   ; $7cc1: $36 $8d
	sbc  d                                           ; $7cc3: $9a
	ld   l, b                                        ; $7cc4: $68
	call c, $2492                                    ; $7cc5: $dc $92 $24
	adc  a                                           ; $7cc8: $8f
	rst  $38                                         ; $7cc9: $ff
	ld   [hl], d                                     ; $7cca: $72
	ld   c, b                                        ; $7ccb: $48
	call z, Call_0cd_68a7                            ; $7ccc: $cc $a7 $68
	xor  d                                           ; $7ccf: $aa
	ld   [hl], l                                     ; $7cd0: $75
	ld   l, b                                        ; $7cd1: $68
	cp   e                                           ; $7cd2: $bb
	xor  b                                           ; $7cd3: $a8
	ld   h, a                                        ; $7cd4: $67
	ld   [hl], a                                     ; $7cd5: $77
	ld   a, b                                        ; $7cd6: $78
	sbc  c                                           ; $7cd7: $99
	adc  b                                           ; $7cd8: $88
	adc  c                                           ; $7cd9: $89
	add  a                                           ; $7cda: $87
	ld   h, l                                        ; $7cdb: $65
	ld   d, a                                        ; $7cdc: $57
	ld   [hl], h                                     ; $7cdd: $74
	ld   de, $ff19                                   ; $7cde: $11 $19 $ff
	ldh  a, [c]                                      ; $7ce1: $f2
	ld   de, $eb3e                                   ; $7ce2: $11 $3e $eb
	ld   d, e                                        ; $7ce5: $53
	cp   a                                           ; $7ce6: $bf
	ld   hl, sp+$21                                  ; $7ce7: $f8 $21
	add  hl, sp                                      ; $7ce9: $39
	xor  $84                                         ; $7cea: $ee $84
	ld   c, b                                        ; $7cec: $48
	xor  e                                           ; $7ced: $ab
	sub  [hl]                                        ; $7cee: $96
	ld   l, b                                        ; $7cef: $68
	xor  d                                           ; $7cf0: $aa
	sub  [hl]                                        ; $7cf1: $96
	ld   d, a                                        ; $7cf2: $57
	sbc  d                                           ; $7cf3: $9a
	xor  c                                           ; $7cf4: $a9
	xor  h                                           ; $7cf5: $ac
	jp   z, Jump_0cd_6975                            ; $7cf6: $ca $75 $69

	cp   e                                           ; $7cf9: $bb
	sub  a                                           ; $7cfa: $97
	ld   h, a                                        ; $7cfb: $67
	sub  a                                           ; $7cfc: $97
	ld   h, l                                        ; $7cfd: $65
	ld   d, l                                        ; $7cfe: $55
	ld   d, h                                        ; $7cff: $54
	ld   [hl+], a                                    ; $7d00: $22
	inc  d                                           ; $7d01: $14
	cp   a                                           ; $7d02: $bf
	ei                                               ; $7d03: $fb
	ld   hl, $df19                                   ; $7d04: $21 $19 $df
	sub  [hl]                                        ; $7d07: $96
	ld   c, d                                        ; $7d08: $4a
	db   $fd                                         ; $7d09: $fd
	ld   h, c                                        ; $7d0a: $61
	dec  d                                           ; $7d0b: $15
	cp   a                                           ; $7d0c: $bf
	ld   a, [$7b63]                                  ; $7d0d: $fa $63 $7b
	cp   c                                           ; $7d10: $b9
	ld   l, c                                        ; $7d11: $69
	xor  e                                           ; $7d12: $ab
	cp   d                                           ; $7d13: $ba
	add  [hl]                                        ; $7d14: $86
	ld   h, a                                        ; $7d15: $67
	xor  d                                           ; $7d16: $aa
	adc  b                                           ; $7d17: $88
	adc  b                                           ; $7d18: $88
	add  a                                           ; $7d19: $87
	ld   [hl], a                                     ; $7d1a: $77
	ld   a, b                                        ; $7d1b: $78
	sbc  c                                           ; $7d1c: $99
	adc  b                                           ; $7d1d: $88
	ld   [hl], a                                     ; $7d1e: $77
	ld   a, c                                        ; $7d1f: $79
	sbc  b                                           ; $7d20: $98
	add  a                                           ; $7d21: $87
	ld   h, [hl]                                     ; $7d22: $66
	halt                                             ; $7d23: $76
	ld   b, c                                        ; $7d24: $41
	ld   de, $ff1f                                   ; $7d25: $11 $1f $ff
	add  c                                           ; $7d28: $81
	ld   de, $e7bf                                   ; $7d29: $11 $bf $e7
	ld   a, [de]                                     ; $7d2c: $1a
	rst  $38                                         ; $7d2d: $ff
	pop  hl                                          ; $7d2e: $e1
	ld   de, $ff7f                                   ; $7d2f: $11 $7f $ff
	ld   d, c                                        ; $7d32: $51
	ld   c, d                                        ; $7d33: $4a
	ret                                              ; $7d34: $c9


	ld   d, h                                        ; $7d35: $54
	ld   a, e                                        ; $7d36: $7b
	call z, Call_0cd_4674                            ; $7d37: $cc $74 $46
	xor  d                                           ; $7d3a: $aa
	adc  c                                           ; $7d3b: $89
	adc  d                                           ; $7d3c: $8a
	cp   h                                           ; $7d3d: $bc
	sub  [hl]                                        ; $7d3e: $96
	ld   d, a                                        ; $7d3f: $57
	adc  d                                           ; $7d40: $8a
	xor  c                                           ; $7d41: $a9
	ld   [hl], a                                     ; $7d42: $77
	sbc  b                                           ; $7d43: $98
	halt                                             ; $7d44: $76
	ld   [hl], a                                     ; $7d45: $77
	ld   h, h                                        ; $7d46: $64
	ld   de, $5514                                   ; $7d47: $11 $14 $55
	ld   l, a                                        ; $7d4a: $6f
	rst  $38                                         ; $7d4b: $ff
	add  c                                           ; $7d4c: $81
	ld   de, $fc7e                                   ; $7d4d: $11 $7e $fc
	ld   h, [hl]                                     ; $7d50: $66
	cp   l                                           ; $7d51: $bd
	and  h                                           ; $7d52: $a4
	ld   de, $ff6d                                   ; $7d53: $11 $6d $ff
	and  h                                           ; $7d56: $a4
	ld   b, a                                        ; $7d57: $47
	xor  h                                           ; $7d58: $ac
	and  a                                           ; $7d59: $a7
	ld   a, d                                        ; $7d5a: $7a
	db   $db                                         ; $7d5b: $db
	sub  l                                           ; $7d5c: $95
	ld   d, [hl]                                     ; $7d5d: $56
	sbc  e                                           ; $7d5e: $9b
	xor  b                                           ; $7d5f: $a8
	ld   h, a                                        ; $7d60: $67
	adc  c                                           ; $7d61: $89
	add  a                                           ; $7d62: $87
	ld   a, b                                        ; $7d63: $78
	sbc  c                                           ; $7d64: $99
	sub  a                                           ; $7d65: $97
	ld   h, [hl]                                     ; $7d66: $66
	adc  d                                           ; $7d67: $8a
	sub  a                                           ; $7d68: $97
	ld   h, [hl]                                     ; $7d69: $66
	halt                                             ; $7d6a: $76
	ld   b, d                                        ; $7d6b: $42
	ld   hl, $3f11                                   ; $7d6c: $21 $11 $3f
	rst  $38                                         ; $7d6f: $ff
	ld   b, c                                        ; $7d70: $41
	ld   de, $f6bf                                   ; $7d71: $11 $bf $f6
	ld   a, [de]                                     ; $7d74: $1a
	rst  $38                                         ; $7d75: $ff
	sub  c                                           ; $7d76: $91
	ld   [de], a                                     ; $7d77: $12
	xor  a                                           ; $7d78: $af
	ei                                               ; $7d79: $fb
	ld   d, e                                        ; $7d7a: $53
	ld   a, d                                        ; $7d7b: $7a
	cp   c                                           ; $7d7c: $b9
	ld   [hl], a                                     ; $7d7d: $77
	cp   l                                           ; $7d7e: $bd
	sub  [hl]                                        ; $7d7f: $96
	ld   b, [hl]                                     ; $7d80: $46
	sbc  d                                           ; $7d81: $9a
	cp   c                                           ; $7d82: $b9
	ld   [hl], a                                     ; $7d83: $77
	sbc  e                                           ; $7d84: $9b
	sub  a                                           ; $7d85: $97
	ld   l, b                                        ; $7d86: $68
	cp   d                                           ; $7d87: $ba
	and  a                                           ; $7d88: $a7
	ld   d, [hl]                                     ; $7d89: $56
	ld   a, b                                        ; $7d8a: $78
	adc  b                                           ; $7d8b: $88
	adc  b                                           ; $7d8c: $88
	halt                                             ; $7d8d: $76
	ld   b, e                                        ; $7d8e: $43
	ld   b, l                                        ; $7d8f: $45
	ld   h, l                                        ; $7d90: $65
	ld   sp, $ff1a                                   ; $7d91: $31 $1a $ff
	pop  af                                          ; $7d94: $f1
	ld   de, $fd6e                                   ; $7d95: $11 $6e $fd
	ld   b, l                                        ; $7d98: $45
	cp   a                                           ; $7d99: $bf
	push bc                                          ; $7d9a: $c5
	ld   [hl+], a                                    ; $7d9b: $22
	ld   a, h                                        ; $7d9c: $7c
	db   $db                                         ; $7d9d: $db
	add  h                                           ; $7d9e: $84
	ld   l, d                                        ; $7d9f: $6a
	xor  d                                           ; $7da0: $aa
	adc  b                                           ; $7da1: $88
	ld   a, c                                        ; $7da2: $79
	sbc  c                                           ; $7da3: $99
	add  a                                           ; $7da4: $87
	ld   a, d                                        ; $7da5: $7a
	cp   h                                           ; $7da6: $bc
	sub  l                                           ; $7da7: $95
	ld   b, [hl]                                     ; $7da8: $46
	xor  h                                           ; $7da9: $ac
	xor  b                                           ; $7daa: $a8
	ld   [hl], a                                     ; $7dab: $77
	sbc  c                                           ; $7dac: $99
	add  [hl]                                        ; $7dad: $86
	ld   a, b                                        ; $7dae: $78
	xor  c                                           ; $7daf: $a9
	ld   [hl], l                                     ; $7db0: $75
	ld   d, [hl]                                     ; $7db1: $56
	ld   [hl], a                                     ; $7db2: $77
	ld   [hl], a                                     ; $7db3: $77
	ld   [hl], a                                     ; $7db4: $77
	ld   h, e                                        ; $7db5: $63
	inc  sp                                          ; $7db6: $33
	ld   b, e                                        ; $7db7: $43
	ld   e, e                                        ; $7db8: $5b
	rst  $38                                         ; $7db9: $ff
	rst  $20                                         ; $7dba: $e7
	ld   hl, $cd5a                                   ; $7dbb: $21 $5a $cd
	cp   b                                           ; $7dbe: $b8
	adc  b                                           ; $7dbf: $88
	ld   [hl], a                                     ; $7dc0: $77
	ld   a, c                                        ; $7dc1: $79
	cp   e                                           ; $7dc2: $bb
	cp   c                                           ; $7dc3: $b9
	halt                                             ; $7dc4: $76
	ld   l, b                                        ; $7dc5: $68
	xor  c                                           ; $7dc6: $a9
	adc  c                                           ; $7dc7: $89
	sbc  b                                           ; $7dc8: $98
	ld   [hl], a                                     ; $7dc9: $77
	ld   a, b                                        ; $7dca: $78
	sbc  d                                           ; $7dcb: $9a
	sbc  b                                           ; $7dcc: $98
	halt                                             ; $7dcd: $76
	ld   a, b                                        ; $7dce: $78
	xor  c                                           ; $7dcf: $a9
	sbc  d                                           ; $7dd0: $9a
	xor  c                                           ; $7dd1: $a9
	add  [hl]                                        ; $7dd2: $86
	ld   h, a                                        ; $7dd3: $67
	sbc  c                                           ; $7dd4: $99
	add  a                                           ; $7dd5: $87
	ld   [hl], a                                     ; $7dd6: $77
	ld   a, b                                        ; $7dd7: $78
	adc  c                                           ; $7dd8: $89
	halt                                             ; $7dd9: $76
	ld   [hl], a                                     ; $7dda: $77
	sub  a                                           ; $7ddb: $97
	ld   h, [hl]                                     ; $7ddc: $66
	ld   d, [hl]                                     ; $7ddd: $56
	ld   [hl], a                                     ; $7dde: $77
	ld   [hl], l                                     ; $7ddf: $75
	ld   b, l                                        ; $7de0: $45
	ld   d, a                                        ; $7de1: $57
	xor  e                                           ; $7de2: $ab
	xor  b                                           ; $7de3: $a8
	ld   [hl], a                                     ; $7de4: $77
	ld   a, c                                        ; $7de5: $79
	sbc  c                                           ; $7de6: $99
	sbc  d                                           ; $7de7: $9a
	xor  d                                           ; $7de8: $aa
	add  a                                           ; $7de9: $87
	ld   a, c                                        ; $7dea: $79
	cp   d                                           ; $7deb: $ba
	sbc  b                                           ; $7dec: $98
	add  a                                           ; $7ded: $87
	adc  b                                           ; $7dee: $88
	adc  b                                           ; $7def: $88
	adc  b                                           ; $7df0: $88
	adc  b                                           ; $7df1: $88
	add  a                                           ; $7df2: $87
	ld   h, a                                        ; $7df3: $67
	sbc  c                                           ; $7df4: $99
	sbc  c                                           ; $7df5: $99
	halt                                             ; $7df6: $76
	adc  c                                           ; $7df7: $89
	add  a                                           ; $7df8: $87
	ld   l, c                                        ; $7df9: $69
	sbc  c                                           ; $7dfa: $99
	add  a                                           ; $7dfb: $87
	ld   a, b                                        ; $7dfc: $78
	adc  b                                           ; $7dfd: $88
	add  a                                           ; $7dfe: $87
	adc  c                                           ; $7dff: $89
	sbc  b                                           ; $7e00: $98
	adc  b                                           ; $7e01: $88
	sbc  b                                           ; $7e02: $98
	add  a                                           ; $7e03: $87
	ld   h, [hl]                                     ; $7e04: $66
	ld   l, b                                        ; $7e05: $68
	sbc  b                                           ; $7e06: $98
	ld   [hl], a                                     ; $7e07: $77
	sub  a                                           ; $7e08: $97
	ld   d, l                                        ; $7e09: $55
	ld   h, a                                        ; $7e0a: $67
	ld   [hl], a                                     ; $7e0b: $77
	ld   [hl], a                                     ; $7e0c: $77
	halt                                             ; $7e0d: $76
	ld   [hl], a                                     ; $7e0e: $77
	adc  c                                           ; $7e0f: $89
	adc  c                                           ; $7e10: $89
	sbc  c                                           ; $7e11: $99
	adc  c                                           ; $7e12: $89
	sbc  b                                           ; $7e13: $98
	adc  d                                           ; $7e14: $8a
	xor  d                                           ; $7e15: $aa
	sbc  c                                           ; $7e16: $99
	adc  b                                           ; $7e17: $88
	adc  c                                           ; $7e18: $89
	sbc  c                                           ; $7e19: $99
	sbc  c                                           ; $7e1a: $99
	add  a                                           ; $7e1b: $87
	ld   [hl], a                                     ; $7e1c: $77
	adc  b                                           ; $7e1d: $88
	adc  c                                           ; $7e1e: $89
	sbc  c                                           ; $7e1f: $99
	ld   a, c                                        ; $7e20: $79
	sub  a                                           ; $7e21: $97
	ld   l, b                                        ; $7e22: $68
	sbc  c                                           ; $7e23: $99
	ld   h, [hl]                                     ; $7e24: $66
	adc  d                                           ; $7e25: $8a
	sbc  c                                           ; $7e26: $99
	add  a                                           ; $7e27: $87
	adc  b                                           ; $7e28: $88
	ld   [hl], a                                     ; $7e29: $77
	sbc  b                                           ; $7e2a: $98
	ld   a, b                                        ; $7e2b: $78
	ld   a, c                                        ; $7e2c: $79
	add  [hl]                                        ; $7e2d: $86
	adc  c                                           ; $7e2e: $89
	ld   [hl], a                                     ; $7e2f: $77
	ld   a, b                                        ; $7e30: $78
	add  a                                           ; $7e31: $87
	ld   [hl], a                                     ; $7e32: $77
	adc  b                                           ; $7e33: $88
	halt                                             ; $7e34: $76
	ld   l, c                                        ; $7e35: $69
	adc  b                                           ; $7e36: $88
	ld   [hl], a                                     ; $7e37: $77
	ld   [hl], a                                     ; $7e38: $77
	ld   a, c                                        ; $7e39: $79
	add  a                                           ; $7e3a: $87
	adc  b                                           ; $7e3b: $88
	adc  b                                           ; $7e3c: $88
	adc  b                                           ; $7e3d: $88
	sbc  c                                           ; $7e3e: $99
	ld   a, b                                        ; $7e3f: $78
	sbc  c                                           ; $7e40: $99
	sbc  b                                           ; $7e41: $98
	adc  b                                           ; $7e42: $88
	sbc  d                                           ; $7e43: $9a
	add  a                                           ; $7e44: $87
	adc  c                                           ; $7e45: $89
	sbc  c                                           ; $7e46: $99
	add  a                                           ; $7e47: $87
	ld   a, b                                        ; $7e48: $78
	sbc  b                                           ; $7e49: $98
	sbc  b                                           ; $7e4a: $98
	sbc  d                                           ; $7e4b: $9a
	sub  a                                           ; $7e4c: $97
	ld   a, c                                        ; $7e4d: $79
	sbc  c                                           ; $7e4e: $99
	sbc  b                                           ; $7e4f: $98
	ld   [hl], a                                     ; $7e50: $77
	adc  c                                           ; $7e51: $89
	add  a                                           ; $7e52: $87
	sbc  b                                           ; $7e53: $98
	sub  [hl]                                        ; $7e54: $96
	ld   l, c                                        ; $7e55: $69
	sbc  c                                           ; $7e56: $99
	adc  b                                           ; $7e57: $88
	add  [hl]                                        ; $7e58: $86
	adc  b                                           ; $7e59: $88
	add  a                                           ; $7e5a: $87
	ld   a, b                                        ; $7e5b: $78
	adc  b                                           ; $7e5c: $88
	add  a                                           ; $7e5d: $87
	ld   l, b                                        ; $7e5e: $68
	sbc  b                                           ; $7e5f: $98
	ld   a, b                                        ; $7e60: $78
	add  a                                           ; $7e61: $87
	ld   a, b                                        ; $7e62: $78
	adc  b                                           ; $7e63: $88
	adc  b                                           ; $7e64: $88
	add  a                                           ; $7e65: $87
	adc  b                                           ; $7e66: $88
	adc  c                                           ; $7e67: $89
	adc  b                                           ; $7e68: $88
	sbc  c                                           ; $7e69: $99
	ld   [hl], a                                     ; $7e6a: $77
	sbc  d                                           ; $7e6b: $9a
	sub  [hl]                                        ; $7e6c: $96
	ld   a, c                                        ; $7e6d: $79
	xor  b                                           ; $7e6e: $a8
	ld   [hl], a                                     ; $7e6f: $77
	adc  c                                           ; $7e70: $89
	sbc  b                                           ; $7e71: $98
	adc  b                                           ; $7e72: $88
	adc  b                                           ; $7e73: $88
	adc  b                                           ; $7e74: $88
	adc  b                                           ; $7e75: $88
	ld   a, b                                        ; $7e76: $78
	adc  c                                           ; $7e77: $89
	adc  b                                           ; $7e78: $88
	adc  b                                           ; $7e79: $88
	add  a                                           ; $7e7a: $87
	ld   [hl], a                                     ; $7e7b: $77
	adc  c                                           ; $7e7c: $89
	ld   [hl], a                                     ; $7e7d: $77
	adc  c                                           ; $7e7e: $89
	add  a                                           ; $7e7f: $87
	ld   a, b                                        ; $7e80: $78
	adc  c                                           ; $7e81: $89
	adc  b                                           ; $7e82: $88
	add  a                                           ; $7e83: $87
	adc  c                                           ; $7e84: $89
	sbc  b                                           ; $7e85: $98
	ld   a, b                                        ; $7e86: $78
	adc  b                                           ; $7e87: $88
	sbc  b                                           ; $7e88: $98
	ld   a, b                                        ; $7e89: $78
	add  a                                           ; $7e8a: $87
	sbc  c                                           ; $7e8b: $99
	adc  b                                           ; $7e8c: $88
	ld   a, b                                        ; $7e8d: $78
	sbc  b                                           ; $7e8e: $98
	sbc  b                                           ; $7e8f: $98
	ld   [hl], a                                     ; $7e90: $77
	adc  c                                           ; $7e91: $89
	sbc  c                                           ; $7e92: $99
	add  a                                           ; $7e93: $87
	adc  c                                           ; $7e94: $89
	add  a                                           ; $7e95: $87
	adc  b                                           ; $7e96: $88
	add  a                                           ; $7e97: $87
	ld   a, b                                        ; $7e98: $78
	sbc  b                                           ; $7e99: $98
	add  a                                           ; $7e9a: $87
	ld   a, b                                        ; $7e9b: $78
	xor  c                                           ; $7e9c: $a9
	ld   [hl], a                                     ; $7e9d: $77
	adc  c                                           ; $7e9e: $89
	sbc  b                                           ; $7e9f: $98
	ld   a, b                                        ; $7ea0: $78
	adc  c                                           ; $7ea1: $89
	adc  b                                           ; $7ea2: $88
	add  a                                           ; $7ea3: $87
	ld   a, b                                        ; $7ea4: $78
	sbc  c                                           ; $7ea5: $99
	add  a                                           ; $7ea6: $87
	ld   a, b                                        ; $7ea7: $78
	adc  c                                           ; $7ea8: $89
	add  a                                           ; $7ea9: $87
	adc  b                                           ; $7eaa: $88
	adc  c                                           ; $7eab: $89
	ld   [hl], a                                     ; $7eac: $77
	adc  c                                           ; $7ead: $89
	ld   [hl], a                                     ; $7eae: $77
	xor  c                                           ; $7eaf: $a9
	add  a                                           ; $7eb0: $87
	ld   a, c                                        ; $7eb1: $79
	sbc  c                                           ; $7eb2: $99
	add  a                                           ; $7eb3: $87
	ld   a, c                                        ; $7eb4: $79
	add  a                                           ; $7eb5: $87
	adc  b                                           ; $7eb6: $88
	ld   a, b                                        ; $7eb7: $78
	adc  b                                           ; $7eb8: $88
	sub  a                                           ; $7eb9: $97
	ld   [hl], a                                     ; $7eba: $77
	sbc  d                                           ; $7ebb: $9a
	sub  a                                           ; $7ebc: $97
	ld   a, b                                        ; $7ebd: $78
	sbc  c                                           ; $7ebe: $99
	add  a                                           ; $7ebf: $87
	ld   a, c                                        ; $7ec0: $79
	xor  c                                           ; $7ec1: $a9
	ld   [hl], a                                     ; $7ec2: $77
	sbc  c                                           ; $7ec3: $99
	adc  b                                           ; $7ec4: $88
	adc  b                                           ; $7ec5: $88
	adc  b                                           ; $7ec6: $88
	add  a                                           ; $7ec7: $87
	sbc  c                                           ; $7ec8: $99
	ld   a, b                                        ; $7ec9: $78
	adc  b                                           ; $7eca: $88
	adc  c                                           ; $7ecb: $89
	add  a                                           ; $7ecc: $87
	ld   a, c                                        ; $7ecd: $79
	sub  a                                           ; $7ece: $97
	adc  c                                           ; $7ecf: $89
	ld   a, b                                        ; $7ed0: $78
	sbc  d                                           ; $7ed1: $9a
	ld   [hl], a                                     ; $7ed2: $77
	adc  b                                           ; $7ed3: $88
	adc  b                                           ; $7ed4: $88
	sub  a                                           ; $7ed5: $97
	ld   a, c                                        ; $7ed6: $79
	adc  b                                           ; $7ed7: $88
	sbc  c                                           ; $7ed8: $99
	adc  c                                           ; $7ed9: $89
	adc  b                                           ; $7eda: $88
	ld   a, b                                        ; $7edb: $78
	sbc  b                                           ; $7edc: $98
	add  a                                           ; $7edd: $87
	adc  c                                           ; $7ede: $89
	adc  b                                           ; $7edf: $88
	ld   a, b                                        ; $7ee0: $78
	sbc  b                                           ; $7ee1: $98
	adc  b                                           ; $7ee2: $88
	sbc  b                                           ; $7ee3: $98
	ld   a, b                                        ; $7ee4: $78
	adc  b                                           ; $7ee5: $88
	adc  b                                           ; $7ee6: $88
	sub  a                                           ; $7ee7: $97
	ld   a, b                                        ; $7ee8: $78
	sbc  c                                           ; $7ee9: $99
	add  a                                           ; $7eea: $87
	ld   a, c                                        ; $7eeb: $79
	and  a                                           ; $7eec: $a7
	ld   a, b                                        ; $7eed: $78
	adc  b                                           ; $7eee: $88
	ld   [hl], a                                     ; $7eef: $77
	sbc  b                                           ; $7ef0: $98
	sub  a                                           ; $7ef1: $97
	adc  b                                           ; $7ef2: $88
	sbc  b                                           ; $7ef3: $98
	add  a                                           ; $7ef4: $87
	ld   a, b                                        ; $7ef5: $78
	sbc  b                                           ; $7ef6: $98
	ld   a, b                                        ; $7ef7: $78
	sbc  b                                           ; $7ef8: $98
	ld   a, b                                        ; $7ef9: $78
	sbc  b                                           ; $7efa: $98
	add  a                                           ; $7efb: $87
	ld   a, c                                        ; $7efc: $79
	adc  b                                           ; $7efd: $88
	ld   a, c                                        ; $7efe: $79
	adc  b                                           ; $7eff: $88
	adc  c                                           ; $7f00: $89
	sbc  b                                           ; $7f01: $98
	adc  b                                           ; $7f02: $88
	ld   [hl], a                                     ; $7f03: $77
	sbc  c                                           ; $7f04: $99
	add  a                                           ; $7f05: $87
	ld   [hl], a                                     ; $7f06: $77
	adc  b                                           ; $7f07: $88
	adc  b                                           ; $7f08: $88
	ld   a, b                                        ; $7f09: $78
	adc  c                                           ; $7f0a: $89
	adc  b                                           ; $7f0b: $88
	adc  b                                           ; $7f0c: $88
	adc  b                                           ; $7f0d: $88
	adc  c                                           ; $7f0e: $89
	sub  a                                           ; $7f0f: $97
	ld   a, b                                        ; $7f10: $78
	adc  c                                           ; $7f11: $89
	adc  b                                           ; $7f12: $88
	adc  b                                           ; $7f13: $88
	adc  c                                           ; $7f14: $89
	adc  c                                           ; $7f15: $89
	adc  b                                           ; $7f16: $88
	ld   a, b                                        ; $7f17: $78
	adc  c                                           ; $7f18: $89
	add  a                                           ; $7f19: $87
	adc  b                                           ; $7f1a: $88
	sbc  c                                           ; $7f1b: $99
	ld   a, b                                        ; $7f1c: $78
	adc  b                                           ; $7f1d: $88
	adc  b                                           ; $7f1e: $88
	ld   a, b                                        ; $7f1f: $78
	adc  b                                           ; $7f20: $88
	add  a                                           ; $7f21: $87
	adc  b                                           ; $7f22: $88
	adc  b                                           ; $7f23: $88
	ld   a, b                                        ; $7f24: $78
	adc  b                                           ; $7f25: $88
	sbc  c                                           ; $7f26: $99
	sbc  c                                           ; $7f27: $99
	adc  c                                           ; $7f28: $89
	sbc  b                                           ; $7f29: $98
	adc  b                                           ; $7f2a: $88
	adc  c                                           ; $7f2b: $89
	sbc  b                                           ; $7f2c: $98
	ld   [hl], a                                     ; $7f2d: $77
	adc  b                                           ; $7f2e: $88
	sbc  c                                           ; $7f2f: $99
	ld   [hl], a                                     ; $7f30: $77
	adc  b                                           ; $7f31: $88
	sbc  c                                           ; $7f32: $99
	add  a                                           ; $7f33: $87
	ld   a, b                                        ; $7f34: $78
	adc  b                                           ; $7f35: $88
	sbc  b                                           ; $7f36: $98
	ld   [hl], a                                     ; $7f37: $77
	adc  c                                           ; $7f38: $89
	adc  b                                           ; $7f39: $88
	sbc  b                                           ; $7f3a: $98
	adc  c                                           ; $7f3b: $89
	adc  c                                           ; $7f3c: $89
	ld   a, b                                        ; $7f3d: $78
	adc  b                                           ; $7f3e: $88
	ld   a, b                                        ; $7f3f: $78
	adc  c                                           ; $7f40: $89
	add  a                                           ; $7f41: $87
	adc  b                                           ; $7f42: $88
	adc  c                                           ; $7f43: $89
	ld   [hl], a                                     ; $7f44: $77
	sbc  b                                           ; $7f45: $98
	add  a                                           ; $7f46: $87
	ld   a, c                                        ; $7f47: $79
	sub  a                                           ; $7f48: $97
	ld   [hl], a                                     ; $7f49: $77
	adc  c                                           ; $7f4a: $89
	add  a                                           ; $7f4b: $87
	ld   a, c                                        ; $7f4c: $79
	adc  b                                           ; $7f4d: $88
	ld   [hl], a                                     ; $7f4e: $77
	adc  b                                           ; $7f4f: $88
	sub  a                                           ; $7f50: $97
	ld   a, b                                        ; $7f51: $78
	adc  b                                           ; $7f52: $88
	ld   [hl], a                                     ; $7f53: $77
	sbc  c                                           ; $7f54: $99
	add  a                                           ; $7f55: $87
	ld   a, b                                        ; $7f56: $78
	sbc  c                                           ; $7f57: $99
	sbc  b                                           ; $7f58: $98
	adc  b                                           ; $7f59: $88
	ld   [hl], a                                     ; $7f5a: $77
	adc  c                                           ; $7f5b: $89
	sbc  b                                           ; $7f5c: $98
	adc  b                                           ; $7f5d: $88
	adc  b                                           ; $7f5e: $88
	adc  b                                           ; $7f5f: $88
	adc  b                                           ; $7f60: $88
	adc  b                                           ; $7f61: $88
	ld   a, b                                        ; $7f62: $78
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
	adc  c                                           ; $7f74: $89
	add  a                                           ; $7f75: $87
	adc  b                                           ; $7f76: $88
	adc  b                                           ; $7f77: $88
	adc  b                                           ; $7f78: $88
	adc  b                                           ; $7f79: $88
	adc  b                                           ; $7f7a: $88
	sbc  b                                           ; $7f7b: $98
	ld   [hl], a                                     ; $7f7c: $77
	adc  c                                           ; $7f7d: $89
	add  a                                           ; $7f7e: $87
	adc  b                                           ; $7f7f: $88
	adc  c                                           ; $7f80: $89
	sbc  b                                           ; $7f81: $98
	add  a                                           ; $7f82: $87
	adc  b                                           ; $7f83: $88
	sbc  c                                           ; $7f84: $99
	add  a                                           ; $7f85: $87
	adc  b                                           ; $7f86: $88
	sbc  b                                           ; $7f87: $98
	ld   [hl], a                                     ; $7f88: $77
	adc  b                                           ; $7f89: $88
	sbc  b                                           ; $7f8a: $98
	adc  b                                           ; $7f8b: $88
	adc  b                                           ; $7f8c: $88
	adc  b                                           ; $7f8d: $88
	adc  b                                           ; $7f8e: $88
	adc  b                                           ; $7f8f: $88
	adc  c                                           ; $7f90: $89
	adc  b                                           ; $7f91: $88
	adc  b                                           ; $7f92: $88
	sbc  b                                           ; $7f93: $98
	adc  b                                           ; $7f94: $88
	adc  c                                           ; $7f95: $89
	sbc  b                                           ; $7f96: $98
	add  a                                           ; $7f97: $87
	adc  b                                           ; $7f98: $88
	adc  c                                           ; $7f99: $89
	add  a                                           ; $7f9a: $87
	adc  b                                           ; $7f9b: $88
	adc  b                                           ; $7f9c: $88
	adc  b                                           ; $7f9d: $88
	adc  b                                           ; $7f9e: $88
	adc  b                                           ; $7f9f: $88
	adc  b                                           ; $7fa0: $88
	ld   a, b                                        ; $7fa1: $78
	adc  b                                           ; $7fa2: $88
	adc  b                                           ; $7fa3: $88
	adc  b                                           ; $7fa4: $88
	sbc  c                                           ; $7fa5: $99
	adc  b                                           ; $7fa6: $88
	adc  b                                           ; $7fa7: $88
	sbc  c                                           ; $7fa8: $99
	adc  b                                           ; $7fa9: $88
	adc  b                                           ; $7faa: $88
	adc  c                                           ; $7fab: $89
	adc  b                                           ; $7fac: $88
	adc  b                                           ; $7fad: $88
	adc  b                                           ; $7fae: $88
	adc  b                                           ; $7faf: $88
	adc  b                                           ; $7fb0: $88
	adc  b                                           ; $7fb1: $88
	adc  b                                           ; $7fb2: $88
	add  a                                           ; $7fb3: $87
	adc  c                                           ; $7fb4: $89
	sbc  c                                           ; $7fb5: $99
	add  a                                           ; $7fb6: $87
	adc  c                                           ; $7fb7: $89
	sbc  b                                           ; $7fb8: $98
	adc  b                                           ; $7fb9: $88
	adc  b                                           ; $7fba: $88
	adc  b                                           ; $7fbb: $88
	adc  b                                           ; $7fbc: $88
	adc  b                                           ; $7fbd: $88
	adc  b                                           ; $7fbe: $88
	adc  b                                           ; $7fbf: $88
	adc  b                                           ; $7fc0: $88
	adc  b                                           ; $7fc1: $88
	sbc  b                                           ; $7fc2: $98
	adc  b                                           ; $7fc3: $88
	adc  b                                           ; $7fc4: $88
	sbc  b                                           ; $7fc5: $98
	adc  b                                           ; $7fc6: $88
	adc  b                                           ; $7fc7: $88
	adc  b                                           ; $7fc8: $88
	adc  b                                           ; $7fc9: $88
	adc  b                                           ; $7fca: $88
	adc  b                                           ; $7fcb: $88
	sbc  b                                           ; $7fcc: $98
	adc  b                                           ; $7fcd: $88
	adc  b                                           ; $7fce: $88
	adc  b                                           ; $7fcf: $88
	adc  b                                           ; $7fd0: $88
	sbc  b                                           ; $7fd1: $98
	adc  b                                           ; $7fd2: $88
	adc  b                                           ; $7fd3: $88
	adc  b                                           ; $7fd4: $88
	adc  b                                           ; $7fd5: $88
	adc  b                                           ; $7fd6: $88
	adc  b                                           ; $7fd7: $88
	adc  b                                           ; $7fd8: $88
	adc  b                                           ; $7fd9: $88
	adc  b                                           ; $7fda: $88
	adc  b                                           ; $7fdb: $88
	adc  b                                           ; $7fdc: $88
	adc  b                                           ; $7fdd: $88
	adc  b                                           ; $7fde: $88
	adc  b                                           ; $7fdf: $88
	adc  b                                           ; $7fe0: $88
	adc  b                                           ; $7fe1: $88
	adc  b                                           ; $7fe2: $88
	adc  b                                           ; $7fe3: $88
	adc  b                                           ; $7fe4: $88
	adc  b                                           ; $7fe5: $88
	adc  b                                           ; $7fe6: $88
	adc  b                                           ; $7fe7: $88
	adc  b                                           ; $7fe8: $88
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
