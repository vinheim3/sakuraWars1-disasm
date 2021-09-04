; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0fa", ROMX[$4000], BANK[$fa]

	ld   hl, $6b15                                   ; $4000: $21 $15 $6b
	rst  $38                                         ; $4003: $ff
	db   $fd                                         ; $4004: $fd
	cp   d                                           ; $4005: $ba
	sbc  e                                           ; $4006: $9b
	cp   h                                           ; $4007: $bc
	res  5, b                                        ; $4008: $cb $a8
	ld   h, [hl]                                     ; $400a: $66
	ld   d, l                                        ; $400b: $55
	ld   d, l                                        ; $400c: $55
	ld   d, d                                        ; $400d: $52
	ld   de, $1711                                   ; $400e: $11 $11 $17
	adc  $ff                                         ; $4011: $ce $ff
	rst  $38                                         ; $4013: $ff
	add  a                                           ; $4014: $87
	ld   de, $7831                                   ; $4015: $11 $31 $78
	cp   [hl]                                        ; $4018: $be
	rst  JumpTable                                         ; $4019: $df
	db   $ed                                         ; $401a: $ed
	db   $db                                         ; $401b: $db
	jp   z, Jump_0fa_7799                            ; $401c: $ca $99 $77

	ld   h, h                                        ; $401f: $64
	ld   d, c                                        ; $4020: $51
	ld   de, $1311                                   ; $4021: $11 $11 $13
	xor  a                                           ; $4024: $af
	rst  $38                                         ; $4025: $ff
	db   $fc                                         ; $4026: $fc
	or   l                                           ; $4027: $b5
	ld   d, d                                        ; $4028: $52
	scf                                              ; $4029: $37
	ld   e, c                                        ; $402a: $59
	xor  d                                           ; $402b: $aa
	cp   d                                           ; $402c: $ba
	cp   h                                           ; $402d: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $402e: $cf
	rst  $38                                         ; $402f: $ff
	db   $eb                                         ; $4030: $eb
	and  a                                           ; $4031: $a7
	ld   h, l                                        ; $4032: $65
	ld   d, [hl]                                     ; $4033: $56
	ld   b, e                                        ; $4034: $43
	ld   de, $1311                                   ; $4035: $11 $11 $13
	rst  JumpTable                                         ; $4038: $df
	rst  $38                                         ; $4039: $ff
	rst  $38                                         ; $403a: $ff
	or   h                                           ; $403b: $b4
	ld   sp, $4b13                                   ; $403c: $31 $13 $4b
	cp   l                                           ; $403f: $bd
	db   $fd                                         ; $4040: $fd
	db   $ed                                         ; $4041: $ed
	db   $dd                                         ; $4042: $dd
	sbc  $cb                                         ; $4043: $de $cb
	and  a                                           ; $4045: $a7
	ld   [hl], l                                     ; $4046: $75
	ld   b, h                                        ; $4047: $44
	ld   bc, $1111                                   ; $4048: $01 $11 $11
	ld   c, l                                        ; $404b: $4d
	rst  $38                                         ; $404c: $ff
	rst  $38                                         ; $404d: $ff
	reti                                             ; $404e: $d9


	ld   b, l                                        ; $404f: $45
	inc  d                                           ; $4050: $14
	ld   h, l                                        ; $4051: $65
	sbc  d                                           ; $4052: $9a
	xor  h                                           ; $4053: $ac
	cp   l                                           ; $4054: $bd
	sbc  $fe                                         ; $4055: $de $fe
	db   $fd                                         ; $4057: $fd
	xor  c                                           ; $4058: $a9
	ld   [hl], a                                     ; $4059: $77
	ld   h, [hl]                                     ; $405a: $66
	ld   d, d                                        ; $405b: $52
	ld   de, $1111                                   ; $405c: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $405f: $cf
	rst  $38                                         ; $4060: $ff
	rst  $38                                         ; $4061: $ff
	or   d                                           ; $4062: $b2
	ld   sp, $4b15                                   ; $4063: $31 $15 $4b
	set  5, e                                        ; $4066: $cb $eb
	call c, $efcf                                    ; $4068: $dc $cf $ef
	db   $eb                                         ; $406b: $eb
	or   a                                           ; $406c: $b7
	ld   h, l                                        ; $406d: $65
	ld   b, l                                        ; $406e: $45
	ld   de, $1111                                   ; $406f: $11 $11 $11
	inc  e                                           ; $4072: $1c
	rst  $38                                         ; $4073: $ff
	rst  $38                                         ; $4074: $ff
	ei                                               ; $4075: $fb
	ld   [de], a                                     ; $4076: $12
	ld   de, $bc43                                   ; $4077: $11 $43 $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $407a: $cf
	call $fecd                                       ; $407b: $cd $cd $fe
	cp   $cb                                         ; $407e: $fe $cb
	ld   d, l                                        ; $4080: $55
	ld   b, e                                        ; $4081: $43
	ld   d, c                                        ; $4082: $51
	ld   de, $1111                                   ; $4083: $11 $11 $11
	rst  JumpTable                                         ; $4086: $df
	rst  $38                                         ; $4087: $ff
	rst  $38                                         ; $4088: $ff
	sub  d                                           ; $4089: $92
	ld   sp, $3b14                                   ; $408a: $31 $14 $3b
	cp   h                                           ; $408d: $bc
	db   $ec                                         ; $408e: $ec
	db   $ed                                         ; $408f: $ed
	rst  $28                                         ; $4090: $ef
	rst  $28                                         ; $4091: $ef
	jp   c, Jump_0fa_6495                            ; $4092: $da $95 $64

	ld   d, l                                        ; $4095: $55
	ld   de, $1111                                   ; $4096: $11 $11 $11
	rra                                              ; $4099: $1f
	rst  $38                                         ; $409a: $ff
	rst  $38                                         ; $409b: $ff
	or   $11                                         ; $409c: $f6 $11
	ld   [de], a                                     ; $409e: $12
	ld   d, [hl]                                     ; $409f: $56
	ei                                               ; $40a0: $fb
	call c, $aead                                    ; $40a1: $dc $ad $ae
	rst  $38                                         ; $40a4: $ff
	db   $fd                                         ; $40a5: $fd
	or   a                                           ; $40a6: $b7
	dec  [hl]                                        ; $40a7: $35
	dec  h                                           ; $40a8: $25
	ld   d, c                                        ; $40a9: $51
	ld   de, $1411                                   ; $40aa: $11 $11 $14
	rst  $38                                         ; $40ad: $ff
	rst  $38                                         ; $40ae: $ff
	rst  $38                                         ; $40af: $ff
	ld   de, $5411                                   ; $40b0: $11 $11 $54
	xor  a                                           ; $40b3: $af
	cp   a                                           ; $40b4: $bf
	cp   e                                           ; $40b5: $bb
	ret                                              ; $40b6: $c9


	rst  $38                                         ; $40b7: $ff
	rst  $38                                         ; $40b8: $ff
	xor  e                                           ; $40b9: $ab
	ld   d, h                                        ; $40ba: $54
	ld   d, d                                        ; $40bb: $52
	ld   [hl], h                                     ; $40bc: $74
	ld   de, $1111                                   ; $40bd: $11 $11 $11
	adc  a                                           ; $40c0: $8f
	rst  $38                                         ; $40c1: $ff
	rst  $38                                         ; $40c2: $ff
	pop  bc                                          ; $40c3: $c1
	ld   de, $6d18                                   ; $40c4: $11 $18 $6d
	ei                                               ; $40c7: $fb
	rst  $20                                         ; $40c8: $e7
	cp   e                                           ; $40c9: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40ca: $cf
	rst  $38                                         ; $40cb: $ff
	ld   sp, hl                                      ; $40cc: $f9
	sub  c                                           ; $40cd: $91
	ld   b, h                                        ; $40ce: $44
	ld   c, d                                        ; $40cf: $4a
	ld   b, c                                        ; $40d0: $41
	ld   de, $1f11                                   ; $40d1: $11 $11 $1f
	rst  $38                                         ; $40d4: $ff
	rst  $38                                         ; $40d5: $ff
	push hl                                          ; $40d6: $e5
	ld   de, $c911                                   ; $40d7: $11 $11 $c9
	db   $fd                                         ; $40da: $fd
	cp   e                                           ; $40db: $bb
	ld   e, e                                        ; $40dc: $5b
	xor  a                                           ; $40dd: $af
	rst  $38                                         ; $40de: $ff
	ei                                               ; $40df: $fb
	add  l                                           ; $40e0: $85
	dec  d                                           ; $40e1: $15
	ld   b, a                                        ; $40e2: $47
	sub  d                                           ; $40e3: $92
	ld   de, $1411                                   ; $40e4: $11 $11 $14
	rst  $38                                         ; $40e7: $ff
	rst  $38                                         ; $40e8: $ff
	ld   a, [$1111]                                  ; $40e9: $fa $11 $11
	cp   l                                           ; $40ec: $bd
	rst  $38                                         ; $40ed: $ff
	adc  e                                           ; $40ee: $8b
	ld   b, l                                        ; $40ef: $45
	sbc  $ff                                         ; $40f0: $de $ff
	rst  $38                                         ; $40f2: $ff
	ld   d, l                                        ; $40f3: $55
	ld   [de], a                                     ; $40f4: $12
	add  a                                           ; $40f5: $87
	rst  $10                                         ; $40f6: $d7
	ld   de, $1111                                   ; $40f7: $11 $11 $11
	rst  $38                                         ; $40fa: $ff
	rst  $38                                         ; $40fb: $ff
	ld   sp, hl                                      ; $40fc: $f9
	ld   de, $5f11                                   ; $40fd: $11 $11 $5f
	rst  $28                                         ; $4100: $ef
	sub  l                                           ; $4101: $95
	ld   d, c                                        ; $4102: $51
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4103: $cf
	rst  $38                                         ; $4104: $ff
	rst  $38                                         ; $4105: $ff
	ld   d, d                                        ; $4106: $52
	ld   de, $ebaa                                   ; $4107: $11 $aa $eb
	ld   hl, $1111                                   ; $410a: $21 $11 $11
	cp   a                                           ; $410d: $bf
	rst  $38                                         ; $410e: $ff
	rst  $30                                         ; $410f: $f7
	ld   de, $2f12                                   ; $4110: $11 $12 $2f
	rst  $38                                         ; $4113: $ff
	or   c                                           ; $4114: $b1
	ld   hl, $ff6f                                   ; $4115: $21 $6f $ff
	rst  $38                                         ; $4118: $ff
	ld   [hl], c                                     ; $4119: $71
	ld   de, $ff7f                                   ; $411a: $11 $7f $ff
	ld   d, c                                        ; $411d: $51
	ld   de, $8f11                                   ; $411e: $11 $11 $8f
	rst  $38                                         ; $4121: $ff
	ld   hl, sp+$11                                  ; $4122: $f8 $11
	ld   d, $8f                                      ; $4124: $16 $8f
	ld   a, [$1481]                                  ; $4126: $fa $81 $14
	ld   l, a                                        ; $4129: $6f
	rst  $38                                         ; $412a: $ff
	ld   a, [$1661]                                  ; $412b: $fa $61 $16
	sbc  a                                           ; $412e: $9f
	rst  $38                                         ; $412f: $ff
	ld   h, c                                        ; $4130: $61
	ld   de, $8f11                                   ; $4131: $11 $11 $8f
	rst  $38                                         ; $4134: $ff
	rst  $38                                         ; $4135: $ff
	ld   de, $e811                                   ; $4136: $11 $11 $e8
	ld   hl, sp+$41                                  ; $4139: $f8 $41
	ld   d, $9f                                      ; $413b: $16 $9f
	rst  $38                                         ; $413d: $ff
	ld   sp, hl                                      ; $413e: $f9
	ld   sp, $af18                                   ; $413f: $31 $18 $af
	ei                                               ; $4142: $fb
	add  c                                           ; $4143: $81
	ld   de, $bf11                                   ; $4144: $11 $11 $bf
	rst  $38                                         ; $4147: $ff
	ld   a, [$1611]                                  ; $4148: $fa $11 $16
	cp   $f5                                         ; $414b: $fe $f5
	ld   de, $ff18                                   ; $414d: $11 $18 $ff
	rst  $38                                         ; $4150: $ff
	ldh  a, [c]                                      ; $4151: $f2
	ld   [de], a                                     ; $4152: $12
	ccf                                              ; $4153: $3f
	rst  $38                                         ; $4154: $ff
	push af                                          ; $4155: $f5
	ld   hl, $1111                                   ; $4156: $21 $11 $11
	rst  $38                                         ; $4159: $ff
	rst  $38                                         ; $415a: $ff
	ei                                               ; $415b: $fb
	ld   d, $17                                      ; $415c: $16 $17
	ld   sp, hl                                      ; $415e: $f9
	pop  af                                          ; $415f: $f1
	ld   de, $ff1f                                   ; $4160: $11 $1f $ff
	rst  $38                                         ; $4163: $ff
	pop  de                                          ; $4164: $d1
	rlca                                             ; $4165: $07
	ld   a, a                                        ; $4166: $7f
	rst  $38                                         ; $4167: $ff
	or   c                                           ; $4168: $b1

Call_0fa_4169:
	ld   de, $1b11                                   ; $4169: $11 $11 $1b
	rst  JumpTable                                         ; $416c: $df
	rst  $38                                         ; $416d: $ff
	ldh  a, [c]                                      ; $416e: $f2
	dec  d                                           ; $416f: $15
	rra                                              ; $4170: $1f
	cp   c                                           ; $4171: $b9
	and  c                                           ; $4172: $a1
	ld   sp, $ff7f                                   ; $4173: $31 $7f $ff
	db   $fd                                         ; $4176: $fd
	ld   d, c                                        ; $4177: $51
	ld   [hl], a                                     ; $4178: $77
	rst  $38                                         ; $4179: $ff
	rst  $28                                         ; $417a: $ef
	ld   hl, $1111                                   ; $417b: $21 $11 $11

jr_0fa_417e:
	rra                                              ; $417e: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $417f: $cf
	rst  $38                                         ; $4180: $ff
	pop  af                                          ; $4181: $f1
	add  e                                           ; $4182: $83
	rra                                              ; $4183: $1f
	add  hl, hl                                      ; $4184: $29
	ld   de, $ff61                                   ; $4185: $11 $61 $ff
	rst  $38                                         ; $4188: $ff
	sbc  d                                           ; $4189: $9a
	inc  de                                          ; $418a: $13
	db   $ec                                         ; $418b: $ec
	db   $fd                                         ; $418c: $fd
	sbc  b                                           ; $418d: $98
	inc  de                                          ; $418e: $13
	ld   de, $1a11                                   ; $418f: $11 $11 $1a
	rst  $38                                         ; $4192: $ff
	rst  $38                                         ; $4193: $ff
	or   c                                           ; $4194: $b1
	sub  c                                           ; $4195: $91
	ld   a, l                                        ; $4196: $7d
	ld   l, h                                        ; $4197: $6c
	ld   de, $ff34                                   ; $4198: $11 $34 $ff
	rst  $38                                         ; $419b: $ff
	ld   h, [hl]                                     ; $419c: $66
	jr   jr_0fa_417e                                 ; $419d: $18 $df

	ld   a, [$11b1]                                  ; $419f: $fa $b1 $11
	ld   de, $fc11                                   ; $41a2: $11 $11 $fc
	rst  $38                                         ; $41a5: $ff
	rst  $38                                         ; $41a6: $ff
	dec  d                                           ; $41a7: $15
	ld   d, c                                        ; $41a8: $51
	push af                                          ; $41a9: $f5
	sub  c                                           ; $41aa: $91
	add  hl, de                                      ; $41ab: $19
	ld   c, a                                        ; $41ac: $4f
	rst  $38                                         ; $41ad: $ff
	pop  af                                          ; $41ae: $f1
	ld   d, d                                        ; $41af: $52
	ld   e, a                                        ; $41b0: $5f
	rst  $38                                         ; $41b1: $ff
	and  h                                           ; $41b2: $a4
	ld   h, c                                        ; $41b3: $61
	ld   hl, $1e11                                   ; $41b4: $21 $11 $1e
	rst  $38                                         ; $41b7: $ff
	rst  $38                                         ; $41b8: $ff
	pop  af                                          ; $41b9: $f1
	ld   d, $1f                                      ; $41ba: $16 $1f
	ld   l, e                                        ; $41bc: $6b
	ld   de, $ff84                                   ; $41bd: $11 $84 $ff
	rst  $38                                         ; $41c0: $ff
	ld   de, $ff15                                   ; $41c1: $11 $15 $ff
	ld   sp, hl                                      ; $41c4: $f9
	inc  d                                           ; $41c5: $14
	rla                                              ; $41c6: $17
	ld   de, $2f11                                   ; $41c7: $11 $11 $2f
	rst  $38                                         ; $41ca: $ff
	rst  $38                                         ; $41cb: $ff
	ld   de, hScriptOpcodeParams+1                                   ; $41cc: $11 $a1 $ff
	ld   d, c                                        ; $41cf: $51
	ld   de, $ffbf                                   ; $41d0: $11 $bf $ff
	pop  af                                          ; $41d3: $f1
	ld   [de], a                                     ; $41d4: $12
	ld   l, a                                        ; $41d5: $6f

jr_0fa_41d6:
	rst  $38                                         ; $41d6: $ff
	or   c                                           ; $41d7: $b1
	inc  [hl]                                        ; $41d8: $34
	sub  l                                           ; $41d9: $95
	ld   de, rAUD1LEN                                   ; $41da: $11 $11 $ff
	rst  $38                                         ; $41dd: $ff
	or   c                                           ; $41de: $b1
	ld   e, $af                                      ; $41df: $1e $af
	pop  hl                                          ; $41e1: $e1
	ld   de, $ff2f                                   ; $41e2: $11 $2f $ff
	ld   a, [$af11]                                  ; $41e5: $fa $11 $af
	rst  $38                                         ; $41e8: $ff
	halt                                             ; $41e9: $76
	ld   a, [de]                                     ; $41ea: $1a
	call c, $1121                                    ; $41eb: $dc $21 $11
	ld   e, a                                        ; $41ee: $5f
	rst  $38                                         ; $41ef: $ff
	pop  de                                          ; $41f0: $d1
	ld   de, $f5ff                                   ; $41f1: $11 $ff $f5
	ld   de, $ff1f                                   ; $41f4: $11 $1f $ff
	db   $f4                                         ; $41f7: $f4
	ld   de, $ff2f                                   ; $41f8: $11 $2f $ff

Call_0fa_41fb:
	ld   hl, $ff68                                   ; $41fb: $21 $68 $ff
	sub  c                                           ; $41fe: $91
	ld   de, $ff1f                                   ; $41ff: $11 $1f $ff
	pop  af                                          ; $4202: $f1
	ld   de, $f74f                                   ; $4203: $11 $4f $f7
	ld   de, rAUD1LEN                                   ; $4206: $11 $11 $ff
	ld   a, [$9f14]                                  ; $4209: $fa $14 $9f
	ei                                               ; $420c: $fb
	ld   sp, $ff1f                                   ; $420d: $31 $1f $ff
	sub  c                                           ; $4210: $91
	ld   de, rAUD1LEN                                   ; $4211: $11 $11 $ff
	rst  $38                                         ; $4214: $ff
	jr   jr_0fa_41d6                                 ; $4215: $18 $bf

	pop  af                                          ; $4217: $f1
	ld   de, $ff1d                                   ; $4218: $11 $1d $ff
	or   $12                                         ; $421b: $f6 $12
	rst  $38                                         ; $421d: $ff
	ld   sp, hl                                      ; $421e: $f9
	ld   de, $ff1f                                   ; $421f: $11 $1f $ff
	pop  bc                                          ; $4222: $c1
	ld   de, $1f11                                   ; $4223: $11 $11 $1f
	rst  $38                                         ; $4226: $ff
	or   $fb                                         ; $4227: $f6 $fb
	rst  $38                                         ; $4229: $ff
	ld   de, $ba12                                   ; $422a: $11 $12 $ba
	cp   $ca                                         ; $422d: $fe $ca
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $422f: $cf
	sub  a                                           ; $4230: $97
	ld   sp, $ff38                                   ; $4231: $31 $38 $ff
	rst  $30                                         ; $4234: $f7
	ld   de, $1111                                   ; $4235: $11 $11 $11
	rst  $38                                         ; $4238: $ff
	rst  $38                                         ; $4239: $ff
	ld   c, a                                        ; $423a: $4f
	ld   l, a                                        ; $423b: $6f
	pop  af                                          ; $423c: $f1
	ld   de, $df4c                                   ; $423d: $11 $4c $df
	db   $dd                                         ; $4240: $dd
	ld   a, h                                        ; $4241: $7c
	ld   a, [$1271]                                  ; $4242: $fa $71 $12
	adc  a                                           ; $4245: $8f
	rst  $38                                         ; $4246: $ff
	ld   d, c                                        ; $4247: $51
	ld   de, $1f11                                   ; $4248: $11 $11 $1f
	rst  $38                                         ; $424b: $ff
	rst  $30                                         ; $424c: $f7
	ld   hl, sp-$51                                  ; $424d: $f8 $af
	ld   de, $d811                                   ; $424f: $11 $11 $d8
	cp   $eb                                         ; $4252: $fe $eb
	xor  a                                           ; $4254: $af
	sub  [hl]                                        ; $4255: $96
	ld   de, $ff37                                   ; $4256: $11 $37 $ff
	rst  $30                                         ; $4259: $f7
	ld   de, $1111                                   ; $425a: $11 $11 $11
	rst  $28                                         ; $425d: $ef
	rst  $38                                         ; $425e: $ff
	xor  a                                           ; $425f: $af
	push bc                                          ; $4260: $c5
	pop  af                                          ; $4261: $f1
	ld   de, $6f1f                                   ; $4262: $11 $1f $6f
	db   $fd                                         ; $4265: $fd
	jp   hl                                          ; $4266: $e9


	ld   a, [$1531]                                  ; $4267: $fa $31 $15
	ld   a, a                                        ; $426a: $7f
	rst  $38                                         ; $426b: $ff
	and  c                                           ; $426c: $a1
	ld   de, $1211                                   ; $426d: $11 $11 $12
	rst  $38                                         ; $4270: $ff
	rst  $38                                         ; $4271: $ff
	xor  a                                           ; $4272: $af
	ld   c, a                                        ; $4273: $4f
	ld   h, c                                        ; $4274: $61
	ld   de, $ffea                                   ; $4275: $11 $ea $ff
	xor  a                                           ; $4278: $af
	xor  a                                           ; $4279: $af
	pop  af                                          ; $427a: $f1
	ld   de, $ff47                                   ; $427b: $11 $47 $ff
	rst  $38                                         ; $427e: $ff
	ld   sp, $1111                                   ; $427f: $31 $11 $11
	add  hl, de                                      ; $4282: $19
	rst  $38                                         ; $4283: $ff
	ei                                               ; $4284: $fb
	xor  a                                           ; $4285: $af
	adc  a                                           ; $4286: $8f
	ld   de, $fd11                                   ; $4287: $11 $11 $fd
	rst  $38                                         ; $428a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $428b: $cf
	rst  $28                                         ; $428c: $ef
	add  c                                           ; $428d: $81
	ld   de, $ff9c                                   ; $428e: $11 $9c $ff
	ei                                               ; $4291: $fb
	ld   d, e                                        ; $4292: $53
	ld   de, $1f11                                   ; $4293: $11 $11 $1f
	rst  $38                                         ; $4296: $ff
	or   $df                                         ; $4297: $f6 $df
	adc  a                                           ; $4299: $8f
	ld   de, $fa11                                   ; $429a: $11 $11 $fa
	cp   $df                                         ; $429d: $fe $df
	rst  JumpTable                                         ; $429f: $df
	ld   hl, wTitleScreenFrameCounter+1                                   ; $42a0: $21 $11 $cc
	rst  $38                                         ; $42a3: $ff
	cp   $84                                         ; $42a4: $fe $84
	ld   de, $1811                                   ; $42a6: $11 $11 $18
	rst  $38                                         ; $42a9: $ff
	ld   a, [$5f9f]                                  ; $42aa: $fa $9f $5f
	ld   de, $fc11                                   ; $42ad: $11 $11 $fc
	rst  $38                                         ; $42b0: $ff
	cp   a                                           ; $42b1: $bf
	rst  $28                                         ; $42b2: $ef
	ld   d, c                                        ; $42b3: $51
	ld   de, $ffcc                                   ; $42b4: $11 $cc $ff
	db   $ed                                         ; $42b7: $ed
	sub  [hl]                                        ; $42b8: $96
	ld   de, $1111                                   ; $42b9: $11 $11 $11
	rst  $38                                         ; $42bc: $ff
	rst  $38                                         ; $42bd: $ff
	ccf                                              ; $42be: $3f
	ld   l, a                                        ; $42bf: $6f
	and  c                                           ; $42c0: $a1
	ld   de, sRandomSeed                                   ; $42c1: $11 $ff $bf
	sbc  a                                           ; $42c4: $9f
	rst  JumpTable                                         ; $42c5: $df
	pop  bc                                          ; $42c6: $c1
	ld   de, $ffad                                   ; $42c7: $11 $ad $ff
	rst  JumpTable                                         ; $42ca: $df
	ei                                               ; $42cb: $fb
	ld   de, $1111                                   ; $42cc: $11 $11 $11
	ld   e, a                                        ; $42cf: $5f
	rst  $38                                         ; $42d0: $ff
	jp   hl                                          ; $42d1: $e9


	pop  af                                          ; $42d2: $f1
	pop  af                                          ; $42d3: $f1
	ld   de, $de1f                                   ; $42d4: $11 $1f $de
	ei                                               ; $42d7: $fb
	ei                                               ; $42d8: $fb
	or   $11                                         ; $42d9: $f6 $11
	ld   e, $df                                      ; $42db: $1e $df
	db   $fc                                         ; $42dd: $fc
	db   $fd                                         ; $42de: $fd
	add  c                                           ; $42df: $81
	ld   de, $1111                                   ; $42e0: $11 $11 $11
	rst  $38                                         ; $42e3: $ff
	rst  $38                                         ; $42e4: $ff
	rra                                              ; $42e5: $1f
	rra                                              ; $42e6: $1f
	pop  bc                                          ; $42e7: $c1
	ld   de, $efff                                   ; $42e8: $11 $ff $ef
	adc  [hl]                                        ; $42eb: $8e
	cp   a                                           ; $42ec: $bf
	pop  bc                                          ; $42ed: $c1
	ld   de, $ffdf                                   ; $42ee: $11 $df $ff
	call Call_0fa_41fb                               ; $42f1: $cd $fb $41
	ld   de, $1f11                                   ; $42f4: $11 $11 $1f
	rst  $38                                         ; $42f7: $ff
	pop  af                                          ; $42f8: $f1
	ld   a, [hl+]                                    ; $42f9: $2a
	ccf                                              ; $42fa: $3f
	ld   de, $ff16                                   ; $42fb: $11 $16 $ff
	db   $fd                                         ; $42fe: $fd
	ld   e, h                                        ; $42ff: $5c
	cp   a                                           ; $4300: $bf
	ld   de, rAUD1HIGH                                   ; $4301: $11 $14 $ff
	rst  $38                                         ; $4304: $ff
	adc  l                                           ; $4305: $8d
	cp   e                                           ; $4306: $bb
	ld   de, $1111                                   ; $4307: $11 $11 $11
	rra                                              ; $430a: $1f
	rst  $38                                         ; $430b: $ff
	pop  af                                          ; $430c: $f1
	dec  de                                          ; $430d: $1b
	ld   c, a                                        ; $430e: $4f
	ld   de, $ff17                                   ; $430f: $11 $17 $ff
	ei                                               ; $4312: $fb
	ld   c, h                                        ; $4313: $4c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4314: $cf
	ld   sp, $ff16                                   ; $4315: $31 $16 $ff
	rst  $38                                         ; $4318: $ff
	ld   l, h                                        ; $4319: $6c
	call $1121                                       ; $431a: $cd $21 $11
	ld   de, rAUD1LEN                                   ; $431d: $11 $11 $ff
	ld   sp, hl                                      ; $4320: $f9
	ld   d, $6e                                      ; $4321: $16 $6e
	pop  af                                          ; $4323: $f1
	ld   de, $eeff                                   ; $4324: $11 $ff $ee
	ld   d, l                                        ; $4327: $55
	xor  a                                           ; $4328: $af
	pop  af                                          ; $4329: $f1
	ld   de, $ffdf                                   ; $432a: $11 $df $ff
	sub  l                                           ; $432d: $95
	xor  l                                           ; $432e: $ad
	pop  bc                                          ; $432f: $c1
	ld   de, $1111                                   ; $4330: $11 $11 $11
	rra                                              ; $4333: $1f
	rst  $38                                         ; $4334: $ff
	ld   h, c                                        ; $4335: $61
	jp   $11ff                                       ; $4336: $c3 $ff $11


	rra                                              ; $4339: $1f
	db   $fd                                         ; $433a: $fd
	ldh  a, [c]                                      ; $433b: $f2
	ld   l, e                                        ; $433c: $6b
	rst  $38                                         ; $433d: $ff
	ld   de, $ff1e                                   ; $433e: $11 $1e $ff
	ld   sp, hl                                      ; $4341: $f9
	ld   e, d                                        ; $4342: $5a
	xor  h                                           ; $4343: $ac
	ld   de, $1111                                   ; $4344: $11 $11 $11
	ld   de, $f7ff                                   ; $4347: $11 $ff $f7
	jr   @+$50                                       ; $434a: $18 $4e

	pop  af                                          ; $434c: $f1
	ld   de, $cfff                                   ; $434d: $11 $ff $cf
	ld   h, e                                        ; $4350: $63
	sbc  [hl]                                        ; $4351: $9e
	pop  af                                          ; $4352: $f1
	ld   de, $ff8f                                   ; $4353: $11 $8f $ff
	pop  de                                          ; $4356: $d1
	ld   l, b                                        ; $4357: $68
	or   $11                                         ; $4358: $f6 $11
	ld   de, $1f11                                   ; $435a: $11 $11 $1f
	rst  $38                                         ; $435d: $ff
	pop  af                                          ; $435e: $f1
	dec  d                                           ; $435f: $15
	ld   e, a                                        ; $4360: $5f
	ld   b, c                                        ; $4361: $41
	ld   [de], a                                     ; $4362: $12
	rst  $38                                         ; $4363: $ff
	cp   $34                                         ; $4364: $fe $34
	ld   l, a                                        ; $4366: $6f
	pop  af                                          ; $4367: $f1
	ld   de, $ffef                                   ; $4368: $11 $ef $ff
	ld   h, e                                        ; $436b: $63
	add  hl, de                                      ; $436c: $19
	push bc                                          ; $436d: $c5
	ld   sp, $1111                                   ; $436e: $31 $11 $11
	rra                                              ; $4371: $1f
	rst  $38                                         ; $4372: $ff
	sub  c                                           ; $4373: $91
	add  c                                           ; $4374: $81
	rst  JumpTable                                         ; $4375: $df
	ld   de, $fe1d                                   ; $4376: $11 $1d $fe
	ei                                               ; $4379: $fb
	ld   d, c                                        ; $437a: $51
	ld   e, a                                        ; $437b: $5f
	and  l                                           ; $437c: $a5
	ld   [hl+], a                                    ; $437d: $22
	call Call_0fa_51ff                               ; $437e: $cd $ff $51
	dec  de                                          ; $4381: $1b
	and  a                                           ; $4382: $a7
	ld   b, c                                        ; $4383: $41
	ld   de, rAUD1LEN                                   ; $4384: $11 $11 $ff
	rst  $38                                         ; $4387: $ff
	ld   de, $f941                                   ; $4388: $11 $41 $f9
	ld   de, $ef1f                                   ; $438b: $11 $1f $ef
	rst  $30                                         ; $438e: $f7
	ld   b, c                                        ; $438f: $41
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4390: $cf
	sbc  e                                           ; $4391: $9b
	inc  d                                           ; $4392: $14
	ld   a, a                                        ; $4393: $7f
	cp   $81                                         ; $4394: $fe $81
	add  hl, de                                      ; $4396: $19
	ld   e, e                                        ; $4397: $5b

Call_0fa_4398:
	ld   sp, $1111                                   ; $4398: $31 $11 $11
	rst  $38                                         ; $439b: $ff
	rst  $38                                         ; $439c: $ff
	ld   de, $f515                                   ; $439d: $11 $15 $f5
	ld   sp, $ef1f                                   ; $43a0: $31 $1f $ef

jr_0fa_43a3:
	ld   hl, sp+$11                                  ; $43a3: $f8 $11
	xor  $eb                                         ; $43a5: $ee $eb
	inc  d                                           ; $43a7: $14
	ccf                                              ; $43a8: $3f
	rst  $38                                         ; $43a9: $ff
	and  c                                           ; $43aa: $a1
	inc  d                                           ; $43ab: $14
	ld   l, [hl]                                     ; $43ac: $6e
	ld   hl, $1111                                   ; $43ad: $21 $11 $11
	rst  $38                                         ; $43b0: $ff
	cp   $11                                         ; $43b1: $fe $11
	dec  de                                          ; $43b3: $1b
	ld   sp, hl                                      ; $43b4: $f9
	ld   sp, $ff1d                                   ; $43b5: $31 $1d $ff
	ld   a, [$bd11]                                  ; $43b8: $fa $11 $bd
	cp   $43                                         ; $43bb: $fe $43
	rra                                              ; $43bd: $1f
	rst  $38                                         ; $43be: $ff
	pop  de                                          ; $43bf: $d1
	ld   bc, $853c                                   ; $43c0: $01 $3c $85
	ld   de, rAUD1LEN                                   ; $43c3: $11 $11 $ff
	db   $fd                                         ; $43c6: $fd
	ld   de, $ff1c                                   ; $43c7: $11 $1c $ff
	ld   d, c                                        ; $43ca: $51
	ld   d, $ef                                      ; $43cb: $16 $ef
	rst  $38                                         ; $43cd: $ff
	ld   de, $ff3a                                   ; $43ce: $11 $3a $ff
	and  h                                           ; $43d1: $a4
	jr   @+$01                                       ; $43d2: $18 $ff

	ld   sp, hl                                      ; $43d4: $f9
	ld   b, c                                        ; $43d5: $41
	dec  d                                           ; $43d6: $15
	ld   h, a                                        ; $43d7: $67
	ld   de, rAUD1LEN                                   ; $43d8: $11 $11 $ff
	rst  $38                                         ; $43db: $ff
	ld   de, $ff1b                                   ; $43dc: $11 $1b $ff
	pop  hl                                          ; $43df: $e1
	ld   de, $ff6f                                   ; $43e0: $11 $6f $ff
	ld   hl, $ff01                                   ; $43e3: $21 $01 $ff
	rst  $38                                         ; $43e6: $ff
	add  hl, de                                      ; $43e7: $19
	ld   e, e                                        ; $43e8: $5b
	db   $fc                                         ; $43e9: $fc
	pop  hl                                          ; $43ea: $e1
	ld   de, $3118                                   ; $43eb: $11 $18 $31
	ld   de, $ffff                                   ; $43ee: $11 $ff $ff
	ld   h, h                                        ; $43f1: $64
	ld   a, [de]                                     ; $43f2: $1a
	set  6, c                                        ; $43f3: $cb $f1
	or   c                                           ; $43f5: $b1
	cpl                                              ; $43f6: $2f
	rst  $38                                         ; $43f7: $ff
	sub  h                                           ; $43f8: $94
	ld   h, c                                        ; $43f9: $61
	adc  e                                           ; $43fa: $8b
	rst  $38                                         ; $43fb: $ff
	sbc  [hl]                                        ; $43fc: $9e
	dec  h                                           ; $43fd: $25
	xor  e                                           ; $43fe: $ab
	ldh  a, [c]                                      ; $43ff: $f2
	ld   de, $1112                                   ; $4400: $11 $12 $11
	rla                                              ; $4403: $17
	cp   $fb                                         ; $4404: $fe $fb
	xor  c                                           ; $4406: $a9
	dec  e                                           ; $4407: $1d
	ld   e, c                                        ; $4408: $59
	or   c                                           ; $4409: $b1
	pop  hl                                          ; $440a: $e1
	adc  a                                           ; $440b: $8f
	rst  JumpTable                                         ; $440c: $df
	ld   l, e                                        ; $440d: $6b
	add  c                                           ; $440e: $81
	and  h                                           ; $440f: $a4
	rst  $38                                         ; $4410: $ff
	xor  a                                           ; $4411: $af
	ld   l, h                                        ; $4412: $6c
	sbc  b                                           ; $4413: $98
	pop  hl                                          ; $4414: $e1
	ld   b, c                                        ; $4415: $41
	ld   de, $1311                                   ; $4416: $11 $11 $13
	rst  $38                                         ; $4419: $ff
	rst  $38                                         ; $441a: $ff
	db   $fc                                         ; $441b: $fc
	rla                                              ; $441c: $17
	jr   jr_0fa_43a3                                 ; $441d: $18 $84

	di                                               ; $441f: $f3
	xor  h                                           ; $4420: $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4421: $cf
	xor  a                                           ; $4422: $af
	sub  c                                           ; $4423: $91
	ld   d, c                                        ; $4424: $51
	db   $dd                                         ; $4425: $dd
	rst  JumpTable                                         ; $4426: $df
	cp   e                                           ; $4427: $bb
	ld   b, h                                        ; $4428: $44
	add  c                                           ; $4429: $81
	ld   h, e                                        ; $442a: $63
	inc  h                                           ; $442b: $24
	ld   de, $ad11                                   ; $442c: $11 $11 $ad
	rst  $38                                         ; $442f: $ff
	rst  $38                                         ; $4430: $ff
	ld   de, $c811                                   ; $4431: $11 $11 $c8
	ld   a, [$8f29]                                  ; $4434: $fa $29 $8f
	cp   $f3                                         ; $4437: $fe $f3
	ld   de, $df2c                                   ; $4439: $11 $2c $df
	cp   $91                                         ; $443c: $fe $91
	ld   sp, $6729                                   ; $443e: $31 $29 $67
	ld   de, $3f11                                   ; $4441: $11 $11 $3f
	rst  $38                                         ; $4444: $ff
	rst  $38                                         ; $4445: $ff
	ld   sp, $8911                                   ; $4446: $31 $11 $89
	rst  $38                                         ; $4449: $ff
	jr   z, jr_0fa_44a5                              ; $444a: $28 $59

	rst  $38                                         ; $444c: $ff
	rst  $38                                         ; $444d: $ff
	ld   h, e                                        ; $444e: $63
	ld   [de], a                                     ; $444f: $12
	inc  e                                           ; $4450: $1c
	rst  $38                                         ; $4451: $ff
	ld   a, [$1441]                                  ; $4452: $fa $41 $14
	ld   b, [hl]                                     ; $4455: $46
	ld   d, c                                        ; $4456: $51
	ld   de, $ff1c                                   ; $4457: $11 $1c $ff
	rst  $38                                         ; $445a: $ff
	pop  af                                          ; $445b: $f1
	ld   de, $ef1a                                   ; $445c: $11 $1a $ef
	db   $fc                                         ; $445f: $fc
	ld   d, c                                        ; $4460: $51
	xor  e                                           ; $4461: $ab
	rst  $38                                         ; $4462: $ff
	db   $fc                                         ; $4463: $fc
	ld   de, rAUD1LEN                                   ; $4464: $11 $11 $ff
	rst  $38                                         ; $4467: $ff
	add  h                                           ; $4468: $84
	ld   de, $b613                                   ; $4469: $11 $13 $b6
	ld   sp, $4f11                                   ; $446c: $31 $11 $4f
	rst  $38                                         ; $446f: $ff
	ld   sp, hl                                      ; $4470: $f9
	ld   de, $3f11                                   ; $4471: $11 $11 $3f
	rst  $38                                         ; $4474: $ff
	push af                                          ; $4475: $f5
	inc  de                                          ; $4476: $13
	ld   e, a                                        ; $4477: $5f
	rst  $38                                         ; $4478: $ff
	ldh  [c], a                                      ; $4479: $e2
	ld   de, $ff4e                                   ; $447a: $11 $4e $ff
	db   $fc                                         ; $447d: $fc
	ld   hl, $1711                                   ; $447e: $21 $11 $17
	ld   b, e                                        ; $4481: $43
	ld   de, rAUDTERM                                   ; $4482: $11 $25 $ff
	rst  $38                                         ; $4485: $ff
	ld   h, c                                        ; $4486: $61
	ld   de, rAUD1ENV                                   ; $4487: $11 $12 $ff
	rst  $38                                         ; $448a: $ff
	xor  b                                           ; $448b: $a8
	ld   b, l                                        ; $448c: $45
	or   [hl]                                        ; $448d: $b6
	cp   d                                           ; $448e: $ba
	ld   a, c                                        ; $448f: $79
	ld   l, l                                        ; $4490: $6d
	rst  $38                                         ; $4491: $ff
	ei                                               ; $4492: $fb
	ld   [hl], c                                     ; $4493: $71
	ld   de, $5413                                   ; $4494: $11 $13 $54
	ld   hl, $9f12                                   ; $4497: $21 $12 $9f
	rst  $38                                         ; $449a: $ff
	ld   a, [$1111]                                  ; $449b: $fa $11 $11
	ld   c, a                                        ; $449e: $4f
	rst  $38                                         ; $449f: $ff
	rst  $38                                         ; $44a0: $ff
	and  a                                           ; $44a1: $a7
	ld   d, l                                        ; $44a2: $55
	inc  [hl]                                        ; $44a3: $34
	ld   d, a                                        ; $44a4: $57

jr_0fa_44a5:
	xor  h                                           ; $44a5: $ac
	rst  $38                                         ; $44a6: $ff
	rst  $38                                         ; $44a7: $ff
	and  h                                           ; $44a8: $a4
	ld   de, $4511                                   ; $44a9: $11 $11 $45
	ld   h, e                                        ; $44ac: $63
	ld   de, $ef16                                   ; $44ad: $11 $16 $ef
	rst  $38                                         ; $44b0: $ff
	pop  af                                          ; $44b1: $f1
	ld   de, $bf12                                   ; $44b2: $11 $12 $bf
	rst  $38                                         ; $44b5: $ff
	db   $fc                                         ; $44b6: $fc
	ld   h, c                                        ; $44b7: $61
	ld   [de], a                                     ; $44b8: $12
	rla                                              ; $44b9: $17
	cp   l                                           ; $44ba: $bd
	rst  $38                                         ; $44bb: $ff
	rst  $38                                         ; $44bc: $ff
	jp   c, $1151                                    ; $44bd: $da $51 $11

	ld   de, $2134                                   ; $44c0: $11 $34 $21
	ld   de, $ff5c                                   ; $44c3: $11 $5c $ff
	rst  $38                                         ; $44c6: $ff
	ld   b, c                                        ; $44c7: $41
	ld   de, $ff19                                   ; $44c8: $11 $19 $ff
	rst  $38                                         ; $44cb: $ff
	ld   sp, hl                                      ; $44cc: $f9
	ld   sp, $5a11                                   ; $44cd: $31 $11 $5a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44d0: $cf
	rst  $38                                         ; $44d1: $ff
	cp   $b3                                         ; $44d2: $fe $b3
	ld   de, $3411                                   ; $44d4: $11 $11 $34
	ld   h, e                                        ; $44d7: $63
	ld   de, $cf14                                   ; $44d8: $11 $14 $cf
	rst  $38                                         ; $44db: $ff
	or   $11                                         ; $44dc: $f6 $11
	ld   de, $ff9f                                   ; $44de: $11 $9f $ff
	cp   $51                                         ; $44e1: $fe $51
	ld   de, $cc25                                   ; $44e3: $11 $25 $cc
	rst  $38                                         ; $44e6: $ff
	rst  $38                                         ; $44e7: $ff
	db   $ec                                         ; $44e8: $ec
	ld   h, c                                        ; $44e9: $61
	ld   de, $3711                                   ; $44ea: $11 $11 $37
	ld   d, d                                        ; $44ed: $52
	ld   de, $ff18                                   ; $44ee: $11 $18 $ff
	rst  $38                                         ; $44f1: $ff
	and  c                                           ; $44f2: $a1
	ld   de, $ff17                                   ; $44f3: $11 $17 $ff
	rst  $38                                         ; $44f6: $ff
	push de                                          ; $44f7: $d5
	ld   de, $7d24                                   ; $44f8: $11 $24 $7d
	sbc  $ef                                         ; $44fb: $de $ef
	db   $fd                                         ; $44fd: $fd
	ret  z                                           ; $44fe: $c8

	ld   sp, $1211                                   ; $44ff: $31 $11 $12
	ld   b, d                                        ; $4502: $42
	ld   de, $cf17                                   ; $4503: $11 $17 $cf
	rst  $38                                         ; $4506: $ff
	ldh  a, [c]                                      ; $4507: $f2
	ld   de, $bf11                                   ; $4508: $11 $11 $bf
	rst  $38                                         ; $450b: $ff
	ei                                               ; $450c: $fb
	ld   h, l                                        ; $450d: $65
	ld   b, a                                        ; $450e: $47
	ld   b, [hl]                                     ; $450f: $46
	sub  a                                           ; $4510: $97
	xor  h                                           ; $4511: $ac
	rst  $38                                         ; $4512: $ff
	rst  $38                                         ; $4513: $ff
	ld   [hl], c                                     ; $4514: $71
	ld   de, $3711                                   ; $4515: $11 $11 $37
	ld   sp, $9f11                                   ; $4518: $31 $11 $9f
	rst  $38                                         ; $451b: $ff
	cp   $11                                         ; $451c: $fe $11
	ld   de, $ff7f                                   ; $451e: $11 $7f $ff
	cp   $41                                         ; $4521: $fe $41
	dec  h                                           ; $4523: $25
	sub  a                                           ; $4524: $97
	cp   e                                           ; $4525: $bb
	adc  e                                           ; $4526: $8b
	rst  JumpTable                                         ; $4527: $df
	rst  $38                                         ; $4528: $ff
	call nz, $1111                                   ; $4529: $c4 $11 $11
	ld   h, $51                                      ; $452c: $26 $51
	ld   de, $ff4c                                   ; $452e: $11 $4c $ff
	rst  $38                                         ; $4531: $ff
	ld   hl, $2e11                                   ; $4532: $21 $11 $2e
	rst  $38                                         ; $4535: $ff
	rst  $38                                         ; $4536: $ff
	ld   [hl], c                                     ; $4537: $71
	ld   l, b                                        ; $4538: $68
	bit  5, b                                        ; $4539: $cb $68
	inc  h                                           ; $453b: $24
	sbc  a                                           ; $453c: $9f
	rst  $38                                         ; $453d: $ff
	ei                                               ; $453e: $fb
	ld   de, $2511                                   ; $453f: $11 $11 $25
	and  a                                           ; $4542: $a7
	ld   de, $df16                                   ; $4543: $11 $16 $df
	rst  $38                                         ; $4546: $ff
	pop  af                                          ; $4547: $f1
	ld   de, $ff19                                   ; $4548: $11 $19 $ff
	rst  $38                                         ; $454b: $ff
	sub  c                                           ; $454c: $91
	ld   [de], a                                     ; $454d: $12
	xor  a                                           ; $454e: $af
	ei                                               ; $454f: $fb
	and  c                                           ; $4550: $a1
	jr   c, @+$01                                    ; $4551: $38 $ff

	rst  $38                                         ; $4553: $ff
	ld   [hl], c                                     ; $4554: $71
	ld   de, $7915                                   ; $4555: $11 $15 $79
	ld   sp, $9f11                                   ; $4558: $31 $11 $9f
	rst  $38                                         ; $455b: $ff
	rst  $38                                         ; $455c: $ff
	ld   de, $df11                                   ; $455d: $11 $11 $df
	rst  $38                                         ; $4560: $ff
	rst  ToBoot                                         ; $4561: $c7
	ld   de, $fcaf                                   ; $4562: $11 $af $fc
	ld   b, c                                        ; $4565: $41
	ld   [de], a                                     ; $4566: $12
	rst  JumpTable                                         ; $4567: $df
	rst  $38                                         ; $4568: $ff
	ldh  a, [c]                                      ; $4569: $f2
	ld   de, $9c13                                   ; $456a: $11 $13 $9c
	or   d                                           ; $456d: $b2
	ld   de, $ff19                                   ; $456e: $11 $19 $ff
	rst  $38                                         ; $4571: $ff
	and  c                                           ; $4572: $a1
	ld   de, $ff1f                                   ; $4573: $11 $1f $ff
	ldh  a, [c]                                      ; $4576: $f2
	ld   de, $ff2f                                   ; $4577: $11 $2f $ff
	pop  de                                          ; $457a: $d1
	ld   de, $ff1f                                   ; $457b: $11 $1f $ff
	db   $fc                                         ; $457e: $fc
	ld   de, $7f11                                   ; $457f: $11 $11 $7f
	jp   c, $1111                                    ; $4582: $da $11 $11

	ld   a, a                                        ; $4585: $7f
	rst  $38                                         ; $4586: $ff
	ei                                               ; $4587: $fb

Call_0fa_4588:
	ld   de, rAUD1LEN                                   ; $4588: $11 $11 $ff
	rst  $38                                         ; $458b: $ff
	ld   b, c                                        ; $458c: $41
	inc  d                                           ; $458d: $14
	rst  $38                                         ; $458e: $ff
	db   $fc                                         ; $458f: $fc
	ld   de, rAUD1HIGH                                   ; $4590: $11 $14 $ff
	rst  $38                                         ; $4593: $ff
	ld   d, c                                        ; $4594: $51
	ld   de, $fa0a                                   ; $4595: $11 $0a $fa
	ld   d, c                                        ; $4598: $51
	ld   de, rAUD1LEN                                   ; $4599: $11 $11 $ff
	rst  $38                                         ; $459c: $ff
	call nz, Call_0fa_4a11                           ; $459d: $c4 $11 $4a
	rst  $38                                         ; $45a0: $ff
	ld   sp, hl                                      ; $45a1: $f9
	inc  de                                          ; $45a2: $13
	xor  a                                           ; $45a3: $af
	rst  $38                                         ; $45a4: $ff
	pop  de                                          ; $45a5: $d1
	ld   de, $ff3f                                   ; $45a6: $11 $3f $ff
	ei                                               ; $45a9: $fb
	ld   de, $4911                                   ; $45aa: $11 $11 $49
	and  h                                           ; $45ad: $a4
	ld   sp, $1111                                   ; $45ae: $31 $11 $11
	rst  $28                                         ; $45b1: $ef
	rst  $38                                         ; $45b2: $ff
	jp   hl                                          ; $45b3: $e9


	ld   de, rAUDENA                                   ; $45b4: $11 $26 $ff
	cp   $36                                         ; $45b7: $fe $36
	call z, $61fc                                    ; $45b9: $cc $fc $61
	ld   de, $ffbf                                   ; $45bc: $11 $bf $ff
	rst  $30                                         ; $45bf: $f7
	ld   de, $4613                                   ; $45c0: $11 $13 $46
	add  h                                           ; $45c3: $84
	ld   b, [hl]                                     ; $45c4: $46
	ld   d, e                                        ; $45c5: $53
	ld   de, $ff1f                                   ; $45c6: $11 $1f $ff
	rst  $38                                         ; $45c9: $ff
	ld   d, c                                        ; $45ca: $51
	ld   de, $ff9f                                   ; $45cb: $11 $9f $ff
	add  c                                           ; $45ce: $81
	sbc  a                                           ; $45cf: $9f
	rst  $38                                         ; $45d0: $ff
	add  c                                           ; $45d1: $81
	ld   de, $ff4f                                   ; $45d2: $11 $4f $ff
	rst  $38                                         ; $45d5: $ff
	ld   de, $5412                                   ; $45d6: $11 $12 $54
	ld   d, l                                        ; $45d9: $55
	scf                                              ; $45da: $37
	sbc  b                                           ; $45db: $98
	ld   de, rAUD1LEN                                   ; $45dc: $11 $11 $ff
	rst  $38                                         ; $45df: $ff
	sub  c                                           ; $45e0: $91
	ld   de, $ffaf                                   ; $45e1: $11 $af $ff
	ld   h, c                                        ; $45e4: $61
	ld   e, $ff                                      ; $45e5: $1e $ff
	di                                               ; $45e7: $f3
	ld   de, $ff1c                                   ; $45e8: $11 $1c $ff
	rst  $38                                         ; $45eb: $ff
	and  c                                           ; $45ec: $a1
	add  hl, hl                                      ; $45ed: $29
	ld   [hl], h                                     ; $45ee: $74
	ld   de, $dd46                                   ; $45ef: $11 $46 $dd
	ld   [hl], c                                     ; $45f2: $71
	ld   de, $ff4f                                   ; $45f3: $11 $4f $ff
	pop  af                                          ; $45f6: $f1
	ld   de, $ff5f                                   ; $45f7: $11 $5f $ff
	ld   d, c                                        ; $45fa: $51
	dec  d                                           ; $45fb: $15
	rst  $38                                         ; $45fc: $ff
	or   $11                                         ; $45fd: $f6 $11
	ld   d, $ff                                      ; $45ff: $16 $ff
	ei                                               ; $4601: $fb
	ld   l, c                                        ; $4602: $69
	sbc  l                                           ; $4603: $9d
	db   $e4                                         ; $4604: $e4
	ld   de, $ef1b                                   ; $4605: $11 $1b $ef
	pop  bc                                          ; $4608: $c1
	ld   de, $ff1b                                   ; $4609: $11 $1b $ff
	ld   sp, hl                                      ; $460c: $f9
	ld   de, $ff1d                                   ; $460d: $11 $1d $ff
	and  c                                           ; $4610: $a1
	add  hl, de                                      ; $4611: $19
	rst  $38                                         ; $4612: $ff
	ld   sp, hl                                      ; $4613: $f9
	ld   de, $ef13                                   ; $4614: $11 $13 $ef
	db   $fc                                         ; $4617: $fc
	ld   a, c                                        ; $4618: $79
	rst  $38                                         ; $4619: $ff
	add  $11                                         ; $461a: $c6 $11

jr_0fa_461c:
	add  hl, de                                      ; $461c: $19
	rst  $38                                         ; $461d: $ff
	sub  c                                           ; $461e: $91
	ld   de, $7f11                                   ; $461f: $11 $11 $7f
	rst  $38                                         ; $4622: $ff
	pop  de                                          ; $4623: $d1
	ld   sp, $855f                                   ; $4624: $31 $5f $85
	ld   d, $ff                                      ; $4627: $16 $ff
	rst  $38                                         ; $4629: $ff
	ld   b, c                                        ; $462a: $41
	inc  de                                          ; $462b: $13
	ld   [hl], a                                     ; $462c: $77
	db   $fd                                         ; $462d: $fd
	call $e4ff                                       ; $462e: $cd $ff $e4
	ld   de, $af11                                   ; $4631: $11 $11 $af
	sub  l                                           ; $4634: $95
	ld   b, c                                        ; $4635: $41
	ld   de, rAUD1LEN                                   ; $4636: $11 $11 $ff
	rst  $38                                         ; $4639: $ff
	ld   [hl+], a                                    ; $463a: $22
	ld   de, $71fe                                   ; $463b: $11 $fe $71
	rra                                              ; $463e: $1f
	rst  $38                                         ; $463f: $ff
	rst  $30                                         ; $4640: $f7
	ld   de, $9b2d                                   ; $4641: $11 $2d $9b
	sbc  b                                           ; $4644: $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4645: $cf
	rst  $38                                         ; $4646: $ff
	ld   h, c                                        ; $4647: $61
	ld   de, $b825                                   ; $4648: $11 $25 $b8
	ld   d, l                                        ; $464b: $55
	ld   h, h                                        ; $464c: $64
	ld   de, rAUD1ENV                                   ; $464d: $11 $12 $ff
	ld   a, [$1c13]                                  ; $4650: $fa $13 $1c
	ld   hl, sp+$31                                  ; $4653: $f8 $31
	cp   a                                           ; $4655: $bf
	rst  $38                                         ; $4656: $ff
	pop  bc                                          ; $4657: $c1
	ld   de, $a8ff                                   ; $4658: $11 $ff $a8
	jr   c, jr_0fa_461c                              ; $465b: $38 $bf

	ei                                               ; $465d: $fb
	ld   de, $3735                                   ; $465e: $11 $35 $37
	ld   h, c                                        ; $4661: $61
	ld   c, c                                        ; $4662: $49
	jp   $1f11                                       ; $4663: $c3 $11 $1f


	rst  $38                                         ; $4666: $ff
	pop  af                                          ; $4667: $f1
	ld   de, $c16f                                   ; $4668: $11 $6f $c1
	ld   de, $ffff                                   ; $466b: $11 $ff $ff
	ld   de, $f61f                                   ; $466e: $11 $1f $f6
	ld   sp, $ff6f                                   ; $4671: $31 $6f $ff
	pop  de                                          ; $4674: $d1
	dec  d                                           ; $4675: $15
	and  h                                           ; $4676: $a4
	ld   [de], a                                     ; $4677: $12
	ld   d, $bb                                      ; $4678: $16 $bb
	ld   hl, rAUD1LEN                                   ; $467a: $21 $11 $ff
	rst  $38                                         ; $467d: $ff
	ld   de, $f7d4                                   ; $467e: $11 $d4 $f7
	ld   de, $ff1f                                   ; $4681: $11 $1f $ff
	pop  bc                                          ; $4684: $c1
	inc  d                                           ; $4685: $14
	rst  $38                                         ; $4686: $ff
	ld   de, $ff3e                                   ; $4687: $11 $3e $ff
	ld   sp, hl                                      ; $468a: $f9
	ld   c, b                                        ; $468b: $48
	xor  h                                           ; $468c: $ac
	ld   de, $c728                                   ; $468d: $11 $28 $c7
	ld   b, c                                        ; $4690: $41
	ld   de, $ff1f                                   ; $4691: $11 $1f $ff
	ldh  [c], a                                      ; $4694: $e2
	rra                                              ; $4695: $1f
	rra                                              ; $4696: $1f
	or   c                                           ; $4697: $b1
	ld   de, $adff                                   ; $4698: $11 $ff $ad
	ld   d, $88                                      ; $469b: $16 $88
	pop  af                                          ; $469d: $f1
	dec  d                                           ; $469e: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $469f: $cf
	cp   a                                           ; $46a0: $bf
	db   $ec                                         ; $46a1: $ec
	jp   hl                                          ; $46a2: $e9


	and  c                                           ; $46a3: $a1
	ld   [de], a                                     ; $46a4: $12
	ld   a, l                                        ; $46a5: $7d
	add  [hl]                                        ; $46a6: $86
	ld   b, c                                        ; $46a7: $41
	ld   de, $fa1f                                   ; $46a8: $11 $1f $fa
	pop  af                                          ; $46ab: $f1
	rst  $38                                         ; $46ac: $ff
	sbc  a                                           ; $46ad: $9f
	ld   de, $f93f                                   ; $46ae: $11 $3f $f9
	or   e                                           ; $46b1: $b3
	ld   e, a                                        ; $46b2: $5f
	adc  h                                           ; $46b3: $8c
	ld   de, $fd68                                   ; $46b4: $11 $68 $fd
	sbc  [hl]                                        ; $46b7: $9e
	rst  $28                                         ; $46b8: $ef
	or   a                                           ; $46b9: $b7
	ld   hl, $ba14                                   ; $46ba: $21 $14 $ba
	ld   b, [hl]                                     ; $46bd: $46
	ld   de, $af11                                   ; $46be: $11 $11 $af
	cp   $61                                         ; $46c1: $fe $61
	rst  $30                                         ; $46c3: $f7
	db   $f4                                         ; $46c4: $f4
	dec  d                                           ; $46c5: $15
	ld   e, a                                        ; $46c6: $5f
	db   $f4                                         ; $46c7: $f4
	or   c                                           ; $46c8: $b1
	rst  $38                                         ; $46c9: $ff
	ld   l, c                                        ; $46ca: $69
	ld   [de], a                                     ; $46cb: $12
	sbc  e                                           ; $46cc: $9b
	or   $be                                         ; $46cd: $f6 $be
	rst  $38                                         ; $46cf: $ff
	ld   h, [hl]                                     ; $46d0: $66
	ld   [de], a                                     ; $46d1: $12
	ld   d, e                                        ; $46d2: $53
	ld   h, c                                        ; $46d3: $61
	ld   c, d                                        ; $46d4: $4a
	ld   b, e                                        ; $46d5: $43
	ld   de, $edff                                   ; $46d6: $11 $ff $ed
	inc  d                                           ; $46d9: $14
	db   $fc                                         ; $46da: $fc
	pop  af                                          ; $46db: $f1
	inc  d                                           ; $46dc: $14
	sbc  a                                           ; $46dd: $9f
	sub  $81                                         ; $46de: $d6 $81
	rst  $38                                         ; $46e0: $ff
	sub  [hl]                                        ; $46e1: $96
	rla                                              ; $46e2: $17
	sbc  [hl]                                        ; $46e3: $9e
	add  $dd                                         ; $46e4: $c6 $dd
	cp   $75                                         ; $46e6: $fe $75
	ld   h, $43                                      ; $46e8: $26 $43
	ld   d, e                                        ; $46ea: $53
	ld   h, e                                        ; $46eb: $63
	ld   de, rAUD1LEN                                   ; $46ec: $11 $11 $ff
	ld   l, l                                        ; $46ef: $6d
	dec  de                                          ; $46f0: $1b
	push hl                                          ; $46f1: $e5
	pop  af                                          ; $46f2: $f1
	rla                                              ; $46f3: $17
	rst  $38                                         ; $46f4: $ff
	ld   a, [hl-]                                    ; $46f5: $3a
	ld   d, h                                        ; $46f6: $54
	ld   a, [$1f51]                                  ; $46f7: $fa $51 $1f
	xor  a                                           ; $46fa: $af
	halt                                             ; $46fb: $76
	rst  $28                                         ; $46fc: $ef
	ld   a, [$5a44]                                  ; $46fd: $fa $44 $5a
	ld   d, h                                        ; $4700: $54
	ld   de, $4177                                   ; $4701: $11 $77 $41
	ld   de, $75ff                                   ; $4704: $11 $ff $75
	add  hl, de                                      ; $4707: $19
	db   $fc                                         ; $4708: $fc
	pop  af                                          ; $4709: $f1
	add  hl, de                                      ; $470a: $19
	rst  $38                                         ; $470b: $ff
	ld   b, d                                        ; $470c: $42
	ld   a, c                                        ; $470d: $79
	db   $fd                                         ; $470e: $fd
	ld   sp, $cb1f                                   ; $470f: $31 $1f $cb
	ld   b, e                                        ; $4712: $43
	rst  $38                                         ; $4713: $ff
	ei                                               ; $4714: $fb
	dec  [hl]                                        ; $4715: $35
	adc  e                                           ; $4716: $8b
	ld   h, c                                        ; $4717: $61
	ld   [de], a                                     ; $4718: $12
	sbc  c                                           ; $4719: $99
	ld   sp, rAUD1LEN                                   ; $471a: $31 $11 $ff
	or   c                                           ; $471d: $b1
	ld   [de], a                                     ; $471e: $12
	ei                                               ; $471f: $fb
	pop  af                                          ; $4720: $f1
	inc  e                                           ; $4721: $1c
	rst  $38                                         ; $4722: $ff
	sub  c                                           ; $4723: $91
	sbc  b                                           ; $4724: $98
	rst  $38                                         ; $4725: $ff
	ld   de, $f81f                                   ; $4726: $11 $1f $f8
	ld   d, c                                        ; $4729: $51
	rst  JumpTable                                         ; $472a: $df
	rst  $38                                         ; $472b: $ff
	ld   h, $ae                                      ; $472c: $26 $ae
	add  c                                           ; $472e: $81
	ld   de, $717d                                   ; $472f: $11 $7d $71
	ld   de, $f91f                                   ; $4732: $11 $1f $f9

Jump_0fa_4735:
	ld   hl, $9c6f                                   ; $4735: $21 $6f $9c
	ld   de, $f6df                                   ; $4738: $11 $df $f6
	inc  e                                           ; $473b: $1c
	xor  a                                           ; $473c: $af
	pop  hl                                          ; $473d: $e1
	ld   de, $65fd                                   ; $473e: $11 $fd $65
	ld   l, $ff                                      ; $4741: $2e $ff
	db   $e3                                         ; $4743: $e3
	adc  h                                           ; $4744: $8c
	sub  $11                                         ; $4745: $d6 $11
	rla                                              ; $4747: $17
	or   h                                           ; $4748: $b4
	ld   de, $1f21                                   ; $4749: $11 $21 $1f
	db   $f4                                         ; $474c: $f4
	ld   [hl], c                                     ; $474d: $71
	ei                                               ; $474e: $fb
	cp   d                                           ; $474f: $ba
	ld   d, $af                                      ; $4750: $16 $af
	pop  hl                                          ; $4752: $e1

Jump_0fa_4753:
	cp   d                                           ; $4753: $ba
	rst  JumpTable                                         ; $4754: $df
	ld   h, d                                        ; $4755: $62
	jr   @-$16                                       ; $4756: $18 $e8

	add  e                                           ; $4758: $83
	xor  a                                           ; $4759: $af
	rst  $38                                         ; $475a: $ff
	ld   [hl], a                                     ; $475b: $77
	adc  d                                           ; $475c: $8a
	sub  e                                           ; $475d: $93
	ld   hl, $9629                                   ; $475e: $21 $29 $96
	ld   de, $3f11                                   ; $4761: $11 $11 $3f

Jump_0fa_4764:
	or   $75                                         ; $4764: $f6 $75
	db   $fc                                         ; $4766: $fc
	sub  $15                                         ; $4767: $d6 $15
	xor  a                                           ; $4769: $af
	or   e                                           ; $476a: $b3
	jp   z, Jump_0fa_52ff                            ; $476b: $ca $ff $52

	add  hl, de                                      ; $476e: $19
	ret  z                                           ; $476f: $c8

	ld   h, l                                        ; $4770: $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4771: $cf
	rst  $38                                         ; $4772: $ff
	ld   [hl], a                                     ; $4773: $77
	sbc  d                                           ; $4774: $9a
	ld   h, d                                        ; $4775: $62
	ld   de, $a65a                                   ; $4776: $11 $5a $a6
	ld   de, $1f11                                   ; $4779: $11 $11 $1f
	or   $f4                                         ; $477c: $f6 $f4
	rst  JumpTable                                         ; $477e: $df
	ld   e, l                                        ; $477f: $5d
	ld   de, $f39f                                   ; $4780: $11 $9f $f3
	sbc  e                                           ; $4783: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4784: $cf
	and  c                                           ; $4785: $a1
	ld   de, $b6da                                   ; $4786: $11 $da $b6
	sbc  a                                           ; $4789: $9f
	rst  $38                                         ; $478a: $ff
	sub  h                                           ; $478b: $94
	ld   h, a                                        ; $478c: $67
	sub  l                                           ; $478d: $95
	ld   d, h                                        ; $478e: $54
	ld   c, b                                        ; $478f: $48
	halt                                             ; $4790: $76
	ld   de, $1131                                   ; $4791: $11 $31 $11
	rst  $38                                         ; $4794: $ff
	sbc  l                                           ; $4795: $9d
	ld   e, $9a                                      ; $4796: $1e $9a
	pop  de                                          ; $4798: $d1
	jr   @+$01                                       ; $4799: $18 $ff

	ld   c, e                                        ; $479b: $4b
	ld   l, h                                        ; $479c: $6c
	ld   hl, sp+$21                                  ; $479d: $f8 $21
	ccf                                              ; $479f: $3f
	call z, $ff6a                                    ; $47a0: $cc $6a $ff
	or   $56                                         ; $47a3: $f6 $56
	adc  d                                           ; $47a5: $8a
	ld   h, l                                        ; $47a6: $65
	ld   [hl], $98                                   ; $47a7: $36 $98
	ld   b, c                                        ; $47a9: $41
	ld   hl, $1d11                                   ; $47aa: $21 $11 $1d
	rst  $38                                         ; $47ad: $ff
	call nc, $4f1f                                   ; $47ae: $d4 $1f $4f
	ld   de, $fc5c                                   ; $47b1: $11 $5c $fc
	ld   l, d                                        ; $47b4: $6a
	ld   l, a                                        ; $47b5: $6f
	and  $11                                         ; $47b6: $e6 $11
	cp   [hl]                                        ; $47b8: $be
	ei                                               ; $47b9: $fb
	ld   e, l                                        ; $47ba: $5d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47bb: $cf
	push hl                                          ; $47bc: $e5
	ld   h, h                                        ; $47bd: $64
	xor  b                                           ; $47be: $a8
	add  a                                           ; $47bf: $87
	ld   c, b                                        ; $47c0: $48
	add  [hl]                                        ; $47c1: $86
	ld   [hl-], a                                    ; $47c2: $32
	ld   sp, $1b11                                   ; $47c3: $31 $11 $1b
	rst  $38                                         ; $47c6: $ff
	push bc                                          ; $47c7: $c5
	rra                                              ; $47c8: $1f
	ld   l, [hl]                                     ; $47c9: $6e
	ld   de, $fd4c                                   ; $47ca: $11 $4c $fd
	adc  c                                           ; $47cd: $89
	ld   a, a                                        ; $47ce: $7f
	rst  $20                                         ; $47cf: $e7
	ld   de, $fb6c                                   ; $47d0: $11 $6c $fb
	adc  l                                           ; $47d3: $8d
	rst  JumpTable                                         ; $47d4: $df
	add  $64                                         ; $47d5: $c6 $64
	xor  c                                           ; $47d7: $a9
	sub  a                                           ; $47d8: $97
	ld   b, a                                        ; $47d9: $47
	halt                                             ; $47da: $76
	ld   b, d                                        ; $47db: $42
	ld   sp, $1311                                   ; $47dc: $31 $11 $13
	rst  $38                                         ; $47df: $ff
	or   a                                           ; $47e0: $b7
	rra                                              ; $47e1: $1f
	sbc  l                                           ; $47e2: $9d
	ld   hl, $ff3b                                   ; $47e3: $21 $3b $ff
	ld   a, c                                        ; $47e6: $79
	ld   l, [hl]                                     ; $47e7: $6e
	rst  $10                                         ; $47e8: $d7
	ld   de, $fd6e                                   ; $47e9: $11 $6e $fd
	adc  l                                           ; $47ec: $8d
	rst  JumpTable                                         ; $47ed: $df
	push de                                          ; $47ee: $d5
	inc  sp                                          ; $47ef: $33
	xor  e                                           ; $47f0: $ab
	sub  a                                           ; $47f1: $97
	scf                                              ; $47f2: $37
	add  a                                           ; $47f3: $87
	ld   sp, $1121                                   ; $47f4: $31 $21 $11
	ld   de, $ebff                                   ; $47f7: $11 $ff $eb
	dec  e                                           ; $47fa: $1d
	adc  [hl]                                        ; $47fb: $8e
	ld   h, c                                        ; $47fc: $61
	daa                                              ; $47fd: $27
	rst  $38                                         ; $47fe: $ff
	adc  h                                           ; $47ff: $8c
	ld   e, l                                        ; $4800: $5d
	ld   a, [$3b21]                                  ; $4801: $fa $21 $3b
	db   $fc                                         ; $4804: $fc
	ld   l, h                                        ; $4805: $6c
	cp   a                                           ; $4806: $bf
	ld   sp, hl                                      ; $4807: $f9
	ld   h, e                                        ; $4808: $63
	sbc  e                                           ; $4809: $9b
	and  a                                           ; $480a: $a7
	ld   [hl], $77                                   ; $480b: $36 $77
	ld   h, c                                        ; $480d: $61
	ld   de, $1111                                   ; $480e: $11 $11 $11
	rst  $38                                         ; $4811: $ff
	xor  $16                                         ; $4812: $ee $16
	cp   c                                           ; $4814: $b9
	pop  af                                          ; $4815: $f1
	inc  d                                           ; $4816: $14
	rst  $38                                         ; $4817: $ff
	xor  l                                           ; $4818: $ad
	halt                                             ; $4819: $76
	db   $fd                                         ; $481a: $fd
	sub  c                                           ; $481b: $91
	add  hl, de                                      ; $481c: $19
	cp   a                                           ; $481d: $bf
	xor  d                                           ; $481e: $aa
	cp   e                                           ; $481f: $bb
	db   $fc                                         ; $4820: $fc
	add  l                                           ; $4821: $85
	ld   e, e                                        ; $4822: $5b
	xor  e                                           ; $4823: $ab
	ld   h, h                                        ; $4824: $64
	ld   h, l                                        ; $4825: $65
	ld   [hl], e                                     ; $4826: $73
	ld   [de], a                                     ; $4827: $12
	ld   de, $1f11                                   ; $4828: $11 $11 $1f
	cp   $a1                                         ; $482b: $fe $a1
	or   a                                           ; $482d: $b7
	ld   a, [$4f12]                                  ; $482e: $fa $12 $4f
	ei                                               ; $4831: $fb
	db   $d3                                         ; $4832: $d3
	xor  [hl]                                        ; $4833: $ae
	ret  c                                           ; $4834: $d8

	inc  d                                           ; $4835: $14
	adc  e                                           ; $4836: $8b
	ret                                              ; $4837: $c9


	ret  c                                           ; $4838: $d8

	rst  JumpTable                                         ; $4839: $df
	cp   c                                           ; $483a: $b9
	ld   b, a                                        ; $483b: $47
	sbc  c                                           ; $483c: $99
	and  l                                           ; $483d: $a5
	inc  sp                                          ; $483e: $33
	ld   d, a                                        ; $483f: $57
	inc  sp                                          ; $4840: $33
	ld   de, $1f11                                   ; $4841: $11 $11 $1f
	cp   $e4                                         ; $4844: $fe $e4
	adc  e                                           ; $4846: $8b
	xor  a                                           ; $4847: $af
	ld   de, $fb4b                                   ; $4848: $11 $4b $fb
	add  sp, $5e                                     ; $484b: $e8 $5e
	db   $eb                                         ; $484d: $eb
	ld   hl, $ca67                                   ; $484e: $21 $67 $ca
	res  3, a                                        ; $4851: $cb $9f
	call c, $9796                                    ; $4853: $dc $96 $97
	xor  b                                           ; $4856: $a8
	ld   b, e                                        ; $4857: $43
	ld   [hl], $43                                   ; $4858: $36 $43
	ld   hl, $1f11                                   ; $485a: $21 $11 $1f
	db   $fd                                         ; $485d: $fd
	push de                                          ; $485e: $d5
	adc  h                                           ; $485f: $8c
	xor  a                                           ; $4860: $af
	ld   de, $fa3a                                   ; $4861: $11 $3a $fa
	jp   hl                                          ; $4864: $e9


	ld   e, l                                        ; $4865: $5d
	db   $fc                                         ; $4866: $fc
	ld   b, d                                        ; $4867: $42
	halt                                             ; $4868: $76
	xor  d                                           ; $4869: $aa
	cp   d                                           ; $486a: $ba
	sbc  a                                           ; $486b: $9f
	call c, $87c7                                    ; $486c: $dc $c7 $87
	sbc  c                                           ; $486f: $99
	ld   b, h                                        ; $4870: $44
	inc  [hl]                                        ; $4871: $34
	ld   d, h                                        ; $4872: $54
	ld   sp, $1f11                                   ; $4873: $31 $11 $1f
	db   $fd                                         ; $4876: $fd
	jp   nc, $cf8b                                   ; $4877: $d2 $8b $cf

	ld   de, $fc38                                   ; $487a: $11 $38 $fc
	ld   sp, hl                                      ; $487d: $f9

jr_0fa_487e:
	dec  sp                                          ; $487e: $3b
	db   $dd                                         ; $487f: $dd
	ld   h, h                                        ; $4880: $64
	ld   [hl], l                                     ; $4881: $75
	xor  h                                           ; $4882: $ac
	res  3, l                                        ; $4883: $cb $9d
	cp   l                                           ; $4885: $bd
	jp   hl                                          ; $4886: $e9


	halt                                             ; $4887: $76
	adc  c                                           ; $4888: $89
	ld   h, l                                        ; $4889: $65
	ld   [hl-], a                                    ; $488a: $32
	ld   [hl-], a                                    ; $488b: $32
	ld   hl, $1f11                                   ; $488c: $21 $11 $1f
	rst  $38                                         ; $488f: $ff
	pop  hl                                          ; $4890: $e1
	add  [hl]                                        ; $4891: $86
	rst  $38                                         ; $4892: $ff
	dec  h                                           ; $4893: $25
	rla                                              ; $4894: $17
	xor  $f7                                         ; $4895: $ee $f7
	ld   c, b                                        ; $4897: $48
	xor  h                                           ; $4898: $ac
	cp   c                                           ; $4899: $b9
	ld   [hl], e                                     ; $489a: $73
	sbc  e                                           ; $489b: $9b
	sbc  $bb                                         ; $489c: $de $bb
	sbc  h                                           ; $489e: $9c
	jp   c, Jump_0fa_5596                            ; $489f: $da $96 $55

	ld   d, a                                        ; $48a2: $57
	ld   d, d                                        ; $48a3: $52
	ld   de, $1111                                   ; $48a4: $11 $11 $11
	rst  $38                                         ; $48a7: $ff
	rst  $38                                         ; $48a8: $ff
	ld   e, b                                        ; $48a9: $58
	ld   c, l                                        ; $48aa: $4d
	rst  $30                                         ; $48ab: $f7
	or   d                                           ; $48ac: $b2
	jr   c, jr_0fa_487e                              ; $48ad: $38 $cf

	xor  b                                           ; $48af: $a8
	add  l                                           ; $48b0: $85
	sbc  d                                           ; $48b1: $9a
	call z, Call_0fa_6967                            ; $48b2: $cc $67 $69
	call $aaeb                                       ; $48b5: $cd $eb $aa
	adc  e                                           ; $48b8: $8b
	xor  b                                           ; $48b9: $a8
	ld   h, h                                        ; $48ba: $64
	ld   [hl-], a                                    ; $48bb: $32
	inc  sp                                          ; $48bc: $33
	ld   de, $1c11                                   ; $48bd: $11 $11 $1c
	rst  $38                                         ; $48c0: $ff
	or   $72                                         ; $48c1: $f6 $72
	xor  a                                           ; $48c3: $af
	rst  JumpTable                                         ; $48c4: $df
	ld   h, c                                        ; $48c5: $61
	ld   [hl], $fe                                   ; $48c6: $36 $fe
	call z, Call_0fa_6a54                            ; $48c8: $cc $54 $6a
	db   $ed                                         ; $48cb: $ed
	ret  z                                           ; $48cc: $c8

	ld   e, b                                        ; $48cd: $58
	adc  l                                           ; $48ce: $8d
	rst  $38                                         ; $48cf: $ff
	rst  ToBoot                                         ; $48d0: $c7
	ld   a, b                                        ; $48d1: $78
	sbc  e                                           ; $48d2: $9b
	sub  [hl]                                        ; $48d3: $96
	ld   hl, $1111                                   ; $48d4: $21 $11 $11
	ld   de, $df39                                   ; $48d7: $11 $39 $df
	cp   l                                           ; $48da: $bd
	halt                                             ; $48db: $76
	call z, $87fe                                    ; $48dc: $cc $fe $87
	scf                                              ; $48df: $37
	ld   a, c                                        ; $48e0: $79
	call c, Call_0fa_5896                            ; $48e1: $dc $96 $58
	sbc  l                                           ; $48e4: $9d
	db   $ec                                         ; $48e5: $ec
	and  a                                           ; $48e6: $a7
	ld   a, c                                        ; $48e7: $79
	cp   a                                           ; $48e8: $bf
	db   $db                                         ; $48e9: $db
	sub  a                                           ; $48ea: $97
	ld   [hl], a                                     ; $48eb: $77
	ld   [hl], a                                     ; $48ec: $77
	ld   d, h                                        ; $48ed: $54
	ld   de, $1211                                   ; $48ee: $11 $11 $12
	adc  c                                           ; $48f1: $89
	add  [hl]                                        ; $48f2: $86
	sub  a                                           ; $48f3: $97
	ld   l, e                                        ; $48f4: $6b
	rst  JumpTable                                         ; $48f5: $df
	ei                                               ; $48f6: $fb
	or   a                                           ; $48f7: $b7
	sbc  c                                           ; $48f8: $99
	adc  d                                           ; $48f9: $8a
	ret                                              ; $48fa: $c9


	ld   [hl], a                                     ; $48fb: $77
	adc  b                                           ; $48fc: $88
	sbc  h                                           ; $48fd: $9c
	cp   h                                           ; $48fe: $bc
	jp   z, $ba9a                                    ; $48ff: $ca $9a $ba

	sbc  d                                           ; $4902: $9a
	sbc  c                                           ; $4903: $99
	xor  c                                           ; $4904: $a9
	sbc  b                                           ; $4905: $98
	ld   [hl], l                                     ; $4906: $75
	ld   [hl-], a                                    ; $4907: $32
	ld   de, $4126                                   ; $4908: $11 $26 $41
	ld   [de], a                                     ; $490b: $12
	ld   de, $ac68                                   ; $490c: $11 $68 $ac
	cp   e                                           ; $490f: $bb
	xor  e                                           ; $4910: $ab
	call z, $edff                                    ; $4911: $cc $ff $ed
	res  7, d                                        ; $4914: $cb $ba
	cp   d                                           ; $4916: $ba
	cp   h                                           ; $4917: $bc
	cp   e                                           ; $4918: $bb
	xor  c                                           ; $4919: $a9
	adc  b                                           ; $491a: $88
	sbc  c                                           ; $491b: $99
	sbc  c                                           ; $491c: $99
	sub  a                                           ; $491d: $97
	ld   h, h                                        ; $491e: $64
	ld   hl, $3311                                   ; $491f: $21 $11 $33
	ld   de, $1311                                   ; $4922: $11 $11 $13
	ld   l, c                                        ; $4925: $69
	res  7, d                                        ; $4926: $cb $ba
	call z, $ffcf                                    ; $4928: $cc $cf $ff
	cp   $dc                                         ; $492b: $fe $dc
	cp   h                                           ; $492d: $bc
	xor  e                                           ; $492e: $ab
	cp   e                                           ; $492f: $bb
	cp   e                                           ; $4930: $bb
	cp   b                                           ; $4931: $b8
	ld   [hl], a                                     ; $4932: $77
	adc  b                                           ; $4933: $88
	sbc  b                                           ; $4934: $98
	add  a                                           ; $4935: $87
	ld   b, d                                        ; $4936: $42
	ld   de, $4211                                   ; $4937: $11 $11 $42
	ld   de, $1411                                   ; $493a: $11 $11 $14
	ld   a, d                                        ; $493d: $7a
	call z, $ddcc                                    ; $493e: $cc $cc $dd
	rst  JumpTable                                         ; $4941: $df
	rst  $38                                         ; $4942: $ff
	rst  $38                                         ; $4943: $ff
	xor  $ca                                         ; $4944: $ee $ca
	xor  d                                           ; $4946: $aa
	cp   e                                           ; $4947: $bb
	cp   h                                           ; $4948: $bc
	sbc  c                                           ; $4949: $99
	add  a                                           ; $494a: $87
	ld   a, b                                        ; $494b: $78
	add  a                                           ; $494c: $87
	ld   [hl], l                                     ; $494d: $75
	ld   hl, $1311                                   ; $494e: $21 $11 $13
	ld   hl, $1111                                   ; $4951: $21 $11 $11
	dec  h                                           ; $4954: $25
	adc  e                                           ; $4955: $8b
	call z, $ddde                                    ; $4956: $cc $de $dd
	rst  $38                                         ; $4959: $ff
	rst  $38                                         ; $495a: $ff
	cp   $fd                                         ; $495b: $fe $fd
	cp   e                                           ; $495d: $bb
	cp   d                                           ; $495e: $ba
	xor  e                                           ; $495f: $ab
	cp   e                                           ; $4960: $bb
	sbc  b                                           ; $4961: $98
	ld   [hl], a                                     ; $4962: $77
	adc  b                                           ; $4963: $88
	halt                                             ; $4964: $76
	ld   b, d                                        ; $4965: $42
	ld   de, $2111                                   ; $4966: $11 $11 $21
	ld   de, $1211                                   ; $4969: $11 $11 $12
	ld   e, c                                        ; $496c: $59
	cp   h                                           ; $496d: $bc
	db   $dd                                         ; $496e: $dd
	sbc  $ff                                         ; $496f: $de $ff
	rst  $38                                         ; $4971: $ff
	rst  $38                                         ; $4972: $ff
	rst  $38                                         ; $4973: $ff
	db   $ec                                         ; $4974: $ec
	cp   e                                           ; $4975: $bb
	sbc  e                                           ; $4976: $9b
	cp   d                                           ; $4977: $ba
	xor  d                                           ; $4978: $aa
	sbc  b                                           ; $4979: $98

jr_0fa_497a:
	add  a                                           ; $497a: $87
	halt                                             ; $497b: $76
	ld   h, h                                        ; $497c: $64
	ld   de, $2211                                   ; $497d: $11 $11 $22
	ld   de, $1111                                   ; $4980: $11 $11 $11
	ld   h, $ab                                      ; $4983: $26 $ab
	call $ffed                                       ; $4985: $cd $ed $ff
	rst  $38                                         ; $4988: $ff
	rst  $38                                         ; $4989: $ff
	rst  $38                                         ; $498a: $ff
	cp   $dc                                         ; $498b: $fe $dc
	xor  d                                           ; $498d: $aa
	cp   d                                           ; $498e: $ba
	sbc  d                                           ; $498f: $9a
	adc  b                                           ; $4990: $88
	add  a                                           ; $4991: $87
	halt                                             ; $4992: $76
	ld   d, h                                        ; $4993: $54
	ld   hl, $1211                                   ; $4994: $21 $11 $12
	ld   de, $1111                                   ; $4997: $11 $11 $11
	inc  de                                          ; $499a: $13
	adc  d                                           ; $499b: $8a
	cp   h                                           ; $499c: $bc
	db   $dd                                         ; $499d: $dd
	rst  $28                                         ; $499e: $ef
	rst  $38                                         ; $499f: $ff
	rst  $38                                         ; $49a0: $ff
	rst  $38                                         ; $49a1: $ff
	rst  $38                                         ; $49a2: $ff
	cp   $cb                                         ; $49a3: $fe $cb
	xor  d                                           ; $49a5: $aa
	sbc  d                                           ; $49a6: $9a
	sbc  b                                           ; $49a7: $98
	add  a                                           ; $49a8: $87
	ld   h, l                                        ; $49a9: $65
	ld   b, c                                        ; $49aa: $41
	ld   de, $3211                                   ; $49ab: $11 $11 $32
	ld   de, $1111                                   ; $49ae: $11 $11 $11
	ld   d, $aa                                      ; $49b1: $16 $aa
	adc  $ee                                         ; $49b3: $ce $ee
	rst  $38                                         ; $49b5: $ff
	rst  $38                                         ; $49b6: $ff
	rst  $38                                         ; $49b7: $ff
	rst  $38                                         ; $49b8: $ff
	rst  $38                                         ; $49b9: $ff
	cp   $dc                                         ; $49ba: $fe $dc
	xor  c                                           ; $49bc: $a9
	xor  c                                           ; $49bd: $a9
	ld   [hl], a                                     ; $49be: $77
	halt                                             ; $49bf: $76
	ld   b, e                                        ; $49c0: $43
	ld   de, $1311                                   ; $49c1: $11 $11 $13
	ld   de, $1111                                   ; $49c4: $11 $11 $11
	ld   de, $9c6b                                   ; $49c7: $11 $6b $9c
	cp   $ef                                         ; $49ca: $fe $ef
	rst  $38                                         ; $49cc: $ff
	rst  $38                                         ; $49cd: $ff
	rst  $38                                         ; $49ce: $ff
	rst  $38                                         ; $49cf: $ff
	rst  $38                                         ; $49d0: $ff
	db   $ed                                         ; $49d1: $ed
	cp   c                                           ; $49d2: $b9
	sbc  d                                           ; $49d3: $9a
	ld   [hl], a                                     ; $49d4: $77
	halt                                             ; $49d5: $76
	ld   d, h                                        ; $49d6: $54
	ld   hl, $1111                                   ; $49d7: $21 $11 $11
	ld   b, c                                        ; $49da: $41
	ld   hl, $1111                                   ; $49db: $21 $11 $11
	jr   jr_0fa_497a                                 ; $49de: $18 $9a

	xor  $ef                                         ; $49e0: $ee $ef
	rst  $38                                         ; $49e2: $ff
	rst  $38                                         ; $49e3: $ff
	rst  $38                                         ; $49e4: $ff
	rst  $38                                         ; $49e5: $ff
	rst  $38                                         ; $49e6: $ff
	cp   $eb                                         ; $49e7: $fe $eb
	xor  d                                           ; $49e9: $aa
	sub  a                                           ; $49ea: $97
	halt                                             ; $49eb: $76
	ld   d, l                                        ; $49ec: $55
	ld   hl, $1111                                   ; $49ed: $21 $11 $11
	ld   b, c                                        ; $49f0: $41
	ld   hl, $1111                                   ; $49f1: $21 $11 $11
	ld   d, $a7                                      ; $49f4: $16 $a7
	sbc  $df                                         ; $49f6: $de $df
	rst  $38                                         ; $49f8: $ff
	rst  $38                                         ; $49f9: $ff
	rst  $28                                         ; $49fa: $ef
	rst  $38                                         ; $49fb: $ff
	rst  $38                                         ; $49fc: $ff
	rst  $38                                         ; $49fd: $ff
	db   $ec                                         ; $49fe: $ec
	cp   e                                           ; $49ff: $bb
	and  a                                           ; $4a00: $a7
	ld   [hl], l                                     ; $4a01: $75
	ld   b, h                                        ; $4a02: $44
	ld   hl, $1111                                   ; $4a03: $21 $11 $11
	ld   d, d                                        ; $4a06: $52
	inc  d                                           ; $4a07: $14
	ld   de, $1411                                   ; $4a08: $11 $11 $14
	or   [hl]                                        ; $4a0b: $b6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a0c: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a0d: $cf
	rst  $38                                         ; $4a0e: $ff
	rst  $38                                         ; $4a0f: $ff
	rst  $38                                         ; $4a10: $ff

Call_0fa_4a11:
	rst  $38                                         ; $4a11: $ff
	rst  $38                                         ; $4a12: $ff
	rst  $38                                         ; $4a13: $ff
	db   $fd                                         ; $4a14: $fd
	res  7, c                                        ; $4a15: $cb $b9
	ld   [hl], l                                     ; $4a17: $75
	inc  [hl]                                        ; $4a18: $34
	ld   de, $1111                                   ; $4a19: $11 $11 $11
	ld   d, c                                        ; $4a1c: $51
	inc  [hl]                                        ; $4a1d: $34
	ld   de, $1511                                   ; $4a1e: $11 $11 $15
	or   l                                           ; $4a21: $b5
	xor  $cf                                         ; $4a22: $ee $cf
	rst  $38                                         ; $4a24: $ff
	rst  $38                                         ; $4a25: $ff
	rst  $38                                         ; $4a26: $ff
	rst  $38                                         ; $4a27: $ff
	rst  $38                                         ; $4a28: $ff
	rst  $38                                         ; $4a29: $ff
	db   $fd                                         ; $4a2a: $fd
	call z, $74b8                                    ; $4a2b: $cc $b8 $74
	inc  sp                                          ; $4a2e: $33
	ld   de, $1211                                   ; $4a2f: $11 $11 $12
	ld   sp, $1161                                   ; $4a32: $31 $61 $11
	ld   de, $7719                                   ; $4a35: $11 $19 $77
	db   $fc                                         ; $4a38: $fc
	rst  $38                                         ; $4a39: $ff
	rst  $38                                         ; $4a3a: $ff
	rst  $38                                         ; $4a3b: $ff
	rst  $38                                         ; $4a3c: $ff
	rst  $38                                         ; $4a3d: $ff
	rst  $38                                         ; $4a3e: $ff
	rst  $38                                         ; $4a3f: $ff
	db   $fd                                         ; $4a40: $fd
	db   $ec                                         ; $4a41: $ec
	xor  c                                           ; $4a42: $a9
	ld   h, e                                        ; $4a43: $63
	ld   sp, $1111                                   ; $4a44: $31 $11 $11
	inc  d                                           ; $4a47: $14
	inc  d                                           ; $4a48: $14
	ld   b, c                                        ; $4a49: $41
	ld   sp, $5911                                   ; $4a4a: $31 $11 $59
	ld   c, [hl]                                     ; $4a4d: $4e
	db   $dd                                         ; $4a4e: $dd
	rst  $38                                         ; $4a4f: $ff
	rst  $38                                         ; $4a50: $ff
	rst  $38                                         ; $4a51: $ff
	rst  $38                                         ; $4a52: $ff
	rst  $38                                         ; $4a53: $ff
	rst  $38                                         ; $4a54: $ff
	rst  $38                                         ; $4a55: $ff
	db   $dd                                         ; $4a56: $dd
	jp   z, $32a6                                    ; $4a57: $ca $a6 $32

	ld   de, $1111                                   ; $4a5a: $11 $11 $11
	ld   b, c                                        ; $4a5d: $41
	ld   b, h                                        ; $4a5e: $44
	inc  de                                          ; $4a5f: $13
	ld   de, $8315                                   ; $4a60: $11 $15 $83
	db   $fc                                         ; $4a63: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a64: $cf
	rst  $38                                         ; $4a65: $ff
	rst  $38                                         ; $4a66: $ff
	rst  $38                                         ; $4a67: $ff
	rst  $38                                         ; $4a68: $ff
	rst  $38                                         ; $4a69: $ff
	rst  $38                                         ; $4a6a: $ff
	cp   $ed                                         ; $4a6b: $fe $ed
	cp   d                                           ; $4a6d: $ba
	ld   h, d                                        ; $4a6e: $62
	ld   hl, $1111                                   ; $4a6f: $21 $11 $11
	ld   de, $1116                                   ; $4a72: $11 $16 $11
	ld   hl, $7411                                   ; $4a75: $21 $11 $74
	ld   a, a                                        ; $4a78: $7f
	cp   a                                           ; $4a79: $bf
	rst  $38                                         ; $4a7a: $ff
	rst  $38                                         ; $4a7b: $ff
	rst  $38                                         ; $4a7c: $ff
	rst  $38                                         ; $4a7d: $ff
	rst  $38                                         ; $4a7e: $ff
	rst  $38                                         ; $4a7f: $ff
	rst  $38                                         ; $4a80: $ff
	db   $ed                                         ; $4a81: $ed
	cp   d                                           ; $4a82: $ba
	ld   [hl], e                                     ; $4a83: $73
	ld   de, $1111                                   ; $4a84: $11 $11 $11
	ld   de, $1114                                   ; $4a87: $11 $14 $11
	ld   hl, $7311                                   ; $4a8a: $21 $11 $73
	ld   l, l                                        ; $4a8d: $6d
	cp   a                                           ; $4a8e: $bf
	rst  $38                                         ; $4a8f: $ff
	rst  $38                                         ; $4a90: $ff
	rst  $38                                         ; $4a91: $ff
	rst  $38                                         ; $4a92: $ff
	rst  $38                                         ; $4a93: $ff
	rst  $38                                         ; $4a94: $ff
	rst  $38                                         ; $4a95: $ff
	cp   $ba                                         ; $4a96: $fe $ba
	ld   h, e                                        ; $4a98: $63
	ld   de, $1111                                   ; $4a99: $11 $11 $11
	ld   de, $1402                                   ; $4a9c: $11 $02 $14
	ld   de, $6213                                   ; $4a9f: $11 $13 $62
	cp   c                                           ; $4aa2: $b9
	rst  JumpTable                                         ; $4aa3: $df
	rst  $38                                         ; $4aa4: $ff
	rst  $38                                         ; $4aa5: $ff
	rst  $38                                         ; $4aa6: $ff
	rst  $38                                         ; $4aa7: $ff
	rst  $38                                         ; $4aa8: $ff
	rst  $38                                         ; $4aa9: $ff
	rst  $38                                         ; $4aaa: $ff
	db   $fd                                         ; $4aab: $fd
	xor  b                                           ; $4aac: $a8
	ld   sp, $1111                                   ; $4aad: $31 $11 $11
	ld   de, $1111                                   ; $4ab0: $11 $11 $11
	ld   b, c                                        ; $4ab3: $41
	ld   de, $2a36                                   ; $4ab4: $11 $36 $2a
	xor  [hl]                                        ; $4ab7: $ae
	rst  $38                                         ; $4ab8: $ff
	rst  $38                                         ; $4ab9: $ff
	rst  $38                                         ; $4aba: $ff
	rst  $38                                         ; $4abb: $ff
	rst  $38                                         ; $4abc: $ff
	rst  $38                                         ; $4abd: $ff
	rst  $38                                         ; $4abe: $ff
	db   $fd                                         ; $4abf: $fd
	ret                                              ; $4ac0: $c9


	ld   h, d                                        ; $4ac1: $62
	ld   de, $1111                                   ; $4ac2: $11 $11 $11
	ld   de, $5331                                   ; $4ac5: $11 $31 $53
	inc  d                                           ; $4ac8: $14
	ld   c, e                                        ; $4ac9: $4b
	ld   l, e                                        ; $4aca: $6b
	db   $ed                                         ; $4acb: $ed
	rst  $38                                         ; $4acc: $ff
	rst  $38                                         ; $4acd: $ff
	rst  $38                                         ; $4ace: $ff
	cp   $ff                                         ; $4acf: $fe $ff
	rst  $28                                         ; $4ad1: $ef
	db   $fd                                         ; $4ad2: $fd
	res  3, b                                        ; $4ad3: $cb $98
	ld   d, d                                        ; $4ad5: $52
	ld   de, $1111                                   ; $4ad6: $11 $11 $11
	ld   de, $b751                                   ; $4ad9: $11 $51 $b7
	ld   l, e                                        ; $4adc: $6b
	xor  a                                           ; $4add: $af
	cp   a                                           ; $4ade: $bf
	rst  $38                                         ; $4adf: $ff
	rst  $38                                         ; $4ae0: $ff
	rst  $38                                         ; $4ae1: $ff
	ld   [$dfda], a                                  ; $4ae2: $ea $da $df
	rst  JumpTable                                         ; $4ae5: $df
	cp   $ea                                         ; $4ae6: $fe $ea
	sub  a                                           ; $4ae8: $97
	ld   hl, $1111                                   ; $4ae9: $21 $11 $11
	ld   de, $2b17                                   ; $4aec: $11 $17 $2b
	cp   d                                           ; $4aef: $ba
	sbc  $fc                                         ; $4af0: $de $fc
	rst  $38                                         ; $4af2: $ff
	rst  JumpTable                                         ; $4af3: $df
	call $9beb                                       ; $4af4: $cd $eb $9b
	xor  [hl]                                        ; $4af7: $ae
	rst  $38                                         ; $4af8: $ff
	rst  $38                                         ; $4af9: $ff
	db   $fc                                         ; $4afa: $fc
	xor  b                                           ; $4afb: $a8
	ld   b, c                                        ; $4afc: $41
	ld   de, $1111                                   ; $4afd: $11 $11 $11
	add  hl, de                                      ; $4b00: $19
	ld   l, h                                        ; $4b01: $6c
	ei                                               ; $4b02: $fb
	db   $ec                                         ; $4b03: $ec
	ei                                               ; $4b04: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b05: $cf
	sbc  [hl]                                        ; $4b06: $9e
	set  5, h                                        ; $4b07: $cb $ec
	cp   h                                           ; $4b09: $bc
	xor  h                                           ; $4b0a: $ac
	rst  $38                                         ; $4b0b: $ff
	rst  $38                                         ; $4b0c: $ff
	call c, $2187                                    ; $4b0d: $dc $87 $21
	ld   de, $1111                                   ; $4b10: $11 $11 $11
	ld   a, [hl+]                                    ; $4b13: $2a
	adc  a                                           ; $4b14: $8f
	rst  $28                                         ; $4b15: $ef
	ei                                               ; $4b16: $fb
	rst  $30                                         ; $4b17: $f7
	call c, $ad8f                                    ; $4b18: $dc $8f $ad
	db   $fd                                         ; $4b1b: $fd
	sbc  $af                                         ; $4b1c: $de $af
	db   $ed                                         ; $4b1e: $ed
	db   $fc                                         ; $4b1f: $fc
	ret  z                                           ; $4b20: $c8

	ld   h, [hl]                                     ; $4b21: $66
	ld   de, $1111                                   ; $4b22: $11 $11 $11
	ld   de, $ffa8                                   ; $4b25: $11 $a8 $ff
	rst  $28                                         ; $4b28: $ef
	cp   a                                           ; $4b29: $bf
	ld   a, c                                        ; $4b2a: $79
	sub  $fc                                         ; $4b2b: $d6 $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b2d: $cf
	xor  $fa                                         ; $4b2e: $ee $fa
	cp   $af                                         ; $4b30: $fe $af
	xor  d                                           ; $4b32: $aa
	add  h                                           ; $4b33: $84
	ld   h, c                                        ; $4b34: $61
	ld   de, $1111                                   ; $4b35: $11 $11 $11
	ld   a, b                                        ; $4b38: $78
	xor  a                                           ; $4b39: $af
	rst  $28                                         ; $4b3a: $ef
	db   $ec                                         ; $4b3b: $ec
	push hl                                          ; $4b3c: $e5
	cp   b                                           ; $4b3d: $b8
	adc  a                                           ; $4b3e: $8f
	xor  a                                           ; $4b3f: $af
	rst  $38                                         ; $4b40: $ff
	cp   $bf                                         ; $4b41: $fe $bf
	xor  d                                           ; $4b43: $aa
	ret  c                                           ; $4b44: $d8

	or   l                                           ; $4b45: $b5
	ld   sp, $1111                                   ; $4b46: $31 $11 $11
	ld   de, $9f6b                                   ; $4b49: $11 $6b $9f
	rst  $38                                         ; $4b4c: $ff
	db   $fd                                         ; $4b4d: $fd
	push hl                                          ; $4b4e: $e5
	ret  z                                           ; $4b4f: $c8

	sbc  a                                           ; $4b50: $9f
	cp   a                                           ; $4b51: $bf
	rst  $38                                         ; $4b52: $ff
	rst  $38                                         ; $4b53: $ff
	cp   [hl]                                        ; $4b54: $be
	cp   c                                           ; $4b55: $b9
	or   a                                           ; $4b56: $b7
	sub  h                                           ; $4b57: $94
	ld   hl, $1111                                   ; $4b58: $21 $11 $11
	ld   de, $ffb9                                   ; $4b5b: $11 $b9 $ff
	rst  $38                                         ; $4b5e: $ff
	xor  a                                           ; $4b5f: $af
	ld   l, c                                        ; $4b60: $69
	or   l                                           ; $4b61: $b5
	ei                                               ; $4b62: $fb
	rst  $38                                         ; $4b63: $ff
	rst  $38                                         ; $4b64: $ff
	ei                                               ; $4b65: $fb
	call c, Call_0fa_689a                            ; $4b66: $dc $9a $68
	ld   sp, $1111                                   ; $4b69: $31 $11 $11
	ld   de, $9f5a                                   ; $4b6c: $11 $5a $9f
	rst  $28                                         ; $4b6f: $ef
	call z, $e9f3                                    ; $4b70: $cc $f3 $e9
	sbc  a                                           ; $4b73: $9f
	xor  a                                           ; $4b74: $af
	rst  $38                                         ; $4b75: $ff
	db   $fd                                         ; $4b76: $fd
	call $959a                                       ; $4b77: $cd $9a $95
	add  c                                           ; $4b7a: $81
	ld   de, $1111                                   ; $4b7b: $11 $11 $11
	ld   a, c                                        ; $4b7e: $79
	cp   a                                           ; $4b7f: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b80: $cf
	xor  c                                           ; $4b81: $a9
	di                                               ; $4b82: $f3
	ld   [$afaf], a                                  ; $4b83: $ea $af $af
	rst  $38                                         ; $4b86: $ff
	ei                                               ; $4b87: $fb
	cp   l                                           ; $4b88: $bd
	adc  d                                           ; $4b89: $8a
	add  l                                           ; $4b8a: $85
	ld   [hl], c                                     ; $4b8b: $71
	ld   de, $1111                                   ; $4b8c: $11 $11 $11
	rst  $30                                         ; $4b8f: $f7
	rst  $38                                         ; $4b90: $ff
	xor  a                                           ; $4b91: $af
	ld   c, [hl]                                     ; $4b92: $4e
	ld   [hl], a                                     ; $4b93: $77
	rst  $30                                         ; $4b94: $f7
	rst  $38                                         ; $4b95: $ff
	rst  $38                                         ; $4b96: $ff
	rst  $38                                         ; $4b97: $ff
	ld   sp, hl                                      ; $4b98: $f9
	cp   d                                           ; $4b99: $ba
	ld   l, e                                        ; $4b9a: $6b
	ld   b, h                                        ; $4b9b: $44
	ld   de, $1111                                   ; $4b9c: $11 $11 $11
	ld   e, a                                        ; $4b9f: $5f
	cp   a                                           ; $4ba0: $bf
	ld   a, [$c394]                                  ; $4ba1: $fa $94 $c3
	xor  h                                           ; $4ba4: $ac
	cp   a                                           ; $4ba5: $bf
	rst  $28                                         ; $4ba6: $ef
	rst  $38                                         ; $4ba7: $ff
	db   $fc                                         ; $4ba8: $fc
	sbc  d                                           ; $4ba9: $9a
	add  [hl]                                        ; $4baa: $86
	ld   h, c                                        ; $4bab: $61
	ld   de, $1111                                   ; $4bac: $11 $11 $11
	sbc  a                                           ; $4baf: $9f
	rst  $38                                         ; $4bb0: $ff
	db   $dd                                         ; $4bb1: $dd
	ld   d, l                                        ; $4bb2: $55
	and  c                                           ; $4bb3: $a1
	ret                                              ; $4bb4: $c9


	rst  JumpTable                                         ; $4bb5: $df
	rst  $28                                         ; $4bb6: $ef
	rst  $38                                         ; $4bb7: $ff
	ld   a, [$67a9]                                  ; $4bb8: $fa $a9 $67
	ld   sp, $1111                                   ; $4bbb: $31 $11 $11
	add  hl, de                                      ; $4bbe: $19
	rst  $28                                         ; $4bbf: $ef
	rst  $38                                         ; $4bc0: $ff
	jp   hl                                          ; $4bc1: $e9


	dec  de                                          ; $4bc2: $1b
	add  hl, de                                      ; $4bc3: $19
	xor  c                                           ; $4bc4: $a9
	cp   $ff                                         ; $4bc5: $fe $ff
	rst  $38                                         ; $4bc7: $ff
	sbc  b                                           ; $4bc8: $98
	add  h                                           ; $4bc9: $84
	ld   d, c                                        ; $4bca: $51
	ld   de, $1111                                   ; $4bcb: $11 $11 $11
	rst  $38                                         ; $4bce: $ff
	rst  $38                                         ; $4bcf: $ff
	cp   [hl]                                        ; $4bd0: $be
	dec  h                                           ; $4bd1: $25
	ld   h, c                                        ; $4bd2: $61
	add  $ff                                         ; $4bd3: $c6 $ff
	rst  $38                                         ; $4bd5: $ff
	rst  $38                                         ; $4bd6: $ff
	ld   hl, sp+$74                                  ; $4bd7: $f8 $74
	ld   de, $1111                                   ; $4bd9: $11 $11 $11
	ld   [de], a                                     ; $4bdc: $12
	rst  $38                                         ; $4bdd: $ff
	rst  $38                                         ; $4bde: $ff
	db   $ec                                         ; $4bdf: $ec
	ld   b, l                                        ; $4be0: $45
	ld   b, d                                        ; $4be1: $42
	or   a                                           ; $4be2: $b7
	rst  $38                                         ; $4be3: $ff
	rst  $38                                         ; $4be4: $ff
	rst  $38                                         ; $4be5: $ff
	reti                                             ; $4be6: $d9


	ld   d, e                                        ; $4be7: $53
	ld   de, $1111                                   ; $4be8: $11 $11 $11
	inc  l                                           ; $4beb: $2c
	rst  $38                                         ; $4bec: $ff
	rst  $38                                         ; $4bed: $ff
	and  $65                                         ; $4bee: $e6 $65
	add  hl, de                                      ; $4bf0: $19
	ld   a, [hl]                                     ; $4bf1: $7e
	rst  $38                                         ; $4bf2: $ff
	rst  $38                                         ; $4bf3: $ff
	cp   $b6                                         ; $4bf4: $fe $b6
	ld   hl, $1111                                   ; $4bf6: $21 $11 $11
	inc  d                                           ; $4bf9: $14
	rst  $28                                         ; $4bfa: $ef
	rst  $38                                         ; $4bfb: $ff
	db   $fc                                         ; $4bfc: $fc
	ld   c, b                                        ; $4bfd: $48
	inc  h                                           ; $4bfe: $24
	sbc  b                                           ; $4bff: $98
	db   $fd                                         ; $4c00: $fd
	rst  $38                                         ; $4c01: $ff
	rst  $38                                         ; $4c02: $ff
	xor  b                                           ; $4c03: $a8
	ld   sp, $1111                                   ; $4c04: $31 $11 $11
	dec  d                                           ; $4c07: $15
	rst  $38                                         ; $4c08: $ff
	rst  $38                                         ; $4c09: $ff
	db   $fd                                         ; $4c0a: $fd
	ld   c, c                                        ; $4c0b: $49
	inc  d                                           ; $4c0c: $14
	sbc  b                                           ; $4c0d: $98
	db   $fd                                         ; $4c0e: $fd
	rst  $38                                         ; $4c0f: $ff
	rst  $38                                         ; $4c10: $ff
	sub  l                                           ; $4c11: $95
	ld   de, $1111                                   ; $4c12: $11 $11 $11
	ccf                                              ; $4c15: $3f
	rst  $38                                         ; $4c16: $ff
	rst  $38                                         ; $4c17: $ff
	or   $84                                         ; $4c18: $f6 $84
	add  hl, hl                                      ; $4c1a: $29
	ld   a, a                                        ; $4c1b: $7f
	rst  $38                                         ; $4c1c: $ff
	rst  $38                                         ; $4c1d: $ff
	ld   a, [$1121]                                  ; $4c1e: $fa $21 $11
	ld   de, $ff18                                   ; $4c21: $11 $18 $ff
	rst  $38                                         ; $4c24: $ff

jr_0fa_4c25:
	db   $fc                                         ; $4c25: $fc
	adc  b                                           ; $4c26: $88
	ld   [hl], $6a                                   ; $4c27: $36 $6a
	rst  $38                                         ; $4c29: $ff
	rst  $38                                         ; $4c2a: $ff
	db   $fd                                         ; $4c2b: $fd
	ld   d, c                                        ; $4c2c: $51
	ld   de, $1a11                                   ; $4c2d: $11 $11 $1a
	rst  $38                                         ; $4c30: $ff
	rst  $38                                         ; $4c31: $ff
	ei                                               ; $4c32: $fb
	add  a                                           ; $4c33: $87
	ld   h, $5a                                      ; $4c34: $26 $5a
	rst  $38                                         ; $4c36: $ff
	rst  $38                                         ; $4c37: $ff
	db   $fd                                         ; $4c38: $fd
	ld   sp, $1111                                   ; $4c39: $31 $11 $11
	ld   a, $ff                                      ; $4c3c: $3e $ff
	rst  $38                                         ; $4c3e: $ff
	ld   sp, hl                                      ; $4c3f: $f9
	add  d                                           ; $4c40: $82
	ld   [hl], $5d                                   ; $4c41: $36 $5d
	rst  JumpTable                                         ; $4c43: $df
	rst  $38                                         ; $4c44: $ff
	push af                                          ; $4c45: $f5
	ld   de, $1111                                   ; $4c46: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c49: $cf
	rst  $38                                         ; $4c4a: $ff
	rst  $38                                         ; $4c4b: $ff
	xor  b                                           ; $4c4c: $a8
	ld   b, d                                        ; $4c4d: $42
	ld   h, h                                        ; $4c4e: $64
	call $ffff                                       ; $4c4f: $cd $ff $ff
	ld   h, c                                        ; $4c52: $61
	ld   de, $1e11                                   ; $4c53: $11 $11 $1e
	rst  $38                                         ; $4c56: $ff
	rst  $38                                         ; $4c57: $ff
	ld   sp, hl                                      ; $4c58: $f9
	and  c                                           ; $4c59: $a1
	inc  h                                           ; $4c5a: $24
	ld   c, l                                        ; $4c5b: $4d
	cp   a                                           ; $4c5c: $bf
	rst  $38                                         ; $4c5d: $ff
	db   $e3                                         ; $4c5e: $e3
	ld   de, $1711                                   ; $4c5f: $11 $11 $17
	rst  $38                                         ; $4c62: $ff
	rst  $38                                         ; $4c63: $ff
	rst  $38                                         ; $4c64: $ff
	or   a                                           ; $4c65: $b7
	dec  d                                           ; $4c66: $15
	jr   z, jr_0fa_4c25                              ; $4c67: $28 $bc

	cp   $e6                                         ; $4c69: $fe $e6
	ld   de, $1411                                   ; $4c6b: $11 $11 $14
	rst  $28                                         ; $4c6e: $ef
	rst  $38                                         ; $4c6f: $ff
	rst  $38                                         ; $4c70: $ff
	jp   z, Jump_0fa_4735                            ; $4c71: $ca $35 $47

	cp   d                                           ; $4c74: $ba
	db   $db                                         ; $4c75: $db
	or   h                                           ; $4c76: $b4
	ld   de, $1811                                   ; $4c77: $11 $11 $18
	rst  $38                                         ; $4c7a: $ff
	rst  $38                                         ; $4c7b: $ff
	rst  $38                                         ; $4c7c: $ff
	or   a                                           ; $4c7d: $b7
	ld   b, l                                        ; $4c7e: $45
	ld   c, b                                        ; $4c7f: $48
	sbc  e                                           ; $4c80: $9b
	jp   c, $1171                                    ; $4c81: $da $71 $11

	ld   de, $ff4c                                   ; $4c84: $11 $4c $ff
	rst  $38                                         ; $4c87: $ff
	cp   $a6                                         ; $4c88: $fe $a6
	ld   h, h                                        ; $4c8a: $64
	ld   h, l                                        ; $4c8b: $65
	ld   h, [hl]                                     ; $4c8c: $66
	ld   sp, $0311                                   ; $4c8d: $31 $11 $03
	adc  e                                           ; $4c90: $8b
	rst  $38                                         ; $4c91: $ff
	rst  $38                                         ; $4c92: $ff
	xor  $eb                                         ; $4c93: $ee $eb
	ret                                              ; $4c95: $c9


	and  l                                           ; $4c96: $a5
	ld   de, $1111                                   ; $4c97: $11 $11 $11
	ld   l, l                                        ; $4c9a: $6d
	rst  $38                                         ; $4c9b: $ff
	rst  $38                                         ; $4c9c: $ff
	ret  z                                           ; $4c9d: $c8

	halt                                             ; $4c9e: $76
	sbc  e                                           ; $4c9f: $9b
	sbc  $b8                                         ; $4ca0: $de $b8
	ld   de, $1211                                   ; $4ca2: $11 $11 $12
	sbc  a                                           ; $4ca5: $9f
	rst  $38                                         ; $4ca6: $ff
	rst  $38                                         ; $4ca7: $ff
	jp   hl                                          ; $4ca8: $e9


	ld   h, l                                        ; $4ca9: $65
	ld   b, [hl]                                     ; $4caa: $46
	ld   d, h                                        ; $4cab: $54
	ld   de, $6a11                                   ; $4cac: $11 $11 $6a
	rst  $28                                         ; $4caf: $ef
	rst  $38                                         ; $4cb0: $ff
	reti                                             ; $4cb1: $d9


	add  a                                           ; $4cb2: $87
	adc  e                                           ; $4cb3: $8b
	xor  l                                           ; $4cb4: $ad
	sub  [hl]                                        ; $4cb5: $96
	ld   de, $1711                                   ; $4cb6: $11 $11 $17
	rst  $28                                         ; $4cb9: $ef
	rst  $38                                         ; $4cba: $ff
	rst  $38                                         ; $4cbb: $ff
	push bc                                          ; $4cbc: $c5
	ld   d, e                                        ; $4cbd: $53
	inc  sp                                          ; $4cbe: $33
	ld   de, $1411                                   ; $4cbf: $11 $11 $14
	cp   [hl]                                        ; $4cc2: $be
	rst  $38                                         ; $4cc3: $ff
	rst  $38                                         ; $4cc4: $ff
	cp   d                                           ; $4cc5: $ba
	sbc  c                                           ; $4cc6: $99
	cp   d                                           ; $4cc7: $ba
	or   a                                           ; $4cc8: $b7
	ld   hl, $1111                                   ; $4cc9: $21 $11 $11
	ld   a, l                                        ; $4ccc: $7d
	rst  $38                                         ; $4ccd: $ff
	rst  $38                                         ; $4cce: $ff
	db   $fc                                         ; $4ccf: $fc
	add  a                                           ; $4cd0: $87
	ld   d, [hl]                                     ; $4cd1: $56
	ld   b, c                                        ; $4cd2: $41
	ld   de, $5b11                                   ; $4cd3: $11 $11 $5b
	rst  $28                                         ; $4cd6: $ef
	rst  $38                                         ; $4cd7: $ff
	ei                                               ; $4cd8: $fb
	add  [hl]                                        ; $4cd9: $86
	ld   [hl], a                                     ; $4cda: $77
	add  a                                           ; $4cdb: $87
	ld   sp, $1311                                   ; $4cdc: $31 $11 $13
	ld   a, e                                        ; $4cdf: $7b
	rst  $38                                         ; $4ce0: $ff
	rst  $38                                         ; $4ce1: $ff
	db   $dd                                         ; $4ce2: $dd
	xor  d                                           ; $4ce3: $aa
	xor  c                                           ; $4ce4: $a9
	ld   h, c                                        ; $4ce5: $61
	ld   de, $3811                                   ; $4ce6: $11 $11 $38
	rst  $28                                         ; $4ce9: $ef
	rst  $38                                         ; $4cea: $ff
	cp   $96                                         ; $4ceb: $fe $96
	ld   h, l                                        ; $4ced: $65
	ld   [hl], l                                     ; $4cee: $75
	ld   hl, $1511                                   ; $4cef: $21 $11 $15
	sbc  [hl]                                        ; $4cf2: $9e
	rst  $38                                         ; $4cf3: $ff
	rst  $38                                         ; $4cf4: $ff
	ret  z                                           ; $4cf5: $c8

	ld   d, l                                        ; $4cf6: $55
	ld   d, [hl]                                     ; $4cf7: $56
	ld   b, c                                        ; $4cf8: $41
	ld   de, $8925                                   ; $4cf9: $11 $25 $89
	rst  $28                                         ; $4cfc: $ef
	cp   $dd                                         ; $4cfd: $fe $dd
	res  5, e                                        ; $4cff: $cb $ab
	sub  e                                           ; $4d01: $93
	ld   de, $1411                                   ; $4d02: $11 $11 $14
	cp   a                                           ; $4d05: $bf
	rst  $38                                         ; $4d06: $ff
	rst  $38                                         ; $4d07: $ff
	sub  $43                                         ; $4d08: $d6 $43
	ld   b, d                                        ; $4d0a: $42
	ld   de, $4911                                   ; $4d0b: $11 $11 $49
	rst  JumpTable                                         ; $4d0e: $df
	rst  $38                                         ; $4d0f: $ff
	db   $eb                                         ; $4d10: $eb
	add  [hl]                                        ; $4d11: $86
	ld   l, c                                        ; $4d12: $69
	xor  e                                           ; $4d13: $ab
	add  e                                           ; $4d14: $83
	ld   de, $2511                                   ; $4d15: $11 $11 $25
	cp   a                                           ; $4d18: $bf
	rst  $38                                         ; $4d19: $ff
	rst  $38                                         ; $4d1a: $ff
	jp   z, $3175                                    ; $4d1b: $ca $75 $31

	ld   de, $6a11                                   ; $4d1e: $11 $11 $6a
	rst  $28                                         ; $4d21: $ef
	rst  $38                                         ; $4d22: $ff
	db   $fc                                         ; $4d23: $fc
	sub  l                                           ; $4d24: $95
	ld   d, l                                        ; $4d25: $55
	ld   [hl], l                                     ; $4d26: $75
	ld   de, $5912                                   ; $4d27: $11 $12 $59
	cp   [hl]                                        ; $4d2a: $be
	rst  $38                                         ; $4d2b: $ff
	db   $ed                                         ; $4d2c: $ed
	jp   z, $a9a9                                    ; $4d2d: $ca $a9 $a9

	ld   sp, $1211                                   ; $4d30: $31 $11 $12
	ld   l, e                                        ; $4d33: $6b
	rst  $38                                         ; $4d34: $ff
	rst  $38                                         ; $4d35: $ff
	db   $fd                                         ; $4d36: $fd
	ld   [hl], l                                     ; $4d37: $75
	inc  [hl]                                        ; $4d38: $34
	ld   de, $1511                                   ; $4d39: $11 $11 $15
	cp   [hl]                                        ; $4d3c: $be
	rst  $38                                         ; $4d3d: $ff
	rst  $38                                         ; $4d3e: $ff
	cp   b                                           ; $4d3f: $b8
	ld   d, l                                        ; $4d40: $55
	ld   l, b                                        ; $4d41: $68
	add  h                                           ; $4d42: $84
	ld   de, $5912                                   ; $4d43: $11 $12 $59
	cp   a                                           ; $4d46: $bf
	rst  $38                                         ; $4d47: $ff
	db   $fd                                         ; $4d48: $fd
	jp   z, Jump_0fa_7288                            ; $4d49: $ca $88 $72

	ld   de, $3911                                   ; $4d4c: $11 $11 $39
	rst  JumpTable                                         ; $4d4f: $df
	rst  $38                                         ; $4d50: $ff
	rst  $38                                         ; $4d51: $ff
	and  l                                           ; $4d52: $a5
	ld   b, e                                        ; $4d53: $43
	ld   d, e                                        ; $4d54: $53
	ld   de, $5a12                                   ; $4d55: $11 $12 $5a
	rst  JumpTable                                         ; $4d58: $df
	rst  $38                                         ; $4d59: $ff
	ei                                               ; $4d5a: $fb
	and  [hl]                                        ; $4d5b: $a6
	ld   h, a                                        ; $4d5c: $67
	sub  a                                           ; $4d5d: $97
	ld   hl, $1511                                   ; $4d5e: $21 $11 $15
	sbc  l                                           ; $4d61: $9d
	rst  $38                                         ; $4d62: $ff
	rst  $38                                         ; $4d63: $ff
	db   $eb                                         ; $4d64: $eb
	add  [hl]                                        ; $4d65: $86
	ld   d, l                                        ; $4d66: $55
	ld   de, $2611                                   ; $4d67: $11 $11 $26
	cp   a                                           ; $4d6a: $bf
	rst  $38                                         ; $4d6b: $ff
	rst  $38                                         ; $4d6c: $ff
	ret  z                                           ; $4d6d: $c8

	ld   d, h                                        ; $4d6e: $54
	ld   d, [hl]                                     ; $4d6f: $56
	ld   sp, $2511                                   ; $4d70: $31 $11 $25
	cp   [hl]                                        ; $4d73: $be
	rst  $38                                         ; $4d74: $ff
	rst  $38                                         ; $4d75: $ff
	ret                                              ; $4d76: $c9


	ld   h, [hl]                                     ; $4d77: $66
	ld   h, a                                        ; $4d78: $67
	ld   b, c                                        ; $4d79: $41
	ld   de, $8c13                                   ; $4d7a: $11 $13 $8c
	rst  $38                                         ; $4d7d: $ff
	rst  $38                                         ; $4d7e: $ff
	db   $fc                                         ; $4d7f: $fc
	add  [hl]                                        ; $4d80: $86
	ld   b, l                                        ; $4d81: $45
	ld   hl, $1511                                   ; $4d82: $21 $11 $15
	xor  [hl]                                        ; $4d85: $ae
	rst  $38                                         ; $4d86: $ff
	rst  $38                                         ; $4d87: $ff
	reti                                             ; $4d88: $d9


	ld   d, h                                        ; $4d89: $54
	ld   b, [hl]                                     ; $4d8a: $46
	ld   b, c                                        ; $4d8b: $41
	ld   de, $8c24                                   ; $4d8c: $11 $24 $8c
	rst  $38                                         ; $4d8f: $ff
	rst  $38                                         ; $4d90: $ff
	call c, Call_0fa_6687                            ; $4d91: $dc $87 $66
	ld   b, c                                        ; $4d94: $41
	ld   de, $8b13                                   ; $4d95: $11 $13 $8b
	rst  $38                                         ; $4d98: $ff
	rst  $38                                         ; $4d99: $ff
	db   $fc                                         ; $4d9a: $fc
	add  l                                           ; $4d9b: $85
	ld   b, h                                        ; $4d9c: $44
	ld   hl, $2511                                   ; $4d9d: $21 $11 $25
	xor  l                                           ; $4da0: $ad
	rst  $38                                         ; $4da1: $ff
	rst  $38                                         ; $4da2: $ff
	reti                                             ; $4da3: $d9


	ld   h, [hl]                                     ; $4da4: $66
	ld   d, [hl]                                     ; $4da5: $56
	ld   d, c                                        ; $4da6: $51
	ld   de, $8b14                                   ; $4da7: $11 $14 $8b
	rst  $38                                         ; $4daa: $ff
	rst  $38                                         ; $4dab: $ff
	db   $fd                                         ; $4dac: $fd
	sub  a                                           ; $4dad: $97
	ld   d, l                                        ; $4dae: $55
	ld   hl, $1411                                   ; $4daf: $21 $11 $14
	sbc  l                                           ; $4db2: $9d
	rst  $38                                         ; $4db3: $ff
	rst  $38                                         ; $4db4: $ff
	ld   [$3464], a                                  ; $4db5: $ea $64 $34
	ld   hl, $3711                                   ; $4db8: $21 $11 $37
	cp   h                                           ; $4dbb: $bc
	rst  $38                                         ; $4dbc: $ff
	cp   $da                                         ; $4dbd: $fe $da
	halt                                             ; $4dbf: $76
	ld   d, [hl]                                     ; $4dc0: $56
	ld   sp, $2411                                   ; $4dc1: $31 $11 $24
	adc  h                                           ; $4dc4: $8c
	rst  $38                                         ; $4dc5: $ff
	rst  $38                                         ; $4dc6: $ff
	db   $fc                                         ; $4dc7: $fc
	add  l                                           ; $4dc8: $85
	inc  sp                                          ; $4dc9: $33
	ld   de, $4811                                   ; $4dca: $11 $11 $48
	rst  JumpTable                                         ; $4dcd: $df
	rst  $38                                         ; $4dce: $ff
	rst  $38                                         ; $4dcf: $ff
	or   a                                           ; $4dd0: $b7
	ld   b, h                                        ; $4dd1: $44
	ld   b, l                                        ; $4dd2: $45
	ld   hl, $4712                                   ; $4dd3: $21 $12 $47
	sbc  h                                           ; $4dd6: $9c
	rst  $38                                         ; $4dd7: $ff
	cp   $da                                         ; $4dd8: $fe $da
	sub  a                                           ; $4dda: $97
	ld   h, h                                        ; $4ddb: $64
	ld   de, $3711                                   ; $4ddc: $11 $11 $37
	cp   a                                           ; $4ddf: $bf
	rst  $38                                         ; $4de0: $ff
	rst  $38                                         ; $4de1: $ff
	or   [hl]                                        ; $4de2: $b6
	ld   [hl-], a                                    ; $4de3: $32
	ld   hl, $0411                                   ; $4de4: $21 $11 $04
	ld   a, e                                        ; $4de7: $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4de8: $cf
	rst  $38                                         ; $4de9: $ff
	db   $fc                                         ; $4dea: $fc
	cp   b                                           ; $4deb: $b8
	halt                                             ; $4dec: $76
	ld   [hl], h                                     ; $4ded: $74
	ld   de, $2711                                   ; $4dee: $11 $11 $27
	cp   a                                           ; $4df1: $bf
	rst  $38                                         ; $4df2: $ff
	rst  $38                                         ; $4df3: $ff
	add  $31                                         ; $4df4: $c6 $31
	ld   de, $1511                                   ; $4df6: $11 $11 $15
	sbc  l                                           ; $4df9: $9d
	rst  $38                                         ; $4dfa: $ff
	rst  $38                                         ; $4dfb: $ff
	jp   c, Jump_0fa_6676                            ; $4dfc: $da $76 $66

	ld   [hl], e                                     ; $4dff: $73
	ld   de, $3711                                   ; $4e00: $11 $11 $37
	rst  JumpTable                                         ; $4e03: $df
	rst  $38                                         ; $4e04: $ff
	rst  $38                                         ; $4e05: $ff
	or   l                                           ; $4e06: $b5
	ld   hl, $1111                                   ; $4e07: $21 $11 $11
	ld   h, $bf                                      ; $4e0a: $26 $bf
	rst  $38                                         ; $4e0c: $ff
	rst  $38                                         ; $4e0d: $ff
	and  a                                           ; $4e0e: $a7
	ld   b, h                                        ; $4e0f: $44
	ld   d, a                                        ; $4e10: $57
	ld   [hl], e                                     ; $4e11: $73
	ld   de, $3711                                   ; $4e12: $11 $11 $37
	rst  JumpTable                                         ; $4e15: $df
	rst  $38                                         ; $4e16: $ff
	rst  $38                                         ; $4e17: $ff
	or   a                                           ; $4e18: $b7
	ld   sp, $1111                                   ; $4e19: $31 $11 $11
	rla                                              ; $4e1c: $17
	rst  $38                                         ; $4e1d: $ff
	rst  $38                                         ; $4e1e: $ff
	db   $fd                                         ; $4e1f: $fd
	add  e                                           ; $4e20: $83
	ld   bc, $6347                                   ; $4e21: $01 $47 $63
	inc  hl                                          ; $4e24: $23
	ld   [de], a                                     ; $4e25: $12
	ld   e, c                                        ; $4e26: $59
	rst  $28                                         ; $4e27: $ef
	rst  $38                                         ; $4e28: $ff
	cp   $a7                                         ; $4e29: $fe $a7
	ld   b, c                                        ; $4e2b: $41
	ld   de, $2911                                   ; $4e2c: $11 $11 $29
	rst  $38                                         ; $4e2f: $ff
	rst  $38                                         ; $4e30: $ff
	db   $fd                                         ; $4e31: $fd
	ld   h, c                                        ; $4e32: $61
	ld   de, $3334                                   ; $4e33: $11 $34 $33
	ld   d, [hl]                                     ; $4e36: $56
	ld   b, l                                        ; $4e37: $45
	ld   l, e                                        ; $4e38: $6b
	rst  $38                                         ; $4e39: $ff
	rst  $38                                         ; $4e3a: $ff
	db   $fd                                         ; $4e3b: $fd
	or   a                                           ; $4e3c: $b7
	ld   b, c                                        ; $4e3d: $41
	ld   de, $4b11                                   ; $4e3e: $11 $11 $4b
	rst  $38                                         ; $4e41: $ff
	rst  $38                                         ; $4e42: $ff
	ei                                               ; $4e43: $fb
	ld   b, c                                        ; $4e44: $41
	ld   de, $2323                                   ; $4e45: $11 $23 $23
	ld   h, l                                        ; $4e48: $65
	ld   d, a                                        ; $4e49: $57
	adc  l                                           ; $4e4a: $8d
	rst  $38                                         ; $4e4b: $ff
	rst  $38                                         ; $4e4c: $ff
	ei                                               ; $4e4d: $fb
	add  l                                           ; $4e4e: $85
	ld   hl, $1111                                   ; $4e4f: $21 $11 $11
	ld   a, [hl]                                     ; $4e52: $7e
	rst  $38                                         ; $4e53: $ff
	rst  $38                                         ; $4e54: $ff
	jp   hl                                          ; $4e55: $e9


	ld   hl, $3311                                   ; $4e56: $21 $11 $33
	inc  [hl]                                        ; $4e59: $34
	ld   d, h                                        ; $4e5a: $54
	ld   d, [hl]                                     ; $4e5b: $56
	xor  a                                           ; $4e5c: $af
	rst  $38                                         ; $4e5d: $ff
	rst  $38                                         ; $4e5e: $ff
	ld   [$1163], a                                  ; $4e5f: $ea $63 $11
	ld   de, $cf14                                   ; $4e62: $11 $14 $cf
	rst  $38                                         ; $4e65: $ff
	rst  $38                                         ; $4e66: $ff
	or   l                                           ; $4e67: $b5
	ld   de, $4314                                   ; $4e68: $11 $14 $43
	inc  [hl]                                        ; $4e6b: $34
	ld   [hl-], a                                    ; $4e6c: $32
	ld   d, a                                        ; $4e6d: $57
	rst  JumpTable                                         ; $4e6e: $df
	rst  $38                                         ; $4e6f: $ff
	rst  $38                                         ; $4e70: $ff
	cp   b                                           ; $4e71: $b8
	ld   b, c                                        ; $4e72: $41
	ld   de, $1711                                   ; $4e73: $11 $11 $17
	rst  $38                                         ; $4e76: $ff
	rst  $38                                         ; $4e77: $ff
	cp   $93                                         ; $4e78: $fe $93
	ld   bc, $4325                                   ; $4e7a: $01 $25 $43
	inc  sp                                          ; $4e7d: $33
	ld   [de], a                                     ; $4e7e: $12
	ld   e, b                                        ; $4e7f: $58
	rst  $38                                         ; $4e80: $ff
	rst  $38                                         ; $4e81: $ff
	cp   $a6                                         ; $4e82: $fe $a6
	ld   hl, $1111                                   ; $4e84: $21 $11 $11
	dec  sp                                          ; $4e87: $3b
	rst  $38                                         ; $4e88: $ff
	rst  $38                                         ; $4e89: $ff
	db   $fc                                         ; $4e8a: $fc
	ld   h, d                                        ; $4e8b: $62
	ld   [de], a                                     ; $4e8c: $12
	ld   d, [hl]                                     ; $4e8d: $56
	ld   d, e                                        ; $4e8e: $53
	ld   de, $5b12                                   ; $4e8f: $11 $12 $5b
	rst  $38                                         ; $4e92: $ff
	rst  $38                                         ; $4e93: $ff
	db   $fc                                         ; $4e94: $fc
	add  d                                           ; $4e95: $82
	ld   de, $1111                                   ; $4e96: $11 $11 $11
	ld   a, a                                        ; $4e99: $7f
	rst  $38                                         ; $4e9a: $ff
	rst  $38                                         ; $4e9b: $ff
	jp   hl                                          ; $4e9c: $e9


	ld   d, d                                        ; $4e9d: $52
	inc  [hl]                                        ; $4e9e: $34
	ld   [hl], a                                     ; $4e9f: $77
	ld   d, c                                        ; $4ea0: $51
	ld   de, $6f12                                   ; $4ea1: $11 $12 $6f
	rst  $38                                         ; $4ea4: $ff
	rst  $38                                         ; $4ea5: $ff
	ld   sp, hl                                      ; $4ea6: $f9
	ld   sp, $1111                                   ; $4ea7: $31 $11 $11
	ld   d, $cf                                      ; $4eaa: $16 $cf
	rst  $38                                         ; $4eac: $ff
	rst  $38                                         ; $4ead: $ff
	jp   z, Jump_0fa_7877                            ; $4eae: $ca $77 $78

	sub  h                                           ; $4eb1: $94
	ld   de, $1611                                   ; $4eb2: $11 $11 $16
	rst  $28                                         ; $4eb5: $ef
	rst  $38                                         ; $4eb6: $ff
	rst  $38                                         ; $4eb7: $ff
	and  d                                           ; $4eb8: $a2
	ld   de, $1111                                   ; $4eb9: $11 $11 $11
	ld   e, b                                        ; $4ebc: $58
	sbc  e                                           ; $4ebd: $9b
	rst  JumpTable                                         ; $4ebe: $df
	rst  $38                                         ; $4ebf: $ff
	rst  $38                                         ; $4ec0: $ff
	db   $db                                         ; $4ec1: $db
	sub  a                                           ; $4ec2: $97
	ld   d, c                                        ; $4ec3: $51
	ld   de, $4d11                                   ; $4ec4: $11 $11 $4d
	rst  $38                                         ; $4ec7: $ff
	rst  $38                                         ; $4ec8: $ff
	ei                                               ; $4ec9: $fb
	ld   sp, $2211                                   ; $4eca: $31 $11 $22
	inc  sp                                          ; $4ecd: $33
	ld   b, e                                        ; $4ece: $43
	ld   b, [hl]                                     ; $4ecf: $46
	sbc  a                                           ; $4ed0: $9f
	rst  $38                                         ; $4ed1: $ff
	rst  $38                                         ; $4ed2: $ff
	ei                                               ; $4ed3: $fb
	ld   h, d                                        ; $4ed4: $62
	ld   de, $1311                                   ; $4ed5: $11 $11 $13
	cp   a                                           ; $4ed8: $bf
	rst  $38                                         ; $4ed9: $ff
	rst  $38                                         ; $4eda: $ff
	add  $21                                         ; $4edb: $c6 $21
	dec  h                                           ; $4edd: $25
	add  a                                           ; $4ede: $87
	ld   sp, $1311                                   ; $4edf: $31 $11 $13
	cp   a                                           ; $4ee2: $bf
	rst  $38                                         ; $4ee3: $ff
	rst  $38                                         ; $4ee4: $ff
	push de                                          ; $4ee5: $d5
	ld   de, $1111                                   ; $4ee6: $11 $11 $11
	ld   a, [hl-]                                    ; $4ee9: $3a
	rst  $38                                         ; $4eea: $ff
	rst  $38                                         ; $4eeb: $ff
	cp   $a8                                         ; $4eec: $fe $a8
	ld   [hl], a                                     ; $4eee: $77
	adc  c                                           ; $4eef: $89
	ld   [hl], d                                     ; $4ef0: $72
	ld   de, $3c11                                   ; $4ef1: $11 $11 $3c
	rst  $38                                         ; $4ef4: $ff
	rst  $38                                         ; $4ef5: $ff
	db   $fc                                         ; $4ef6: $fc
	ld   sp, $1111                                   ; $4ef7: $31 $11 $11
	ld   [de], a                                     ; $4efa: $12
	ld   d, [hl]                                     ; $4efb: $56
	adc  d                                           ; $4efc: $8a
	rst  JumpTable                                         ; $4efd: $df
	rst  $38                                         ; $4efe: $ff
	rst  $38                                         ; $4eff: $ff
	jp   z, $1164                                    ; $4f00: $ca $64 $11

	ld   de, $cf13                                   ; $4f03: $11 $13 $cf
	rst  $38                                         ; $4f06: $ff
	rst  $38                                         ; $4f07: $ff
	add  $11                                         ; $4f08: $c6 $11
	dec  h                                           ; $4f0a: $25
	ld   [hl], l                                     ; $4f0b: $75
	ld   de, $1611                                   ; $4f0c: $11 $11 $16
	rst  $28                                         ; $4f0f: $ef
	rst  $38                                         ; $4f10: $ff
	rst  $38                                         ; $4f11: $ff
	sub  e                                           ; $4f12: $93
	ld   de, $1111                                   ; $4f13: $11 $11 $11
	ld   c, c                                        ; $4f16: $49
	rst  JumpTable                                         ; $4f17: $df
	rst  $38                                         ; $4f18: $ff
	rst  $38                                         ; $4f19: $ff
	db   $db                                         ; $4f1a: $db
	sbc  b                                           ; $4f1b: $98
	halt                                             ; $4f1c: $76
	ld   sp, $1111                                   ; $4f1d: $31 $11 $11
	ld   l, a                                        ; $4f20: $6f
	rst  $38                                         ; $4f21: $ff
	rst  $38                                         ; $4f22: $ff
	ld   sp, hl                                      ; $4f23: $f9
	ld   hl, $2211                                   ; $4f24: $21 $11 $22
	ld   de, $4811                                   ; $4f27: $11 $11 $48
	rst  JumpTable                                         ; $4f2a: $df
	rst  $38                                         ; $4f2b: $ff
	rst  $38                                         ; $4f2c: $ff
	push bc                                          ; $4f2d: $c5
	ld   de, $1111                                   ; $4f2e: $11 $11 $11
	rla                                              ; $4f31: $17
	rst  JumpTable                                         ; $4f32: $df
	rst  $38                                         ; $4f33: $ff
	rst  $38                                         ; $4f34: $ff
	jp   z, $5776                                    ; $4f35: $ca $76 $57

	ld   d, c                                        ; $4f38: $51
	ld   de, $5d11                                   ; $4f39: $11 $11 $5d
	rst  $38                                         ; $4f3c: $ff
	rst  $38                                         ; $4f3d: $ff
	db   $fc                                         ; $4f3e: $fc
	ld   sp, $3211                                   ; $4f3f: $31 $11 $32
	ld   hl, $3711                                   ; $4f42: $21 $11 $37
	rst  JumpTable                                         ; $4f45: $df
	rst  $38                                         ; $4f46: $ff
	rst  $38                                         ; $4f47: $ff
	or   [hl]                                        ; $4f48: $b6
	ld   de, $1111                                   ; $4f49: $11 $11 $11
	dec  d                                           ; $4f4c: $15
	cp   a                                           ; $4f4d: $bf
	rst  $38                                         ; $4f4e: $ff
	rst  $38                                         ; $4f4f: $ff
	db   $fc                                         ; $4f50: $fc

Call_0fa_4f51:
	sub  [hl]                                        ; $4f51: $96
	ld   d, h                                        ; $4f52: $54
	ld   sp, $1111                                   ; $4f53: $31 $11 $11
	ld   l, [hl]                                     ; $4f56: $6e
	rst  $38                                         ; $4f57: $ff
	rst  $38                                         ; $4f58: $ff
	ei                                               ; $4f59: $fb
	ld   h, d                                        ; $4f5a: $62
	inc  hl                                          ; $4f5b: $23
	ld   d, h                                        ; $4f5c: $54
	ld   de, $1711                                   ; $4f5d: $11 $11 $17
	rst  $28                                         ; $4f60: $ef
	rst  $38                                         ; $4f61: $ff
	rst  $38                                         ; $4f62: $ff
	sub  d                                           ; $4f63: $92
	ld   de, $1111                                   ; $4f64: $11 $11 $11
	inc  de                                          ; $4f67: $13
	ld   e, c                                        ; $4f68: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f69: $cf
	rst  $38                                         ; $4f6a: $ff
	rst  $38                                         ; $4f6b: $ff
	add  sp, $41                                     ; $4f6c: $e8 $41
	ld   de, $1111                                   ; $4f6e: $11 $11 $11
	ld   c, d                                        ; $4f71: $4a
	rst  $38                                         ; $4f72: $ff
	rst  $38                                         ; $4f73: $ff
	rst  $38                                         ; $4f74: $ff
	sub  $42                                         ; $4f75: $d6 $42
	ld   hl, $1111                                   ; $4f77: $21 $11 $11
	daa                                              ; $4f7a: $27
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f7b: $cf
	rst  $38                                         ; $4f7c: $ff
	rst  $38                                         ; $4f7d: $ff
	ld   [$1253], a                                  ; $4f7e: $ea $53 $12
	ld   de, $2611                                   ; $4f81: $11 $11 $26
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f84: $cf
	rst  $38                                         ; $4f85: $ff
	rst  $38                                         ; $4f86: $ff
	ld   [$3464], a                                  ; $4f87: $ea $64 $34
	ld   sp, $1111                                   ; $4f8a: $31 $11 $11
	adc  a                                           ; $4f8d: $8f
	rst  $38                                         ; $4f8e: $ff
	rst  $38                                         ; $4f8f: $ff
	db   $fc                                         ; $4f90: $fc
	ld   d, d                                        ; $4f91: $52
	ld   [de], a                                     ; $4f92: $12
	ld   d, h                                        ; $4f93: $54
	ld   hl, $1511                                   ; $4f94: $21 $11 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f97: $cf
	rst  $38                                         ; $4f98: $ff
	rst  $38                                         ; $4f99: $ff
	push de                                          ; $4f9a: $d5
	ld   de, $1111                                   ; $4f9b: $11 $11 $11
	ld   de, $bf36                                   ; $4f9e: $11 $36 $bf
	rst  $38                                         ; $4fa1: $ff
	rst  $38                                         ; $4fa2: $ff
	ld   a, [$1252]                                  ; $4fa3: $fa $52 $12
	ld   de, $1211                                   ; $4fa6: $11 $11 $12
	adc  l                                           ; $4fa9: $8d
	rst  $38                                         ; $4faa: $ff
	rst  $38                                         ; $4fab: $ff
	db   $fd                                         ; $4fac: $fd
	ld   h, d                                        ; $4fad: $62
	ld   de, $1132                                   ; $4fae: $11 $32 $11
	ld   de, $cf18                                   ; $4fb1: $11 $18 $cf
	rst  $38                                         ; $4fb4: $ff
	rst  $38                                         ; $4fb5: $ff
	push hl                                          ; $4fb6: $e5
	ld   sp, $1112                                   ; $4fb7: $31 $12 $11
	ld   de, $9c12                                   ; $4fba: $11 $12 $9c
	rst  $38                                         ; $4fbd: $ff
	rst  $38                                         ; $4fbe: $ff
	db   $fc                                         ; $4fbf: $fc
	ld   d, e                                        ; $4fc0: $53
	ld   de, $1132                                   ; $4fc1: $11 $32 $11
	ld   de, $cf29                                   ; $4fc4: $11 $29 $cf
	rst  $38                                         ; $4fc7: $ff
	rst  $38                                         ; $4fc8: $ff
	and  $41                                         ; $4fc9: $e6 $41
	ld   [de], a                                     ; $4fcb: $12
	ld   de, $1111                                   ; $4fcc: $11 $11 $11
	adc  h                                           ; $4fcf: $8c
	rst  $38                                         ; $4fd0: $ff
	rst  $38                                         ; $4fd1: $ff
	cp   $74                                         ; $4fd2: $fe $74
	ld   hl, $2132                                   ; $4fd4: $21 $32 $21
	ld   de, $af16                                   ; $4fd7: $11 $16 $af
	rst  $38                                         ; $4fda: $ff
	rst  $38                                         ; $4fdb: $ff
	ld   a, [$1343]                                  ; $4fdc: $fa $43 $13
	inc  sp                                          ; $4fdf: $33
	ld   bc, $2711                                   ; $4fe0: $01 $11 $27
	rst  JumpTable                                         ; $4fe3: $df
	rst  $38                                         ; $4fe4: $ff
	rst  $38                                         ; $4fe5: $ff
	or   l                                           ; $4fe6: $b5
	ld   hl, $5624                                   ; $4fe7: $21 $24 $56
	ld   de, $1511                                   ; $4fea: $11 $11 $15
	cp   a                                           ; $4fed: $bf
	rst  $38                                         ; $4fee: $ff
	rst  $38                                         ; $4fef: $ff
	add  sp, $41                                     ; $4ff0: $e8 $41
	ld   [hl+], a                                    ; $4ff2: $22
	ld   [hl+], a                                    ; $4ff3: $22
	ld   de, $2911                                   ; $4ff4: $11 $11 $29
	rst  $38                                         ; $4ff7: $ff
	rst  $38                                         ; $4ff8: $ff
	rst  $38                                         ; $4ff9: $ff
	add  $41                                         ; $4ffa: $c6 $41
	inc  hl                                          ; $4ffc: $23
	inc  sp                                          ; $4ffd: $33
	ld   de, $2911                                   ; $4ffe: $11 $11 $29
	rst  $38                                         ; $5001: $ff
	rst  $38                                         ; $5002: $ff
	rst  $38                                         ; $5003: $ff
	and  e                                           ; $5004: $a3
	ld   de, $6724                                   ; $5005: $11 $24 $67
	ld   hl, $1411                                   ; $5008: $21 $11 $14
	cp   a                                           ; $500b: $bf
	rst  $38                                         ; $500c: $ff
	rst  $38                                         ; $500d: $ff
	add  sp, $32                                     ; $500e: $e8 $32
	inc  de                                          ; $5010: $13
	ld   b, [hl]                                     ; $5011: $46
	ld   b, c                                        ; $5012: $41
	ld   de, $8e11                                   ; $5013: $11 $11 $8e
	rst  $38                                         ; $5016: $ff
	rst  $38                                         ; $5017: $ff
	db   $fd                                         ; $5018: $fd
	ld   h, h                                        ; $5019: $64
	ld   [hl+], a                                    ; $501a: $22
	ld   b, l                                        ; $501b: $45
	ld   h, h                                        ; $501c: $64
	ld   bc, $1711                                   ; $501d: $01 $11 $17
	rst  $28                                         ; $5020: $ef
	rst  $38                                         ; $5021: $ff
	rst  $38                                         ; $5022: $ff
	rst  $20                                         ; $5023: $e7
	ld   de, $5814                                   ; $5024: $11 $14 $58
	ld   [hl], h                                     ; $5027: $74
	ld   de, $1911                                   ; $5028: $11 $11 $19
	rst  $38                                         ; $502b: $ff
	rst  $38                                         ; $502c: $ff
	rst  $38                                         ; $502d: $ff
	or   e                                           ; $502e: $b3
	ld   de, $7b16                                   ; $502f: $11 $16 $7b
	add  l                                           ; $5032: $85
	ld   de, $1811                                   ; $5033: $11 $11 $18
	rst  $38                                         ; $5036: $ff
	rst  $38                                         ; $5037: $ff
	rst  $38                                         ; $5038: $ff
	jp   $1611                                       ; $5039: $c3 $11 $16


	adc  l                                           ; $503c: $8d

jr_0fa_503d:
	cp   d                                           ; $503d: $ba
	ld   hl, $1111                                   ; $503e: $21 $11 $11
	sbc  a                                           ; $5041: $9f
	rst  $38                                         ; $5042: $ff
	rst  $38                                         ; $5043: $ff
	ld   sp, hl                                      ; $5044: $f9
	ld   de, $7c14                                   ; $5045: $11 $14 $7c
	rst  $38                                         ; $5048: $ff
	db   $e4                                         ; $5049: $e4
	ld   de, $1511                                   ; $504a: $11 $11 $15
	rst  $28                                         ; $504d: $ef
	rst  $38                                         ; $504e: $ff
	rst  $38                                         ; $504f: $ff
	or   d                                           ; $5050: $b2
	ld   de, $bf08                                   ; $5051: $11 $08 $bf
	rst  $38                                         ; $5054: $ff
	ld   hl, sp+$11                                  ; $5055: $f8 $11
	ld   de, $7f11                                   ; $5057: $11 $11 $7f
	rst  $38                                         ; $505a: $ff
	rst  $38                                         ; $505b: $ff
	add  sp, $11                                     ; $505c: $e8 $11
	ld   de, $ff9c                                   ; $505e: $11 $9c $ff
	rst  $38                                         ; $5061: $ff
	or   l                                           ; $5062: $b5
	ld   de, $1111                                   ; $5063: $11 $11 $11
	rst  $28                                         ; $5066: $ef
	rst  $38                                         ; $5067: $ff
	rst  $38                                         ; $5068: $ff
	sub  l                                           ; $5069: $95
	ld   de, $bf13                                   ; $506a: $11 $13 $bf
	rst  $38                                         ; $506d: $ff
	rst  $38                                         ; $506e: $ff
	and  l                                           ; $506f: $a5
	ld   de, $1111                                   ; $5070: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5073: $cf
	rst  $38                                         ; $5074: $ff
	rst  $38                                         ; $5075: $ff
	add  h                                           ; $5076: $84
	ld   de, $df34                                   ; $5077: $11 $34 $df
	rst  $38                                         ; $507a: $ff
	rst  $38                                         ; $507b: $ff
	sub  [hl]                                        ; $507c: $96
	ld   de, $1111                                   ; $507d: $11 $11 $11
	ld   e, a                                        ; $5080: $5f
	rst  $38                                         ; $5081: $ff
	rst  $38                                         ; $5082: $ff
	rst  $20                                         ; $5083: $e7
	ld   h, d                                        ; $5084: $62
	dec  [hl]                                        ; $5085: $35
	ld   a, h                                        ; $5086: $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5087: $cf
	rst  $38                                         ; $5088: $ff
	jp   hl                                          ; $5089: $e9


	ld   [hl], c                                     ; $508a: $71
	ld   de, $1411                                   ; $508b: $11 $11 $14
	xor  a                                           ; $508e: $af
	rst  $38                                         ; $508f: $ff
	rst  $38                                         ; $5090: $ff
	xor  c                                           ; $5091: $a9
	ld   b, h                                        ; $5092: $44
	ld   b, l                                        ; $5093: $45
	xor  e                                           ; $5094: $ab
	rst  $28                                         ; $5095: $ef
	rst  $38                                         ; $5096: $ff
	bit  4, d                                        ; $5097: $cb $62
	ld   de, $1411                                   ; $5099: $11 $11 $14
	xor  a                                           ; $509c: $af
	rst  $38                                         ; $509d: $ff
	rst  $38                                         ; $509e: $ff
	or   a                                           ; $509f: $b7
	inc  [hl]                                        ; $50a0: $34
	scf                                              ; $50a1: $37
	adc  e                                           ; $50a2: $8b
	rst  $28                                         ; $50a3: $ef
	rst  $38                                         ; $50a4: $ff
	ld   [$1161], a                                  ; $50a5: $ea $61 $11
	ld   de, $bf14                                   ; $50a8: $11 $14 $bf
	rst  $38                                         ; $50ab: $ff
	cp   $b7                                         ; $50ac: $fe $b7
	ld   b, h                                        ; $50ae: $44
	jr   c, jr_0fa_503d                              ; $50af: $38 $8c

	rst  $28                                         ; $50b1: $ef
	cp   $ea                                         ; $50b2: $fe $ea
	ld   [hl], c                                     ; $50b4: $71
	ld   de, $1311                                   ; $50b5: $11 $11 $13
	xor  a                                           ; $50b8: $af
	rst  $38                                         ; $50b9: $ff
	rst  $38                                         ; $50ba: $ff
	ret  c                                           ; $50bb: $d8

	ld   b, l                                        ; $50bc: $45
	ld   b, a                                        ; $50bd: $47
	adc  h                                           ; $50be: $8c
	rst  JumpTable                                         ; $50bf: $df
	db   $fc                                         ; $50c0: $fc
	db   $db                                         ; $50c1: $db
	add  h                                           ; $50c2: $84
	ld   de, $1111                                   ; $50c3: $11 $11 $11
	adc  l                                           ; $50c6: $8d
	rst  $38                                         ; $50c7: $ff
	rst  $38                                         ; $50c8: $ff
	db   $ec                                         ; $50c9: $ec
	ld   h, [hl]                                     ; $50ca: $66
	dec  [hl]                                        ; $50cb: $35
	ld   h, a                                        ; $50cc: $67
	cp   e                                           ; $50cd: $bb
	cp   $ee                                         ; $50ce: $fe $ee
	cp   c                                           ; $50d0: $b9
	ld   hl, $1111                                   ; $50d1: $21 $11 $11
	jr   z, @+$01                                    ; $50d4: $28 $ff

	rst  $38                                         ; $50d6: $ff
	rst  $38                                         ; $50d7: $ff
	and  l                                           ; $50d8: $a5
	ld   d, d                                        ; $50d9: $52
	ld   d, l                                        ; $50da: $55
	sbc  e                                           ; $50db: $9b
	rst  JumpTable                                         ; $50dc: $df
	rst  $28                                         ; $50dd: $ef
	db   $ec                                         ; $50de: $ec
	ld   [hl], c                                     ; $50df: $71

jr_0fa_50e0:
	ld   de, $1511                                   ; $50e0: $11 $11 $15
	xor  a                                           ; $50e3: $af
	rst  $38                                         ; $50e4: $ff
	rst  $38                                         ; $50e5: $ff
	or   $42                                         ; $50e6: $f6 $42
	inc  d                                           ; $50e8: $14
	ld   c, d                                        ; $50e9: $4a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50ea: $cf
	rst  $38                                         ; $50eb: $ff
	db   $fc                                         ; $50ec: $fc
	or   [hl]                                        ; $50ed: $b6
	ld   de, $1111                                   ; $50ee: $11 $11 $11
	ld   l, e                                        ; $50f1: $6b
	rst  $38                                         ; $50f2: $ff
	rst  $38                                         ; $50f3: $ff
	cp   $54                                         ; $50f4: $fe $54
	ld   hl, $bc45                                   ; $50f6: $21 $45 $bc
	rst  $38                                         ; $50f9: $ff
	rst  $38                                         ; $50fa: $ff
	call z, $1161                                    ; $50fb: $cc $61 $11
	ld   de, $af15                                   ; $50fe: $11 $15 $af
	rst  $38                                         ; $5101: $ff
	rst  $38                                         ; $5102: $ff
	push hl                                          ; $5103: $e5
	ld   b, d                                        ; $5104: $42
	dec  d                                           ; $5105: $15
	ld   e, e                                        ; $5106: $5b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5107: $cf
	rst  $38                                         ; $5108: $ff
	db   $fd                                         ; $5109: $fd
	ret  z                                           ; $510a: $c8

	ld   hl, $1111                                   ; $510b: $21 $11 $11
	daa                                              ; $510e: $27
	rst  $38                                         ; $510f: $ff
	rst  $38                                         ; $5110: $ff
	rst  $38                                         ; $5111: $ff
	add  l                                           ; $5112: $85
	ld   b, c                                        ; $5113: $41
	ld   d, e                                        ; $5114: $53
	sbc  e                                           ; $5115: $9b
	rst  $28                                         ; $5116: $ef
	rst  $38                                         ; $5117: $ff
	db   $fd                                         ; $5118: $fd
	or   l                                           ; $5119: $b5
	ld   de, $1111                                   ; $511a: $11 $11 $11
	dec  sp                                          ; $511d: $3b
	rst  $38                                         ; $511e: $ff
	rst  $38                                         ; $511f: $ff
	cp   $66                                         ; $5120: $fe $66
	inc  de                                          ; $5122: $13
	dec  [hl]                                        ; $5123: $35
	cp   e                                           ; $5124: $bb
	rst  $38                                         ; $5125: $ff
	rst  $38                                         ; $5126: $ff
	xor  $84                                         ; $5127: $ee $84
	ld   de, $1111                                   ; $5129: $11 $11 $11
	ld   l, [hl]                                     ; $512c: $6e
	rst  $38                                         ; $512d: $ff
	rst  $38                                         ; $512e: $ff
	ei                                               ; $512f: $fb
	ld   h, h                                        ; $5130: $64
	inc  d                                           ; $5131: $14
	scf                                              ; $5132: $37
	xor  h                                           ; $5133: $ac
	rst  $38                                         ; $5134: $ff
	rst  $38                                         ; $5135: $ff
	db   $ed                                         ; $5136: $ed
	ld   [hl], h                                     ; $5137: $74
	ld   de, $1111                                   ; $5138: $11 $11 $11
	ld   a, [hl]                                     ; $513b: $7e
	rst  $38                                         ; $513c: $ff
	rst  $38                                         ; $513d: $ff
	ei                                               ; $513e: $fb
	ld   [hl], h                                     ; $513f: $74
	inc  h                                           ; $5140: $24
	jr   c, jr_0fa_50e0                              ; $5141: $38 $9d

	rst  $38                                         ; $5143: $ff
	rst  $38                                         ; $5144: $ff
	db   $ed                                         ; $5145: $ed
	sub  h                                           ; $5146: $94
	ld   de, $1111                                   ; $5147: $11 $11 $11
	ld   e, e                                        ; $514a: $5b
	rst  $38                                         ; $514b: $ff
	rst  $38                                         ; $514c: $ff
	db   $fd                                         ; $514d: $fd
	sub  [hl]                                        ; $514e: $96
	inc  h                                           ; $514f: $24
	dec  h                                           ; $5150: $25
	adc  d                                           ; $5151: $8a
	cp   $ff                                         ; $5152: $fe $ff
	cp   $b7                                         ; $5154: $fe $b7
	ld   de, $1111                                   ; $5156: $11 $11 $11
	jr   z, @+$01                                    ; $5159: $28 $ff

	rst  $38                                         ; $515b: $ff
	rst  $38                                         ; $515c: $ff
	and  a                                           ; $515d: $a7
	ld   [hl+], a                                    ; $515e: $22
	inc  hl                                          ; $515f: $23
	ld   a, c                                        ; $5160: $79
	sbc  $ff                                         ; $5161: $de $ff
	rst  $38                                         ; $5163: $ff
	ret                                              ; $5164: $c9


	ld   sp, $1111                                   ; $5165: $31 $11 $11
	inc  d                                           ; $5168: $14
	rst  JumpTable                                         ; $5169: $df
	rst  $38                                         ; $516a: $ff
	rst  $38                                         ; $516b: $ff
	ld   hl, sp+$51                                  ; $516c: $f8 $51
	ld   de, $ae36                                   ; $516e: $11 $36 $ae
	rst  $38                                         ; $5171: $ff
	rst  $38                                         ; $5172: $ff
	db   $fc                                         ; $5173: $fc
	add  c                                           ; $5174: $81
	ld   de, $1111                                   ; $5175: $11 $11 $11
	ld   l, a                                        ; $5178: $6f
	rst  $38                                         ; $5179: $ff
	rst  $38                                         ; $517a: $ff
	db   $fc                                         ; $517b: $fc
	ld   [hl], e                                     ; $517c: $73
	ld   de, $7b14                                   ; $517d: $11 $14 $7b
	rst  $38                                         ; $5180: $ff
	rst  $38                                         ; $5181: $ff
	rst  $38                                         ; $5182: $ff
	or   a                                           ; $5183: $b7
	ld   de, $1111                                   ; $5184: $11 $11 $11
	jr   @+$01                                       ; $5187: $18 $ff

	rst  $38                                         ; $5189: $ff
	rst  $38                                         ; $518a: $ff
	or   [hl]                                        ; $518b: $b6
	ld   hl, $5911                                   ; $518c: $21 $11 $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $518f: $cf
	rst  $38                                         ; $5190: $ff
	rst  $38                                         ; $5191: $ff
	db   $fc                                         ; $5192: $fc
	add  c                                           ; $5193: $81
	ld   de, $1111                                   ; $5194: $11 $11 $11
	ld   l, [hl]                                     ; $5197: $6e
	rst  $38                                         ; $5198: $ff
	rst  $38                                         ; $5199: $ff
	db   $fd                                         ; $519a: $fd
	ld   h, h                                        ; $519b: $64
	ld   de, $9b14                                   ; $519c: $11 $14 $9b
	rst  $38                                         ; $519f: $ff
	rst  $38                                         ; $51a0: $ff
	rst  $38                                         ; $51a1: $ff
	jp   z, $1131                                    ; $51a2: $ca $31 $11

	ld   de, $af13                                   ; $51a5: $11 $13 $af
	rst  $38                                         ; $51a8: $ff
	rst  $38                                         ; $51a9: $ff
	ld   hl, sp+$61                                  ; $51aa: $f8 $61
	ld   de, $9e27                                   ; $51ac: $11 $27 $9e
	rst  $38                                         ; $51af: $ff
	rst  $38                                         ; $51b0: $ff
	rst  $38                                         ; $51b1: $ff
	or   a                                           ; $51b2: $b7
	ld   de, $1111                                   ; $51b3: $11 $11 $11
	dec  d                                           ; $51b6: $15
	rst  $28                                         ; $51b7: $ef
	rst  $38                                         ; $51b8: $ff
	rst  $38                                         ; $51b9: $ff
	rst  $20                                         ; $51ba: $e7
	ld   d, c                                        ; $51bb: $51
	ld   hl, $af48                                   ; $51bc: $21 $48 $af
	rst  $28                                         ; $51bf: $ef
	rst  $38                                         ; $51c0: $ff
	cp   $b6                                         ; $51c1: $fe $b6
	ld   de, $1111                                   ; $51c3: $11 $11 $11

Call_0fa_51c6:
	ld   d, $ff                                      ; $51c6: $16 $ff
	rst  $38                                         ; $51c8: $ff
	rst  $38                                         ; $51c9: $ff
	rst  $10                                         ; $51ca: $d7
	ld   b, c                                        ; $51cb: $41
	ld   hl, $bf58                                   ; $51cc: $21 $58 $bf
	rst  $28                                         ; $51cf: $ef
	rst  $38                                         ; $51d0: $ff
	db   $fd                                         ; $51d1: $fd
	or   l                                           ; $51d2: $b5
	ld   de, $1111                                   ; $51d3: $11 $11 $11
	ld   d, $ff                                      ; $51d6: $16 $ff
	rst  $38                                         ; $51d8: $ff
	rst  $38                                         ; $51d9: $ff
	rst  $10                                         ; $51da: $d7
	ld   b, c                                        ; $51db: $41
	ld   de, $cf58                                   ; $51dc: $11 $58 $cf
	rst  $38                                         ; $51df: $ff
	rst  $38                                         ; $51e0: $ff
	db   $fd                                         ; $51e1: $fd
	or   l                                           ; $51e2: $b5
	ld   de, $1111                                   ; $51e3: $11 $11 $11
	ld   d, $ff                                      ; $51e6: $16 $ff
	rst  $38                                         ; $51e8: $ff
	rst  $38                                         ; $51e9: $ff
	rst  $20                                         ; $51ea: $e7

Call_0fa_51eb:
	ld   d, c                                        ; $51eb: $51
	ld   de, $af49                                   ; $51ec: $11 $49 $af
	rst  $28                                         ; $51ef: $ef
	rst  $38                                         ; $51f0: $ff
	db   $fd                                         ; $51f1: $fd
	rst  $10                                         ; $51f2: $d7
	ld   hl, $1111                                   ; $51f3: $21 $11 $11
	inc  de                                          ; $51f6: $13
	cp   a                                           ; $51f7: $bf

Call_0fa_51f8:
	rst  $38                                         ; $51f8: $ff
	rst  $38                                         ; $51f9: $ff
	ld   sp, hl                                      ; $51fa: $f9
	ld   [hl], d                                     ; $51fb: $72
	ld   de, $9e28                                   ; $51fc: $11 $28 $9e

Call_0fa_51ff:
	rst  $28                                         ; $51ff: $ef
	rst  $38                                         ; $5200: $ff
	db   $fd                                         ; $5201: $fd
	jp   c, $1151                                    ; $5202: $da $51 $11

	ld   de, $6e11                                   ; $5205: $11 $11 $6e
	rst  $38                                         ; $5208: $ff
	rst  $38                                         ; $5209: $ff
	db   $fd                                         ; $520a: $fd
	sub  l                                           ; $520b: $95
	ld   [de], a                                     ; $520c: $12
	dec  d                                           ; $520d: $15
	adc  e                                           ; $520e: $8b
	db   $fd                                         ; $520f: $fd
	rst  $38                                         ; $5210: $ff
	rst  $38                                         ; $5211: $ff
	call c, $1184                                    ; $5212: $dc $84 $11
	ld   de, $2911                                   ; $5215: $11 $11 $29
	rst  $38                                         ; $5218: $ff
	rst  $38                                         ; $5219: $ff
	rst  $38                                         ; $521a: $ff
	cp   c                                           ; $521b: $b9
	ld   b, c                                        ; $521c: $41
	ld   hl, $df78                                   ; $521d: $21 $78 $df
	rst  $28                                         ; $5220: $ef
	rst  $28                                         ; $5221: $ef
	xor  $c7                                         ; $5222: $ee $c7
	ld   b, c                                        ; $5224: $41
	ld   de, $1311                                   ; $5225: $11 $11 $13
	sbc  a                                           ; $5228: $9f
	rst  $38                                         ; $5229: $ff
	rst  $38                                         ; $522a: $ff
	ei                                               ; $522b: $fb
	sub  e                                           ; $522c: $93
	ld   [hl+], a                                    ; $522d: $22
	scf                                              ; $522e: $37
	adc  [hl]                                        ; $522f: $8e
	db   $dd                                         ; $5230: $dd
	cp   $fe                                         ; $5231: $fe $fe
	db   $ec                                         ; $5233: $ec
	add  h                                           ; $5234: $84
	ld   de, $1111                                   ; $5235: $11 $11 $11
	jr   z, @+$01                                    ; $5238: $28 $ff

	rst  $38                                         ; $523a: $ff
	rst  $38                                         ; $523b: $ff
	cp   d                                           ; $523c: $ba
	ld   [hl-], a                                    ; $523d: $32
	inc  de                                          ; $523e: $13
	ld   [hl], a                                     ; $523f: $77
	db   $dd                                         ; $5240: $dd
	rst  $28                                         ; $5241: $ef
	rst  JumpTable                                         ; $5242: $df
	rst  $38                                         ; $5243: $ff
	ret                                              ; $5244: $c9


	ld   h, c                                        ; $5245: $61
	ld   de, $1111                                   ; $5246: $11 $11 $11
	ld   a, a                                        ; $5249: $7f
	rst  $38                                         ; $524a: $ff
	rst  $38                                         ; $524b: $ff
	db   $fd                                         ; $524c: $fd
	and  h                                           ; $524d: $a4
	ld   [hl+], a                                    ; $524e: $22
	daa                                              ; $524f: $27
	ld   a, h                                        ; $5250: $7c
	call c, $fefc                                    ; $5251: $dc $fc $fe
	cp   $a8                                         ; $5254: $fe $a8
	ld   de, $1111                                   ; $5256: $11 $11 $11
	inc  d                                           ; $5259: $14
	rst  JumpTable                                         ; $525a: $df
	rst  $38                                         ; $525b: $ff
	rst  $38                                         ; $525c: $ff
	ld   a, [$3171]                                  ; $525d: $fa $71 $31
	ld   d, a                                        ; $5260: $57
	xor  h                                           ; $5261: $ac
	xor  [hl]                                        ; $5262: $ae
	sbc  $ff                                         ; $5263: $de $ff
	db   $fc                                         ; $5265: $fc
	and  l                                           ; $5266: $a5
	ld   de, $1111                                   ; $5267: $11 $11 $11
	jr   z, @+$01                                    ; $526a: $28 $ff

	rst  $38                                         ; $526c: $ff
	rst  $38                                         ; $526d: $ff
	jp   c, $2232                                    ; $526e: $da $32 $22

	ld   h, [hl]                                     ; $5271: $66
	cp   d                                           ; $5272: $ba
	xor  h                                           ; $5273: $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5274: $cf
	rst  $38                                         ; $5275: $ff
	db   $fc                                         ; $5276: $fc
	sub  c                                           ; $5277: $91
	ld   de, $1111                                   ; $5278: $11 $11 $11
	inc  a                                           ; $527b: $3c
	rst  $38                                         ; $527c: $ff
	rst  $38                                         ; $527d: $ff
	rst  $38                                         ; $527e: $ff
	or   a                                           ; $527f: $b7
	ld   [hl+], a                                    ; $5280: $22
	inc  d                                           ; $5281: $14
	ld   d, a                                        ; $5282: $57
	xor  c                                           ; $5283: $a9
	cp   h                                           ; $5284: $bc
	rst  $28                                         ; $5285: $ef
	rst  $38                                         ; $5286: $ff
	db   $fd                                         ; $5287: $fd
	ld   [hl], c                                     ; $5288: $71
	ld   de, $1111                                   ; $5289: $11 $11 $11
	ld   c, a                                        ; $528c: $4f
	rst  $38                                         ; $528d: $ff
	rst  $38                                         ; $528e: $ff
	rst  $38                                         ; $528f: $ff
	or   l                                           ; $5290: $b5
	ld   [de], a                                     ; $5291: $12
	inc  d                                           ; $5292: $14
	ld   e, b                                        ; $5293: $58
	xor  c                                           ; $5294: $a9
	call z, $ffef                                    ; $5295: $cc $ef $ff
	db   $fc                                         ; $5298: $fc
	ld   h, c                                        ; $5299: $61
	ld   de, $1111                                   ; $529a: $11 $11 $11
	ld   e, a                                        ; $529d: $5f
	rst  $38                                         ; $529e: $ff
	rst  $38                                         ; $529f: $ff
	cp   $94                                         ; $52a0: $fe $94
	ld   de, $5814                                   ; $52a2: $11 $14 $58
	xor  b                                           ; $52a5: $a8
	call z, $ffff                                    ; $52a6: $cc $ff $ff
	db   $fc                                         ; $52a9: $fc
	ld   h, c                                        ; $52aa: $61
	ld   de, $1111                                   ; $52ab: $11 $11 $11
	ld   l, a                                        ; $52ae: $6f
	rst  $38                                         ; $52af: $ff
	rst  $38                                         ; $52b0: $ff
	db   $fd                                         ; $52b1: $fd
	add  d                                           ; $52b2: $82
	ld   de, $5814                                   ; $52b3: $11 $14 $58
	xor  b                                           ; $52b6: $a8
	call z, $ffff                                    ; $52b7: $cc $ff $ff
	db   $fd                                         ; $52ba: $fd
	ld   h, c                                        ; $52bb: $61
	ld   de, $1111                                   ; $52bc: $11 $11 $11
	ld   l, a                                        ; $52bf: $6f
	rst  $38                                         ; $52c0: $ff
	rst  $38                                         ; $52c1: $ff
	cp   $73                                         ; $52c2: $fe $73
	ld   de, $6814                                   ; $52c4: $11 $14 $68
	cp   b                                           ; $52c7: $b8
	call $ffff                                       ; $52c8: $cd $ff $ff
	db   $fc                                         ; $52cb: $fc
	sub  c                                           ; $52cc: $91
	ld   de, $1111                                   ; $52cd: $11 $11 $11
	ld   e, a                                        ; $52d0: $5f
	rst  $38                                         ; $52d1: $ff
	rst  $38                                         ; $52d2: $ff
	rst  $38                                         ; $52d3: $ff
	ld   d, e                                        ; $52d4: $53
	ld   de, $7712                                   ; $52d5: $11 $12 $77
	ret                                              ; $52d8: $c9


	xor  h                                           ; $52d9: $ac
	rst  JumpTable                                         ; $52da: $df
	rst  $38                                         ; $52db: $ff
	cp   $b2                                         ; $52dc: $fe $b2
	ld   de, $1111                                   ; $52de: $11 $11 $11
	inc  a                                           ; $52e1: $3c
	rst  $38                                         ; $52e2: $ff
	rst  $38                                         ; $52e3: $ff
	rst  $38                                         ; $52e4: $ff
	ld   d, e                                        ; $52e5: $53
	ld   de, $7821                                   ; $52e6: $11 $21 $78
	xor  e                                           ; $52e9: $ab
	ld   a, h                                        ; $52ea: $7c
	rst  JumpTable                                         ; $52eb: $df
	rst  $38                                         ; $52ec: $ff
	rst  $38                                         ; $52ed: $ff
	or   a                                           ; $52ee: $b7
	ld   de, $1111                                   ; $52ef: $11 $11 $11
	add  hl, de                                      ; $52f2: $19
	rst  $38                                         ; $52f3: $ff
	rst  $38                                         ; $52f4: $ff
	rst  $38                                         ; $52f5: $ff
	or   c                                           ; $52f6: $b1
	ld   de, $4a13                                   ; $52f7: $11 $13 $4a
	sbc  e                                           ; $52fa: $9b
	sub  a                                           ; $52fb: $97
	db   $dd                                         ; $52fc: $dd
	rst  $38                                         ; $52fd: $ff
	rst  $38                                         ; $52fe: $ff

Jump_0fa_52ff:
	db   $eb                                         ; $52ff: $eb
	ld   sp, $1111                                   ; $5300: $31 $11 $11
	ld   d, $ef                                      ; $5303: $16 $ef
	rst  $38                                         ; $5305: $ff
	rst  $38                                         ; $5306: $ff
	db   $f4                                         ; $5307: $f4
	ld   de, $4714                                   ; $5308: $11 $14 $47
	ret                                              ; $530b: $c9


	or   [hl]                                        ; $530c: $b6
	ld   a, l                                        ; $530d: $7d
	rst  JumpTable                                         ; $530e: $df
	rst  $38                                         ; $530f: $ff
	db   $fd                                         ; $5310: $fd
	sub  c                                           ; $5311: $91
	ld   de, $1111                                   ; $5312: $11 $11 $11
	cp   a                                           ; $5315: $bf
	rst  $38                                         ; $5316: $ff
	rst  $38                                         ; $5317: $ff
	db   $fd                                         ; $5318: $fd
	ld   de, $6611                                   ; $5319: $11 $11 $66
	xor  l                                           ; $531c: $ad
	ld   a, c                                        ; $531d: $79
	ld   d, a                                        ; $531e: $57
	sbc  $ff                                         ; $531f: $de $ff
	rst  $38                                         ; $5321: $ff
	or   a                                           ; $5322: $b7
	ld   de, $1111                                   ; $5323: $11 $11 $11
	rra                                              ; $5326: $1f
	rst  $38                                         ; $5327: $ff
	rst  $38                                         ; $5328: $ff
	ei                                               ; $5329: $fb
	sub  c                                           ; $532a: $91
	ld   de, $9918                                   ; $532b: $11 $18 $99
	add  $85                                         ; $532e: $c6 $85
	ld   a, [hl]                                     ; $5330: $7e
	rst  $38                                         ; $5331: $ff
	rst  $38                                         ; $5332: $ff
	ld   a, [$1151]                                  ; $5333: $fa $51 $11
	ld   de, rAUD1LEN                                   ; $5336: $11 $11 $ff
	rst  $38                                         ; $5339: $ff
	rst  $38                                         ; $533a: $ff
	sub  h                                           ; $533b: $94
	ld   de, $6b21                                   ; $533c: $11 $21 $6b
	ld   a, h                                        ; $533f: $7c
	ld   h, [hl]                                     ; $5340: $66
	halt                                             ; $5341: $76
	rst  $38                                         ; $5342: $ff
	rst  $38                                         ; $5343: $ff
	rst  $38                                         ; $5344: $ff
	or   e                                           ; $5345: $b3
	ld   de, $1111                                   ; $5346: $11 $11 $11
	ld   e, $ff                                      ; $5349: $1e $ff
	rst  $38                                         ; $534b: $ff
	db   $fc                                         ; $534c: $fc
	inc  de                                          ; $534d: $13

Jump_0fa_534e:
	ld   de, $c743                                   ; $534e: $11 $43 $c7
	sbc  c                                           ; $5351: $99
	ld   e, d                                        ; $5352: $5a
	ld   a, [hl]                                     ; $5353: $7e
	rst  $38                                         ; $5354: $ff
	rst  $38                                         ; $5355: $ff
	db   $fd                                         ; $5356: $fd
	ld   hl, $1111                                   ; $5357: $21 $11 $11
	ld   de, $ff7f                                   ; $535a: $11 $7f $ff
	rst  $38                                         ; $535d: $ff
	pop  af                                          ; $535e: $f1
	ld   de, $2a14                                   ; $535f: $11 $14 $2a
	xor  b                                           ; $5362: $a8
	or   [hl]                                        ; $5363: $b6
	xor  e                                           ; $5364: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5365: $cf
	rst  $38                                         ; $5366: $ff
	cp   $c4                                         ; $5367: $fe $c4
	ld   de, $1111                                   ; $5369: $11 $11 $11
	inc  de                                          ; $536c: $13
	rst  $38                                         ; $536d: $ff
	rst  $38                                         ; $536e: $ff
	rst  $38                                         ; $536f: $ff
	ld   de, $2611                                   ; $5370: $11 $11 $26
	adc  a                                           ; $5373: $8f
	sbc  h                                           ; $5374: $9c
	xor  b                                           ; $5375: $a8
	set  7, a                                        ; $5376: $cb $ff
	rst  $38                                         ; $5378: $ff
	jp   c, $1151                                    ; $5379: $da $51 $11

	ld   de, $4f11                                   ; $537c: $11 $11 $4f
	rst  $38                                         ; $537f: $ff
	rst  $38                                         ; $5380: $ff
	pop  bc                                          ; $5381: $c1
	ld   de, $ca11                                   ; $5382: $11 $11 $ca
	db   $fc                                         ; $5385: $fc

Jump_0fa_5386:
	xor  d                                           ; $5386: $aa
	ld   l, e                                        ; $5387: $6b
	rst  JumpTable                                         ; $5388: $df
	rst  $38                                         ; $5389: $ff
	ei                                               ; $538a: $fb
	ld   h, l                                        ; $538b: $65
	ld   de, $1111                                   ; $538c: $11 $11 $11
	inc  d                                           ; $538f: $14
	rst  $38                                         ; $5390: $ff
	rst  $38                                         ; $5391: $ff
	rst  $30                                         ; $5392: $f7
	ld   de, $4f11                                   ; $5393: $11 $11 $4f
	rst  $38                                         ; $5396: $ff
	ret                                              ; $5397: $c9


	ld   [hl], l                                     ; $5398: $75
	call $fdff                                       ; $5399: $cd $ff $fd
	sub  h                                           ; $539c: $94
	ld   b, c                                        ; $539d: $41
	ld   hl, $1111                                   ; $539e: $21 $11 $11
	ld   e, a                                        ; $53a1: $5f
	rst  $38                                         ; $53a2: $ff
	rst  $38                                         ; $53a3: $ff
	ld   hl, $1c11                                   ; $53a4: $21 $11 $1c

Call_0fa_53a7:
	rst  $38                                         ; $53a7: $ff
	ld   sp, hl                                      ; $53a8: $f9
	ld   h, h                                        ; $53a9: $64
	ld   e, a                                        ; $53aa: $5f
	rst  $38                                         ; $53ab: $ff
	db   $fc                                         ; $53ac: $fc
	sub  e                                           ; $53ad: $93
	inc  d                                           ; $53ae: $14
	jr   c, jr_0fa_53c2                              ; $53af: $38 $11

	ld   de, $ff16                                   ; $53b1: $11 $16 $ff
	rst  $38                                         ; $53b4: $ff
	and  c                                           ; $53b5: $a1
	ld   de, rAUD1LEN                                   ; $53b6: $11 $11 $ff

Call_0fa_53b9:
	rst  $38                                         ; $53b9: $ff
	ld   b, c                                        ; $53ba: $41
	ld   d, $ff                                      ; $53bb: $16 $ff
	rst  $38                                         ; $53bd: $ff
	sub  e                                           ; $53be: $93
	ld   de, $c268                                   ; $53bf: $11 $68 $c2

jr_0fa_53c2:
	ld   de, $bf11                                   ; $53c2: $11 $11 $bf
	rst  $38                                         ; $53c5: $ff
	pop  af                                          ; $53c6: $f1
	ld   de, $af13                                   ; $53c7: $11 $13 $af
	rst  $38                                         ; $53ca: $ff
	and  c                                           ; $53cb: $a1
	ld   de, $ffdf                                   ; $53cc: $11 $df $ff
	pop  bc                                          ; $53cf: $c1
	ld   de, $ff6e                                   ; $53d0: $11 $6e $ff
	ld   de, $1f11                                   ; $53d3: $11 $11 $1f
	rst  $38                                         ; $53d6: $ff
	rst  $38                                         ; $53d7: $ff
	ld   de, rAUD1LEN                                   ; $53d8: $11 $11 $ff
	rst  $38                                         ; $53db: $ff
	or   c                                           ; $53dc: $b1
	ld   de, $ff9f                                   ; $53dd: $11 $9f $ff
	pop  de                                          ; $53e0: $d1
	ld   de, $ff1f                                   ; $53e1: $11 $1f $ff
	pop  hl                                          ; $53e4: $e1
	ld   de, $ff1b                                   ; $53e5: $11 $1b $ff
	rst  $38                                         ; $53e8: $ff
	ld   de, $4f11                                   ; $53e9: $11 $11 $4f
	rst  $38                                         ; $53ec: $ff
	pop  hl                                          ; $53ed: $e1
	ld   de, $ffbf                                   ; $53ee: $11 $bf $ff
	pop  hl                                          ; $53f1: $e1
	ld   de, $ff1f                                   ; $53f2: $11 $1f $ff
	ldh  a, [c]                                      ; $53f5: $f2
	ld   de, rAUD1LEN                                   ; $53f6: $11 $11 $ff
	rst  $38                                         ; $53f9: $ff
	sub  c                                           ; $53fa: $91
	ld   de, $ff1f                                   ; $53fb: $11 $1f $ff
	pop  af                                          ; $53fe: $f1
	ld   de, $ff5f                                   ; $53ff: $11 $5f $ff
	pop  af                                          ; $5402: $f1
	ld   de, $ff1f                                   ; $5403: $11 $1f $ff
	pop  af                                          ; $5406: $f1
	ld   de, $9f11                                   ; $5407: $11 $11 $9f
	rst  $38                                         ; $540a: $ff
	pop  af                                          ; $540b: $f1
	ld   de, $df14                                   ; $540c: $11 $14 $df
	add  l                                           ; $540f: $85
	ld   de, $ffbf                                   ; $5410: $11 $bf $ff
	jp   $1e11                                       ; $5413: $c3 $11 $1e


	rst  $38                                         ; $5416: $ff
	ei                                               ; $5417: $fb
	ld   de, $1111                                   ; $5418: $11 $11 $11
	rst  $38                                         ; $541b: $ff
	rst  $38                                         ; $541c: $ff
	rst  $20                                         ; $541d: $e7
	ld   de, $fd11                                   ; $541e: $11 $11 $fd
	xor  l                                           ; $5421: $ad
	ld   l, [hl]                                     ; $5422: $6e
	cp   a                                           ; $5423: $bf
	ld   sp, hl                                      ; $5424: $f9
	ld   [hl], c                                     ; $5425: $71
	inc  de                                          ; $5426: $13
	xor  a                                           ; $5427: $af
	rst  $38                                         ; $5428: $ff
	pop  af                                          ; $5429: $f1
	ld   de, $1c11                                   ; $542a: $11 $11 $1c
	rst  $38                                         ; $542d: $ff
	rst  $38                                         ; $542e: $ff
	sub  c                                           ; $542f: $91
	ld   de, $fb18                                   ; $5430: $11 $18 $fb
	and  $ad                                         ; $5433: $e6 $ad
	cp   a                                           ; $5435: $bf
	call nz, $2911                                   ; $5436: $c4 $11 $29
	rst  $38                                         ; $5439: $ff
	rst  $38                                         ; $543a: $ff
	ld   sp, $1111                                   ; $543b: $31 $11 $11
	rra                                              ; $543e: $1f
	rst  $38                                         ; $543f: $ff
	rst  $38                                         ; $5440: $ff
	ld   d, c                                        ; $5441: $51
	ld   de, $fe1f                                   ; $5442: $11 $1f $fe
	call nc, $ffea                                   ; $5445: $d4 $ea $ff
	ld   d, c                                        ; $5448: $51
	ld   de, $ff9f                                   ; $5449: $11 $9f $ff
	ld   hl, sp+$11                                  ; $544c: $f8 $11
	ld   de, $1f11                                   ; $544e: $11 $11 $1f
	rst  $38                                         ; $5451: $ff
	db   $fd                                         ; $5452: $fd
	ld   de, $3f11                                   ; $5453: $11 $11 $3f
	rst  $38                                         ; $5456: $ff
	add  e                                           ; $5457: $83
	ld   a, [$11ff]                                  ; $5458: $fa $ff $11
	inc  de                                          ; $545b: $13
	rst  $38                                         ; $545c: $ff
	rst  $38                                         ; $545d: $ff
	add  c                                           ; $545e: $81
	ld   de, $1111                                   ; $545f: $11 $11 $11
	rra                                              ; $5462: $1f
	rst  $38                                         ; $5463: $ff
	ld   hl, sp+$11                                  ; $5464: $f8 $11
	ld   de, $fcef                                   ; $5466: $11 $ef $fc
	inc  d                                           ; $5469: $14
	rst  $38                                         ; $546a: $ff
	ei                                               ; $546b: $fb
	ld   de, $ff1c                                   ; $546c: $11 $1c $ff
	db   $fd                                         ; $546f: $fd
	ld   sp, $2115                                   ; $5470: $31 $15 $21
	ld   de, $ff1f                                   ; $5473: $11 $1f $ff
	pop  af                                          ; $5476: $f1
	ld   de, $ff1a                                   ; $5477: $11 $1a $ff
	and  h                                           ; $547a: $a4
	rla                                              ; $547b: $17
	rst  $38                                         ; $547c: $ff
	db   $f4                                         ; $547d: $f4
	ld   de, $ff1f                                   ; $547e: $11 $1f $ff
	rst  $30                                         ; $5481: $f7
	ld   de, $111a                                   ; $5482: $11 $1a $11
	ld   de, $ff1f                                   ; $5485: $11 $1f $ff
	pop  af                                          ; $5488: $f1
	ld   de, $ff1f                                   ; $5489: $11 $1f $ff
	ld   h, c                                        ; $548c: $61
	ld   c, e                                        ; $548d: $4b
	rst  $38                                         ; $548e: $ff
	pop  bc                                          ; $548f: $c1
	ld   de, $ff4f                                   ; $5490: $11 $4f $ff
	rst  $30                                         ; $5493: $f7
	ld   [hl], $48                                   ; $5494: $36 $48
	ld   de, $1f11                                   ; $5496: $11 $11 $1f

Call_0fa_5499:
	rst  $38                                         ; $5499: $ff
	rst  $30                                         ; $549a: $f7
	ld   de, $df1f                                   ; $549b: $11 $1f $df
	or   c                                           ; $549e: $b1
	cp   h                                           ; $549f: $bc
	rst  $38                                         ; $54a0: $ff
	ld   b, c                                        ; $54a1: $41
	ld   de, $ff6f                                   ; $54a2: $11 $6f $ff
	rst  JumpTable                                         ; $54a5: $df
	sbc  d                                           ; $54a6: $9a

Call_0fa_54a7:
	ld   b, d                                        ; $54a7: $42
	ld   de, $1111                                   ; $54a8: $11 $11 $11
	rst  $38                                         ; $54ab: $ff
	rst  $38                                         ; $54ac: $ff
	ld   de, $fa11                                   ; $54ad: $11 $11 $fa
	rst  $30                                         ; $54b0: $f7
	ld   e, l                                        ; $54b1: $5d
	rst  $38                                         ; $54b2: $ff
	pop  af                                          ; $54b3: $f1
	ld   de, $ff1c                                   ; $54b4: $11 $1c $ff
	adc  $d9                                         ; $54b7: $ce $d9
	add  c                                           ; $54b9: $81
	ld   hl, $1111                                   ; $54ba: $21 $11 $11
	ld   e, a                                        ; $54bd: $5f
	rst  $38                                         ; $54be: $ff
	pop  af                                          ; $54bf: $f1
	ld   de, $8c7f                                   ; $54c0: $11 $7f $8c
	rla                                              ; $54c3: $17
	rst  $38                                         ; $54c4: $ff
	ld   sp, hl                                      ; $54c5: $f9
	ld   de, $ff18                                   ; $54c6: $11 $18 $ff
	rst  $30                                         ; $54c9: $f7
	cp   $d7                                         ; $54ca: $fe $d7
	ld   de, $1111                                   ; $54cc: $11 $11 $11
	rra                                              ; $54cf: $1f
	rst  $38                                         ; $54d0: $ff
	ei                                               ; $54d1: $fb
	ld   de, $f51f                                   ; $54d2: $11 $1f $f5
	ld   d, c                                        ; $54d5: $51
	rst  $28                                         ; $54d6: $ef
	rst  $38                                         ; $54d7: $ff
	ld   de, rAUD1LEN                                   ; $54d8: $11 $11 $ff
	ei                                               ; $54db: $fb
	ld   l, a                                        ; $54dc: $6f
	rst  $38                                         ; $54dd: $ff
	ld   hl, $1111                                   ; $54de: $21 $11 $11
	ld   de, $ffff                                   ; $54e1: $11 $ff $ff
	ld   de, $fc11                                   ; $54e4: $11 $11 $fc
	ld   de, $ff2f                                   ; $54e7: $11 $2f $ff
	pop  af                                          ; $54ea: $f1
	ld   de, $cb7f                                   ; $54eb: $11 $7f $cb
	ld   l, e                                        ; $54ee: $6b
	rst  $38                                         ; $54ef: $ff
	pop  bc                                          ; $54f0: $c1
	ld   de, $1111                                   ; $54f1: $11 $11 $11
	rra                                              ; $54f4: $1f
	rst  $38                                         ; $54f5: $ff
	pop  af                                          ; $54f6: $f1
	ld   de, $212f                                   ; $54f7: $11 $2f $21
	ld   a, [de]                                     ; $54fa: $1a
	rst  $38                                         ; $54fb: $ff
	db   $fc                                         ; $54fc: $fc
	ld   de, $b26d                                   ; $54fd: $11 $6d $b2
	ld   d, a                                        ; $5500: $57
	rst  $38                                         ; $5501: $ff
	push af                                          ; $5502: $f5
	ld   de, $1131                                   ; $5503: $11 $31 $11
	inc  d                                           ; $5506: $14
	rst  $38                                         ; $5507: $ff
	ld   sp, hl                                      ; $5508: $f9
	ld   de, $e11e                                   ; $5509: $11 $1e $e1
	ld   de, $ffff                                   ; $550c: $11 $ff $ff
	ld   b, c                                        ; $550f: $41
	xor  a                                           ; $5510: $af
	sub  c                                           ; $5511: $91
	rla                                              ; $5512: $17
	rst  $38                                         ; $5513: $ff
	db   $fc                                         ; $5514: $fc
	ld   de, $1174                                   ; $5515: $11 $74 $11
	ld   de, $ffff                                   ; $5518: $11 $ff $ff
	ld   d, $ca                                      ; $551b: $16 $ca
	or   c                                           ; $551d: $b1
	ld   de, $fcff                                   ; $551e: $11 $ff $fc
	xor  a                                           ; $5521: $af
	rst  $38                                         ; $5522: $ff
	sub  c                                           ; $5523: $91
	inc  d                                           ; $5524: $14
	rst  $38                                         ; $5525: $ff
	db   $fd                                         ; $5526: $fd
	adc  b                                           ; $5527: $88
	rst  $10                                         ; $5528: $d7
	ld   de, rAUD1LEN                                   ; $5529: $11 $11 $ff
	rst  $38                                         ; $552c: $ff
	ld   a, [hl]                                     ; $552d: $7e
	cp   $b1                                         ; $552e: $fe $b1
	ld   de, $97df                                   ; $5530: $11 $df $97
	sbc  a                                           ; $5533: $9f
	rst  $38                                         ; $5534: $ff
	sub  c                                           ; $5535: $91
	add  hl, de                                      ; $5536: $19
	res  0, a                                        ; $5537: $cb $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5539: $cf
	jp   hl                                          ; $553a: $e9


	ld   de, $af11                                   ; $553b: $11 $11 $af
	ld   sp, hl                                      ; $553e: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $553f: $cf
	cp   $d1                                         ; $5540: $fe $d1
	ld   de, $13bc                                   ; $5542: $11 $bc $13
	xor  a                                           ; $5545: $af
	rst  $38                                         ; $5546: $ff
	pop  de                                          ; $5547: $d1
	ld   c, h                                        ; $5548: $4c
	and  l                                           ; $5549: $a5
	ld   c, b                                        ; $554a: $48
	sbc  $c7                                         ; $554b: $de $c7
	ld   hl, $1f11                                   ; $554d: $21 $11 $1f
	ld   sp, hl                                      ; $5550: $f9
	xor  a                                           ; $5551: $af
	rst  $38                                         ; $5552: $ff
	ld   sp, hl                                      ; $5553: $f9
	ld   de, $216c                                   ; $5554: $11 $6c $21
	ld   l, h                                        ; $5557: $6c
	rst  $38                                         ; $5558: $ff
	ld   hl, sp+$4e                                  ; $5559: $f8 $4e
	rst  ToBoot                                         ; $555b: $c7
	scf                                              ; $555c: $37
	xor  d                                           ; $555d: $aa
	xor  b                                           ; $555e: $a8
	ld   b, d                                        ; $555f: $42
	ld   de, rAUD1LOW                                   ; $5560: $11 $13 $ff
	add  hl, sp                                      ; $5563: $39
	rst  $38                                         ; $5564: $ff
	rst  $38                                         ; $5565: $ff
	ld   de, $915c                                   ; $5566: $11 $5c $91
	rla                                              ; $5569: $17
	rst  $38                                         ; $556a: $ff
	db   $fc                                         ; $556b: $fc
	ld   e, h                                        ; $556c: $5c
	db   $fd                                         ; $556d: $fd
	dec  [hl]                                        ; $556e: $35
	cp   d                                           ; $556f: $ba
	sbc  b                                           ; $5570: $98
	ld   b, e                                        ; $5571: $43
	ld   sp, $cf11                                   ; $5572: $31 $11 $cf
	pop  bc                                          ; $5575: $c1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5576: $cf
	rst  $38                                         ; $5577: $ff
	pop  af                                          ; $5578: $f1
	inc  e                                           ; $5579: $1c
	ldh  a, [c]                                      ; $557a: $f2
	ld   de, $fd7f                                   ; $557b: $11 $7f $fd
	adc  c                                           ; $557e: $89
	rst  $38                                         ; $557f: $ff
	or   d                                           ; $5580: $b2
	xor  l                                           ; $5581: $ad
	or   a                                           ; $5582: $b7
	ld   b, c                                        ; $5583: $41
	inc  [hl]                                        ; $5584: $34
	ld   de, $f91f                                   ; $5585: $11 $1f $f9
	ld   e, $ff                                      ; $5588: $1e $ff
	rst  $38                                         ; $558a: $ff
	ld   de, $11fe                                   ; $558b: $11 $fe $11
	dec  d                                           ; $558e: $15
	db   $ed                                         ; $558f: $ed
	ld   h, l                                        ; $5590: $65
	rst  $28                                         ; $5591: $ef
	ei                                               ; $5592: $fb
	ld   l, [hl]                                     ; $5593: $6e
	db   $fd                                         ; $5594: $fd
	ld   d, c                                        ; $5595: $51

Jump_0fa_5596:
	dec  b                                           ; $5596: $05
	ld   b, c                                        ; $5597: $41
	ld   de, $81bf                                   ; $5598: $11 $bf $81
	cp   a                                           ; $559b: $bf

Call_0fa_559c:
	rst  $38                                         ; $559c: $ff
	pop  af                                          ; $559d: $f1
	cpl                                              ; $559e: $2f
	pop  af                                          ; $559f: $f1
	ld   de, $9317                                   ; $55a0: $11 $17 $93
	add  hl, de                                      ; $55a3: $19
	rst  $38                                         ; $55a4: $ff
	jp   z, $f7ff                                    ; $55a5: $ca $ff $f7

	dec  [hl]                                        ; $55a8: $35
	xor  b                                           ; $55a9: $a8
	ld   hl, $bf11                                   ; $55aa: $21 $11 $bf
	ld   sp, $ac6b                                   ; $55ad: $31 $6b $ac
	call nc, $e85e                                   ; $55b0: $d4 $5e $e8
	ld   a, c                                        ; $55b3: $79
	ld   l, c                                        ; $55b4: $69
	jp   c, $9957                                    ; $55b5: $da $57 $99

	adc  d                                           ; $55b8: $8a
	sub  a                                           ; $55b9: $97
	sbc  d                                           ; $55ba: $9a
	xor  e                                           ; $55bb: $ab
	xor  c                                           ; $55bc: $a9
	adc  d                                           ; $55bd: $8a
	xor  c                                           ; $55be: $a9
	sub  a                                           ; $55bf: $97
	ld   h, [hl]                                     ; $55c0: $66
	ld   d, l                                        ; $55c1: $55
	ld   d, h                                        ; $55c2: $54
	ld   b, h                                        ; $55c3: $44
	ld   d, l                                        ; $55c4: $55
	ld   d, [hl]                                     ; $55c5: $56
	ld   h, [hl]                                     ; $55c6: $66
	adc  c                                           ; $55c7: $89
	adc  b                                           ; $55c8: $88
	sbc  c                                           ; $55c9: $99
	sbc  d                                           ; $55ca: $9a
	cp   c                                           ; $55cb: $b9
	xor  d                                           ; $55cc: $aa
	set  1, h                                        ; $55cd: $cb $cc
	set  1, e                                        ; $55cf: $cb $cb
	xor  c                                           ; $55d1: $a9
	adc  b                                           ; $55d2: $88
	add  [hl]                                        ; $55d3: $86
	ld   b, h                                        ; $55d4: $44
	ld   b, h                                        ; $55d5: $44
	inc  sp                                          ; $55d6: $33
	inc  hl                                          ; $55d7: $23
	ld   b, h                                        ; $55d8: $44

jr_0fa_55d9:
	ld   b, l                                        ; $55d9: $45
	halt                                             ; $55da: $76
	ld   a, c                                        ; $55db: $79
	adc  b                                           ; $55dc: $88
	adc  c                                           ; $55dd: $89
	adc  c                                           ; $55de: $89
	cp   h                                           ; $55df: $bc
	call z, $ddcd                                    ; $55e0: $cc $cd $dd
	call c, $b9cb                                    ; $55e3: $dc $cb $b9
	add  a                                           ; $55e6: $87
	halt                                             ; $55e7: $76
	ld   h, h                                        ; $55e8: $64
	ld   [hl-], a                                    ; $55e9: $32
	ld   [hl+], a                                    ; $55ea: $22
	ld   [hl+], a                                    ; $55eb: $22
	inc  [hl]                                        ; $55ec: $34
	ld   b, [hl]                                     ; $55ed: $46
	ld   h, [hl]                                     ; $55ee: $66
	ld   h, a                                        ; $55ef: $67
	adc  b                                           ; $55f0: $88
	sbc  c                                           ; $55f1: $99
	sbc  d                                           ; $55f2: $9a
	xor  e                                           ; $55f3: $ab
	call z, $cccd                                    ; $55f4: $cc $cd $cc
	sbc  $fa                                         ; $55f7: $de $fa
	xor  h                                           ; $55f9: $ac
	xor  b                                           ; $55fa: $a8
	add  a                                           ; $55fb: $87
	ld   d, h                                        ; $55fc: $54
	ld   hl, $2211                                   ; $55fd: $21 $11 $22
	inc  h                                           ; $5600: $24
	ld   d, [hl]                                     ; $5601: $56
	ld   h, a                                        ; $5602: $67
	sbc  c                                           ; $5603: $99
	xor  e                                           ; $5604: $ab
	cp   d                                           ; $5605: $ba
	cp   h                                           ; $5606: $bc
	cp   d                                           ; $5607: $ba
	cp   l                                           ; $5608: $bd
	call z, $aacb                                    ; $5609: $cc $cb $aa
	cp   e                                           ; $560c: $bb
	and  [hl]                                        ; $560d: $a6
	ld   h, h                                        ; $560e: $64
	inc  hl                                          ; $560f: $23
	sub  h                                           ; $5610: $94
	ld   de, $3655                                   ; $5611: $11 $55 $36
	ld   d, h                                        ; $5614: $54

Call_0fa_5615:
	xor  h                                           ; $5615: $ac
	or   [hl]                                        ; $5616: $b6
	call c, $bbba                                    ; $5617: $dc $ba $bb
	adc  e                                           ; $561a: $8b
	add  a                                           ; $561b: $87
	ld   a, c                                        ; $561c: $79
	ret  z                                           ; $561d: $c8

	cp   d                                           ; $561e: $ba
	db   $dd                                         ; $561f: $dd
	cp   c                                           ; $5620: $b9
	adc  b                                           ; $5621: $88
	ld   sp, $8116                                   ; $5622: $31 $16 $81
	inc  d                                           ; $5625: $14
	add  c                                           ; $5626: $81
	ld   c, d                                        ; $5627: $4a
	adc  l                                           ; $5628: $8d
	xor  $8f                                         ; $5629: $ee $8f
	ld   sp, hl                                      ; $562b: $f9
	xor  d                                           ; $562c: $aa
	rst  $20                                         ; $562d: $e7
	add  l                                           ; $562e: $85
	jr   c, jr_0fa_56aa                              ; $562f: $38 $79

	ld   e, l                                        ; $5631: $5d
	call c, $b6dc                                    ; $5632: $dc $dc $b6
	ld   [hl], c                                     ; $5635: $71
	jr   jr_0fa_55d9                                 ; $5636: $18 $a1

	jr   jr_0fa_56ab                                 ; $5638: $18 $71

	inc  e                                           ; $563a: $1c
	sbc  e                                           ; $563b: $9b
	db   $ed                                         ; $563c: $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $563d: $cf
	ld   hl, sp-$31                                  ; $563e: $f8 $cf
	db   $f4                                         ; $5640: $f4
	ld   e, b                                        ; $5641: $58
	ld   d, a                                        ; $5642: $57
	scf                                              ; $5643: $37
	ld   l, l                                        ; $5644: $6d
	add  a                                           ; $5645: $87
	bit  6, c                                        ; $5646: $cb $71
	ld   sp, $11d7                                   ; $5648: $31 $d7 $11
	or   a                                           ; $564b: $b7
	inc  de                                          ; $564c: $13
	ld   sp, hl                                      ; $564d: $f9
	ld   a, e                                        ; $564e: $7b
	cp   $fc                                         ; $564f: $fe $fc
	sbc  a                                           ; $5651: $9f
	ld   a, [$962c]                                  ; $5652: $fa $2c $96
	ld   b, [hl]                                     ; $5655: $46
	rst  ToBoot                                         ; $5656: $c7
	and  [hl]                                        ; $5657: $a6
	call $2373                                       ; $5658: $cd $73 $23
	inc  e                                           ; $565b: $1c
	ld   de, $11a9                                   ; $565c: $11 $a9 $11
	xor  $28                                         ; $565f: $ee $28
	rst  $38                                         ; $5661: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5662: $cf
	rst  $28                                         ; $5663: $ef
	db   $fd                                         ; $5664: $fd

Jump_0fa_5665:
	ld   a, c                                        ; $5665: $79
	ldh  [c], a                                      ; $5666: $e2
	ld   e, b                                        ; $5667: $58
	or   l                                           ; $5668: $b5
	ld   e, e                                        ; $5669: $5b
	sbc  e                                           ; $566a: $9b
	ld   h, [hl]                                     ; $566b: $66
	ld   b, e                                        ; $566c: $43
	add  hl, de                                      ; $566d: $19
	ld   [hl], c                                     ; $566e: $71
	ld   c, d                                        ; $566f: $4a
	ld   hl, $267f                                   ; $5670: $21 $7f $26
	rst  $38                                         ; $5673: $ff
	xor  a                                           ; $5674: $af
	rst  $38                                         ; $5675: $ff
	db   $ed                                         ; $5676: $ed
	jp   z, $6be4                                    ; $5677: $ca $e4 $6b

	sub  [hl]                                        ; $567a: $96
	ld   e, l                                        ; $567b: $5d
	adc  b                                           ; $567c: $88
	add  a                                           ; $567d: $87
	ld   b, c                                        ; $567e: $41
	add  hl, de                                      ; $567f: $19
	add  c                                           ; $5680: $81
	ld   c, h                                        ; $5681: $4c
	ld   de, $136f                                   ; $5682: $11 $6f $13
	rst  $38                                         ; $5685: $ff
	sbc  h                                           ; $5686: $9c
	rst  $38                                         ; $5687: $ff
	cp   h                                           ; $5688: $bc
	ei                                               ; $5689: $fb
	call nz, Call_0fa_559c                           ; $568a: $c4 $9c $55
	ld   a, [hl]                                     ; $568d: $7e
	ld   b, [hl]                                     ; $568e: $46
	cp   c                                           ; $568f: $b9
	ld   hl, $513a                                   ; $5690: $21 $3a $51
	xor  h                                           ; $5693: $ac
	ld   de, $15cf                                   ; $5694: $11 $cf $15
	cp   $3d                                         ; $5697: $fe $3d
	cp   $7f                                         ; $5699: $fe $7f
	ld   a, [$e887]                                  ; $569b: $fa $87 $e8
	add  hl, sp                                      ; $569e: $39
	cp   c                                           ; $569f: $b9
	dec  hl                                          ; $56a0: $2b
	call nz, Call_0fa_5615                           ; $56a1: $c4 $15 $56
	ld   sp, $11b6                                   ; $56a4: $31 $b6 $11
	call $f71b                                       ; $56a7: $cd $1b $f7

jr_0fa_56aa:
	ld   c, a                                        ; $56aa: $4f

jr_0fa_56ab:
	rst  $30                                         ; $56ab: $f7
	adc  a                                           ; $56ac: $8f
	push af                                          ; $56ad: $f5
	cp   l                                           ; $56ae: $bd
	or   e                                           ; $56af: $b3
	ld   a, l                                        ; $56b0: $7d
	add  l                                           ; $56b1: $85
	ld   l, [hl]                                     ; $56b2: $6e
	ld   [hl], e                                     ; $56b3: $73
	ld   d, [hl]                                     ; $56b4: $56
	ld   d, $51                                      ; $56b5: $16 $51
	or   h                                           ; $56b7: $b4
	ld   de, $1fb9                                   ; $56b8: $11 $b9 $1f
	db   $f4                                         ; $56bb: $f4
	adc  a                                           ; $56bc: $8f
	or   $cf                                         ; $56bd: $f6 $cf
	or   a                                           ; $56bf: $b7
	call z, $bc94                                    ; $56c0: $cc $94 $bc
	ld   h, [hl]                                     ; $56c3: $66
	sbc  [hl]                                        ; $56c4: $9e
	dec  [hl]                                        ; $56c5: $35
	ld   [hl], h                                     ; $56c6: $74
	add  hl, de                                      ; $56c7: $19
	ld   [hl], c                                     ; $56c8: $71
	and  [hl]                                        ; $56c9: $a6
	ld   de, $1eca                                   ; $56ca: $11 $ca $1e
	push af                                          ; $56cd: $f5
	sbc  a                                           ; $56ce: $9f
	rst  $30                                         ; $56cf: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56d0: $cf
	cp   b                                           ; $56d1: $b8
	call $cb94                                       ; $56d2: $cd $94 $cb
	ld   h, [hl]                                     ; $56d5: $66
	xor  l                                           ; $56d6: $ad
	daa                                              ; $56d7: $27
	add  e                                           ; $56d8: $83
	add  hl, de                                      ; $56d9: $19
	and  c                                           ; $56da: $a1
	adc  d                                           ; $56db: $8a
	ld   de, $19ac                                   ; $56dc: $11 $ac $19
	or   $6f                                         ; $56df: $f6 $6f
	rst  $30                                         ; $56e1: $f7
	xor  a                                           ; $56e2: $af
	rst  ToBoot                                         ; $56e3: $c7
	adc  $93                                         ; $56e4: $ce $93
	cp   h                                           ; $56e6: $bc
	ld   h, [hl]                                     ; $56e7: $66
	xor  h                                           ; $56e8: $ac
	scf                                              ; $56e9: $37
	and  h                                           ; $56ea: $a4
	dec  d                                           ; $56eb: $15
	pop  af                                          ; $56ec: $f1
	rra                                              ; $56ed: $1f
	ld   de, $115f                                   ; $56ee: $11 $5f $11
	db   $fd                                         ; $56f1: $fd
	ld   a, [de]                                     ; $56f2: $1a
	db   $fc                                         ; $56f3: $fc
	ccf                                              ; $56f4: $3f
	or   $8f                                         ; $56f5: $f6 $8f
	db   $d3                                         ; $56f7: $d3
	adc  [hl]                                        ; $56f8: $8e
	ld   [hl], l                                     ; $56f9: $75
	sbc  l                                           ; $56fa: $9d
	ld   d, l                                        ; $56fb: $55
	or   [hl]                                        ; $56fc: $b6
	ld   hl, $15b8                                   ; $56fd: $21 $b8 $15
	pop  hl                                          ; $5700: $e1
	dec  de                                          ; $5701: $1b
	pop  de                                          ; $5702: $d1
	cpl                                              ; $5703: $2f
	ld   h, c                                        ; $5704: $61
	rst  $28                                         ; $5705: $ef
	ld   h, h                                        ; $5706: $64
	db   $fd                                         ; $5707: $fd
	ld   c, d                                        ; $5708: $4a
	ld   sp, hl                                      ; $5709: $f9
	dec  l                                           ; $570a: $2d
	push de                                          ; $570b: $d5
	ld   l, h                                        ; $570c: $6c
	and  h                                           ; $570d: $a4
	xor  e                                           ; $570e: $ab
	ld   d, e                                        ; $570f: $53
	ld   c, d                                        ; $5710: $4a
	ld   [hl], c                                     ; $5711: $71
	ld   c, l                                        ; $5712: $4d
	ld   de, $119b                                   ; $5713: $11 $9b $11
	push af                                          ; $5716: $f5
	dec  l                                           ; $5717: $2d
	push af                                          ; $5718: $f5
	ld   c, a                                        ; $5719: $4f
	or   l                                           ; $571a: $b5
	xor  a                                           ; $571b: $af
	ld   [hl], e                                     ; $571c: $73
	call c, $ca57                                    ; $571d: $dc $57 $ca
	ld   e, d                                        ; $5720: $5a
	or   [hl]                                        ; $5721: $b6
	ld   d, l                                        ; $5722: $55
	ld   l, b                                        ; $5723: $68
	ld   h, c                                        ; $5724: $61
	and  a                                           ; $5725: $a7
	inc  de                                          ; $5726: $13
	sub  a                                           ; $5727: $97
	inc  e                                           ; $5728: $1c
	db   $d3                                         ; $5729: $d3
	ld   l, a                                        ; $572a: $6f
	ldh  [c], a                                      ; $572b: $e2
	rst  JumpTable                                         ; $572c: $df
	sub  [hl]                                        ; $572d: $96
	xor  $58                                         ; $572e: $ee $58
	reti                                             ; $5730: $d9


	ld   l, e                                        ; $5731: $6b
	ret  z                                           ; $5732: $c8

	adc  e                                           ; $5733: $8b
	sub  a                                           ; $5734: $97
	ld   l, b                                        ; $5735: $68
	ld   d, a                                        ; $5736: $57
	add  c                                           ; $5737: $81
	ld   [hl], a                                     ; $5738: $77
	ld   de, $1778                                   ; $5739: $11 $78 $17
	add  $4b                                         ; $573c: $c6 $4b
	db   $f4                                         ; $573e: $f4
	adc  a                                           ; $573f: $8f
	and  [hl]                                        ; $5740: $a6
	cp   [hl]                                        ; $5741: $be
	halt                                             ; $5742: $76
	bit  7, c                                        ; $5743: $cb $79
	jp   c, $a97c                                    ; $5745: $da $7c $a9

	ld   a, c                                        ; $5748: $79
	ld   [hl], l                                     ; $5749: $75
	or   l                                           ; $574a: $b5
	jr   z, jr_0fa_57ae                              ; $574b: $28 $61

	ld   a, [hl+]                                    ; $574d: $2a
	ld   d, c                                        ; $574e: $51
	adc  e                                           ; $574f: $8b
	ld   b, h                                        ; $5750: $44
	call $f939                                       ; $5751: $cd $39 $f9
	ld   e, h                                        ; $5754: $5c
	push hl                                          ; $5755: $e5
	ld   a, l                                        ; $5756: $7d
	or   [hl]                                        ; $5757: $b6
	xor  l                                           ; $5758: $ad
	adc  b                                           ; $5759: $88
	res  3, c                                        ; $575a: $cb $99
	cp   b                                           ; $575c: $b8
	ld   l, d                                        ; $575d: $6a
	sub  e                                           ; $575e: $93
	ld   c, c                                        ; $575f: $49
	ld   sp, $2148                                   ; $5760: $31 $48 $21
	and  a                                           ; $5763: $a7
	ld   b, l                                        ; $5764: $45
	ret  c                                           ; $5765: $d8

	ld   e, d                                        ; $5766: $5a
	rst  ToBoot                                         ; $5767: $c7
	ld   l, l                                        ; $5768: $6d
	or   a                                           ; $5769: $b7
	sbc  h                                           ; $576a: $9c
	sbc  b                                           ; $576b: $98
	call z, $cbaa                                    ; $576c: $cc $aa $cb
	xor  e                                           ; $576f: $ab
	cp   b                                           ; $5770: $b8
	adc  c                                           ; $5771: $89
	sub  [hl]                                        ; $5772: $96
	ld   b, a                                        ; $5773: $47
	ld   d, d                                        ; $5774: $52
	ld   [hl], $41                                   ; $5775: $36 $41
	ld   d, a                                        ; $5777: $57
	ld   d, h                                        ; $5778: $54
	sbc  c                                           ; $5779: $99
	ld   h, a                                        ; $577a: $67
	cp   c                                           ; $577b: $b9
	ld   a, c                                        ; $577c: $79
	cp   b                                           ; $577d: $b8
	adc  e                                           ; $577e: $8b
	cp   d                                           ; $577f: $ba
	cp   l                                           ; $5780: $bd
	cp   e                                           ; $5781: $bb
	res  5, e                                        ; $5782: $cb $ab
	jp   c, $8898                                    ; $5784: $da $98 $88

	ld   h, l                                        ; $5787: $65
	ld   h, l                                        ; $5788: $65
	inc  sp                                          ; $5789: $33
	ld   b, h                                        ; $578a: $44
	inc  sp                                          ; $578b: $33
	ld   h, l                                        ; $578c: $65
	ld   d, [hl]                                     ; $578d: $56
	add  a                                           ; $578e: $87
	ld   l, b                                        ; $578f: $68
	sbc  c                                           ; $5790: $99
	adc  d                                           ; $5791: $8a
	cp   c                                           ; $5792: $b9
	sbc  e                                           ; $5793: $9b
	cp   e                                           ; $5794: $bb
	cp   h                                           ; $5795: $bc

Jump_0fa_5796:
	cp   e                                           ; $5796: $bb
	call c, $bba9                                    ; $5797: $dc $a9 $bb
	sbc  c                                           ; $579a: $99
	adc  b                                           ; $579b: $88
	ld   h, [hl]                                     ; $579c: $66
	ld   d, l                                        ; $579d: $55
	ld   b, h                                        ; $579e: $44
	ld   b, h                                        ; $579f: $44
	inc  sp                                          ; $57a0: $33
	ld   b, l                                        ; $57a1: $45
	ld   d, l                                        ; $57a2: $55
	ld   h, a                                        ; $57a3: $67
	ld   a, b                                        ; $57a4: $78
	adc  c                                           ; $57a5: $89
	sbc  d                                           ; $57a6: $9a
	sbc  d                                           ; $57a7: $9a
	xor  d                                           ; $57a8: $aa
	xor  e                                           ; $57a9: $ab
	cp   e                                           ; $57aa: $bb
	cp   e                                           ; $57ab: $bb
	cp   e                                           ; $57ac: $bb
	cp   e                                           ; $57ad: $bb

jr_0fa_57ae:
	xor  d                                           ; $57ae: $aa
	sbc  c                                           ; $57af: $99
	adc  b                                           ; $57b0: $88
	ld   [hl], a                                     ; $57b1: $77
	ld   h, [hl]                                     ; $57b2: $66
	ld   h, l                                        ; $57b3: $65
	ld   b, h                                        ; $57b4: $44
	ld   b, h                                        ; $57b5: $44
	ld   b, l                                        ; $57b6: $45
	ld   d, l                                        ; $57b7: $55
	ld   h, [hl]                                     ; $57b8: $66
	ld   [hl], a                                     ; $57b9: $77
	adc  c                                           ; $57ba: $89
	adc  c                                           ; $57bb: $89
	xor  d                                           ; $57bc: $aa
	sbc  d                                           ; $57bd: $9a
	xor  d                                           ; $57be: $aa
	cp   e                                           ; $57bf: $bb
	xor  d                                           ; $57c0: $aa
	cp   d                                           ; $57c1: $ba
	xor  d                                           ; $57c2: $aa
	sbc  d                                           ; $57c3: $9a
	sbc  c                                           ; $57c4: $99
	adc  c                                           ; $57c5: $89
	adc  b                                           ; $57c6: $88
	ld   [hl], a                                     ; $57c7: $77
	halt                                             ; $57c8: $76
	ld   h, [hl]                                     ; $57c9: $66
	ld   h, l                                        ; $57ca: $65
	ld   d, l                                        ; $57cb: $55
	ld   d, l                                        ; $57cc: $55
	ld   d, [hl]                                     ; $57cd: $56
	ld   h, a                                        ; $57ce: $67
	ld   [hl], a                                     ; $57cf: $77
	adc  b                                           ; $57d0: $88
	sbc  b                                           ; $57d1: $98
	sbc  c                                           ; $57d2: $99
	xor  d                                           ; $57d3: $aa
	xor  c                                           ; $57d4: $a9
	sbc  c                                           ; $57d5: $99
	sbc  c                                           ; $57d6: $99
	sbc  d                                           ; $57d7: $9a
	xor  d                                           ; $57d8: $aa
	sbc  c                                           ; $57d9: $99
	sbc  b                                           ; $57da: $98
	adc  c                                           ; $57db: $89
	adc  b                                           ; $57dc: $88
	adc  b                                           ; $57dd: $88
	ld   [hl], a                                     ; $57de: $77
	ld   [hl], a                                     ; $57df: $77
	ld   [hl], a                                     ; $57e0: $77
	ld   h, [hl]                                     ; $57e1: $66
	ld   h, [hl]                                     ; $57e2: $66
	ld   h, [hl]                                     ; $57e3: $66
	ld   h, [hl]                                     ; $57e4: $66
	ld   [hl], a                                     ; $57e5: $77
	ld   [hl], a                                     ; $57e6: $77
	adc  b                                           ; $57e7: $88
	adc  b                                           ; $57e8: $88
	sbc  c                                           ; $57e9: $99
	sbc  c                                           ; $57ea: $99
	sbc  c                                           ; $57eb: $99
	sbc  d                                           ; $57ec: $9a
	sbc  c                                           ; $57ed: $99
	sbc  c                                           ; $57ee: $99
	adc  c                                           ; $57ef: $89
	adc  c                                           ; $57f0: $89
	sbc  c                                           ; $57f1: $99
	adc  b                                           ; $57f2: $88
	adc  b                                           ; $57f3: $88
	add  a                                           ; $57f4: $87
	add  a                                           ; $57f5: $87
	ld   [hl], a                                     ; $57f6: $77
	ld   [hl], a                                     ; $57f7: $77
	ld   [hl], a                                     ; $57f8: $77
	ld   [hl], a                                     ; $57f9: $77
	ld   [hl], a                                     ; $57fa: $77
	ld   [hl], a                                     ; $57fb: $77
	ld   [hl], a                                     ; $57fc: $77
	ld   [hl], a                                     ; $57fd: $77
	ld   a, b                                        ; $57fe: $78
	adc  b                                           ; $57ff: $88
	adc  c                                           ; $5800: $89
	adc  c                                           ; $5801: $89
	adc  b                                           ; $5802: $88
	adc  b                                           ; $5803: $88
	adc  b                                           ; $5804: $88
	sbc  c                                           ; $5805: $99
	sbc  c                                           ; $5806: $99
	sbc  b                                           ; $5807: $98
	adc  b                                           ; $5808: $88
	adc  b                                           ; $5809: $88
	adc  b                                           ; $580a: $88
	adc  b                                           ; $580b: $88
	adc  b                                           ; $580c: $88
	adc  b                                           ; $580d: $88
	adc  b                                           ; $580e: $88
	adc  b                                           ; $580f: $88
	adc  b                                           ; $5810: $88
	adc  b                                           ; $5811: $88
	adc  b                                           ; $5812: $88
	adc  b                                           ; $5813: $88
	adc  b                                           ; $5814: $88
	adc  b                                           ; $5815: $88
	adc  b                                           ; $5816: $88
	adc  b                                           ; $5817: $88
	adc  b                                           ; $5818: $88
	adc  b                                           ; $5819: $88
	adc  b                                           ; $581a: $88
	adc  b                                           ; $581b: $88
	adc  b                                           ; $581c: $88
	adc  b                                           ; $581d: $88
	adc  b                                           ; $581e: $88
	adc  b                                           ; $581f: $88
	adc  b                                           ; $5820: $88
	adc  b                                           ; $5821: $88
	adc  b                                           ; $5822: $88
	adc  b                                           ; $5823: $88
	adc  b                                           ; $5824: $88
	adc  b                                           ; $5825: $88
	adc  b                                           ; $5826: $88
	adc  b                                           ; $5827: $88
	adc  b                                           ; $5828: $88
	adc  b                                           ; $5829: $88
	adc  b                                           ; $582a: $88
	adc  b                                           ; $582b: $88
	add  a                                           ; $582c: $87
	ld   a, b                                        ; $582d: $78
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

Call_0fa_5896:
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
	ld   a, b                                        ; $58c6: $78
	sbc  c                                           ; $58c7: $99
	adc  b                                           ; $58c8: $88
	sbc  b                                           ; $58c9: $98
	adc  b                                           ; $58ca: $88
	adc  b                                           ; $58cb: $88
	adc  c                                           ; $58cc: $89
	adc  b                                           ; $58cd: $88
	ld   [hl], a                                     ; $58ce: $77
	adc  b                                           ; $58cf: $88
	add  a                                           ; $58d0: $87
	ld   a, c                                        ; $58d1: $79
	adc  b                                           ; $58d2: $88
	ld   a, b                                        ; $58d3: $78
	adc  b                                           ; $58d4: $88
	adc  b                                           ; $58d5: $88
	adc  b                                           ; $58d6: $88
	sub  a                                           ; $58d7: $97
	ld   a, c                                        ; $58d8: $79
	sbc  c                                           ; $58d9: $99
	ld   [hl], a                                     ; $58da: $77

jr_0fa_58db:
	sbc  d                                           ; $58db: $9a
	add  [hl]                                        ; $58dc: $86
	ld   a, b                                        ; $58dd: $78
	add  a                                           ; $58de: $87
	ld   [hl], a                                     ; $58df: $77
	sbc  c                                           ; $58e0: $99
	ld   [hl], a                                     ; $58e1: $77
	adc  c                                           ; $58e2: $89
	adc  b                                           ; $58e3: $88
	adc  b                                           ; $58e4: $88
	adc  b                                           ; $58e5: $88
	ld   a, b                                        ; $58e6: $78
	adc  b                                           ; $58e7: $88
	ld   [hl], a                                     ; $58e8: $77
	ld   a, b                                        ; $58e9: $78
	adc  b                                           ; $58ea: $88
	adc  b                                           ; $58eb: $88
	xor  c                                           ; $58ec: $a9
	sbc  b                                           ; $58ed: $98
	sbc  c                                           ; $58ee: $99
	adc  b                                           ; $58ef: $88
	adc  b                                           ; $58f0: $88
	ld   [hl], a                                     ; $58f1: $77
	ld   [hl], a                                     ; $58f2: $77
	ld   [hl], a                                     ; $58f3: $77
	ld   a, b                                        ; $58f4: $78
	adc  b                                           ; $58f5: $88
	adc  b                                           ; $58f6: $88
	adc  c                                           ; $58f7: $89
	adc  b                                           ; $58f8: $88
	sbc  b                                           ; $58f9: $98
	adc  b                                           ; $58fa: $88
	adc  b                                           ; $58fb: $88
	sbc  c                                           ; $58fc: $99
	adc  b                                           ; $58fd: $88
	adc  b                                           ; $58fe: $88
	adc  c                                           ; $58ff: $89
	sbc  b                                           ; $5900: $98
	ld   [hl], a                                     ; $5901: $77
	adc  b                                           ; $5902: $88
	ld   [hl], a                                     ; $5903: $77
	sbc  d                                           ; $5904: $9a
	sbc  b                                           ; $5905: $98
	adc  b                                           ; $5906: $88
	ld   [hl], a                                     ; $5907: $77
	ld   h, a                                        ; $5908: $67
	ld   [hl], a                                     ; $5909: $77
	ld   h, l                                        ; $590a: $65
	ld   h, a                                        ; $590b: $67
	ld   [hl], a                                     ; $590c: $77
	ld   a, c                                        ; $590d: $79
	adc  b                                           ; $590e: $88
	sbc  b                                           ; $590f: $98
	adc  c                                           ; $5910: $89
	adc  b                                           ; $5911: $88
	adc  c                                           ; $5912: $89
	adc  b                                           ; $5913: $88
	adc  c                                           ; $5914: $89
	xor  c                                           ; $5915: $a9
	sbc  d                                           ; $5916: $9a
	xor  c                                           ; $5917: $a9
	xor  e                                           ; $5918: $ab
	xor  d                                           ; $5919: $aa
	sub  a                                           ; $591a: $97
	ld   h, [hl]                                     ; $591b: $66
	ld   h, l                                        ; $591c: $65
	ld   h, [hl]                                     ; $591d: $66
	ld   b, h                                        ; $591e: $44
	ld   h, a                                        ; $591f: $67
	ld   h, l                                        ; $5920: $65
	adc  b                                           ; $5921: $88
	adc  c                                           ; $5922: $89
	sbc  c                                           ; $5923: $99
	adc  d                                           ; $5924: $8a
	sbc  c                                           ; $5925: $99
	adc  d                                           ; $5926: $8a
	ret                                              ; $5927: $c9


	adc  c                                           ; $5928: $89
	sbc  b                                           ; $5929: $98
	xor  d                                           ; $592a: $aa
	cp   d                                           ; $592b: $ba
	xor  d                                           ; $592c: $aa
	sbc  c                                           ; $592d: $99
	add  a                                           ; $592e: $87
	ld   d, h                                        ; $592f: $54
	ld   b, e                                        ; $5930: $43
	ld   c, c                                        ; $5931: $49
	ld   h, c                                        ; $5932: $61
	jr   c, jr_0fa_58db                              ; $5933: $38 $a6

	ld   a, d                                        ; $5935: $7a
	sbc  c                                           ; $5936: $99
	xor  h                                           ; $5937: $ac
	ld   [hl], a                                     ; $5938: $77
	cp   e                                           ; $5939: $bb
	ld   [hl], l                                     ; $593a: $75
	cp   c                                           ; $593b: $b9
	ld   a, b                                        ; $593c: $78
	cp   d                                           ; $593d: $ba
	sbc  h                                           ; $593e: $9c
	db   $db                                         ; $593f: $db
	xor  h                                           ; $5940: $ac
	cp   c                                           ; $5941: $b9
	adc  c                                           ; $5942: $89
	ld   [hl], l                                     ; $5943: $75
	ld   b, c                                        ; $5944: $41
	rla                                              ; $5945: $17
	ld   d, c                                        ; $5946: $51
	dec  d                                           ; $5947: $15
	or   l                                           ; $5948: $b5
	sbc  h                                           ; $5949: $9c
	xor  h                                           ; $594a: $ac
	rst  $28                                         ; $594b: $ef
	add  a                                           ; $594c: $87
	cp   h                                           ; $594d: $bc
	ld   [hl], e                                     ; $594e: $73
	sub  [hl]                                        ; $594f: $96
	ld   d, l                                        ; $5950: $55
	xor  b                                           ; $5951: $a8
	adc  [hl]                                        ; $5952: $8e
	db   $fd                                         ; $5953: $fd
	sbc  a                                           ; $5954: $9f
	db   $ec                                         ; $5955: $ec
	cp   d                                           ; $5956: $ba
	ld   hl, $1811                                   ; $5957: $21 $11 $18
	ld   hl, $fd1b                                   ; $595a: $21 $1b $fd
	rst  $38                                         ; $595d: $ff
	rst  $38                                         ; $595e: $ff
	rst  $38                                         ; $595f: $ff
	inc  hl                                          ; $5960: $23
	ld   b, [hl]                                     ; $5961: $46
	ld   de, $6a53                                   ; $5962: $11 $53 $6a
	db   $fc                                         ; $5965: $fc
	rst  $38                                         ; $5966: $ff
	rst  $38                                         ; $5967: $ff
	rst  $28                                         ; $5968: $ef
	and  a                                           ; $5969: $a7
	ld   sp, $1111                                   ; $596a: $31 $11 $11
	sbc  e                                           ; $596d: $9b
	ld   de, $ffcf                                   ; $596e: $11 $cf $ff
	db   $fd                                         ; $5971: $fd
	cp   h                                           ; $5972: $bc
	pop  af                                          ; $5973: $f1
	ld   de, $1911                                   ; $5974: $11 $11 $19
	ld   l, d                                        ; $5977: $6a
	rst  JumpTable                                         ; $5978: $df
	rst  $38                                         ; $5979: $ff
	rst  $38                                         ; $597a: $ff
	ei                                               ; $597b: $fb
	ret  z                                           ; $597c: $c8

	ld   sp, $1111                                   ; $597d: $31 $11 $11
	rra                                              ; $5980: $1f
	db   $f4                                         ; $5981: $f4
	ld   a, a                                        ; $5982: $7f
	rst  $38                                         ; $5983: $ff
	rst  $38                                         ; $5984: $ff
	ld   h, e                                        ; $5985: $63
	sbc  l                                           ; $5986: $9d
	ld   de, $4511                                   ; $5987: $11 $11 $45
	db   $fc                                         ; $598a: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $598b: $cf
	rst  $38                                         ; $598c: $ff
	db   $dd                                         ; $598d: $dd
	call c, Call_0fa_4169                            ; $598e: $dc $69 $41
	ld   de, $1511                                   ; $5991: $11 $11 $15
	cp   $ab                                         ; $5994: $fe $ab
	rst  $38                                         ; $5996: $ff
	rst  $38                                         ; $5997: $ff
	ld   b, c                                        ; $5998: $41
	inc  e                                           ; $5999: $1c
	ld   h, c                                        ; $599a: $61
	ld   de, $ff9b                                   ; $599b: $11 $9b $ff
	cp   l                                           ; $599e: $bd
	rst  $38                                         ; $599f: $ff
	rst  ToBoot                                         ; $59a0: $c7
	ld   l, b                                        ; $59a1: $68
	adc  d                                           ; $59a2: $8a
	and  c                                           ; $59a3: $a1
	ld   de, $1111                                   ; $59a4: $11 $11 $11
	rst  $38                                         ; $59a7: $ff
	ld   a, e                                        ; $59a8: $7b
	rst  $38                                         ; $59a9: $ff
	cp   a                                           ; $59aa: $bf
	pop  af                                          ; $59ab: $f1
	ld   [de], a                                     ; $59ac: $12
	pop  af                                          ; $59ad: $f1
	ld   de, $ff8b                                   ; $59ae: $11 $8b $ff
	reti                                             ; $59b1: $d9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59b2: $cf
	push af                                          ; $59b3: $f5
	sbc  b                                           ; $59b4: $98
	add  a                                           ; $59b5: $87
	jp   hl                                          ; $59b6: $e9


	ld   de, $1111                                   ; $59b7: $11 $11 $11
	rra                                              ; $59ba: $1f
	ld   sp, hl                                      ; $59bb: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59bc: $cf
	db   $fd                                         ; $59bd: $fd
	rst  $30                                         ; $59be: $f7
	ld   de, $117c                                   ; $59bf: $11 $7c $11
	ld   c, [hl]                                     ; $59c2: $4e
	rst  JumpTable                                         ; $59c3: $df
	ei                                               ; $59c4: $fb
	ld   a, e                                        ; $59c5: $7b
	ld   a, [$9848]                                  ; $59c6: $fa $48 $98
	xor  a                                           ; $59c9: $af
	sub  c                                           ; $59ca: $91
	ld   de, $1611                                   ; $59cb: $11 $11 $16
	cp   $ab                                         ; $59ce: $fe $ab
	rst  $38                                         ; $59d0: $ff
	rst  $28                                         ; $59d1: $ef
	ld   hl, $d119                                   ; $59d2: $21 $19 $d1
	dec  d                                           ; $59d5: $15
	rst  $38                                         ; $59d6: $ff
	rst  $38                                         ; $59d7: $ff
	halt                                             ; $59d8: $76
	adc  a                                           ; $59d9: $8f
	add  e                                           ; $59da: $83
	ld   a, e                                        ; $59db: $7b
	set  7, c                                        ; $59dc: $cb $f9
	ld   de, $1111                                   ; $59de: $11 $11 $11
	ld   e, a                                        ; $59e1: $5f
	db   $fc                                         ; $59e2: $fc
	cp   a                                           ; $59e3: $bf
	cp   $f1                                         ; $59e4: $fe $f1
	ld   de, $139f                                   ; $59e6: $11 $9f $13
	ld   a, a                                        ; $59e9: $7f
	rst  $38                                         ; $59ea: $ff
	db   $f4                                         ; $59eb: $f4
	dec  h                                           ; $59ec: $25
	ld   hl, sp+$39                                  ; $59ed: $f8 $39
	sbc  $df                                         ; $59ef: $de $df
	ld   [hl], c                                     ; $59f1: $71
	ld   de, $1511                                   ; $59f2: $11 $11 $15
	rst  $38                                         ; $59f5: $ff
	db   $fc                                         ; $59f6: $fc
	rst  $38                                         ; $59f7: $ff
	cp   a                                           ; $59f8: $bf
	ld   de, $f117                                   ; $59f9: $11 $17 $f1
	ld   e, d                                        ; $59fc: $5a
	rst  $38                                         ; $59fd: $ff
	rst  $38                                         ; $59fe: $ff
	ld   de, $743f                                   ; $59ff: $11 $3f $74
	xor  a                                           ; $5a02: $af
	rst  $38                                         ; $5a03: $ff
	or   $11                                         ; $5a04: $f6 $11
	ld   de, $1f11                                   ; $5a06: $11 $11 $1f
	rst  $38                                         ; $5a09: $ff
	cp   [hl]                                        ; $5a0a: $be
	ld   sp, hl                                      ; $5a0b: $f9
	pop  af                                          ; $5a0c: $f1
	ld   de, $641f                                   ; $5a0d: $11 $1f $64
	sbc  a                                           ; $5a10: $9f
	rst  $38                                         ; $5a11: $ff
	pop  af                                          ; $5a12: $f1
	ld   de, $4aef                                   ; $5a13: $11 $ef $4a
	rst  $38                                         ; $5a16: $ff
	db   $fd                                         ; $5a17: $fd
	ld   d, c                                        ; $5a18: $51
	ld   [de], a                                     ; $5a19: $12
	ld   de, rAUD1LEN                                   ; $5a1a: $11 $11 $ff
	ld   sp, hl                                      ; $5a1d: $f9
	ld   l, a                                        ; $5a1e: $6f
	adc  a                                           ; $5a1f: $8f
	ld   sp, rAUD1LEN                                   ; $5a20: $31 $11 $ff
	jr   c, @+$01                                    ; $5a23: $38 $ff

	sbc  $21                                         ; $5a25: $de $21
	inc  e                                           ; $5a27: $1c
	db   $f4                                         ; $5a28: $f4
	ld   a, a                                        ; $5a29: $7f
	rst  $38                                         ; $5a2a: $ff
	and  h                                           ; $5a2b: $a4
	ld   de, $1156                                   ; $5a2c: $11 $56 $11
	rra                                              ; $5a2f: $1f
	rst  $38                                         ; $5a30: $ff
	sub  c                                           ; $5a31: $91
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a32: $cf
	cp   [hl]                                        ; $5a33: $be
	ld   de, $f61f                                   ; $5a34: $11 $1f $f6
	ld   e, b                                        ; $5a37: $58
	rst  $38                                         ; $5a38: $ff
	sub  [hl]                                        ; $5a39: $96
	ld   de, $c37f                                   ; $5a3a: $11 $7f $c3
	rst  JumpTable                                         ; $5a3d: $df
	ld   sp, hl                                      ; $5a3e: $f9
	ld   b, c                                        ; $5a3f: $41
	dec  d                                           ; $5a40: $15
	sub  c                                           ; $5a41: $91
	ld   de, $ff1f                                   ; $5a42: $11 $1f $ff
	ld   hl, $b5fd                                   ; $5a45: $21 $fd $b5
	ld   de, $f21f                                   ; $5a48: $11 $1f $f2
	ld   e, e                                        ; $5a4b: $5b
	db   $fd                                         ; $5a4c: $fd
	ld   h, c                                        ; $5a4d: $61
	inc  d                                           ; $5a4e: $14
	rst  JumpTable                                         ; $5a4f: $df
	ld   [hl], a                                     ; $5a50: $77
	rst  $38                                         ; $5a51: $ff
	db   $f4                                         ; $5a52: $f4
	ld   de, $a158                                   ; $5a53: $11 $58 $a1
	ld   de, $ff1f                                   ; $5a56: $11 $1f $ff
	ld   de, $96ff                                   ; $5a59: $11 $ff $96
	ld   de, $f14f                                   ; $5a5c: $11 $4f $f1
	ld   e, b                                        ; $5a5f: $58
	rst  $38                                         ; $5a60: $ff
	ld   b, c                                        ; $5a61: $41
	ld   d, $df                                      ; $5a62: $16 $df
	sub  a                                           ; $5a64: $97
	rst  $38                                         ; $5a65: $ff
	db   $f4                                         ; $5a66: $f4
	ld   de, $8168                                   ; $5a67: $11 $68 $81
	ld   de, $ff1f                                   ; $5a6a: $11 $1f $ff
	ld   hl, $6a6f                                   ; $5a6d: $21 $6f $6a
	ld   de, $f96e                                   ; $5a70: $11 $6e $f9
	scf                                              ; $5a73: $37
	rst  $38                                         ; $5a74: $ff
	ld   h, e                                        ; $5a75: $63
	inc  d                                           ; $5a76: $14
	cp   a                                           ; $5a77: $bf
	ld   hl, sp-$11                                  ; $5a78: $f8 $ef
	ld   sp, hl                                      ; $5a7a: $f9
	ld   hl, $825a                                   ; $5a7b: $21 $5a $82
	ld   de, rAUD1LEN                                   ; $5a7e: $11 $11 $ff
	ldh  [c], a                                      ; $5a81: $e2
	dec  e                                           ; $5a82: $1d
	push af                                          ; $5a83: $f5
	ld   d, c                                        ; $5a84: $51
	ld   a, [de]                                     ; $5a85: $1a
	rst  $38                                         ; $5a86: $ff
	scf                                              ; $5a87: $37
	xor  a                                           ; $5a88: $af
	di                                               ; $5a89: $f3
	ld   de, $fd9d                                   ; $5a8a: $11 $9d $fd
	cp   a                                           ; $5a8d: $bf
	rst  $38                                         ; $5a8e: $ff
	ld   b, c                                        ; $5a8f: $41
	ld   a, [hl+]                                    ; $5a90: $2a
	and  [hl]                                        ; $5a91: $a6
	ld   de, $1f11                                   ; $5a92: $11 $11 $1f
	or   $24                                         ; $5a95: $f6 $24
	ld   sp, hl                                      ; $5a97: $f9
	ld   [hl], c                                     ; $5a98: $71
	ld   [de], a                                     ; $5a99: $12
	rst  JumpTable                                         ; $5a9a: $df
	ldh  a, [c]                                      ; $5a9b: $f2
	cp   d                                           ; $5a9c: $ba
	db   $fd                                         ; $5a9d: $fd
	ld   de, $fe1d                                   ; $5a9e: $11 $1d $fe
	cp   l                                           ; $5aa1: $bd
	rst  $38                                         ; $5aa2: $ff
	or   d                                           ; $5aa3: $b2
	dec  d                                           ; $5aa4: $15
	swap c                                           ; $5aa5: $cb $31
	ld   de, rAUD1LEN                                   ; $5aa7: $11 $11 $ff
	ld   h, h                                        ; $5aaa: $64
	ld   e, a                                        ; $5aab: $5f
	adc  b                                           ; $5aac: $88
	ld   hl, $ff3d                                   ; $5aad: $21 $3d $ff
	inc  a                                           ; $5ab0: $3c
	adc  a                                           ; $5ab1: $8f
	jp   nc, rAUD1LEN                                   ; $5ab2: $d2 $11 $ff

	cp   c                                           ; $5ab5: $b9
	rst  JumpTable                                         ; $5ab6: $df
	db   $fc                                         ; $5ab7: $fc
	ld   sp, $c35d                                   ; $5ab8: $31 $5d $c3
	ld   de, $1f11                                   ; $5abb: $11 $11 $1f
	ld   a, [$cd54]                                  ; $5abe: $fa $54 $cd
	adc  c                                           ; $5ac1: $89
	ld   de, $f1bf                                   ; $5ac2: $11 $bf $f1
	ret  z                                           ; $5ac5: $c8

	rst  $38                                         ; $5ac6: $ff
	ld   d, c                                        ; $5ac7: $51
	ld   e, $fb                                      ; $5ac8: $1e $fb
	adc  d                                           ; $5aca: $8a
	rst  $38                                         ; $5acb: $ff
	or   $13                                         ; $5acc: $f6 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ace: $cf
	ld   b, c                                        ; $5acf: $41
	ld   de, rAUD1LEN                                   ; $5ad0: $11 $11 $ff
	push af                                          ; $5ad3: $f5
	ld   a, e                                        ; $5ad4: $7b
	and  $e1                                         ; $5ad5: $e6 $e1
	dec  de                                          ; $5ad7: $1b
	rst  $38                                         ; $5ad8: $ff
	dec  de                                          ; $5ad9: $1b

jr_0fa_5ada:
	call Call_0fa_51f8                               ; $5ada: $cd $f8 $51
	sbc  a                                           ; $5add: $9f
	rst  ToBoot                                         ; $5ade: $c7
	ld   a, a                                        ; $5adf: $7f
	rst  $38                                         ; $5ae0: $ff
	sub  c                                           ; $5ae1: $91
	jr   jr_0fa_5ada                                 ; $5ae2: $18 $f6

	ld   de, $1111                                   ; $5ae4: $11 $11 $11
	rst  $38                                         ; $5ae7: $ff
	ld   e, c                                        ; $5ae8: $59
	ld   a, a                                        ; $5ae9: $7f
	ld   l, h                                        ; $5aea: $6c
	ld   de, $f65f                                   ; $5aeb: $11 $5f $f6
	ld   e, a                                        ; $5aee: $5f
	xor  a                                           ; $5aef: $af
	cp   b                                           ; $5af0: $b8
	ld   de, $84fc                                   ; $5af1: $11 $fc $84
	rst  $38                                         ; $5af4: $ff
	cp   $21                                         ; $5af5: $fe $21
	ld   l, a                                        ; $5af7: $6f
	and  c                                           ; $5af8: $a1
	ld   de, $1f11                                   ; $5af9: $11 $11 $1f
	ei                                               ; $5afc: $fb
	sbc  c                                           ; $5afd: $99
	db   $db                                         ; $5afe: $db
	ld   a, b                                        ; $5aff: $78
	ld   de, $f2bf                                   ; $5b00: $11 $bf $f2
	ei                                               ; $5b03: $fb
	rst  $38                                         ; $5b04: $ff
	sub  c                                           ; $5b05: $91
	dec  e                                           ; $5b06: $1d
	reti                                             ; $5b07: $d9


	inc  l                                           ; $5b08: $2c
	rst  $38                                         ; $5b09: $ff
	or   $13                                         ; $5b0a: $f6 $13
	call c, $1111                                    ; $5b0c: $dc $11 $11
	ld   de, $f61f                                   ; $5b0f: $11 $1f $f6
	or   a                                           ; $5b12: $b7
	ld   hl, sp-$3f                                  ; $5b13: $f8 $c1
	inc  de                                          ; $5b15: $13
	rst  $38                                         ; $5b16: $ff
	ld   h, a                                        ; $5b17: $67
	xor  $fd                                         ; $5b18: $ee $fd
	ld   h, c                                        ; $5b1a: $61
	ld   c, [hl]                                     ; $5b1b: $4e
	call nc, $ff3f                                   ; $5b1c: $d4 $3f $ff
	call nc, $e729                                   ; $5b1f: $d4 $29 $e7
	ld   de, $1111                                   ; $5b22: $11 $11 $11
	rst  $28                                         ; $5b25: $ef
	ld   sp, hl                                      ; $5b26: $f9
	sbc  d                                           ; $5b27: $9a
	ld   sp, hl                                      ; $5b28: $f9
	pop  bc                                          ; $5b29: $c1
	jr   @+$01                                       ; $5b2a: $18 $ff

	ld   c, c                                        ; $5b2c: $49
	rst  $28                                         ; $5b2d: $ef
	db   $fc                                         ; $5b2e: $fc
	ld   de, $a18f                                   ; $5b2f: $11 $8f $a1
	ld   e, a                                        ; $5b32: $5f
	rst  $38                                         ; $5b33: $ff
	and  e                                           ; $5b34: $a3
	ld   c, l                                        ; $5b35: $4d
	push hl                                          ; $5b36: $e5
	ld   de, $1111                                   ; $5b37: $11 $11 $11
	adc  a                                           ; $5b3a: $8f
	ld   sp, hl                                      ; $5b3b: $f9
	add  a                                           ; $5b3c: $87
	db   $fc                                         ; $5b3d: $fc
	and  c                                           ; $5b3e: $a1
	rla                                              ; $5b3f: $17
	rst  $38                                         ; $5b40: $ff
	ld   d, [hl]                                     ; $5b41: $56
	rst  $28                                         ; $5b42: $ef
	db   $fd                                         ; $5b43: $fd
	ld   de, $817f                                   ; $5b44: $11 $7f $81
	ccf                                              ; $5b47: $3f
	rst  $38                                         ; $5b48: $ff
	or   e                                           ; $5b49: $b3
	ld   a, [hl]                                     ; $5b4a: $7e
	call nc, $1111                                   ; $5b4b: $d4 $11 $11
	ld   de, $f91f                                   ; $5b4e: $11 $1f $f9
	ld   [hl], l                                     ; $5b51: $75
	rst  $38                                         ; $5b52: $ff
	and  c                                           ; $5b53: $a1
	ld   de, $b1ff                                   ; $5b54: $11 $ff $b1
	rst  JumpTable                                         ; $5b57: $df
	rst  $38                                         ; $5b58: $ff
	ld   de, $c13f                                   ; $5b59: $11 $3f $c1
	add  hl, de                                      ; $5b5c: $19
	rst  $38                                         ; $5b5d: $ff
	or   $5f                                         ; $5b5e: $f6 $5f
	rst  $20                                         ; $5b60: $e7
	ld   de, $1111                                   ; $5b61: $11 $11 $11

jr_0fa_5b64:
	inc  d                                           ; $5b64: $14
	rst  $38                                         ; $5b65: $ff
	jr   c, @+$81                                    ; $5b66: $38 $7f

	or   $11                                         ; $5b68: $f6 $11
	rst  JumpTable                                         ; $5b6a: $df
	db   $f4                                         ; $5b6b: $f4
	rra                                              ; $5b6c: $1f
	rst  $38                                         ; $5b6d: $ff
	or   c                                           ; $5b6e: $b1
	jr   jr_0fa_5b64                                 ; $5b6f: $18 $f3

	ld   de, $fddf                                   ; $5b71: $11 $df $fd
	ld   e, e                                        ; $5b74: $5b
	ei                                               ; $5b75: $fb
	ld   d, c                                        ; $5b76: $51
	ld   [de], a                                     ; $5b77: $12
	ld   de, $3f11                                   ; $5b78: $11 $11 $3f
	di                                               ; $5b7b: $f3
	ld   a, b                                        ; $5b7c: $78
	cp   $31                                         ; $5b7d: $fe $31
	rra                                              ; $5b7f: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b80: $cf
	ld   b, c                                        ; $5b81: $41
	rst  $38                                         ; $5b82: $ff
	rst  $30                                         ; $5b83: $f7
	ld   d, $8f                                      ; $5b84: $16 $8f
	ld   de, $ff1b                                   ; $5b86: $11 $1b $ff
	rst  $10                                         ; $5b89: $d7
	rst  JumpTable                                         ; $5b8a: $df
	or   l                                           ; $5b8b: $b5
	ld   de, $1131                                   ; $5b8c: $11 $31 $11
	ld   de, $39ff                                   ; $5b8f: $11 $ff $39
	ld   e, a                                        ; $5b92: $5f
	pop  af                                          ; $5b93: $f1
	ld   sp, $8d8d                                   ; $5b94: $31 $8d $8d
	rra                                              ; $5b97: $1f
	rst  $38                                         ; $5b98: $ff
	pop  af                                          ; $5b99: $f1
	and  a                                           ; $5b9a: $a7
	pop  af                                          ; $5b9b: $f1
	ld   de, $ff2f                                   ; $5b9c: $11 $2f $ff
	sbc  e                                           ; $5b9f: $9b
	db   $fd                                         ; $5ba0: $fd
	ld   h, c                                        ; $5ba1: $61
	rla                                              ; $5ba2: $17
	ld   de, $1111                                   ; $5ba3: $11 $11 $11
	rst  $38                                         ; $5ba6: $ff
	dec  de                                          ; $5ba7: $1b
	cp   a                                           ; $5ba8: $bf
	sub  d                                           ; $5ba9: $92
	ld   de, $f6f2                                   ; $5baa: $11 $f2 $f6
	rra                                              ; $5bad: $1f
	rst  $38                                         ; $5bae: $ff
	ld   de, $a1d6                                   ; $5baf: $11 $d6 $a1
	ld   de, $fd8f                                   ; $5bb2: $11 $8f $fd
	sbc  a                                           ; $5bb5: $9f
	ld   hl, sp+$31                                  ; $5bb6: $f8 $31
	dec  [hl]                                        ; $5bb8: $35
	ld   de, $1911                                   ; $5bb9: $11 $11 $19
	rst  $38                                         ; $5bbc: $ff
	ld   c, c                                        ; $5bbd: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bbe: $cf
	ld   [hl], l                                     ; $5bbf: $75
	ld   de, $f1f2                                   ; $5bc0: $11 $f2 $f1
	rra                                              ; $5bc3: $1f
	rst  $38                                         ; $5bc4: $ff
	ld   d, $97                                      ; $5bc5: $16 $97
	or   c                                           ; $5bc7: $b1
	ld   de, $fbdf                                   ; $5bc8: $11 $df $fb
	ld   a, a                                        ; $5bcb: $7f
	ld   sp, hl                                      ; $5bcc: $f9
	ld   de, $1153                                   ; $5bcd: $11 $53 $11
	ld   de, $fc1f                                   ; $5bd0: $11 $1f $fc
	ld   l, c                                        ; $5bd3: $69
	rst  $38                                         ; $5bd4: $ff
	inc  de                                          ; $5bd5: $13
	ld   de, $f1b1                                   ; $5bd6: $11 $b1 $f1
	ld   l, a                                        ; $5bd9: $6f
	rst  $38                                         ; $5bda: $ff
	dec  e                                           ; $5bdb: $1d
	xor  h                                           ; $5bdc: $ac
	ld   h, c                                        ; $5bdd: $61
	ld   de, $f9ff                                   ; $5bde: $11 $ff $f9
	sbc  a                                           ; $5be1: $9f
	db   $f4                                         ; $5be2: $f4
	ld   [de], a                                     ; $5be3: $12
	ld   [hl], c                                     ; $5be4: $71
	ld   de, $1f11                                   ; $5be5: $11 $11 $1f
	ld   sp, hl                                      ; $5be8: $f9
	sbc  h                                           ; $5be9: $9c
	rst  $38                                         ; $5bea: $ff
	inc  d                                           ; $5beb: $14
	ld   de, $f144                                   ; $5bec: $11 $44 $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bef: $cf
	cp   $1f                                         ; $5bf0: $fe $1f
	xor  e                                           ; $5bf2: $ab
	ld   sp, rAUD1LEN                                   ; $5bf3: $31 $11 $ff
	ld   a, [$f5bf]                                  ; $5bf6: $fa $bf $f5
	ld   b, e                                        ; $5bf9: $43
	ld   sp, $1111                                   ; $5bfa: $31 $11 $11
	rra                                              ; $5bfd: $1f
	push af                                          ; $5bfe: $f5
	ld   [hl], a                                     ; $5bff: $77
	rst  $38                                         ; $5c00: $ff
	ld   hl, $1f17                                   ; $5c01: $21 $17 $1f
	ld   b, c                                        ; $5c04: $41
	rst  $38                                         ; $5c05: $ff
	db   $f4                                         ; $5c06: $f4
	ld   c, l                                        ; $5c07: $4d
	xor  a                                           ; $5c08: $af
	ld   de, rAUD1LEN                                   ; $5c09: $11 $11 $ff
	sub  $ff                                         ; $5c0c: $d6 $ff
	rst  ToBoot                                         ; $5c0e: $c7
	inc  hl                                          ; $5c0f: $23
	ld   sp, $1111                                   ; $5c10: $31 $11 $11
	rra                                              ; $5c13: $1f
	or   $ad                                         ; $5c14: $f6 $ad
	ei                                               ; $5c16: $fb
	ld   sp, $1f18                                   ; $5c17: $31 $18 $1f
	ld   de, $f3ff                                   ; $5c1a: $11 $ff $f3
	xor  [hl]                                        ; $5c1d: $ae
	xor  l                                           ; $5c1e: $ad
	ld   de, rAUD1LEN                                   ; $5c1f: $11 $11 $ff
	jp   c, $caff                                    ; $5c22: $da $ff $ca

	ld   b, e                                        ; $5c25: $43
	ld   hl, $1111                                   ; $5c26: $21 $11 $11
	rra                                              ; $5c29: $1f
	db   $fc                                         ; $5c2a: $fc
	or   [hl]                                        ; $5c2b: $b6
	rst  $38                                         ; $5c2c: $ff
	inc  h                                           ; $5c2d: $24
	inc  de                                          ; $5c2e: $13
	rra                                              ; $5c2f: $1f
	add  c                                           ; $5c30: $81
	rst  $38                                         ; $5c31: $ff
	db   $fd                                         ; $5c32: $fd
	ld   a, l                                        ; $5c33: $7d
	adc  l                                           ; $5c34: $8d
	ld   b, e                                        ; $5c35: $43
	ld   de, $ebef                                   ; $5c36: $11 $ef $eb
	rst  JumpTable                                         ; $5c39: $df
	cp   $61                                         ; $5c3a: $fe $61
	ld   hl, $1131                                   ; $5c3c: $21 $31 $11
	ld   d, $ff                                      ; $5c3f: $16 $ff
	push de                                          ; $5c41: $d5
	rst  $38                                         ; $5c42: $ff
	ld   d, a                                        ; $5c43: $57
	ld   de, $f111                                   ; $5c44: $11 $11 $f1
	dec  e                                           ; $5c47: $1d
	rst  $38                                         ; $5c48: $ff
	ld   l, d                                        ; $5c49: $6a
	xor  e                                           ; $5c4a: $ab
	add  h                                           ; $5c4b: $84
	ld   hl, $ff1f                                   ; $5c4c: $21 $1f $ff
	sbc  a                                           ; $5c4f: $9f
	rst  $38                                         ; $5c50: $ff
	call nc, $2231                                   ; $5c51: $d4 $31 $22
	ld   de, $9f11                                   ; $5c54: $11 $11 $9f
	db   $fd                                         ; $5c57: $fd
	ld   e, a                                        ; $5c58: $5f
	push af                                          ; $5c59: $f5
	sub  c                                           ; $5c5a: $91
	ld   de, $111f                                   ; $5c5b: $11 $1f $11
	cp   a                                           ; $5c5e: $bf
	ld   sp, hl                                      ; $5c5f: $f9
	cp   b                                           ; $5c60: $b8
	ld   a, c                                        ; $5c61: $79
	ld   h, e                                        ; $5c62: $63
	ld   de, $fadf                                   ; $5c63: $11 $df $fa
	rst  $28                                         ; $5c66: $ef
	rst  $38                                         ; $5c67: $ff
	ld   h, h                                        ; $5c68: $64
	ld   de, $1141                                   ; $5c69: $11 $41 $11
	ld   de, $f9ff                                   ; $5c6c: $11 $ff $f9
	ld   e, a                                        ; $5c6f: $5f
	ld   hl, sp+$11                                  ; $5c70: $f8 $11
	ld   de, $16fc                                   ; $5c72: $11 $fc $16
	rst  $28                                         ; $5c75: $ef
	ei                                               ; $5c76: $fb
	add  e                                           ; $5c77: $83
	ld   h, [hl]                                     ; $5c78: $66
	add  c                                           ; $5c79: $81
	inc  de                                          ; $5c7a: $13
	rst  $38                                         ; $5c7b: $ff
	db   $fc                                         ; $5c7c: $fc
	cp   $fc                                         ; $5c7d: $fe $fc
	ld   [hl], c                                     ; $5c7f: $71
	ld   de, $1111                                   ; $5c80: $11 $11 $11
	rla                                              ; $5c83: $17
	rst  $38                                         ; $5c84: $ff
	ldh  a, [c]                                      ; $5c85: $f2
	adc  a                                           ; $5c86: $8f
	xor  e                                           ; $5c87: $ab
	ld   de, $fa11                                   ; $5c88: $11 $11 $fa
	ld   b, h                                        ; $5c8b: $44
	rst  $28                                         ; $5c8c: $ef
	cp   $61                                         ; $5c8d: $fe $61
	ld   h, $a1                                      ; $5c8f: $26 $a1
	inc  d                                           ; $5c91: $14
	rst  $28                                         ; $5c92: $ef
	rst  $38                                         ; $5c93: $ff
	ld   sp, hl                                      ; $5c94: $f9
	call z, $11a1                                    ; $5c95: $cc $a1 $11
	ld   de, $1111                                   ; $5c98: $11 $11 $11
	rst  $38                                         ; $5c9b: $ff
	or   $2f                                         ; $5c9c: $f6 $2f
	cp   l                                           ; $5c9e: $bd
	ld   d, c                                        ; $5c9f: $51
	ld   de, $c5ff                                   ; $5ca0: $11 $ff $c5
	ld   l, a                                        ; $5ca3: $6f
	rst  $38                                         ; $5ca4: $ff
	db   $d3                                         ; $5ca5: $d3
	ld   de, $1199                                   ; $5ca6: $11 $99 $11
	ld   a, a                                        ; $5ca9: $7f
	rst  $38                                         ; $5caa: $ff
	ei                                               ; $5cab: $fb
	ld   [hl], a                                     ; $5cac: $77
	cp   c                                           ; $5cad: $b9
	ld   de, $1111                                   ; $5cae: $11 $11 $11
	ld   de, $ffaf                                   ; $5cb1: $11 $af $ff
	add  hl, sp                                      ; $5cb4: $39
	ret  c                                           ; $5cb5: $d8

	ldh  [c], a                                      ; $5cb6: $e2
	ld   de, $fe1f                                   ; $5cb7: $11 $1f $fe
	ld   l, d                                        ; $5cba: $6a
	cp   $ff                                         ; $5cbb: $fe $ff
	ld   b, c                                        ; $5cbd: $41
	dec  d                                           ; $5cbe: $15
	ld   h, l                                        ; $5cbf: $65
	xor  d                                           ; $5cc0: $aa
	rst  $28                                         ; $5cc1: $ef
	rst  $38                                         ; $5cc2: $ff
	rst  $10                                         ; $5cc3: $d7
	ld   b, a                                        ; $5cc4: $47
	ld   h, h                                        ; $5cc5: $64
	ld   b, c                                        ; $5cc6: $41
	ld   de, $1a11                                   ; $5cc7: $11 $11 $1a
	rst  $38                                         ; $5cca: $ff
	rst  $30                                         ; $5ccb: $f7
	jp   z, Jump_0fa_534e                            ; $5ccc: $ca $4e $53

	ld   de, $fadd                                   ; $5ccf: $11 $dd $fa
	call $f99f                                       ; $5cd2: $cd $9f $f9
	ld   de, $5b24                                   ; $5cd5: $11 $24 $5b
	adc  $cf                                         ; $5cd8: $ce $cf
	rst  $38                                         ; $5cda: $ff
	or   l                                           ; $5cdb: $b5
	ld   d, e                                        ; $5cdc: $53
	dec  h                                           ; $5cdd: $25
	ld   b, c                                        ; $5cde: $41
	ld   de, $6f11                                   ; $5cdf: $11 $11 $6f
	rst  $38                                         ; $5ce2: $ff
	sub  a                                           ; $5ce3: $97
	push de                                          ; $5ce4: $d5
	add  sp, $21                                     ; $5ce5: $e8 $21
	ld   a, [de]                                     ; $5ce7: $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ce8: $cf
	db   $eb                                         ; $5ce9: $eb
	jp   hl                                          ; $5cea: $e9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ceb: $cf
	or   h                                           ; $5cec: $b4
	ld   de, $df13                                   ; $5ced: $11 $13 $df
	db   $fd                                         ; $5cf0: $fd
	rst  JumpTable                                         ; $5cf1: $df
	rst  $38                                         ; $5cf2: $ff
	sub  l                                           ; $5cf3: $95
	ld   hl, $1135                                   ; $5cf4: $21 $35 $11
	ld   de, rAUD1LEN                                   ; $5cf7: $11 $11 $ff
	rst  $38                                         ; $5cfa: $ff
	ld   e, e                                        ; $5cfb: $5b
	ld   c, b                                        ; $5cfc: $48
	rst  $10                                         ; $5cfd: $d7
	ld   hl, $ef1a                                   ; $5cfe: $21 $1a $ef
	rst  $38                                         ; $5d01: $ff
	add  l                                           ; $5d02: $85
	rst  $28                                         ; $5d03: $ef
	or   e                                           ; $5d04: $b3
	ld   de, $ff16                                   ; $5d05: $11 $16 $ff
	db   $fc                                         ; $5d08: $fc
	rst  $38                                         ; $5d09: $ff
	xor  $96                                         ; $5d0a: $ee $96
	ld   de, $1123                                   ; $5d0c: $11 $23 $11
	ld   de, $ff17                                   ; $5d0f: $11 $17 $ff
	db   $fc                                         ; $5d12: $fc
	add  l                                           ; $5d13: $85
	inc  e                                           ; $5d14: $1c
	jp   z, $1411                                    ; $5d15: $ca $11 $14

	rst  $38                                         ; $5d18: $ff
	rst  $38                                         ; $5d19: $ff
	dec  [hl]                                        ; $5d1a: $35
	cp   l                                           ; $5d1b: $bd
	push bc                                          ; $5d1c: $c5
	ld   de, $ff18                                   ; $5d1d: $11 $18 $ff
	rst  $38                                         ; $5d20: $ff
	jp   hl                                          ; $5d21: $e9


	sbc  e                                           ; $5d22: $9b
	or   a                                           ; $5d23: $b7
	ld   de, $1111                                   ; $5d24: $11 $11 $11
	ld   de, $ff1f                                   ; $5d27: $11 $1f $ff
	db   $fd                                         ; $5d2a: $fd
	and  c                                           ; $5d2b: $a1
	ld   a, [de]                                     ; $5d2c: $1a
	cp   e                                           ; $5d2d: $bb
	ld   de, $ef13                                   ; $5d2e: $11 $13 $ef
	rst  $38                                         ; $5d31: $ff
	ld   h, [hl]                                     ; $5d32: $66
	ld   d, a                                        ; $5d33: $57
	sub  a                                           ; $5d34: $97
	ld   h, c                                        ; $5d35: $61
	rla                                              ; $5d36: $17
	rst  $28                                         ; $5d37: $ef
	rst  $38                                         ; $5d38: $ff
	rst  $20                                         ; $5d39: $e7
	ld   d, [hl]                                     ; $5d3a: $56
	add  a                                           ; $5d3b: $87
	ld   b, c                                        ; $5d3c: $41
	ld   de, $1111                                   ; $5d3d: $11 $11 $11
	sbc  a                                           ; $5d40: $9f
	rst  $38                                         ; $5d41: $ff
	rst  $38                                         ; $5d42: $ff
	ld   h, c                                        ; $5d43: $61
	halt                                             ; $5d44: $76
	and  d                                           ; $5d45: $a2
	inc  d                                           ; $5d46: $14
	add  hl, de                                      ; $5d47: $19
	rst  $28                                         ; $5d48: $ef
	db   $fc                                         ; $5d49: $fc
	xor  b                                           ; $5d4a: $a8
	ld   b, [hl]                                     ; $5d4b: $46
	ld   d, a                                        ; $5d4c: $57
	ld   b, c                                        ; $5d4d: $41
	ld   l, c                                        ; $5d4e: $69
	rst  $38                                         ; $5d4f: $ff
	rst  $38                                         ; $5d50: $ff
	rst  ToBoot                                         ; $5d51: $c7
	ld   d, h                                        ; $5d52: $54
	ld   d, l                                        ; $5d53: $55
	ld   d, d                                        ; $5d54: $52
	ld   de, $1111                                   ; $5d55: $11 $11 $11
	rst  $38                                         ; $5d58: $ff
	rst  $38                                         ; $5d59: $ff
	db   $ec                                         ; $5d5a: $ec
	inc  de                                          ; $5d5b: $13
	adc  c                                           ; $5d5c: $89
	sub  c                                           ; $5d5d: $91
	ld   hl, $ff1c                                   ; $5d5e: $21 $1c $ff
	ei                                               ; $5d61: $fb
	sub  h                                           ; $5d62: $94
	dec  h                                           ; $5d63: $25
	ld   l, c                                        ; $5d64: $69
	ld   b, h                                        ; $5d65: $44
	ld   a, b                                        ; $5d66: $78
	rst  $38                                         ; $5d67: $ff
	rst  $38                                         ; $5d68: $ff
	and  a                                           ; $5d69: $a7
	inc  sp                                          ; $5d6a: $33
	ld   b, h                                        ; $5d6b: $44
	ld   d, c                                        ; $5d6c: $51
	ld   de, $1e11                                   ; $5d6d: $11 $11 $1e
	rst  $38                                         ; $5d70: $ff
	rst  $38                                         ; $5d71: $ff
	pop  bc                                          ; $5d72: $c1
	rla                                              ; $5d73: $17
	adc  l                                           ; $5d74: $8d
	ld   sp, $4e11                                   ; $5d75: $31 $11 $4e
	rst  $38                                         ; $5d78: $ff
	db   $fd                                         ; $5d79: $fd
	ld   [hl], c                                     ; $5d7a: $71
	inc  de                                          ; $5d7b: $13
	adc  c                                           ; $5d7c: $89
	ld   l, b                                        ; $5d7d: $68
	ld   a, d                                        ; $5d7e: $7a
	rst  $28                                         ; $5d7f: $ef
	rst  $38                                         ; $5d80: $ff
	or   a                                           ; $5d81: $b7
	ld   hl, $3112                                   ; $5d82: $21 $12 $31
	ld   de, $6f11                                   ; $5d85: $11 $11 $6f
	rst  $38                                         ; $5d88: $ff
	rst  $38                                         ; $5d89: $ff
	ld   hl, $e813                                   ; $5d8a: $21 $13 $e8
	ld   h, l                                        ; $5d8d: $65
	ld   de, $ff5f                                   ; $5d8e: $11 $5f $ff
	cp   $11                                         ; $5d91: $fe $11
	ld   [de], a                                     ; $5d93: $12
	xor  c                                           ; $5d94: $a9
	db   $eb                                         ; $5d95: $eb
	sbc  c                                           ; $5d96: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d97: $cf
	rst  $38                                         ; $5d98: $ff
	rst  $10                                         ; $5d99: $d7
	ld   de, $1111                                   ; $5d9a: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $5d9d: $11 $11 $ff
	rst  $38                                         ; $5da0: $ff
	cp   $11                                         ; $5da1: $fe $11
	inc  d                                           ; $5da3: $14
	cp   c                                           ; $5da4: $b9
	jp   Jump_0fa_6f11                               ; $5da5: $c3 $11 $6f


	rst  $38                                         ; $5da8: $ff
	db   $fc                                         ; $5da9: $fc
	ld   de, $6d11                                   ; $5daa: $11 $11 $6d
	rst  $38                                         ; $5dad: $ff
	ld   [$cebd], a                                  ; $5dae: $ea $bd $ce
	rst  $20                                         ; $5db1: $e7
	ld   b, c                                        ; $5db2: $41
	ld   de, $1111                                   ; $5db3: $11 $11 $11
	ld   d, $ff                                      ; $5db6: $16 $ff
	rst  $38                                         ; $5db8: $ff
	rst  $30                                         ; $5db9: $f7
	ld   de, $6915                                   ; $5dba: $11 $15 $69
	or   e                                           ; $5dbd: $b3
	inc  hl                                          ; $5dbe: $23
	xor  a                                           ; $5dbf: $af
	rst  $38                                         ; $5dc0: $ff
	ld   a, [$1111]                                  ; $5dc1: $fa $11 $11
	ld   c, [hl]                                     ; $5dc4: $4e
	rst  $38                                         ; $5dc5: $ff
	db   $fd                                         ; $5dc6: $fd
	jp   z, $c7ac                                    ; $5dc7: $ca $ac $c7

	ld   d, c                                        ; $5dca: $51
	ld   de, $1111                                   ; $5dcb: $11 $11 $11
	jr   @+$01                                       ; $5dce: $18 $ff

	rst  $38                                         ; $5dd0: $ff
	ld   hl, sp+$11                                  ; $5dd1: $f8 $11
	inc  d                                           ; $5dd3: $14
	ld   l, c                                        ; $5dd4: $69
	call nc, $9f44                                   ; $5dd5: $d4 $44 $9f
	rst  $38                                         ; $5dd8: $ff
	ld   a, [$1131]                                  ; $5dd9: $fa $31 $11
	ld   l, $ff                                      ; $5ddc: $2e $ff
	rst  $38                                         ; $5dde: $ff
	jp   z, $978a                                    ; $5ddf: $ca $8a $97

	ld   [hl], d                                     ; $5de2: $72
	ld   de, $1111                                   ; $5de3: $11 $11 $11
	rla                                              ; $5de6: $17
	rst  $38                                         ; $5de7: $ff
	rst  $38                                         ; $5de8: $ff
	ld   sp, hl                                      ; $5de9: $f9
	ld   de, $6814                                   ; $5dea: $11 $14 $68
	push hl                                          ; $5ded: $e5
	ld   b, h                                        ; $5dee: $44
	ld   a, l                                        ; $5def: $7d
	rst  $38                                         ; $5df0: $ff
	db   $fd                                         ; $5df1: $fd
	ld   d, c                                        ; $5df2: $51
	ld   de, $ff1b                                   ; $5df3: $11 $1b $ff
	rst  $38                                         ; $5df6: $ff
	ret                                              ; $5df7: $c9


	ld   a, b                                        ; $5df8: $78
	sub  a                                           ; $5df9: $97
	sub  h                                           ; $5dfa: $94
	ld   sp, $1111                                   ; $5dfb: $31 $11 $11
	ld   [de], a                                     ; $5dfe: $12
	rst  $38                                         ; $5dff: $ff
	rst  $38                                         ; $5e00: $ff
	rst  $38                                         ; $5e01: $ff
	ld   de, $8611                                   ; $5e02: $11 $11 $86
	ret  c                                           ; $5e05: $d8

	ld   b, h                                        ; $5e06: $44
	ld   e, d                                        ; $5e07: $5a
	rst  $38                                         ; $5e08: $ff
	rst  $38                                         ; $5e09: $ff
	ld   [hl], e                                     ; $5e0a: $73
	ld   de, $ff17                                   ; $5e0b: $11 $17 $ff
	rst  $38                                         ; $5e0e: $ff
	db   $eb                                         ; $5e0f: $eb
	halt                                             ; $5e10: $76
	sub  a                                           ; $5e11: $97
	sub  [hl]                                        ; $5e12: $96
	ld   b, d                                        ; $5e13: $42
	ld   de, $1111                                   ; $5e14: $11 $11 $11
	cp   a                                           ; $5e17: $bf
	rst  $38                                         ; $5e18: $ff
	rst  $38                                         ; $5e19: $ff
	ld   b, c                                        ; $5e1a: $41
	ld   de, $bd67                                   ; $5e1b: $11 $67 $bd
	ld   d, l                                        ; $5e1e: $55
	scf                                              ; $5e1f: $37
	rst  JumpTable                                         ; $5e20: $df
	rst  $38                                         ; $5e21: $ff
	add  $11                                         ; $5e22: $c6 $11
	ld   [de], a                                     ; $5e24: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e25: $cf
	rst  $38                                         ; $5e26: $ff
	db   $fc                                         ; $5e27: $fc
	ld   [hl], l                                     ; $5e28: $75
	ld   a, b                                        ; $5e29: $78
	adc  d                                           ; $5e2a: $8a
	ld   h, h                                        ; $5e2b: $64
	ld   de, $1111                                   ; $5e2c: $11 $11 $11
	rra                                              ; $5e2f: $1f
	rst  $38                                         ; $5e30: $ff
	rst  $38                                         ; $5e31: $ff
	pop  af                                          ; $5e32: $f1
	ld   de, $6d18                                   ; $5e33: $11 $18 $6d
	and  l                                           ; $5e36: $a5
	ld   d, h                                        ; $5e37: $54
	sbc  l                                           ; $5e38: $9d
	rst  $38                                         ; $5e39: $ff
	ld   a, [$1161]                                  ; $5e3a: $fa $61 $11
	ld   c, l                                        ; $5e3d: $4d
	rst  $38                                         ; $5e3e: $ff
	cp   $b7                                         ; $5e3f: $fe $b7
	ld   a, b                                        ; $5e41: $78
	adc  c                                           ; $5e42: $89
	sub  l                                           ; $5e43: $95
	ld   b, c                                        ; $5e44: $41
	ld   de, $1111                                   ; $5e45: $11 $11 $11
	sbc  a                                           ; $5e48: $9f
	rst  $38                                         ; $5e49: $ff
	rst  $38                                         ; $5e4a: $ff
	ld   h, c                                        ; $5e4b: $61
	ld   de, $cd65                                   ; $5e4c: $11 $65 $cd
	ld   [hl], a                                     ; $5e4f: $77
	dec  [hl]                                        ; $5e50: $35
	xor  l                                           ; $5e51: $ad
	rst  $38                                         ; $5e52: $ff
	reti                                             ; $5e53: $d9


	ld   hl, $af11                                   ; $5e54: $21 $11 $af
	rst  $38                                         ; $5e57: $ff
	ei                                               ; $5e58: $fb
	add  [hl]                                        ; $5e59: $86
	adc  c                                           ; $5e5a: $89
	sbc  e                                           ; $5e5b: $9b
	halt                                             ; $5e5c: $76
	ld   de, $1111                                   ; $5e5d: $11 $11 $11
	ld   de, $ffaf                                   ; $5e60: $11 $af $ff
	rst  $38                                         ; $5e63: $ff
	ld   d, c                                        ; $5e64: $51
	ld   de, $dd55                                   ; $5e65: $11 $55 $dd
	ld   [hl], a                                     ; $5e68: $77
	dec  [hl]                                        ; $5e69: $35
	adc  [hl]                                        ; $5e6a: $8e
	rst  $38                                         ; $5e6b: $ff
	jp   c, $1231                                    ; $5e6c: $da $31 $12

	xor  l                                           ; $5e6f: $ad
	rst  $38                                         ; $5e70: $ff
	db   $db                                         ; $5e71: $db
	add  a                                           ; $5e72: $87
	adc  c                                           ; $5e73: $89
	xor  e                                           ; $5e74: $ab
	add  a                                           ; $5e75: $87
	ld   [hl+], a                                    ; $5e76: $22
	ld   de, $1111                                   ; $5e77: $11 $11 $11
	adc  a                                           ; $5e7a: $8f
	rst  $38                                         ; $5e7b: $ff
	rst  $38                                         ; $5e7c: $ff
	ld   [hl], c                                     ; $5e7d: $71
	ld   de, $bd45                                   ; $5e7e: $11 $45 $bd
	ld   [hl], a                                     ; $5e81: $77
	dec  [hl]                                        ; $5e82: $35
	adc  l                                           ; $5e83: $8d
	rst  $38                                         ; $5e84: $ff
	db   $fc                                         ; $5e85: $fc
	ld   d, c                                        ; $5e86: $51
	ld   de, $ff8b                                   ; $5e87: $11 $8b $ff
	db   $ec                                         ; $5e8a: $ec
	sub  a                                           ; $5e8b: $97
	adc  d                                           ; $5e8c: $8a
	xor  e                                           ; $5e8d: $ab
	xor  b                                           ; $5e8e: $a8
	ld   b, d                                        ; $5e8f: $42
	ld   de, $1111                                   ; $5e90: $11 $11 $11
	ld   l, $ff                                      ; $5e93: $2e $ff
	rst  $38                                         ; $5e95: $ff
	pop  af                                          ; $5e96: $f1
	ld   de, $7e15                                   ; $5e97: $11 $15 $7e
	xor  b                                           ; $5e9a: $a8
	ld   d, h                                        ; $5e9b: $54
	ld   l, d                                        ; $5e9c: $6a
	rst  $38                                         ; $5e9d: $ff
	db   $fd                                         ; $5e9e: $fd
	or   d                                           ; $5e9f: $b2
	ld   de, $bf39                                   ; $5ea0: $11 $39 $bf
	db   $fd                                         ; $5ea3: $fd
	xor  b                                           ; $5ea4: $a8
	adc  c                                           ; $5ea5: $89
	xor  h                                           ; $5ea6: $ac
	cp   d                                           ; $5ea7: $ba
	ld   h, d                                        ; $5ea8: $62
	ld   de, $1111                                   ; $5ea9: $11 $11 $11
	rla                                              ; $5eac: $17
	rst  $38                                         ; $5ead: $ff
	rst  $38                                         ; $5eae: $ff
	ld   a, [$1111]                                  ; $5eaf: $fa $11 $11
	ld   c, c                                        ; $5eb2: $49
	add  sp, -$7b                                    ; $5eb3: $e8 $85
	ld   b, a                                        ; $5eb5: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5eb6: $cf
	rst  $38                                         ; $5eb7: $ff
	ld   hl, sp+$11                                  ; $5eb8: $f8 $11
	inc  de                                          ; $5eba: $13
	ld   a, h                                        ; $5ebb: $7c
	rst  $38                                         ; $5ebc: $ff
	jp   c, $9b8a                                    ; $5ebd: $da $8a $9b

	jp   c, $2185                                    ; $5ec0: $da $85 $21

	ld   de, $1111                                   ; $5ec3: $11 $11 $11
	sbc  a                                           ; $5ec6: $9f
	rst  $38                                         ; $5ec7: $ff
	rst  $38                                         ; $5ec8: $ff
	ld   [hl], c                                     ; $5ec9: $71
	ld   de, $ad24                                   ; $5eca: $11 $24 $ad
	sbc  b                                           ; $5ecd: $98
	ld   d, l                                        ; $5ece: $55
	ld   a, l                                        ; $5ecf: $7d
	rst  $38                                         ; $5ed0: $ff
	db   $fd                                         ; $5ed1: $fd
	ld   [hl], c                                     ; $5ed2: $71
	ld   de, $cf48                                   ; $5ed3: $11 $48 $cf
	cp   $b9                                         ; $5ed6: $fe $b9
	xor  c                                           ; $5ed8: $a9
	xor  h                                           ; $5ed9: $ac
	xor  c                                           ; $5eda: $a9
	ld   d, d                                        ; $5edb: $52
	ld   de, $1111                                   ; $5edc: $11 $11 $11
	add  hl, de                                      ; $5edf: $19
	rst  $38                                         ; $5ee0: $ff
	rst  $38                                         ; $5ee1: $ff
	ld   hl, sp+$11                                  ; $5ee2: $f8 $11
	ld   [de], a                                     ; $5ee4: $12
	ld   c, e                                        ; $5ee5: $4b
	jp   hl                                          ; $5ee6: $e9


	sub  [hl]                                        ; $5ee7: $96
	ld   d, a                                        ; $5ee8: $57
	cp   a                                           ; $5ee9: $bf
	rst  $38                                         ; $5eea: $ff
	ld   sp, hl                                      ; $5eeb: $f9
	ld   de, $7b13                                   ; $5eec: $11 $13 $7b
	rst  $38                                         ; $5eef: $ff
	db   $ec                                         ; $5ef0: $ec
	sbc  c                                           ; $5ef1: $99
	sbc  c                                           ; $5ef2: $99
	ret                                              ; $5ef3: $c9


	and  [hl]                                        ; $5ef4: $a6
	ld   b, d                                        ; $5ef5: $42
	ld   de, $1111                                   ; $5ef6: $11 $11 $11
	ld   l, a                                        ; $5ef9: $6f
	rst  $38                                         ; $5efa: $ff
	rst  $38                                         ; $5efb: $ff
	pop  bc                                          ; $5efc: $c1
	ld   de, $8e14                                   ; $5efd: $11 $14 $8e
	sbc  d                                           ; $5f00: $9a
	ld   h, h                                        ; $5f01: $64
	ld   e, c                                        ; $5f02: $59
	rst  $28                                         ; $5f03: $ef
	rst  $38                                         ; $5f04: $ff
	jp   $1511                                       ; $5f05: $c3 $11 $15


	xor  a                                           ; $5f08: $af
	rst  $38                                         ; $5f09: $ff
	ret                                              ; $5f0a: $c9


	sbc  b                                           ; $5f0b: $98
	sbc  e                                           ; $5f0c: $9b
	cp   e                                           ; $5f0d: $bb
	sub  l                                           ; $5f0e: $95
	ld   sp, $1111                                   ; $5f0f: $31 $11 $11
	ld   de, $ff9f                                   ; $5f12: $11 $9f $ff
	rst  $38                                         ; $5f15: $ff
	ld   [hl], c                                     ; $5f16: $71
	ld   de, $bc24                                   ; $5f17: $11 $24 $bc
	sbc  d                                           ; $5f1a: $9a
	ld   h, l                                        ; $5f1b: $65
	ld   a, e                                        ; $5f1c: $7b
	rst  $28                                         ; $5f1d: $ef
	rst  $38                                         ; $5f1e: $ff
	and  e                                           ; $5f1f: $a3
	ld   de, $bf25                                   ; $5f20: $11 $25 $bf
	cp   $da                                         ; $5f23: $fe $da
	sbc  c                                           ; $5f25: $99
	xor  h                                           ; $5f26: $ac
	xor  d                                           ; $5f27: $aa
	ld   [hl], l                                     ; $5f28: $75
	ld   sp, $1111                                   ; $5f29: $31 $11 $11
	ld   de, $ff9f                                   ; $5f2c: $11 $9f $ff
	rst  $38                                         ; $5f2f: $ff
	ld   [hl], d                                     ; $5f30: $72
	ld   de, $bd24                                   ; $5f31: $11 $24 $bd
	sbc  d                                           ; $5f34: $9a
	ld   h, l                                        ; $5f35: $65
	ld   l, c                                        ; $5f36: $69
	rst  JumpTable                                         ; $5f37: $df
	rst  $38                                         ; $5f38: $ff
	sub  h                                           ; $5f39: $94
	ld   de, $9f24                                   ; $5f3a: $11 $24 $9f
	rst  $38                                         ; $5f3d: $ff
	db   $db                                         ; $5f3e: $db
	xor  b                                           ; $5f3f: $a8
	sbc  d                                           ; $5f40: $9a
	xor  e                                           ; $5f41: $ab
	add  [hl]                                        ; $5f42: $86
	ld   b, d                                        ; $5f43: $42
	ld   hl, $1111                                   ; $5f44: $21 $11 $11
	ld   c, l                                        ; $5f47: $4d
	rst  $38                                         ; $5f48: $ff
	rst  $38                                         ; $5f49: $ff
	pop  de                                          ; $5f4a: $d1
	ld   de, $9f12                                   ; $5f4b: $11 $12 $9f
	xor  $a6                                         ; $5f4e: $ee $a6
	ld   b, l                                        ; $5f50: $45
	ld   a, e                                        ; $5f51: $7b
	call Call_0fa_51c6                               ; $5f52: $cd $c6 $51
	ld   [hl], $9f                                   ; $5f55: $36 $9f
	rst  $38                                         ; $5f57: $ff
	jp   c, Jump_0fa_6975                            ; $5f58: $da $75 $69

	sbc  h                                           ; $5f5b: $9c
	cp   d                                           ; $5f5c: $ba
	sub  l                                           ; $5f5d: $95
	ld   b, c                                        ; $5f5e: $41
	ld   de, $1911                                   ; $5f5f: $11 $11 $19
	rst  $38                                         ; $5f62: $ff
	rst  $38                                         ; $5f63: $ff
	db   $f4                                         ; $5f64: $f4
	ld   de, $7e13                                   ; $5f65: $11 $13 $7e
	rst  $38                                         ; $5f68: $ff
	add  sp, $54                                     ; $5f69: $e8 $54
	ld   l, b                                        ; $5f6b: $68
	xor  h                                           ; $5f6c: $ac
	reti                                             ; $5f6d: $d9


	ld   h, l                                        ; $5f6e: $65
	dec  [hl]                                        ; $5f6f: $35
	ld   l, e                                        ; $5f70: $6b
	rst  $28                                         ; $5f71: $ef
	db   $fc                                         ; $5f72: $fc
	sub  a                                           ; $5f73: $97
	ld   h, [hl]                                     ; $5f74: $66
	adc  c                                           ; $5f75: $89
	cp   e                                           ; $5f76: $bb
	and  a                                           ; $5f77: $a7
	ld   d, e                                        ; $5f78: $53
	ld   de, $1611                                   ; $5f79: $11 $11 $16
	rst  $28                                         ; $5f7c: $ef
	rst  $38                                         ; $5f7d: $ff
	ld   sp, hl                                      ; $5f7e: $f9
	ld   de, $5c11                                   ; $5f7f: $11 $11 $5c
	rst  $38                                         ; $5f82: $ff
	ei                                               ; $5f83: $fb
	ld   h, h                                        ; $5f84: $64
	ld   d, a                                        ; $5f85: $57
	xor  e                                           ; $5f86: $ab
	bit  4, l                                        ; $5f87: $cb $65
	inc  hl                                          ; $5f89: $23
	ld   e, c                                        ; $5f8a: $59
	rst  $38                                         ; $5f8b: $ff
	cp   $a7                                         ; $5f8c: $fe $a7
	ld   h, l                                        ; $5f8e: $65
	ld   a, b                                        ; $5f8f: $78
	xor  h                                           ; $5f90: $ac
	xor  c                                           ; $5f91: $a9
	ld   h, h                                        ; $5f92: $64
	ld   de, $1111                                   ; $5f93: $11 $11 $11
	adc  [hl]                                        ; $5f96: $8e
	rst  $38                                         ; $5f97: $ff
	rst  $38                                         ; $5f98: $ff
	ld   h, c                                        ; $5f99: $61
	ld   de, $df25                                   ; $5f9a: $11 $25 $df
	rst  $38                                         ; $5f9d: $ff
	sub  [hl]                                        ; $5f9e: $96
	ld   b, l                                        ; $5f9f: $45
	ld   l, c                                        ; $5fa0: $69
	xor  l                                           ; $5fa1: $ad
	and  [hl]                                        ; $5fa2: $a6
	ld   h, d                                        ; $5fa3: $62
	ld   b, l                                        ; $5fa4: $45
	xor  a                                           ; $5fa5: $af
	rst  $38                                         ; $5fa6: $ff
	jp   c, Jump_0fa_4764                            ; $5fa7: $da $64 $47

	adc  h                                           ; $5faa: $8c
	res  2, [hl]                                     ; $5fab: $cb $96
	ld   b, d                                        ; $5fad: $42
	ld   de, $1311                                   ; $5fae: $11 $11 $13
	cp   a                                           ; $5fb1: $bf
	rst  $38                                         ; $5fb2: $ff
	db   $fd                                         ; $5fb3: $fd
	ld   sp, $1711                                   ; $5fb4: $31 $11 $17
	rst  $38                                         ; $5fb7: $ff
	db   $fd                                         ; $5fb8: $fd
	sub  h                                           ; $5fb9: $94
	ld   b, h                                        ; $5fba: $44
	ld   l, d                                        ; $5fbb: $6a
	call Call_0fa_4398                               ; $5fbc: $cd $98 $43
	ld   b, a                                        ; $5fbf: $47
	rst  JumpTable                                         ; $5fc0: $df
	rst  $38                                         ; $5fc1: $ff
	rst  ToBoot                                         ; $5fc2: $c7
	ld   d, e                                        ; $5fc3: $53
	ld   h, a                                        ; $5fc4: $67
	cp   [hl]                                        ; $5fc5: $be
	bit  6, l                                        ; $5fc6: $cb $75
	ld   hl, $1111                                   ; $5fc8: $21 $11 $11
	inc  de                                          ; $5fcb: $13
	xor  a                                           ; $5fcc: $af
	rst  $38                                         ; $5fcd: $ff
	db   $fd                                         ; $5fce: $fd
	ld   b, c                                        ; $5fcf: $41
	ld   de, $ef17                                   ; $5fd0: $11 $17 $ef
	cp   $a4                                         ; $5fd3: $fe $a4
	ld   b, e                                        ; $5fd5: $43
	ld   l, b                                        ; $5fd6: $68
	call Call_0fa_5499                               ; $5fd7: $cd $99 $54
	ld   b, a                                        ; $5fda: $47
	rst  JumpTable                                         ; $5fdb: $df
	rst  $38                                         ; $5fdc: $ff
	rst  ToBoot                                         ; $5fdd: $c7
	ld   d, h                                        ; $5fde: $54
	ld   h, a                                        ; $5fdf: $67
	cp   [hl]                                        ; $5fe0: $be
	call z, $3285                                    ; $5fe1: $cc $85 $32
	ld   hl, $1111                                   ; $5fe4: $21 $11 $11
	ld   a, h                                        ; $5fe7: $7c
	rst  $38                                         ; $5fe8: $ff
	rst  $38                                         ; $5fe9: $ff
	ld   [hl], d                                     ; $5fea: $72
	ld   de, $df13                                   ; $5feb: $11 $13 $df
	rst  $38                                         ; $5fee: $ff
	or   [hl]                                        ; $5fef: $b6
	ld   [hl-], a                                    ; $5ff0: $32
	ld   c, b                                        ; $5ff1: $48
	xor  a                                           ; $5ff2: $af
	cp   d                                           ; $5ff3: $ba
	add  h                                           ; $5ff4: $84
	ld   b, l                                        ; $5ff5: $45
	xor  h                                           ; $5ff6: $ac
	rst  $28                                         ; $5ff7: $ef
	reti                                             ; $5ff8: $d9


jr_0fa_5ff9:
	ld   h, h                                        ; $5ff9: $64
	ld   d, [hl]                                     ; $5ffa: $56
	sbc  h                                           ; $5ffb: $9c
	call Call_0fa_53a7                               ; $5ffc: $cd $a7 $53
	inc  sp                                          ; $5fff: $33
	ld   hl, $1611                                   ; $6000: $21 $11 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6003: $cf
	rst  $38                                         ; $6004: $ff
	rst  $30                                         ; $6005: $f7
	ld   hl, $3d11                                   ; $6006: $21 $11 $3d
	rst  $38                                         ; $6009: $ff
	ei                                               ; $600a: $fb
	ld   h, d                                        ; $600b: $62
	inc  hl                                          ; $600c: $23
	adc  e                                           ; $600d: $8b
	db   $fd                                         ; $600e: $fd
	cp   b                                           ; $600f: $b8
	inc  sp                                          ; $6010: $33
	jr   c, @-$2f                                    ; $6011: $38 $cf

	rst  $38                                         ; $6013: $ff
	or   a                                           ; $6014: $b7
	ld   b, h                                        ; $6015: $44
	ld   e, c                                        ; $6016: $59
	db   $dd                                         ; $6017: $dd
	db   $eb                                         ; $6018: $eb
	ld   [hl], l                                     ; $6019: $75
	ld   [hl+], a                                    ; $601a: $22
	ld   [hl+], a                                    ; $601b: $22
	ld   de, $6b11                                   ; $601c: $11 $11 $6b
	rst  $38                                         ; $601f: $ff
	rst  $38                                         ; $6020: $ff
	add  e                                           ; $6021: $83
	ld   de, $df12                                   ; $6022: $11 $12 $df
	rst  $38                                         ; $6025: $ff
	add  $32                                         ; $6026: $c6 $32
	jr   c, jr_0fa_5ff9                              ; $6028: $38 $cf

	db   $eb                                         ; $602a: $eb
	add  e                                           ; $602b: $83
	ld   [hl-], a                                    ; $602c: $32
	ld   a, h                                        ; $602d: $7c
	rst  $38                                         ; $602e: $ff
	ei                                               ; $602f: $fb
	ld   [hl], h                                     ; $6030: $74
	dec  [hl]                                        ; $6031: $35
	ld   a, h                                        ; $6032: $7c
	sbc  $c8                                         ; $6033: $de $c8
	ld   d, e                                        ; $6035: $53
	inc  sp                                          ; $6036: $33
	ld   hl, $1411                                   ; $6037: $21 $11 $14
	cp   a                                           ; $603a: $bf
	rst  $38                                         ; $603b: $ff
	ei                                               ; $603c: $fb
	ld   sp, $1a11                                   ; $603d: $31 $11 $1a
	rst  $38                                         ; $6040: $ff
	cp   $93                                         ; $6041: $fe $93
	ld   [hl+], a                                    ; $6043: $22
	ld   a, e                                        ; $6044: $7b
	rst  $38                                         ; $6045: $ff
	cp   c                                           ; $6046: $b9
	ld   b, e                                        ; $6047: $43
	ld   [hl], $bf                                   ; $6048: $36 $bf
	rst  $38                                         ; $604a: $ff
	ret  z                                           ; $604b: $c8

	ld   b, e                                        ; $604c: $43
	ld   b, [hl]                                     ; $604d: $46
	cp   [hl]                                        ; $604e: $be
	db   $ec                                         ; $604f: $ec
	sub  [hl]                                        ; $6050: $96
	ld   b, e                                        ; $6051: $43
	inc  sp                                          ; $6052: $33
	ld   hl, $1711                                   ; $6053: $21 $11 $17
	rst  JumpTable                                         ; $6056: $df
	rst  $38                                         ; $6057: $ff
	push af                                          ; $6058: $f5
	ld   de, $4f11                                   ; $6059: $11 $11 $4f
	rst  $38                                         ; $605c: $ff
	ei                                               ; $605d: $fb
	ld   d, d                                        ; $605e: $52
	inc  h                                           ; $605f: $24
	adc  h                                           ; $6060: $8c
	ei                                               ; $6061: $fb
	and  a                                           ; $6062: $a7
	inc  sp                                          ; $6063: $33
	ld   c, c                                        ; $6064: $49
	rst  JumpTable                                         ; $6065: $df
	rst  $38                                         ; $6066: $ff
	and  [hl]                                        ; $6067: $a6
	inc  sp                                          ; $6068: $33
	ld   e, b                                        ; $6069: $58
	call $86eb                                       ; $606a: $cd $eb $86
	ld   b, h                                        ; $606d: $44
	ld   b, h                                        ; $606e: $44
	ld   hl, $1911                                   ; $606f: $21 $11 $19
	rst  $38                                         ; $6072: $ff
	rst  $38                                         ; $6073: $ff
	db   $e3                                         ; $6074: $e3
	ld   de, $7f11                                   ; $6075: $11 $11 $7f
	rst  $38                                         ; $6078: $ff
	ld   a, [$1542]                                  ; $6079: $fa $42 $15
	sbc  l                                           ; $607c: $9d
	ei                                               ; $607d: $fb
	or   l                                           ; $607e: $b5
	inc  sp                                          ; $607f: $33
	ld   e, d                                        ; $6080: $5a
	rst  JumpTable                                         ; $6081: $df
	db   $fd                                         ; $6082: $fd
	add  l                                           ; $6083: $85
	inc  hl                                          ; $6084: $23
	ld   l, d                                        ; $6085: $6a
	sbc  $eb                                         ; $6086: $de $eb
	add  l                                           ; $6088: $85
	ld   b, h                                        ; $6089: $44
	ld   d, h                                        ; $608a: $54
	ld   hl, $1811                                   ; $608b: $21 $11 $18
	rst  $28                                         ; $608e: $ef
	rst  $38                                         ; $608f: $ff
	di                                               ; $6090: $f3
	ld   de, $7f11                                   ; $6091: $11 $11 $7f
	rst  $38                                         ; $6094: $ff
	ld   a, [$1442]                                  ; $6095: $fa $42 $14
	sbc  l                                           ; $6098: $9d
	ei                                               ; $6099: $fb
	and  [hl]                                        ; $609a: $a6
	inc  sp                                          ; $609b: $33
	ld   e, e                                        ; $609c: $5b
	rst  JumpTable                                         ; $609d: $df
	db   $fc                                         ; $609e: $fc
	add  l                                           ; $609f: $85
	inc  hl                                          ; $60a0: $23
	ld   e, c                                        ; $60a1: $59
	db   $dd                                         ; $60a2: $dd
	db   $ec                                         ; $60a3: $ec
	sub  [hl]                                        ; $60a4: $96
	ld   b, l                                        ; $60a5: $45
	ld   d, [hl]                                     ; $60a6: $56
	ld   d, d                                        ; $60a7: $52
	ld   de, $8f11                                   ; $60a8: $11 $11 $8f
	rst  $38                                         ; $60ab: $ff
	db   $fd                                         ; $60ac: $fd
	ld   hl, $1811                                   ; $60ad: $21 $11 $18
	rst  $38                                         ; $60b0: $ff
	rst  $38                                         ; $60b1: $ff
	sub  e                                           ; $60b2: $93
	ld   de, $df5a                                   ; $60b3: $11 $5a $df
	cp   d                                           ; $60b6: $ba
	ld   d, e                                        ; $60b7: $53
	ld   b, [hl]                                     ; $60b8: $46
	cp   l                                           ; $60b9: $bd
	rst  $38                                         ; $60ba: $ff
	or   a                                           ; $60bb: $b7
	ld   b, d                                        ; $60bc: $42
	dec  [hl]                                        ; $60bd: $35
	xor  l                                           ; $60be: $ad
	cp   $c9                                         ; $60bf: $fe $c9
	ld   h, h                                        ; $60c1: $64
	ld   d, [hl]                                     ; $60c2: $56
	ld   h, [hl]                                     ; $60c3: $66
	ld   sp, $1611                                   ; $60c4: $31 $11 $16
	rst  JumpTable                                         ; $60c7: $df
	rst  $38                                         ; $60c8: $ff
	db   $f4                                         ; $60c9: $f4
	ld   de, $4f11                                   ; $60ca: $11 $11 $4f
	rst  $38                                         ; $60cd: $ff
	ei                                               ; $60ce: $fb
	ld   d, c                                        ; $60cf: $51
	ld   [de], a                                     ; $60d0: $12
	adc  e                                           ; $60d1: $8b
	db   $fc                                         ; $60d2: $fc
	cp   b                                           ; $60d3: $b8
	inc  [hl]                                        ; $60d4: $34
	ld   c, c                                        ; $60d5: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60d6: $cf
	db   $fd                                         ; $60d7: $fd
	add  l                                           ; $60d8: $85
	ld   hl, $df48                                   ; $60d9: $21 $48 $df
	cp   $b7                                         ; $60dc: $fe $b7
	ld   b, h                                        ; $60de: $44
	ld   d, [hl]                                     ; $60df: $56
	halt                                             ; $60e0: $76
	ld   sp, $1611                                   ; $60e1: $31 $11 $16
	rst  JumpTable                                         ; $60e4: $df
	rst  $38                                         ; $60e5: $ff
	db   $f4                                         ; $60e6: $f4
	ld   de, $5f11                                   ; $60e7: $11 $11 $5f
	rst  $38                                         ; $60ea: $ff
	ei                                               ; $60eb: $fb
	ld   b, c                                        ; $60ec: $41
	ld   [de], a                                     ; $60ed: $12
	ld   a, e                                        ; $60ee: $7b
	db   $fd                                         ; $60ef: $fd
	cp   b                                           ; $60f0: $b8
	inc  [hl]                                        ; $60f1: $34
	ld   c, c                                        ; $60f2: $49
	rst  JumpTable                                         ; $60f3: $df
	db   $fd                                         ; $60f4: $fd
	add  h                                           ; $60f5: $84
	ld   de, $ef49                                   ; $60f6: $11 $49 $ef
	cp   $b6                                         ; $60f9: $fe $b6
	inc  sp                                          ; $60fb: $33
	ld   b, a                                        ; $60fc: $47
	adc  c                                           ; $60fd: $89
	ld   h, d                                        ; $60fe: $62
	ld   de, $af11                                   ; $60ff: $11 $11 $af
	rst  $38                                         ; $6102: $ff
	db   $fc                                         ; $6103: $fc
	ld   de, $2b11                                   ; $6104: $11 $11 $2b
	rst  $38                                         ; $6107: $ff
	cp   $71                                         ; $6108: $fe $71
	ld   de, $ef4a                                   ; $610a: $11 $4a $ef
	jp   z, Jump_0fa_4753                            ; $610d: $ca $53 $47

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6110: $cf
	rst  $38                                         ; $6111: $ff
	and  l                                           ; $6112: $a5
	ld   hl, $cf37                                   ; $6113: $21 $37 $cf
	rst  $38                                         ; $6116: $ff
	rst  ToBoot                                         ; $6117: $c7
	ld   b, d                                        ; $6118: $42
	ld   [hl], $8a                                   ; $6119: $36 $8a
	sub  [hl]                                        ; $611b: $96
	ld   hl, $1a11                                   ; $611c: $21 $11 $1a
	rst  $38                                         ; $611f: $ff
	rst  $38                                         ; $6120: $ff
	pop  de                                          ; $6121: $d1
	ld   de, $af13                                   ; $6122: $11 $13 $af
	rst  $38                                         ; $6125: $ff
	or   $11                                         ; $6126: $f6 $11
	inc  d                                           ; $6128: $14
	cp   [hl]                                        ; $6129: $be
	db   $fc                                         ; $612a: $fc
	and  [hl]                                        ; $612b: $a6
	inc  [hl]                                        ; $612c: $34
	ld   l, e                                        ; $612d: $6b
	rst  $28                                         ; $612e: $ef
	ld   [$1363], a                                  ; $612f: $ea $63 $13
	ld   a, h                                        ; $6132: $7c
	rst  $38                                         ; $6133: $ff
	db   $fc                                         ; $6134: $fc
	ld   [hl], h                                     ; $6135: $74
	inc  [hl]                                        ; $6136: $34
	ld   l, c                                        ; $6137: $69
	cp   e                                           ; $6138: $bb
	add  h                                           ; $6139: $84
	ld   de, $3d11                                   ; $613a: $11 $11 $3d
	rst  $38                                         ; $613d: $ff
	rst  $38                                         ; $613e: $ff
	sub  c                                           ; $613f: $91
	ld   de, $df15                                   ; $6140: $11 $15 $df
	rst  $38                                         ; $6143: $ff
	or   l                                           ; $6144: $b5
	ld   de, $ce26                                   ; $6145: $11 $26 $ce
	ei                                               ; $6148: $fb
	add  l                                           ; $6149: $85
	dec  [hl]                                        ; $614a: $35
	adc  h                                           ; $614b: $8c
	rst  $28                                         ; $614c: $ef
	reti                                             ; $614d: $d9


	ld   d, e                                        ; $614e: $53
	inc  h                                           ; $614f: $24
	ld   a, e                                        ; $6150: $7b
	rst  $28                                         ; $6151: $ef
	db   $eb                                         ; $6152: $eb
	add  l                                           ; $6153: $85
	ld   b, l                                        ; $6154: $45
	adc  d                                           ; $6155: $8a
	jp   z, $1184                                    ; $6156: $ca $84 $11

	ld   de, $ff1a                                   ; $6159: $11 $1a $ff
	rst  $38                                         ; $615c: $ff
	di                                               ; $615d: $f3
	ld   de, $7f12                                   ; $615e: $11 $12 $7f
	rst  $38                                         ; $6161: $ff
	ld   sp, hl                                      ; $6162: $f9
	ld   b, d                                        ; $6163: $42
	inc  hl                                          ; $6164: $23
	adc  d                                           ; $6165: $8a
	call c, Call_0fa_4588                            ; $6166: $dc $88 $45
	ld   a, d                                        ; $6169: $7a
	sbc  $db                                         ; $616a: $de $db
	ld   h, h                                        ; $616c: $64
	ld   [hl+], a                                    ; $616d: $22
	ld   e, b                                        ; $616e: $58
	adc  $ed                                         ; $616f: $ce $ed
	or   a                                           ; $6171: $b7
	ld   h, l                                        ; $6172: $65
	ld   l, c                                        ; $6173: $69
	xor  d                                           ; $6174: $aa
	xor  b                                           ; $6175: $a8
	ld   b, c                                        ; $6176: $41
	ld   de, $5e11                                   ; $6177: $11 $11 $5e
	rst  $38                                         ; $617a: $ff
	rst  $38                                         ; $617b: $ff
	add  c                                           ; $617c: $81
	ld   de, $bf15                                   ; $617d: $11 $15 $bf
	rst  $38                                         ; $6180: $ff
	or   a                                           ; $6181: $b7
	ld   [hl-], a                                    ; $6182: $32
	dec  h                                           ; $6183: $25
	sbc  e                                           ; $6184: $9b
	jp   c, Jump_0fa_5796                            ; $6185: $da $96 $57

	adc  e                                           ; $6188: $8b
	db   $dd                                         ; $6189: $dd
	cp   b                                           ; $618a: $b8
	ld   d, e                                        ; $618b: $53
	inc  h                                           ; $618c: $24
	ld   a, e                                        ; $618d: $7b
	sbc  $eb                                         ; $618e: $de $eb
	sub  a                                           ; $6190: $97
	ld   d, l                                        ; $6191: $55
	ld   a, c                                        ; $6192: $79
	xor  e                                           ; $6193: $ab
	sub  a                                           ; $6194: $97
	ld   sp, $1111                                   ; $6195: $31 $11 $11
	ld   a, [hl]                                     ; $6198: $7e
	rst  $38                                         ; $6199: $ff
	rst  $38                                         ; $619a: $ff
	add  c                                           ; $619b: $81
	ld   de, $bf15                                   ; $619c: $11 $15 $bf
	rst  $38                                         ; $619f: $ff
	or   a                                           ; $61a0: $b7
	ld   b, e                                        ; $61a1: $43
	dec  h                                           ; $61a2: $25
	sbc  d                                           ; $61a3: $9a
	ret                                              ; $61a4: $c9


	sub  a                                           ; $61a5: $97
	ld   l, c                                        ; $61a6: $69
	sbc  h                                           ; $61a7: $9c
	call c, Call_0fa_54a7                            ; $61a8: $dc $a7 $54
	dec  [hl]                                        ; $61ab: $35
	ld   a, e                                        ; $61ac: $7b
	call $97eb                                       ; $61ad: $cd $eb $97
	ld   h, [hl]                                     ; $61b0: $66
	adc  c                                           ; $61b1: $89
	cp   e                                           ; $61b2: $bb
	and  a                                           ; $61b3: $a7
	ld   b, c                                        ; $61b4: $41
	ld   de, $2b11                                   ; $61b5: $11 $11 $2b
	rst  $38                                         ; $61b8: $ff
	rst  $38                                         ; $61b9: $ff
	db   $e3                                         ; $61ba: $e3
	ld   de, $7f14                                   ; $61bb: $11 $14 $7f
	rst  $38                                         ; $61be: $ff
	jp   hl                                          ; $61bf: $e9


	ld   h, e                                        ; $61c0: $63
	inc  sp                                          ; $61c1: $33
	adc  c                                           ; $61c2: $89
	res  3, c                                        ; $61c3: $cb $99
	ld   l, b                                        ; $61c5: $68
	sbc  c                                           ; $61c6: $99
	cp   h                                           ; $61c7: $bc
	ret                                              ; $61c8: $c9


	ld   h, l                                        ; $61c9: $65
	inc  [hl]                                        ; $61ca: $34
	ld   l, b                                        ; $61cb: $68
	call z, $a9dc                                    ; $61cc: $cc $dc $a9
	halt                                             ; $61cf: $76
	adc  d                                           ; $61d0: $8a
	cp   e                                           ; $61d1: $bb
	xor  c                                           ; $61d2: $a9
	ld   h, e                                        ; $61d3: $63
	ld   de, $1311                                   ; $61d4: $11 $11 $13
	rst  JumpTable                                         ; $61d7: $df
	rst  $38                                         ; $61d8: $ff
	db   $fd                                         ; $61d9: $fd
	ld   hl, $4711                                   ; $61da: $21 $11 $47
	rst  $28                                         ; $61dd: $ef
	rst  $38                                         ; $61de: $ff
	and  [hl]                                        ; $61df: $a6
	ld   [hl-], a                                    ; $61e0: $32
	daa                                              ; $61e1: $27
	ld   a, e                                        ; $61e2: $7b
	cp   e                                           ; $61e3: $bb
	or   a                                           ; $61e4: $b7
	sbc  c                                           ; $61e5: $99
	sbc  e                                           ; $61e6: $9b
	cp   d                                           ; $61e7: $ba
	sub  a                                           ; $61e8: $97
	ld   h, h                                        ; $61e9: $64
	ld   d, [hl]                                     ; $61ea: $56
	sbc  d                                           ; $61eb: $9a
	call $98db                                       ; $61ec: $cd $db $98
	ld   [hl], a                                     ; $61ef: $77
	sbc  d                                           ; $61f0: $9a
	xor  d                                           ; $61f1: $aa
	sub  [hl]                                        ; $61f2: $96
	ld   sp, $1111                                   ; $61f3: $31 $11 $11
	ld   c, h                                        ; $61f6: $4c
	rst  $38                                         ; $61f7: $ff
	rst  $38                                         ; $61f8: $ff
	or   c                                           ; $61f9: $b1
	ld   de, $9f15                                   ; $61fa: $11 $15 $9f
	rst  $38                                         ; $61fd: $ff
	jp   hl                                          ; $61fe: $e9


	ld   d, e                                        ; $61ff: $53
	inc  hl                                          ; $6200: $23
	ld   a, b                                        ; $6201: $78
	res  5, c                                        ; $6202: $cb $a9
	ld   a, b                                        ; $6204: $78
	adc  d                                           ; $6205: $8a
	cp   h                                           ; $6206: $bc
	cp   c                                           ; $6207: $b9
	ld   [hl], l                                     ; $6208: $75
	ld   b, h                                        ; $6209: $44
	ld   l, b                                        ; $620a: $68
	cp   l                                           ; $620b: $bd
	db   $ed                                         ; $620c: $ed
	ret                                              ; $620d: $c9


	halt                                             ; $620e: $76
	ld   a, b                                        ; $620f: $78
	sbc  d                                           ; $6210: $9a
	xor  c                                           ; $6211: $a9
	ld   h, h                                        ; $6212: $64
	ld   de, $1411                                   ; $6213: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6216: $cf
	rst  $38                                         ; $6217: $ff
	db   $fc                                         ; $6218: $fc
	ld   hl, $5811                                   ; $6219: $21 $11 $58
	rst  $38                                         ; $621c: $ff
	cp   $95                                         ; $621d: $fe $95
	ld   [hl-], a                                    ; $621f: $32
	scf                                              ; $6220: $37
	sbc  e                                           ; $6221: $9b
	cp   d                                           ; $6222: $ba
	and  a                                           ; $6223: $a7
	adc  b                                           ; $6224: $88
	sbc  e                                           ; $6225: $9b
	res  2, [hl]                                     ; $6226: $cb $96
	ld   d, e                                        ; $6228: $53
	ld   [hl], $8b                                   ; $6229: $36 $8b
	db   $ed                                         ; $622b: $ed
	call c, $6797                                    ; $622c: $dc $97 $67
	adc  c                                           ; $622f: $89
	cp   e                                           ; $6230: $bb
	and  a                                           ; $6231: $a7
	ld   b, c                                        ; $6232: $41
	ld   de, $2b11                                   ; $6233: $11 $11 $2b
	rst  $38                                         ; $6236: $ff
	rst  $38                                         ; $6237: $ff
	call nc, $1411                                   ; $6238: $d4 $11 $14
	ld   a, h                                        ; $623b: $7c
	rst  $38                                         ; $623c: $ff
	ld   a, [$2263]                                  ; $623d: $fa $63 $22
	ld   h, a                                        ; $6240: $67
	cp   h                                           ; $6241: $bc
	xor  d                                           ; $6242: $aa
	adc  b                                           ; $6243: $88
	sbc  b                                           ; $6244: $98
	xor  e                                           ; $6245: $ab
	cp   d                                           ; $6246: $ba
	ld   [hl], l                                     ; $6247: $75
	ld   b, h                                        ; $6248: $44
	ld   h, a                                        ; $6249: $67
	xor  h                                           ; $624a: $ac
	db   $dd                                         ; $624b: $dd
	ret                                              ; $624c: $c9


	halt                                             ; $624d: $76
	ld   a, c                                        ; $624e: $79
	sbc  d                                           ; $624f: $9a
	cp   d                                           ; $6250: $ba
	ld   [hl], l                                     ; $6251: $75
	ld   sp, $1111                                   ; $6252: $31 $11 $11
	ld   a, l                                        ; $6255: $7d
	rst  $38                                         ; $6256: $ff
	cp   $a1                                         ; $6257: $fe $a1
	ld   de, $af16                                   ; $6259: $11 $16 $af
	rst  $38                                         ; $625c: $ff
	ret                                              ; $625d: $c9


	ld   b, e                                        ; $625e: $43
	inc  h                                           ; $625f: $24
	ld   a, b                                        ; $6260: $78
	call c, $88b9                                    ; $6261: $dc $b9 $88
	ld   a, c                                        ; $6264: $79
	xor  e                                           ; $6265: $ab
	xor  c                                           ; $6266: $a9
	ld   [hl], l                                     ; $6267: $75
	ld   b, l                                        ; $6268: $45
	ld   a, b                                        ; $6269: $78
	cp   h                                           ; $626a: $bc
	cp   e                                           ; $626b: $bb
	sbc  c                                           ; $626c: $99
	ld   [hl], a                                     ; $626d: $77
	adc  c                                           ; $626e: $89
	xor  d                                           ; $626f: $aa
	add  a                                           ; $6270: $87
	ld   d, e                                        ; $6271: $53
	ld   hl, $1511                                   ; $6272: $21 $11 $15
	call $ebff                                       ; $6275: $cd $ff $eb
	ld   sp, $5811                                   ; $6278: $31 $11 $58
	rst  $28                                         ; $627b: $ef
	db   $fd                                         ; $627c: $fd
	sub  l                                           ; $627d: $95
	ld   [hl-], a                                    ; $627e: $32
	ld   [hl], $8b                                   ; $627f: $36 $8b
	res  7, b                                        ; $6281: $cb $b8
	add  a                                           ; $6283: $87
	adc  d                                           ; $6284: $8a
	xor  e                                           ; $6285: $ab
	sbc  b                                           ; $6286: $98
	ld   h, l                                        ; $6287: $65
	ld   d, [hl]                                     ; $6288: $56
	ld   a, c                                        ; $6289: $79
	cp   e                                           ; $628a: $bb
	cp   c                                           ; $628b: $b9
	add  a                                           ; $628c: $87
	ld   a, c                                        ; $628d: $79
	sbc  e                                           ; $628e: $9b
	xor  d                                           ; $628f: $aa
	add  [hl]                                        ; $6290: $86
	ld   b, e                                        ; $6291: $43
	ld   [hl-], a                                    ; $6292: $32
	ld   [hl+], a                                    ; $6293: $22
	inc  de                                          ; $6294: $13
	sbc  e                                           ; $6295: $9b
	rst  $38                                         ; $6296: $ff
	db   $fd                                         ; $6297: $fd
	ld   h, e                                        ; $6298: $63
	ld   de, $ce46                                   ; $6299: $11 $46 $ce
	rst  $38                                         ; $629c: $ff
	or   a                                           ; $629d: $b7
	ld   b, d                                        ; $629e: $42
	dec  h                                           ; $629f: $25
	ld   l, e                                        ; $62a0: $6b
	db   $db                                         ; $62a1: $db
	jp   z, Jump_0fa_7987                            ; $62a2: $ca $87 $79

	sbc  d                                           ; $62a5: $9a
	xor  c                                           ; $62a6: $a9
	halt                                             ; $62a7: $76
	ld   d, [hl]                                     ; $62a8: $56
	ld   l, c                                        ; $62a9: $69
	xor  d                                           ; $62aa: $aa
	cp   e                                           ; $62ab: $bb
	sbc  b                                           ; $62ac: $98
	adc  b                                           ; $62ad: $88
	sbc  c                                           ; $62ae: $99
	cp   d                                           ; $62af: $ba
	sub  a                                           ; $62b0: $97
	ld   h, l                                        ; $62b1: $65
	ld   b, h                                        ; $62b2: $44
	inc  sp                                          ; $62b3: $33
	ld   de, $bf38                                   ; $62b4: $11 $38 $bf
	cp   $d6                                         ; $62b7: $fe $d6
	ld   b, c                                        ; $62b9: $41
	inc  d                                           ; $62ba: $14
	ld   l, h                                        ; $62bb: $6c
	rst  $38                                         ; $62bc: $ff
	db   $eb                                         ; $62bd: $eb
	ld   [hl], e                                     ; $62be: $73
	ld   hl, $ac56                                   ; $62bf: $21 $56 $ac
	call Call_0fa_7698                               ; $62c2: $cd $98 $76
	adc  b                                           ; $62c5: $88
	sbc  d                                           ; $62c6: $9a
	xor  b                                           ; $62c7: $a8
	halt                                             ; $62c8: $76
	ld   h, [hl]                                     ; $62c9: $66
	adc  d                                           ; $62ca: $8a
	xor  e                                           ; $62cb: $ab
	cp   c                                           ; $62cc: $b9
	sub  a                                           ; $62cd: $97
	adc  b                                           ; $62ce: $88
	xor  d                                           ; $62cf: $aa
	xor  c                                           ; $62d0: $a9
	sub  a                                           ; $62d1: $97
	ld   h, l                                        ; $62d2: $65
	ld   d, l                                        ; $62d3: $55
	ld   b, e                                        ; $62d4: $43
	ld   hl, $9c06                                   ; $62d5: $21 $06 $9c
	rst  $38                                         ; $62d8: $ff
	ld   [$1242], a                                  ; $62d9: $ea $42 $12
	ld   e, c                                        ; $62dc: $59
	rst  JumpTable                                         ; $62dd: $df
	db   $fd                                         ; $62de: $fd
	sub  h                                           ; $62df: $94
	ld   sp, $9d46                                   ; $62e0: $31 $46 $9d
	db   $dd                                         ; $62e3: $dd
	cp   b                                           ; $62e4: $b8
	ld   [hl], l                                     ; $62e5: $75
	ld   h, a                                        ; $62e6: $67
	sbc  d                                           ; $62e7: $9a
	xor  d                                           ; $62e8: $aa
	add  a                                           ; $62e9: $87
	ld   d, l                                        ; $62ea: $55
	ld   l, b                                        ; $62eb: $68
	xor  d                                           ; $62ec: $aa
	cp   d                                           ; $62ed: $ba
	xor  c                                           ; $62ee: $a9
	ld   [hl], a                                     ; $62ef: $77
	adc  c                                           ; $62f0: $89
	xor  e                                           ; $62f1: $ab
	cp   d                                           ; $62f2: $ba
	add  a                                           ; $62f3: $87
	ld   h, l                                        ; $62f4: $65
	ld   d, l                                        ; $62f5: $55
	ld   d, h                                        ; $62f6: $54
	ld   hl, $9c15                                   ; $62f7: $21 $15 $9c
	rst  $38                                         ; $62fa: $ff
	ld   [$1252], a                                  ; $62fb: $ea $52 $12
	ld   e, b                                        ; $62fe: $58
	rst  JumpTable                                         ; $62ff: $df
	db   $ec                                         ; $6300: $ec
	and  l                                           ; $6301: $a5
	ld   [hl-], a                                    ; $6302: $32
	ld   b, a                                        ; $6303: $47
	sbc  l                                           ; $6304: $9d
	call c, Call_0fa_66a8                            ; $6305: $dc $a8 $66
	ld   h, a                                        ; $6308: $67
	xor  e                                           ; $6309: $ab
	cp   d                                           ; $630a: $ba
	sub  a                                           ; $630b: $97
	ld   d, l                                        ; $630c: $55
	ld   l, b                                        ; $630d: $68
	xor  d                                           ; $630e: $aa
	cp   d                                           ; $630f: $ba
	xor  b                                           ; $6310: $a8
	ld   [hl], a                                     ; $6311: $77
	ld   a, b                                        ; $6312: $78
	xor  e                                           ; $6313: $ab
	cp   d                                           ; $6314: $ba
	add  a                                           ; $6315: $87
	ld   h, l                                        ; $6316: $65
	ld   h, [hl]                                     ; $6317: $66
	ld   h, [hl]                                     ; $6318: $66
	ld   d, h                                        ; $6319: $54
	ld   hl, $ae27                                   ; $631a: $21 $27 $ae
	cp   $d8                                         ; $631d: $fe $d8
	ld   sp, $6a13                                   ; $631f: $31 $13 $6a
	xor  $eb                                         ; $6322: $ee $eb
	add  h                                           ; $6324: $84
	inc  sp                                          ; $6325: $33
	ld   d, a                                        ; $6326: $57
	cp   h                                           ; $6327: $bc
	res  4, a                                        ; $6328: $cb $a7
	ld   h, [hl]                                     ; $632a: $66
	ld   a, c                                        ; $632b: $79
	xor  d                                           ; $632c: $aa
	xor  d                                           ; $632d: $aa
	add  [hl]                                        ; $632e: $86
	ld   d, [hl]                                     ; $632f: $56
	ld   l, b                                        ; $6330: $68
	xor  d                                           ; $6331: $aa
	cp   d                                           ; $6332: $ba
	sbc  b                                           ; $6333: $98
	ld   [hl], a                                     ; $6334: $77
	sbc  c                                           ; $6335: $99
	xor  e                                           ; $6336: $ab
	xor  c                                           ; $6337: $a9
	add  a                                           ; $6338: $87
	ld   h, [hl]                                     ; $6339: $66
	ld   h, a                                        ; $633a: $67
	halt                                             ; $633b: $76
	ld   h, h                                        ; $633c: $64
	ld   [hl-], a                                    ; $633d: $32
	dec  d                                           ; $633e: $15
	sbc  e                                           ; $633f: $9b
	cp   $da                                         ; $6340: $fe $da
	ld   h, e                                        ; $6342: $63
	ld   [hl+], a                                    ; $6343: $22
	ld   d, a                                        ; $6344: $57
	cp   l                                           ; $6345: $bd
	db   $ec                                         ; $6346: $ec
	and  a                                           ; $6347: $a7
	ld   b, h                                        ; $6348: $44
	ld   b, [hl]                                     ; $6349: $46
	adc  d                                           ; $634a: $8a
	cp   e                                           ; $634b: $bb
	cp   d                                           ; $634c: $ba
	add  a                                           ; $634d: $87
	ld   [hl], a                                     ; $634e: $77
	adc  c                                           ; $634f: $89
	xor  c                                           ; $6350: $a9
	add  a                                           ; $6351: $87
	ld   h, l                                        ; $6352: $65
	ld   h, a                                        ; $6353: $67
	sbc  d                                           ; $6354: $9a
	cp   d                                           ; $6355: $ba
	xor  c                                           ; $6356: $a9
	add  a                                           ; $6357: $87
	ld   a, b                                        ; $6358: $78
	sbc  d                                           ; $6359: $9a
	cp   d                                           ; $635a: $ba
	xor  c                                           ; $635b: $a9
	ld   [hl], a                                     ; $635c: $77
	ld   h, [hl]                                     ; $635d: $66
	ld   [hl], a                                     ; $635e: $77
	halt                                             ; $635f: $76
	ld   d, h                                        ; $6360: $54
	ld   [hl-], a                                    ; $6361: $32
	inc  h                                           ; $6362: $24
	ld   a, d                                        ; $6363: $7a
	rst  JumpTable                                         ; $6364: $df
	db   $db                                         ; $6365: $db
	add  h                                           ; $6366: $84
	ld   [hl-], a                                    ; $6367: $32
	ld   b, a                                        ; $6368: $47
	xor  l                                           ; $6369: $ad
	db   $dd                                         ; $636a: $dd
	xor  b                                           ; $636b: $a8
	ld   d, h                                        ; $636c: $54
	ld   b, l                                        ; $636d: $45
	adc  d                                           ; $636e: $8a
	call z, $97cb                                    ; $636f: $cc $cb $97
	ld   h, a                                        ; $6372: $67
	ld   a, b                                        ; $6373: $78
	xor  c                                           ; $6374: $a9
	sbc  c                                           ; $6375: $99
	halt                                             ; $6376: $76
	ld   h, [hl]                                     ; $6377: $66
	ld   a, b                                        ; $6378: $78
	sbc  d                                           ; $6379: $9a
	xor  d                                           ; $637a: $aa
	sbc  c                                           ; $637b: $99
	adc  b                                           ; $637c: $88
	adc  c                                           ; $637d: $89
	xor  c                                           ; $637e: $a9
	xor  c                                           ; $637f: $a9
	add  a                                           ; $6380: $87
	ld   [hl], a                                     ; $6381: $77
	halt                                             ; $6382: $76
	ld   h, [hl]                                     ; $6383: $66
	ld   h, l                                        ; $6384: $65
	ld   d, l                                        ; $6385: $55
	ld   b, h                                        ; $6386: $44
	ld   d, [hl]                                     ; $6387: $56
	sbc  e                                           ; $6388: $9b
	cp   h                                           ; $6389: $bc
	sbc  b                                           ; $638a: $98
	ld   h, h                                        ; $638b: $64
	ld   b, l                                        ; $638c: $45
	ld   a, b                                        ; $638d: $78
	xor  e                                           ; $638e: $ab
	cp   e                                           ; $638f: $bb
	sub  a                                           ; $6390: $97
	ld   d, l                                        ; $6391: $55
	ld   h, a                                        ; $6392: $67
	sbc  d                                           ; $6393: $9a
	cp   h                                           ; $6394: $bc
	jp   z, Jump_0fa_7797                            ; $6395: $ca $97 $77

	ld   a, b                                        ; $6398: $78
	adc  c                                           ; $6399: $89
	sbc  c                                           ; $639a: $99
	add  a                                           ; $639b: $87
	ld   [hl], a                                     ; $639c: $77
	ld   a, b                                        ; $639d: $78
	sbc  d                                           ; $639e: $9a
	xor  d                                           ; $639f: $aa
	sbc  c                                           ; $63a0: $99
	xor  c                                           ; $63a1: $a9
	adc  b                                           ; $63a2: $88
	adc  b                                           ; $63a3: $88
	adc  b                                           ; $63a4: $88
	adc  b                                           ; $63a5: $88
	ld   [hl], a                                     ; $63a6: $77
	ld   h, l                                        ; $63a7: $65
	ld   d, l                                        ; $63a8: $55
	ld   d, l                                        ; $63a9: $55
	ld   d, [hl]                                     ; $63aa: $56
	ld   h, a                                        ; $63ab: $67
	adc  d                                           ; $63ac: $8a
	sbc  d                                           ; $63ad: $9a
	and  a                                           ; $63ae: $a7
	halt                                             ; $63af: $76
	ld   h, [hl]                                     ; $63b0: $66
	ld   a, c                                        ; $63b1: $79
	sbc  d                                           ; $63b2: $9a
	xor  d                                           ; $63b3: $aa
	adc  b                                           ; $63b4: $88
	halt                                             ; $63b5: $76
	ld   [hl], a                                     ; $63b6: $77
	sbc  d                                           ; $63b7: $9a
	cp   e                                           ; $63b8: $bb
	xor  d                                           ; $63b9: $aa
	adc  b                                           ; $63ba: $88
	ld   [hl], a                                     ; $63bb: $77
	ld   a, b                                        ; $63bc: $78
	adc  c                                           ; $63bd: $89
	sbc  c                                           ; $63be: $99
	sbc  b                                           ; $63bf: $98
	ld   [hl], a                                     ; $63c0: $77
	adc  b                                           ; $63c1: $88
	sbc  c                                           ; $63c2: $99
	cp   e                                           ; $63c3: $bb
	xor  c                                           ; $63c4: $a9
	adc  b                                           ; $63c5: $88
	ld   [hl], a                                     ; $63c6: $77
	ld   [hl], a                                     ; $63c7: $77
	ld   [hl], a                                     ; $63c8: $77
	ld   [hl], a                                     ; $63c9: $77
	ld   h, l                                        ; $63ca: $65
	ld   b, h                                        ; $63cb: $44
	ld   b, h                                        ; $63cc: $44
	ld   d, a                                        ; $63cd: $57
	cp   e                                           ; $63ce: $bb
	res  1, b                                        ; $63cf: $cb $88
	ld   h, h                                        ; $63d1: $64
	ld   d, [hl]                                     ; $63d2: $56
	adc  d                                           ; $63d3: $8a
	cp   d                                           ; $63d4: $ba
	cp   c                                           ; $63d5: $b9
	halt                                             ; $63d6: $76
	ld   d, [hl]                                     ; $63d7: $56
	ld   a, c                                        ; $63d8: $79
	sbc  e                                           ; $63d9: $9b
	cp   e                                           ; $63da: $bb
	xor  c                                           ; $63db: $a9
	add  a                                           ; $63dc: $87
	ld   a, b                                        ; $63dd: $78
	adc  c                                           ; $63de: $89
	sbc  b                                           ; $63df: $98
	add  a                                           ; $63e0: $87
	ld   h, [hl]                                     ; $63e1: $66
	ld   [hl], a                                     ; $63e2: $77
	adc  c                                           ; $63e3: $89
	sbc  c                                           ; $63e4: $99
	sbc  c                                           ; $63e5: $99
	adc  b                                           ; $63e6: $88
	adc  b                                           ; $63e7: $88
	adc  c                                           ; $63e8: $89
	xor  c                                           ; $63e9: $a9
	xor  c                                           ; $63ea: $a9
	sbc  b                                           ; $63eb: $98
	ld   [hl], a                                     ; $63ec: $77
	ld   [hl], a                                     ; $63ed: $77
	ld   [hl], a                                     ; $63ee: $77
	halt                                             ; $63ef: $76
	ld   h, [hl]                                     ; $63f0: $66
	ld   d, l                                        ; $63f1: $55
	ld   b, h                                        ; $63f2: $44
	ld   b, [hl]                                     ; $63f3: $46
	adc  d                                           ; $63f4: $8a
	cp   e                                           ; $63f5: $bb
	sbc  c                                           ; $63f6: $99
	ld   h, l                                        ; $63f7: $65
	ld   d, [hl]                                     ; $63f8: $56
	adc  d                                           ; $63f9: $8a
	cp   e                                           ; $63fa: $bb
	cp   c                                           ; $63fb: $b9
	add  a                                           ; $63fc: $87
	ld   h, [hl]                                     ; $63fd: $66
	ld   l, b                                        ; $63fe: $68
	xor  e                                           ; $63ff: $ab
	cp   e                                           ; $6400: $bb
	xor  b                                           ; $6401: $a8
	halt                                             ; $6402: $76
	ld   h, a                                        ; $6403: $67
	adc  b                                           ; $6404: $88
	xor  c                                           ; $6405: $a9
	sbc  b                                           ; $6406: $98
	ld   [hl], a                                     ; $6407: $77
	ld   [hl], a                                     ; $6408: $77
	sbc  c                                           ; $6409: $99
	xor  d                                           ; $640a: $aa
	sbc  c                                           ; $640b: $99
	sbc  c                                           ; $640c: $99
	add  a                                           ; $640d: $87
	ld   [hl], a                                     ; $640e: $77
	ld   [hl], a                                     ; $640f: $77
	halt                                             ; $6410: $76
	ld   h, [hl]                                     ; $6411: $66
	ld   d, l                                        ; $6412: $55
	ld   d, l                                        ; $6413: $55
	ld   d, a                                        ; $6414: $57
	sbc  d                                           ; $6415: $9a
	res  3, c                                        ; $6416: $cb $99
	ld   h, l                                        ; $6418: $65
	ld   d, l                                        ; $6419: $55
	ld   a, c                                        ; $641a: $79
	cp   e                                           ; $641b: $bb
	cp   d                                           ; $641c: $ba
	add  a                                           ; $641d: $87
	ld   d, l                                        ; $641e: $55
	ld   l, b                                        ; $641f: $68
	sbc  e                                           ; $6420: $9b
	call z, $86b9                                    ; $6421: $cc $b9 $86
	ld   h, [hl]                                     ; $6424: $66
	ld   a, b                                        ; $6425: $78
	xor  c                                           ; $6426: $a9
	sbc  c                                           ; $6427: $99
	halt                                             ; $6428: $76
	ld   h, [hl]                                     ; $6429: $66
	ld   a, b                                        ; $642a: $78
	sbc  d                                           ; $642b: $9a
	cp   d                                           ; $642c: $ba
	xor  b                                           ; $642d: $a8
	add  a                                           ; $642e: $87
	ld   [hl], a                                     ; $642f: $77
	adc  b                                           ; $6430: $88
	sbc  c                                           ; $6431: $99
	sbc  b                                           ; $6432: $98
	ld   [hl], a                                     ; $6433: $77
	ld   h, [hl]                                     ; $6434: $66
	ld   h, [hl]                                     ; $6435: $66
	ld   h, [hl]                                     ; $6436: $66
	ld   h, l                                        ; $6437: $65
	ld   d, l                                        ; $6438: $55
	ld   [hl], a                                     ; $6439: $77
	sbc  d                                           ; $643a: $9a
	sbc  c                                           ; $643b: $99
	add  [hl]                                        ; $643c: $86
	ld   h, a                                        ; $643d: $67
	ld   a, b                                        ; $643e: $78
	sbc  d                                           ; $643f: $9a
	xor  d                                           ; $6440: $aa
	sbc  c                                           ; $6441: $99
	add  a                                           ; $6442: $87
	ld   [hl], a                                     ; $6443: $77
	adc  c                                           ; $6444: $89
	sbc  d                                           ; $6445: $9a
	xor  c                                           ; $6446: $a9
	sbc  b                                           ; $6447: $98
	ld   [hl], a                                     ; $6448: $77
	ld   a, b                                        ; $6449: $78
	sbc  b                                           ; $644a: $98
	adc  b                                           ; $644b: $88
	add  a                                           ; $644c: $87
	ld   [hl], a                                     ; $644d: $77
	ld   [hl], a                                     ; $644e: $77
	adc  b                                           ; $644f: $88
	xor  d                                           ; $6450: $aa
	xor  d                                           ; $6451: $aa
	sbc  b                                           ; $6452: $98
	add  a                                           ; $6453: $87
	ld   a, b                                        ; $6454: $78
	adc  b                                           ; $6455: $88
	adc  b                                           ; $6456: $88
	add  a                                           ; $6457: $87
	ld   h, [hl]                                     ; $6458: $66
	ld   d, l                                        ; $6459: $55
	ld   d, l                                        ; $645a: $55
	ld   d, l                                        ; $645b: $55
	ld   l, b                                        ; $645c: $68
	sbc  c                                           ; $645d: $99
	sbc  c                                           ; $645e: $99
	add  a                                           ; $645f: $87
	ld   [hl], a                                     ; $6460: $77
	ld   a, b                                        ; $6461: $78
	sbc  c                                           ; $6462: $99
	sbc  d                                           ; $6463: $9a
	sbc  c                                           ; $6464: $99
	adc  b                                           ; $6465: $88
	adc  b                                           ; $6466: $88
	adc  c                                           ; $6467: $89
	sbc  d                                           ; $6468: $9a
	sbc  c                                           ; $6469: $99
	sbc  c                                           ; $646a: $99
	sbc  b                                           ; $646b: $98
	adc  b                                           ; $646c: $88
	sbc  c                                           ; $646d: $99
	sbc  b                                           ; $646e: $98
	add  a                                           ; $646f: $87
	ld   [hl], a                                     ; $6470: $77
	ld   [hl], a                                     ; $6471: $77
	adc  b                                           ; $6472: $88
	adc  c                                           ; $6473: $89
	sbc  d                                           ; $6474: $9a
	sbc  c                                           ; $6475: $99
	adc  c                                           ; $6476: $89
	adc  b                                           ; $6477: $88
	adc  c                                           ; $6478: $89
	adc  b                                           ; $6479: $88
	adc  b                                           ; $647a: $88
	adc  b                                           ; $647b: $88
	ld   [hl], a                                     ; $647c: $77
	ld   h, [hl]                                     ; $647d: $66
	ld   h, [hl]                                     ; $647e: $66
	ld   h, [hl]                                     ; $647f: $66
	ld   h, [hl]                                     ; $6480: $66
	ld   [hl], a                                     ; $6481: $77
	adc  c                                           ; $6482: $89
	adc  b                                           ; $6483: $88
	add  a                                           ; $6484: $87
	ld   [hl], a                                     ; $6485: $77
	ld   a, b                                        ; $6486: $78
	adc  c                                           ; $6487: $89
	sbc  c                                           ; $6488: $99
	adc  c                                           ; $6489: $89
	adc  b                                           ; $648a: $88
	adc  b                                           ; $648b: $88
	sbc  b                                           ; $648c: $98
	sbc  d                                           ; $648d: $9a
	xor  c                                           ; $648e: $a9
	sbc  b                                           ; $648f: $98
	sbc  b                                           ; $6490: $98
	adc  b                                           ; $6491: $88
	sbc  c                                           ; $6492: $99
	sbc  b                                           ; $6493: $98
	add  a                                           ; $6494: $87

Jump_0fa_6495:
	ld   [hl], a                                     ; $6495: $77
	ld   [hl], a                                     ; $6496: $77
	adc  b                                           ; $6497: $88
	sbc  c                                           ; $6498: $99
	adc  b                                           ; $6499: $88
	adc  b                                           ; $649a: $88
	adc  b                                           ; $649b: $88
	adc  b                                           ; $649c: $88
	sbc  c                                           ; $649d: $99
	sbc  c                                           ; $649e: $99
	sbc  c                                           ; $649f: $99
	adc  b                                           ; $64a0: $88
	adc  b                                           ; $64a1: $88
	ld   [hl], a                                     ; $64a2: $77
	ld   [hl], a                                     ; $64a3: $77
	ld   [hl], a                                     ; $64a4: $77
	halt                                             ; $64a5: $76
	ld   h, [hl]                                     ; $64a6: $66
	ld   h, [hl]                                     ; $64a7: $66
	ld   [hl], a                                     ; $64a8: $77
	adc  b                                           ; $64a9: $88
	adc  b                                           ; $64aa: $88
	ld   [hl], a                                     ; $64ab: $77
	ld   [hl], a                                     ; $64ac: $77
	adc  c                                           ; $64ad: $89
	sbc  c                                           ; $64ae: $99
	sbc  c                                           ; $64af: $99
	adc  c                                           ; $64b0: $89
	sbc  b                                           ; $64b1: $98
	sbc  c                                           ; $64b2: $99
	adc  c                                           ; $64b3: $89
	sbc  c                                           ; $64b4: $99
	sbc  b                                           ; $64b5: $98
	sbc  b                                           ; $64b6: $98
	adc  b                                           ; $64b7: $88
	adc  b                                           ; $64b8: $88
	sbc  c                                           ; $64b9: $99
	adc  b                                           ; $64ba: $88
	add  a                                           ; $64bb: $87
	ld   [hl], a                                     ; $64bc: $77
	ld   [hl], a                                     ; $64bd: $77
	adc  b                                           ; $64be: $88
	adc  c                                           ; $64bf: $89
	sbc  c                                           ; $64c0: $99
	sbc  c                                           ; $64c1: $99
	sbc  c                                           ; $64c2: $99
	sbc  c                                           ; $64c3: $99
	sbc  c                                           ; $64c4: $99
	sbc  c                                           ; $64c5: $99
	sbc  c                                           ; $64c6: $99
	adc  b                                           ; $64c7: $88
	adc  b                                           ; $64c8: $88
	adc  b                                           ; $64c9: $88
	ld   [hl], a                                     ; $64ca: $77
	ld   [hl], a                                     ; $64cb: $77
	ld   [hl], a                                     ; $64cc: $77
	ld   [hl], a                                     ; $64cd: $77
	ld   h, [hl]                                     ; $64ce: $66
	ld   [hl], a                                     ; $64cf: $77
	ld   a, b                                        ; $64d0: $78
	adc  b                                           ; $64d1: $88
	add  a                                           ; $64d2: $87
	ld   [hl], a                                     ; $64d3: $77
	adc  b                                           ; $64d4: $88
	sbc  b                                           ; $64d5: $98
	adc  c                                           ; $64d6: $89
	adc  b                                           ; $64d7: $88
	adc  c                                           ; $64d8: $89
	sbc  c                                           ; $64d9: $99
	sbc  c                                           ; $64da: $99
	adc  c                                           ; $64db: $89
	sbc  c                                           ; $64dc: $99
	adc  b                                           ; $64dd: $88
	sbc  b                                           ; $64de: $98
	adc  b                                           ; $64df: $88
	sbc  b                                           ; $64e0: $98
	adc  b                                           ; $64e1: $88
	adc  b                                           ; $64e2: $88
	ld   [hl], a                                     ; $64e3: $77
	ld   [hl], a                                     ; $64e4: $77
	ld   a, b                                        ; $64e5: $78
	adc  b                                           ; $64e6: $88
	adc  b                                           ; $64e7: $88
	adc  b                                           ; $64e8: $88
	adc  b                                           ; $64e9: $88
	adc  b                                           ; $64ea: $88
	sbc  c                                           ; $64eb: $99
	sbc  c                                           ; $64ec: $99
	sbc  c                                           ; $64ed: $99
	sbc  c                                           ; $64ee: $99
	sbc  b                                           ; $64ef: $98
	adc  b                                           ; $64f0: $88
	adc  b                                           ; $64f1: $88
	adc  b                                           ; $64f2: $88
	adc  b                                           ; $64f3: $88
	ld   [hl], a                                     ; $64f4: $77
	ld   [hl], a                                     ; $64f5: $77
	ld   [hl], a                                     ; $64f6: $77
	ld   [hl], a                                     ; $64f7: $77
	ld   [hl], a                                     ; $64f8: $77
	ld   [hl], a                                     ; $64f9: $77
	ld   [hl], a                                     ; $64fa: $77
	ld   [hl], a                                     ; $64fb: $77
	adc  b                                           ; $64fc: $88
	adc  b                                           ; $64fd: $88
	adc  b                                           ; $64fe: $88
	adc  b                                           ; $64ff: $88
	sbc  c                                           ; $6500: $99
	adc  b                                           ; $6501: $88
	adc  b                                           ; $6502: $88
	adc  c                                           ; $6503: $89
	sbc  c                                           ; $6504: $99
	sbc  c                                           ; $6505: $99
	adc  b                                           ; $6506: $88
	adc  b                                           ; $6507: $88
	adc  c                                           ; $6508: $89
	sbc  b                                           ; $6509: $98
	adc  b                                           ; $650a: $88
	adc  b                                           ; $650b: $88
	adc  b                                           ; $650c: $88
	adc  b                                           ; $650d: $88
	add  a                                           ; $650e: $87
	ld   [hl], a                                     ; $650f: $77
	ld   a, b                                        ; $6510: $78
	adc  b                                           ; $6511: $88
	adc  b                                           ; $6512: $88
	adc  b                                           ; $6513: $88
	adc  b                                           ; $6514: $88
	adc  b                                           ; $6515: $88
	adc  b                                           ; $6516: $88
	sbc  b                                           ; $6517: $98
	sbc  c                                           ; $6518: $99
	adc  b                                           ; $6519: $88
	adc  b                                           ; $651a: $88
	adc  b                                           ; $651b: $88
	adc  b                                           ; $651c: $88
	adc  b                                           ; $651d: $88
	adc  b                                           ; $651e: $88
	ld   [hl], a                                     ; $651f: $77
	ld   [hl], a                                     ; $6520: $77
	ld   [hl], a                                     ; $6521: $77
	ld   [hl], a                                     ; $6522: $77
	ld   [hl], a                                     ; $6523: $77
	ld   [hl], a                                     ; $6524: $77
	ld   [hl], a                                     ; $6525: $77
	ld   a, b                                        ; $6526: $78
	adc  b                                           ; $6527: $88
	adc  b                                           ; $6528: $88
	adc  b                                           ; $6529: $88
	sbc  c                                           ; $652a: $99
	sbc  c                                           ; $652b: $99
	sbc  c                                           ; $652c: $99
	sbc  c                                           ; $652d: $99
	sbc  c                                           ; $652e: $99
	sbc  c                                           ; $652f: $99
	sbc  c                                           ; $6530: $99
	sbc  c                                           ; $6531: $99
	sbc  b                                           ; $6532: $98
	adc  b                                           ; $6533: $88
	adc  b                                           ; $6534: $88
	adc  b                                           ; $6535: $88
	adc  b                                           ; $6536: $88
	adc  b                                           ; $6537: $88
	adc  b                                           ; $6538: $88
	adc  b                                           ; $6539: $88
	adc  b                                           ; $653a: $88
	adc  b                                           ; $653b: $88
	adc  b                                           ; $653c: $88
	adc  b                                           ; $653d: $88
	adc  b                                           ; $653e: $88
	adc  b                                           ; $653f: $88
	adc  b                                           ; $6540: $88
	adc  b                                           ; $6541: $88
	adc  b                                           ; $6542: $88
	adc  b                                           ; $6543: $88
	adc  b                                           ; $6544: $88
	adc  b                                           ; $6545: $88
	adc  b                                           ; $6546: $88
	adc  b                                           ; $6547: $88
	adc  b                                           ; $6548: $88
	adc  b                                           ; $6549: $88
	add  a                                           ; $654a: $87
	ld   [hl], a                                     ; $654b: $77
	ld   a, b                                        ; $654c: $78
	adc  b                                           ; $654d: $88
	adc  b                                           ; $654e: $88
	adc  b                                           ; $654f: $88
	adc  b                                           ; $6550: $88
	adc  b                                           ; $6551: $88
	adc  b                                           ; $6552: $88
	adc  b                                           ; $6553: $88
	adc  b                                           ; $6554: $88
	adc  b                                           ; $6555: $88
	adc  b                                           ; $6556: $88
	adc  b                                           ; $6557: $88
	adc  b                                           ; $6558: $88
	adc  b                                           ; $6559: $88
	adc  b                                           ; $655a: $88
	adc  b                                           ; $655b: $88
	adc  b                                           ; $655c: $88
	adc  b                                           ; $655d: $88
	adc  b                                           ; $655e: $88
	adc  b                                           ; $655f: $88
	adc  b                                           ; $6560: $88
	adc  b                                           ; $6561: $88
	adc  b                                           ; $6562: $88
	adc  b                                           ; $6563: $88
	adc  b                                           ; $6564: $88
	adc  b                                           ; $6565: $88
	adc  b                                           ; $6566: $88
	adc  b                                           ; $6567: $88
	adc  b                                           ; $6568: $88
	adc  b                                           ; $6569: $88
	adc  b                                           ; $656a: $88
	adc  b                                           ; $656b: $88
	adc  b                                           ; $656c: $88
	adc  b                                           ; $656d: $88
	adc  b                                           ; $656e: $88
	adc  b                                           ; $656f: $88
	adc  b                                           ; $6570: $88
	adc  b                                           ; $6571: $88
	adc  b                                           ; $6572: $88
	adc  b                                           ; $6573: $88
	adc  b                                           ; $6574: $88
	adc  b                                           ; $6575: $88
	adc  b                                           ; $6576: $88
	adc  b                                           ; $6577: $88
	add  c                                           ; $6578: $81
	ld   de, $1111                                   ; $6579: $11 $11 $11
	ld   de, $1111                                   ; $657c: $11 $11 $11
	ld   de, $1111                                   ; $657f: $11 $11 $11
	ld   de, $1111                                   ; $6582: $11 $11 $11
	ld   de, $1111                                   ; $6585: $11 $11 $11
	ld   de, $1111                                   ; $6588: $11 $11 $11
	ld   de, $1111                                   ; $658b: $11 $11 $11
	ld   de, $1111                                   ; $658e: $11 $11 $11
	ld   de, $1111                                   ; $6591: $11 $11 $11
	ld   de, $1111                                   ; $6594: $11 $11 $11
	ld   de, $1111                                   ; $6597: $11 $11 $11
	ld   de, $1111                                   ; $659a: $11 $11 $11
	ld   de, $1111                                   ; $659d: $11 $11 $11
	ld   de, $0011                                   ; $65a0: $11 $11 $00
	ld   c, b                                        ; $65a3: $48
	ld   de, $1111                                   ; $65a4: $11 $11 $11
	ld   de, $1111                                   ; $65a7: $11 $11 $11
	ld   de, $1111                                   ; $65aa: $11 $11 $11
	ld   de, $5413                                   ; $65ad: $11 $13 $54
	ld   d, h                                        ; $65b0: $54
	ld   d, h                                        ; $65b1: $54
	ld   b, c                                        ; $65b2: $41
	rra                                              ; $65b3: $1f
	rst  $38                                         ; $65b4: $ff
	pop  af                                          ; $65b5: $f1
	ld   de, $1311                                   ; $65b6: $11 $11 $13
	pop  bc                                          ; $65b9: $c1
	ld   de, $de1c                                   ; $65ba: $11 $1c $de
	call c, $d1de                                    ; $65bd: $dc $de $d1
	ld   de, $1111                                   ; $65c0: $11 $11 $11
	ld   de, $1111                                   ; $65c3: $11 $11 $11
	ld   de, $1111                                   ; $65c6: $11 $11 $11
	ld   de, $1111                                   ; $65c9: $11 $11 $11
	ld   de, $5411                                   ; $65cc: $11 $11 $54
	ld   b, h                                        ; $65cf: $44
	jp   $5411                                       ; $65d0: $c3 $11 $54


	ld   d, h                                        ; $65d3: $54
	ld   h, a                                        ; $65d4: $67
	ld   [hl], d                                     ; $65d5: $72
	ld   de, $1111                                   ; $65d6: $11 $11 $11
	ld   de, $1112                                   ; $65d9: $11 $12 $11
	ld   [de], a                                     ; $65dc: $12
	ld   de, $1111                                   ; $65dd: $11 $11 $11
	ld   h, [hl]                                     ; $65e0: $66
	halt                                             ; $65e1: $76
	and  e                                           ; $65e2: $a3
	ld   de, $8888                                   ; $65e3: $11 $88 $88
	adc  b                                           ; $65e6: $88
	adc  b                                           ; $65e7: $88
	adc  b                                           ; $65e8: $88
	sbc  c                                           ; $65e9: $99
	sbc  c                                           ; $65ea: $99
	adc  b                                           ; $65eb: $88
	adc  b                                           ; $65ec: $88
	adc  b                                           ; $65ed: $88
	adc  b                                           ; $65ee: $88
	ld   [hl], a                                     ; $65ef: $77
	ld   [hl], a                                     ; $65f0: $77
	ld   [hl], a                                     ; $65f1: $77
	ld   [hl], a                                     ; $65f2: $77
	ld   [hl], a                                     ; $65f3: $77
	ld   [hl], a                                     ; $65f4: $77
	adc  b                                           ; $65f5: $88
	adc  b                                           ; $65f6: $88
	sbc  b                                           ; $65f7: $98
	sbc  c                                           ; $65f8: $99
	xor  d                                           ; $65f9: $aa
	sbc  c                                           ; $65fa: $99
	sbc  c                                           ; $65fb: $99
	sbc  d                                           ; $65fc: $9a
	xor  d                                           ; $65fd: $aa
	sbc  c                                           ; $65fe: $99
	adc  c                                           ; $65ff: $89
	add  a                                           ; $6600: $87
	ld   [hl], a                                     ; $6601: $77
	ld   h, [hl]                                     ; $6602: $66
	ld   h, [hl]                                     ; $6603: $66
	ld   d, l                                        ; $6604: $55
	ld   d, l                                        ; $6605: $55
	ld   d, [hl]                                     ; $6606: $56
	ld   h, [hl]                                     ; $6607: $66
	ld   h, [hl]                                     ; $6608: $66
	ld   [hl], a                                     ; $6609: $77
	adc  c                                           ; $660a: $89
	sbc  d                                           ; $660b: $9a
	xor  d                                           ; $660c: $aa
	xor  e                                           ; $660d: $ab
	cp   h                                           ; $660e: $bc
	call z, $bbcb                                    ; $660f: $cc $cb $bb
	xor  c                                           ; $6612: $a9
	sbc  c                                           ; $6613: $99
	sbc  b                                           ; $6614: $98
	ld   [hl], a                                     ; $6615: $77
	ld   h, [hl]                                     ; $6616: $66
	ld   h, l                                        ; $6617: $65
	ld   d, h                                        ; $6618: $54
	ld   b, h                                        ; $6619: $44
	ld   b, h                                        ; $661a: $44
	ld   b, h                                        ; $661b: $44
	ld   b, l                                        ; $661c: $45
	ld   d, [hl]                                     ; $661d: $56
	ld   [hl], a                                     ; $661e: $77
	ld   a, b                                        ; $661f: $78
	sbc  c                                           ; $6620: $99
	xor  e                                           ; $6621: $ab
	cp   h                                           ; $6622: $bc
	call z, $ccbc                                    ; $6623: $cc $bc $cc
	res  7, d                                        ; $6626: $cb $ba
	sbc  b                                           ; $6628: $98
	sbc  b                                           ; $6629: $98
	adc  b                                           ; $662a: $88
	adc  b                                           ; $662b: $88
	ld   [hl], a                                     ; $662c: $77
	ld   [hl], a                                     ; $662d: $77
	ld   [hl], a                                     ; $662e: $77
	ld   h, [hl]                                     ; $662f: $66
	halt                                             ; $6630: $76
	ld   h, [hl]                                     ; $6631: $66
	ld   h, [hl]                                     ; $6632: $66
	ld   h, l                                        ; $6633: $65
	ld   d, l                                        ; $6634: $55
	ld   d, l                                        ; $6635: $55
	ld   d, l                                        ; $6636: $55
	ld   d, l                                        ; $6637: $55
	ld   h, [hl]                                     ; $6638: $66
	ld   h, a                                        ; $6639: $67
	ld   [hl], a                                     ; $663a: $77
	adc  b                                           ; $663b: $88
	sbc  d                                           ; $663c: $9a
	cp   d                                           ; $663d: $ba
	cp   h                                           ; $663e: $bc
	res  7, e                                        ; $663f: $cb $bb
	cp   h                                           ; $6641: $bc
	cp   d                                           ; $6642: $ba
	cp   d                                           ; $6643: $ba
	xor  c                                           ; $6644: $a9
	sbc  c                                           ; $6645: $99
	adc  b                                           ; $6646: $88
	adc  b                                           ; $6647: $88
	sbc  b                                           ; $6648: $98
	adc  c                                           ; $6649: $89
	adc  b                                           ; $664a: $88
	sbc  b                                           ; $664b: $98
	adc  c                                           ; $664c: $89
	sbc  b                                           ; $664d: $98
	adc  b                                           ; $664e: $88
	ld   [hl], a                                     ; $664f: $77
	ld   h, [hl]                                     ; $6650: $66
	ld   d, l                                        ; $6651: $55
	ld   b, e                                        ; $6652: $43
	ld   [hl-], a                                    ; $6653: $32
	ld   [hl+], a                                    ; $6654: $22
	dec  [hl]                                        ; $6655: $35
	ld   d, h                                        ; $6656: $54
	inc  sp                                          ; $6657: $33
	ld   b, [hl]                                     ; $6658: $46
	sbc  e                                           ; $6659: $9b
	call $bccc                                       ; $665a: $cd $cc $bc
	sbc  $fe                                         ; $665d: $de $fe
	db   $db                                         ; $665f: $db
	xor  d                                           ; $6660: $aa
	xor  d                                           ; $6661: $aa
	sbc  c                                           ; $6662: $99
	add  a                                           ; $6663: $87
	ld   [hl], a                                     ; $6664: $77
	ld   [hl], a                                     ; $6665: $77
	ld   [hl], a                                     ; $6666: $77
	ld   [hl], a                                     ; $6667: $77
	adc  b                                           ; $6668: $88
	sbc  c                                           ; $6669: $99
	xor  c                                           ; $666a: $a9
	xor  b                                           ; $666b: $a8
	sbc  b                                           ; $666c: $98
	add  a                                           ; $666d: $87
	ld   [hl], a                                     ; $666e: $77
	halt                                             ; $666f: $76
	ld   d, h                                        ; $6670: $54
	ld   sp, $1511                                   ; $6671: $31 $11 $15
	ld   [hl], l                                     ; $6674: $75
	ld   b, d                                        ; $6675: $42

Jump_0fa_6676:
	inc  de                                          ; $6676: $13
	ld   e, c                                        ; $6677: $59
	adc  $ed                                         ; $6678: $ce $ed
	set  1, [hl]                                     ; $667a: $cb $ce
	rst  $28                                         ; $667c: $ef
	db   $fd                                         ; $667d: $fd
	jp   z, $a99a                                    ; $667e: $ca $9a $a9

	sbc  b                                           ; $6681: $98
	halt                                             ; $6682: $76
	ld   [hl], a                                     ; $6683: $77
	adc  b                                           ; $6684: $88
	adc  b                                           ; $6685: $88
	adc  b                                           ; $6686: $88

Call_0fa_6687:
	adc  d                                           ; $6687: $8a
	sbc  d                                           ; $6688: $9a
	sbc  b                                           ; $6689: $98
	adc  b                                           ; $668a: $88
	halt                                             ; $668b: $76
	ld   h, [hl]                                     ; $668c: $66
	ld   d, h                                        ; $668d: $54
	ld   sp, $1611                                   ; $668e: $31 $11 $16
	ld   h, h                                        ; $6691: $64
	ld   sp, $5923                                   ; $6692: $31 $23 $59
	xor  $dd                                         ; $6695: $ee $dd
	call z, $ffde                                    ; $6697: $cc $de $ff
	db   $ed                                         ; $669a: $ed
	cp   c                                           ; $669b: $b9
	xor  c                                           ; $669c: $a9
	sbc  c                                           ; $669d: $99
	sub  a                                           ; $669e: $97
	ld   h, a                                        ; $669f: $67
	ld   [hl], a                                     ; $66a0: $77
	sbc  b                                           ; $66a1: $98
	ld   a, b                                        ; $66a2: $78
	adc  b                                           ; $66a3: $88
	sbc  c                                           ; $66a4: $99
	sbc  d                                           ; $66a5: $9a
	xor  b                                           ; $66a6: $a8
	sub  a                                           ; $66a7: $97

Call_0fa_66a8:
	ld   h, [hl]                                     ; $66a8: $66
	ld   d, h                                        ; $66a9: $54
	ld   b, d                                        ; $66aa: $42
	ld   de, $1911                                   ; $66ab: $11 $11 $19
	xor  e                                           ; $66ae: $ab
	reti                                             ; $66af: $d9


	add  a                                           ; $66b0: $87
	adc  e                                           ; $66b1: $8b
	rst  $38                                         ; $66b2: $ff
	db   $ed                                         ; $66b3: $ed
	sub  a                                           ; $66b4: $97
	ld   h, a                                        ; $66b5: $67
	adc  l                                           ; $66b6: $8d
	cp   c                                           ; $66b7: $b9
	sub  a                                           ; $66b8: $97
	ld   h, a                                        ; $66b9: $67
	sbc  d                                           ; $66ba: $9a
	call z, $decd                                    ; $66bb: $cc $cd $de
	db   $eb                                         ; $66be: $eb
	adc  b                                           ; $66bf: $88
	halt                                             ; $66c0: $76
	ld   [hl], a                                     ; $66c1: $77
	ld   h, [hl]                                     ; $66c2: $66
	ld   d, l                                        ; $66c3: $55
	ld   d, l                                        ; $66c4: $55
	ld   b, h                                        ; $66c5: $44
	ld   b, e                                        ; $66c6: $43
	ld   de, $1411                                   ; $66c7: $11 $11 $14
	rst  $38                                         ; $66ca: $ff
	rst  $38                                         ; $66cb: $ff
	add  d                                           ; $66cc: $82
	inc  hl                                          ; $66cd: $23
	ld   a, a                                        ; $66ce: $7f
	db   $fc                                         ; $66cf: $fc
	xor  b                                           ; $66d0: $a8
	adc  d                                           ; $66d1: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66d2: $cf
	ld   sp, hl                                      ; $66d3: $f9
	ld   d, e                                        ; $66d4: $53
	dec  h                                           ; $66d5: $25
	xor  l                                           ; $66d6: $ad
	rst  $28                                         ; $66d7: $ef
	set  1, e                                        ; $66d8: $cb $cb
	cp   d                                           ; $66da: $ba
	halt                                             ; $66db: $76
	ld   h, a                                        ; $66dc: $67
	adc  c                                           ; $66dd: $89
	ld   [hl], l                                     ; $66de: $75
	ld   b, e                                        ; $66df: $43
	ld   [hl], $76                                   ; $66e0: $36 $76
	ld   h, h                                        ; $66e2: $64
	ld   bc, $1111                                   ; $66e3: $01 $11 $11
	rst  $38                                         ; $66e6: $ff
	rst  $38                                         ; $66e7: $ff
	ld   h, c                                        ; $66e8: $61
	ld   de, $ff6f                                   ; $66e9: $11 $6f $ff
	sub  a                                           ; $66ec: $97
	ld   l, b                                        ; $66ed: $68
	sbc  $e8                                         ; $66ee: $de $e8
	inc  h                                           ; $66f0: $24
	ld   b, a                                        ; $66f1: $47
	xor  $ac                                         ; $66f2: $ee $ac
	xor  c                                           ; $66f4: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66f5: $cf
	db   $eb                                         ; $66f6: $eb
	add  l                                           ; $66f7: $85
	ld   d, [hl]                                     ; $66f8: $56
	sbc  c                                           ; $66f9: $99
	halt                                             ; $66fa: $76
	ld   b, h                                        ; $66fb: $44
	ld   e, b                                        ; $66fc: $58
	ld   h, h                                        ; $66fd: $64
	ld   [hl-], a                                    ; $66fe: $32
	inc  h                                           ; $66ff: $24
	ld   sp, $1f11                                   ; $6700: $31 $11 $1f
	rst  $38                                         ; $6703: $ff
	di                                               ; $6704: $f3
	ld   de, $ff2e                                   ; $6705: $11 $2e $ff
	push hl                                          ; $6708: $e5
	inc  d                                           ; $6709: $14
	xor  [hl]                                        ; $670a: $ae
	db   $ec                                         ; $670b: $ec
	ld   h, c                                        ; $670c: $61
	ld   e, b                                        ; $670d: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $670e: $cf
	jp   c, $ae99                                    ; $670f: $da $99 $ae

	db   $ec                                         ; $6712: $ec
	sub  h                                           ; $6713: $94
	ld   [hl], $79                                   ; $6714: $36 $79
	add  l                                           ; $6716: $85
	inc  [hl]                                        ; $6717: $34
	adc  c                                           ; $6718: $89
	add  [hl]                                        ; $6719: $86
	ld   [hl+], a                                    ; $671a: $22
	ld   e, b                                        ; $671b: $58
	sub  l                                           ; $671c: $95
	ld   hl, $1e11                                   ; $671d: $21 $11 $1e
	rst  $38                                         ; $6720: $ff
	db   $f4                                         ; $6721: $f4
	ld   de, $ff1d                                   ; $6722: $11 $1d $ff
	rst  $30                                         ; $6725: $f7
	ld   h, $cd                                      ; $6726: $26 $cd

jr_0fa_6728:
	ret                                              ; $6728: $c9


	ld   h, h                                        ; $6729: $64
	ld   a, d                                        ; $672a: $7a
	cp   e                                           ; $672b: $bb
	xor  c                                           ; $672c: $a9
	xor  h                                           ; $672d: $ac
	db   $dd                                         ; $672e: $dd
	rst  ToBoot                                         ; $672f: $c7
	ld   b, l                                        ; $6730: $45
	ld   l, c                                        ; $6731: $69
	cp   c                                           ; $6732: $b9
	ld   [hl], h                                     ; $6733: $74
	ld   b, [hl]                                     ; $6734: $46
	ld   a, b                                        ; $6735: $78
	ld   [hl], l                                     ; $6736: $75
	ld   d, a                                        ; $6737: $57
	adc  c                                           ; $6738: $89
	and  l                                           ; $6739: $a5
	ld   de, $1111                                   ; $673a: $11 $11 $11
	rst  $38                                         ; $673d: $ff
	rst  $38                                         ; $673e: $ff
	ld   h, c                                        ; $673f: $61
	ld   de, $ffbf                                   ; $6740: $11 $bf $ff
	sub  a                                           ; $6743: $97
	sbc  d                                           ; $6744: $9a

Jump_0fa_6745:
	sub  l                                           ; $6745: $95
	ld   b, e                                        ; $6746: $43
	ld   l, h                                        ; $6747: $6c
	sbc  $c9                                         ; $6748: $de $c9
	ld   [hl], a                                     ; $674a: $77
	sbc  h                                           ; $674b: $9c
	res  2, [hl]                                     ; $674c: $cb $96
	ld   [hl], a                                     ; $674e: $77
	ld   a, b                                        ; $674f: $78
	ld   a, b                                        ; $6750: $78
	sbc  c                                           ; $6751: $99
	sub  l                                           ; $6752: $95
	ld   b, l                                        ; $6753: $45
	adc  d                                           ; $6754: $8a
	cp   d                                           ; $6755: $ba
	add  a                                           ; $6756: $87
	ld   d, d                                        ; $6757: $52
	ld   de, $1111                                   ; $6758: $11 $11 $11
	rst  $38                                         ; $675b: $ff
	cp   $11                                         ; $675c: $fe $11
	ld   e, $ff                                      ; $675e: $1e $ff
	db   $f4                                         ; $6760: $f4
	rla                                              ; $6761: $17
	rst  $38                                         ; $6762: $ff
	ld   hl, $ff16                                   ; $6763: $21 $16 $ff
	push hl                                          ; $6766: $e5
	jr   c, jr_0fa_6728                              ; $6767: $38 $bf

	db   $fc                                         ; $6769: $fc
	add  l                                           ; $676a: $85
	ld   b, d                                        ; $676b: $42
	ld   d, a                                        ; $676c: $57
	sbc  e                                           ; $676d: $9b
	sub  a                                           ; $676e: $97
	ld   b, h                                        ; $676f: $44
	ld   d, h                                        ; $6770: $54
	ld   d, [hl]                                     ; $6771: $56
	adc  d                                           ; $6772: $8a
	res  0, l                                        ; $6773: $cb $85
	ld   [hl-], a                                    ; $6775: $32
	ld   hl, $1911                                   ; $6776: $21 $11 $19
	rst  $38                                         ; $6779: $ff
	di                                               ; $677a: $f3
	ld   de, $ff1f                                   ; $677b: $11 $1f $ff
	ldh  a, [c]                                      ; $677e: $f2
	add  hl, hl                                      ; $677f: $29
	add  sp, $73                                     ; $6780: $e8 $73
	add  hl, sp                                      ; $6782: $39
	cp   $84                                         ; $6783: $fe $84
	ld   d, a                                        ; $6785: $57
	xor  [hl]                                        ; $6786: $ae
	and  a                                           ; $6787: $a7
	ld   d, h                                        ; $6788: $54
	ld   e, b                                        ; $6789: $58
	xor  e                                           ; $678a: $ab
	xor  d                                           ; $678b: $aa
	sub  a                                           ; $678c: $97
	adc  d                                           ; $678d: $8a
	xor  d                                           ; $678e: $aa
	xor  d                                           ; $678f: $aa
	xor  d                                           ; $6790: $aa
	sub  [hl]                                        ; $6791: $96
	inc  sp                                          ; $6792: $33
	inc  sp                                          ; $6793: $33
	ld   b, d                                        ; $6794: $42
	ld   de, rAUD1LEN                                   ; $6795: $11 $11 $ff
	ei                                               ; $6798: $fb
	ld   de, $ff1b                                   ; $6799: $11 $1b $ff
	push af                                          ; $679c: $f5
	ld   l, a                                        ; $679d: $6f
	ei                                               ; $679e: $fb
	ld   de, $ff19                                   ; $679f: $11 $19 $ff
	rst  $30                                         ; $67a2: $f7
	ld   h, $cf                                      ; $67a3: $26 $cf
	jp   z, $ca9a                                    ; $67a5: $ca $9a $ca

	ld   d, c                                        ; $67a8: $51
	dec  d                                           ; $67a9: $15
	sbc  $93                                         ; $67aa: $de $93
	ld   de, $db7d                                   ; $67ac: $11 $7d $db
	ld   h, l                                        ; $67af: $65
	ld   l, d                                        ; $67b0: $6a
	and  h                                           ; $67b1: $a4
	ld   de, $1111                                   ; $67b2: $11 $11 $11
	rst  $38                                         ; $67b5: $ff
	cp   $11                                         ; $67b6: $fe $11
	inc  e                                           ; $67b8: $1c
	rst  $38                                         ; $67b9: $ff
	or   $15                                         ; $67ba: $f6 $15
	ret  c                                           ; $67bc: $d8

	sub  h                                           ; $67bd: $94
	scf                                              ; $67be: $37
	rst  $38                                         ; $67bf: $ff
	add  e                                           ; $67c0: $83
	scf                                              ; $67c1: $37
	sbc  l                                           ; $67c2: $9d
	add  $44                                         ; $67c3: $c6 $44
	ld   l, c                                        ; $67c5: $69
	xor  b                                           ; $67c6: $a8
	xor  d                                           ; $67c7: $aa
	cp   c                                           ; $67c8: $b9
	sbc  c                                           ; $67c9: $99
	adc  b                                           ; $67ca: $88
	cp   [hl]                                        ; $67cb: $be
	jp   c, $2285                                    ; $67cc: $da $85 $22

	ld   d, [hl]                                     ; $67cf: $56
	ld   b, c                                        ; $67d0: $41
	ld   de, rAUD1LEN                                   ; $67d1: $11 $11 $ff
	cp   $11                                         ; $67d4: $fe $11
	dec  d                                           ; $67d6: $15
	rst  $38                                         ; $67d7: $ff
	ld   sp, hl                                      ; $67d8: $f9
	ld   c, c                                        ; $67d9: $49
	db   $fd                                         ; $67da: $fd
	ld   d, c                                        ; $67db: $51
	inc  de                                          ; $67dc: $13
	rst  $38                                         ; $67dd: $ff
	ei                                               ; $67de: $fb
	ld   [hl-], a                                    ; $67df: $32
	ld   e, h                                        ; $67e0: $5c
	rst  $38                                         ; $67e1: $ff
	jp   c, Jump_0fa_5386                            ; $67e2: $da $86 $53

	ld   b, [hl]                                     ; $67e5: $46
	sbc  c                                           ; $67e6: $99
	sub  [hl]                                        ; $67e7: $96
	inc  sp                                          ; $67e8: $33
	ld   e, b                                        ; $67e9: $58
	add  a                                           ; $67ea: $87
	halt                                             ; $67eb: $76
	ld   b, e                                        ; $67ec: $43
	ld   de, $1f11                                   ; $67ed: $11 $11 $1f
	rst  $38                                         ; $67f0: $ff
	ld   h, c                                        ; $67f1: $61
	ld   de, $feff                                   ; $67f2: $11 $ff $fe
	ld   b, h                                        ; $67f5: $44
	sbc  [hl]                                        ; $67f6: $9e
	ld   h, e                                        ; $67f7: $63
	jr   @+$01                                       ; $67f8: $18 $ff

	push af                                          ; $67fa: $f5
	inc  de                                          ; $67fb: $13
	adc  $fd                                         ; $67fc: $ce $fd
	add  l                                           ; $67fe: $85
	ld   h, [hl]                                     ; $67ff: $66
	ld   h, [hl]                                     ; $6800: $66
	ld   d, a                                        ; $6801: $57
	ld   a, c                                        ; $6802: $79
	ld   [hl], l                                     ; $6803: $75
	inc  [hl]                                        ; $6804: $34
	ld   h, a                                        ; $6805: $67
	halt                                             ; $6806: $76
	ld   [hl], h                                     ; $6807: $74
	ld   bc, rAUD1LEN                                   ; $6808: $01 $11 $ff
	rst  $38                                         ; $680b: $ff
	ld   de, rAUD1ENV                                   ; $680c: $11 $12 $ff
	or   $69                                         ; $680f: $f6 $69
	rst  $38                                         ; $6811: $ff
	ld   [hl], c                                     ; $6812: $71
	inc  de                                          ; $6813: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6814: $cf
	ei                                               ; $6815: $fb
	ld   [hl], a                                     ; $6816: $77
	xor  h                                           ; $6817: $ac
	ret  z                                           ; $6818: $c8

	halt                                             ; $6819: $76
	xor  h                                           ; $681a: $ac
	or   a                                           ; $681b: $b7
	ld   [hl+], a                                    ; $681c: $22
	ld   c, c                                        ; $681d: $49
	sub  [hl]                                        ; $681e: $96
	ld   b, h                                        ; $681f: $44
	ld   b, c                                        ; $6820: $41
	ld   de, rAUD1LEN                                   ; $6821: $11 $11 $ff
	ld   a, [$1c11]                                  ; $6824: $fa $11 $1c
	rst  $38                                         ; $6827: $ff
	pop  bc                                          ; $6828: $c1
	dec  de                                          ; $6829: $1b
	rst  $38                                         ; $682a: $ff
	sub  c                                           ; $682b: $91
	ld   de, $faff                                   ; $682c: $11 $ff $fa
	inc  de                                          ; $682f: $13
	cp   a                                           ; $6830: $bf
	ld   a, [$7c32]                                  ; $6831: $fa $32 $7c
	ld   [$3731], a                                  ; $6834: $ea $31 $37
	adc  c                                           ; $6837: $89
	ld   b, d                                        ; $6838: $42
	dec  h                                           ; $6839: $25
	ld   b, c                                        ; $683a: $41
	ld   de, $ff1f                                   ; $683b: $11 $1f $ff
	pop  bc                                          ; $683e: $c1
	ld   de, $fc8f                                   ; $683f: $11 $8f $fc
	ld   [de], a                                     ; $6842: $12
	rst  JumpTable                                         ; $6843: $df
	db   $fc                                         ; $6844: $fc
	ld   de, $ff1c                                   ; $6845: $11 $1c $ff
	sub  $5a                                         ; $6848: $d6 $5a
	rst  $38                                         ; $684a: $ff
	sub  l                                           ; $684b: $95
	ld   c, c                                        ; $684c: $49
	call z, $23a5                                    ; $684d: $cc $a5 $23
	ld   h, a                                        ; $6850: $67
	ld   [hl], h                                     ; $6851: $74
	ld   [hl-], a                                    ; $6852: $32
	ld   de, $1f11                                   ; $6853: $11 $11 $1f
	rst  $38                                         ; $6856: $ff
	pop  af                                          ; $6857: $f1
	ld   de, $fc6f                                   ; $6858: $11 $6f $fc
	ld   de, $ff9f                                   ; $685b: $11 $9f $ff
	ld   de, $ff19                                   ; $685e: $11 $19 $ff
	ld   hl, sp+$7a                                  ; $6861: $f8 $7a
	rst  $38                                         ; $6863: $ff
	add  e                                           ; $6864: $83
	jr   c, @-$1f                                    ; $6865: $38 $df

	add  $23                                         ; $6867: $c6 $23
	ld   d, [hl]                                     ; $6869: $56
	ld   h, h                                        ; $686a: $64
	ld   [hl-], a                                    ; $686b: $32
	ld   [hl-], a                                    ; $686c: $32
	ld   de, $ff1f                                   ; $686d: $11 $1f $ff
	pop  af                                          ; $6870: $f1
	ld   de, $fa3f                                   ; $6871: $11 $3f $fa
	ld   de, $ff7f                                   ; $6874: $11 $7f $ff
	ld   de, $cf14                                   ; $6877: $11 $14 $cf
	jp   hl                                          ; $687a: $e9


	adc  l                                           ; $687b: $8d
	rst  $38                                         ; $687c: $ff
	and  h                                           ; $687d: $a4
	dec  [hl]                                        ; $687e: $35
	xor  l                                           ; $687f: $ad
	or   a                                           ; $6880: $b7
	ld   b, l                                        ; $6881: $45
	ld   h, [hl]                                     ; $6882: $66
	ld   h, l                                        ; $6883: $65
	ld   sp, $1121                                   ; $6884: $31 $21 $11
	rra                                              ; $6887: $1f
	rst  $38                                         ; $6888: $ff
	pop  af                                          ; $6889: $f1
	ld   de, $f66f                                   ; $688a: $11 $6f $f6
	inc  h                                           ; $688d: $24
	xor  a                                           ; $688e: $af
	rst  $38                                         ; $688f: $ff
	ld   sp, $7914                                   ; $6890: $31 $14 $79
	and  [hl]                                        ; $6893: $a6
	adc  a                                           ; $6894: $8f
	rst  $38                                         ; $6895: $ff
	or   [hl]                                        ; $6896: $b6
	ld   d, l                                        ; $6897: $55
	ld   a, d                                        ; $6898: $7a
	add  [hl]                                        ; $6899: $86

Call_0fa_689a:
	ld   d, a                                        ; $689a: $57
	ld   [hl], a                                     ; $689b: $77
	ld   [hl], l                                     ; $689c: $75
	ld   hl, $1111                                   ; $689d: $21 $11 $11
	xor  a                                           ; $68a0: $af
	rst  $38                                         ; $68a1: $ff
	jp   nc, $dc11                                   ; $68a2: $d2 $11 $dc

	ld   b, c                                        ; $68a5: $41
	ld   d, $ff                                      ; $68a6: $16 $ff
	db   $fd                                         ; $68a8: $fd
	ld   b, e                                        ; $68a9: $43
	ld   d, [hl]                                     ; $68aa: $56
	ld   d, [hl]                                     ; $68ab: $56
	inc  sp                                          ; $68ac: $33
	ld   l, a                                        ; $68ad: $6f
	rst  $38                                         ; $68ae: $ff
	ei                                               ; $68af: $fb
	ld   [hl], l                                     ; $68b0: $75
	add  a                                           ; $68b1: $87
	ld   d, d                                        ; $68b2: $52
	dec  [hl]                                        ; $68b3: $35
	ld   a, c                                        ; $68b4: $79
	ld   [hl], l                                     ; $68b5: $75
	inc  sp                                          ; $68b6: $33
	ld   hl, rAUD1LEN                                   ; $68b7: $21 $11 $ff
	rst  $38                                         ; $68ba: $ff
	add  $6d                                         ; $68bb: $c6 $6d
	rst  $30                                         ; $68bd: $f7
	ld   de, $df17                                   ; $68be: $11 $17 $df
	ld   a, [$a7ab]                                  ; $68c1: $fa $ab $a7
	ld   h, h                                        ; $68c4: $64
	inc  hl                                          ; $68c5: $23
	ld   l, h                                        ; $68c6: $6c
	sbc  $dd                                         ; $68c7: $de $dd
	call z, Call_0fa_53b9                            ; $68c9: $cc $b9 $53
	ld   b, h                                        ; $68cc: $44
	ld   d, l                                        ; $68cd: $55
	ld   b, e                                        ; $68ce: $43
	ld   [hl+], a                                    ; $68cf: $22
	ld   hl, $ff1a                                   ; $68d0: $21 $1a $ff
	db   $db                                         ; $68d3: $db
	and  a                                           ; $68d4: $a7
	xor  [hl]                                        ; $68d5: $ae
	rst  ToBoot                                         ; $68d6: $c7
	inc  [hl]                                        ; $68d7: $34
	ld   l, b                                        ; $68d8: $68
	xor  h                                           ; $68d9: $ac
	xor  c                                           ; $68da: $a9
	xor  d                                           ; $68db: $aa
	sbc  b                                           ; $68dc: $98
	ld   [hl], a                                     ; $68dd: $77
	adc  b                                           ; $68de: $88
	sbc  c                                           ; $68df: $99
	add  a                                           ; $68e0: $87
	sbc  c                                           ; $68e1: $99
	sbc  c                                           ; $68e2: $99
	sbc  b                                           ; $68e3: $98
	adc  c                                           ; $68e4: $89
	sbc  b                                           ; $68e5: $98
	ld   [hl], a                                     ; $68e6: $77
	halt                                             ; $68e7: $76
	ld   h, [hl]                                     ; $68e8: $66
	ld   h, h                                        ; $68e9: $64
	inc  hl                                          ; $68ea: $23
	ld   a, c                                        ; $68eb: $79
	add  a                                           ; $68ec: $87
	halt                                             ; $68ed: $76
	ld   a, b                                        ; $68ee: $78
	xor  e                                           ; $68ef: $ab
	sbc  b                                           ; $68f0: $98
	adc  c                                           ; $68f1: $89
	sbc  d                                           ; $68f2: $9a
	sbc  c                                           ; $68f3: $99
	adc  c                                           ; $68f4: $89
	sbc  c                                           ; $68f5: $99
	sbc  c                                           ; $68f6: $99
	xor  e                                           ; $68f7: $ab
	xor  c                                           ; $68f8: $a9
	sbc  c                                           ; $68f9: $99
	adc  b                                           ; $68fa: $88
	adc  c                                           ; $68fb: $89
	adc  b                                           ; $68fc: $88
	adc  c                                           ; $68fd: $89
	sbc  b                                           ; $68fe: $98
	adc  b                                           ; $68ff: $88
	adc  c                                           ; $6900: $89
	adc  b                                           ; $6901: $88
	adc  b                                           ; $6902: $88
	halt                                             ; $6903: $76
	ld   h, [hl]                                     ; $6904: $66
	ld   h, [hl]                                     ; $6905: $66
	ld   h, [hl]                                     ; $6906: $66
	ld   d, l                                        ; $6907: $55
	ld   d, l                                        ; $6908: $55
	ld   h, [hl]                                     ; $6909: $66
	ld   [hl], a                                     ; $690a: $77
	adc  c                                           ; $690b: $89
	sbc  d                                           ; $690c: $9a
	xor  c                                           ; $690d: $a9
	sbc  c                                           ; $690e: $99
	sbc  d                                           ; $690f: $9a
	xor  e                                           ; $6910: $ab
	xor  c                                           ; $6911: $a9
	xor  c                                           ; $6912: $a9
	sbc  c                                           ; $6913: $99
	sbc  b                                           ; $6914: $98
	adc  b                                           ; $6915: $88
	adc  c                                           ; $6916: $89
	adc  b                                           ; $6917: $88
	add  a                                           ; $6918: $87
	ld   [hl], a                                     ; $6919: $77
	ld   [hl], a                                     ; $691a: $77
	ld   a, b                                        ; $691b: $78
	ld   [hl], a                                     ; $691c: $77
	ld   a, b                                        ; $691d: $78
	adc  b                                           ; $691e: $88
	ld   [hl], a                                     ; $691f: $77
	ld   [hl], a                                     ; $6920: $77
	ld   [hl], a                                     ; $6921: $77
	ld   [hl], a                                     ; $6922: $77
	ld   h, [hl]                                     ; $6923: $66
	ld   h, a                                        ; $6924: $67
	ld   [hl], a                                     ; $6925: $77
	ld   [hl], a                                     ; $6926: $77
	adc  c                                           ; $6927: $89
	sbc  b                                           ; $6928: $98
	adc  c                                           ; $6929: $89
	sbc  c                                           ; $692a: $99
	sbc  c                                           ; $692b: $99
	sbc  c                                           ; $692c: $99
	sbc  c                                           ; $692d: $99
	sbc  c                                           ; $692e: $99
	sbc  b                                           ; $692f: $98
	adc  b                                           ; $6930: $88
	adc  b                                           ; $6931: $88
	sbc  b                                           ; $6932: $98
	adc  b                                           ; $6933: $88
	adc  c                                           ; $6934: $89
	adc  b                                           ; $6935: $88
	ld   [hl], a                                     ; $6936: $77
	adc  b                                           ; $6937: $88
	adc  b                                           ; $6938: $88
	adc  b                                           ; $6939: $88
	ld   a, b                                        ; $693a: $78
	adc  b                                           ; $693b: $88
	ld   [hl], a                                     ; $693c: $77
	adc  b                                           ; $693d: $88
	adc  b                                           ; $693e: $88
	adc  b                                           ; $693f: $88
	adc  b                                           ; $6940: $88
	add  a                                           ; $6941: $87
	ld   [hl], a                                     ; $6942: $77
	ld   [hl], a                                     ; $6943: $77
	ld   [hl], a                                     ; $6944: $77
	ld   [hl], a                                     ; $6945: $77
	ld   [hl], a                                     ; $6946: $77
	adc  b                                           ; $6947: $88
	adc  b                                           ; $6948: $88
	adc  b                                           ; $6949: $88
	sbc  c                                           ; $694a: $99
	sbc  c                                           ; $694b: $99
	sbc  c                                           ; $694c: $99
	adc  c                                           ; $694d: $89
	sbc  b                                           ; $694e: $98
	adc  b                                           ; $694f: $88
	adc  b                                           ; $6950: $88
	adc  c                                           ; $6951: $89
	sbc  b                                           ; $6952: $98
	adc  b                                           ; $6953: $88
	adc  b                                           ; $6954: $88
	adc  b                                           ; $6955: $88
	adc  b                                           ; $6956: $88
	adc  b                                           ; $6957: $88
	adc  b                                           ; $6958: $88
	adc  c                                           ; $6959: $89
	adc  b                                           ; $695a: $88
	adc  b                                           ; $695b: $88
	adc  b                                           ; $695c: $88
	add  a                                           ; $695d: $87
	ld   [hl], a                                     ; $695e: $77
	ld   a, b                                        ; $695f: $78
	adc  b                                           ; $6960: $88
	adc  b                                           ; $6961: $88
	adc  b                                           ; $6962: $88
	adc  b                                           ; $6963: $88
	adc  b                                           ; $6964: $88
	adc  b                                           ; $6965: $88
	adc  b                                           ; $6966: $88

Call_0fa_6967:
	adc  b                                           ; $6967: $88
	add  a                                           ; $6968: $87
	ld   [hl], a                                     ; $6969: $77
	ld   [hl], a                                     ; $696a: $77
	ld   [hl], a                                     ; $696b: $77
	ld   [hl], a                                     ; $696c: $77
	adc  b                                           ; $696d: $88
	adc  b                                           ; $696e: $88
	adc  b                                           ; $696f: $88
	adc  c                                           ; $6970: $89
	adc  b                                           ; $6971: $88
	sbc  c                                           ; $6972: $99
	sbc  c                                           ; $6973: $99
	sbc  c                                           ; $6974: $99

Jump_0fa_6975:
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
	adc  b                                           ; $6981: $88
	adc  b                                           ; $6982: $88
	adc  b                                           ; $6983: $88
	adc  b                                           ; $6984: $88
	adc  b                                           ; $6985: $88
	adc  b                                           ; $6986: $88
	adc  b                                           ; $6987: $88
	adc  b                                           ; $6988: $88
	adc  b                                           ; $6989: $88
	adc  b                                           ; $698a: $88
	adc  b                                           ; $698b: $88
	adc  b                                           ; $698c: $88
	adc  b                                           ; $698d: $88
	adc  b                                           ; $698e: $88
	adc  b                                           ; $698f: $88
	adc  b                                           ; $6990: $88
	adc  b                                           ; $6991: $88
	adc  b                                           ; $6992: $88
	adc  b                                           ; $6993: $88
	adc  b                                           ; $6994: $88
	adc  b                                           ; $6995: $88
	adc  b                                           ; $6996: $88
	adc  b                                           ; $6997: $88
	adc  b                                           ; $6998: $88
	adc  b                                           ; $6999: $88
	adc  b                                           ; $699a: $88
	adc  b                                           ; $699b: $88
	adc  b                                           ; $699c: $88
	ld   [hl], a                                     ; $699d: $77
	adc  b                                           ; $699e: $88
	adc  b                                           ; $699f: $88
	adc  b                                           ; $69a0: $88
	adc  b                                           ; $69a1: $88
	adc  b                                           ; $69a2: $88
	sbc  c                                           ; $69a3: $99
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
	sbc  b                                           ; $69c0: $98
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
	adc  b                                           ; $6a0e: $88
	adc  b                                           ; $6a0f: $88
	adc  b                                           ; $6a10: $88
	adc  b                                           ; $6a11: $88
	adc  b                                           ; $6a12: $88
	adc  b                                           ; $6a13: $88
	adc  b                                           ; $6a14: $88
	adc  b                                           ; $6a15: $88
	adc  b                                           ; $6a16: $88
	adc  b                                           ; $6a17: $88
	adc  b                                           ; $6a18: $88
	adc  b                                           ; $6a19: $88
	adc  b                                           ; $6a1a: $88
	adc  b                                           ; $6a1b: $88
	adc  b                                           ; $6a1c: $88
	adc  b                                           ; $6a1d: $88
	adc  b                                           ; $6a1e: $88
	adc  b                                           ; $6a1f: $88
	adc  b                                           ; $6a20: $88
	adc  b                                           ; $6a21: $88
	adc  b                                           ; $6a22: $88
	adc  b                                           ; $6a23: $88
	adc  b                                           ; $6a24: $88
	adc  b                                           ; $6a25: $88
	adc  b                                           ; $6a26: $88
	adc  b                                           ; $6a27: $88
	adc  b                                           ; $6a28: $88
	adc  b                                           ; $6a29: $88
	adc  b                                           ; $6a2a: $88
	adc  b                                           ; $6a2b: $88
	adc  b                                           ; $6a2c: $88
	adc  b                                           ; $6a2d: $88
	adc  b                                           ; $6a2e: $88
	adc  b                                           ; $6a2f: $88
	adc  b                                           ; $6a30: $88
	adc  b                                           ; $6a31: $88
	adc  b                                           ; $6a32: $88
	adc  b                                           ; $6a33: $88
	adc  b                                           ; $6a34: $88
	adc  b                                           ; $6a35: $88
	adc  c                                           ; $6a36: $89
	adc  b                                           ; $6a37: $88
	adc  b                                           ; $6a38: $88
	adc  b                                           ; $6a39: $88
	sbc  b                                           ; $6a3a: $98
	adc  b                                           ; $6a3b: $88
	sbc  b                                           ; $6a3c: $98
	adc  b                                           ; $6a3d: $88
	adc  c                                           ; $6a3e: $89
	sbc  c                                           ; $6a3f: $99
	add  a                                           ; $6a40: $87
	adc  b                                           ; $6a41: $88
	adc  b                                           ; $6a42: $88
	add  a                                           ; $6a43: $87
	ld   [hl], a                                     ; $6a44: $77
	adc  b                                           ; $6a45: $88
	ld   a, b                                        ; $6a46: $78
	adc  c                                           ; $6a47: $89
	sbc  b                                           ; $6a48: $98
	adc  b                                           ; $6a49: $88
	sbc  c                                           ; $6a4a: $99
	adc  c                                           ; $6a4b: $89
	sbc  c                                           ; $6a4c: $99
	adc  b                                           ; $6a4d: $88
	adc  c                                           ; $6a4e: $89
	adc  b                                           ; $6a4f: $88
	adc  b                                           ; $6a50: $88
	add  a                                           ; $6a51: $87
	add  a                                           ; $6a52: $87
	ld   [hl], a                                     ; $6a53: $77

Call_0fa_6a54:
	ld   [hl], a                                     ; $6a54: $77
	ld   [hl], a                                     ; $6a55: $77
	halt                                             ; $6a56: $76
	ld   h, [hl]                                     ; $6a57: $66
	ld   h, [hl]                                     ; $6a58: $66
	ld   [hl], a                                     ; $6a59: $77
	ld   a, b                                        ; $6a5a: $78
	adc  b                                           ; $6a5b: $88
	sbc  d                                           ; $6a5c: $9a
	sbc  c                                           ; $6a5d: $99
	adc  b                                           ; $6a5e: $88
	sbc  c                                           ; $6a5f: $99
	sbc  c                                           ; $6a60: $99
	sbc  c                                           ; $6a61: $99
	sbc  c                                           ; $6a62: $99
	adc  b                                           ; $6a63: $88
	adc  b                                           ; $6a64: $88
	adc  c                                           ; $6a65: $89
	sbc  c                                           ; $6a66: $99
	adc  b                                           ; $6a67: $88
	halt                                             ; $6a68: $76
	ld   d, h                                        ; $6a69: $54
	ld   [hl-], a                                    ; $6a6a: $32
	ld   [de], a                                     ; $6a6b: $12
	ld   a, d                                        ; $6a6c: $7a
	cp   c                                           ; $6a6d: $b9
	adc  c                                           ; $6a6e: $89
	cp   h                                           ; $6a6f: $bc
	db   $db                                         ; $6a70: $db
	halt                                             ; $6a71: $76
	ld   a, b                                        ; $6a72: $78
	add  a                                           ; $6a73: $87
	ld   [hl], a                                     ; $6a74: $77
	ld   a, c                                        ; $6a75: $79
	cp   e                                           ; $6a76: $bb
	sbc  d                                           ; $6a77: $9a
	cp   e                                           ; $6a78: $bb
	cp   e                                           ; $6a79: $bb
	xor  b                                           ; $6a7a: $a8
	ld   a, b                                        ; $6a7b: $78
	add  a                                           ; $6a7c: $87
	ld   h, [hl]                                     ; $6a7d: $66
	ld   d, h                                        ; $6a7e: $54
	ld   [hl-], a                                    ; $6a7f: $32
	ld   de, $ef16                                   ; $6a80: $11 $16 $ef
	cp   c                                           ; $6a83: $b9
	xor  e                                           ; $6a84: $ab
	cp   l                                           ; $6a85: $bd
	sub  $35                                         ; $6a86: $d6 $35
	xor  c                                           ; $6a88: $a9
	adc  d                                           ; $6a89: $8a
	xor  c                                           ; $6a8a: $a9
	xor  l                                           ; $6a8b: $ad
	db   $db                                         ; $6a8c: $db
	adc  c                                           ; $6a8d: $89
	sub  a                                           ; $6a8e: $97
	adc  c                                           ; $6a8f: $89
	sub  [hl]                                        ; $6a90: $96
	adc  c                                           ; $6a91: $89
	sub  a                                           ; $6a92: $97
	halt                                             ; $6a93: $76
	ld   b, d                                        ; $6a94: $42
	ld   de, $af11                                   ; $6a95: $11 $11 $af
	db   $fc                                         ; $6a98: $fc
	xor  h                                           ; $6a99: $ac
	rst  JumpTable                                         ; $6a9a: $df
	rst  $30                                         ; $6a9b: $f7
	ld   de, $ac38                                   ; $6a9c: $11 $38 $ac
	db   $ed                                         ; $6a9f: $ed
	rst  $28                                         ; $6aa0: $ef
	ld   a, [$9756]                                  ; $6aa1: $fa $56 $97
	ld   a, c                                        ; $6aa4: $79
	sbc  b                                           ; $6aa5: $98
	sbc  h                                           ; $6aa6: $9c
	and  [hl]                                        ; $6aa7: $a6
	ld   b, l                                        ; $6aa8: $45
	ld   b, c                                        ; $6aa9: $41
	ld   de, $5f11                                   ; $6aaa: $11 $11 $5f
	rst  $38                                         ; $6aad: $ff
	xor  d                                           ; $6aae: $aa
	sbc  h                                           ; $6aaf: $9c
	ld   [$2c11], a                                  ; $6ab0: $ea $11 $2c
	rst  $28                                         ; $6ab3: $ef
	rst  $38                                         ; $6ab4: $ff
	db   $dd                                         ; $6ab5: $dd
	rst  $30                                         ; $6ab6: $f7
	inc  de                                          ; $6ab7: $13
	adc  c                                           ; $6ab8: $89
	sbc  e                                           ; $6ab9: $9b
	cp   b                                           ; $6aba: $b8
	sbc  h                                           ; $6abb: $9c
	or   a                                           ; $6abc: $b7
	ld   d, l                                        ; $6abd: $55
	ld   b, d                                        ; $6abe: $42
	ld   hl, $1811                                   ; $6abf: $21 $11 $18
	rst  $38                                         ; $6ac2: $ff
	or   $25                                         ; $6ac3: $f6 $25
	sbc  h                                           ; $6ac5: $9c
	ld   d, c                                        ; $6ac6: $51
	inc  de                                          ; $6ac7: $13
	rst  $38                                         ; $6ac8: $ff
	rst  $38                                         ; $6ac9: $ff
	ei                                               ; $6aca: $fb
	sbc  c                                           ; $6acb: $99
	ld   b, c                                        ; $6acc: $41
	add  hl, hl                                      ; $6acd: $29
	jp   z, $babb                                    ; $6ace: $ca $bb $ba

	xor  c                                           ; $6ad1: $a9
	ld   [hl], h                                     ; $6ad2: $74
	ld   b, h                                        ; $6ad3: $44
	ld   de, $1111                                   ; $6ad4: $11 $11 $11
	cpl                                              ; $6ad7: $2f
	rst  $38                                         ; $6ad8: $ff
	ld   sp, $b915                                   ; $6ad9: $31 $15 $b9
	ld   de, $ff1f                                   ; $6adc: $11 $1f $ff
	ei                                               ; $6adf: $fb
	ld   d, d                                        ; $6ae0: $52
	ld   h, [hl]                                     ; $6ae1: $66
	ld   de, $ff6f                                   ; $6ae2: $11 $6f $ff
	jp   c, $aa68                                    ; $6ae5: $da $68 $aa

	ld   d, e                                        ; $6ae8: $53
	ld   sp, $1111                                   ; $6ae9: $31 $11 $11
	ld   de, $ff5f                                   ; $6aec: $11 $5f $ff
	ld   de, $ff17                                   ; $6aef: $11 $17 $ff
	ld   de, $ff3f                                   ; $6af2: $11 $3f $ff
	and  c                                           ; $6af5: $a1
	dec  d                                           ; $6af6: $15
	add  $11                                         ; $6af7: $c6 $11
	ld   a, a                                        ; $6af9: $7f
	rst  $38                                         ; $6afa: $ff
	add  $37                                         ; $6afb: $c6 $37
	sub  a                                           ; $6afd: $97
	ld   d, l                                        ; $6afe: $55
	ld   h, l                                        ; $6aff: $65
	ld   sp, $2311                                   ; $6b00: $31 $11 $23
	ld   de, $fc8f                                   ; $6b03: $11 $8f $fc
	ld   de, $ff2a                                   ; $6b06: $11 $2a $ff
	ld   de, $fcff                                   ; $6b09: $11 $ff $fc
	ld   b, c                                        ; $6b0c: $41
	inc  [hl]                                        ; $6b0d: $34
	add  h                                           ; $6b0e: $84
	dec  d                                           ; $6b0f: $15
	rst  $28                                         ; $6b10: $ef
	rst  $38                                         ; $6b11: $ff
	xor  c                                           ; $6b12: $a9
	ld   h, [hl]                                     ; $6b13: $66
	ld   d, [hl]                                     ; $6b14: $56
	halt                                             ; $6b15: $76
	ld   b, c                                        ; $6b16: $41
	ld   de, $1111                                   ; $6b17: $11 $11 $11
	rst  $28                                         ; $6b1a: $ef
	or   $11                                         ; $6b1b: $f6 $11
	ld   e, a                                        ; $6b1d: $5f
	ei                                               ; $6b1e: $fb
	ld   de, $fcff                                   ; $6b1f: $11 $ff $fc
	ld   de, $f31c                                   ; $6b22: $11 $1c $f3
	ld   de, $ffff                                   ; $6b25: $11 $ff $ff
	ld   b, c                                        ; $6b28: $41
	add  hl, de                                      ; $6b29: $19
	sbc  b                                           ; $6b2a: $98
	sbc  c                                           ; $6b2b: $99
	sub  [hl]                                        ; $6b2c: $96
	ld   sp, $1111                                   ; $6b2d: $31 $11 $11
	ld   de, $fdff                                   ; $6b30: $11 $ff $fd
	ld   de, $fa1b                                   ; $6b33: $11 $1b $fa
	ld   de, $fdff                                   ; $6b36: $11 $ff $fd
	ld   de, $b548                                   ; $6b39: $11 $48 $b5
	ld   [de], a                                     ; $6b3c: $12
	rst  JumpTable                                         ; $6b3d: $df
	ei                                               ; $6b3e: $fb
	ld   b, l                                        ; $6b3f: $45
	ld   a, c                                        ; $6b40: $79
	adc  c                                           ; $6b41: $89
	add  l                                           ; $6b42: $85
	ld   [hl-], a                                    ; $6b43: $32
	inc  [hl]                                        ; $6b44: $34
	ld   de, rAUD1LEN                                   ; $6b45: $11 $11 $ff
	ei                                               ; $6b48: $fb
	ld   de, $fb2f                                   ; $6b49: $11 $2f $fb
	ld   de, $fedf                                   ; $6b4c: $11 $df $fe
	ld   de, $e53d                                   ; $6b4f: $11 $3d $e5
	ld   [de], a                                     ; $6b52: $12
	rst  JumpTable                                         ; $6b53: $df
	db   $fc                                         ; $6b54: $fc
	ld   de, $dc5d                                   ; $6b55: $11 $5d $dc
	sub  l                                           ; $6b58: $95
	ld   b, c                                        ; $6b59: $41
	ld   de, $1111                                   ; $6b5a: $11 $11 $11
	rra                                              ; $6b5d: $1f
	rst  $38                                         ; $6b5e: $ff
	ld   de, $ff16                                   ; $6b5f: $11 $16 $ff
	ld   de, $ff6f                                   ; $6b62: $11 $6f $ff
	ld   h, c                                        ; $6b65: $61
	ld   d, $c9                                      ; $6b66: $16 $c9
	ld   hl, $ff5f                                   ; $6b68: $21 $5f $ff
	add  c                                           ; $6b6b: $81
	ld   d, $df                                      ; $6b6c: $16 $df
	rst  ToBoot                                         ; $6b6e: $c7
	ld   d, l                                        ; $6b6f: $55
	ld   b, c                                        ; $6b70: $41
	ld   de, $1111                                   ; $6b71: $11 $11 $11
	rst  $38                                         ; $6b74: $ff
	rst  $30                                         ; $6b75: $f7
	ld   de, $f71b                                   ; $6b76: $11 $1b $f7
	ld   de, $feff                                   ; $6b79: $11 $ff $fe
	ld   de, $c61a                                   ; $6b7c: $11 $1a $c6
	ld   de, $fdff                                   ; $6b7f: $11 $ff $fd
	ld   de, $fe3d                                   ; $6b82: $11 $3d $fe
	ld   d, e                                        ; $6b85: $53
	inc  sp                                          ; $6b86: $33
	ld   de, $1111                                   ; $6b87: $11 $11 $11
	sbc  a                                           ; $6b8a: $9f
	rst  $38                                         ; $6b8b: $ff
	ld   de, $fd18                                   ; $6b8c: $11 $18 $fd
	ld   de, $feef                                   ; $6b8f: $11 $ef $fe
	ld   de, $b749                                   ; $6b92: $11 $49 $b7
	inc  hl                                          ; $6b95: $23
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b96: $cf
	ei                                               ; $6b97: $fb
	inc  de                                          ; $6b98: $13
	ld   a, d                                        ; $6b99: $7a
	call z, $21a4                                    ; $6b9a: $cc $a4 $21
	ld   de, $1111                                   ; $6b9d: $11 $11 $11
	rst  $38                                         ; $6ba0: $ff
	pop  af                                          ; $6ba1: $f1
	ld   de, $f51f                                   ; $6ba2: $11 $1f $f5
	ld   de, $f1ff                                   ; $6ba5: $11 $ff $f1
	ld   de, $c4cf                                   ; $6ba8: $11 $cf $c4
	rlca                                             ; $6bab: $07
	rst  $38                                         ; $6bac: $ff
	pop  hl                                          ; $6bad: $e1
	ld   d, $de                                      ; $6bae: $16 $de
	cp   d                                           ; $6bb0: $ba
	ld   h, l                                        ; $6bb1: $65
	ld   b, c                                        ; $6bb2: $41
	ld   de, $1111                                   ; $6bb3: $11 $11 $11
	rst  $38                                         ; $6bb6: $ff
	pop  af                                          ; $6bb7: $f1
	ld   de, $f17f                                   ; $6bb8: $11 $7f $f1
	inc  de                                          ; $6bbb: $13
	rst  $38                                         ; $6bbc: $ff
	pop  af                                          ; $6bbd: $f1
	ld   de, $d2bf                                   ; $6bbe: $11 $bf $d2
	dec  d                                           ; $6bc1: $15
	rst  $38                                         ; $6bc2: $ff
	pop  af                                          ; $6bc3: $f1
	inc  de                                          ; $6bc4: $13
	rst  JumpTable                                         ; $6bc5: $df
	ret  c                                           ; $6bc6: $d8

	ld   b, h                                        ; $6bc7: $44
	ld   sp, $1111                                   ; $6bc8: $31 $11 $11
	inc  e                                           ; $6bcb: $1c
	rst  $38                                         ; $6bcc: $ff
	pop  hl                                          ; $6bcd: $e1
	ld   de, $b1bf                                   ; $6bce: $11 $bf $b1
	rra                                              ; $6bd1: $1f
	rst  $38                                         ; $6bd2: $ff
	ld   [hl], c                                     ; $6bd3: $71

jr_0fa_6bd4:
	jr   jr_0fa_6bd4                                 ; $6bd4: $18 $fe

	add  d                                           ; $6bd6: $82
	ld   c, a                                        ; $6bd7: $4f
	rst  $38                                         ; $6bd8: $ff
	ld   de, $ed3c                                   ; $6bd9: $11 $3c $ed
	and  l                                           ; $6bdc: $a5
	inc  h                                           ; $6bdd: $24
	ld   [hl-], a                                    ; $6bde: $32
	ld   de, $1f11                                   ; $6bdf: $11 $11 $1f
	rst  $38                                         ; $6be2: $ff
	ld   de, $fe18                                   ; $6be3: $11 $18 $fe
	ld   de, $ff1f                                   ; $6be6: $11 $1f $ff
	ld   de, $cb19                                   ; $6be9: $11 $19 $cb
	ld   d, d                                        ; $6bec: $52
	adc  a                                           ; $6bed: $8f
	rst  $38                                         ; $6bee: $ff
	ld   de, $cc6a                                   ; $6bef: $11 $6a $cc
	sub  h                                           ; $6bf2: $94
	ld   hl, $1111                                   ; $6bf3: $21 $11 $11
	ld   de, $f1ff                                   ; $6bf6: $11 $ff $f1
	ld   de, $f16f                                   ; $6bf9: $11 $6f $f1
	inc  e                                           ; $6bfc: $1c
	rst  $38                                         ; $6bfd: $ff
	pop  af                                          ; $6bfe: $f1
	ld   de, $93de                                   ; $6bff: $11 $de $93
	ld   e, a                                        ; $6c02: $5f
	rst  $38                                         ; $6c03: $ff
	ld   d, c                                        ; $6c04: $51
	add  hl, de                                      ; $6c05: $19
	xor  $b8                                         ; $6c06: $ee $b8
	ld   d, l                                        ; $6c08: $55
	ld   hl, $1111                                   ; $6c09: $21 $11 $11
	rra                                              ; $6c0c: $1f
	rst  $38                                         ; $6c0d: $ff
	ld   de, $fd14                                   ; $6c0e: $11 $14 $fd
	ld   de, $ff4f                                   ; $6c11: $11 $4f $ff
	ld   hl, $9a15                                   ; $6c14: $21 $15 $9a
	ld   b, c                                        ; $6c17: $41
	sbc  a                                           ; $6c18: $9f
	rst  $38                                         ; $6c19: $ff
	ld   de, $de39                                   ; $6c1a: $11 $39 $de
	add  c                                           ; $6c1d: $81
	ld   de, $1111                                   ; $6c1e: $11 $11 $11
	rra                                              ; $6c21: $1f
	rst  $38                                         ; $6c22: $ff
	ld   de, rAUD1HIGH                                   ; $6c23: $11 $14 $ff
	ld   hl, $ff5f                                   ; $6c26: $21 $5f $ff
	ld   de, $da1a                                   ; $6c29: $11 $1a $da
	ld   b, l                                        ; $6c2c: $45
	rst  JumpTable                                         ; $6c2d: $df
	db   $fc                                         ; $6c2e: $fc
	ld   de, $cb5b                                   ; $6c2f: $11 $5b $cb
	sub  [hl]                                        ; $6c32: $96
	ld   [hl-], a                                    ; $6c33: $32
	ld   de, $1711                                   ; $6c34: $11 $11 $17
	rst  $38                                         ; $6c37: $ff
	pop  af                                          ; $6c38: $f1
	ld   de, $518f                                   ; $6c39: $11 $8f $51
	dec  e                                           ; $6c3c: $1d
	rst  $38                                         ; $6c3d: $ff
	pop  af                                          ; $6c3e: $f1
	ld   de, $618a                                   ; $6c3f: $11 $8a $61
	ccf                                              ; $6c42: $3f
	rst  $38                                         ; $6c43: $ff
	sub  c                                           ; $6c44: $91
	ld   d, $bc                                      ; $6c45: $16 $bc
	sub  e                                           ; $6c47: $93
	ld   de, $1111                                   ; $6c48: $11 $11 $11
	rra                                              ; $6c4b: $1f
	rst  $38                                         ; $6c4c: $ff
	ld   de, $ff16                                   ; $6c4d: $11 $16 $ff
	ld   de, $ff5f                                   ; $6c50: $11 $5f $ff
	ld   de, $fe1d                                   ; $6c53: $11 $1d $fe
	inc  sp                                          ; $6c56: $33
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c57: $cf
	ei                                               ; $6c58: $fb
	ld   de, $da6e                                   ; $6c59: $11 $6e $da
	ld   [hl], e                                     ; $6c5c: $73
	inc  [hl]                                        ; $6c5d: $34
	ld   de, $1f11                                   ; $6c5e: $11 $11 $1f
	rst  $38                                         ; $6c61: $ff
	or   c                                           ; $6c62: $b1
	dec  d                                           ; $6c63: $15
	cp   h                                           ; $6c64: $bc
	ld   de, $ff1f                                   ; $6c65: $11 $1f $ff
	pop  hl                                          ; $6c68: $e1
	add  hl, de                                      ; $6c69: $19
	db   $eb                                         ; $6c6a: $eb
	ld   sp, $ff7f                                   ; $6c6b: $31 $7f $ff
	ld   d, c                                        ; $6c6e: $51
	ld   c, d                                        ; $6c6f: $4a
	cp   c                                           ; $6c70: $b9
	sub  l                                           ; $6c71: $95
	ld   de, $1111                                   ; $6c72: $11 $11 $11
	rra                                              ; $6c75: $1f
	rst  $38                                         ; $6c76: $ff
	ld   de, $fa39                                   ; $6c77: $11 $39 $fa
	ld   de, $ffff                                   ; $6c7a: $11 $ff $ff
	ld   de, $fb1f                                   ; $6c7d: $11 $1f $fb
	dec  d                                           ; $6c80: $15
	rst  $38                                         ; $6c81: $ff
	ld   sp, hl                                      ; $6c82: $f9
	ld   de, $d96c                                   ; $6c83: $11 $6c $d9
	ld   h, h                                        ; $6c86: $64
	ld   b, c                                        ; $6c87: $41
	ld   de, $1f11                                   ; $6c88: $11 $11 $1f
	rst  $38                                         ; $6c8b: $ff
	inc  de                                          ; $6c8c: $13
	ld   a, b                                        ; $6c8d: $78
	pop  bc                                          ; $6c8e: $c1
	ld   de, $ffbf                                   ; $6c8f: $11 $bf $ff
	ld   d, c                                        ; $6c92: $51
	ld   a, [hl-]                                    ; $6c93: $3a
	rst  ToBoot                                         ; $6c94: $c7
	dec  d                                           ; $6c95: $15
	rst  $28                                         ; $6c96: $ef
	db   $fd                                         ; $6c97: $fd
	ld   d, e                                        ; $6c98: $53
	ld   l, b                                        ; $6c99: $68
	xor  e                                           ; $6c9a: $ab
	add  l                                           ; $6c9b: $85
	ld   de, $1111                                   ; $6c9c: $11 $11 $11
	rst  $38                                         ; $6c9f: $ff
	pop  af                                          ; $6ca0: $f1
	inc  d                                           ; $6ca1: $14
	ld   l, h                                        ; $6ca2: $6c
	pop  af                                          ; $6ca3: $f1
	ld   [de], a                                     ; $6ca4: $12
	rst  $38                                         ; $6ca5: $ff
	push af                                          ; $6ca6: $f5
	inc  de                                          ; $6ca7: $13
	call z, Call_0fa_4f51                            ; $6ca8: $cc $51 $4f
	rst  $38                                         ; $6cab: $ff
	or   a                                           ; $6cac: $b7
	ld   d, [hl]                                     ; $6cad: $56
	ld   h, l                                        ; $6cae: $65
	ld   e, e                                        ; $6caf: $5b
	or   [hl]                                        ; $6cb0: $b6
	ld   de, $1111                                   ; $6cb1: $11 $11 $11
	rst  $38                                         ; $6cb4: $ff
	ldh  a, [c]                                      ; $6cb5: $f2
	ld   l, h                                        ; $6cb6: $6c
	sbc  l                                           ; $6cb7: $9d
	and  c                                           ; $6cb8: $a1
	jr   @+$01                                       ; $6cb9: $18 $ff

	db   $fc                                         ; $6cbb: $fc
	jp   z, Jump_0fa_71cc                            ; $6cbc: $ca $cc $71

	ld   a, a                                        ; $6cbf: $7f
	ei                                               ; $6cc0: $fb
	xor  e                                           ; $6cc1: $ab
	adc  c                                           ; $6cc2: $89
	add  a                                           ; $6cc3: $87
	adc  h                                           ; $6cc4: $8c
	and  c                                           ; $6cc5: $a1
	ld   de, $1111                                   ; $6cc6: $11 $11 $11
	rst  $38                                         ; $6cc9: $ff
	pop  af                                          ; $6cca: $f1
	rla                                              ; $6ccb: $17
	sbc  a                                           ; $6ccc: $9f
	ld   [hl], c                                     ; $6ccd: $71
	rra                                              ; $6cce: $1f
	rst  $38                                         ; $6ccf: $ff
	rst  $30                                         ; $6cd0: $f7
	ld   c, d                                        ; $6cd1: $4a
	db   $fc                                         ; $6cd2: $fc
	ld   de, $ff6f                                   ; $6cd3: $11 $6f $ff
	jp   hl                                          ; $6cd6: $e9


	adc  d                                           ; $6cd7: $8a
	ld   [hl], d                                     ; $6cd8: $72
	ld   c, c                                        ; $6cd9: $49
	ld   [hl], c                                     ; $6cda: $71
	ld   de, $1f11                                   ; $6cdb: $11 $11 $1f
	rst  $38                                         ; $6cde: $ff
	ld   [de], a                                     ; $6cdf: $12
	cp   $c9                                         ; $6ce0: $fe $c9
	ld   de, $fc9f                                   ; $6ce2: $11 $9f $fc
	sbc  a                                           ; $6ce5: $9f
	db   $fd                                         ; $6ce6: $fd
	ld   [hl], d                                     ; $6ce7: $72
	add  hl, de                                      ; $6ce8: $19
	rst  $38                                         ; $6ce9: $ff
	xor  c                                           ; $6cea: $a9
	xor  $84                                         ; $6ceb: $ee $84
	ld   [hl], $cb                                   ; $6ced: $36 $cb
	ld   hl, $1111                                   ; $6cef: $21 $11 $11
	rra                                              ; $6cf2: $1f
	rst  $38                                         ; $6cf3: $ff
	rla                                              ; $6cf4: $17
	rst  $38                                         ; $6cf5: $ff
	ld   sp, hl                                      ; $6cf6: $f9
	ld   de, $fa9f                                   ; $6cf7: $11 $9f $fa
	sbc  $ff                                         ; $6cfa: $de $ff
	ldh  [c], a                                      ; $6cfc: $e2
	dec  de                                          ; $6cfd: $1b
	jp   c, $dc8c                                    ; $6cfe: $da $8c $dc

	and  a                                           ; $6d01: $a7
	ld   e, c                                        ; $6d02: $59
	and  l                                           ; $6d03: $a5
	ld   de, $1111                                   ; $6d04: $11 $11 $11
	rst  $38                                         ; $6d07: $ff
	or   $bf                                         ; $6d08: $f6 $bf
	rst  $38                                         ; $6d0a: $ff
	sub  c                                           ; $6d0b: $91
	ld   de, $9ffc                                   ; $6d0c: $11 $fc $9f
	rst  $38                                         ; $6d0f: $ff
	rst  $38                                         ; $6d10: $ff
	ld   d, e                                        ; $6d11: $53
	xor  c                                           ; $6d12: $a9
	ld   b, h                                        ; $6d13: $44
	adc  e                                           ; $6d14: $8b
	sbc  $ba                                         ; $6d15: $de $ba
	cp   h                                           ; $6d17: $bc
	ld   h, c                                        ; $6d18: $61
	ld   de, $1111                                   ; $6d19: $11 $11 $11
	rst  $38                                         ; $6d1c: $ff
	pop  af                                          ; $6d1d: $f1
	rst  JumpTable                                         ; $6d1e: $df
	rst  $38                                         ; $6d1f: $ff
	ld   d, c                                        ; $6d20: $51
	dec  e                                           ; $6d21: $1d
	ld   hl, sp+$1e                                  ; $6d22: $f8 $1e
	rst  $38                                         ; $6d24: $ff
	rst  $38                                         ; $6d25: $ff
	dec  h                                           ; $6d26: $25
	ei                                               ; $6d27: $fb
	ld   de, $db7a                                   ; $6d28: $11 $7a $db
	adc  c                                           ; $6d2b: $89
	db   $ed                                         ; $6d2c: $ed
	ld   sp, $1111                                   ; $6d2d: $31 $11 $11
	rra                                              ; $6d30: $1f
	rst  $38                                         ; $6d31: $ff
	ld   c, a                                        ; $6d32: $4f
	rst  $38                                         ; $6d33: $ff
	db   $fc                                         ; $6d34: $fc
	ld   de, $119f                                   ; $6d35: $11 $9f $11
	ld   l, a                                        ; $6d38: $6f
	rst  $38                                         ; $6d39: $ff
	ld   sp, hl                                      ; $6d3a: $f9
	xor  a                                           ; $6d3b: $af
	or   $24                                         ; $6d3c: $f6 $24
	ld   l, b                                        ; $6d3e: $68
	add  l                                           ; $6d3f: $85
	ld   e, e                                        ; $6d40: $5b
	ret  c                                           ; $6d41: $d8

	ld   sp, $1111                                   ; $6d42: $31 $11 $11
	xor  a                                           ; $6d45: $af
	push bc                                          ; $6d46: $c5
	cp   a                                           ; $6d47: $bf
	rst  $38                                         ; $6d48: $ff
	di                                               ; $6d49: $f3
	add  hl, de                                      ; $6d4a: $19
	db   $e3                                         ; $6d4b: $e3
	ld   de, $ff4a                                   ; $6d4c: $11 $4a $ff
	call c, $fbff                                    ; $6d4f: $dc $ff $fb
	sub  a                                           ; $6d52: $97
	adc  b                                           ; $6d53: $88
	ld   b, c                                        ; $6d54: $41
	ld   c, b                                        ; $6d55: $48
	ld   [hl], h                                     ; $6d56: $74
	ld   de, $1211                                   ; $6d57: $11 $11 $12
	sub  $28                                         ; $6d5a: $d6 $28
	rst  $38                                         ; $6d5c: $ff
	rst  $38                                         ; $6d5d: $ff
	rst  $30                                         ; $6d5e: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d5f: $cf
	or   e                                           ; $6d60: $b3
	dec  h                                           ; $6d61: $25
	ld   a, c                                        ; $6d62: $79
	xor  c                                           ; $6d63: $a9
	ld   a, e                                        ; $6d64: $7b
	rst  $38                                         ; $6d65: $ff
	db   $ec                                         ; $6d66: $ec
	call z, $54b8                                    ; $6d67: $cc $b8 $54
	ld   h, [hl]                                     ; $6d6a: $66
	ld   d, e                                        ; $6d6b: $53
	ld   de, $1611                                   ; $6d6c: $11 $11 $16
	ld   b, c                                        ; $6d6f: $41
	daa                                              ; $6d70: $27
	sbc  h                                           ; $6d71: $9c
	rst  $38                                         ; $6d72: $ff
	db   $dd                                         ; $6d73: $dd
	rst  $38                                         ; $6d74: $ff
	jp   c, $aa89                                    ; $6d75: $da $89 $aa

	sub  a                                           ; $6d78: $97
	ld   a, c                                        ; $6d79: $79
	xor  h                                           ; $6d7a: $ac
	cp   d                                           ; $6d7b: $ba
	xor  e                                           ; $6d7c: $ab
	sub  a                                           ; $6d7d: $97
	ld   l, c                                        ; $6d7e: $69
	sbc  c                                           ; $6d7f: $99
	add  [hl]                                        ; $6d80: $86
	ld   h, l                                        ; $6d81: $65
	ld   b, c                                        ; $6d82: $41
	ld   [de], a                                     ; $6d83: $12
	ld   de, $3512                                   ; $6d84: $11 $12 $35
	ld   a, c                                        ; $6d87: $79
	sbc  c                                           ; $6d88: $99
	cp   h                                           ; $6d89: $bc
	call z, $cccc                                    ; $6d8a: $cc $cc $cc
	call z, $cbcc                                    ; $6d8d: $cc $cc $cb
	cp   e                                           ; $6d90: $bb
	xor  d                                           ; $6d91: $aa
	sbc  b                                           ; $6d92: $98
	adc  c                                           ; $6d93: $89
	xor  d                                           ; $6d94: $aa
	sbc  b                                           ; $6d95: $98
	adc  c                                           ; $6d96: $89
	ld   [hl], l                                     ; $6d97: $75
	ld   [hl-], a                                    ; $6d98: $32
	inc  sp                                          ; $6d99: $33
	ld   de, $3412                                   ; $6d9a: $11 $12 $34
	ld   d, l                                        ; $6d9d: $55
	ld   d, a                                        ; $6d9e: $57
	sbc  d                                           ; $6d9f: $9a
	xor  d                                           ; $6da0: $aa
	cp   e                                           ; $6da1: $bb
	db   $dd                                         ; $6da2: $dd
	db   $dd                                         ; $6da3: $dd
	sbc  $ee                                         ; $6da4: $de $ee
	res  5, d                                        ; $6da6: $cb $aa
	xor  d                                           ; $6da8: $aa
	sbc  c                                           ; $6da9: $99
	adc  b                                           ; $6daa: $88
	adc  b                                           ; $6dab: $88
	halt                                             ; $6dac: $76
	ld   d, h                                        ; $6dad: $54
	ld   d, h                                        ; $6dae: $54
	ld   [hl-], a                                    ; $6daf: $32
	inc  [hl]                                        ; $6db0: $34
	ld   b, e                                        ; $6db1: $43
	ld   [hl-], a                                    ; $6db2: $32
	inc  [hl]                                        ; $6db3: $34
	ld   d, l                                        ; $6db4: $55
	ld   d, a                                        ; $6db5: $57
	adc  c                                           ; $6db6: $89
	xor  d                                           ; $6db7: $aa
	cp   h                                           ; $6db8: $bc
	db   $dd                                         ; $6db9: $dd
	db   $dd                                         ; $6dba: $dd
	call c, $cccb                                    ; $6dbb: $dc $cb $cc
	cp   e                                           ; $6dbe: $bb
	xor  d                                           ; $6dbf: $aa
	xor  d                                           ; $6dc0: $aa
	sub  a                                           ; $6dc1: $97
	ld   h, [hl]                                     ; $6dc2: $66
	ld   h, l                                        ; $6dc3: $65
	ld   d, l                                        ; $6dc4: $55
	ld   h, [hl]                                     ; $6dc5: $66
	ld   h, [hl]                                     ; $6dc6: $66
	ld   h, l                                        ; $6dc7: $65
	ld   d, l                                        ; $6dc8: $55
	ld   d, h                                        ; $6dc9: $54
	inc  sp                                          ; $6dca: $33
	inc  [hl]                                        ; $6dcb: $34
	ld   d, l                                        ; $6dcc: $55
	ld   h, a                                        ; $6dcd: $67
	adc  d                                           ; $6dce: $8a
	xor  e                                           ; $6dcf: $ab
	xor  d                                           ; $6dd0: $aa
	xor  e                                           ; $6dd1: $ab
	cp   e                                           ; $6dd2: $bb
	xor  e                                           ; $6dd3: $ab
	call z, $bacb                                    ; $6dd4: $cc $cb $ba
	xor  c                                           ; $6dd7: $a9
	adc  b                                           ; $6dd8: $88
	adc  b                                           ; $6dd9: $88
	adc  b                                           ; $6dda: $88
	add  a                                           ; $6ddb: $87
	ld   a, b                                        ; $6ddc: $78
	add  a                                           ; $6ddd: $87
	ld   [hl], a                                     ; $6dde: $77
	ld   h, [hl]                                     ; $6ddf: $66
	ld   h, [hl]                                     ; $6de0: $66
	ld   h, [hl]                                     ; $6de1: $66
	ld   h, [hl]                                     ; $6de2: $66
	ld   h, [hl]                                     ; $6de3: $66
	ld   h, [hl]                                     ; $6de4: $66
	ld   d, l                                        ; $6de5: $55
	ld   d, [hl]                                     ; $6de6: $56
	ld   h, [hl]                                     ; $6de7: $66
	ld   a, b                                        ; $6de8: $78
	sbc  d                                           ; $6de9: $9a
	xor  d                                           ; $6dea: $aa
	cp   e                                           ; $6deb: $bb
	cp   d                                           ; $6dec: $ba
	xor  c                                           ; $6ded: $a9
	sbc  c                                           ; $6dee: $99
	sbc  c                                           ; $6def: $99
	sbc  c                                           ; $6df0: $99
	sbc  c                                           ; $6df1: $99
	sbc  c                                           ; $6df2: $99
	sbc  c                                           ; $6df3: $99
	sbc  b                                           ; $6df4: $98
	sbc  c                                           ; $6df5: $99
	adc  b                                           ; $6df6: $88
	sbc  c                                           ; $6df7: $99
	adc  b                                           ; $6df8: $88
	adc  b                                           ; $6df9: $88
	ld   [hl], a                                     ; $6dfa: $77
	ld   [hl], a                                     ; $6dfb: $77
	ld   [hl], a                                     ; $6dfc: $77
	ld   [hl], a                                     ; $6dfd: $77
	ld   [hl], a                                     ; $6dfe: $77
	ld   [hl], a                                     ; $6dff: $77
	ld   [hl], a                                     ; $6e00: $77
	ld   [hl], a                                     ; $6e01: $77
	ld   h, [hl]                                     ; $6e02: $66
	ld   h, [hl]                                     ; $6e03: $66
	ld   h, [hl]                                     ; $6e04: $66
	ld   h, a                                        ; $6e05: $67
	ld   a, c                                        ; $6e06: $79
	adc  c                                           ; $6e07: $89
	sbc  c                                           ; $6e08: $99
	sbc  d                                           ; $6e09: $9a
	xor  c                                           ; $6e0a: $a9
	sbc  d                                           ; $6e0b: $9a
	sbc  d                                           ; $6e0c: $9a
	sbc  c                                           ; $6e0d: $99
	sbc  c                                           ; $6e0e: $99
	adc  c                                           ; $6e0f: $89
	adc  b                                           ; $6e10: $88
	adc  c                                           ; $6e11: $89
	adc  b                                           ; $6e12: $88
	adc  c                                           ; $6e13: $89
	sbc  b                                           ; $6e14: $98
	sbc  b                                           ; $6e15: $98
	adc  b                                           ; $6e16: $88
	adc  b                                           ; $6e17: $88
	ld   a, b                                        ; $6e18: $78
	adc  b                                           ; $6e19: $88
	adc  b                                           ; $6e1a: $88
	adc  b                                           ; $6e1b: $88
	adc  b                                           ; $6e1c: $88
	adc  b                                           ; $6e1d: $88
	adc  b                                           ; $6e1e: $88
	add  a                                           ; $6e1f: $87
	adc  b                                           ; $6e20: $88
	adc  b                                           ; $6e21: $88
	ld   [hl], a                                     ; $6e22: $77
	ld   [hl], a                                     ; $6e23: $77
	ld   [hl], a                                     ; $6e24: $77
	ld   [hl], a                                     ; $6e25: $77
	ld   [hl], a                                     ; $6e26: $77
	ld   [hl], a                                     ; $6e27: $77
	adc  c                                           ; $6e28: $89
	sbc  c                                           ; $6e29: $99
	sbc  c                                           ; $6e2a: $99
	sbc  c                                           ; $6e2b: $99
	sbc  c                                           ; $6e2c: $99
	sbc  b                                           ; $6e2d: $98
	adc  c                                           ; $6e2e: $89
	sbc  b                                           ; $6e2f: $98
	adc  c                                           ; $6e30: $89
	sbc  c                                           ; $6e31: $99
	adc  b                                           ; $6e32: $88
	sbc  c                                           ; $6e33: $99
	sbc  c                                           ; $6e34: $99
	adc  b                                           ; $6e35: $88
	adc  c                                           ; $6e36: $89
	sbc  c                                           ; $6e37: $99
	adc  c                                           ; $6e38: $89
	adc  b                                           ; $6e39: $88
	adc  b                                           ; $6e3a: $88
	adc  b                                           ; $6e3b: $88
	adc  b                                           ; $6e3c: $88
	adc  b                                           ; $6e3d: $88
	add  a                                           ; $6e3e: $87
	ld   [hl], a                                     ; $6e3f: $77
	ld   [hl], a                                     ; $6e40: $77
	ld   [hl], a                                     ; $6e41: $77
	ld   a, b                                        ; $6e42: $78
	adc  b                                           ; $6e43: $88
	adc  b                                           ; $6e44: $88
	adc  b                                           ; $6e45: $88
	adc  b                                           ; $6e46: $88
	adc  b                                           ; $6e47: $88
	adc  b                                           ; $6e48: $88
	adc  b                                           ; $6e49: $88
	adc  b                                           ; $6e4a: $88
	adc  b                                           ; $6e4b: $88
	adc  b                                           ; $6e4c: $88
	adc  b                                           ; $6e4d: $88
	adc  b                                           ; $6e4e: $88
	adc  c                                           ; $6e4f: $89
	sbc  b                                           ; $6e50: $98
	adc  c                                           ; $6e51: $89
	adc  c                                           ; $6e52: $89
	adc  b                                           ; $6e53: $88
	adc  b                                           ; $6e54: $88
	adc  b                                           ; $6e55: $88
	adc  b                                           ; $6e56: $88
	adc  b                                           ; $6e57: $88
	adc  b                                           ; $6e58: $88
	adc  b                                           ; $6e59: $88
	adc  b                                           ; $6e5a: $88
	adc  b                                           ; $6e5b: $88
	adc  b                                           ; $6e5c: $88
	adc  b                                           ; $6e5d: $88
	adc  b                                           ; $6e5e: $88
	adc  b                                           ; $6e5f: $88
	adc  b                                           ; $6e60: $88
	adc  b                                           ; $6e61: $88
	add  a                                           ; $6e62: $87
	adc  b                                           ; $6e63: $88
	adc  b                                           ; $6e64: $88
	adc  b                                           ; $6e65: $88
	sbc  c                                           ; $6e66: $99
	sbc  b                                           ; $6e67: $98
	adc  b                                           ; $6e68: $88
	adc  b                                           ; $6e69: $88
	adc  b                                           ; $6e6a: $88
	adc  b                                           ; $6e6b: $88
	adc  b                                           ; $6e6c: $88
	adc  b                                           ; $6e6d: $88
	adc  b                                           ; $6e6e: $88
	adc  b                                           ; $6e6f: $88
	adc  b                                           ; $6e70: $88
	adc  b                                           ; $6e71: $88
	adc  b                                           ; $6e72: $88
	adc  b                                           ; $6e73: $88
	adc  b                                           ; $6e74: $88
	adc  b                                           ; $6e75: $88
	add  a                                           ; $6e76: $87
	ld   [hl], a                                     ; $6e77: $77
	ld   [hl], a                                     ; $6e78: $77
	adc  b                                           ; $6e79: $88
	adc  b                                           ; $6e7a: $88
	adc  c                                           ; $6e7b: $89
	sbc  c                                           ; $6e7c: $99
	sbc  b                                           ; $6e7d: $98
	adc  b                                           ; $6e7e: $88
	add  a                                           ; $6e7f: $87
	sbc  c                                           ; $6e80: $99
	adc  c                                           ; $6e81: $89
	sbc  b                                           ; $6e82: $98
	adc  c                                           ; $6e83: $89
	adc  b                                           ; $6e84: $88
	adc  b                                           ; $6e85: $88
	adc  b                                           ; $6e86: $88
	adc  b                                           ; $6e87: $88
	adc  b                                           ; $6e88: $88
	adc  b                                           ; $6e89: $88
	adc  b                                           ; $6e8a: $88
	adc  b                                           ; $6e8b: $88
	ld   [hl], a                                     ; $6e8c: $77
	ld   a, b                                        ; $6e8d: $78
	adc  b                                           ; $6e8e: $88
	adc  b                                           ; $6e8f: $88
	adc  b                                           ; $6e90: $88
	adc  b                                           ; $6e91: $88
	adc  b                                           ; $6e92: $88
	adc  b                                           ; $6e93: $88
	adc  b                                           ; $6e94: $88
	adc  b                                           ; $6e95: $88
	adc  b                                           ; $6e96: $88
	adc  c                                           ; $6e97: $89
	sbc  b                                           ; $6e98: $98
	adc  b                                           ; $6e99: $88
	adc  b                                           ; $6e9a: $88
	adc  b                                           ; $6e9b: $88
	adc  b                                           ; $6e9c: $88
	adc  b                                           ; $6e9d: $88
	adc  b                                           ; $6e9e: $88
	adc  b                                           ; $6e9f: $88
	adc  b                                           ; $6ea0: $88
	adc  b                                           ; $6ea1: $88
	adc  b                                           ; $6ea2: $88
	adc  b                                           ; $6ea3: $88
	adc  b                                           ; $6ea4: $88
	adc  b                                           ; $6ea5: $88
	adc  b                                           ; $6ea6: $88
	adc  b                                           ; $6ea7: $88
	adc  b                                           ; $6ea8: $88
	adc  b                                           ; $6ea9: $88
	adc  b                                           ; $6eaa: $88
	adc  b                                           ; $6eab: $88
	adc  b                                           ; $6eac: $88
	adc  b                                           ; $6ead: $88
	adc  b                                           ; $6eae: $88
	adc  b                                           ; $6eaf: $88
	adc  b                                           ; $6eb0: $88
	adc  b                                           ; $6eb1: $88
	adc  b                                           ; $6eb2: $88
	adc  b                                           ; $6eb3: $88
	adc  b                                           ; $6eb4: $88
	adc  b                                           ; $6eb5: $88
	ld   a, b                                        ; $6eb6: $78
	adc  b                                           ; $6eb7: $88
	adc  b                                           ; $6eb8: $88
	adc  b                                           ; $6eb9: $88
	adc  b                                           ; $6eba: $88
	adc  b                                           ; $6ebb: $88
	adc  b                                           ; $6ebc: $88
	adc  b                                           ; $6ebd: $88
	adc  b                                           ; $6ebe: $88
	adc  b                                           ; $6ebf: $88
	adc  b                                           ; $6ec0: $88
	adc  b                                           ; $6ec1: $88
	adc  b                                           ; $6ec2: $88
	adc  b                                           ; $6ec3: $88
	adc  b                                           ; $6ec4: $88
	adc  b                                           ; $6ec5: $88
	adc  b                                           ; $6ec6: $88
	adc  b                                           ; $6ec7: $88
	adc  b                                           ; $6ec8: $88
	adc  c                                           ; $6ec9: $89
	adc  b                                           ; $6eca: $88
	adc  b                                           ; $6ecb: $88
	adc  b                                           ; $6ecc: $88
	adc  b                                           ; $6ecd: $88
	adc  b                                           ; $6ece: $88
	adc  b                                           ; $6ecf: $88
	adc  b                                           ; $6ed0: $88
	adc  b                                           ; $6ed1: $88
	adc  b                                           ; $6ed2: $88
	adc  b                                           ; $6ed3: $88
	adc  b                                           ; $6ed4: $88
	adc  b                                           ; $6ed5: $88
	adc  c                                           ; $6ed6: $89
	adc  c                                           ; $6ed7: $89
	adc  b                                           ; $6ed8: $88
	sub  a                                           ; $6ed9: $97
	sbc  b                                           ; $6eda: $98
	adc  b                                           ; $6edb: $88
	adc  b                                           ; $6edc: $88
	ld   a, c                                        ; $6edd: $79
	adc  b                                           ; $6ede: $88
	add  a                                           ; $6edf: $87
	adc  b                                           ; $6ee0: $88
	adc  b                                           ; $6ee1: $88
	adc  b                                           ; $6ee2: $88
	adc  b                                           ; $6ee3: $88
	adc  c                                           ; $6ee4: $89
	adc  b                                           ; $6ee5: $88
	sub  a                                           ; $6ee6: $97
	sub  a                                           ; $6ee7: $97
	adc  c                                           ; $6ee8: $89
	ld   a, c                                        ; $6ee9: $79
	ld   a, b                                        ; $6eea: $78
	adc  b                                           ; $6eeb: $88
	sbc  b                                           ; $6eec: $98
	adc  b                                           ; $6eed: $88
	adc  c                                           ; $6eee: $89
	adc  b                                           ; $6eef: $88
	adc  b                                           ; $6ef0: $88
	adc  b                                           ; $6ef1: $88
	adc  b                                           ; $6ef2: $88
	adc  b                                           ; $6ef3: $88
	adc  c                                           ; $6ef4: $89
	sbc  b                                           ; $6ef5: $98
	adc  b                                           ; $6ef6: $88
	sub  a                                           ; $6ef7: $97
	sbc  b                                           ; $6ef8: $98
	adc  c                                           ; $6ef9: $89
	ld   a, c                                        ; $6efa: $79
	adc  b                                           ; $6efb: $88
	sbc  b                                           ; $6efc: $98
	adc  b                                           ; $6efd: $88
	add  a                                           ; $6efe: $87
	add  a                                           ; $6eff: $87
	sub  a                                           ; $6f00: $97
	adc  b                                           ; $6f01: $88
	adc  c                                           ; $6f02: $89
	ld   a, d                                        ; $6f03: $7a
	sbc  b                                           ; $6f04: $98
	sbc  b                                           ; $6f05: $98
	sbc  b                                           ; $6f06: $98
	sub  a                                           ; $6f07: $97
	ld   a, b                                        ; $6f08: $78
	ld   l, b                                        ; $6f09: $68
	ld   l, b                                        ; $6f0a: $68
	ld   h, a                                        ; $6f0b: $67
	add  [hl]                                        ; $6f0c: $86
	sub  a                                           ; $6f0d: $97
	add  a                                           ; $6f0e: $87
	sbc  c                                           ; $6f0f: $99
	adc  b                                           ; $6f10: $88

Jump_0fa_6f11:
	ld   a, c                                        ; $6f11: $79
	ld   a, c                                        ; $6f12: $79
	ld   a, c                                        ; $6f13: $79
	ld   a, b                                        ; $6f14: $78
	add  a                                           ; $6f15: $87
	add  a                                           ; $6f16: $87
	add  a                                           ; $6f17: $87
	sub  a                                           ; $6f18: $97
	sbc  b                                           ; $6f19: $98
	ld   a, b                                        ; $6f1a: $78
	ld   a, d                                        ; $6f1b: $7a
	ld   a, c                                        ; $6f1c: $79
	sub  [hl]                                        ; $6f1d: $96
	and  a                                           ; $6f1e: $a7
	add  a                                           ; $6f1f: $87
	ld   [hl], a                                     ; $6f20: $77
	ld   a, c                                        ; $6f21: $79
	sbc  c                                           ; $6f22: $99
	ld   l, c                                        ; $6f23: $69
	ld   a, b                                        ; $6f24: $78
	sub  a                                           ; $6f25: $97
	adc  c                                           ; $6f26: $89
	adc  b                                           ; $6f27: $88
	sub  a                                           ; $6f28: $97
	sub  a                                           ; $6f29: $97
	ld   [hl], a                                     ; $6f2a: $77
	ld   a, b                                        ; $6f2b: $78
	ld   a, c                                        ; $6f2c: $79
	ld   a, b                                        ; $6f2d: $78
	adc  d                                           ; $6f2e: $8a
	ld   [hl], a                                     ; $6f2f: $77
	and  a                                           ; $6f30: $a7
	add  a                                           ; $6f31: $87
	sbc  b                                           ; $6f32: $98
	ld   a, b                                        ; $6f33: $78
	ld   a, c                                        ; $6f34: $79
	ld   l, c                                        ; $6f35: $69
	add  a                                           ; $6f36: $87
	and  l                                           ; $6f37: $a5
	or   [hl]                                        ; $6f38: $b6
	xor  c                                           ; $6f39: $a9
	ld   c, h                                        ; $6f3a: $4c
	ld   c, h                                        ; $6f3b: $4c
	ld   h, [hl]                                     ; $6f3c: $66
	call nz, $b5c4                                   ; $6f3d: $c4 $c4 $b5
	adc  d                                           ; $6f40: $8a
	dec  a                                           ; $6f41: $3d
	ld   c, d                                        ; $6f42: $4a
	sub  [hl]                                        ; $6f43: $96
	and  [hl]                                        ; $6f44: $a6
	sub  [hl]                                        ; $6f45: $96
	add  a                                           ; $6f46: $87
	ld   a, d                                        ; $6f47: $7a
	inc  a                                           ; $6f48: $3c
	ld   h, a                                        ; $6f49: $67
	or   h                                           ; $6f4a: $b4
	or   a                                           ; $6f4b: $b7
	adc  c                                           ; $6f4c: $89
	add  a                                           ; $6f4d: $87
	sbc  b                                           ; $6f4e: $98
	ld   a, d                                        ; $6f4f: $7a
	ld   e, e                                        ; $6f50: $5b
	ld   l, c                                        ; $6f51: $69
	sbc  c                                           ; $6f52: $99
	sub  a                                           ; $6f53: $97
	or   l                                           ; $6f54: $b5
	and  a                                           ; $6f55: $a7
	sbc  b                                           ; $6f56: $98
	ld   a, e                                        ; $6f57: $7b
	ld   e, e                                        ; $6f58: $5b
	ld   a, b                                        ; $6f59: $78
	sub  [hl]                                        ; $6f5a: $96
	and  a                                           ; $6f5b: $a7
	adc  b                                           ; $6f5c: $88
	ld   l, c                                        ; $6f5d: $69
	ld   h, a                                        ; $6f5e: $67
	ld   [hl], h                                     ; $6f5f: $74
	and  d                                           ; $6f60: $a2
	add  l                                           ; $6f61: $85
	ld   d, [hl]                                     ; $6f62: $56
	jr   c, @+$3b                                    ; $6f63: $38 $39

	dec  sp                                          ; $6f65: $3b
	adc  b                                           ; $6f66: $88
	sbc  b                                           ; $6f67: $98
	rst  $20                                         ; $6f68: $e7
	db   $dd                                         ; $6f69: $dd
	sbc  h                                           ; $6f6a: $9c
	call c, $ccba                                    ; $6f6b: $dc $ba $cc
	adc  b                                           ; $6f6e: $88
	or   a                                           ; $6f6f: $b7
	sbc  e                                           ; $6f70: $9b
	ld   d, a                                        ; $6f71: $57
	xor  c                                           ; $6f72: $a9
	ld   d, h                                        ; $6f73: $54
	dec  d                                           ; $6f74: $15
	ld   sp, $3211                                   ; $6f75: $31 $11 $32
	ld   de, $b967                                   ; $6f78: $11 $67 $b9
	adc  a                                           ; $6f7b: $8f
	rst  $28                                         ; $6f7c: $ef
	db   $fd                                         ; $6f7d: $fd
	rst  JumpTable                                         ; $6f7e: $df
	call c, $b798                                    ; $6f7f: $dc $98 $b7
	sub  [hl]                                        ; $6f82: $96
	sbc  c                                           ; $6f83: $99
	call z, $de9d                                    ; $6f84: $cc $9d $de
	cp   c                                           ; $6f87: $b9
	ld   d, h                                        ; $6f88: $54
	ld   de, $1111                                   ; $6f89: $11 $11 $11
	ld   de, $7b11                                   ; $6f8c: $11 $11 $7b
	rst  $38                                         ; $6f8f: $ff
	rst  $38                                         ; $6f90: $ff
	rst  $38                                         ; $6f91: $ff
	cp   $cd                                         ; $6f92: $fe $cd
	xor  b                                           ; $6f94: $a8
	ld   h, e                                        ; $6f95: $63
	ld   e, b                                        ; $6f96: $58
	xor  e                                           ; $6f97: $ab
	adc  $ff                                         ; $6f98: $ce $ff
	db   $fd                                         ; $6f9a: $fd
	xor  d                                           ; $6f9b: $aa
	sub  l                                           ; $6f9c: $95
	ld   de, $1111                                   ; $6f9d: $11 $11 $11
	ld   de, $5c55                                   ; $6fa0: $11 $55 $5c
	rst  $38                                         ; $6fa3: $ff
	rst  $38                                         ; $6fa4: $ff
	rst  $38                                         ; $6fa5: $ff
	rst  $38                                         ; $6fa6: $ff
	add  $57                                         ; $6fa7: $c6 $57
	ld   [hl], l                                     ; $6fa9: $75
	ld   [hl+], a                                    ; $6faa: $22
	adc  a                                           ; $6fab: $8f
	rst  $38                                         ; $6fac: $ff
	rst  $38                                         ; $6fad: $ff
	rst  $38                                         ; $6fae: $ff
	rst  ToBoot                                         ; $6faf: $c7
	inc  [hl]                                        ; $6fb0: $34
	ld   hl, $1111                                   ; $6fb1: $21 $11 $11
	ld   de, $7d98                                   ; $6fb4: $11 $98 $7d
	rst  $38                                         ; $6fb7: $ff
	rst  $38                                         ; $6fb8: $ff
	ret                                              ; $6fb9: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fba: $cf
	push hl                                          ; $6fbb: $e5
	ld   [de], a                                     ; $6fbc: $12
	ld   a, e                                        ; $6fbd: $7b
	jp   z, $ffaf                                    ; $6fbe: $ca $af $ff

	rst  $38                                         ; $6fc1: $ff
	call Call_0fa_51eb                               ; $6fc2: $cd $eb $51
	ld   de, $1111                                   ; $6fc5: $11 $11 $11
	dec  d                                           ; $6fc8: $15
	db   $fc                                         ; $6fc9: $fc
	sbc  c                                           ; $6fca: $99
	rst  $38                                         ; $6fcb: $ff
	rst  $38                                         ; $6fcc: $ff
	sub  e                                           ; $6fcd: $93
	ld   l, [hl]                                     ; $6fce: $6e
	ld   sp, hl                                      ; $6fcf: $f9
	ld   de, $ff6d                                   ; $6fd0: $11 $6d $ff
	db   $fc                                         ; $6fd3: $fc
	rst  $38                                         ; $6fd4: $ff
	rst  $38                                         ; $6fd5: $ff
	cp   b                                           ; $6fd6: $b8
	ld   a, b                                        ; $6fd7: $78
	add  e                                           ; $6fd8: $83
	ld   de, $1111                                   ; $6fd9: $11 $11 $11
	ld   c, e                                        ; $6fdc: $4b
	db   $ed                                         ; $6fdd: $ed
	cp   [hl]                                        ; $6fde: $be
	rst  $38                                         ; $6fdf: $ff
	db   $fc                                         ; $6fe0: $fc
	ld   b, d                                        ; $6fe1: $42
	ld   c, c                                        ; $6fe2: $49
	cp   c                                           ; $6fe3: $b9
	ld   e, c                                        ; $6fe4: $59
	rst  JumpTable                                         ; $6fe5: $df
	rst  $38                                         ; $6fe6: $ff
	db   $ed                                         ; $6fe7: $ed
	rst  $38                                         ; $6fe8: $ff
	rst  $38                                         ; $6fe9: $ff
	and  a                                           ; $6fea: $a7
	ld   h, [hl]                                     ; $6feb: $66
	ld   d, e                                        ; $6fec: $53
	ld   de, $1111                                   ; $6fed: $11 $11 $11
	ld   l, a                                        ; $6ff0: $6f
	cp   $a9                                         ; $6ff1: $fe $a9
	rst  JumpTable                                         ; $6ff3: $df
	cp   $51                                         ; $6ff4: $fe $51
	dec  d                                           ; $6ff6: $15
	call $cedc                                       ; $6ff7: $cd $dc $ce
	rst  $38                                         ; $6ffa: $ff
	cp   $de                                         ; $6ffb: $fe $de
	cp   $d9                                         ; $6ffd: $fe $d9
	ld   [hl], e                                     ; $6fff: $73
	ld   de, $1111                                   ; $7000: $11 $11 $11
	add  hl, de                                      ; $7003: $19
	rst  $38                                         ; $7004: $ff
	ret  c                                           ; $7005: $d8

	ld   e, d                                        ; $7006: $5a
	rst  $38                                         ; $7007: $ff
	or   $11                                         ; $7008: $f6 $11
	dec  e                                           ; $700a: $1d
	rst  $38                                         ; $700b: $ff
	db   $fc                                         ; $700c: $fc
	ld   [hl], a                                     ; $700d: $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $700e: $cf
	rst  $38                                         ; $700f: $ff
	xor  c                                           ; $7010: $a9
	sbc  [hl]                                        ; $7011: $9e
	cp   $94                                         ; $7012: $fe $94
	ld   de, $1111                                   ; $7014: $11 $11 $11
	ld   [de], a                                     ; $7017: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7018: $cf
	rst  $38                                         ; $7019: $ff
	jp   z, $faef                                    ; $701a: $ca $ef $fa

	ld   b, c                                        ; $701d: $41
	inc  d                                           ; $701e: $14
	xor  [hl]                                        ; $701f: $ae
	xor  $cb                                         ; $7020: $ee $cb
	rst  $28                                         ; $7022: $ef
	rst  $38                                         ; $7023: $ff
	db   $eb                                         ; $7024: $eb
	adc  b                                           ; $7025: $88
	sbc  d                                           ; $7026: $9a
	add  e                                           ; $7027: $83
	ld   de, $1611                                   ; $7028: $11 $11 $16
	rst  $38                                         ; $702b: $ff
	ei                                               ; $702c: $fb
	ld   d, h                                        ; $702d: $54
	rst  JumpTable                                         ; $702e: $df
	cp   $31                                         ; $702f: $fe $31
	ld   de, $ffef                                   ; $7031: $11 $ef $ff
	add  d                                           ; $7034: $82
	add  hl, hl                                      ; $7035: $29
	rst  $38                                         ; $7036: $ff
	rst  $38                                         ; $7037: $ff
	and  a                                           ; $7038: $a7
	adc  h                                           ; $7039: $8c
	db   $fd                                         ; $703a: $fd
	ld   d, c                                        ; $703b: $51
	ld   de, $5f11                                   ; $703c: $11 $11 $5f
	rst  $38                                         ; $703f: $ff
	ei                                               ; $7040: $fb
	adc  [hl]                                        ; $7041: $8e
	rst  $38                                         ; $7042: $ff
	or   e                                           ; $7043: $b3
	ld   de, $ff16                                   ; $7044: $11 $16 $ff
	rst  $38                                         ; $7047: $ff
	add  $6b                                         ; $7048: $c6 $6b
	rst  $38                                         ; $704a: $ff
	cp   $a6                                         ; $704b: $fe $a6
	ld   h, a                                        ; $704d: $67
	ld   h, e                                        ; $704e: $63
	ld   de, $1511                                   ; $704f: $11 $11 $15
	rst  $38                                         ; $7052: $ff
	rst  $38                                         ; $7053: $ff
	ret                                              ; $7054: $c9


	rst  JumpTable                                         ; $7055: $df
	rst  $38                                         ; $7056: $ff
	add  c                                           ; $7057: $81
	ld   de, $ff1c                                   ; $7058: $11 $1c $ff
	rst  $38                                         ; $705b: $ff
	xor  c                                           ; $705c: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $705d: $cf
	rst  $38                                         ; $705e: $ff
	ret                                              ; $705f: $c9


	ld   l, b                                        ; $7060: $68
	sub  a                                           ; $7061: $97
	ld   hl, $1111                                   ; $7062: $21 $11 $11
	sbc  a                                           ; $7065: $9f
	rst  $38                                         ; $7066: $ff
	ld   sp, hl                                      ; $7067: $f9
	ld   a, a                                        ; $7068: $7f
	rst  $38                                         ; $7069: $ff
	or   $11                                         ; $706a: $f6 $11
	ld   [de], a                                     ; $706c: $12
	rst  JumpTable                                         ; $706d: $df
	rst  $38                                         ; $706e: $ff
	ld   sp, hl                                      ; $706f: $f9
	sbc  e                                           ; $7070: $9b
	rst  $28                                         ; $7071: $ef
	db   $fd                                         ; $7072: $fd
	sub  l                                           ; $7073: $95
	ld   d, [hl]                                     ; $7074: $56
	ld   d, d                                        ; $7075: $52
	ld   de, $1911                                   ; $7076: $11 $11 $19
	rst  $38                                         ; $7079: $ff
	rst  $38                                         ; $707a: $ff
	ld   h, l                                        ; $707b: $65
	rst  JumpTable                                         ; $707c: $df
	rst  $38                                         ; $707d: $ff
	and  c                                           ; $707e: $a1
	ld   de, $ff19                                   ; $707f: $11 $19 $ff
	rst  $38                                         ; $7082: $ff
	and  a                                           ; $7083: $a7
	adc  h                                           ; $7084: $8c
	rst  $38                                         ; $7085: $ff
	ei                                               ; $7086: $fb
	ld   d, e                                        ; $7087: $53
	ld   hl, $1111                                   ; $7088: $21 $11 $11
	ld   de, $ffcf                                   ; $708b: $11 $cf $ff
	or   $7a                                         ; $708e: $f6 $7a
	rst  JumpTable                                         ; $7090: $df
	ld   sp, hl                                      ; $7091: $f9
	ld   de, $bf12                                   ; $7092: $11 $12 $bf
	rst  $38                                         ; $7095: $ff
	ld   a, [$df88]                                  ; $7096: $fa $88 $df
	rst  $38                                         ; $7099: $ff
	add  $21                                         ; $709a: $c6 $21
	ld   de, $1111                                   ; $709c: $11 $11 $11
	ld   a, a                                        ; $709f: $7f
	rst  $38                                         ; $70a0: $ff
	ei                                               ; $70a1: $fb
	add  a                                           ; $70a2: $87
	ld   a, h                                        ; $70a3: $7c
	jp   hl                                          ; $70a4: $e9


	ld   b, c                                        ; $70a5: $41
	inc  de                                          ; $70a6: $13
	sbc  a                                           ; $70a7: $9f
	rst  $38                                         ; $70a8: $ff
	ld   sp, hl                                      ; $70a9: $f9
	ld   h, [hl]                                     ; $70aa: $66
	cp   a                                           ; $70ab: $bf
	rst  $38                                         ; $70ac: $ff
	rst  $20                                         ; $70ad: $e7
	ld   de, $1111                                   ; $70ae: $11 $11 $11
	ld   de, $ff2b                                   ; $70b1: $11 $2b $ff
	rst  $38                                         ; $70b4: $ff
	rst  $38                                         ; $70b5: $ff
	cp   h                                           ; $70b6: $bc
	or   a                                           ; $70b7: $b7
	ld   hl, $5c12                                   ; $70b8: $21 $12 $5c
	rst  $38                                         ; $70bb: $ff
	rst  $38                                         ; $70bc: $ff
	db   $fc                                         ; $70bd: $fc
	cp   h                                           ; $70be: $bc
	call Call_0fa_72db                               ; $70bf: $cd $db $72
	ld   de, $1111                                   ; $70c2: $11 $11 $11
	adc  a                                           ; $70c5: $8f
	rst  $38                                         ; $70c6: $ff
	ld   sp, hl                                      ; $70c7: $f9
	adc  h                                           ; $70c8: $8c
	rst  JumpTable                                         ; $70c9: $df
	db   $fd                                         ; $70ca: $fd
	ld   [hl], c                                     ; $70cb: $71
	ld   de, $ff2b                                   ; $70cc: $11 $2b $ff
	rst  $38                                         ; $70cf: $ff
	db   $eb                                         ; $70d0: $eb
	rst  JumpTable                                         ; $70d1: $df
	rst  $38                                         ; $70d2: $ff
	reti                                             ; $70d3: $d9


	ld   sp, $1111                                   ; $70d4: $31 $11 $11
	ld   de, $ffaf                                   ; $70d7: $11 $af $ff
	ld   sp, hl                                      ; $70da: $f9
	sub  a                                           ; $70db: $97
	sbc  [hl]                                        ; $70dc: $9e
	ei                                               ; $70dd: $fb
	ld   h, c                                        ; $70de: $61
	ld   de, $ff7f                                   ; $70df: $11 $7f $ff
	ei                                               ; $70e2: $fb
	adc  b                                           ; $70e3: $88
	rst  JumpTable                                         ; $70e4: $df
	rst  $38                                         ; $70e5: $ff
	and  $11                                         ; $70e6: $e6 $11
	ld   de, $1111                                   ; $70e8: $11 $11 $11
	ld   e, a                                        ; $70eb: $5f
	rst  $38                                         ; $70ec: $ff
	rst  $38                                         ; $70ed: $ff
	db   $fd                                         ; $70ee: $fd
	call z, $2195                                    ; $70ef: $cc $95 $21
	ld   hl, $ff6c                                   ; $70f2: $21 $6c $ff
	rst  $38                                         ; $70f5: $ff
	call z, $ffee                                    ; $70f6: $cc $ee $ff
	ret  z                                           ; $70f9: $c8

	ld   hl, $1111                                   ; $70fa: $21 $11 $11
	inc  de                                          ; $70fd: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70fe: $cf
	rst  $38                                         ; $70ff: $ff
	db   $fc                                         ; $7100: $fc
	db   $ec                                         ; $7101: $ec
	rst  $28                                         ; $7102: $ef
	rst  $10                                         ; $7103: $d7
	ld   hl, $8e11                                   ; $7104: $21 $11 $8e
	rst  $38                                         ; $7107: $ff
	db   $ec                                         ; $7108: $ec
	cp   l                                           ; $7109: $bd
	rst  $38                                         ; $710a: $ff
	rst  $38                                         ; $710b: $ff
	sub  e                                           ; $710c: $93
	ld   de, $1111                                   ; $710d: $11 $11 $11
	rla                                              ; $7110: $17
	rst  $38                                         ; $7111: $ff
	rst  $38                                         ; $7112: $ff
	db   $dd                                         ; $7113: $dd
	sbc  e                                           ; $7114: $9b
	db   $fd                                         ; $7115: $fd
	sub  e                                           ; $7116: $93
	ld   de, $ff17                                   ; $7117: $11 $17 $ff
	rst  $38                                         ; $711a: $ff
	reti                                             ; $711b: $d9


	xor  a                                           ; $711c: $af
	rst  $38                                         ; $711d: $ff
	db   $fd                                         ; $711e: $fd
	ld   d, c                                        ; $711f: $51
	ld   de, $1111                                   ; $7120: $11 $11 $11
	ld   c, a                                        ; $7123: $4f
	rst  $38                                         ; $7124: $ff
	cp   $fc                                         ; $7125: $fe $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7127: $cf
	ret  c                                           ; $7128: $d8

	ld   sp, $5e11                                   ; $7129: $31 $11 $5e
	rst  $38                                         ; $712c: $ff
	db   $fd                                         ; $712d: $fd
	adc  b                                           ; $712e: $88
	rst  $28                                         ; $712f: $ef
	rst  $38                                         ; $7130: $ff
	and  $11                                         ; $7131: $e6 $11
	ld   de, $1211                                   ; $7133: $11 $11 $12
	rst  $38                                         ; $7136: $ff
	rst  $38                                         ; $7137: $ff
	rst  $28                                         ; $7138: $ef
	set  7, [hl]                                     ; $7139: $cb $fe
	or   h                                           ; $713b: $b4
	ld   de, $ef14                                   ; $713c: $11 $14 $ef
	rst  $38                                         ; $713f: $ff
	rst  $10                                         ; $7140: $d7
	ld   l, h                                        ; $7141: $6c
	rst  $38                                         ; $7142: $ff
	rst  $38                                         ; $7143: $ff
	sub  c                                           ; $7144: $91
	ld   de, $1111                                   ; $7145: $11 $11 $11
	ld   c, d                                        ; $7148: $4a
	rst  $38                                         ; $7149: $ff
	db   $fd                                         ; $714a: $fd
	rst  $38                                         ; $714b: $ff
	rst  $38                                         ; $714c: $ff
	ei                                               ; $714d: $fb
	ld   b, c                                        ; $714e: $41
	inc  de                                          ; $714f: $13
	ld   l, h                                        ; $7150: $6c
	call z, $aa98                                    ; $7151: $cc $98 $aa
	rst  $38                                         ; $7154: $ff
	rst  $38                                         ; $7155: $ff
	sub  $11                                         ; $7156: $d6 $11
	ld   de, $1111                                   ; $7158: $11 $11 $11
	cp   a                                           ; $715b: $bf
	rst  $38                                         ; $715c: $ff
	rst  $28                                         ; $715d: $ef
	db   $ec                                         ; $715e: $ec
	rst  $38                                         ; $715f: $ff
	rst  $10                                         ; $7160: $d7
	ld   b, d                                        ; $7161: $42
	inc  d                                           ; $7162: $14
	xor  [hl]                                        ; $7163: $ae
	cp   $da                                         ; $7164: $fe $da
	sbc  l                                           ; $7166: $9d
	rst  $38                                         ; $7167: $ff
	db   $fd                                         ; $7168: $fd
	ld   d, c                                        ; $7169: $51
	ld   de, $1211                                   ; $716a: $11 $11 $12
	cp   a                                           ; $716d: $bf
	rst  $38                                         ; $716e: $ff
	cp   e                                           ; $716f: $bb
	sbc  $ff                                         ; $7170: $de $ff
	ld   hl, sp+$31                                  ; $7172: $f8 $31
	inc  d                                           ; $7174: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7175: $cf
	db   $fc                                         ; $7176: $fc
	add  [hl]                                        ; $7177: $86
	ld   c, d                                        ; $7178: $4a
	rst  $38                                         ; $7179: $ff
	rst  $38                                         ; $717a: $ff
	add  c                                           ; $717b: $81
	ld   de, $1111                                   ; $717c: $11 $11 $11
	inc  l                                           ; $717f: $2c
	rst  $38                                         ; $7180: $ff
	db   $fc                                         ; $7181: $fc
	db   $ed                                         ; $7182: $ed
	rst  $38                                         ; $7183: $ff
	db   $fd                                         ; $7184: $fd
	ld   [hl], h                                     ; $7185: $74
	ld   [de], a                                     ; $7186: $12
	ld   l, h                                        ; $7187: $6c
	sbc  $ca                                         ; $7188: $de $ca
	ld   a, c                                        ; $718a: $79
	rst  JumpTable                                         ; $718b: $df
	rst  $38                                         ; $718c: $ff
	push de                                          ; $718d: $d5
	ld   de, $1111                                   ; $718e: $11 $11 $11
	ld   [de], a                                     ; $7191: $12
	rst  JumpTable                                         ; $7192: $df
	rst  $38                                         ; $7193: $ff
	xor  $df                                         ; $7194: $ee $df
	rst  $38                                         ; $7196: $ff
	jp   c, $2562                                    ; $7197: $da $62 $25

	xor  l                                           ; $719a: $ad
	call c, $9db8                                    ; $719b: $dc $b8 $9d
	rst  $38                                         ; $719e: $ff
	db   $fc                                         ; $719f: $fc
	ld   d, c                                        ; $71a0: $51
	ld   de, $1111                                   ; $71a1: $11 $11 $11
	dec  de                                          ; $71a4: $1b
	rst  $38                                         ; $71a5: $ff
	db   $fd                                         ; $71a6: $fd
	db   $ed                                         ; $71a7: $ed
	rst  $38                                         ; $71a8: $ff
	rst  $38                                         ; $71a9: $ff
	ret  z                                           ; $71aa: $c8

	ld   b, d                                        ; $71ab: $42
	ld   b, a                                        ; $71ac: $47
	xor  h                                           ; $71ad: $ac
	cp   e                                           ; $71ae: $bb
	sbc  d                                           ; $71af: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71b0: $cf
	rst  $38                                         ; $71b1: $ff
	rst  $10                                         ; $71b2: $d7
	ld   sp, $1111                                   ; $71b3: $31 $11 $11
	ld   de, $ff3b                                   ; $71b6: $11 $3b $ff
	call $ffbd                                       ; $71b9: $cd $bd $ff
	rst  $38                                         ; $71bc: $ff
	ret  c                                           ; $71bd: $d8

	ld   d, h                                        ; $71be: $54
	ld   h, a                                        ; $71bf: $67
	adc  c                                           ; $71c0: $89
	adc  b                                           ; $71c1: $88
	adc  h                                           ; $71c2: $8c
	rst  $28                                         ; $71c3: $ef
	ei                                               ; $71c4: $fb
	sub  a                                           ; $71c5: $97
	ld   h, h                                        ; $71c6: $64
	ld   hl, $1111                                   ; $71c7: $21 $11 $11
	dec  h                                           ; $71ca: $25
	sbc  d                                           ; $71cb: $9a

Jump_0fa_71cc:
	xor  b                                           ; $71cc: $a8
	sbc  e                                           ; $71cd: $9b
	cp   [hl]                                        ; $71ce: $be
	rst  $38                                         ; $71cf: $ff
	db   $eb                                         ; $71d0: $eb
	and  a                                           ; $71d1: $a7
	adc  b                                           ; $71d2: $88
	xor  c                                           ; $71d3: $a9
	sub  a                                           ; $71d4: $97
	ld   a, b                                        ; $71d5: $78
	cp   l                                           ; $71d6: $bd
	call $77aa                                       ; $71d7: $cd $aa $77
	ld   [hl], l                                     ; $71da: $75
	ld   d, d                                        ; $71db: $52
	ld   de, $3512                                   ; $71dc: $11 $12 $35
	ld   d, [hl]                                     ; $71df: $56
	ld   b, l                                        ; $71e0: $45
	ld   h, a                                        ; $71e1: $67
	xor  d                                           ; $71e2: $aa
	set  1, e                                        ; $71e3: $cb $cb
	cp   e                                           ; $71e5: $bb
	cp   e                                           ; $71e6: $bb
	xor  c                                           ; $71e7: $a9
	sbc  c                                           ; $71e8: $99
	xor  e                                           ; $71e9: $ab
	cp   h                                           ; $71ea: $bc
	res  5, d                                        ; $71eb: $cb $aa
	xor  d                                           ; $71ed: $aa
	sbc  b                                           ; $71ee: $98
	sub  a                                           ; $71ef: $97
	ld   h, l                                        ; $71f0: $65
	ld   b, d                                        ; $71f1: $42
	inc  sp                                          ; $71f2: $33
	inc  [hl]                                        ; $71f3: $34
	ld   b, h                                        ; $71f4: $44
	inc  sp                                          ; $71f5: $33
	ld   b, l                                        ; $71f6: $45
	ld   l, b                                        ; $71f7: $68
	sbc  b                                           ; $71f8: $98
	sbc  c                                           ; $71f9: $99
	xor  e                                           ; $71fa: $ab
	cp   h                                           ; $71fb: $bc
	res  7, e                                        ; $71fc: $cb $bb
	cp   h                                           ; $71fe: $bc
	call z, $bbcb                                    ; $71ff: $cc $cb $bb
	cp   d                                           ; $7202: $ba
	sbc  d                                           ; $7203: $9a
	adc  c                                           ; $7204: $89
	ld   [hl], a                                     ; $7205: $77
	ld   h, [hl]                                     ; $7206: $66
	ld   d, h                                        ; $7207: $54
	ld   b, e                                        ; $7208: $43
	ld   b, e                                        ; $7209: $43
	ld   b, h                                        ; $720a: $44
	ld   b, h                                        ; $720b: $44
	ld   b, h                                        ; $720c: $44
	ld   b, [hl]                                     ; $720d: $46
	ld   l, b                                        ; $720e: $68
	adc  c                                           ; $720f: $89
	sbc  d                                           ; $7210: $9a
	cp   e                                           ; $7211: $bb
	call z, $cbcd                                    ; $7212: $cc $cd $cb
	call z, $bbbc                                    ; $7215: $cc $bc $bb
	xor  c                                           ; $7218: $a9
	sbc  c                                           ; $7219: $99
	adc  b                                           ; $721a: $88
	add  a                                           ; $721b: $87
	ld   h, [hl]                                     ; $721c: $66
	halt                                             ; $721d: $76
	ld   h, [hl]                                     ; $721e: $66
	ld   d, l                                        ; $721f: $55
	ld   d, l                                        ; $7220: $55
	ld   d, l                                        ; $7221: $55
	ld   d, l                                        ; $7222: $55
	ld   h, [hl]                                     ; $7223: $66
	ld   h, [hl]                                     ; $7224: $66
	ld   a, b                                        ; $7225: $78
	sbc  b                                           ; $7226: $98
	sbc  c                                           ; $7227: $99
	sbc  d                                           ; $7228: $9a
	xor  e                                           ; $7229: $ab
	cp   d                                           ; $722a: $ba
	cp   d                                           ; $722b: $ba
	cp   e                                           ; $722c: $bb
	cp   c                                           ; $722d: $b9
	sbc  c                                           ; $722e: $99
	adc  b                                           ; $722f: $88
	adc  b                                           ; $7230: $88
	sub  a                                           ; $7231: $97
	ld   h, [hl]                                     ; $7232: $66
	ld   h, a                                        ; $7233: $67
	ld   [hl], a                                     ; $7234: $77
	ld   a, b                                        ; $7235: $78
	ld   a, b                                        ; $7236: $78
	sbc  c                                           ; $7237: $99
	sub  a                                           ; $7238: $97
	ld   h, [hl]                                     ; $7239: $66
	halt                                             ; $723a: $76
	ld   [hl], a                                     ; $723b: $77
	adc  b                                           ; $723c: $88
	ld   a, b                                        ; $723d: $78
	adc  b                                           ; $723e: $88
	sbc  c                                           ; $723f: $99
	xor  c                                           ; $7240: $a9
	cp   c                                           ; $7241: $b9
	ld   [hl], a                                     ; $7242: $77
	sbc  c                                           ; $7243: $99
	ld   [hl], a                                     ; $7244: $77
	ld   [hl], a                                     ; $7245: $77
	ld   h, [hl]                                     ; $7246: $66
	ld   a, b                                        ; $7247: $78
	sbc  c                                           ; $7248: $99
	sbc  c                                           ; $7249: $99
	sbc  b                                           ; $724a: $98
	adc  b                                           ; $724b: $88
	add  a                                           ; $724c: $87
	ld   [hl], a                                     ; $724d: $77
	ld   [hl], a                                     ; $724e: $77
	ld   [hl], a                                     ; $724f: $77
	ld   a, c                                        ; $7250: $79
	adc  c                                           ; $7251: $89
	sbc  c                                           ; $7252: $99
	sbc  c                                           ; $7253: $99
	sbc  b                                           ; $7254: $98
	sbc  b                                           ; $7255: $98
	ld   [hl], a                                     ; $7256: $77

Call_0fa_7257:
	add  a                                           ; $7257: $87
	ld   h, a                                        ; $7258: $67
	ld   a, b                                        ; $7259: $78
	ld   [hl], a                                     ; $725a: $77
	sbc  d                                           ; $725b: $9a
	sbc  b                                           ; $725c: $98
	adc  c                                           ; $725d: $89
	sub  a                                           ; $725e: $97
	ld   [hl], a                                     ; $725f: $77
	ld   [hl], a                                     ; $7260: $77
	halt                                             ; $7261: $76
	ld   a, b                                        ; $7262: $78
	adc  b                                           ; $7263: $88
	adc  c                                           ; $7264: $89
	sbc  c                                           ; $7265: $99
	xor  d                                           ; $7266: $aa
	sbc  b                                           ; $7267: $98
	adc  b                                           ; $7268: $88
	ld   [hl], a                                     ; $7269: $77
	ld   h, a                                        ; $726a: $67
	ld   [hl], a                                     ; $726b: $77
	ld   a, b                                        ; $726c: $78
	adc  c                                           ; $726d: $89
	add  a                                           ; $726e: $87
	adc  b                                           ; $726f: $88
	sbc  b                                           ; $7270: $98
	sbc  b                                           ; $7271: $98
	adc  c                                           ; $7272: $89
	sbc  c                                           ; $7273: $99
	ld   [hl], a                                     ; $7274: $77
	halt                                             ; $7275: $76
	ld   d, [hl]                                     ; $7276: $56
	ld   [hl], a                                     ; $7277: $77
	halt                                             ; $7278: $76
	adc  c                                           ; $7279: $89
	adc  b                                           ; $727a: $88
	adc  d                                           ; $727b: $8a
	sbc  d                                           ; $727c: $9a
	sbc  e                                           ; $727d: $9b
	xor  b                                           ; $727e: $a8
	ld   h, a                                        ; $727f: $67
	add  a                                           ; $7280: $87
	add  [hl]                                        ; $7281: $86
	ld   h, [hl]                                     ; $7282: $66
	ld   [hl], a                                     ; $7283: $77
	ld   a, b                                        ; $7284: $78
	sbc  c                                           ; $7285: $99
	sbc  b                                           ; $7286: $98
	adc  c                                           ; $7287: $89

Jump_0fa_7288:
	sbc  b                                           ; $7288: $98
	adc  b                                           ; $7289: $88
	add  a                                           ; $728a: $87
	ld   [hl], a                                     ; $728b: $77
	adc  b                                           ; $728c: $88
	ld   a, c                                        ; $728d: $79
	sbc  b                                           ; $728e: $98
	halt                                             ; $728f: $76
	ld   a, b                                        ; $7290: $78
	add  a                                           ; $7291: $87
	adc  c                                           ; $7292: $89
	sbc  b                                           ; $7293: $98
	adc  b                                           ; $7294: $88
	sbc  c                                           ; $7295: $99
	adc  b                                           ; $7296: $88
	add  a                                           ; $7297: $87
	ld   a, b                                        ; $7298: $78
	adc  c                                           ; $7299: $89
	adc  b                                           ; $729a: $88
	ld   [hl], a                                     ; $729b: $77
	ld   [hl], a                                     ; $729c: $77
	sub  a                                           ; $729d: $97
	ld   a, b                                        ; $729e: $78
	ld   [hl], a                                     ; $729f: $77
	ld   h, a                                        ; $72a0: $67
	adc  b                                           ; $72a1: $88
	sbc  b                                           ; $72a2: $98
	sbc  b                                           ; $72a3: $98
	adc  c                                           ; $72a4: $89
	sbc  c                                           ; $72a5: $99
	sbc  b                                           ; $72a6: $98
	ld   [hl], a                                     ; $72a7: $77
	ld   [hl], a                                     ; $72a8: $77
	ld   [hl], a                                     ; $72a9: $77
	add  a                                           ; $72aa: $87
	ld   a, b                                        ; $72ab: $78
	adc  b                                           ; $72ac: $88
	adc  b                                           ; $72ad: $88
	adc  b                                           ; $72ae: $88
	adc  b                                           ; $72af: $88
	add  a                                           ; $72b0: $87
	ld   a, b                                        ; $72b1: $78
	ld   a, b                                        ; $72b2: $78
	ld   [hl], a                                     ; $72b3: $77
	adc  b                                           ; $72b4: $88
	adc  b                                           ; $72b5: $88
	ld   a, b                                        ; $72b6: $78
	add  a                                           ; $72b7: $87
	sbc  b                                           ; $72b8: $98
	adc  b                                           ; $72b9: $88
	add  a                                           ; $72ba: $87
	adc  c                                           ; $72bb: $89
	ld   a, b                                        ; $72bc: $78
	adc  c                                           ; $72bd: $89
	ld   a, b                                        ; $72be: $78
	add  a                                           ; $72bf: $87
	ld   [hl], a                                     ; $72c0: $77
	sbc  c                                           ; $72c1: $99
	sbc  b                                           ; $72c2: $98
	adc  b                                           ; $72c3: $88
	sbc  b                                           ; $72c4: $98
	adc  c                                           ; $72c5: $89
	halt                                             ; $72c6: $76
	ld   [hl], a                                     ; $72c7: $77
	ld   [hl], a                                     ; $72c8: $77
	ld   [hl], a                                     ; $72c9: $77
	ld   [hl], a                                     ; $72ca: $77
	ld   [hl], a                                     ; $72cb: $77
	add  a                                           ; $72cc: $87
	ld   a, c                                        ; $72cd: $79
	adc  c                                           ; $72ce: $89
	sbc  b                                           ; $72cf: $98
	add  a                                           ; $72d0: $87
	sbc  b                                           ; $72d1: $98
	sbc  b                                           ; $72d2: $98
	adc  b                                           ; $72d3: $88
	add  a                                           ; $72d4: $87
	add  a                                           ; $72d5: $87
	ld   a, b                                        ; $72d6: $78
	adc  b                                           ; $72d7: $88
	adc  b                                           ; $72d8: $88
	ld   a, b                                        ; $72d9: $78
	adc  b                                           ; $72da: $88

Call_0fa_72db:
	add  a                                           ; $72db: $87
	adc  b                                           ; $72dc: $88
	add  a                                           ; $72dd: $87
	ld   a, b                                        ; $72de: $78
	adc  b                                           ; $72df: $88
	ld   [hl], a                                     ; $72e0: $77
	ld   a, b                                        ; $72e1: $78
	ld   a, b                                        ; $72e2: $78
	adc  b                                           ; $72e3: $88
	adc  b                                           ; $72e4: $88
	sbc  b                                           ; $72e5: $98
	sbc  c                                           ; $72e6: $99
	xor  c                                           ; $72e7: $a9
	sbc  c                                           ; $72e8: $99
	ld   a, c                                        ; $72e9: $79
	sbc  h                                           ; $72ea: $9c
	sbc  b                                           ; $72eb: $98
	ld   [hl], a                                     ; $72ec: $77
	ld   [hl], a                                     ; $72ed: $77
	add  a                                           ; $72ee: $87
	halt                                             ; $72ef: $76
	adc  b                                           ; $72f0: $88
	add  a                                           ; $72f1: $87
	ld   [hl], a                                     ; $72f2: $77
	ld   a, b                                        ; $72f3: $78
	ld   [hl], a                                     ; $72f4: $77
	ld   a, b                                        ; $72f5: $78
	ld   a, b                                        ; $72f6: $78
	ld   a, c                                        ; $72f7: $79
	sub  a                                           ; $72f8: $97
	sub  a                                           ; $72f9: $97
	adc  c                                           ; $72fa: $89
	xor  b                                           ; $72fb: $a8
	sbc  c                                           ; $72fc: $99
	sbc  c                                           ; $72fd: $99
	sbc  d                                           ; $72fe: $9a
	adc  d                                           ; $72ff: $8a
	adc  b                                           ; $7300: $88
	ld   [hl], a                                     ; $7301: $77
	add  a                                           ; $7302: $87
	halt                                             ; $7303: $76
	ld   h, l                                        ; $7304: $65
	ld   d, h                                        ; $7305: $54
	ld   b, e                                        ; $7306: $43
	ld   d, [hl]                                     ; $7307: $56
	ld   h, a                                        ; $7308: $67
	ld   l, b                                        ; $7309: $68
	adc  d                                           ; $730a: $8a
	cp   e                                           ; $730b: $bb
	xor  e                                           ; $730c: $ab
	set  1, h                                        ; $730d: $cb $cc
	set  1, h                                        ; $730f: $cb $cc
	cp   d                                           ; $7311: $ba
	xor  d                                           ; $7312: $aa
	ld   [hl], a                                     ; $7313: $77
	halt                                             ; $7314: $76
	ld   b, c                                        ; $7315: $41
	ld   de, $4324                                   ; $7316: $11 $24 $43
	dec  [hl]                                        ; $7319: $35
	ld   a, c                                        ; $731a: $79
	sbc  c                                           ; $731b: $99
	sbc  e                                           ; $731c: $9b
	rst  $28                                         ; $731d: $ef
	db   $ec                                         ; $731e: $ec
	cp   e                                           ; $731f: $bb
	call z, $8ab9                                    ; $7320: $cc $b9 $8a
	xor  e                                           ; $7323: $ab
	cp   c                                           ; $7324: $b9
	ld   h, [hl]                                     ; $7325: $66
	ld   d, e                                        ; $7326: $53
	ld   de, $3311                                   ; $7327: $11 $11 $33
	inc  sp                                          ; $732a: $33
	ld   c, b                                        ; $732b: $48
	xor  [hl]                                        ; $732c: $ae
	cp   h                                           ; $732d: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $732e: $cf
	rst  $38                                         ; $732f: $ff
	db   $fc                                         ; $7330: $fc
	cp   l                                           ; $7331: $bd
	jp   c, $8a86                                    ; $7332: $da $86 $8a

	jp   z, Jump_0fa_7577                            ; $7335: $ca $77 $75

	ld   de, $1211                                   ; $7338: $11 $11 $12
	ld   de, $de49                                   ; $733b: $11 $49 $de
	db   $ec                                         ; $733e: $ec
	rst  $38                                         ; $733f: $ff
	rst  $38                                         ; $7340: $ff
	db   $fc                                         ; $7341: $fc
	call $45c8                                       ; $7342: $cd $c8 $45
	adc  d                                           ; $7345: $8a
	cp   e                                           ; $7346: $bb
	add  a                                           ; $7347: $87
	add  h                                           ; $7348: $84
	ld   de, $1111                                   ; $7349: $11 $11 $11
	ld   de, $df48                                   ; $734c: $11 $48 $df
	cp   $ff                                         ; $734f: $fe $ff
	rst  $38                                         ; $7351: $ff
	db   $fd                                         ; $7352: $fd
	db   $dd                                         ; $7353: $dd
	or   [hl]                                        ; $7354: $b6
	ld   b, a                                        ; $7355: $47
	xor  e                                           ; $7356: $ab
	cp   d                                           ; $7357: $ba
	xor  d                                           ; $7358: $aa
	ld   h, c                                        ; $7359: $61
	ld   de, $1111                                   ; $735a: $11 $11 $11
	inc  de                                          ; $735d: $13
	adc  h                                           ; $735e: $8c
	rst  $28                                         ; $735f: $ef
	rst  $38                                         ; $7360: $ff
	rst  $38                                         ; $7361: $ff
	rst  $38                                         ; $7362: $ff
	cp   $da                                         ; $7363: $fe $da
	ld   h, e                                        ; $7365: $63
	ld   e, b                                        ; $7366: $58
	sbc  d                                           ; $7367: $9a
	cp   h                                           ; $7368: $bc
	or   a                                           ; $7369: $b7
	ld   sp, $1111                                   ; $736a: $31 $11 $11
	ld   de, $7b15                                   ; $736d: $11 $15 $7b
	rst  $38                                         ; $7370: $ff
	rst  $38                                         ; $7371: $ff
	rst  $38                                         ; $7372: $ff
	rst  $38                                         ; $7373: $ff
	db   $fc                                         ; $7374: $fc
	xor  c                                           ; $7375: $a9
	ld   d, d                                        ; $7376: $52
	ld   l, c                                        ; $7377: $69
	cp   h                                           ; $7378: $bc
	db   $dd                                         ; $7379: $dd
	cp   c                                           ; $737a: $b9
	ld   hl, $1111                                   ; $737b: $21 $11 $11
	ld   de, $ad17                                   ; $737e: $11 $17 $ad
	rst  $38                                         ; $7381: $ff
	rst  $38                                         ; $7382: $ff
	rst  $38                                         ; $7383: $ff
	rst  $38                                         ; $7384: $ff
	db   $eb                                         ; $7385: $eb
	add  [hl]                                        ; $7386: $86
	ld   b, h                                        ; $7387: $44
	sbc  e                                           ; $7388: $9b
	cp   h                                           ; $7389: $bc
	db   $fd                                         ; $738a: $fd
	and  [hl]                                        ; $738b: $a6
	ld   de, $1111                                   ; $738c: $11 $11 $11
	ld   de, $cf39                                   ; $738f: $11 $39 $cf
	rst  $38                                         ; $7392: $ff
	rst  $38                                         ; $7393: $ff
	rst  $38                                         ; $7394: $ff
	rst  $38                                         ; $7395: $ff
	ret                                              ; $7396: $c9


	ld   [hl], l                                     ; $7397: $75
	scf                                              ; $7398: $37
	cp   e                                           ; $7399: $bb
	cp   a                                           ; $739a: $bf
	db   $fc                                         ; $739b: $fc
	sub  h                                           ; $739c: $94
	ld   de, $1211                                   ; $739d: $11 $11 $12
	ld   de, $ff5d                                   ; $73a0: $11 $5d $ff
	rst  $38                                         ; $73a3: $ff
	rst  $38                                         ; $73a4: $ff
	db   $fd                                         ; $73a5: $fd
	rst  $28                                         ; $73a6: $ef
	or   a                                           ; $73a7: $b7
	ld   d, h                                        ; $73a8: $54
	ld   e, d                                        ; $73a9: $5a
	set  5, a                                        ; $73aa: $cb $ef
	ei                                               ; $73ac: $fb
	add  l                                           ; $73ad: $85
	ld   de, $1211                                   ; $73ae: $11 $11 $12
	ld   de, $ff9f                                   ; $73b1: $11 $9f $ff
	rst  $38                                         ; $73b4: $ff
	rst  $38                                         ; $73b5: $ff
	db   $fc                                         ; $73b6: $fc
	db   $fd                                         ; $73b7: $fd
	ld   [hl], l                                     ; $73b8: $75
	ld   b, [hl]                                     ; $73b9: $46
	sbc  d                                           ; $73ba: $9a
	cp   [hl]                                        ; $73bb: $be
	rst  $38                                         ; $73bc: $ff
	db   $db                                         ; $73bd: $db
	add  [hl]                                        ; $73be: $86
	ld   de, $3611                                   ; $73bf: $11 $11 $36
	ld   de, $ffff                                   ; $73c2: $11 $ff $ff
	rst  $38                                         ; $73c5: $ff
	rst  $38                                         ; $73c6: $ff
	cp   e                                           ; $73c7: $bb
	ei                                               ; $73c8: $fb
	ld   b, h                                        ; $73c9: $44
	sbc  c                                           ; $73ca: $99
	xor  e                                           ; $73cb: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73cc: $cf
	rst  $38                                         ; $73cd: $ff
	sbc  h                                           ; $73ce: $9c
	and  l                                           ; $73cf: $a5
	ld   de, $5a11                                   ; $73d0: $11 $11 $5a
	ld   de, $9fff                                   ; $73d3: $11 $ff $9f
	rst  $38                                         ; $73d6: $ff
	rst  $38                                         ; $73d7: $ff
	adc  e                                           ; $73d8: $8b
	ld   a, [$fb17]                                  ; $73d9: $fa $17 $fb
	xor  h                                           ; $73dc: $ac
	rst  $38                                         ; $73dd: $ff
	db   $fc                                         ; $73de: $fc
	adc  l                                           ; $73df: $8d
	and  d                                           ; $73e0: $a2
	ld   de, $d511                                   ; $73e1: $11 $11 $d5
	rla                                              ; $73e4: $17
	rst  $38                                         ; $73e5: $ff
	ld   l, a                                        ; $73e6: $6f
	cp   $fd                                         ; $73e7: $fe $fd
	ld   e, a                                        ; $73e9: $5f
	push af                                          ; $73ea: $f5
	ld   e, a                                        ; $73eb: $5f
	ld   sp, hl                                      ; $73ec: $f9
	jp   c, $c9df                                    ; $73ed: $da $df $c9

	xor  a                                           ; $73f0: $af
	ld   d, c                                        ; $73f1: $51
	ld   de, $f111                                   ; $73f2: $11 $11 $f1
	rra                                              ; $73f5: $1f
	push af                                          ; $73f6: $f5
	cp   a                                           ; $73f7: $bf
	cp   a                                           ; $73f8: $bf
	ld   hl, sp+$5f                                  ; $73f9: $f8 $5f
	di                                               ; $73fb: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73fc: $cf
	jp   c, $cfe6                                    ; $73fd: $da $e6 $cf

	xor  b                                           ; $7400: $a8
	db   $fd                                         ; $7401: $fd
	ld   de, $1411                                   ; $7402: $11 $11 $14
	pop  hl                                          ; $7405: $e1
	rra                                              ; $7406: $1f
	db   $f4                                         ; $7407: $f4
	rst  $38                                         ; $7408: $ff
	xor  a                                           ; $7409: $af
	push af                                          ; $740a: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $740b: $cf
	and  h                                           ; $740c: $a4
	rst  $38                                         ; $740d: $ff
	cp   e                                           ; $740e: $bb
	and  a                                           ; $740f: $a7
	ei                                               ; $7410: $fb
	sbc  d                                           ; $7411: $9a
	rst  $30                                         ; $7412: $f7
	ld   de, $1c11                                   ; $7413: $11 $11 $1c
	ld   b, c                                        ; $7416: $41
	ld   c, a                                        ; $7417: $4f
	cp   b                                           ; $7418: $b8
	ld   a, [$c3df]                                  ; $7419: $fa $df $c3
	rst  $38                                         ; $741c: $ff
	ld   d, a                                        ; $741d: $57
	rst  $38                                         ; $741e: $ff
	sbc  l                                           ; $741f: $9d
	ld   a, d                                        ; $7420: $7a
	ei                                               ; $7421: $fb
	sbc  l                                           ; $7422: $9d
	db   $f4                                         ; $7423: $f4
	ld   de, $1f11                                   ; $7424: $11 $11 $1f
	ld   de, $c67f                                   ; $7427: $11 $7f $c6
	cp   $ff                                         ; $742a: $fe $ff
	ld   [hl], a                                     ; $742c: $77
	rst  $38                                         ; $742d: $ff
	add  hl, hl                                      ; $742e: $29
	rst  $38                                         ; $742f: $ff
	adc  e                                           ; $7430: $8b
	adc  a                                           ; $7431: $8f
	ld   sp, hl                                      ; $7432: $f9
	cp   a                                           ; $7433: $bf
	pop  af                                          ; $7434: $f1
	ld   de, $1e11                                   ; $7435: $11 $11 $1e
	ld   de, $8adf                                   ; $7438: $11 $df $8a
	db   $fd                                         ; $743b: $fd
	rst  $38                                         ; $743c: $ff
	ld   e, b                                        ; $743d: $58
	rst  $38                                         ; $743e: $ff
	dec  e                                           ; $743f: $1d
	db   $fd                                         ; $7440: $fd
	xor  l                                           ; $7441: $ad
	xor  a                                           ; $7442: $af
	ld   hl, sp-$31                                  ; $7443: $f8 $cf
	or   c                                           ; $7445: $b1
	ld   hl, $1f11                                   ; $7446: $21 $11 $1f
	ld   de, $5bff                                   ; $7449: $11 $ff $5b
	db   $fc                                         ; $744c: $fc
	db   $fc                                         ; $744d: $fc
	dec  a                                           ; $744e: $3d
	ld   sp, hl                                      ; $744f: $f9
	cpl                                              ; $7450: $2f
	db   $fc                                         ; $7451: $fc
	sbc  l                                           ; $7452: $9d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7453: $cf
	xor  c                                           ; $7454: $a9
	rst  $38                                         ; $7455: $ff
	ld   [hl], c                                     ; $7456: $71
	ld   b, c                                        ; $7457: $41
	ld   de, $112d                                   ; $7458: $11 $2d $11
	rst  $38                                         ; $745b: $ff
	inc  a                                           ; $745c: $3c
	cp   $f9                                         ; $745d: $fe $f9
	ld   c, a                                        ; $745f: $4f
	or   $3f                                         ; $7460: $f6 $3f
	ld   a, [$dfad]                                  ; $7462: $fa $ad $df
	sbc  d                                           ; $7465: $9a
	rst  $38                                         ; $7466: $ff
	ld   b, c                                        ; $7467: $41
	ld   d, c                                        ; $7468: $51
	ld   de, $112d                                   ; $7469: $11 $2d $11
	rst  $38                                         ; $746c: $ff
	ld   a, [de]                                     ; $746d: $1a
	cp   $f9                                         ; $746e: $fe $f9
	ld   c, a                                        ; $7470: $4f
	db   $f4                                         ; $7471: $f4
	ccf                                              ; $7472: $3f
	ld   a, [$ffdf]                                  ; $7473: $fa $df $ff
	adc  e                                           ; $7476: $8b
	rst  $38                                         ; $7477: $ff
	ld   [hl-], a                                    ; $7478: $32
	ld   d, c                                        ; $7479: $51
	ld   de, $113d                                   ; $747a: $11 $3d $11
	cp   $1c                                         ; $747d: $fe $1c
	db   $fc                                         ; $747f: $fc
	jp   hl                                          ; $7480: $e9


	ld   c, a                                        ; $7481: $4f
	db   $f4                                         ; $7482: $f4
	ld   e, a                                        ; $7483: $5f
	ld   sp, hl                                      ; $7484: $f9
	rst  $38                                         ; $7485: $ff
	sbc  $8b                                         ; $7486: $de $8b
	db   $fd                                         ; $7488: $fd
	inc  [hl]                                        ; $7489: $34
	ld   d, c                                        ; $748a: $51
	ld   de, $114b                                   ; $748b: $11 $4b $11
	rst  $38                                         ; $748e: $ff
	jr   @+$01                                       ; $748f: $18 $ff

	and  $8f                                         ; $7491: $e6 $8f
	db   $f4                                         ; $7493: $f4
	ld   a, a                                        ; $7494: $7f
	ld   hl, sp-$21                                  ; $7495: $f8 $df
	db   $ed                                         ; $7497: $ed
	ld   a, l                                        ; $7498: $7d
	db   $fd                                         ; $7499: $fd
	ld   [hl], $61                                   ; $749a: $36 $61
	ld   de, $111b                                   ; $749c: $11 $1b $11
	rst  $38                                         ; $749f: $ff
	ld   d, $ff                                      ; $74a0: $16 $ff
	reti                                             ; $74a2: $d9


	sbc  a                                           ; $74a3: $9f
	push af                                          ; $74a4: $f5
	ld   a, a                                        ; $74a5: $7f
	ld   hl, sp-$21                                  ; $74a6: $f8 $df
	db   $ec                                         ; $74a8: $ec
	adc  l                                           ; $74a9: $8d
	db   $fc                                         ; $74aa: $fc
	ld   [hl], $71                                   ; $74ab: $36 $71
	ld   de, $1119                                   ; $74ad: $11 $19 $11
	rst  $38                                         ; $74b0: $ff
	dec  d                                           ; $74b1: $15
	rst  $38                                         ; $74b2: $ff
	jp   z, $f6bf                                    ; $74b3: $ca $bf $f6

	adc  a                                           ; $74b6: $8f
	ld   hl, sp-$11                                  ; $74b7: $f8 $ef
	db   $eb                                         ; $74b9: $eb
	sbc  [hl]                                        ; $74ba: $9e
	ei                                               ; $74bb: $fb
	ld   b, a                                        ; $74bc: $47
	ld   h, c                                        ; $74bd: $61
	ld   de, $1135                                   ; $74be: $11 $35 $11
	ld   hl, sp+$1b                                  ; $74c1: $f8 $1b
	db   $fd                                         ; $74c3: $fd
	jp   c, $f5ef                                    ; $74c4: $da $ef $f5

	rst  JumpTable                                         ; $74c7: $df
	ld   a, [$dcff]                                  ; $74c8: $fa $ff $dc
	xor  a                                           ; $74cb: $af
	ld   sp, hl                                      ; $74cc: $f9
	ld   c, b                                        ; $74cd: $48
	ld   sp, $4211                                   ; $74ce: $31 $11 $42
	ld   de, $1ef5                                   ; $74d1: $11 $f5 $1e
	ld   sp, hl                                      ; $74d4: $f9
	call z, $f5ff                                    ; $74d5: $cc $ff $f5
	rst  $38                                         ; $74d8: $ff
	cp   c                                           ; $74d9: $b9
	rst  $38                                         ; $74da: $ff
	cp   h                                           ; $74db: $bc
	cp   a                                           ; $74dc: $bf
	add  sp, $69                                     ; $74dd: $e8 $69
	ld   hl, $3111                                   ; $74df: $21 $11 $31
	ld   de, $1ef4                                   ; $74e2: $11 $f4 $1e
	ld   sp, hl                                      ; $74e5: $f9
	cp   l                                           ; $74e6: $bd
	rst  $38                                         ; $74e7: $ff
	sub  $ff                                         ; $74e8: $d6 $ff
	xor  e                                           ; $74ea: $ab
	rst  $38                                         ; $74eb: $ff
	cp   l                                           ; $74ec: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74ed: $cf
	add  sp, $7a                                     ; $74ee: $e8 $7a
	ld   de, $1111                                   ; $74f0: $11 $11 $11
	ld   de, $1ff4                                   ; $74f3: $11 $f4 $1f
	ld   hl, sp-$52                                  ; $74f6: $f8 $ae
	rst  $38                                         ; $74f8: $ff
	ret  z                                           ; $74f9: $c8

	rst  $38                                         ; $74fa: $ff
	adc  h                                           ; $74fb: $8c
	rst  $38                                         ; $74fc: $ff
	cp   [hl]                                        ; $74fd: $be
	rst  $28                                         ; $74fe: $ef
	ret  c                                           ; $74ff: $d8

	sbc  e                                           ; $7500: $9b
	ld   hl, $1411                                   ; $7501: $21 $11 $14
	ld   de, $17f9                                   ; $7504: $11 $f9 $17
	db   $fc                                         ; $7507: $fc
	xor  a                                           ; $7508: $af
	rst  $38                                         ; $7509: $ff
	ld   a, [$b9ef]                                  ; $750a: $fa $ef $b9
	rst  $38                                         ; $750d: $ff
	cp   h                                           ; $750e: $bc
	sbc  $f9                                         ; $750f: $de $f9
	adc  e                                           ; $7511: $8b
	ld   d, c                                        ; $7512: $51
	ld   de, $1112                                   ; $7513: $11 $12 $11
	ld   l, d                                        ; $7516: $6a
	ld   [de], a                                     ; $7517: $12
	rst  $38                                         ; $7518: $ff
	sbc  a                                           ; $7519: $9f
	rst  $38                                         ; $751a: $ff
	db   $fc                                         ; $751b: $fc
	rst  JumpTable                                         ; $751c: $df
	rst  $20                                         ; $751d: $e7
	rst  $38                                         ; $751e: $ff
	xor  h                                           ; $751f: $ac
	db   $dd                                         ; $7520: $dd
	ld   [$719c], a                                  ; $7521: $ea $9c $71
	ld   de, $2111                                   ; $7524: $11 $11 $21
	ld   a, [de]                                     ; $7527: $1a
	ld   de, $aebf                                   ; $7528: $11 $bf $ae
	rst  $38                                         ; $752b: $ff
	rst  $38                                         ; $752c: $ff
	rst  $38                                         ; $752d: $ff
	ei                                               ; $752e: $fb
	rst  JumpTable                                         ; $752f: $df
	jp   z, $ccdb                                    ; $7530: $ca $db $cc

	adc  c                                           ; $7533: $89
	and  e                                           ; $7534: $a3
	ld   de, $1111                                   ; $7535: $11 $11 $11
	ld   de, $1b71                                   ; $7538: $11 $71 $1b
	ld   a, [$ffff]                                  ; $753b: $fa $ff $ff
	rst  $38                                         ; $753e: $ff
	rst  $38                                         ; $753f: $ff
	cp   a                                           ; $7540: $bf
	ei                                               ; $7541: $fb
	call z, $b9bc                                    ; $7542: $cc $bc $b9
	sub  a                                           ; $7545: $97
	ld   hl, $1211                                   ; $7546: $21 $11 $12
	ld   de, $1114                                   ; $7549: $11 $14 $11
	cp   h                                           ; $754c: $bc
	cp   [hl]                                        ; $754d: $be
	rst  $38                                         ; $754e: $ff
	rst  $38                                         ; $754f: $ff
	rst  $38                                         ; $7550: $ff
	db   $fd                                         ; $7551: $fd
	cp   $bb                                         ; $7552: $fe $bb
	cp   d                                           ; $7554: $ba
	cp   c                                           ; $7555: $b9
	adc  c                                           ; $7556: $89
	ld   h, d                                        ; $7557: $62
	ld   hl, $2111                                   ; $7558: $21 $11 $21
	ld   de, $1941                                   ; $755b: $11 $41 $19
	sbc  e                                           ; $755e: $9b
	rst  JumpTable                                         ; $755f: $df
	rst  $38                                         ; $7560: $ff
	rst  $38                                         ; $7561: $ff
	rst  $38                                         ; $7562: $ff
	rst  $28                                         ; $7563: $ef
	db   $fc                                         ; $7564: $fc
	cp   e                                           ; $7565: $bb
	xor  e                                           ; $7566: $ab
	sbc  b                                           ; $7567: $98
	ld   [hl], a                                     ; $7568: $77
	ld   b, d                                        ; $7569: $42
	ld   de, $1111                                   ; $756a: $11 $11 $11
	ld   [de], a                                     ; $756d: $12
	ld   [de], a                                     ; $756e: $12
	ld   a, b                                        ; $756f: $78
	sbc  e                                           ; $7570: $9b
	rst  $38                                         ; $7571: $ff
	rst  $38                                         ; $7572: $ff
	rst  $38                                         ; $7573: $ff
	cp   $fe                                         ; $7574: $fe $fe
	cp   h                                           ; $7576: $bc

Jump_0fa_7577:
	res  5, d                                        ; $7577: $cb $aa
	sbc  d                                           ; $7579: $9a
	ld   [hl], l                                     ; $757a: $75
	ld   d, d                                        ; $757b: $52
	ld   de, $1111                                   ; $757c: $11 $11 $11
	ld   de, $6713                                   ; $757f: $11 $13 $67
	sbc  c                                           ; $7582: $99
	rst  $38                                         ; $7583: $ff
	rst  $28                                         ; $7584: $ef
	rst  $38                                         ; $7585: $ff
	rst  $28                                         ; $7586: $ef
	xor  $dd                                         ; $7587: $ee $dd
	cp   e                                           ; $7589: $bb
	cp   c                                           ; $758a: $b9
	sbc  c                                           ; $758b: $99
	add  [hl]                                        ; $758c: $86
	ld   h, h                                        ; $758d: $64
	ld   hl, $1112                                   ; $758e: $21 $12 $11
	ld   bc, $4412                                   ; $7591: $01 $12 $44
	ld   a, c                                        ; $7594: $79
	cp   l                                           ; $7595: $bd
	xor  $ff                                         ; $7596: $ee $ff
	xor  $fe                                         ; $7598: $ee $fe
	call $bacc                                       ; $759a: $cd $cc $ba
	xor  d                                           ; $759d: $aa
	sub  a                                           ; $759e: $97
	add  a                                           ; $759f: $87
	ld   d, h                                        ; $75a0: $54
	ld   hl, $1121                                   ; $75a1: $21 $21 $11
	ld   hl, $3514                                   ; $75a4: $21 $14 $35
	ld   a, c                                        ; $75a7: $79
	cp   l                                           ; $75a8: $bd
	adc  $ee                                         ; $75a9: $ce $ee
	xor  $dc                                         ; $75ab: $ee $dc
	set  1, e                                        ; $75ad: $cb $cb
	xor  c                                           ; $75af: $a9
	xor  d                                           ; $75b0: $aa
	adc  c                                           ; $75b1: $89
	add  a                                           ; $75b2: $87
	ld   h, l                                        ; $75b3: $65
	inc  [hl]                                        ; $75b4: $34
	inc  sp                                          ; $75b5: $33
	ld   [de], a                                     ; $75b6: $12
	ld   sp, $4533                                   ; $75b7: $31 $33 $45
	ld   l, b                                        ; $75ba: $68
	xor  h                                           ; $75bb: $ac
	xor  h                                           ; $75bc: $ac
	db   $dd                                         ; $75bd: $dd
	call $cacc                                       ; $75be: $cd $cc $ca
	cp   h                                           ; $75c1: $bc
	xor  d                                           ; $75c2: $aa
	xor  d                                           ; $75c3: $aa
	xor  c                                           ; $75c4: $a9
	adc  b                                           ; $75c5: $88
	add  a                                           ; $75c6: $87
	ld   d, [hl]                                     ; $75c7: $56
	ld   d, h                                        ; $75c8: $54
	inc  sp                                          ; $75c9: $33
	ld   b, d                                        ; $75ca: $42
	inc  [hl]                                        ; $75cb: $34
	ld   b, h                                        ; $75cc: $44
	ld   d, a                                        ; $75cd: $57
	ld   a, c                                        ; $75ce: $79
	sbc  d                                           ; $75cf: $9a
	xor  e                                           ; $75d0: $ab
	xor  d                                           ; $75d1: $aa
	res  5, e                                        ; $75d2: $cb $ab
	cp   e                                           ; $75d4: $bb
	cp   d                                           ; $75d5: $ba
	xor  d                                           ; $75d6: $aa
	xor  c                                           ; $75d7: $a9
	xor  c                                           ; $75d8: $a9
	sbc  b                                           ; $75d9: $98
	add  a                                           ; $75da: $87
	ld   h, a                                        ; $75db: $67
	ld   h, l                                        ; $75dc: $65
	ld   h, l                                        ; $75dd: $65
	ld   d, h                                        ; $75de: $54
	ld   d, l                                        ; $75df: $55
	ld   d, [hl]                                     ; $75e0: $56
	ld   d, [hl]                                     ; $75e1: $56
	ld   h, a                                        ; $75e2: $67
	ld   a, b                                        ; $75e3: $78
	adc  c                                           ; $75e4: $89
	xor  c                                           ; $75e5: $a9
	xor  d                                           ; $75e6: $aa
	cp   c                                           ; $75e7: $b9
	cp   d                                           ; $75e8: $ba
	xor  d                                           ; $75e9: $aa
	sbc  d                                           ; $75ea: $9a
	xor  d                                           ; $75eb: $aa
	sbc  c                                           ; $75ec: $99
	xor  b                                           ; $75ed: $a8
	adc  d                                           ; $75ee: $8a
	add  a                                           ; $75ef: $87
	add  [hl]                                        ; $75f0: $86
	add  l                                           ; $75f1: $85
	halt                                             ; $75f2: $76
	ld   h, [hl]                                     ; $75f3: $66
	ld   d, [hl]                                     ; $75f4: $56
	ld   d, a                                        ; $75f5: $57
	ld   d, a                                        ; $75f6: $57
	ld   h, a                                        ; $75f7: $67
	add  a                                           ; $75f8: $87
	add  a                                           ; $75f9: $87
	sbc  c                                           ; $75fa: $99
	sbc  c                                           ; $75fb: $99
	sbc  d                                           ; $75fc: $9a
	xor  c                                           ; $75fd: $a9
	xor  d                                           ; $75fe: $aa
	xor  c                                           ; $75ff: $a9
	sbc  e                                           ; $7600: $9b
	sbc  d                                           ; $7601: $9a
	xor  c                                           ; $7602: $a9
	sbc  b                                           ; $7603: $98
	sbc  b                                           ; $7604: $98
	add  a                                           ; $7605: $87
	ld   [hl], a                                     ; $7606: $77
	add  [hl]                                        ; $7607: $86
	halt                                             ; $7608: $76
	ld   h, [hl]                                     ; $7609: $66
	ld   h, a                                        ; $760a: $67
	ld   h, a                                        ; $760b: $67
	ld   [hl], a                                     ; $760c: $77
	ld   [hl], a                                     ; $760d: $77
	ld   [hl], a                                     ; $760e: $77
	adc  b                                           ; $760f: $88
	sbc  b                                           ; $7610: $98
	sbc  c                                           ; $7611: $99
	sbc  c                                           ; $7612: $99
	sbc  c                                           ; $7613: $99
	sbc  d                                           ; $7614: $9a
	sbc  c                                           ; $7615: $99
	sbc  d                                           ; $7616: $9a
	sbc  c                                           ; $7617: $99
	adc  b                                           ; $7618: $88
	adc  b                                           ; $7619: $88
	adc  b                                           ; $761a: $88
	adc  b                                           ; $761b: $88
	ld   [hl], a                                     ; $761c: $77
	ld   [hl], a                                     ; $761d: $77
	ld   [hl], a                                     ; $761e: $77
	ld   [hl], a                                     ; $761f: $77
	ld   h, a                                        ; $7620: $67
	ld   [hl], a                                     ; $7621: $77
	ld   [hl], a                                     ; $7622: $77
	add  a                                           ; $7623: $87
	adc  b                                           ; $7624: $88
	adc  b                                           ; $7625: $88
	adc  c                                           ; $7626: $89
	sbc  b                                           ; $7627: $98
	adc  b                                           ; $7628: $88
	adc  b                                           ; $7629: $88
	sbc  c                                           ; $762a: $99
	xor  c                                           ; $762b: $a9
	sbc  c                                           ; $762c: $99
	sbc  b                                           ; $762d: $98
	sbc  c                                           ; $762e: $99
	adc  b                                           ; $762f: $88
	adc  b                                           ; $7630: $88
	ld   a, b                                        ; $7631: $78
	ld   a, b                                        ; $7632: $78
	add  a                                           ; $7633: $87
	ld   [hl], a                                     ; $7634: $77
	ld   [hl], a                                     ; $7635: $77
	ld   [hl], a                                     ; $7636: $77
	add  a                                           ; $7637: $87
	ld   a, b                                        ; $7638: $78
	ld   a, b                                        ; $7639: $78
	adc  c                                           ; $763a: $89
	adc  b                                           ; $763b: $88
	adc  b                                           ; $763c: $88
	adc  b                                           ; $763d: $88
	adc  c                                           ; $763e: $89
	adc  b                                           ; $763f: $88
	sbc  b                                           ; $7640: $98
	sbc  b                                           ; $7641: $98
	sbc  c                                           ; $7642: $99
	sbc  b                                           ; $7643: $98
	adc  b                                           ; $7644: $88
	adc  b                                           ; $7645: $88
	adc  b                                           ; $7646: $88
	adc  b                                           ; $7647: $88
	adc  b                                           ; $7648: $88
	adc  b                                           ; $7649: $88
	adc  b                                           ; $764a: $88
	adc  b                                           ; $764b: $88
	add  a                                           ; $764c: $87
	adc  b                                           ; $764d: $88
	adc  b                                           ; $764e: $88
	adc  b                                           ; $764f: $88
	adc  b                                           ; $7650: $88
	adc  b                                           ; $7651: $88
	adc  b                                           ; $7652: $88
	adc  b                                           ; $7653: $88
	adc  b                                           ; $7654: $88
	adc  b                                           ; $7655: $88
	adc  b                                           ; $7656: $88
	adc  b                                           ; $7657: $88
	adc  b                                           ; $7658: $88
	adc  b                                           ; $7659: $88
	adc  c                                           ; $765a: $89
	adc  b                                           ; $765b: $88
	adc  b                                           ; $765c: $88
	adc  b                                           ; $765d: $88
	adc  b                                           ; $765e: $88
	adc  b                                           ; $765f: $88
	adc  b                                           ; $7660: $88
	adc  b                                           ; $7661: $88
	adc  b                                           ; $7662: $88
	adc  b                                           ; $7663: $88
	adc  b                                           ; $7664: $88
	adc  b                                           ; $7665: $88
	adc  b                                           ; $7666: $88
	adc  b                                           ; $7667: $88
	adc  b                                           ; $7668: $88
	adc  b                                           ; $7669: $88
	adc  b                                           ; $766a: $88
	adc  b                                           ; $766b: $88
	adc  b                                           ; $766c: $88
	adc  b                                           ; $766d: $88
	adc  b                                           ; $766e: $88
	adc  b                                           ; $766f: $88
	adc  b                                           ; $7670: $88
	adc  b                                           ; $7671: $88
	adc  b                                           ; $7672: $88
	adc  b                                           ; $7673: $88
	adc  b                                           ; $7674: $88
	adc  b                                           ; $7675: $88
	adc  b                                           ; $7676: $88
	adc  b                                           ; $7677: $88
	adc  b                                           ; $7678: $88
	adc  b                                           ; $7679: $88
	adc  b                                           ; $767a: $88
	adc  b                                           ; $767b: $88
	adc  b                                           ; $767c: $88
	adc  b                                           ; $767d: $88
	adc  b                                           ; $767e: $88
	adc  b                                           ; $767f: $88
	adc  b                                           ; $7680: $88
	adc  b                                           ; $7681: $88
	adc  b                                           ; $7682: $88
	adc  b                                           ; $7683: $88
	adc  b                                           ; $7684: $88
	adc  b                                           ; $7685: $88
	adc  b                                           ; $7686: $88
	adc  b                                           ; $7687: $88
	adc  b                                           ; $7688: $88
	adc  b                                           ; $7689: $88
	adc  b                                           ; $768a: $88
	adc  b                                           ; $768b: $88
	adc  b                                           ; $768c: $88
	adc  b                                           ; $768d: $88
	adc  b                                           ; $768e: $88
	adc  b                                           ; $768f: $88
	adc  b                                           ; $7690: $88
	adc  b                                           ; $7691: $88
	adc  b                                           ; $7692: $88
	adc  b                                           ; $7693: $88
	adc  b                                           ; $7694: $88
	adc  b                                           ; $7695: $88
	adc  b                                           ; $7696: $88
	adc  b                                           ; $7697: $88

Call_0fa_7698:
	adc  b                                           ; $7698: $88
	adc  b                                           ; $7699: $88
	adc  b                                           ; $769a: $88
	adc  b                                           ; $769b: $88
	adc  b                                           ; $769c: $88
	adc  b                                           ; $769d: $88
	adc  b                                           ; $769e: $88
	adc  b                                           ; $769f: $88
	adc  b                                           ; $76a0: $88
	adc  b                                           ; $76a1: $88
	adc  b                                           ; $76a2: $88
	adc  b                                           ; $76a3: $88
	adc  b                                           ; $76a4: $88
	adc  b                                           ; $76a5: $88
	adc  b                                           ; $76a6: $88
	adc  b                                           ; $76a7: $88
	adc  b                                           ; $76a8: $88
	adc  b                                           ; $76a9: $88
	adc  b                                           ; $76aa: $88
	adc  b                                           ; $76ab: $88
	adc  b                                           ; $76ac: $88
	adc  b                                           ; $76ad: $88
	adc  b                                           ; $76ae: $88
	adc  b                                           ; $76af: $88
	adc  b                                           ; $76b0: $88
	adc  b                                           ; $76b1: $88
	adc  b                                           ; $76b2: $88
	adc  b                                           ; $76b3: $88
	adc  b                                           ; $76b4: $88
	adc  b                                           ; $76b5: $88
	adc  b                                           ; $76b6: $88
	adc  b                                           ; $76b7: $88
	adc  b                                           ; $76b8: $88
	adc  b                                           ; $76b9: $88
	adc  b                                           ; $76ba: $88
	adc  b                                           ; $76bb: $88
	adc  b                                           ; $76bc: $88
	adc  b                                           ; $76bd: $88
	adc  b                                           ; $76be: $88
	adc  b                                           ; $76bf: $88
	adc  b                                           ; $76c0: $88
	adc  b                                           ; $76c1: $88
	adc  b                                           ; $76c2: $88
	adc  b                                           ; $76c3: $88
	adc  b                                           ; $76c4: $88
	adc  b                                           ; $76c5: $88
	adc  b                                           ; $76c6: $88
	adc  b                                           ; $76c7: $88
	adc  b                                           ; $76c8: $88
	adc  b                                           ; $76c9: $88
	adc  b                                           ; $76ca: $88
	adc  b                                           ; $76cb: $88
	adc  b                                           ; $76cc: $88
	adc  b                                           ; $76cd: $88
	adc  b                                           ; $76ce: $88
	adc  b                                           ; $76cf: $88
	adc  b                                           ; $76d0: $88
	adc  b                                           ; $76d1: $88
	adc  b                                           ; $76d2: $88
	adc  b                                           ; $76d3: $88
	adc  b                                           ; $76d4: $88
	adc  b                                           ; $76d5: $88
	adc  b                                           ; $76d6: $88
	adc  b                                           ; $76d7: $88
	adc  b                                           ; $76d8: $88
	adc  b                                           ; $76d9: $88
	adc  b                                           ; $76da: $88
	adc  b                                           ; $76db: $88
	adc  b                                           ; $76dc: $88
	adc  b                                           ; $76dd: $88
	adc  b                                           ; $76de: $88
	adc  b                                           ; $76df: $88
	adc  b                                           ; $76e0: $88
	adc  b                                           ; $76e1: $88
	adc  b                                           ; $76e2: $88
	adc  b                                           ; $76e3: $88
	adc  b                                           ; $76e4: $88
	adc  b                                           ; $76e5: $88
	adc  b                                           ; $76e6: $88
	adc  b                                           ; $76e7: $88
	adc  b                                           ; $76e8: $88
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
	adc  b                                           ; $76f6: $88
	adc  b                                           ; $76f7: $88
	adc  b                                           ; $76f8: $88
	adc  b                                           ; $76f9: $88
	adc  b                                           ; $76fa: $88
	adc  b                                           ; $76fb: $88
	adc  b                                           ; $76fc: $88
	adc  b                                           ; $76fd: $88
	adc  b                                           ; $76fe: $88
	adc  b                                           ; $76ff: $88
	adc  b                                           ; $7700: $88
	adc  b                                           ; $7701: $88
	adc  b                                           ; $7702: $88
	adc  b                                           ; $7703: $88
	adc  b                                           ; $7704: $88
	adc  b                                           ; $7705: $88
	adc  b                                           ; $7706: $88
	adc  b                                           ; $7707: $88
	adc  b                                           ; $7708: $88
	adc  b                                           ; $7709: $88
	adc  b                                           ; $770a: $88
	adc  b                                           ; $770b: $88
	adc  b                                           ; $770c: $88
	adc  b                                           ; $770d: $88
	adc  b                                           ; $770e: $88
	adc  b                                           ; $770f: $88
	adc  b                                           ; $7710: $88
	adc  b                                           ; $7711: $88
	adc  b                                           ; $7712: $88
	adc  b                                           ; $7713: $88
	adc  b                                           ; $7714: $88
	adc  b                                           ; $7715: $88
	adc  b                                           ; $7716: $88
	adc  b                                           ; $7717: $88
	adc  b                                           ; $7718: $88
	adc  b                                           ; $7719: $88
	adc  b                                           ; $771a: $88
	adc  b                                           ; $771b: $88
	adc  b                                           ; $771c: $88
	adc  b                                           ; $771d: $88
	adc  b                                           ; $771e: $88
	adc  b                                           ; $771f: $88
	adc  b                                           ; $7720: $88
	adc  b                                           ; $7721: $88
	adc  b                                           ; $7722: $88
	adc  b                                           ; $7723: $88
	adc  b                                           ; $7724: $88
	adc  b                                           ; $7725: $88
	adc  b                                           ; $7726: $88
	adc  b                                           ; $7727: $88
	adc  b                                           ; $7728: $88
	adc  b                                           ; $7729: $88
	adc  b                                           ; $772a: $88
	adc  b                                           ; $772b: $88
	adc  b                                           ; $772c: $88
	adc  b                                           ; $772d: $88
	adc  b                                           ; $772e: $88
	adc  b                                           ; $772f: $88
	adc  b                                           ; $7730: $88
	adc  b                                           ; $7731: $88
	adc  b                                           ; $7732: $88
	adc  b                                           ; $7733: $88
	adc  b                                           ; $7734: $88
	sbc  c                                           ; $7735: $99
	adc  b                                           ; $7736: $88
	adc  b                                           ; $7737: $88
	sbc  b                                           ; $7738: $98
	adc  b                                           ; $7739: $88
	adc  b                                           ; $773a: $88
	adc  b                                           ; $773b: $88
	adc  b                                           ; $773c: $88
	adc  b                                           ; $773d: $88
	adc  b                                           ; $773e: $88
	adc  b                                           ; $773f: $88
	adc  b                                           ; $7740: $88
	adc  b                                           ; $7741: $88
	adc  b                                           ; $7742: $88
	adc  b                                           ; $7743: $88
	adc  b                                           ; $7744: $88
	adc  b                                           ; $7745: $88
	adc  b                                           ; $7746: $88
	adc  b                                           ; $7747: $88
	sbc  b                                           ; $7748: $98
	adc  b                                           ; $7749: $88
	adc  b                                           ; $774a: $88
	adc  b                                           ; $774b: $88
	adc  b                                           ; $774c: $88
	adc  b                                           ; $774d: $88
	adc  b                                           ; $774e: $88
	adc  b                                           ; $774f: $88
	sbc  b                                           ; $7750: $98
	adc  b                                           ; $7751: $88
	add  a                                           ; $7752: $87
	ld   a, b                                        ; $7753: $78
	adc  b                                           ; $7754: $88
	adc  b                                           ; $7755: $88
	adc  c                                           ; $7756: $89
	adc  b                                           ; $7757: $88
	adc  b                                           ; $7758: $88
	adc  b                                           ; $7759: $88
	sbc  c                                           ; $775a: $99
	sbc  b                                           ; $775b: $98
	adc  c                                           ; $775c: $89
	adc  b                                           ; $775d: $88
	adc  b                                           ; $775e: $88
	adc  b                                           ; $775f: $88
	add  a                                           ; $7760: $87
	adc  b                                           ; $7761: $88
	ld   [hl], a                                     ; $7762: $77
	ld   [hl], a                                     ; $7763: $77
	ld   [hl], a                                     ; $7764: $77
	ld   [hl], a                                     ; $7765: $77
	ld   [hl], a                                     ; $7766: $77
	adc  b                                           ; $7767: $88
	adc  b                                           ; $7768: $88
	adc  b                                           ; $7769: $88
	sbc  d                                           ; $776a: $9a
	sbc  c                                           ; $776b: $99
	xor  c                                           ; $776c: $a9
	sbc  c                                           ; $776d: $99
	sbc  c                                           ; $776e: $99
	add  a                                           ; $776f: $87
	halt                                             ; $7770: $76
	ld   h, l                                        ; $7771: $65
	ld   d, [hl]                                     ; $7772: $56
	ld   h, l                                        ; $7773: $65
	ld   h, a                                        ; $7774: $67
	ld   [hl], a                                     ; $7775: $77
	ld   a, b                                        ; $7776: $78
	adc  d                                           ; $7777: $8a
	cp   d                                           ; $7778: $ba
	xor  e                                           ; $7779: $ab
	cp   d                                           ; $777a: $ba
	xor  e                                           ; $777b: $ab
	cp   c                                           ; $777c: $b9
	sbc  c                                           ; $777d: $99
	adc  b                                           ; $777e: $88
	halt                                             ; $777f: $76
	ld   d, h                                        ; $7780: $54
	inc  sp                                          ; $7781: $33
	ld   b, l                                        ; $7782: $45
	inc  [hl]                                        ; $7783: $34
	ld   h, a                                        ; $7784: $67
	ld   a, b                                        ; $7785: $78
	xor  d                                           ; $7786: $aa
	adc  $dc                                         ; $7787: $ce $dc
	sbc  $cc                                         ; $7789: $de $cc
	cp   d                                           ; $778b: $ba
	xor  b                                           ; $778c: $a8
	halt                                             ; $778d: $76
	ld   h, h                                        ; $778e: $64
	ld   [hl+], a                                    ; $778f: $22
	ld   de, $3116                                   ; $7790: $11 $16 $31
	ld   c, c                                        ; $7793: $49
	sbc  b                                           ; $7794: $98
	adc  $ff                                         ; $7795: $ce $ff

Jump_0fa_7797:
	cp   $ff                                         ; $7797: $fe $ff

Jump_0fa_7799:
	db   $eb                                         ; $7799: $eb
	call z, $5586                                    ; $779a: $cc $86 $55
	ld   d, d                                        ; $779d: $52
	ld   de, $1711                                   ; $779e: $11 $11 $17
	ld   de, $b87d                                   ; $77a1: $11 $7d $b8
	rst  $38                                         ; $77a4: $ff
	rst  $38                                         ; $77a5: $ff
	rst  $38                                         ; $77a6: $ff
	rst  $38                                         ; $77a7: $ff
	cp   d                                           ; $77a8: $ba
	jp   c, Jump_0fa_5665                            ; $77a9: $da $65 $56

	ld   b, d                                        ; $77ac: $42
	ld   de, $1a11                                   ; $77ad: $11 $11 $1a
	ld   de, $c76f                                   ; $77b0: $11 $6f $c7
	rst  $38                                         ; $77b3: $ff
	rst  $38                                         ; $77b4: $ff
	rst  $38                                         ; $77b5: $ff
	rst  $38                                         ; $77b6: $ff
	xor  c                                           ; $77b7: $a9
	jp   c, Jump_0fa_6745                            ; $77b8: $da $45 $67

	ld   b, d                                        ; $77bb: $42
	ld   de, $1b11                                   ; $77bc: $11 $11 $1b
	ld   hl, $d43f                                   ; $77bf: $21 $3f $d4
	rst  $38                                         ; $77c2: $ff
	rst  $38                                         ; $77c3: $ff
	rst  $38                                         ; $77c4: $ff
	rst  $38                                         ; $77c5: $ff
	xor  c                                           ; $77c6: $a9
	db   $db                                         ; $77c7: $db
	inc  h                                           ; $77c8: $24
	ld   h, [hl]                                     ; $77c9: $66
	ld   sp, $1131                                   ; $77ca: $31 $31 $11
	add  hl, de                                      ; $77cd: $19
	ld   [hl], c                                     ; $77ce: $71
	rra                                              ; $77cf: $1f
	di                                               ; $77d0: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77d1: $cf
	rst  $38                                         ; $77d2: $ff
	rst  $38                                         ; $77d3: $ff
	rst  $38                                         ; $77d4: $ff
	jp   z, $22da                                    ; $77d5: $ca $da $22

	halt                                             ; $77d8: $76
	ld   b, d                                        ; $77d9: $42
	ld   h, e                                        ; $77da: $63
	ld   de, $d111                                   ; $77db: $11 $11 $d1
	add  hl, de                                      ; $77de: $19
	ld   a, [$ff1f]                                  ; $77df: $fa $1f $ff
	rst  $28                                         ; $77e2: $ef
	rst  $38                                         ; $77e3: $ff
	ld   [$61dc], a                                  ; $77e4: $ea $dc $61
	ld   d, a                                        ; $77e7: $57
	ld   b, d                                        ; $77e8: $42
	ld   e, b                                        ; $77e9: $58
	ld   hl, $2d11                                   ; $77ea: $21 $11 $2d
	ld   de, $11ff                                   ; $77ed: $11 $ff $11
	rst  $38                                         ; $77f0: $ff
	adc  $ff                                         ; $77f1: $ce $ff
	ei                                               ; $77f3: $fb
	call $19a3                                       ; $77f4: $cd $a3 $19
	ld   [hl], e                                     ; $77f7: $73
	add  hl, hl                                      ; $77f8: $29
	add  c                                           ; $77f9: $81
	ld   de, $a114                                   ; $77fa: $11 $14 $a1
	rra                                              ; $77fd: $1f
	pop  af                                          ; $77fe: $f1
	ld   e, a                                        ; $77ff: $5f
	ld   a, [$ffff]                                  ; $7800: $fa $ff $ff
	cp   [hl]                                        ; $7803: $be
	reti                                             ; $7804: $d9


	ld   hl, $3295                                   ; $7805: $21 $95 $32
	and  l                                           ; $7808: $a5
	ld   de, $6811                                   ; $7809: $11 $11 $68
	ld   de, $1aff                                   ; $780c: $11 $ff $1a
	rst  $38                                         ; $780f: $ff
	sbc  a                                           ; $7810: $9f
	rst  $38                                         ; $7811: $ff
	db   $eb                                         ; $7812: $eb
	db   $fd                                         ; $7813: $fd
	sub  d                                           ; $7814: $92
	ld   a, [hl-]                                    ; $7815: $3a
	ld   h, e                                        ; $7816: $63
	add  hl, hl                                      ; $7817: $29
	ld   b, c                                        ; $7818: $41
	ld   de, $211a                                   ; $7819: $11 $1a $21
	ccf                                              ; $781c: $3f
	pop  bc                                          ; $781d: $c1
	rst  $38                                         ; $781e: $ff
	ld   hl, sp-$01                                  ; $781f: $f8 $ff
	cp   $cf                                         ; $7821: $fe $cf
	cp   c                                           ; $7823: $b9
	dec  h                                           ; $7824: $25
	sub  [hl]                                        ; $7825: $96
	inc  hl                                          ; $7826: $23
	sub  e                                           ; $7827: $93
	ld   de, $b111                                   ; $7828: $11 $11 $b1
	dec  d                                           ; $782b: $15
	ld   a, [$ff1f]                                  ; $782c: $fa $1f $ff
	xor  a                                           ; $782f: $af
	rst  $38                                         ; $7830: $ff
	db   $fd                                         ; $7831: $fd
	db   $ed                                         ; $7832: $ed
	call nz, Call_0fa_7257                           ; $7833: $c4 $57 $72
	ld   h, $21                                      ; $7836: $26 $21
	ld   de, $111b                                   ; $7838: $11 $1b $11
	ld   e, a                                        ; $783b: $5f
	sub  c                                           ; $783c: $91
	rst  $38                                         ; $783d: $ff
	ld   a, [$ffff]                                  ; $783e: $fa $ff $ff
	xor  $ed                                         ; $7841: $ee $ed
	ld   d, l                                        ; $7843: $55
	ld   l, b                                        ; $7844: $68
	ld   [hl-], a                                    ; $7845: $32
	ld   b, e                                        ; $7846: $43
	ld   de, $b111                                   ; $7847: $11 $11 $b1
	inc  d                                           ; $784a: $14
	ld   hl, sp+$1e                                  ; $784b: $f8 $1e
	rst  $38                                         ; $784d: $ff
	cp   a                                           ; $784e: $bf
	rst  $38                                         ; $784f: $ff
	rst  $38                                         ; $7850: $ff
	db   $dd                                         ; $7851: $dd
	ld   hl, sp+$65                                  ; $7852: $f8 $65
	ld   [hl], h                                     ; $7854: $74
	ld   b, h                                        ; $7855: $44
	ld   b, c                                        ; $7856: $41
	ld   de, $5118                                   ; $7857: $11 $18 $51
	add  hl, de                                      ; $785a: $19
	sub  d                                           ; $785b: $92
	ld   l, a                                        ; $785c: $6f
	jp   hl                                          ; $785d: $e9


	rst  $28                                         ; $785e: $ef
	rst  $38                                         ; $785f: $ff
	cp   $df                                         ; $7860: $fe $df
	ret                                              ; $7862: $c9


	ld   h, a                                        ; $7863: $67
	ld   h, [hl]                                     ; $7864: $66
	ld   h, [hl]                                     ; $7865: $66
	ld   h, h                                        ; $7866: $64
	ld   sp, $8117                                   ; $7867: $31 $17 $81
	ld   d, $83                                      ; $786a: $16 $83
	ld   c, e                                        ; $786c: $4b
	sbc  c                                           ; $786d: $99
	cp   h                                           ; $786e: $bc
	adc  $fd                                         ; $786f: $ce $fd
	cp   [hl]                                        ; $7871: $be
	ei                                               ; $7872: $fb
	ld   [hl], a                                     ; $7873: $77
	sbc  c                                           ; $7874: $99
	sbc  c                                           ; $7875: $99
	sbc  b                                           ; $7876: $98

Jump_0fa_7877:
	ld   [hl], h                                     ; $7877: $74
	ld   [hl+], a                                    ; $7878: $22
	ld   l, b                                        ; $7879: $68
	ld   hl, $4347                                   ; $787a: $21 $47 $43
	ld   d, a                                        ; $787d: $57
	ld   a, b                                        ; $787e: $78
	sbc  c                                           ; $787f: $99
	cp   l                                           ; $7880: $bd
	call c, $b9bc                                    ; $7881: $dc $bc $b9
	sbc  d                                           ; $7884: $9a
	xor  e                                           ; $7885: $ab
	cp   c                                           ; $7886: $b9
	sbc  c                                           ; $7887: $99
	and  a                                           ; $7888: $a7
	ld   h, l                                        ; $7889: $65
	ld   l, b                                        ; $788a: $68
	ld   h, e                                        ; $788b: $63
	dec  [hl]                                        ; $788c: $35
	ld   d, d                                        ; $788d: $52
	inc  [hl]                                        ; $788e: $34
	ld   d, l                                        ; $788f: $55
	ld   h, a                                        ; $7890: $67
	ld   a, c                                        ; $7891: $79
	xor  e                                           ; $7892: $ab
	sbc  d                                           ; $7893: $9a
	cp   d                                           ; $7894: $ba
	xor  d                                           ; $7895: $aa
	xor  d                                           ; $7896: $aa
	cp   h                                           ; $7897: $bc
	cp   e                                           ; $7898: $bb
	cp   e                                           ; $7899: $bb
	xor  d                                           ; $789a: $aa
	xor  b                                           ; $789b: $a8
	adc  c                                           ; $789c: $89
	ld   h, h                                        ; $789d: $64
	ld   b, h                                        ; $789e: $44
	ld   [hl-], a                                    ; $789f: $32
	inc  sp                                          ; $78a0: $33
	inc  [hl]                                        ; $78a1: $34
	ld   d, [hl]                                     ; $78a2: $56
	ld   h, a                                        ; $78a3: $67
	sbc  c                                           ; $78a4: $99
	sbc  d                                           ; $78a5: $9a
	sbc  d                                           ; $78a6: $9a
	sbc  d                                           ; $78a7: $9a
	xor  e                                           ; $78a8: $ab
	cp   e                                           ; $78a9: $bb
	set  1, l                                        ; $78aa: $cb $cd
	call c, $a8bc                                    ; $78ac: $dc $bc $a8
	ld   [hl], a                                     ; $78af: $77
	ld   h, l                                        ; $78b0: $65
	ld   b, e                                        ; $78b1: $43
	inc  sp                                          ; $78b2: $33
	inc  sp                                          ; $78b3: $33
	inc  [hl]                                        ; $78b4: $34
	ld   d, l                                        ; $78b5: $55
	ld   h, a                                        ; $78b6: $67
	ld   [hl], a                                     ; $78b7: $77
	adc  b                                           ; $78b8: $88
	sbc  b                                           ; $78b9: $98
	xor  d                                           ; $78ba: $aa
	xor  d                                           ; $78bb: $aa
	xor  e                                           ; $78bc: $ab
	call z, $dccc                                    ; $78bd: $cc $cc $dc
	res  7, d                                        ; $78c0: $cb $ba
	xor  c                                           ; $78c2: $a9
	halt                                             ; $78c3: $76
	ld   h, l                                        ; $78c4: $65
	inc  sp                                          ; $78c5: $33
	ld   [hl-], a                                    ; $78c6: $32
	inc  hl                                          ; $78c7: $23
	ld   b, h                                        ; $78c8: $44
	ld   d, [hl]                                     ; $78c9: $56
	ld   h, a                                        ; $78ca: $67
	ld   a, b                                        ; $78cb: $78
	sbc  c                                           ; $78cc: $99
	sbc  c                                           ; $78cd: $99
	sbc  d                                           ; $78ce: $9a
	xor  d                                           ; $78cf: $aa
	xor  e                                           ; $78d0: $ab
	cp   h                                           ; $78d1: $bc
	cp   e                                           ; $78d2: $bb
	cp   e                                           ; $78d3: $bb
	cp   e                                           ; $78d4: $bb
	cp   d                                           ; $78d5: $ba
	sbc  b                                           ; $78d6: $98
	ld   [hl], a                                     ; $78d7: $77
	ld   h, l                                        ; $78d8: $65
	ld   d, h                                        ; $78d9: $54
	ld   b, h                                        ; $78da: $44
	inc  sp                                          ; $78db: $33
	ld   b, h                                        ; $78dc: $44
	ld   d, l                                        ; $78dd: $55
	ld   h, a                                        ; $78de: $67
	ld   a, b                                        ; $78df: $78
	adc  b                                           ; $78e0: $88
	adc  c                                           ; $78e1: $89
	sbc  c                                           ; $78e2: $99
	xor  c                                           ; $78e3: $a9
	sbc  d                                           ; $78e4: $9a
	cp   e                                           ; $78e5: $bb
	xor  e                                           ; $78e6: $ab
	cp   e                                           ; $78e7: $bb
	cp   e                                           ; $78e8: $bb
	cp   d                                           ; $78e9: $ba
	xor  d                                           ; $78ea: $aa
	sbc  c                                           ; $78eb: $99
	add  a                                           ; $78ec: $87
	halt                                             ; $78ed: $76
	ld   h, l                                        ; $78ee: $65
	ld   d, h                                        ; $78ef: $54
	ld   b, h                                        ; $78f0: $44
	ld   b, h                                        ; $78f1: $44
	ld   d, l                                        ; $78f2: $55
	ld   d, [hl]                                     ; $78f3: $56
	ld   [hl], a                                     ; $78f4: $77
	ld   a, b                                        ; $78f5: $78
	adc  b                                           ; $78f6: $88
	sbc  c                                           ; $78f7: $99
	xor  d                                           ; $78f8: $aa
	sbc  d                                           ; $78f9: $9a
	xor  d                                           ; $78fa: $aa
	xor  d                                           ; $78fb: $aa
	xor  d                                           ; $78fc: $aa
	cp   e                                           ; $78fd: $bb
	xor  e                                           ; $78fe: $ab
	xor  c                                           ; $78ff: $a9
	sbc  b                                           ; $7900: $98
	adc  b                                           ; $7901: $88
	halt                                             ; $7902: $76
	ld   h, [hl]                                     ; $7903: $66
	ld   d, l                                        ; $7904: $55
	ld   d, l                                        ; $7905: $55
	ld   d, l                                        ; $7906: $55
	ld   d, l                                        ; $7907: $55
	ld   d, [hl]                                     ; $7908: $56
	ld   h, [hl]                                     ; $7909: $66
	ld   [hl], a                                     ; $790a: $77
	adc  b                                           ; $790b: $88
	adc  c                                           ; $790c: $89
	xor  c                                           ; $790d: $a9
	sbc  d                                           ; $790e: $9a
	xor  d                                           ; $790f: $aa
	xor  d                                           ; $7910: $aa
	cp   e                                           ; $7911: $bb
	xor  d                                           ; $7912: $aa
	cp   d                                           ; $7913: $ba
	sbc  c                                           ; $7914: $99
	xor  c                                           ; $7915: $a9
	adc  c                                           ; $7916: $89
	add  a                                           ; $7917: $87
	ld   [hl], a                                     ; $7918: $77
	ld   h, [hl]                                     ; $7919: $66
	ld   h, [hl]                                     ; $791a: $66
	ld   d, l                                        ; $791b: $55
	ld   d, [hl]                                     ; $791c: $56
	ld   h, [hl]                                     ; $791d: $66
	ld   h, [hl]                                     ; $791e: $66
	ld   [hl], a                                     ; $791f: $77
	ld   a, b                                        ; $7920: $78
	adc  b                                           ; $7921: $88
	adc  c                                           ; $7922: $89
	sbc  c                                           ; $7923: $99
	sbc  d                                           ; $7924: $9a
	xor  d                                           ; $7925: $aa
	xor  d                                           ; $7926: $aa
	xor  d                                           ; $7927: $aa
	xor  c                                           ; $7928: $a9
	sbc  d                                           ; $7929: $9a
	sbc  b                                           ; $792a: $98
	sbc  b                                           ; $792b: $98
	add  a                                           ; $792c: $87
	ld   [hl], a                                     ; $792d: $77
	ld   h, [hl]                                     ; $792e: $66
	ld   h, l                                        ; $792f: $65
	ld   d, l                                        ; $7930: $55
	ld   d, l                                        ; $7931: $55
	ld   d, l                                        ; $7932: $55
	ld   h, [hl]                                     ; $7933: $66
	ld   h, a                                        ; $7934: $67
	ld   a, b                                        ; $7935: $78
	adc  b                                           ; $7936: $88
	sbc  c                                           ; $7937: $99
	xor  c                                           ; $7938: $a9
	xor  d                                           ; $7939: $aa
	xor  d                                           ; $793a: $aa
	xor  d                                           ; $793b: $aa
	xor  d                                           ; $793c: $aa
	xor  d                                           ; $793d: $aa
	sbc  c                                           ; $793e: $99
	xor  c                                           ; $793f: $a9
	sbc  c                                           ; $7940: $99
	sbc  b                                           ; $7941: $98
	ld   [hl], a                                     ; $7942: $77
	ld   [hl], a                                     ; $7943: $77
	ld   h, [hl]                                     ; $7944: $66
	ld   h, [hl]                                     ; $7945: $66
	ld   h, [hl]                                     ; $7946: $66
	ld   h, [hl]                                     ; $7947: $66
	ld   [hl], a                                     ; $7948: $77
	ld   [hl], a                                     ; $7949: $77
	ld   a, b                                        ; $794a: $78
	adc  c                                           ; $794b: $89
	adc  c                                           ; $794c: $89
	sbc  c                                           ; $794d: $99
	sbc  d                                           ; $794e: $9a
	xor  d                                           ; $794f: $aa
	xor  d                                           ; $7950: $aa
	xor  c                                           ; $7951: $a9
	sbc  c                                           ; $7952: $99
	adc  c                                           ; $7953: $89
	sbc  b                                           ; $7954: $98
	adc  b                                           ; $7955: $88
	add  a                                           ; $7956: $87
	ld   [hl], a                                     ; $7957: $77
	ld   [hl], a                                     ; $7958: $77
	ld   [hl], a                                     ; $7959: $77
	ld   [hl], a                                     ; $795a: $77
	ld   [hl], a                                     ; $795b: $77
	ld   [hl], a                                     ; $795c: $77
	ld   [hl], a                                     ; $795d: $77
	ld   a, b                                        ; $795e: $78
	adc  b                                           ; $795f: $88
	adc  b                                           ; $7960: $88
	adc  c                                           ; $7961: $89
	sbc  b                                           ; $7962: $98
	adc  b                                           ; $7963: $88
	adc  b                                           ; $7964: $88
	sbc  c                                           ; $7965: $99
	sbc  b                                           ; $7966: $98
	sbc  b                                           ; $7967: $98
	adc  b                                           ; $7968: $88
	adc  c                                           ; $7969: $89
	sbc  c                                           ; $796a: $99
	adc  b                                           ; $796b: $88
	adc  b                                           ; $796c: $88
	adc  b                                           ; $796d: $88
	adc  b                                           ; $796e: $88
	ld   [hl], a                                     ; $796f: $77
	ld   [hl], a                                     ; $7970: $77
	ld   [hl], a                                     ; $7971: $77
	ld   [hl], a                                     ; $7972: $77
	adc  c                                           ; $7973: $89
	add  a                                           ; $7974: $87
	ld   [hl], a                                     ; $7975: $77
	adc  c                                           ; $7976: $89
	sbc  c                                           ; $7977: $99
	add  a                                           ; $7978: $87
	ld   a, b                                        ; $7979: $78
	xor  e                                           ; $797a: $ab
	sub  a                                           ; $797b: $97
	ld   h, a                                        ; $797c: $67
	xor  d                                           ; $797d: $aa
	sbc  c                                           ; $797e: $99
	halt                                             ; $797f: $76
	sbc  c                                           ; $7980: $99
	xor  b                                           ; $7981: $a8
	ld   h, [hl]                                     ; $7982: $66
	ld   l, b                                        ; $7983: $68
	sbc  e                                           ; $7984: $9b
	sub  l                                           ; $7985: $95
	ld   b, l                                        ; $7986: $45

Jump_0fa_7987:
	adc  d                                           ; $7987: $8a
	xor  b                                           ; $7988: $a8
	ld   d, h                                        ; $7989: $54
	ld   a, b                                        ; $798a: $78
	xor  e                                           ; $798b: $ab
	add  [hl]                                        ; $798c: $86
	ld   h, a                                        ; $798d: $67
	sbc  d                                           ; $798e: $9a
	sub  [hl]                                        ; $798f: $96
	ld   d, a                                        ; $7990: $57
	xor  h                                           ; $7991: $ac
	ret                                              ; $7992: $c9


	add  [hl]                                        ; $7993: $86
	sbc  d                                           ; $7994: $9a
	adc  c                                           ; $7995: $89
	adc  b                                           ; $7996: $88
	halt                                             ; $7997: $76
	ld   h, [hl]                                     ; $7998: $66
	ld   a, b                                        ; $7999: $78
	sub  a                                           ; $799a: $97
	ld   h, l                                        ; $799b: $65
	ld   a, c                                        ; $799c: $79
	xor  c                                           ; $799d: $a9
	ld   h, l                                        ; $799e: $65
	ld   l, b                                        ; $799f: $68
	cp   d                                           ; $79a0: $ba
	sub  [hl]                                        ; $79a1: $96
	ld   h, a                                        ; $79a2: $67
	sbc  c                                           ; $79a3: $99
	sbc  b                                           ; $79a4: $98
	ld   [hl], a                                     ; $79a5: $77
	sbc  c                                           ; $79a6: $99
	sbc  c                                           ; $79a7: $99
	ld   [hl], a                                     ; $79a8: $77
	adc  d                                           ; $79a9: $8a
	cp   d                                           ; $79aa: $ba
	add  [hl]                                        ; $79ab: $86
	ld   b, h                                        ; $79ac: $44
	ld   l, d                                        ; $79ad: $6a
	xor  d                                           ; $79ae: $aa
	ld   h, l                                        ; $79af: $65
	ld   d, a                                        ; $79b0: $57
	xor  c                                           ; $79b1: $a9
	sub  a                                           ; $79b2: $97
	ld   h, a                                        ; $79b3: $67
	sbc  c                                           ; $79b4: $99
	sub  a                                           ; $79b5: $97
	ld   a, b                                        ; $79b6: $78
	sbc  c                                           ; $79b7: $99
	sbc  b                                           ; $79b8: $98
	ld   [hl], a                                     ; $79b9: $77
	sbc  c                                           ; $79ba: $99
	add  a                                           ; $79bb: $87
	ld   [hl], a                                     ; $79bc: $77
	ld   a, b                                        ; $79bd: $78
	adc  b                                           ; $79be: $88
	ld   [hl], a                                     ; $79bf: $77
	ld   a, b                                        ; $79c0: $78
	adc  b                                           ; $79c1: $88
	adc  b                                           ; $79c2: $88
	adc  b                                           ; $79c3: $88
	adc  b                                           ; $79c4: $88
	ld   a, c                                        ; $79c5: $79
	adc  b                                           ; $79c6: $88
	sbc  c                                           ; $79c7: $99
	adc  c                                           ; $79c8: $89
	sbc  b                                           ; $79c9: $98
	add  a                                           ; $79ca: $87
	adc  b                                           ; $79cb: $88
	adc  b                                           ; $79cc: $88
	halt                                             ; $79cd: $76
	ld   h, [hl]                                     ; $79ce: $66
	ld   h, [hl]                                     ; $79cf: $66
	ld   h, [hl]                                     ; $79d0: $66
	ld   h, a                                        ; $79d1: $67
	ld   a, b                                        ; $79d2: $78
	adc  b                                           ; $79d3: $88
	sbc  d                                           ; $79d4: $9a
	sbc  d                                           ; $79d5: $9a
	xor  e                                           ; $79d6: $ab
	cp   e                                           ; $79d7: $bb
	xor  d                                           ; $79d8: $aa
	xor  d                                           ; $79d9: $aa
	sbc  c                                           ; $79da: $99
	add  [hl]                                        ; $79db: $86
	ld   d, l                                        ; $79dc: $55
	ld   d, e                                        ; $79dd: $53
	ld   b, l                                        ; $79de: $45
	ld   d, l                                        ; $79df: $55
	ld   d, l                                        ; $79e0: $55
	ld   d, l                                        ; $79e1: $55
	ld   a, c                                        ; $79e2: $79
	adc  c                                           ; $79e3: $89
	sbc  c                                           ; $79e4: $99
	cp   l                                           ; $79e5: $bd
	db   $ed                                         ; $79e6: $ed
	xor  $ec                                         ; $79e7: $ee $ec
	xor  b                                           ; $79e9: $a8
	add  a                                           ; $79ea: $87
	adc  c                                           ; $79eb: $89
	sub  [hl]                                        ; $79ec: $96
	ld   b, d                                        ; $79ed: $42
	ld   [de], a                                     ; $79ee: $12
	ld   h, a                                        ; $79ef: $67
	ld   [hl-], a                                    ; $79f0: $32
	inc  h                                           ; $79f1: $24
	ld   l, b                                        ; $79f2: $68
	sub  a                                           ; $79f3: $97
	ld   l, c                                        ; $79f4: $69
	call z, $dcec                                    ; $79f5: $cc $ec $dc
	rst  $38                                         ; $79f8: $ff
	db   $eb                                         ; $79f9: $eb
	sbc  c                                           ; $79fa: $99
	adc  h                                           ; $79fb: $8c
	cp   d                                           ; $79fc: $ba
	ld   h, d                                        ; $79fd: $62
	ld   de, $2125                                   ; $79fe: $11 $25 $21
	ld   de, $9946                                   ; $7a01: $11 $46 $99
	ld   a, d                                        ; $7a04: $7a
	rst  $28                                         ; $7a05: $ef
	rst  $38                                         ; $7a06: $ff
	rst  $38                                         ; $7a07: $ff
	rst  $38                                         ; $7a08: $ff
	ei                                               ; $7a09: $fb
	add  [hl]                                        ; $7a0a: $86
	ld   h, a                                        ; $7a0b: $67
	ld   [hl], h                                     ; $7a0c: $74
	ld   de, $5411                                   ; $7a0d: $11 $11 $54
	ld   de, $9d16                                   ; $7a10: $11 $16 $9d
	jp   c, $ffaf                                    ; $7a13: $da $af $ff

	rst  $38                                         ; $7a16: $ff
	db   $fd                                         ; $7a17: $fd
	rst  $38                                         ; $7a18: $ff
	or   a                                           ; $7a19: $b7
	ld   d, l                                        ; $7a1a: $55
	ld   d, [hl]                                     ; $7a1b: $56
	ld   hl, $1611                                   ; $7a1c: $21 $11 $16
	ld   b, c                                        ; $7a1f: $41
	ld   de, $ff8c                                   ; $7a20: $11 $8c $ff
	sbc  l                                           ; $7a23: $9d
	rst  $38                                         ; $7a24: $ff
	rst  $38                                         ; $7a25: $ff
	db   $fd                                         ; $7a26: $fd
	rst  $28                                         ; $7a27: $ef
	ld   sp, hl                                      ; $7a28: $f9
	ld   b, e                                        ; $7a29: $43
	ld   b, l                                        ; $7a2a: $45
	ld   b, c                                        ; $7a2b: $41
	ld   de, $7116                                   ; $7a2c: $11 $16 $71
	ld   de, $ff7d                                   ; $7a2f: $11 $7d $ff
	cp   h                                           ; $7a32: $bc
	rst  $38                                         ; $7a33: $ff
	rst  $38                                         ; $7a34: $ff
	db   $fd                                         ; $7a35: $fd
	cp   a                                           ; $7a36: $bf
	rst  $30                                         ; $7a37: $f7
	ld   sp, $2134                                   ; $7a38: $31 $34 $21
	ld   de, $311a                                   ; $7a3b: $11 $1a $31
	ld   de, $ffbf                                   ; $7a3e: $11 $bf $ff
	sbc  a                                           ; $7a41: $9f
	rst  $38                                         ; $7a42: $ff
	rst  $38                                         ; $7a43: $ff
	xor  e                                           ; $7a44: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a45: $cf
	pop  bc                                          ; $7a46: $c1
	ld   de, $1134                                   ; $7a47: $11 $34 $11
	ld   de, $11c7                                   ; $7a4a: $11 $c7 $11
	rla                                              ; $7a4d: $17
	rst  $38                                         ; $7a4e: $ff
	ei                                               ; $7a4f: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a50: $cf
	rst  $38                                         ; $7a51: $ff
	ld   a, [$fa6e]                                  ; $7a52: $fa $6e $fa
	ld   sp, $3114                                   ; $7a55: $31 $14 $31
	ld   de, $611e                                   ; $7a58: $11 $1e $61
	inc  hl                                          ; $7a5b: $23
	ld   c, a                                        ; $7a5c: $4f
	rst  $38                                         ; $7a5d: $ff
	ld   a, a                                        ; $7a5e: $7f
	rst  $38                                         ; $7a5f: $ff
	rst  $38                                         ; $7a60: $ff
	add  h                                           ; $7a61: $84
	rst  $28                                         ; $7a62: $ef
	and  d                                           ; $7a63: $a2
	ld   de, $1125                                   ; $7a64: $11 $25 $11
	ld   de, $15f4                                   ; $7a67: $11 $f4 $15
	ld   b, h                                        ; $7a6a: $44
	rst  $38                                         ; $7a6b: $ff
	db   $e4                                         ; $7a6c: $e4
	rst  $38                                         ; $7a6d: $ff
	rst  $38                                         ; $7a6e: $ff
	db   $f4                                         ; $7a6f: $f4
	rra                                              ; $7a70: $1f
	push af                                          ; $7a71: $f5
	ld   [hl+], a                                    ; $7a72: $22
	ld   de, $1161                                   ; $7a73: $11 $61 $11
	ld   l, h                                        ; $7a76: $6c
	ld   de, $4f82                                   ; $7a77: $11 $82 $4f
	ei                                               ; $7a7a: $fb
	ld   e, a                                        ; $7a7b: $5f
	rst  $38                                         ; $7a7c: $ff
	rst  $38                                         ; $7a7d: $ff
	ld   b, c                                        ; $7a7e: $41
	rst  $38                                         ; $7a7f: $ff
	ld   d, d                                        ; $7a80: $52
	ld   b, c                                        ; $7a81: $41
	inc  d                                           ; $7a82: $14
	ld   de, $a118                                   ; $7a83: $11 $18 $a1
	dec  a                                           ; $7a86: $3d
	ld   de, $c7ff                                   ; $7a87: $11 $ff $c7
	rst  $38                                         ; $7a8a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a8b: $cf
	rst  $30                                         ; $7a8c: $f7
	dec  e                                           ; $7a8d: $1d
	push af                                          ; $7a8e: $f5
	jr   c, jr_0fa_7ab2                              ; $7a8f: $38 $21

	dec  [hl]                                        ; $7a91: $35
	ld   de, $1289                                   ; $7a92: $11 $89 $12
	and  h                                           ; $7a95: $a4
	inc  e                                           ; $7a96: $1c
	db   $fc                                         ; $7a97: $fc
	ld   e, [hl]                                     ; $7a98: $5e
	ld   sp, hl                                      ; $7a99: $f9
	rst  $38                                         ; $7a9a: $ff
	db   $d3                                         ; $7a9b: $d3
	sbc  a                                           ; $7a9c: $9f
	and  [hl]                                        ; $7a9d: $a6
	cp   d                                           ; $7a9e: $ba
	ld   d, [hl]                                     ; $7a9f: $56
	or   [hl]                                        ; $7aa0: $b6
	inc  de                                          ; $7aa1: $13
	xor  b                                           ; $7aa2: $a8
	inc  [hl]                                        ; $7aa3: $34
	ld   d, c                                        ; $7aa4: $51
	dec  d                                           ; $7aa5: $15
	or   [hl]                                        ; $7aa6: $b6
	ld   c, c                                        ; $7aa7: $49
	and  [hl]                                        ; $7aa8: $a6
	xor  a                                           ; $7aa9: $af
	db   $fc                                         ; $7aaa: $fc
	call $cdba                                       ; $7aab: $cd $ba $cd
	xor  e                                           ; $7aae: $ab
	cp   c                                           ; $7aaf: $b9
	halt                                             ; $7ab0: $76
	ld   b, l                                        ; $7ab1: $45

jr_0fa_7ab2:
	ld   [hl], h                                     ; $7ab2: $74
	inc  d                                           ; $7ab3: $14
	ld   b, c                                        ; $7ab4: $41
	ld   d, $84                                      ; $7ab5: $16 $84
	adc  h                                           ; $7ab7: $8c
	ld   h, a                                        ; $7ab8: $67
	rst  $38                                         ; $7ab9: $ff
	rst  $38                                         ; $7aba: $ff
	ld   a, [$d5af]                                  ; $7abb: $fa $af $d5
	ld   d, a                                        ; $7abe: $57
	inc  sp                                          ; $7abf: $33
	ld   de, $5117                                   ; $7ac0: $11 $17 $51
	ld   b, a                                        ; $7ac3: $47
	ld   de, $7dff                                   ; $7ac4: $11 $ff $7d
	db   $fd                                         ; $7ac7: $fd
	rst  $28                                         ; $7ac8: $ef
	ld   hl, sp-$31                                  ; $7ac9: $f8 $cf
	xor  c                                           ; $7acb: $a9
	jp   nz, $2114                                   ; $7acc: $c2 $14 $21

	ld   de, $311d                                   ; $7acf: $11 $1d $31
	ld   b, l                                        ; $7ad2: $45

jr_0fa_7ad3:
	ccf                                              ; $7ad3: $3f
	db   $fd                                         ; $7ad4: $fd
	adc  a                                           ; $7ad5: $8f
	rst  $38                                         ; $7ad6: $ff
	rst  $38                                         ; $7ad7: $ff
	jr   c, jr_0fa_7ad3                              ; $7ad8: $38 $f9

	inc  sp                                          ; $7ada: $33
	ld   de, $1121                                   ; $7adb: $11 $21 $11
	cpl                                              ; $7ade: $2f
	ld   de, $af9a                                   ; $7adf: $11 $9a $af
	rst  $30                                         ; $7ae2: $f7
	sbc  a                                           ; $7ae3: $9f
	db   $fd                                         ; $7ae4: $fd
	cp   $2b                                         ; $7ae5: $fe $2b
	ldh  a, [c]                                      ; $7ae7: $f2
	inc  d                                           ; $7ae8: $14
	ld   sp, $1111                                   ; $7ae9: $31 $11 $11
	rst  $28                                         ; $7aec: $ef
	ld   de, $dfff                                   ; $7aed: $11 $ff $df
	ldh  a, [c]                                      ; $7af0: $f2
	rst  $38                                         ; $7af1: $ff
	push af                                          ; $7af2: $f5
	rst  $38                                         ; $7af3: $ff
	ld   a, [hl]                                     ; $7af4: $7e
	or   c                                           ; $7af5: $b1
	ld   a, [bc]                                     ; $7af6: $0a
	ld   [hl], c                                     ; $7af7: $71
	ld   de, rAUD1LEN                                   ; $7af8: $11 $11 $ff
	ld   de, $dfff                                   ; $7afb: $11 $ff $df
	db   $f4                                         ; $7afe: $f4
	rst  $38                                         ; $7aff: $ff
	ldh  [c], a                                      ; $7b00: $e2
	rst  $38                                         ; $7b01: $ff
	sbc  d                                           ; $7b02: $9a
	ld   h, c                                        ; $7b03: $61
	ld   a, [hl]                                     ; $7b04: $7e
	ld   d, c                                        ; $7b05: $51
	ld   de, $f611                                   ; $7b06: $11 $11 $f6
	inc  de                                          ; $7b09: $13
	db   $fd                                         ; $7b0a: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b0b: $cf
	ld   hl, sp-$01                                  ; $7b0c: $f8 $ff
	ld   h, [hl]                                     ; $7b0e: $66
	rst  $38                                         ; $7b0f: $ff
	ld   [hl], a                                     ; $7b10: $77
	ld   d, e                                        ; $7b11: $53
	cp   h                                           ; $7b12: $bc
	ld   de, $1111                                   ; $7b13: $11 $11 $11
	ldh  a, [c]                                      ; $7b16: $f2
	dec  de                                          ; $7b17: $1b
	ld   a, [$ebff]                                  ; $7b18: $fa $ff $eb
	rst  $38                                         ; $7b1b: $ff
	ld   l, e                                        ; $7b1c: $6b
	cp   $67                                         ; $7b1d: $fe $67
	ld   h, [hl]                                     ; $7b1f: $66
	ret                                              ; $7b20: $c9


	ld   de, $1311                                   ; $7b21: $11 $11 $13
	pop  af                                          ; $7b24: $f1
	rra                                              ; $7b25: $1f
	db   $fc                                         ; $7b26: $fc
	rst  $38                                         ; $7b27: $ff
	cp   a                                           ; $7b28: $bf
	rst  $38                                         ; $7b29: $ff
	cpl                                              ; $7b2a: $2f
	ei                                               ; $7b2b: $fb
	dec  [hl]                                        ; $7b2c: $35
	ld   a, e                                        ; $7b2d: $7b
	db   $e4                                         ; $7b2e: $e4
	ld   de, $1b11                                   ; $7b2f: $11 $11 $1b
	pop  af                                          ; $7b32: $f1
	rra                                              ; $7b33: $1f
	xor  $ff                                         ; $7b34: $ee $ff
	rst  JumpTable                                         ; $7b36: $df
	ld   sp, hl                                      ; $7b37: $f9
	ld   c, a                                        ; $7b38: $4f
	or   $36                                         ; $7b39: $f6 $36
	adc  h                                           ; $7b3b: $8c
	and  c                                           ; $7b3c: $a1
	ld   de, $1f11                                   ; $7b3d: $11 $11 $1f
	ld   de, $efff                                   ; $7b40: $11 $ff $ef
	rst  $38                                         ; $7b43: $ff
	rst  $38                                         ; $7b44: $ff
	pop  af                                          ; $7b45: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b46: $cf
	or   d                                           ; $7b47: $b2
	ld   a, [hl-]                                    ; $7b48: $3a
	call c, $1141                                    ; $7b49: $dc $41 $11
	ld   de, $13ff                                   ; $7b4c: $11 $ff $13
	rst  $38                                         ; $7b4f: $ff
	rst  $38                                         ; $7b50: $ff
	db   $fd                                         ; $7b51: $fd
	rst  $38                                         ; $7b52: $ff
	inc  [hl]                                        ; $7b53: $34
	rst  $38                                         ; $7b54: $ff
	ld   b, c                                        ; $7b55: $41
	xor  [hl]                                        ; $7b56: $ae
	ret  z                                           ; $7b57: $c8

	ld   de, $1711                                   ; $7b58: $11 $11 $17
	pop  af                                          ; $7b5b: $f1
	rra                                              ; $7b5c: $1f
	rst  $38                                         ; $7b5d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b5e: $cf
	rst  $38                                         ; $7b5f: $ff
	rst  $30                                         ; $7b60: $f7
	ccf                                              ; $7b61: $3f
	ld   hl, sp+$17                                  ; $7b62: $f8 $17
	ei                                               ; $7b64: $fb
	sub  c                                           ; $7b65: $91
	ld   de, $6f11                                   ; $7b66: $11 $11 $6f
	ld   de, $e9ff                                   ; $7b69: $11 $ff $e9
	rst  $38                                         ; $7b6c: $ff
	rst  $38                                         ; $7b6d: $ff
	ld   [hl], e                                     ; $7b6e: $73
	rst  $38                                         ; $7b6f: $ff
	and  c                                           ; $7b70: $a1
	adc  h                                           ; $7b71: $8c
	adc  d                                           ; $7b72: $8a
	ld   de, $1911                                   ; $7b73: $11 $11 $19
	pop  af                                          ; $7b76: $f1
	rra                                              ; $7b77: $1f
	db   $fc                                         ; $7b78: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b79: $cf
	cp   a                                           ; $7b7a: $bf
	di                                               ; $7b7b: $f3
	ld   a, a                                        ; $7b7c: $7f
	rst  $30                                         ; $7b7d: $f7
	dec  de                                          ; $7b7e: $1b
	sbc  e                                           ; $7b7f: $9b
	add  c                                           ; $7b80: $81
	ld   sp, rAUD1LEN                                   ; $7b81: $31 $11 $ff
	ld   [de], a                                     ; $7b84: $12
	rst  $38                                         ; $7b85: $ff
	call $fff7                                       ; $7b86: $cd $f7 $ff
	add  hl, sp                                      ; $7b89: $39
	rst  $38                                         ; $7b8a: $ff
	ld   d, c                                        ; $7b8b: $51
	and  l                                           ; $7b8c: $a5
	ret  z                                           ; $7b8d: $c8

	ld   de, $1f11                                   ; $7b8e: $11 $11 $1f
	ld   de, $f6df                                   ; $7b91: $11 $df $f6
	rst  $38                                         ; $7b94: $ff
	rst  $38                                         ; $7b95: $ff
	and  d                                           ; $7b96: $a2
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b97: $cf
	or   c                                           ; $7b98: $b1
	ld   l, e                                        ; $7b99: $6b
	cp   d                                           ; $7b9a: $ba
	ld   [de], a                                     ; $7b9b: $12
	ld   de, $f111                                   ; $7b9c: $11 $11 $f1
	dec  de                                          ; $7b9f: $1b
	rst  $38                                         ; $7ba0: $ff
	rst  $38                                         ; $7ba1: $ff
	ld   l, a                                        ; $7ba2: $6f
	ld   sp, hl                                      ; $7ba3: $f9
	ld   c, d                                        ; $7ba4: $4a
	ld   hl, sp+$08                                  ; $7ba5: $f8 $08
	ld   l, a                                        ; $7ba7: $6f
	or   d                                           ; $7ba8: $b2
	ld   de, $f111                                   ; $7ba9: $11 $11 $f1
	dec  e                                           ; $7bac: $1d
	rst  $38                                         ; $7bad: $ff
	ld   a, a                                        ; $7bae: $7f
	rst  $38                                         ; $7baf: $ff
	ld   hl, sp+$3b                                  ; $7bb0: $f8 $3b
	db   $fd                                         ; $7bb2: $fd
	inc  d                                           ; $7bb3: $14
	cp   a                                           ; $7bb4: $bf
	and  c                                           ; $7bb5: $a1
	ld   de, $5f11                                   ; $7bb6: $11 $11 $5f
	rla                                              ; $7bb9: $17
	rst  $38                                         ; $7bba: $ff
	sbc  a                                           ; $7bbb: $9f
	ld   hl, sp-$01                                  ; $7bbc: $f8 $ff
	add  [hl]                                        ; $7bbe: $86
	rst  $38                                         ; $7bbf: $ff
	ld   b, h                                        ; $7bc0: $44
	sub  a                                           ; $7bc1: $97
	or   h                                           ; $7bc2: $b4
	ld   hl, $1f11                                   ; $7bc3: $21 $11 $1f
	ld   d, c                                        ; $7bc6: $51
	sbc  a                                           ; $7bc7: $9f
	ld   sp, hl                                      ; $7bc8: $f9
	cp   $df                                         ; $7bc9: $fe $df
	or   $af                                         ; $7bcb: $f6 $af
	pop  de                                          ; $7bcd: $d1
	ld   d, e                                        ; $7bce: $53
	sbc  h                                           ; $7bcf: $9c
	ld   de, $1e11                                   ; $7bd0: $11 $11 $1e
	pop  bc                                          ; $7bd3: $c1
	ld   e, a                                        ; $7bd4: $5f
	ei                                               ; $7bd5: $fb
	rst  $38                                         ; $7bd6: $ff
	rst  JumpTable                                         ; $7bd7: $df
	db   $f4                                         ; $7bd8: $f4
	sbc  a                                           ; $7bd9: $9f
	di                                               ; $7bda: $f3
	ld   b, [hl]                                     ; $7bdb: $46
	xor  l                                           ; $7bdc: $ad
	ld   sp, $1111                                   ; $7bdd: $31 $11 $11
	pop  af                                          ; $7be0: $f1
	dec  e                                           ; $7be1: $1d
	rst  $38                                         ; $7be2: $ff
	rst  $38                                         ; $7be3: $ff
	ld   a, a                                        ; $7be4: $7f
	db   $fd                                         ; $7be5: $fd
	ld   e, h                                        ; $7be6: $5c
	ld   sp, hl                                      ; $7be7: $f9
	add  [hl]                                        ; $7be8: $86
	ld   c, e                                        ; $7be9: $4b
	call nc, $1111                                   ; $7bea: $d4 $11 $11
	pop  af                                          ; $7bed: $f1
	add  hl, de                                      ; $7bee: $19
	rst  $38                                         ; $7bef: $ff
	rst  $38                                         ; $7bf0: $ff
	adc  a                                           ; $7bf1: $8f
	cp   $37                                         ; $7bf2: $fe $37
	db   $fd                                         ; $7bf4: $fd
	ld   [hl], e                                     ; $7bf5: $73
	ld   c, a                                        ; $7bf6: $4f
	db   $f4                                         ; $7bf7: $f4
	ld   de, $f911                                   ; $7bf8: $11 $11 $f9
	inc  d                                           ; $7bfb: $14
	rst  $38                                         ; $7bfc: $ff
	rst  $38                                         ; $7bfd: $ff
	db   $fc                                         ; $7bfe: $fc
	rst  $38                                         ; $7bff: $ff
	ld   b, e                                        ; $7c00: $43
	cp   $a6                                         ; $7c01: $fe $a6
	ld   c, e                                        ; $7c03: $4b
	ld   hl, sp+$11                                  ; $7c04: $f8 $11
	ld   de, $111f                                   ; $7c06: $11 $1f $11
	rst  $38                                         ; $7c09: $ff
	rst  $38                                         ; $7c0a: $ff
	ld   hl, sp-$01                                  ; $7c0b: $f8 $ff
	sub  e                                           ; $7c0d: $93
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c0e: $cf
	bit  6, [hl]                                     ; $7c0f: $cb $76
	db   $ec                                         ; $7c11: $ec
	ld   sp, $1f11                                   ; $7c12: $31 $11 $1f
	ld   [hl], c                                     ; $7c15: $71
	sbc  a                                           ; $7c16: $9f
	rst  $38                                         ; $7c17: $ff
	ld   a, [$f79f]                                  ; $7c18: $fa $9f $f7
	ld   a, a                                        ; $7c1b: $7f
	adc  $a3                                         ; $7c1c: $ce $a3
	ld   a, l                                        ; $7c1e: $7d
	sub  e                                           ; $7c1f: $93
	ld   de, $f119                                   ; $7c20: $11 $19 $f1
	inc  c                                           ; $7c23: $0c
	rst  $38                                         ; $7c24: $ff
	rst  $38                                         ; $7c25: $ff
	rra                                              ; $7c26: $1f
	db   $fd                                         ; $7c27: $fd
	sbc  h                                           ; $7c28: $9c
	cp   h                                           ; $7c29: $bc
	db   $e4                                         ; $7c2a: $e4
	ld   a, [hl+]                                    ; $7c2b: $2a
	cp   b                                           ; $7c2c: $b8
	ld   de, $f711                                   ; $7c2d: $11 $11 $f7

jr_0fa_7c30:
	inc  d                                           ; $7c30: $14
	xor  a                                           ; $7c31: $af
	rst  $38                                         ; $7c32: $ff
	dec  sp                                          ; $7c33: $3b
	rst  $38                                         ; $7c34: $ff
	db   $ec                                         ; $7c35: $ec
	ld   [hl], l                                     ; $7c36: $75
	ld   [$9937], a                                  ; $7c37: $ea $37 $99
	ld   [hl], c                                     ; $7c3a: $71
	ld   de, $11ff                                   ; $7c3b: $11 $ff $11
	ld   l, a                                        ; $7c3e: $6f
	rst  $38                                         ; $7c3f: $ff
	db   $e3                                         ; $7c40: $e3
	rst  $38                                         ; $7c41: $ff
	db   $fc                                         ; $7c42: $fc
	ld   h, d                                        ; $7c43: $62
	xor  [hl]                                        ; $7c44: $ae
	sbc  c                                           ; $7c45: $99
	and  [hl]                                        ; $7c46: $a6
	sub  h                                           ; $7c47: $94
	ld   de, $441f                                   ; $7c48: $11 $1f $44
	ld   a, b                                        ; $7c4b: $78
	rst  $38                                         ; $7c4c: $ff
	ei                                               ; $7c4d: $fb
	ld   a, h                                        ; $7c4e: $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c4f: $cf
	push de                                          ; $7c50: $d5
	jr   jr_0fa_7c30                                 ; $7c51: $18 $dd

	ld   hl, sp+$69                                  ; $7c53: $f8 $69
	ld   de, wCurrStickyCounter                                   ; $7c55: $11 $12 $c2
	rst  ToBoot                                         ; $7c58: $c7
	cp   a                                           ; $7c59: $bf
	rst  $38                                         ; $7c5a: $ff
	dec  sp                                          ; $7c5b: $3b
	ld   a, h                                        ; $7c5c: $7c
	db   $fc                                         ; $7c5d: $fc
	ld   [de], a                                     ; $7c5e: $12
	cp   l                                           ; $7c5f: $bd
	rst  $38                                         ; $7c60: $ff
	ld   h, [hl]                                     ; $7c61: $66
	ld   hl, $b411                                   ; $7c62: $21 $11 $b4
	ld   l, a                                        ; $7c65: $6f
	ld   a, a                                        ; $7c66: $7f
	rst  $38                                         ; $7c67: $ff
	rst  $20                                         ; $7c68: $e7
	or   l                                           ; $7c69: $b5
	rst  $38                                         ; $7c6a: $ff
	add  c                                           ; $7c6b: $81
	ld   e, e                                        ; $7c6c: $5b
	rst  $28                                         ; $7c6d: $ef
	rst  $30                                         ; $7c6e: $f7
	ld   h, c                                        ; $7c6f: $61
	ld   de, $3b1c                                   ; $7c70: $11 $1c $3b
	jp   hl                                          ; $7c73: $e9


	rst  $38                                         ; $7c74: $ff
	db   $fc                                         ; $7c75: $fc
	ld   a, b                                        ; $7c76: $78
	ld   c, a                                        ; $7c77: $4f
	ld   sp, hl                                      ; $7c78: $f9
	ld   c, b                                        ; $7c79: $48
	rst  JumpTable                                         ; $7c7a: $df
	cp   $52                                         ; $7c7b: $fe $52
	ld   de, $b511                                   ; $7c7d: $11 $11 $b5
	rst  $38                                         ; $7c80: $ff
	cp   a                                           ; $7c81: $bf
	rst  $38                                         ; $7c82: $ff
	add  $51                                         ; $7c83: $c6 $51
	rst  JumpTable                                         ; $7c85: $df
	res  7, [hl]                                     ; $7c86: $cb $be
	rst  $38                                         ; $7c88: $ff
	push af                                          ; $7c89: $f5
	ld   hl, $1611                                   ; $7c8a: $21 $11 $16
	xor  a                                           ; $7c8d: $af
	cp   $ef                                         ; $7c8e: $fe $ef
	rst  $38                                         ; $7c90: $ff
	ld   b, h                                        ; $7c91: $44
	ld   d, $ff                                      ; $7c92: $16 $ff
	db   $fc                                         ; $7c94: $fc
	call z, $95ff                                    ; $7c95: $cc $ff $95
	ld   de, $1f11                                   ; $7c98: $11 $11 $1f
	rst  $38                                         ; $7c9b: $ff
	ld   sp, hl                                      ; $7c9c: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c9d: $cf
	rst  $30                                         ; $7c9e: $f7
	ld   h, c                                        ; $7c9f: $61
	ld   e, $ff                                      ; $7ca0: $1e $ff
	ld   a, [$ff7a]                                  ; $7ca2: $fa $7a $ff
	and  e                                           ; $7ca5: $a3
	ld   de, $df11                                   ; $7ca6: $11 $11 $df
	rst  $38                                         ; $7ca9: $ff
	ld   a, d                                        ; $7caa: $7a
	rst  $38                                         ; $7cab: $ff
	db   $f4                                         ; $7cac: $f4
	ld   hl, $ff6f                                   ; $7cad: $21 $6f $ff
	or   l                                           ; $7cb0: $b5
	ld   e, a                                        ; $7cb1: $5f
	cp   $a1                                         ; $7cb2: $fe $a1
	ld   de, rAUD1LEN                                   ; $7cb4: $11 $11 $ff
	rst  $38                                         ; $7cb7: $ff
	ld   l, d                                        ; $7cb8: $6a
	rst  $38                                         ; $7cb9: $ff
	sub  $11                                         ; $7cba: $d6 $11
	sbc  a                                           ; $7cbc: $9f
	rst  $38                                         ; $7cbd: $ff
	sub  d                                           ; $7cbe: $92
	ld   a, a                                        ; $7cbf: $7f
	rst  $38                                         ; $7cc0: $ff
	add  c                                           ; $7cc1: $81
	ld   de, rAUD1LEN                                   ; $7cc2: $11 $11 $ff
	rst  $38                                         ; $7cc5: $ff
	ld   a, l                                        ; $7cc6: $7d
	rst  $38                                         ; $7cc7: $ff
	and  [hl]                                        ; $7cc8: $a6
	ld   de, $ff8f                                   ; $7cc9: $11 $8f $ff
	add  $cf                                         ; $7ccc: $c6 $cf
	rst  $38                                         ; $7cce: $ff
	sub  c                                           ; $7ccf: $91
	ld   de, rAUD1LEN                                   ; $7cd0: $11 $11 $ff
	rst  $38                                         ; $7cd3: $ff
	cp   l                                           ; $7cd4: $bd
	rst  $38                                         ; $7cd5: $ff
	sub  d                                           ; $7cd6: $92
	ld   de, $ff2f                                   ; $7cd7: $11 $2f $ff
	ld   hl, sp-$72                                  ; $7cda: $f8 $8e
	rst  JumpTable                                         ; $7cdc: $df
	and  c                                           ; $7cdd: $a1
	ld   de, rAUD1LEN                                   ; $7cde: $11 $11 $ff
	rst  $38                                         ; $7ce1: $ff
	ld   sp, $c9cd                                   ; $7ce2: $31 $cd $c9
	ld   de, $ff1f                                   ; $7ce5: $11 $1f $ff
	pop  af                                          ; $7ce8: $f1
	add  hl, de                                      ; $7ce9: $19
	rst  $28                                         ; $7cea: $ef
	pop  af                                          ; $7ceb: $f1
	ld   de, rAUD1LEN                                   ; $7cec: $11 $11 $ff
	rst  $38                                         ; $7cef: $ff
	ld   hl, $e9ef                                   ; $7cf0: $21 $ef $e9
	ld   de, $ff1f                                   ; $7cf3: $11 $1f $ff
	ldh  a, [c]                                      ; $7cf6: $f2
	inc  e                                           ; $7cf7: $1c
	rst  $38                                         ; $7cf8: $ff
	di                                               ; $7cf9: $f3
	ld   de, $6f11                                   ; $7cfa: $11 $11 $6f
	rst  $38                                         ; $7cfd: $ff
	db   $f4                                         ; $7cfe: $f4
	sbc  a                                           ; $7cff: $9f
	ret                                              ; $7d00: $c9


	ld   [hl], c                                     ; $7d01: $71
	inc  d                                           ; $7d02: $14
	rst  $38                                         ; $7d03: $ff
	rst  $38                                         ; $7d04: $ff
	adc  d                                           ; $7d05: $8a
	cp   e                                           ; $7d06: $bb
	cp   $21                                         ; $7d07: $fe $21
	ld   de, $ff1d                                   ; $7d09: $11 $1d $ff
	rst  $38                                         ; $7d0c: $ff
	inc  d                                           ; $7d0d: $14
	ld   b, [hl]                                     ; $7d0e: $46
	or   h                                           ; $7d0f: $b4
	ld   de, $ff6f                                   ; $7d10: $11 $6f $ff
	pop  af                                          ; $7d13: $f1
	ld   de, $f29f                                   ; $7d14: $11 $9f $f2
	ld   de, rAUD1LEN                                   ; $7d17: $11 $11 $ff
	rst  $38                                         ; $7d1a: $ff
	ld   de, $ff19                                   ; $7d1b: $11 $19 $ff
	ld   b, c                                        ; $7d1e: $41
	dec  e                                           ; $7d1f: $1d
	rst  $38                                         ; $7d20: $ff
	push af                                          ; $7d21: $f5
	ld   de, $fd5f                                   ; $7d22: $11 $5f $fd
	ld   de, $1f11                                   ; $7d25: $11 $11 $1f
	rst  $38                                         ; $7d28: $ff
	pop  af                                          ; $7d29: $f1
	ld   a, [de]                                     ; $7d2a: $1a
	cp   l                                           ; $7d2b: $bd
	ldh  a, [c]                                      ; $7d2c: $f2
	ld   de, $ff9f                                   ; $7d2d: $11 $9f $ff
	or   $66                                         ; $7d30: $f6 $66
	rst  $28                                         ; $7d32: $ef
	and  $11                                         ; $7d33: $e6 $11
	ld   de, $ff6f                                   ; $7d35: $11 $6f $ff
	pop  af                                          ; $7d38: $f1
	ld   bc, $a11e                                   ; $7d39: $01 $1e $a1
	ld   de, $ffcf                                   ; $7d3c: $11 $cf $ff
	db   $d3                                         ; $7d3f: $d3
	ld   de, $f7ef                                   ; $7d40: $11 $ef $f7
	ld   de, rAUD1LEN                                   ; $7d43: $11 $11 $ff
	rst  $38                                         ; $7d46: $ff
	ld   de, rAUD1LOW                                   ; $7d47: $11 $13 $ff
	ld   h, c                                        ; $7d4a: $61
	inc  d                                           ; $7d4b: $14
	rst  $38                                         ; $7d4c: $ff
	rst  $38                                         ; $7d4d: $ff
	ld   de, $ff1c                                   ; $7d4e: $11 $1c $ff
	or   c                                           ; $7d51: $b1
	ld   de, $ff16                                   ; $7d52: $11 $16 $ff
	db   $fc                                         ; $7d55: $fc
	ld   de, $ff38                                   ; $7d56: $11 $38 $ff
	ld   de, $ff16                                   ; $7d59: $11 $16 $ff
	rst  $38                                         ; $7d5c: $ff
	ld   [hl], c                                     ; $7d5d: $71
	dec  de                                          ; $7d5e: $1b
	rst  $38                                         ; $7d5f: $ff
	or   c                                           ; $7d60: $b1
	ld   de, rAUD1LEN                                   ; $7d61: $11 $11 $ff
	rst  $38                                         ; $7d64: $ff
	ld   de, $be11                                   ; $7d65: $11 $11 $be
	ld   sp, $ff18                                   ; $7d68: $31 $18 $ff
	rst  $38                                         ; $7d6b: $ff
	ld   d, c                                        ; $7d6c: $51
	ld   d, $ff                                      ; $7d6d: $16 $ff
	ldh  [c], a                                      ; $7d6f: $e2
	ld   de, $ff15                                   ; $7d70: $11 $15 $ff
	ei                                               ; $7d73: $fb
	ld   de, $ff18                                   ; $7d74: $11 $18 $ff
	ld   h, c                                        ; $7d77: $61
	rla                                              ; $7d78: $17
	rst  $38                                         ; $7d79: $ff
	db   $fd                                         ; $7d7a: $fd
	ld   de, $ff1d                                   ; $7d7b: $11 $1d $ff
	db   $d3                                         ; $7d7e: $d3
	ld   de, $7f11                                   ; $7d7f: $11 $11 $7f
	rst  $38                                         ; $7d82: $ff
	ldh  [c], a                                      ; $7d83: $e2
	ld   d, [hl]                                     ; $7d84: $56
	ld   l, l                                        ; $7d85: $6d
	sub  c                                           ; $7d86: $91
	ld   de, $ff9f                                   ; $7d87: $11 $9f $ff
	ld   sp, hl                                      ; $7d8a: $f9
	dec  [hl]                                        ; $7d8b: $35
	xor  l                                           ; $7d8c: $ad
	ret  z                                           ; $7d8d: $c8

	ld   hl, $1e11                                   ; $7d8e: $21 $11 $1e
	rst  $38                                         ; $7d91: $ff
	ld   hl, sp+$11                                  ; $7d92: $f8 $11
	inc  de                                          ; $7d94: $13
	rst  $38                                         ; $7d95: $ff
	ld   sp, $ff2a                                   ; $7d96: $31 $2a $ff
	ei                                               ; $7d99: $fb
	ld   hl, $ff3e                                   ; $7d9a: $21 $3e $ff
	ldh  [c], a                                      ; $7d9d: $e2
	ld   de, $df11                                   ; $7d9e: $11 $11 $df
	rst  $38                                         ; $7da1: $ff
	add  c                                           ; $7da2: $81
	ld   h, [hl]                                     ; $7da3: $66
	ld   a, a                                        ; $7da4: $7f
	and  c                                           ; $7da5: $a1
	ld   de, $ff9f                                   ; $7da6: $11 $9f $ff
	ld   a, [$cf46]                                  ; $7da9: $fa $46 $cf
	ld   [$1121], a                                  ; $7dac: $ea $21 $11
	inc  e                                           ; $7daf: $1c
	rst  $38                                         ; $7db0: $ff
	rst  $38                                         ; $7db1: $ff
	ld   de, $be11                                   ; $7db2: $11 $11 $be
	ld   de, $ff4b                                   ; $7db5: $11 $4b $ff
	cp   $71                                         ; $7db8: $fe $71
	dec  de                                          ; $7dba: $1b
	rst  $38                                         ; $7dbb: $ff
	or   $11                                         ; $7dbc: $f6 $11
	ld   de, $ffaf                                   ; $7dbe: $11 $af $ff
	or   c                                           ; $7dc1: $b1
	jr   @+$4e                                       ; $7dc2: $18 $4c

	pop  af                                          ; $7dc4: $f1
	inc  d                                           ; $7dc5: $14
	ld   a, a                                        ; $7dc6: $7f
	rst  $38                                         ; $7dc7: $ff
	db   $ed                                         ; $7dc8: $ed
	ld   [hl], h                                     ; $7dc9: $74
	sbc  $bd                                         ; $7dca: $de $bd
	and  c                                           ; $7dcc: $a1
	ld   de, $cf11                                   ; $7dcd: $11 $11 $cf
	rst  $38                                         ; $7dd0: $ff
	and  c                                           ; $7dd1: $a1
	ld   [hl+], a                                    ; $7dd2: $22
	inc  e                                           ; $7dd3: $1c
	pop  de                                          ; $7dd4: $d1
	dec  d                                           ; $7dd5: $15
	ld   a, a                                        ; $7dd6: $7f
	rst  $38                                         ; $7dd7: $ff
	rst  $38                                         ; $7dd8: $ff
	ld   h, d                                        ; $7dd9: $62
	sbc  h                                           ; $7dda: $9c
	db   $dd                                         ; $7ddb: $dd
	or   e                                           ; $7ddc: $b3
	ld   de, rAUD1LEN                                   ; $7ddd: $11 $11 $ff
	ei                                               ; $7de0: $fb
	ld   de, $bf56                                   ; $7de1: $11 $56 $bf
	or   c                                           ; $7de4: $b1
	dec  d                                           ; $7de5: $15
	sbc  a                                           ; $7de6: $9f
	rst  $38                                         ; $7de7: $ff
	db   $eb                                         ; $7de8: $eb
	ld   b, a                                        ; $7de9: $47
	rst  $28                                         ; $7dea: $ef
	db   $ed                                         ; $7deb: $ed
	sub  h                                           ; $7dec: $94
	ld   sp, $be11                                   ; $7ded: $31 $11 $be
	rst  ToBoot                                         ; $7df0: $c7
	ld   de, $7d55                                   ; $7df1: $11 $55 $7d
	sub  d                                           ; $7df4: $92
	ld   h, $9f                                      ; $7df5: $26 $9f
	rst  $38                                         ; $7df7: $ff
	db   $ed                                         ; $7df8: $ed
	adc  c                                           ; $7df9: $89
	rst  $38                                         ; $7dfa: $ff
	xor  $b8                                         ; $7dfb: $ee $b8
	ld   d, c                                        ; $7dfd: $51
	ld   de, $83be                                   ; $7dfe: $11 $be $83
	ld   de, $6d12                                   ; $7e01: $11 $12 $6d
	call nz, $9f36                                   ; $7e04: $c4 $36 $9f
	rst  $38                                         ; $7e07: $ff
	db   $fd                                         ; $7e08: $fd
	sbc  d                                           ; $7e09: $9a
	rst  $38                                         ; $7e0a: $ff
	rst  $38                                         ; $7e0b: $ff
	ret  z                                           ; $7e0c: $c8

	ld   h, c                                        ; $7e0d: $61
	ld   de, $729d                                   ; $7e0e: $11 $9d $72
	ld   de, $3b11                                   ; $7e11: $11 $11 $3b
	add  $47                                         ; $7e14: $c6 $47
	sbc  a                                           ; $7e16: $9f
	rst  $38                                         ; $7e17: $ff
	cp   $bb                                         ; $7e18: $fe $bb
	rst  $38                                         ; $7e1a: $ff
	rst  $38                                         ; $7e1b: $ff
	ret                                              ; $7e1c: $c9


	ld   [hl], d                                     ; $7e1d: $72
	ld   de, $719c                                   ; $7e1e: $11 $9c $71
	ld   de, $4c11                                   ; $7e21: $11 $11 $4c
	rst  $10                                         ; $7e24: $d7
	ld   [hl], $af                                   ; $7e25: $36 $af
	rst  $38                                         ; $7e27: $ff
	cp   $ba                                         ; $7e28: $fe $ba
	rst  $28                                         ; $7e2a: $ef
	rst  $38                                         ; $7e2b: $ff
	jp   c, $1175                                    ; $7e2c: $da $75 $11

	ld   e, h                                        ; $7e2f: $5c
	ld   [hl], c                                     ; $7e30: $71
	ld   de, $1911                                   ; $7e31: $11 $11 $19
	jp   c, $8d44                                    ; $7e34: $da $44 $8d

	rst  $38                                         ; $7e37: $ff
	rst  $38                                         ; $7e38: $ff
	call c, $ffdf                                    ; $7e39: $dc $df $ff
	db   $eb                                         ; $7e3c: $eb
	ld   [hl], l                                     ; $7e3d: $75
	ld   de, $914b                                   ; $7e3e: $11 $4b $91
	ld   de, $2811                                   ; $7e41: $11 $11 $28
	ret                                              ; $7e44: $c9


	inc  [hl]                                        ; $7e45: $34
	adc  l                                           ; $7e46: $8d
	rst  $38                                         ; $7e47: $ff
	rst  $38                                         ; $7e48: $ff
	set  3, a                                        ; $7e49: $cb $df
	rst  $38                                         ; $7e4b: $ff
	ld   a, [$1174]                                  ; $7e4c: $fa $74 $11
	ld   e, h                                        ; $7e4f: $5c
	sub  c                                           ; $7e50: $91
	ld   de, $3a11                                   ; $7e51: $11 $11 $3a
	ret  c                                           ; $7e54: $d8

	ld   [hl+], a                                    ; $7e55: $22
	adc  h                                           ; $7e56: $8c
	rst  $38                                         ; $7e57: $ff
	cp   $ba                                         ; $7e58: $fe $ba
	rst  JumpTable                                         ; $7e5a: $df
	rst  $38                                         ; $7e5b: $ff
	reti                                             ; $7e5c: $d9


	ld   h, c                                        ; $7e5d: $61
	ld   de, $71ce                                   ; $7e5e: $11 $ce $71
	ld   de, $5f13                                   ; $7e61: $11 $13 $5f
	and  $13                                         ; $7e64: $e6 $13
	cp   [hl]                                        ; $7e66: $be
	rst  $38                                         ; $7e67: $ff
	db   $fc                                         ; $7e68: $fc
	cp   e                                           ; $7e69: $bb
	rst  $38                                         ; $7e6a: $ff
	rst  $38                                         ; $7e6b: $ff
	xor  b                                           ; $7e6c: $a8
	ld   sp, rAUD1LEN                                   ; $7e6d: $31 $11 $ff
	sub  c                                           ; $7e70: $91
	ld   de, $9f14                                   ; $7e71: $11 $14 $9f
	jp   nz, $cf15                                   ; $7e74: $c2 $15 $cf

	cp   $eb                                         ; $7e77: $fe $eb
	sbc  d                                           ; $7e79: $9a
	rst  $38                                         ; $7e7a: $ff
	cp   $64                                         ; $7e7b: $fe $64
	ld   de, $fd1c                                   ; $7e7d: $11 $1c $fd
	ld   d, c                                        ; $7e80: $51
	ld   de, $ff8b                                   ; $7e81: $11 $8b $ff
	ld   de, $ff19                                   ; $7e84: $11 $19 $ff
	db   $fd                                         ; $7e87: $fd
	cp   c                                           ; $7e88: $b9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e89: $cf
	rst  $38                                         ; $7e8a: $ff
	call nz, $1111                                   ; $7e8b: $c4 $11 $11
	rst  JumpTable                                         ; $7e8e: $df
	rst  $38                                         ; $7e8f: $ff
	ld   hl, $cf19                                   ; $7e90: $21 $19 $cf
	pop  af                                          ; $7e93: $f1
	ld   de, $ffcf                                   ; $7e94: $11 $cf $ff
	add  a                                           ; $7e97: $87
	ld   l, e                                        ; $7e98: $6b
	rst  $38                                         ; $7e99: $ff
	ei                                               ; $7e9a: $fb
	ld   bc, $1f11                                   ; $7e9b: $01 $11 $1f
	rst  $38                                         ; $7e9e: $ff
	pop  af                                          ; $7e9f: $f1
	ld   de, $f7af                                   ; $7ea0: $11 $af $f7
	ld   de, $ff2f                                   ; $7ea3: $11 $2f $ff
	pop  bc                                          ; $7ea6: $c1
	inc  de                                          ; $7ea7: $13
	rst  $38                                         ; $7ea8: $ff
	db   $fd                                         ; $7ea9: $fd
	ld   sp, $1f11                                   ; $7eaa: $31 $11 $1f
	rst  $38                                         ; $7ead: $ff
	pop  af                                          ; $7eae: $f1
	ld   de, $f758                                   ; $7eaf: $11 $58 $f7
	ld   de, $ff4f                                   ; $7eb2: $11 $4f $ff
	sub  c                                           ; $7eb5: $91
	inc  de                                          ; $7eb6: $13
	rst  $38                                         ; $7eb7: $ff
	ei                                               ; $7eb8: $fb
	ld   hl, $1f11                                   ; $7eb9: $21 $11 $1f
	rst  $38                                         ; $7ebc: $ff
	pop  af                                          ; $7ebd: $f1
	ld   de, $f1ac                                   ; $7ebe: $11 $ac $f1
	ld   de, $ffff                                   ; $7ec1: $11 $ff $ff
	ld   de, $ff1d                                   ; $7ec4: $11 $1d $ff
	db   $f4                                         ; $7ec7: $f4
	ld   de, $6f11                                   ; $7ec8: $11 $11 $6f
	rst  $38                                         ; $7ecb: $ff
	sub  c                                           ; $7ecc: $91
	ld   [de], a                                     ; $7ecd: $12
	sbc  a                                           ; $7ece: $9f
	pop  af                                          ; $7ecf: $f1
	ld   de, $f9ff                                   ; $7ed0: $11 $ff $f9
	ld   de, $ff9f                                   ; $7ed3: $11 $9f $ff
	ld   hl, $1111                                   ; $7ed6: $21 $11 $11
	rst  $38                                         ; $7ed9: $ff
	rst  $38                                         ; $7eda: $ff
	ld   de, $ff1c                                   ; $7edb: $11 $1c $ff
	and  c                                           ; $7ede: $a1
	dec  d                                           ; $7edf: $15
	rst  $38                                         ; $7ee0: $ff
	pop  af                                          ; $7ee1: $f1
	dec  d                                           ; $7ee2: $15
	rst  $38                                         ; $7ee3: $ff
	db   $f4                                         ; $7ee4: $f4
	ld   de, $1f11                                   ; $7ee5: $11 $11 $1f
	rst  $38                                         ; $7ee8: $ff
	pop  af                                          ; $7ee9: $f1
	ld   de, $fcff                                   ; $7eea: $11 $ff $fc
	ld   de, $ff7f                                   ; $7eed: $11 $7f $ff
	ld   de, $ffbf                                   ; $7ef0: $11 $bf $ff
	ld   d, c                                        ; $7ef3: $51
	ld   de, rAUD1LEN                                   ; $7ef4: $11 $11 $ff
	rst  $38                                         ; $7ef7: $ff
	ld   de, $ff1c                                   ; $7ef8: $11 $1c $ff
	pop  af                                          ; $7efb: $f1
	ld   de, $f1ff                                   ; $7efc: $11 $ff $f1
	dec  d                                           ; $7eff: $15
	rst  $38                                         ; $7f00: $ff
	or   $11                                         ; $7f01: $f6 $11
	ld   de, $ff1f                                   ; $7f03: $11 $1f $ff
	pop  af                                          ; $7f06: $f1
	ld   de, $ffff                                   ; $7f07: $11 $ff $ff
	ld   de, $fe3f                                   ; $7f0a: $11 $3f $fe
	ld   de, $ffff                                   ; $7f0d: $11 $ff $ff
	ld   hl, $1111                                   ; $7f10: $21 $11 $11
	rst  $38                                         ; $7f13: $ff
	or   $11                                         ; $7f14: $f6 $11
	rra                                              ; $7f16: $1f
	rst  $38                                         ; $7f17: $ff
	ld   sp, $fd6f                                   ; $7f18: $31 $6f $fd
	ld   sp, $fc9f                                   ; $7f1b: $31 $9f $fc
	ld   b, c                                        ; $7f1e: $41
	ld   de, rAUD1LEN                                   ; $7f1f: $11 $11 $ff
	rst  $38                                         ; $7f22: $ff
	ld   de, $ff1f                                   ; $7f23: $11 $1f $ff
	pop  af                                          ; $7f26: $f1
	rra                                              ; $7f27: $1f
	rst  $38                                         ; $7f28: $ff
	ld   b, c                                        ; $7f29: $41
	rra                                              ; $7f2a: $1f
	rst  $38                                         ; $7f2b: $ff
	pop  de                                          ; $7f2c: $d1
	ld   de, $ef11                                   ; $7f2d: $11 $11 $ef
	rst  $38                                         ; $7f30: $ff
	ld   de, $ff1f                                   ; $7f31: $11 $1f $ff
	pop  af                                          ; $7f34: $f1
	ld   e, $ff                                      ; $7f35: $1e $ff
	inc  de                                          ; $7f37: $13
	ld   c, a                                        ; $7f38: $4f
	rst  $38                                         ; $7f39: $ff
	ld   de, $1111                                   ; $7f3a: $11 $11 $11
	rst  $38                                         ; $7f3d: $ff
	db   $fd                                         ; $7f3e: $fd
	ld   de, $ff1f                                   ; $7f3f: $11 $1f $ff
	pop  af                                          ; $7f42: $f1
	rla                                              ; $7f43: $17
	rst  $38                                         ; $7f44: $ff
	add  c                                           ; $7f45: $81
	inc  e                                           ; $7f46: $1c
	rst  $38                                         ; $7f47: $ff
	or   c                                           ; $7f48: $b1
	ld   de, rAUD1LEN                                   ; $7f49: $11 $11 $ff
	rst  $38                                         ; $7f4c: $ff
	ld   de, $ff18                                   ; $7f4d: $11 $18 $ff
	pop  af                                          ; $7f50: $f1
	ld   d, $df                                      ; $7f51: $16 $df
	xor  a                                           ; $7f53: $af
	xor  l                                           ; $7f54: $ad
	db   $fc                                         ; $7f55: $fc
	ld   h, c                                        ; $7f56: $61
	ld   de, rAUD1LEN                                   ; $7f57: $11 $11 $ff
	pop  af                                          ; $7f5a: $f1
	ld   de, $ff4f                                   ; $7f5b: $11 $4f $ff
	ld   de, $f6bf                                   ; $7f5e: $11 $bf $f6
	ld   e, h                                        ; $7f61: $5c
	rst  $38                                         ; $7f62: $ff
	rst  $30                                         ; $7f63: $f7
	ld   hl, $1d11                                   ; $7f64: $21 $11 $1d
	rst  $38                                         ; $7f67: $ff
	pop  af                                          ; $7f68: $f1
	ld   de, $ffff                                   ; $7f69: $11 $ff $ff
	ld   de, $fa4f                                   ; $7f6c: $11 $4f $fa
	ld   h, h                                        ; $7f6f: $64
	rst  $28                                         ; $7f70: $ef
	pop  af                                          ; $7f71: $f1
	ld   de, $df11                                   ; $7f72: $11 $11 $df
	rst  $38                                         ; $7f75: $ff
	ld   de, $ff1c                                   ; $7f76: $11 $1c $ff
	pop  af                                          ; $7f79: $f1
	rla                                              ; $7f7a: $17
	sbc  e                                           ; $7f7b: $9b
	ld   a, h                                        ; $7f7c: $7c
	rst  $28                                         ; $7f7d: $ef
	cp   $41                                         ; $7f7e: $fe $41
	ld   de, rAUD1LEN                                   ; $7f80: $11 $11 $ff
	pop  af                                          ; $7f83: $f1
	ld   de, $ff1f                                   ; $7f84: $11 $1f $ff
	ld   de, $f89f                                   ; $7f87: $11 $9f $f8
	dec  hl                                          ; $7f8a: $2b
	adc  a                                           ; $7f8b: $8f
	ld   hl, sp+$11                                  ; $7f8c: $f8 $11
	ld   de, $ffff                                   ; $7f8e: $11 $ff $ff
	ld   de, $ff1f                                   ; $7f91: $11 $1f $ff
	pop  af                                          ; $7f94: $f1
	rra                                              ; $7f95: $1f
	rst  $38                                         ; $7f96: $ff
	daa                                              ; $7f97: $27
	ld   c, [hl]                                     ; $7f98: $4e
	rst  $38                                         ; $7f99: $ff
	ld   h, c                                        ; $7f9a: $61
	ld   de, $ff1f                                   ; $7f9b: $11 $1f $ff
	ld   h, c                                        ; $7f9e: $61
	ld   de, $fbff                                   ; $7f9f: $11 $ff $fb
	ld   de, $f7cf                                   ; $7fa2: $11 $cf $f7
	ld   [hl], e                                     ; $7fa5: $73
	adc  a                                           ; $7fa6: $8f
	db   $fc                                         ; $7fa7: $fc
	ld   de, rAUD1LEN                                   ; $7fa8: $11 $11 $ff
	rst  $38                                         ; $7fab: $ff
	ld   de, $ff1f                                   ; $7fac: $11 $1f $ff
	and  c                                           ; $7faf: $a1
	ld   e, $ff                                      ; $7fb0: $1e $ff
	and  h                                           ; $7fb2: $a4
	ld   d, $ef                                      ; $7fb3: $16 $ef
	or   l                                           ; $7fb5: $b5
	ld   de, rAUD1LEN                                   ; $7fb6: $11 $11 $ff
	pop  af                                          ; $7fb9: $f1
	ld   de, $ff1f                                   ; $7fba: $11 $1f $ff
	ld   hl, $fb8f                                   ; $7fbd: $21 $8f $fb
	ld   b, l                                        ; $7fc0: $45
	ld   a, [hl]                                     ; $7fc1: $7e
	ei                                               ; $7fc2: $fb
	ld   sp, $1f11                                   ; $7fc3: $31 $11 $1f
	rst  $38                                         ; $7fc6: $ff
	ld   de, $ff1a                                   ; $7fc7: $11 $1a $ff
	pop  af                                          ; $7fca: $f1
	dec  e                                           ; $7fcb: $1d
	rst  $38                                         ; $7fcc: $ff
	sub  a                                           ; $7fcd: $97
	ld   h, a                                        ; $7fce: $67
	xor  $81                                         ; $7fcf: $ee $81
	ld   de, $ff1f                                   ; $7fd1: $11 $1f $ff
	sub  c                                           ; $7fd4: $91
	ld   de, $f6ff                                   ; $7fd5: $11 $ff $f6
	ld   d, $ff                                      ; $7fd8: $16 $ff
	db   $e4                                         ; $7fda: $e4
	ld   e, c                                        ; $7fdb: $59
	rst  $38                                         ; $7fdc: $ff
	sub  c                                           ; $7fdd: $91
	ld   de, $4f11                                   ; $7fde: $11 $11 $4f
	rst  $38                                         ; $7fe1: $ff
	ld   de, $ff1e                                   ; $7fe2: $11 $1e $ff
	sub  c                                           ; $7fe5: $91
	ld   l, a                                        ; $7fe6: $6f
	ei                                               ; $7fe7: $fb
	rla                                              ; $7fe8: $17
	rst  JumpTable                                         ; $7fe9: $df
	rst  $30                                         ; $7fea: $f7
	ld   de, $1111                                   ; $7feb: $11 $11 $11
	rst  $38                                         ; $7fee: $ff
	pop  af                                          ; $7fef: $f1
	ld   de, $f9ef                                   ; $7ff0: $11 $ef $f9
	inc  de                                          ; $7ff3: $13
	rst  $38                                         ; $7ff4: $ff
	jp   $fc7c                                       ; $7ff5: $c3 $7c $fc


	add  l                                           ; $7ff8: $85
	ld   b, l                                        ; $7ff9: $45
	ld   de, $ff1f                                   ; $7ffa: $11 $1f $ff
	ld   de, rAUD1HIGH                                   ; $7ffd: $11 $14 $ff
